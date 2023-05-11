USE onlinegame;

CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT,
	funcao varchar(255),
	server int,
	PRIMARY key(id)
);

CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT,
	nome varchar(255),
	classe varchar(255),
	ataque int,
	defesa int,
	inte int,
	classe_id bigint, 
	PRIMARY key(id),
	CONSTRAINT fk_classe foreign key(classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (funcao,server) values("Arqueiro", 1);
INSERT INTO tb_classes (funcao,server) values("Cavaleiro",1);
INSERT INTO tb_classes (funcao,server) values("Mago", 1);
INSERT INTO tb_classes (funcao,server) values("Arcano", 1);
INSERT INTO tb_classes (funcao,server) values("Guardiao", 1);

INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Legolas","Arqueiro",20,10,35,1);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Aragorn","Cavaleiro",42,30,15,2);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Saruman","Mago",10,10,70,3);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Sauron","Arcano",20,25,60,4);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Majors","Guardiao",30,70,10,5);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Kitanah","Mago",15,20,68,1);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("TankGorila","guardiao",33,85,12,5);
INSERT INTO tb_personagens (nome,classe,ataque,defesa,inte,classe_id) values("Kanoh","Cavaleiro",100,100,70,2);

SELECT * FROM tb_personagens WHERE ataque > 50;

SELECT * from tb_personagens WHERE defesa BETWEEN 30 AND 70;

SELECT * FROM tb_personagens WHERE nome LIKE "K%"
;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tb_classes.funcao = "Cavaleiro";
