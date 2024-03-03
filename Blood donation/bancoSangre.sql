create database bancoSangre;
use bancoSangre;
create table sangre (
    id_sangre int(100) primary key auto_increment,
    tipo varchar (100) not null);

create table donante(
    id_donante int(100) primary key auto_increment,
    tipo_donante varchar(100) not null,
    nombre varchar (255) not null
);

create table recibidor(
    id_recipiente int(100) primary key auto_increment,
    tipo_donante varchar(100) not null,
    nombre varchar(100) not null
);

create table recibe(
    id_recibe int(100) primary key auto_increment,
    id_sangre int(100) not null,
    id_recipiente int (100) not null,
    foreign key(id_sangre) references sangre (id_sangre),
    foreign key(id_recipiente) references recibidor (id_recipiente)
);
    
create table donan(
    id_donan int(100) primary key auto_increment,
    id_sangre int(100) not null,
    id_donante int(100) not null,
    fecha_donacion date,
    fecha_transfusion,
    direccion varchar (255) not null,
    foreign key(id_sangre) references sangre (id_sangre),
    foreign key(id_donante) references donante (id_donante)
);

