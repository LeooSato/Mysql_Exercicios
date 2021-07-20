create database db_escolinha;
use db_escolinha;

CREATE TABLE tb_alunes (
  ID BIGINT(255) NOT NULL  AUTO_INCREMENT,
  Nome VARCHAR(255),
  Idade INT,
  Sexo VARCHAR(255),
  Nota int,
  PRIMARY KEY (ID));
  
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Leonardo","19","Masc",10);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Luis","15","Masc",7);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Maria","12","Fem",8);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Clara","15","Fem",6);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Kleber","22","Masc",9);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Marinho","19","Masc",2);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Marcos Guilherme","19","Masc",3);
insert into tb_alunes(Nome,Idade,Sexo,Nota) values ("Hamilton","23","Masc",1);

select * from tb_alunes where Nota >= 7;
select * from tb_alunes where Nota < 7;

update tb_alunes set Nota = 8 where ID = 4;
