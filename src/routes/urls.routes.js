import { Router } from "express";
import { validateSchema } from "../middlewares/validateSchema.js";
import { urlSchema } from "../schemas/urls.schemas.js";
import { getUrlById, openShortUrl, shortener } from "../controllers/urls.controllers.js";

const urlsRoutes = Router();

urlsRoutes.post("/urls/shorten", validateSchema(urlSchema), shortener);
urlsRoutes.get("/urls/:id", getUrlById);
urlsRoutes.get("/urls/open/:shortUrl", openShortUrl);

export default urlsRoutes;
