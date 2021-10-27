import prismaClient from "../prisma";

class ProfessoresService {
  async execute(Nome: string, Cpf: string) {

    const professor = await prismaClient.professor.create({
      data: {
        Nome,
        Cpf,
      }
    })

    return professor;
  }

  async consult(Id: number) {

    const professor = await prismaClient.professor.findUnique({
      where: {
        id: Id
      }
    })

    return professor

  }

  async everyone() {

    const professores = await prismaClient.professor.findMany({})

    return professores

  }

  async modified(Id: number, Nome: string) {

    const professor = await prismaClient.professor.update({
      where: {
        id: Id
      },
      data: {
        Nome
      }
    })

    return professor

  }

  async wiped(Id: number) {

    const professor = await prismaClient.professor.delete({
      where: {
        id: Id
      }
    })

    return professor

  }


}

export { ProfessoresService }