CREATE TABLE `Unidad` (
	`idUnidad` INT NOT NULL AUTO_INCREMENT,
	`nombreUnidad` varchar(80) NOT NULL,
	`descripcionUnidad` varchar(200) NOT NULL,
	`emailUnidad` varchar(100) NOT NULL,
	`telefonoUnidad` INT NOT NULL,
	`movilUnidad` INT NOT NULL,
	`horario` DATETIME NOT NULL,
	PRIMARY KEY (`idUnidad`)
);

CREATE TABLE `Proceso` (
	`idProceso` INT NOT NULL AUTO_INCREMENT,
	`nombreProceso` varchar(100) NOT NULL,
	`descripcionProceso` TEXT NOT NULL,
	`idUnidad` INT NOT NULL,
	PRIMARY KEY (`idProceso`)
);

CREATE TABLE `Requisito` (
	`idRequisito` INT NOT NULL AUTO_INCREMENT,
	`nombreRequisito` varchar(100) NOT NULL,
	`descripcionRequisito` varchar(100) NOT NULL,
	PRIMARY KEY (`idRequisito`)
);

CREATE TABLE `ProcesoRequisito` (
	`idProReq` INT NOT NULL AUTO_INCREMENT,
	`idProceso` INT NOT NULL,
	`idRequisito` INT NOT NULL,
	PRIMARY KEY (`idProReq`)
);

ALTER TABLE `Proceso` ADD CONSTRAINT `Proceso_fk0` FOREIGN KEY (`idUnidad`) REFERENCES `Unidad`(`idUnidad`);

ALTER TABLE `ProcesoRequisito` ADD CONSTRAINT `ProcesoRequisito_fk0` FOREIGN KEY (`idProceso`) REFERENCES `Proceso`(`idProceso`);

ALTER TABLE `ProcesoRequisito` ADD CONSTRAINT `ProcesoRequisito_fk1` FOREIGN KEY (`idRequisito`) REFERENCES `Requisito`(`idRequisito`);

