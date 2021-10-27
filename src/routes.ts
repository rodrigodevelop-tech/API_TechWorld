import express from 'express';
import { ProfessoresController } from './controllers/ProfessoresController';

const router = express.Router();


router.post('/professor', new ProfessoresController().created)

export { router }