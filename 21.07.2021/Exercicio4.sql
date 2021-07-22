create database db_delivery_pands;
use db_delivery_pands;

CREATE TABLE tb_categoria (
  id BIGINT(255) NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  ativo Boolean NOT NULL,
  PRIMARY KEY (id));

insert into tb_categoria (nome, ativo) values ("Marmitas",true);
insert into tb_categoria (nome, ativo) values ("Limpeza",true);
insert into tb_categoria (nome, ativo) values ("Alcoolicos",true);
insert into tb_categoria (nome, ativo) values ("Lanches",true);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Burguer Bacon Artesanal",26.00,30, "2021-11-09", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Burguer Quejão",28.00,30, "2021-09-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Detergente",6.00,30, null, 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Marmita de Bisteca",25.00,30, "2021-07-23", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Marmita de Fejuca",25.00,30, "2021-07-23", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orloff",12.00,30, "2025-09-13", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Catiaça",20.00,30, "2025-11-15", 3);

/* Troquei 50 por 25 */
select * from tb_produtos where preco >= 25;
/* troquei 30 por 20 */
select * from tb_produtos where preco between 6 and 20;

select * from tb_produtos where nome like "%c%";

Select tb_produtos.nome,tb_categoria.nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

Select tb_produtos.nome,tb_categoria.nome from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.nome = "Marmitas";



