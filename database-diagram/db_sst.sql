CREATE DATABASE db_sst;
USE DATABASE db_sst;
CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(100) NULL,
	contraseña VARCHAR(100) NULL,
	rol VARCHAR(100) NULL,
	estado ENUM('Activo', 'Inactivo','Desactivado') NULL,
	fecha_creacion DATE NULL,
	fecha_actualizacion DATETIME NULL,
	PRIMARY KEY (id)
);
  
CREATE TABLE detalle_usuario(
	id INT NOT NULL AUTO_INCREMENT,
	id_usuario VARCHAR(100) NULL,
	nombre VARCHAR(100) NULL,
	apellido VARCHAR(100) NULL,
	cargo VARCHAR(100) NULL,
	fecha_creacion DATE NULL,
	fecha_actualizacion DATETIME NULL,
	id_empresa VARCHAR(100) NULL,
	PRIMARY KEY (id)
	FOREIGN KEY (id_usuario) REFERENCES usuario(id)
	FOREIGN KEY (id_empresa) REFERENCES empresa(id)
);
	
CREATE TABLE empresa(
	id INT NOT NULL AUTO_INCREMENT,
	razon_social VARCHAR(45) NULL,
	ruc VARCHAR(45) NULL,
	direccion_fiscal VARCHAR(100) NULL,
	fecha_creacion DATE NULL,
	nombre_comercial VARCHAR(100) NULL,
	PRIMARY KEY (id)
 );
