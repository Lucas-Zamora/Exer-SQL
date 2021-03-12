create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
cliente varchar(255) not null,
endereco varchar(255) not null,
numero int not null,
primary key(id)
);

insert tb_categoria (cliente,endereco,numero) values ("Maria","Rua Epaminondas","256");
insert tb_categoria (cliente,endereco,numero) values ("João","Rua São Manuel","1345");
insert tb_categoria (cliente,endereco,numero) values ("Joaquim","Rua Katabrok","120");
insert tb_categoria (cliente,endereco,numero) values ("Jaqueline","Rua Eclesiástico","23");
insert tb_categoria (cliente,endereco,numero) values ("Diego","Av São Sebastião da Serra alta","45");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
tamanho varchar(255) not null,
bordaR boolean,
preco decimal(10,2) not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

select * from tb_pizza;

insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Frango c/ Catupiry","Grande",true,49.90,1);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Alho e óleo","Média",false,19.90,1);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Calabresa","Grande",true,29.90,2);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Portuguesa","Broto",false,24.90,3);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Camarão","Grande",true,79.90,4);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Strogonoff de Filé Mignon","Grande",true,89.90,5);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Nutella com morango","Grande",false,54.90,4);
insert tb_pizza (sabor,tamanho,bordaR,preco,categoria_id) values ("Vegetariana","Broto",false,32.90,3);

select * from tb_pizza where preco > 45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

select * from tb_pizza where sabor Like "%c%";

select * from tb_categoria
		inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tamanho Like "%Grande%";