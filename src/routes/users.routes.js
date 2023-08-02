import { Router } from "express";
import { validateSchema } from "../middlewares/validateSchema.js";
import { signup } from "../controllers/users.controllers.js";
import { signupSchema } from "../schemas/users.schemas.js";

const usersRoutes = Router();

usersRoutes.post("/signup", validateSchema(signupSchema), signup);

export default usersRoutes;
