create database db_comercio;
use db_comercio;
CREATE TABLE tb_produto (
  ID BIGINT(255) NOT NULL  AUTO_INCREMENT,
  Nome VARCHAR(255),
  Valor DECIMAL(8,2),
  Cor varchar(255),
  Tamanho varchar(5),
  Qtd Int,
  PRIMARY KEY (ID));
  
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Camiseta", 130.00, "Verde", "M", 5);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Camiseta", 130.00, "Azul", "G", 2);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Calça", 170.00, "Jean", "44", 1);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Calça Moletom", 70.00, "Azul", "44", 8);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Cueca", 10.00, "Preta", "M", 4);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Brinco", 170.00, "Diamante", Null, 2);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Bone", 100.00, "Vermelho", Null , 4);
insert into tb_produto(Nome, Valor, Cor, Tamanho, Qtd) values ("Conjunto Calça e Camisa", 240.00, "Cinza", "44", 3);

select * from tb_produto where Tamanho = "M";
select * from tb_produto where Cor = "Azul";

/* Troquei os valores 500 por 140.
*/
select * from tb_produto where Valor > "140";
select * from tb_produto where Valor < "140";

update tb_produto set Valor = 500 , Cor = "Swarovski" where id = 9;