import bcrypt from "bcrypt";
import { v4 as uuid } from "uuid";
import { db } from "../database/database.connection.js";

export async function signup(req, res) {
  const { name, email, password } = req.body;
  const cryptoPassword = bcrypt.hashSync(password, 10);

  try {
    const emailExists = await db.query(`SELECT * from users WHERE email=$1`, [email]);
    if (emailExists.rowCount > 0) return res.sendStatus(409);

    await db.query(`INSERT INTO users (name, email, password) VALUES ($1, $2, $3)`, [name, email, cryptoPassword]);
    res.sendStatus(201);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function signin(req, res) {
  const { email, password } = req.body;
  const token = uuid();

  try {
    const user = (await db.query(`SELECT * from users WHERE email=$1`, [email])).rows[0];

    if (!user || !bcrypt.compareSync(password, user.password)) return res.sendStatus(401);

    await db.query(`INSERT INTO sessions ("userId", token) VALUES ($1, $2)`, [user.id, token]);
    res.status(200).send({ token: token });
  } catch (error) {
    res.status(500).send(error.message);
  }
}
