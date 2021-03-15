create database db_minha_casa_mais_bonita;

use db_minha_casa_mais_bonita;

create table tb_categoria(
id_cat bigint auto_increment,
nome varchar (200),
ativo boolean,
primary key(id_cat)
);

insert into tb_categoria (nome, ativo) values ("Quarto Principal", true);
insert into tb_categoria (nome, ativo) values ("Quarto de Hóspede", true);
insert into tb_categoria (nome, ativo) values ("Banheiro", true);
insert into tb_categoria (nome, ativo) values ("Sala", true);
insert into tb_categoria (nome, ativo) values ("Cozinha", true);

CREATE TABLE tb_produto(
id_prod bigint auto_increment,
nome_prod varchar (200),
preco decimal (10,2),
quantidade bigint(100),
categoria_id bigint,
primary key (id_prod), 
foreign key (categoria_id) references tb_categoria(id_cat)
);

insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Cama", 120.00, 2, 1);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Tapete", 70.00, 5, 1);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Banheira", 150.00, 2, 3);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Cama de solteiro", 80.00, 2, 2);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Vaso sanitário", 50.00, 1, 3);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Fogão", 120.00, 1, 5);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("TV", 180.00, 1, 4);
insert into tb_produto (nome_prod, preco, quantidade, categoria_id) values ("Video-Game", 200.00, 1, 4);

create table tb_usuario (
id_usuario bigint auto_increment,
nome_pessoa varchar (100),
idade int (3),
email varchar (100),
senha varchar (100),
primary key (id_usuario)
);

insert into tb_usuario (nome_pessoa, idade, email, senha) values ("Marcos da Silva", 54, "marquinhos67@bol.com", "marc1967");
insert into tb_usuario (nome_pessoa, idade, email, senha) values ("João Pereira dos Santos", 19, "joaosantos19@gmail.com", "skate19xjoao");
insert into tb_usuario (nome_pessoa, idade, email, senha) values ("Joana de Jesus", 60, "joanajesus@yahoo.com", "1234joana");
insert into tb_usuario (nome_pessoa, idade, email, senha) values ("Carlos Miguel Schutz", 30, "devschutz@gmail.com", "lacampanella8765");
insert into tb_usuario (nome_pessoa, idade, email, senha) values ("Carla Antonio Cordoba", 54, "carlacor@hotmail.com", "antoniocordoba1453");

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome_prod like "%B%";

select * from tb_usuario where nome_pessoa like "%C%";

select * from tb_categoria inner join tb_produto on tb_categoria.id_cat = tb_produto.categoria_id;

select avg (preco) as media from tb_produto;

select COUNT(*) from tb_produto;

select * from tb_produto where tb_produto.categoria_id = 3;

