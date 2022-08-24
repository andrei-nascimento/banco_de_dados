/*EXERCICIO RH DA EMPRESA*/

CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment primary key,
	nome varchar(50),
	data_nascimento date,
    cargo varchar(100),
    salario decimal(7,2) /*Serão sete números no total (contando com a vírgula) e dois números após a vírgula*/
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, data_nascimento, cargo, salario) VALUES ("Lívia Macedo", "1998-04-22", "Estagiária", 1100.75);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1914.52 WHERE id = 4;




