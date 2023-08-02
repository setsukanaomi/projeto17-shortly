import { nanoid } from "nanoid";
import { db } from "../database/database.connection.js";

export async function shortener(req, res) {
  const { url } = req.body;
  const { authorization } = req.headers;
  const token = authorization?.replace("Bearer ", "");
  const shortUrl = nanoid(8);

  if (!token) return res.sendStatus(401);

  try {
    const user = (await db.query(`SELECT * FROM sessions WHERE token=$1`, [token])).rows[0];
    if (!user.userId) return res.sendStatus(401);

    const { rows } = await db.query(
      `INSERT INTO urls ("userId", url, "shortUrl") VALUES ($1, $2, $3) RETURNING id, "shortUrl"`,
      [user.userId, url, shortUrl]
    );

    res.status(201).send(rows[0]);
  } catch (error) {
    res.status(500).send(error.message);
  }
}
