CREATE DATABASE Notas_Alumnos_Becados
GO

USE Notas_Alumnos_Becados
GO

CREATE TABLE TipoBeca
(
Id_Beca int PRIMARY KEY IDENTITY(1,1),
Descripcion VARCHAR(100) NOT NULL,
Monto_Asignado FLOAT NOT NULL
)

CREATE TABLE Ciclo
(
Id_Ciclo int primary key,
Tipo_Ciclo char(10)
)
INSERT INTO Ciclo VALUES
(1,'Impar'),
(2,'Par')

CREATE TABLE Asignatura
(
Id_Asignatura int PRIMARY KEY IDENTITY(1,1),
Nombre_Asignatura VARCHAR(25),
)

CREATE TABLE Grupo_Asignatura
(
Id_Grupo int PRIMARY KEY IDENTITY(1,1),
Nombre_Grupo VARCHAR(25),
)

CREATE TABLE Docente
(
Id_Docente int PRIMARY KEY IDENTITY(1,1),
Nombres_Apellidos varchar(40),
Apellidos varchar(40)
)

CREATE TABLE AsignaturaGrupo_Detalle
(
Id_DetalleAG int PRIMARY KEY IDENTITY(1,1),
Id_Asignatura int,
Id_Grupo int,
Id_Docente int
FOREIGN KEY (Id_Asignatura) REFERENCES Asignatura(Id_Asignatura),
FOREIGN KEY (Id_Grupo) REFERENCES Grupo_Asignatura(Id_Grupo),
FOREIGN KEY (Id_Docente) REFERENCES Docente(Id_Docente)
)

CREATE TABLE Alumnos
(
Id_Alumno int PRIMARY KEY IDENTITY(1,1),
Nombres_Alumno varchar(40) NOT NULL,
Apellidos_Alumno varchar(40) NOT NULL,
Carnet char(12) NOT NULL,
Fecha_Nacimiento date,
Id_Beca int,
Id_Ciclo int,

)
