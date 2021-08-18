
CREATE DATABASE concesionario;
##usar base de datos
USE concesionario;

CREATE TABLE Vehiculos (
	placa VARCHAR (10) NOT NULL,
    marca VARCHAR (50) NOT NULL,
    modelo VARCHAR (50) NOT NULL,
    kilometraje INT NOT NULL,
    fecha_venta DATE,
    documento_vendedor INT NOT NULL,
    PRIMARY KEY (placa)
);
 
 CREATE TABLE Vendedores (
		documento_vendedor INT NOT NULL,
        nombres VARCHAR (50) NOT NULL,
        apellidos VARCHAR (50) NOT NULL,
        ciudad VARCHAR (50) NOT NULL,
		PRIMARY KEY (documento_vendedor)
 );
 
 ALTER TABLE Vehiculos
 ADD FOREIGN KEY (documento_vendedor) REFERENCES Vendedores (documento_vendedor);
 
 INSERT INTO Vendedores (documento_vendedor, nombres, apellidos, ciudad) 
 VALUES ( '1964', 'Juan', 'Rodríguez', 'Medellín');
INSERT INTO Vendedores (documento_vendedor, nombres, apellidos, ciudad) 
 VALUES ( 2853, 'José', 'González', 'Bogotá');
 
 INSERT INTO Vehiculos (placa, marca, modelo, kilometraje, fecha_venta, documento_vendedor)
 VALUES ('ACD 427', 'Renault', 'Stepway', 25000, '2020-7-05', '1964');
 INSERT INTO Vehiculos (placa, marca, modelo, kilometraje, fecha_venta, documento_vendedor) 
 VALUES ('IYU 521', 'Renault', 'Clío', 70200, null, '2853');
 
 
 SELECT * FROM vendedores;
 
 SELECT * FROM Vehiculos;
 
 SELECT placa, marca, fecha_venta FROM Vehiculos;
 
 SELECT documento_vendedor, nombres, apellidos, ciudad
 FROM Vendedores
 WHERE ciudad = 'Medellín'
 AND documento_vendedor = 1964;
 
 SELECT placa, modelo, kilometraje 
 FROM Vehiculos
 WHERE fecha_venta > '2020-1-01';
 
 SELECT placa, marca, modelo, kilometraje
 FROM Vehiculos
 WHERE kilometraje > '20000'
 AND modelo = 'Stepway';
 
 UPDATE vehiculos
 SET kilometraje = '100000'
 WHERE placa = 'ACD 427';
 
 UPDATE vendedores
 SET ciudad = 'Medellín';
 
 UPDATE Vehiculos
 SET modelo = 'Sandero', fecha_venta = '2021-5-06'
 WHERE documento_vendedor = '2853';
 
 Select * from Vehiculos;
 
 SELECT * FROM Vehiculos
 WHERE fecha_venta >= '2021-1-01' OR fecha_venta < '2020-1-01';
 
 UPDATE vehiculos
 SET kilometraje = '20000'
 WHERE fecha_venta >= '2021-1-01' OR fecha_venta < '2020-1-01';
 
 SELECT * FROM vendedores;
 Select * FROM Vehiculos;
 
 SET SQL_SAFE_UPDATES = 0;
 
 DELETE FROM Vehiculos where documento_vendedor = 2853;
 DELETE FROM vendedores WHERE ciudad = 'Bogotá';
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 