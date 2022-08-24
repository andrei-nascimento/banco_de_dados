/*EXERCICIO E-COMMERCE*/

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    marca varchar(100),
    nome_produto varchar(250),
	categoria varchar(50),
    preco decimal(6,2) /*São cinco números no total (contando com a vírgula), tendo duas casas após a vírgula*/
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(marca, nome_produto, categoria, preco) VALUES ("KiChute", "Chuteira Society E88", "Chuteiras", 110.00); 

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 120.00 WHERE id = 8;


