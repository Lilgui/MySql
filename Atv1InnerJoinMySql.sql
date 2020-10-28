create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) not null,
    modo varchar(245),
	cortes varchar(235),
    
    primary key(id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(225) not null,
    peso varchar(255),
    preco decimal(10, 2),
	estoque integer,
	categorias_id bigint,

	primary key(id),
	foreign key(categorias_id) references tb_categorias(id)
) ;

insert into tb_categorias(tipo, modo, cortes) values ("Bovino","Pesagem","Interio");
insert into tb_categorias(tipo, modo, cortes) values ("Bovino","Bandeja","Em pedaços");
insert into tb_categorias(tipo, modo, cortes) values ("Suíno","Pesagem","Em pedaços");
insert into tb_categorias(tipo, modo, cortes) values ("Suíno","Bandeja","Interio");
insert into tb_categorias(tipo, modo, cortes) values ("Outros","Bandeja ou pesagem","Interio ou cortado");

insert into tb_produtos(nome, peso, preco, estoque, categorias_id) 
	values ("Picanha", "3Kg", 70.90, 202, 1);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Frango", "2kg", 23.80, 300, 5);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Linguiça", "1,5Kg", 15.90, 100, 3);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Calabresa", "500g", 13.70, 67, 4);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Filé Mignon", "700g", 19.90, 73, 2);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Alcatra", "3,4Kg", 78.60, 229, 1);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Pão de alho", "", 5000, 1, 2);
insert into tb_produtos(nome, peso, preco, estoque, categorias_id)
	values ("Fraldinha", "3Kg", 49.30, 152, 1);
    
select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%o%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id; 

select nome, preco, tb_categorias.modo from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id; 

select nome, preco, tb_categorias.cortes from tb_produtos left join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select nome, preco, tb_categorias.tipo from tb_produtos right join tb_categorias on tb_categorias.id = tb_produtos.categorias_id  