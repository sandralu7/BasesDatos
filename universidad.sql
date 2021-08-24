CREATE DATABASE universidad;

USE universidad;

DROP TABLE CURSO;
DROP TABLE PROFESOR;
DROP TABLE DEPTO;

CREATE TABLE DEPTO (
	Depto_id INT NOT NULL,
    Nombre VARCHAR (50) NOT NULL,
    Director VARCHAR (50) NOT NULL,
    Descripcion VARCHAR (50) NOT NULL,
    PRIMARY KEY (Depto_id)
);


CREATE TABLE PROFESOR (
	Prof_id INT NOT NULL,
    Depto_id INT,
    Nombre VARCHAR (50) NOT NULL,
    Direccion VARCHAR (50) NOT NULL,
    Telefono VARCHAR (50) NOT NULL,
    PRIMARY KEY (Prof_id)
);

CREATE TABLE CURSO (
	Curso_id INT NOT NULL AUTO_INCREMENT,
    Prof_id INT,
    Nombre VARCHAR (50) NOT NULL,
    Nivel VARCHAR (50) NOT NULL,
    Descripcion VARCHAR (50) NOT NULL,
    PRIMARY KEY (Curso_id)
);

ALTER TABLE Profesor
 ADD FOREIGN KEY (Depto_id) REFERENCES Depto (Depto_id);

ALTER TABLE Curso
 ADD FOREIGN KEY (Prof_id) REFERENCES Profesor (Prof_id);

INSERT INTO DEPTO (Depto_id, Nombre, Director, Descripcion) 
 VALUES ( 100, 'Facultad de Ingenieria', 'Javier Rodríguez', 'Carreras afines a ingenieria');
 
 INSERT INTO DEPTO (Depto_id, Nombre, Director, Descripcion) 
 VALUES ( 200, 'Facultad de Sociales', 'Monica Torres', 'Carreras afines a Sociales');
 
  INSERT INTO DEPTO (Depto_id, Nombre, Director, Descripcion) 
 VALUES ( 300, 'Facultad de Matematicas', 'Jorge  Moreno', 'Carreras afines a Matematicas');
 
 
 INSERT INTO PROFESOR (Prof_id, Depto_id, Nombre, Direccion, Telefono)
 VALUES (1245 , 100, 'Hernando Sanchez', 'Carrera 11 # 22 - 18', '721129');
 
 INSERT INTO PROFESOR (Prof_id, Depto_id, Nombre, Direccion, Telefono)
 VALUES (1246 , 100, 'Fernando Mendoza', 'Carrera 9 # 25 - 18', '721214');
 
  INSERT INTO PROFESOR (Prof_id, Depto_id, Nombre, Direccion, Telefono)
 VALUES (12235 , 200, 'Sandra Sanchez', 'Carrera 91 # 22 - 18', '821129');
 
 INSERT INTO PROFESOR (Prof_id, Depto_id, Nombre, Direccion, Telefono)
 VALUES (52235 , 300, 'Mario Hernandez', 'Carrera 61 # 22 - 18', '829929');
 
 
 INSERT INTO CURSO (Prof_id, Nombre, Nivel, Descripcion)
 VALUES (1245, 'Java', 'Avanzado', 'Curso Avanzado de Java');
 
 INSERT INTO CURSO (Prof_id, Nombre, Nivel, Descripcion)
 VALUES (1246, 'Bases de datos', 'Avanzado', 'Curso Avanzado de Bases de datos');
 
  INSERT INTO CURSO (Prof_id, Nombre, Nivel, Descripcion)
 VALUES (12235, 'Derecho', 'Medio', 'Curso Avanzado de Derecho');
 
   INSERT INTO CURSO (Prof_id, Nombre, Nivel, Descripcion)
 VALUES (52235, 'Matematicas', 'Basico', 'Curso Avanzado de Matematicas');
 
 
 