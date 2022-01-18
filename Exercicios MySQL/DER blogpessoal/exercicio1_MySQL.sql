create database db_exercicios;

create table tb_funcionarios(
	
    id bigint auto_increment,
    nome varchar (255) not null,
    idade bigint not null,
    sexo varchar (1) not null,
    salario decimal(10,2) not null,
    ferias_data varchar(255) not null,
    primary key (id)

);
/*Populando*/

insert into tb_funcionarios (nome, idade, sexo, salario, ferias_data) values ("Rodrigo VIeira", 25, "M", 3500.80, "25/12-25/01");
insert into tb_funcionarios (nome, idade, sexo, salario, ferias_data) values ("Malina Castro", 39, "F", 4000.00, "05/05-05/06");
insert into tb_funcionarios (nome, idade, sexo, salario, ferias_data) values ("Vera Marques", 22, "O", 2300.65, "25/12-25/01");
insert into tb_funcionarios (nome, idade, sexo, salario, ferias_data) values ("Tonio jardin", 22, "M", 1500.80, "25/12-25/01");
insert into tb_funcionarios (nome, idade, sexo, salario, ferias_data) values ("Victoria Messias", 30, "F", 1700.00, "25/12-25/01");


