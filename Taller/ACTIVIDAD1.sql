Create database taller;

CREATE TABLE coches(
    id_coche INT (100) primary key AUTO_INCREMENT,
    marca varchar(100) NOT NULL,
    modelo varchar(100) NOT NULL ,
    matricula Varchar(100) NOT NULL
);

CREATE TABLE partes(
    id_mecanico INT (100) primary key AUTO_INCREMENT,
    fecha_entrada date NOT NULL,
    fecha_salida date,
    id_coche INT (100),
    Foreign key (id_coche) references coches(id_coche)
);

insert into coches(id_coche,marca,modelo,matricula)
values
(1,"Renault","Megane","9876DMG"),
(2,"Nissan","Micra","6785FXJ"),
(3,"Toyota","Yaris","3252HJM");

insert into partes(id_mecanico,fecha_entrada)
values
(20,17/12/2023),
(30,20/12/2023);

insert into partes(id_mecanico,fecha_entrada,fecha_salida)
values
(10,18/12/2023,19/12/2023)

select * from coches join partes on id_mecanico=id_coche;