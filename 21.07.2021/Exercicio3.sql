create database db_farmaciaDoBem;

use db_farmaciaDoBem;

create table tb_categoria(
id bigint auto_increment not null,
descricao varchar(255) not null, 
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Higiene Pessoal");
insert into tb_categoria (descricao, ativo) values ("Doces");
insert into tb_categoria (descricao, ativo) values ("Bebês");
insert into tb_categoria (descricao, ativo) values ("Medicamentos");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment not null,
nome varchar (255) not null,
marca varchar (255) not null,
tamanho varchar (255) not null,
quantidadeEstoque int,
preco double,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Dipirona", "Dorflex", "20 comprimidos", 50, 19.99, 4);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Shampoo", "Johnsons Baby", "500ml", 25, 24.99, 1);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Creme Assadura", "marca", "30g", 100, 19.99, 3);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Fralda", "Turma da Mônica", "60 unidades", 90, 19.99, 3);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Sabonete Liquido", "Rexona", "500ml", 10, 219.99, 1);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Bala", "Halls", "28g", 50, 2, 2);
insert into tb_produto (nome, marca, tamanho, quantidadeEstoque, preco, categoria_id) values ("Bala", "Mentos", "37g", 10, 8, 2);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "B%";

select tb_produto.nome from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Medicamentos";

