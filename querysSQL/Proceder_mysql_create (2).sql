CREATE TABLE `Unidad` (
	`idUnidad` INT NOT NULL AUTO_INCREMENT,
	`nombreUnidad` varchar(50) NOT NULL,
	`descripcionUnidad` varchar(1024) NOT NULL,
	`emailUnidad` varchar(50) NOT NULL,
	`idTelefono` INT NOT NULL,
	`movilUnidad` INT NOT NULL,
	`idHorario` INT NOT NULL,
	PRIMARY KEY (`idUnidad`)
);

CREATE TABLE `Proceso` (
	`idProceso` INT NOT NULL AUTO_INCREMENT,
	`nombreProceso` varchar(100) NOT NULL,
	`descripcionProceso` varchar(512) NOT NULL,
	`idUnidad` INT NOT NULL,
	PRIMARY KEY (`idProceso`)
);

CREATE TABLE `Requisito` (
	`idRequisito` INT NOT NULL AUTO_INCREMENT,
	`nombreRequisito` varchar(200) NOT NULL,
	`descripcionRequisito` varchar(100) NOT NULL,
	PRIMARY KEY (`idRequisito`)
);

CREATE TABLE `ProcesoRequisito` (
	`idProReq` INT NOT NULL AUTO_INCREMENT,
	`idProceso` INT NOT NULL,
	`idRequisito` INT NOT NULL,
	PRIMARY KEY (`idProReq`)
);

CREATE TABLE `Horario` (
	`idHorario` INT NOT NULL AUTO_INCREMENT,
	`idDia` INT NOT NULL,
	`horaInicio` TIME NOT NULL,
	`horaFin` TIME NOT NULL,
	PRIMARY KEY (`idHorario`)
);

CREATE TABLE `Telefono` (
	`idTelefono` INT NOT NULL AUTO_INCREMENT,
	`telefonoFijo` INT NOT NULL,
	`telefonoExt` INT NOT NULL,
	PRIMARY KEY (`idTelefono`)
);

CREATE TABLE `Dia` (
	`idDia` INT NOT NULL AUTO_INCREMENT,
	`nombreDia` varchar(10) NOT NULL,
	PRIMARY KEY (`idDia`)
);

ALTER TABLE `Unidad` ADD CONSTRAINT `Unidad_fk0` FOREIGN KEY (`idTelefono`) REFERENCES `Telefono`(`idTelefono`);

ALTER TABLE `Unidad` ADD CONSTRAINT `Unidad_fk1` FOREIGN KEY (`idHorario`) REFERENCES `Horario`(`idHorario`);

ALTER TABLE `Proceso` ADD CONSTRAINT `Proceso_fk0` FOREIGN KEY (`idUnidad`) REFERENCES `Unidad`(`idUnidad`);

ALTER TABLE `ProcesoRequisito` ADD CONSTRAINT `ProcesoRequisito_fk0` FOREIGN KEY (`idProceso`) REFERENCES `Proceso`(`idProceso`);

ALTER TABLE `ProcesoRequisito` ADD CONSTRAINT `ProcesoRequisito_fk1` FOREIGN KEY (`idRequisito`) REFERENCES `Requisito`(`idRequisito`);

ALTER TABLE `Horario` ADD CONSTRAINT `Horario_fk0` FOREIGN KEY (`idDia`) REFERENCES `Dia`(`idDia`);

