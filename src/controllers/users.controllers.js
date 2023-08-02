import bcrypt from "bcrypt";
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
