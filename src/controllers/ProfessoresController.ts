import { Request, Response } from 'express';
import { ProfessoresService } from '../services/ProfessoresService';

class ProfessoresController {
  async handle(request: Request, response: Response){
    const { Nome, Cpf} = request.body;

    const service = new ProfessoresService();

    const result = await service.execute(Nome, Cpf);

    return response.json(result);
  }
}

export { ProfessoresController }