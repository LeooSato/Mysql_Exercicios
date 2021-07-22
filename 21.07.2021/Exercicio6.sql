create database db_curso;
use db_curso;
create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (nome, ativo) values ("Javascript", true);
insert into tb_categoria (nome, ativo) values ("Java", true);
insert into tb_categoria (nome, ativo) values ("Python", true);
insert into tb_categoria (nome, ativo) values ("Ruby", true);
insert into tb_categoria (nome, ativo) values ("C++", true);

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
preco decimal(6,2) not null,
qthoras int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, preco, qthoras, categoria_id) values ("Curso de Python 3 ", 189.00, 110, 3);
insert into tb_curso (curso, preco, qthoras, categoria_id) values ("Java em AWS", 69.90, 10, 2);
insert into tb_curso (curso, preco, qthoras, categoria_id) values ("Javascript", 35.00, 44, 1);
insert into tb_curso (curso, preco, qthoras, categoria_id) values ("C++", 249.90, 24,5);
insert into tb_curso (curso, preco, qthoras, categoria_id) values ("SpringBoot", 29.00, 98, 2);
insert into tb_curso (curso, preco, qthoras, categoria_id) values ("Ruby on Rails", 249.90, 48, 4);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where produto like "%j%";

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id and tb_categoria.descricao = "Java";
