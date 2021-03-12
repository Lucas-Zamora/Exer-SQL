create database db_escola;

use db_escola;

create table tb_alunos(
nome varchar(30) not null,
id bigint(4) auto_increment,
idade int not null,
classe varchar(20) not null,
nota float,
primary key(id)
);

select * from tb_alunos;

insert into tb_alunos(nome,id,idade,classe,nota) value ("Lucas",1342,14,"Primeiro Colegial",9.5);
insert into tb_alunos(nome,id,idade,classe,nota) value ("Lucio",1362,13,"Oitavo ano",6.5);
insert into tb_alunos(nome,id,idade,classe,nota) value ("Nathan",1346,15,"Segundo Colegial",8.5);
insert into tb_alunos(nome,id,idade,classe,nota) value ("João",1358,10,"Sexto ano",7.5);
insert into tb_alunos(nome,id,idade,classe,nota) value ("Marcos",1562,17,"Terceiro Colegial",5.5);
insert into tb_alunos(nome,id,idade,classe,nota) value ("Alan",1742,9,"Quarto ano",7.5);
insert into tb_alunos(nome,id,idade,classe,nota) value ("Maria",1212,16,"Segundo Colegial",10);
insert into tb_alunos(nome,id,idade,classe,nota) value ("Bruno",1378,18,"Terceiro Colegial",2.5);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nome = "João", idade = 11
	where id = 1358;