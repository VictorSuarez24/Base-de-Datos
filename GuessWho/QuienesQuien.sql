create database QuienesQuien;
use QuienesQuien;

create table atributos(
    id_atributos int (100) primary key auto_increment,
    id_personas int(100),
    gafas boolean not null,
    pelo ENUM ("rubio","negro","marron", "pelirrojo","blanco" ),
    bigote boolean not null,
    barba boolean not  null,
    piel ENUM("moreno","blanco"),
    coleta ENUM("1","2","3"),
    foreign key (id_personas) references personas( id_personas)
);

create table personas(
    id_personas int(100) primary key auto_increment,
    nombre varchar(255) not null
);

create table caracteristicas(
    id_caracteristicas int(100) primary key auto_increment,
    id_atributos int(100),
    id_personas int (100),
    foreign key (id_atributos) references atributos( id_atributos),
    foreign key (id_personas) references personas( id_personas)
);
