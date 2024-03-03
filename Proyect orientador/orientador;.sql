CREATE DATABASE orientador;
USE orientador;

CREATE TABLE opea(
    id_opea INT(100) PRIMARY KEY auto_increment,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    usuario varchar(100) not null,
    contraseña varchar(100) not null,
    correo_institucional varchar (100),
    correo_personal varchar (100),
    direccion_oficina varchar(100) not null,
    tipo ENUM("Administrativos","Orientadores") not null
);

CREATE TABLE historialEmpleo(
    id_empleo INT(100) PRIMARY KEY auto_increment,
    id_usuario INT(100) not null,
    cargo varchar(100) not null,
    descripcion varchar(100) not null,
    sector ENUM("primario","secundario","terciario") not null,
    fecha_fin date not null, 
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
);
CREATE TABLE usuario(
    id_usuario INT(100) PRIMARY KEY auto_increment,
    id_opea INT(100) not null,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    dni varchar(100) not null,
    seguridad_soocial varchar(100) not null,
    fecha_inicio date not null,
    fecha_renovacion date not null,
    fecha_nacimiento date not null,
    genero ENUM("Masculino","femenino") not null,
    FOREIGN KEY(id_opea) REFERENCES opea(id_opea)
);

CREATE TABLE cita(
    id_cita INT (100) PRIMARY KEY auto_increment,
    id_opea INT (100) not null,
    fecha_cita date not null,
    FOREIGN KEY(id_opea) REFERENCES opea(id_opea)
);

INSERT INTO opea (nombre, apellido, usuario, contraseña, correo_institucional, correo_personal, direccion_oficina, tipo) 
VALUES 
    ('Juan', 'Pérez', 'juanperez', 'contraseña123', 'juan.perez@example.com', 'juan@gmail.com', 'Calle Principal 123', 'Administrativos'),
    ('María', 'González', 'mariagonzalez', 'clave456', 'maria.gonzalez@example.com', 'maria@yahoo.com', 'Avenida Central 456', 'Orientadores'),
    ('Pedro', 'López', 'pedrolopez', 'password789', 'pedro.lopez@example.com', 'pedro@hotmail.com', 'Plaza Mayor 789', 'Administrativos');