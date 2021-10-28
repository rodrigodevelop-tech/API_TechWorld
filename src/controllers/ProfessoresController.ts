import { Request, Response } from 'express';
import { ProfessoresService } from '../services/ProfessoresService';

class ProfessoresController {
  async created(request: Request, response: Response) {
    const { Nome, Cpf } = request.body;

    const service = new ProfessoresService();

    const result = await service.execute(Nome, Cpf);

    return response.json(result);
  }

  async finded(request: Request, response: Response) {
    const { id } = request.params;

    const service = new ProfessoresService();

    const result = await service.consult(id);

    return response.json(result);
  }

  async findAll(request: Request, response: Response) {

    const service = new ProfessoresService();

    const result = await service.everyone();

    return response.json(result);
  }

  async updated (request: Request, response: Response) {
    const { Nome } = request.body;
    const { Id } = request.params;

    const service = new ProfessoresService();

    const result = await service.modified(Id, Nome);

    return response.json(result);
  }

  async deleted(request: Request, response: Response) {
    const { Nome } = request.body;
    const { Id } = request.params;

    const service = new ProfessoresService();

    const result = await service.modified(Id, Nome);

    return response.json(result);
  },


}

export { ProfessoresController }