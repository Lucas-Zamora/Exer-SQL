create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
cliente varchar(255) not null,
nomeP varchar(255) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria (cliente,nomeP,ativo) values ("Marcos","Alvenaria",true);
insert into tb_categoria (cliente,nomeP,ativo) values ("Joana","Madeira",true);
insert into tb_categoria (cliente,nomeP,ativo) values ("Fernando","Concreto",true);
insert into tb_categoria (cliente,nomeP,ativo) values ("Jonas","Metal",true);
insert into tb_categoria (cliente,nomeP,ativo) values ("Pedro","PVC",true);

create table tb_produto(
id bigint auto_increment,
produto varchar(255) not null,
qtProduto int not null,
preco decimal (10,2) not null,
pagCartao boolean,
categoria_id bigint not null,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Forro",20,120,true,5);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Portal",20,500,true,2);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Bloco",50,7.60,false,3);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Pilar",20,130,false,2);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Porta",20,114.50,false,4);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Tijolo",50,4.50,true,1);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Cano",20,17.80,false,5);
insert into tb_produto (produto,qtProduto,preco,pagCartao,categoria_id) values ("Piscina",10,560.70,true,5);

select * from tb_produto where preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

select * from tb_produto where produto Like "%c%";

select * from tb_categoria
		inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
	where categoria_id Like "%5%";
