create database vetFORESP;

create table Especialidade(esp varchar(50) primary key);

create table Utente(id int auto_increment primary key, 
	nome varchar(50),
    telef int, 
    nif int, 
    email varchar(100));

create table Medico(id int auto_increment primary key, 
	nome varchar(50), 
    telef int, 
    esp varchar(50), 
    foreign key(esp) references Especialidade(esp));

create table Consulta(id int auto_increment primary key, 
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

select nome, telef from Medico where esp='Cardiologia'; 
select nome telef from Medico where telef like '91%' order by nome;
select * from Medico order by id DESC limit 1;
select count(nome) from Medico group by esp;
select esp from Especialidade where esp NOT IN(select esp from Medico); #quais as especialidades sem médico 
select * from Medico;
select esp from Especialidade;

#Quais os utentes com NIF > 1 000 000 0?
insert into Utente(nome, nif)
value ('Maria das Dores','10000001'), 
	('Alberto','999992'), 
	('Anibal','10000088');
select * from Utente;
select nome, nif > 10000000 from Utente;

insert into Consulta(medico, utente, data_cons)
value('Manuel','Anibal','2023-02-16 23:00:00'), 
	('Rita','Alberto','2023-02-20 12:00:00'), 
	('Manuel','Maria das Dores','2023-02-28 14:00:00');

#Quais as consultas de hoje?

select data_cons = '2023-02-16' from Consulta;

#Quantas consultas este mês?

select data_cons = '2023-02-*' from Consulta;

#Quantas consultas por médico?

select count(medico) from Consulta;

select * FROM vetFORESP;

