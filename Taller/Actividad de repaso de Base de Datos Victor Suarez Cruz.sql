Create table repuestosyconsumibles(
    id_repuestosyconsumibles INT(100) primary key AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    cantidad_stock INT(50) NOT NULL
);
CREATE TABLE partes(
    id_partes INT (100) primary key AUTO_INCREMENT,
    fecha_entrada date NOT NULL,
    fecha_salida date
);
Create table prc(
    id_prc INT(100) primary key AUTO_INCREMENT, 
    id_ryc INT(100),
    id_part INT(100),
    FOREIGN KEY (id_ryc) REFERENCES repuestosyconsumibles (id_repuestosyconsumibles),
    FOREIGN KEY (id_part) REFERENCES partes (id_partes)
);

insert into repuestosyconsumibles(id_repuestosyconsumibles, nombre, cantidad_stock)
values
    (1,"Aceite 5w50",100),
    (2,"Bomba de agua",3),
    (3,"Kit de correa de distribución",2);

insert into partes(id_partes, fecha_entrada, fecha_salida)
values
    (10, "2023-12-18", "2023-12-19"),
    (20, "2023-12-17", null),
    (0, "2023-12-20", null);