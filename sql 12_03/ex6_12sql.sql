create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
usuario varchar(50) not null,
categoria varchar(100) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria (usuario,categoria,ativo) values ("Jefferson","Informatica",true);
insert into tb_categoria (usuario,categoria,ativo) values ("Matheus","Humanas",true);
insert into tb_categoria (usuario,categoria,ativo) values ("Jaqueline","Biologicas",true);
insert into tb_categoria (usuario,categoria,ativo) values ("Tomas","Exatas",true);
insert into tb_categoria (usuario,categoria,ativo) values ("Marta","Agrárias",false);

create table tb_curso(
id bigint auto_increment,
curso varchar(255) not null,
tipo varchar(255) not null,
hora varchar(255) not null,
preco decimal (10,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Web Designer","Digital","Qualquer",49.90,1);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Direito","Presencial","Diurno",67,2);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Portugues","Digital","Qualquer",40,2);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Matematica","Presencial","Noturno",44,4);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Analise de dados","Presencial","Integral",46,1);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Agronomia","Presencial","Integral",45,5);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Engenharia Civil","Digital","Qualquer",70,4);
insert into tb_curso (curso,tipo,hora,preco,categoria_id) values ("Biologia","Presencial","Integral",38,3);

select * from tb_curso where preco > 50;

SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

select * from tb_curso where curso Like "%j%";

select * from tb_categoria
		inner join tb_curso on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso
	inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
	where hora Like "%Integral%";