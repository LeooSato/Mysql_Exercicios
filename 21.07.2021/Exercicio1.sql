create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classe (
  ID BIGINT(255) AUTO_INCREMENT NOT NULL,
  Classe_Nome VARCHAR(55) NOT NULL,
  Classe_Dano INT(3) NOT NULL,
  Classe_Vida INT(3) NOT NULL,
  Classe_Percento_Crit INT(3) NOT NULL,
  Classe_Dano_Crit Int(3) NOT NULL,
  PRIMARY KEY (ID));
  /*
  O porque do Rosto, Roupa e cabelo ser int, é para não digitar como o cabelo é, como se já estivem pre definidos no "jogo" como "ID's"
  */
CREATE TABLE tb_personagem(
	ID_Personagem BIGINT(255) AUTO_INCREMENT NOT NULL,
    Nome_Personagem VARCHAR(255) NOT NULL,
    Lvl_Personagem int(2) NOT NULL,
    Altura_Personagem int(3) NOT NULL,
    Cabelo_Personagem int(1) NOT NULL,
    Rosto_Personagem int(1) NOT NULL,
    Roupa_Personagem int(1) NOT NULL,
    Sexo_Personagem varchar(255) NOT NULL,
    Raça_Personagem varchar(255) NOT NULL,
    classe_ID BIGINT(255) NOT NULL,
    
PRIMARY KEY (ID_Personagem),
FOREIGN KEY (classe_ID) REFERENCES tb_classe (ID));

insert into tb_classe(Classe_Nome,Classe_Dano,Classe_Vida,Classe_Percento_Crit,Classe_Dano_Crit) values ("Guerreiro",150,70,34,200);
insert into tb_classe(Classe_Nome,Classe_Dano,Classe_Vida,Classe_Percento_Crit,Classe_Dano_Crit) values ("Tanque",50,320,10,150);
insert into tb_classe(Classe_Nome,Classe_Dano,Classe_Vida,Classe_Percento_Crit,Classe_Dano_Crit) values ("Assassino",300,35,60,300);
insert into tb_classe(Classe_Nome,Classe_Dano,Classe_Vida,Classe_Percento_Crit,Classe_Dano_Crit) values ("Mago",200,80,30,200);
insert into tb_classe(Classe_Nome,Classe_Dano,Classe_Vida,Classe_Percento_Crit,Classe_Dano_Crit) values ("Lutador",400,60,15,350);

insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Leonardo",99,180,2,2,4,"Masculino","Calaveiro",5);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Marie",55,150,5,5,3,"Feminino","Elfo",4);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Larua",34,120,3,1,3,"Feminino","Nordico",3);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Marco",24,170,1,5,3,"Masculino","Bardo",5);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Aronque",99,160,1,4,5,"Masculino","Bardo",1);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Lulu",35,120,1,2,5,"Feminino","Elfo Anão",4);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Karthus",99,200,3,3,0,"Masculino","Demonio",4);
insert into tb_personagem(Nome_Personagem,Lvl_Personagem,Altura_Personagem,Cabelo_Personagem,Rosto_Personagem,Roupa_Personagem,Sexo_Personagem,Raça_Personagem,classe_ID) values("Jhon",22,130,4,5,4,"Masculino","Angelical",3);


/* Dano trocado de 2000 para 200*/
select * from tb_personagem inner join tb_classe on tb_classe.ID = tb_personagem.classe_ID where tb_classe.Classe_Dano > 200 ;
/* Dano trocado de 100 para 70*/
select * from tb_personagem inner join tb_classe on tb_classe.ID = tb_personagem.classe_ID where tb_classe.Classe_Vida between 70 and 200;
select * from tb_personagem inner join tb_classe on tb_classe.ID = tb_personagem.classe_ID where tb_classe.Classe_Vida between 70 and 200;

select * from tb_personagem inner join tb_classe on tb_classe.ID = tb_personagem.classe_ID where tb_personagem.Nome_Personagem like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.ID = tb_personagem.classe_ID;

select * from tb_personagem inner join tb_classe on tb_classe.ID = tb_personagem.classe_ID where tb_classe.ID = 3;