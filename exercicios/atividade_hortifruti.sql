CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
    tamanho varchar(255),
    promocao boolean
);

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    nome varchar(255),
    quantidade int, 
    calorias decimal(7,2),
    preco decimal(7,2),
    categoria_id bigint,
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(tamanho, promocao) VALUES ("Pequeno", true);
INSERT INTO tb_categorias(tamanho, promocao) VALUES ("Pequeno", false);
INSERT INTO tb_categorias(tamanho, promocao) VALUES ("Médio", true);
INSERT INTO tb_categorias(tamanho, promocao) VALUES ("Médio", false);
INSERT INTO tb_categorias(tamanho, promocao) VALUES ("Grande", true);
INSERT INTO tb_categorias(tamanho, promocao) VALUES ("Grande", false);

INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Abacaxi", 12, 360.00, 15.90, 4);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Cenoura", 24, 25.00, 11.90, 6);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Melão Japonês", 20, 928.00, 32.90, 4);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Maçã Sekai-Ichi", 32, 121.80, 89.90, 3);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Abóbora Chinesa", 8, 100.00, 55.90, 6);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Chuchu Coreano", 45, 74.40, 22.90, 2);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Melancia Quadrada", 16, 3228.80, 89.90, 5);
INSERT INTO tb_produtos(nome, quantidade, calorias, preco, categoria_id) VALUES ("Alface de Nárnia", 20, 22.00, 4.90, 1);

UPDATE tb_produtos SET preco = 95.90 WHERE id = 8;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id WHERE promocao = true;







