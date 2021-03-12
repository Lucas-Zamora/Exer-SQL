create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
cliente varchar(255) not null,
descricao varchar(255) not null,
ativo boolean,
primary key(id)
);

insert into tb_categoria (cliente,descricao,ativo) values ("José","Frango",true);
insert into tb_categoria (cliente,descricao,ativo) values ("Josefa","Bovino",true);
insert into tb_categoria (cliente,descricao,ativo) values ("Joseneide","Suíno",true);
insert into tb_categoria (cliente,descricao,ativo) values ("Joseclei","Rã",true);
insert into tb_categoria (cliente,descricao,ativo) values ("Josevaldo","Caprino",true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
qtProduto int not null,
preco decimal(5,2) not null,
pagCartao boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Asa",10,18.50,true,1);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Pernil",10,60,false,3);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Bisteca",10,34.50,true,3);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Picanha",10,89.90,true,2);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Perna",10,64,true,4);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Costela",10,54.90,false,5);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Cupim",10,62.50,false,2);
insert into tb_produto (nome,qtProduto,preco,pagCartao,categoria_id) values ("Peito",10,29.90,false,1);

select * from tb_produto;

select * from tb_produto where preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

select * from tb_produto where nome Like "%c%";

select * from tb_categoria
		inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
	where categoria_id Like "%1%";
