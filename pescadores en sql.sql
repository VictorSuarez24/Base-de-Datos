-->tablas de pescado, pescador y tienda
create database pescaditos;
use pescaditos;

create table pescado(
    id_pescado int primary key,
    nombre varchar(100),
    peso int
);

create table tienda(
    id_tienda int primary key,
    nombre varchar(100),
    ubicacion varchar(100)
);

create table pescadero(
    id_pescadero int primary key,
    nombre varchar(100),
    id_tienda int
    Foreign key (id_tienda) references tienda(id_tienda)
);

-->tabla de relacion venta(pescado,tienda) y pesca(pescado,pescadero)
create table venta(
    id_venta int primary key,
    id_pescado int,
    id_tienda int,
    Foreign key (id_pescado) references pescado(id_pescado),
    Foreign key (id_tienda) references tienda(id_tienda)
);

create table pesca(
    id_pesca int primary key,
    id_pescado int,
    id_pescadero int
    Foreign key (id_pescado) references pescado(id_pescado),
    Foreign key (id_pescadero) references pescadero(id_pescadero),
);

--> InserciÃ³n de valores
insert into pescado(id_pescado,nombre,peso)
values
(1,"atun",50),
(2,"cangrejo",10),
(3,"vieja",20);

insert into tienda(id_tienda,nombre,ubicacion)
values
(1,"tienda1","ingenio"),
(2,"tienda2","las palmas"),
(3,"tienda3","teror");

insert into pescadero(id_pescadero,nombre,id_tienda)
values
(1,"paco",2),
(2,"pepe",3),
(3,"jorge",1);

insert into venta(id_venta,id_pescado,id_tienda)
values
(1,1,2),
(2,3,1),
(3,2,3);

insert into pesca(id_pesca,id_pescado,id_pescadero)
values
(1,1,3),
(2,2,1),
(3,3,2);