create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
nome varchar(30) not null,
id bigint(3) auto_increment,
marca varchar(50) not null,
disponivel boolean,
preco decimal(10,2),
primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(nome,id,marca,disponivel,preco) values ("Camisa",123,"Lacoste",true,149.99);
insert into tb_produtos(nome,id,marca,disponivel,preco) values ("Tênis",133,"ADIDAS",true,549.99);
insert into tb_produtos(nome,id,marca,disponivel,preco) values ("Calça",143,"Coca-Cola",true,349.99);
insert into tb_produtos(nome,id,marca,disponivel,preco) values ("Blusa",153,"NIKE",true,1149.99);
insert into tb_produtos(nome,id,marca,disponivel,preco) values ("Bolsa",126,"Gucci",true,849.99);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set nome = "Bolsa", disponivel = false
	where id = 126;