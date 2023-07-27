use vetforesp;

#Quais os utentes com NIF > 1 000 000 0?
insert into Utente(nome, nif)
value ('Maria das Dores','10000001'), 
	('Alberto','999992'), 
	('Anibal','10000088');

select nome, nif > 10000000 from Utente;
select * from Utente;
select * from Medico;
insert into Consulta(medico, utente, data_cons)
value('5','5','2023-02-16 23:00:00'), 
	('6','2','2023-02-20 12:00:00'), 
	('5','1','2023-02-28 14:00:00');

#Quais as consultas de hoje?

select data_cons from Consulta;
#Quantas consultas este mês?

select data_cons from Consulta;

#Quantas consultas por médico?

select m.nome, u.nome, data_cons
from Consulta c, Medico m, Utente u
where c.medico = m.id and c.utente = u.id;