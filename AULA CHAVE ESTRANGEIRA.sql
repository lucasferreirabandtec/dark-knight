create database adsb;
use adsb;

create table alunos (
id int auto_increment primary key,
nome varchar (40),
idade int,
escola_de_origem varchar (40)
);

create table curso (
id_curso int auto_increment primary key,
nome varchar (40),
duracao varchar (10)
);

alter table alunos add column fk_id_curso int;

insert into alunos (nome, idade, escola_de_origem) values 
("Lucas Ferreira", 25, "Renovação"),
("Vinicius Moraes", 20, "Alcantara"),
("Rogerio Cardoso", 26, "Arqui"),
("Viviane Aparecida", 26, "Oemar");

select * from alunos;

insert into curso (nome, duracao) values
("Analiise de Sistemas", "2 anos"),
("engenharia civil", "5 anos"),
("Ciencia da computação", "4 anos");

select * from alunos as al, curso as cu where al.fk_id_curso = cu.id_curso;

update alunos set fk_id_curso = 2 where id = 1;
update alunos set fk_id_curso = 3 where id = 2;
update alunos set fk_id_curso = 1 where id = 3 or id = 4;


create table disciplina (
id_disc int primary key auto_increment,
nome_disc varchar(50),
qtdhr int,
fkcurso int,
foreign key (fkcurso) references curso (id_curso)) auto_increment = 1000;

insert into disciplina (nome_disc, qtdhr, fkcurso) values 
("matemática I" , 500, 3);

insert into disciplina (nome_disc, qtdhr, fkcurso) values
("Lógica de programação", 350, 1),
("Física", 300, 2),
("Tecnologia da Informação", 400, 3);

select * from disciplina;

insert into curso (nome, duracao) values
("Filosofia", "3 anos");

select nome, nome_disc from disciplina as di, curso as cu where di.fkcurso = cu.id_curso and cu.id_curso = 1;

insert into disciplina (nome_disc, qtdhr, fkcurso) values
("Geometria Analítica", 300, 2),
("Álgebra", 250, 2),
("Algoritmo", 300, 1),
("Arquitetura de Computadores", 400, 3),
("Filosofia Política", 250, 4),
("Filosofia Ocidental", 150, 4);

alter table disciplina modify nota decimal (4,2);

update disciplina set nota = 7 where id_disc > 1001;

select * from disciplina;