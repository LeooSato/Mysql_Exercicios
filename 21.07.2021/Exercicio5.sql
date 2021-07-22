create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
create table tb_categoria(
id bigint auto_increment,
Nome varchar(255) not null, 
Ativo boolean not null,
primary key (id)
);
  
insert into tb_categoria (Nome, Ativo) values ("Hidráulica", true);
insert into tb_categoria (Nome, Ativo) values ("Elétrica", true);
insert into tb_categoria (Nome, Ativo) values ("Decoração", true);
insert into tb_categoria (Nome, Ativo) values ("Marmoaria", true);
  CREATE TABLE tb_produtos (
  id INT NOT NULL AUTO_INCREMENT,
  Produtos VARCHAR(45)NOT NULL,
  valor DECIMAL(7,2) NOT NULL,
  peso VARCHAR(255),
quantidade int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
insert into tb_produtos (Produtos,valor,peso,quantidade,categoria_id) values ("Pedra de Marmore",70.00,25.00,3,4);
insert into tb_produtos (Produtos,valor,peso,quantidade,categoria_id) values ("Gesso",30.00,25.00,15,3);
insert into tb_produtos (Produtos,valor,peso,quantidade,categoria_id) values ("Lampadas",15.00,0.30,2,4);
insert into tb_produtos (Produtos,valor,peso,quantidade,categoria_id) values ("Cano PVC",10.00,1.00,15,1);
insert into tb_produtos (Produtos,valor,peso,quantidade,categoria_id) values ("Cotovelo PVC",7.00,0.20,25,1);
insert into tb_produtos (Produtos,valor,peso,quantidade,categoria_id) values ("Cabo cobre",12.00,0.70,200,2);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where Produtos like "C%";

select tb_produtos.Produtos, tb_produtos.valor, tb_categoria.Nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.Produtos, tb_produtos.valor, tb_categoria.Nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id and tb_categoria.Nome = "Marmoaria";

update tb_produtos set  categoria_id = 2 where id = 3;
