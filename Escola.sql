create database Escola;
use Escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    nota decimal(6,2),
    materia varchar(255) not null,
    serie int,
    primary key (id)
);

INSERT INTO tb_estudantes (nome,nota,materia,serie)values("Valeria", 7.4,"Portugues",8);
INSERT INTO tb_estudantes (nome,nota,materia,serie)values("Oswaldo", 8.5,"Portugues",8);
INSERT INTO tb_estudantes (nome,nota,materia,serie)values("Pedro", 4.5,"Geogragia",8);
INSERT INTO tb_estudantes (nome,nota,materia,serie)values("Valter", 5.5,"Quimica",8);
INSERT INTO tb_estudantes (nome,nota,materia,serie)values("Lucia", 6.3,"Biologia",8);
INSERT INTO tb_estudantes (nome,nota,materia,serie)values("MArcia", 5.6,"Redacao",8);
INSERT INTO tb_estudantes (nome,nota,materia,serie)values("Jonas", 6.8,"Fisica",8);

SELECT * FROM tb_estudantes;