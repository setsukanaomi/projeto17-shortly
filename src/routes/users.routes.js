import { Router } from "express";
import { validateSchema } from "../middlewares/validateSchema.js";
import {
  getMe,
  getRanking,
  signin,
  signup,
} from "../controllers/users.controllers.js";
import { signinSchema, signupSchema } from "../schemas/users.schemas.js";

const usersRoutes = Router();

usersRoutes.post("/signup", validateSchema(signupSchema), signup);
usersRoutes.post("/signin", validateSchema(signinSchema), signin);
usersRoutes.get("/users/me", getMe);
usersRoutes.get("/ranking", getRanking);

export default usersRoutes;
