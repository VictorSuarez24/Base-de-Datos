Create Database icseflix;
USE DATABASE icseflix;
CREATE TABLE usuarios (
	id_usuario INT (100) Primary KEY auto_increment,
	nombre varchar (100) not null,
	apellidos varchar(100) not null,
	correoelectronico varchar(100) not null,
	telefono INT (100) not null,
	TarjetadeCredito varchar(100) not null
);	
CREATE TABLE pelicula (
	id_pelicula INT (100) Primary KEY  auto_increment,
	nombre varchar (100) not null,
	año_de_publicacion date not null,
	sinopsis varchar (100) not null, 
	rango_de_edad ENUM("Todos_los_públicos","13años","16años","18años") not null
);
CREATE TABLE series (
	id_serie INT (100) Primary KEY auto_increment,
	nombre varchar (100) not null,
	año_de_publicacion date not null,
	sinopsis varchar (100) not null, 
	rango_de_edad ENUM("Todos_los_públicos","13años","16años","18años") not null
);
CREATE TABLE vistos (
    id_usuario INT (100),
    id_serie INT(100) ,
    id_pelicula INT(100),
    temporada INT(100),
    capitulo INT(100),
    fecha_visto DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_serie) REFERENCES series(id_serie),
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    visto boolean not null
);

CREATE TABLE seguidores(
    id_seguidores INT (100) Primary Key auto_increment
);

CREATE TABLE follows(
    id_seguidores INT (100),
    id_usuario INT (100),
    id_follows INT (100),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);