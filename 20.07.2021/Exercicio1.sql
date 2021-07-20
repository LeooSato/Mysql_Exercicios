create database db_empregadora;
use db_empregadora;

CREATE TABLE tb_funcionaries (
  ID BIGINT(255) NOT NULL  AUTO_INCREMENT,
  Nome VARCHAR(255),
  Idade INT,
  Salario DECIMAL(8,2),
  Sexo VARCHAR(255),
  Num_telefone BIGINT(255),
  PRIMARY KEY (ID));
  
insert into tb_funcionaries(Nome,Idade,Salario,Sexo,Num_telefone) values ("Batista", 27, 2400, "Mas", 11111111111);
insert into tb_funcionaries(Nome,Idade,Salario,Sexo,Num_telefone) values ("Luka", 20, 1400, "Mas", 11222222222);
insert into tb_funcionaries(Nome,Idade,Salario,Sexo,Num_telefone) values ("Modric", 33, 4400, "Mas", 11333333333);
insert into tb_funcionaries(Nome,Idade,Salario,Sexo,Num_telefone) values ("Claudia", 19, 1200, "Fem", 11444444444);

select * from tb_funcionaries where Salario > 2000;

select * from tb_funcionaries where Salario < 2000;

update tb_funcionaries set Salario = 1300 where id = 2;





  