create database lets_code;

drop database lets_code;
drop database sistema_estoque;

create table alunos (
	id SERIAL primary key,
	nome varchar(255),
	email varchar(55) unique not null,
	endereco text,
	mensalidade decimal not null,
	maior_idade boolean not null default true
);

create table materiais (
	id SERIAL primary key,
	descricao varchar(55),
	conteudo_liberado boolean
);

create table professores (
	id SERIAL primary key,
	nome varchar(255),
	salario decimal,
	idade integer
);

select * from professores;
select * from materiais;
select * from alunos;
select * from alunos;
select nome, email, endereco from alunos;
select nome as name, email, endereco as address from alunos;
select * from alunos where maior_idade = true;
select * from alunos where maior_idade = false;
select * from alunos where email = 'nathan@gmail.com';
select * from alunos limit 4;

drop table alunos;

insert into alunos (nome, email, endereco, mensalidade, maior_idade) values 
('otavio', 'otavio@gmail.com', 'Av Paulista 2258', 500, false),
('matheus', 'matheus@gmail.com', 'Av Paulista 2258', 500, true),
('alberto', 'alberto@gmail.com', 'Av Paulista 2258', 500, true),
('mariana', 'mariana@gmail.com', 'Av Paulista 2258', 500, true),
('roger', 'roger@gmail.com', 'Av Paulista 2258', 500, true),
('mario', 'mario@gmail.com', 'Av Paulista 2258', 500, false);

