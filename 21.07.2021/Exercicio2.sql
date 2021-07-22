create database db_Pizzaria;

use db_Pizzaria;

create table tb_categoria(
id bigint auto_increment,
Tamanho varchar(32),
tipoSabor varchar(72),
Molho varchar(255),
primary key (id)
);

insert into tb_categoria (Tamanho, tipoSabor, Molho) values ("Média", "Salgada", "Tomate");
insert into tb_categoria (Tamanho, tipoSabor, Molho) values ("Brotinho", "Doce", "Sem Molho");
insert into tb_categoria (Tamanho, tipoSabor, Molho) values ("Brotinho", "Salgada", "Tomate");
insert into tb_categoria (Tamanho, tipoSabor, Molho) values ("Média", "Doce", "Tomate");
insert into tb_categoria (Tamanho, tipoSabor, Molho) values ("Média", "Salgada/Doce", "Sem Molho");

create table tb_pizza(
id bigint auto_increment,
Nome varchar(82),
Sabor varchar(92),
Preco decimal (5,2),
Cobertura varchar(42),
Azeitona varchar(255),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, sabor, preco, Cobertura, azeitona, categoria_id) values ("Portuguesa", "Presunto, ovo, cebola e mussarela", 34.90, "Catupiry", "Tomate", 1); 

insert into tb_pizza (nome, sabor, preco, Cobertura, azeitona, categoria_id) values ("Caipira", "Frango, catupiry, milho e bacon", 37.00, "Cheddar", "Tomate", 3);  

insert into tb_pizza (nome, sabor, preco, Cobertura, azeitona, categoria_id) values ("Calabresa com Mussarela", "Mussarela e Calabresa", 32.00, "Catupiry", "Tomate", 1); 

insert into tb_pizza (nome, sabor, preco, Cobertura, azeitona, categoria_id) values ("Carne de seca", "Carne de sol", 42.90, "Catupiry", "Tomate", 1); 

insert into tb_pizza (nome, sabor, preco, Cobertura, azeitona, categoria_id) values ("Quatro Queijos", "Mussarela, provolonee gorgonzola", 38.90, "Catupiry ", "Tomate", 1);

insert into tb_pizza (nome, sabor, preco, Cobertura, azeitona, categoria_id) values ("Banana Doce", "Banana fatiada, leite condensado", 47.00, "Chocolate", "Sem Molho", 4);  

select * from tb_pizza where preco > 38.00;
 
select * from tb_pizza where preco between 29.00 and 60.00;
 
select * from tb_pizza where nome like "c%";
 
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tipoSabor = "Doce";
 
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;