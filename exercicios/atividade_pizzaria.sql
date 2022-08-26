CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint, 
    
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_pizzas;

INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Salgada", "Brotinho", true);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Salgada", "Brotinho", false);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Salgada", "Média", true);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Salgada", "Média", false);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Salgada", "Grande", true);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Salgada", "Grande", false);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Doce", "Brotinho", true);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Doce", "Grande", true);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Vegetariana", "Brotinho", true);
INSERT INTO tb_categoria(descricao, tamanho, borda_recheada) VALUES ("Vegana", "Brotinho", false);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES ("Frango C/ Catupiry", 40.59, "Tradicional", 5, 1);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES ("Mussarela", 30.00, "Tradicional", 5, 2);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES ("Prestígio", 50.99, "Tradicional", 2, 8);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES ("Lombo C/ Catupiry", 60.99, "Tradicional", 3, 6);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES ("Brócolis C/ Alho", 40.00, "Tradicional", 4, 9);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES ("Calabresa", 45.99, "Tradicional", 5, 1);

/*Estrutura de uma consulta : SELECT - CONDIÇÃO - ORDENAÇÃO*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY sabor ASC; /*Colocamos na ordem crescente referente a coluna sabor*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC; /*Colocamos na ordem decrescente referente a coluna preco*/ 

/*Retorna todas as pizzas cuja o valor é maior que 50 e menor que 100*/
SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00; /*Opção 1*/
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100; /*Opção 2*/

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%"; /*Verifica se tem algum sabor da tabela que CONTÉM a letra M */
SELECT * FROM tb_pizzas WHERE sabor LIKE "m%"; /*Verifica se tem algum sabor da tabela que COMEÇA com a letra M */
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m"; /*Verifica se tem algum sabor da tabela que TERMINA com a letra M */

/*Junta as tabelas pelo id*/
SELECT * FROM tb_pizzas INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizzas.categoria_id;

/*Junta as tabelas pelo id e mostra apenas as pizzas com descrição Doce*/
SELECT * FROM tb_pizzas INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizzas.categoria_id WHERE descricao = "Doce";



