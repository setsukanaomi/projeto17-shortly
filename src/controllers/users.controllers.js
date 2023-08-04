import bcrypt from "bcrypt";
import { v4 as uuid } from "uuid";
import { db } from "../database/database.connection.js";

export async function signup(req, res) {
  const { name, email, password } = req.body;
  const cryptoPassword = bcrypt.hashSync(password, 10);

  try {
    const emailExists = await db.query(`SELECT * from users WHERE email=$1`, [
      email,
    ]);
    if (emailExists.rowCount > 0) return res.sendStatus(409);

    await db.query(
      `INSERT INTO users (name, email, password) VALUES ($1, $2, $3)`,
      [name, email, cryptoPassword]
    );
    res.sendStatus(201);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function signin(req, res) {
  const { email, password } = req.body;
  const token = uuid();

  try {
    const user = (await db.query(`SELECT * from users WHERE email=$1`, [email]))
      .rows[0];

    if (!user || !bcrypt.compareSync(password, user.password))
      return res.sendStatus(401);

    await db.query(`INSERT INTO sessions ("userId", token) VALUES ($1, $2)`, [
      user.id,
      token,
    ]);
    res.status(200).send({ token: token });
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getMe(req, res) {
  const { authorization } = req.headers;
  const token = authorization?.replace("Bearer ", "");

  if (!token) return res.sendStatus(401);
  try {
    const user = (
      await db.query(
        `SELECT sessions."userId" AS id, users.name, SUM("visitCount") AS "visitCount"
        FROM sessions 
        JOIN users ON sessions."userId" = users.id
        JOIN urls ON sessions."userId" = urls."userId"
        WHERE token=$1
        GROUP BY sessions."userId", users.name;`,
        [token]
      )
    ).rows[0];
    if (!user) return res.sendStatus(401);

    const urls = (
      await db.query(
        `SELECT urls.id, urls.url, urls."shortUrl", urls."visitCount" FROM urls WHERE urls."userId"=$1`,
        [user.id]
      )
    ).rows;

    const userAndUrls = {
      ...user,
      shortenedUrls: urls.map((url) => ({
        id: url.id,
        url: url.url,
        shortUrl: url.shortUrl,
        visitCount: url.visitCount,
      })),
    };

    res.send(userAndUrls);
  } catch (error) {
    res.status(500).send(error.message);
  }
}
