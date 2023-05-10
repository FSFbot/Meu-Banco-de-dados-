create database Human_Research;
use Human_Research;
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal(6,2),
    setor int not null,
    pagamento date,
    primary key (id)
);
alter table tb_funcionarios modify pagamento varchar(100);
insert into tb_funcionarios(nome,salario,setor,pagamento)value("Djalminha", 2500, 1, "25/03/20005");
insert into tb_funcionarios(nome,salario,setor,pagamento)value("Agenor", 2000, 1, "11/11/2006");
insert into tb_funcionarios(nome,salario,setor,pagamento)value("Alirio", 2900, 2, "03/02/2007");
insert into tb_funcionarios(nome,salario,setor,pagamento)value("Sandra", 5000, 3, "10/07/2002");
insert into tb_funcionarios(nome,salario,setor,pagamento)value("Djanira", 3200, 3, "17/03/2003");

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;


create database e_commerce;
use e_commerce;
create table tb_produtos(
	id bigint auto_increment,
    produto varchar(255) not null,
    valor decimal(6,2),
    marca varchar(255) not null,
    cor varchar(255),
    primary key (id)
);

insert into tb_produtos(produto,valor,marca,cor)value("bola de futebol",120.00, "Nike", "Branca");
insert into tb_produtos(produto,valor,marca,cor)value("Saco de Pancada",170.00, "Tapout", "Preto");
insert into tb_produtos(produto,valor,marca,cor)value("Tenis Wave 12",1200.00, "Mizuno", "Rosa");
insert into tb_produtos(produto,valor,marca,cor)value("Camisa",800.00, "Lacoste", "Vermelha");
insert into tb_produtos(produto,valor,marca,cor)value("chuteira de futsal", 220.00,"Adidas", "Preta e Verde");
insert into tb_produtos(produto,valor,marca,cor)value("Bola de volley", 70.00, "Wilson", "Amarela e Azul");
insert into tb_produtos(produto,valor,marca,cor)value("Relogio", 1550.00, "Apple", "Preto");
insert into tb_produtos(produto,valor,marca,cor)value("Meia", 35.00, "Puma", "Branca");

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;



