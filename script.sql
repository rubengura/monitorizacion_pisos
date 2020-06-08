CREATE DATABASE IF NOT EXISTS monitorizacion_viviendas;

USE monitorizacion_viviendas;

CREATE TABLE ciudad (
	idciudad INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(256)
);

CREATE TABLE zona (
	idzona INT NOT NULL PRIMARY KEY,
    idciudad INT,
    nombre VARCHAR(256),
	FOREIGN KEY (idciudad) REFERENCES ciudad (idciudad)
);

CREATE TABLE vivienda (
	idvivienda INT NOT NULL PRIMARY KEY,
    idciudad INT NOT NULL,
    idzona INT,
    num_habitaciones INT,
    parking TINYINT,
    aire_acondicionado TINYINT,
    a_reformar TINYINT,
    metros_cuadrados INT,
    orientacion VARCHAR(20),
    FOREIGN KEY (idciudad) REFERENCES ciudad (idciudad),
    FOREIGN KEY (idzona) REFERENCES zona (idzona)
);

CREATE TABLE estadovivienda (
	idvivienda INT NOT NULL,
    fecha DATETIME,
    contacto VARCHAR(50),
    inmobiliaria VARCHAR(50),
    portalweb VARCHAR(50),
    precio INT,
    FOREIGN KEY (idvivienda) REFERENCES vivienda (idvivienda)
);