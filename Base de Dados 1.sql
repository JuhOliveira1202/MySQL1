create database vet;

create table Especialidade(esp varchar(50) primary key);

create table Utente(
	id int identity(1,1) primary key, 
	nome varchar(50), 
	telef int, 
	nif int, 
	email varchar(100));

create table Medico(
	id int identity(1,1) primary key, 
	nome varchar(50), 
	telef int, 
	esp varchar(50), 
	foreign key(esp) references Especialidade(esp));

create table Consulta(
	id int identity(1,1) primary key, 
	medico int, 
	foreign key(medico) references Medico(id), 
	utente int, 
	foreign key(utente) references Utente(id), 
	data_cons datetime);

insert into Especialidade(esp)
values ('Cardiologia'), ('Neurologia'), ('Dermatologia'), ('');

insert into Medico(nome, telef, esp)
values ('Manuel','919191919','Cardiologia'), 
('Rita','912121212','Dermatologia'), 
('José','939393939','Neurologia'), 
('Afonso','','Cardiologia');