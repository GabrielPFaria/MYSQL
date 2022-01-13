create database db_exemplovideo_estoque;

use db_exemplovideo_estoque;

create table tb_marcas(

	id bigint(5) auto_increment,
    nome varchar(50) not null,
    ativo boolean,
    primary key (id)
    

);
	insert into tb_marcas(nome, ativo) values("Nick", true);
    insert into tb_marcas(nome, ativo) values("fatal surf", false);
    insert into tb_marcas(nome, ativo) values("H&H", true);
    insert into tb_marcas(nome, ativo) values("Zara", true);
    insert into tb_marcas(nome, ativo) values("Adidas", true);
    insert into tb_marcas(nome, ativo) values("Uniqlo", true);
    insert into tb_marcas(nome, ativo) values("Hermes", true);
    insert into tb_marcas(nome, ativo) values("Rolex", true);
    
    
    update tb_marcas set ativo = true where id =2;
    
create table tb_produtos (

id bigint auto_increment,
    nome varchar(30) not null,
    preco decimal(10,2),
    marca_id bigint not null,
    
    primary key (id),
    foreign key (marca_id) references tb_marcas (id)
);

insert into tb_produtos(nome, preco, marca_id) values("",,);
insert into tb_produtos(nome, preco, marca_id) values("",,);
insert into tb_produtos(nome, preco, marca_id) values("",,);
insert into tb_produtos(nome, preco, marca_id) values("",,);
insert into tb_produtos(nome, preco, marca_id) values("",,);
insert into tb_produtos(nome, preco, marca_id) values("",,);

	select * from tb_produtos;
    select * from tb_marcas;
    
   

