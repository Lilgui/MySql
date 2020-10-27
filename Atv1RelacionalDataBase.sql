create database db_RH2;

use db_RH2;

create table tb_cargos(
	id bigint auto_increment,
    cargo varchar(30) not null,
    posicao varchar(30) not null,
	funcao varchar(200),
    
    primary key(id)
);

create table tb_funcionarios(
	id bigint auto_increment,
	nome varchar(40) not null,
    idade int(10),
    salario decimal(10,2),
    ativo boolean,
    cargos_id bigint,
    
    primary key(id),
    foreign key(cargos_id) references tb_cargos(id)
);

insert into tb_cargos (cargo, posicao, funcao) values ("Dev. Java Jr", "Operador", "Analisar e desenvolver sistemas");
insert into tb_cargos (cargo, posicao, funcao) values ("Dev. Java", "Supervisor", "Coordenar e avaliar as necessidades de seus funcionários");
insert into tb_cargos (cargo, posicao, funcao) values("Dev. Back-end", "Operador","Desenvolver soluções para os sistema da empresa");
insert into tb_cargos (cargo, posicao, funcao) values("Dev. Front-end ", "Supervisor", "Coordenar e avaliar as necessidades de seus funcionários");    
insert into tb_cargos (cargo, posicao, funcao) values("Dev. Java Sênior", "Gerente", "Coordenar um determinado setor");

insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Carla", 23, 7500, true, 2);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("joão", 21, 4500, true, 1);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Maria", 19, 4500, true, 1);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Marcela", 25, 7500, true, 4);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Caio", 27, 6000, false, 3);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Cícero", 24, 4800, true, 1);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Silvia", 22, 7800, false, 3);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Igor", 31, 12300, true, 5);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Fernando", 27, 5600, false, 3);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Camila", 23, 5500, true, 3);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Anitta", 33, 13000, true, 5);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Neymar", 19, 3500, true, 1);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Jinx", 28, 8000, true, 3);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Pepi", 25, 6700, true, 4);
insert into tb_funcionarios (nome, idade, salario, ativo, cargos_id) 
values("Ronald",27, 7000, true, 2);

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 5000;

select * from tb_funcionarios where salario between 5000 and 7000;

select * from tb_funcionarios where nome like "%c%"