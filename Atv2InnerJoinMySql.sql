create database db_construindo_nossa_vida;

use db_construindo_nossa_vida;

create table tb_categorias(
	id bigint auto_increment,
    departamento varchar(255) not null,
    objeto varchar(245),
	prioridade varchar(235),
    
    primary key(id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(225) not null,
    tamanho varchar(255),
    preco decimal(10, 2),
	quantidade integer,
	categorias_id bigint,

	primary key(id),
	foreign key(categorias_id) references tb_categorias(id)
) ;

insert into tb_categorias(departamento, objeto, prioridade) values ("Cozinha","Utensílios","Necessário");
insert into tb_categorias(departamento, objeto, prioridade) values ("Cozinha","Eletrodoméstico","Necesário");
insert into tb_categorias(departamento, objeto, prioridade) values ("Sala de estar","Móvel","Pode aguardar");
insert into tb_categorias(departamento, objeto, prioridade) values ("Sala de estar","Eletrodoméstico","Pode aguardar");
insert into tb_categorias(departamento, objeto, prioridade) values ("Quarto","Móvel","Necessário");

insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id) 
	values ("Sofá", "Grande", 1200.90, 1, 3);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id) 
	values ("Cama", "Solteiro", 600, 2, 5);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id) 
	values ("Jogo de Talheres", "Padrão", 130.90, 1, 1);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id) 
	values ("Tv", "55 polegadas", 1600, 1, 4);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id)  
	values ("Fogão", "4 bocas", 700.90, 1, 2);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id)  
	values ("Estante", "Grande", 500, 2, 4);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id)  
	values ("Geladeira", "Grande", 5000, 1, 2);
insert into tb_produtos(nome, tamanho, preco, quantidade, categorias_id) 
	values ("Pratos", "Todos tamanhos", 444.30, 1, 1);
    
select * from tb_produtos where preco > 500;

select * from tb_produtos where preco between 300 and 600;

select * from tb_produtos where nome like "%a%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id; 

select nome, preco, tb_categorias.objeto from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id; 

select nome, preco, tb_categorias.objeto from tb_produtos left join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select nome, preco, tb_categorias.objeto from tb_produtos rit join tb_categorias on tb_categorias.id = tb_produtos.categorias_id  