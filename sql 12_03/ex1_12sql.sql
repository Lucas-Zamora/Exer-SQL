create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
habilidade varchar(255) not null,
vantagem varchar(255) not null,
primary key(id)
);

insert tb_classe (classe,habilidade,vantagem) values ("Mago/Maga","Magia","Mana extra");
insert tb_classe (classe,habilidade,vantagem) values ("Feiticeiro/Feiticeira","Feitiçaria","Poder mágico elevado");
insert tb_classe (classe,habilidade,vantagem) values ("Arqueiro/Arqueira","Arquearia/Caça","Mira precisa");
insert tb_classe (classe,habilidade,vantagem) values ("Guerreiro/Guerreira","Exímio combatente corpo-a-corpo","Usa todas as armas");
insert tb_classe (classe,habilidade,vantagem) values ("Bárbaro/Bárbara","Fúria Berserk","Ganha ataque ao perder vida");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
nivel bigint not null,
poderD int not null,
poderA bigint not null,
classe_id bigint not null,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Einsenhower",20,1500,2000,1);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Son-Goku",100,6000,12000,4);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Michelangelo",15,1000,1600,4);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Sonya",60,5600,6700,5);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Diablo",80,8900,7666,2);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Tyrande",90,4000,10000,3);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Arthas",98,10000,8000,4);
insert tb_personagem (nome,nivel,poderD,poderA,classe_id) values ("Illidan",85,4000,9000,2);

select * from tb_personagem;

select * from tb_personagem where poderA > 2000;

SELECT * FROM tb_personagem WHERE poderD BETWEEN 1000 AND 2000;

select * from tb_personagem where nome Like "%c%";

select * from tb_classe 
		inner join tb_personagem on tb_classe.id = tb_personagem.classe_id;
        
select * from tb_classe
	inner join tb_personagem on tb_classe.id = tb_personagem.classe_id
    where classe Like "%Guerreiro/Guerreira%";