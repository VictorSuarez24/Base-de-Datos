CREATE DATABASE Cursos;

CREATE TABLE curso(
    id_curso INT(100) primary key auto_increment,
    tipo varchar (100) not null
);

CREATE TABLE docente(
    id_docente INT(100) primary key auto_increment,
    nombre varchar(100) not null
);

CREATE TABLE aulas(
    id_aula INT(100) primary key auto_increment,
    nombre varchar(255) not null
);

CREATE TABLE importe(
    id_importe INT(100) primary key auto_increment,
    id_docente INT(100) not null,
    id_aula INT(100) not null,
    id_curso INT(100) not null,
    FOREIGN KEY(id_curso) REFERENCES curso (id_curso),
    FOREIGN KEY(id_aula) REFERENCES aulas (id_aula),
    FOREIGN KEY(id_docente) REFERENCES docente (id_docente)
);

