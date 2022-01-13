create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(

	id bigint auto_increment,
    nome varchar(255) not null,
    Abilidade varchar(255) not null,
    armas varchar(255) not null,
    primary key (id)
    

);

insert into tb_classes (Nome, Abilidade, armas) values ("Guerreiro", "Vigor","machado, espada de duas mãos, Maça");
insert into tb_classes (Nome, Abilidade, armas) values ("Mago", "Raio de ether","Varimha, , Cetro");
insert into tb_classes (Nome, Abilidade, armas) values ("Ladrão", "Ataque furtivo","Adagas, quebra espada, florete");
insert into tb_classes (Nome, Abilidade, armas) values ("Druida", "furia da natureza","lança");
insert into tb_classes (Nome, Abilidade, armas) values ("berserker", "Furia","machetes, Clava");



create table tb_personagem(

	id bigint auto_increment,
    Nome varchar(255) not null,
    Dencendencia Varchar(255)not null,
    ataque bigint not null,
    defesa bigint not null,
    classe_id bigint not null,
    
    primary key (id),
    foreign key (classe_id) references tb_classes (id)
    
);


insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("Matrin","elfo",2100,1200, 3);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("garv","Humano",3500,2300, 5);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("Lacuer","hafling",2250,13005, 3);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("Nazira","elfo",5100,1000, 2);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("Tom","Humano",3000,2200, 1);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("cavatrim","Humano",2900,2459, 4);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("Hasna","elfo",3590,2000, 5);
insert into tb_personagem (Nome, Dencendencia, ataque, defesa, classe_id) values ("Miranda","Humano",3160,2090, 1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa > 1000 and defesa < 2000 ;

select * from tb_personagem where Nome like "%c%";

select * from tb_personagem inner join tb_classes on tb_classes.id = tb_personagem.classe_id;

select tb_personagem.Nome, tb_personagem.classe_id, tb_classes.nome 
from tb_personagem 
inner join tb_classes on tb_classes.id = tb_personagem.classe_id 
where tb_classes.nome = "Ladrão";
