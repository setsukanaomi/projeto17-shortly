import { Router } from "express";
import { validateSchema } from "../middlewares/validateSchema.js";
import { urlSchema } from "../schemas/urls.schemas.js";
import { shortener } from "../controllers/urls.controllers.js";

const urlsRoutes = Router();

urlsRoutes.post("/urls/shorten", validateSchema(urlSchema), shortener);

export default urlsRoutes;
