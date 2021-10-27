import prismaClient from "../prisma";

class ProfessoresService {
  async execute(Nome: string, Cpf: string){

    const professores = await prismaClient.professor.create({
     data: {
        Nome, 
        Cpf,
     } 
    })

    return professores;
  }
}

export { ProfessoresService }