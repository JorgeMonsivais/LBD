create database BD

use BD

create table alumno(
id_alumno int,
nombre varchar(30),
apellido varchar(30),
tel_alumno char(9)
)

create table materias(
id_materia int,
nombre_materia varchar(50),
)

create table profesores(
id_profesor int,
nombre_profesor varchar(30),
ape_profesor varchar(50),
tel_profesor char(9)
)

create table carrera(
id_carrera int,
nombre_carre varchar(50),
creditos int
)

create table facultades(
id_facu int,
nombre_facu varchar(60)
)