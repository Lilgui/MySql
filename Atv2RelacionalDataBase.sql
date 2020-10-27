create database db_ecommerce;

use db_ecommerce;

create table tb_categorias(
	id bigint auto_increment,
    categoria varchar(30) not null,
	setor varchar(20),
    promo varchar(30),
    
    primary key(id)

);

create table tb_produtos(
	id bigint auto_increment,
    marca varchar(20),
    nome varchar(30) not null,
	preco decimal(10,2),
	estoque int,
    categorias_id bigint,
    
    primary key(id),
    foreign key(categorias_id) references tb_categorias(id)
);

insert into tb_categorias (categoria, setor, promo) values ("Camisetas","Feminino","compre 1 leve 2");
insert into tb_categorias (categoria, setor, promo) values ("Camisetas","Masculino","compre 1 leve 2");
insert into tb_categorias (categoria, setor, promo) values ("Calças","Feminino","30% de desconto");
insert into tb_categorias (categoria, setor, promo) values ("Tênis","Masculino","15% no segundo par");
insert into tb_categorias (categoria, setor, promo) values ("Roupas","Infantil","tudo por 40% de desconto");

insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Nike", "Dri-fit", 79.90, 300, 1);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Nike", "Champion", 89.90, 170, 3);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Nike", "Victory", 59.90, 200, 5);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Nike", "Dri-fit", 79.90, 60, 2);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Adidas", "Busenitz", 379.90, 90, 4);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Adidas", "Disney soccer", 99.90, 77, 1);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Adidas", "Trefoil", 119.90, 33, 3);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Adidas", "Sushi", 69.90, 39, 5);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Puma", "Neyney", 129.90, 46, 2);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Puma", "Neyfut", 299.90, 100, 4);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Puma", "Origin", 89.90, 50, 1);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("Puma", "New", 119.90, 17, 3);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("UnderArmour", "Curry", 59.90, 29, 5);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("UnderArmour", "Brady one", 59.90, 84, 2);
insert into tb_produtos (marca, nome, preco, estoque, categorias_id) values ("UnderArmour", "Curry 4", 339.90, 91, 4);

select * from tb_produtos;

select * from tb_produtos where preco > 100;

select * from tb_produtos where preco between 50 and 100;

select * from tb_produtos where nome like "%e%"