CREATE DATABASE IF NOT EXISTS BD_TechWorld CHARACTER SET utf8 COLLATE utf8_general_ci;

USE BD_TechWorld;
SELECT DATABASE();

CREATE TABLE IF NOT EXISTS professor (
    id INTEGER(10) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
);

/*CREATE TABLE IF NOT EXISTS disponibilidade (
    id INTEGER(10) AUTO_INCREMENT PRIMARY KEY
    id_professor_disponivel INTEGER FOREIGN KEY,
    horarios_disponiveis DATETIME,
    disponibilidade_professor BOOLEAN NOT NULL
    dias_disponiveis VARCHAR(12) NOT NULL,
    CONSTRAINT `fk_id_professor` FOREIGN KEY (`id_professor`) REFERENCES `professor`(`id`)
)*/

CREATE TABLE IF NOT EXISTS materia (
    id INTEGER(10) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    carga_horaria VARCHAR(50) NOT NULL,
    max_matriculas VARCHAR(50) NOT NULL
);

/*
CREATE TABLE IF NOT EXISTS materia_professor(
    id int(10) PRIMARY KEY,
    id_professor FOREIGN KEY,
    id_professor_disponivel FOREIGN KEY,
    CONSTRAINT `fk_id_professor` FOREIGN KEY (`id_professor`) REFERENCES `professor`(`id`)
    CONSTRAINT `fk_id_professor_disponivel` FOREIGN KEY (`id_professor_disponivel`) REFERENCES `disponibilidade`(`id`)
)*/

	horario DATETIME
);

