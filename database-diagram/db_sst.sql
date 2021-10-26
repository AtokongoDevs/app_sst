USE u349685578_sst;

CREATE TABLE usuario (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT , 
	email VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	contraseña VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	rol VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	estado ENUM('Activo','Inactivo','Desactivado') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Inactivo' , 
	fecha_creacion DATE NOT NULL , 
	fecha_actualizacion DATETIME NULL , 
	PRIMARY KEY (id)
) ENGINE = InnoDB;

CREATE TABLE empresa (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, 
	razon_social VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	ruc VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	direccion_fiscal VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	fecha_creacion DATE NOT NULL , 
	nombre_comercial VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	PRIMARY KEY (id)
) ENGINE = InnoDB;

CREATE TABLE detalle_usuario ( 
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT , 
	id_usuario INT(11) UNSIGNED NOT NULL , 
	nombre VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	apellido VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	cargo VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
	fecha_creacion DATE NOT NULL , 
	fecha_actualizacion DATETIME NOT NULL , 
	id_empresa INT(11) UNSIGNED NOT NULL , 
	PRIMARY KEY (id)
) ENGINE = InnoDB;

ALTER TABLE detalle_usuario
	ADD FOREIGN KEY (id_usuario) REFERENCES usuario(id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE detalle_usuario 
	ADD FOREIGN KEY (id_empresa) REFERENCES empresa(id) ON DELETE RESTRICT ON UPDATE RESTRICT;
