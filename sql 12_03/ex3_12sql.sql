create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
cliente varchar(255) not null,
doacaoCV boolean,
desconto boolean,
primary key(id)
);
-- doacaoCV - cruz vermelha - ganha desconto
insert into tb_categoria (cliente,doacaoCV,desconto) values ("Kleber",true,true);
insert into tb_categoria (cliente,doacaoCV,desconto) values ("Joana",true,true);
insert into tb_categoria (cliente,doacaoCV,desconto) values ("João",false,false);
insert into tb_categoria (cliente,doacaoCV,desconto) values ("Nanny",true,true);
insert into tb_categoria (cliente,doacaoCV,desconto) values ("Robertinho",false,false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
produto varchar(255) not null,
preco decimal(5,2) not null,
prodSaude boolean,
prodNormal boolean,
categoria_id bigint not null,
primary key(id),
foreign key (categoria_id) references tb_categoria(id) 
);

insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Xaropé",19.90,true,false,1);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Nimesulida",29.90,true,false,2);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Massageador",62.90,false,true,1);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Dorflex",50.90,true,false,3);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Torsilax",45.90,true,false,5);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Amoxicilina",19.90,true,false,4);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Chiclete",3.90,false,true,4);
insert into tb_produto (produto,preco,prodSaude,prodNormal,categoria_id) values ("Balança",79.50,false,true,3);

select * from tb_produto;

select * from tb_produto where preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

select * from tb_produto where produto Like "%b%";

select * from tb_categoria
		inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
	where prodNormal Like "%1%";
    