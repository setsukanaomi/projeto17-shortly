import Joi from "joi";

export const signupSchema = Joi.object({
  name: Joi.string().trim().required().min(1),
  email: Joi.string().email().trim().required(),
  password: Joi.string().trim().required(),
  confirmPassword: Joi.any().valid(Joi.ref("password")).required(),
});
