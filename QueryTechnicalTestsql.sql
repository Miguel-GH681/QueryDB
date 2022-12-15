create database TestDataBase
drop database TestDataBase

use TestDataBase
use master

create table Pais(
	Pais varchar(5) not null primary key,
	NomPais varchar(250) not null
)

create table Departamento(
	Pais varchar(5) not null,
	Depto varchar(5) not null,
	NomDepto varchar(250) not null,

	primary key (Pais, Depto),

	constraint FK_DEPARTAMENTO_PAIS foreign key (Pais) references Pais(pais)
)

create table Persona(
	IdPersona int not null primary key,
	NombreCompleto varchar(100) not null,
	Direccion varchar(100) not null,
	
	Pais varchar(5) not null,
	Depto varchar(5) not null,

	constraint FK_PERSONA_DEPARTAMENTO foreign key (Pais, Depto) references Departamento(Pais, DEPTO)
)
