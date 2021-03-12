create database db_empresarh;

use db_empresarh;

create table tb_funcionarios(
nome varchar(30) not null,
id bigint(5) auto_increment,
idade int not null,
ativo boolean,
salario float not null,
primary key(id)
);

select * from tb_funcionarios;

insert into tb_funcionarios(nome,id,idade,ativo,salario) values ("Carlos",11234,24,true,3400);
insert into tb_funcionarios(nome,id,idade,ativo,salario) values ("Marcos",11235,30,true,3600);
insert into tb_funcionarios(nome,id,idade,ativo,salario) values ("Josue",11215,45,true,1800);
insert into tb_funcionarios(nome,id,idade,ativo,salario) values ("Magnus",11267,18,true,1950);
insert into tb_funcionarios(nome,id,idade,ativo,salario) values ("João",11221,50,true,3000);

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set nome = "Carlinhos", ativo = true
	where id = 11234;