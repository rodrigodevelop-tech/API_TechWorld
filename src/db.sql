CREATE DATABASE IF NOT EXISTS BD_TechWorld CHARACTER SET utf8 COLLATE utf8_general_ci;

USE BD_TechWorld;
SELECT DATABASE();

CREATE TABLE IF NOT EXISTS professor (
    id INTEGER(10) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    matricula INTEGER(10) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS materia (
    id INTEGER(10) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    carga_horaria VARCHAR(50) NOT NULL,
    max_matriculas INTEGER(10) NOT NULL
);

CREATE TABLE horario_materia (
	id INT(10) AUTO_INCREMENT PRIMARY KEY,
    horario_disponivel TIME NOT NULL,
    dia_disponivel VARCHAR(50) NOT NULL
);

CREATE TABLE disponibiliza (
    id INT(10) AUTO_INCREMENT PRIMARY KEY,
    disponivel BOOLEAN NOT NULL,
    id_professor INT(10) NOT NULL,
    id_horario_materia INT(10) NOT NULL,
    CONSTRAINT fk_id_professor foreign key (id_professor) references professor
    CONSTRAINT fk_id_horario_materia foreign key (id_horario_materia) references horario_materia
)


CREATE TABLE ministra (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_professor INT(10) NOT NULL,
    id_materia INT(10) NOT NULL,
    CONSTRAINT fk_id_professor foreign key (id_professor) references professor
    CONSTRAINT fk_id_materia foreign key (id_materia) references materia
);


