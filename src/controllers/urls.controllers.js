import { nanoid } from "nanoid";
import { db } from "../database/database.connection.js";

export async function shortener(req, res) {
  const { url } = req.body;
  const { authorization } = req.headers;
  const token = authorization?.replace("Bearer ", "");
  const shortUrl = nanoid(8);

  if (!token) return res.sendStatus(401);

  try {
    const user = (
      await db.query(`SELECT * FROM sessions WHERE token=$1`, [token])
    ).rows[0];
    if (!user) return res.sendStatus(401);

    const { rows } = await db.query(
      `INSERT INTO urls ("userId", url, "shortUrl") VALUES ($1, $2, $3) RETURNING id, "shortUrl"`,
      [user.userId, url, shortUrl]
    );

    res.status(201).send(rows[0]);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function getUrlById(req, res) {
  const { id } = req.params;

  try {
    const url = (
      await db.query(
        `SELECT urls.id, urls."shortUrl", urls.url FROM urls WHERE id=$1`,
        [id]
      )
    ).rows[0];
    if (!url) return res.sendStatus(404);

    res.status(200).send(url);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function openShortUrl(req, res) {
  const { shortUrl } = req.params;

  try {
    const url = (
      await db.query(`SELECT * FROM urls WHERE "shortUrl"=$1`, [shortUrl])
    ).rows[0];
    if (!url) return res.sendStatus(404);

    const visit = url.visitCount + 1;
    await db.query(`UPDATE urls SET "visitCount"=$1 WHERE "shortUrl"=$2`, [
      visit,
      shortUrl,
    ]);

    res.redirect(url.url);
  } catch (error) {
    res.status(500).send(error.message);
  }
}

export async function deleteUrl(req, res) {
  const { id } = req.params;
  const { authorization } = req.headers;
  const token = authorization?.replace("Bearer ", "");

  if (!token) return res.sendStatus(401);

  try {
    const url = (await db.query(`SELECT * FROM urls WHERE id=$1`, [id]))
      .rows[0];
    if (!url) return res.sendStatus(404);

    const user = (
      await db.query(`SELECT * FROM sessions WHERE "userId"=$1 AND token=$2`, [
        url.userId,
        token,
      ])
    ).rows[0];
    if (!user) return res.sendStatus(401);

    await db.query(`DELETE FROM urls WHERE id=$1`, [id]);
    res.sendStatus(204);
  } catch (error) {
    res.status(500).send(error.message);
  }
}
