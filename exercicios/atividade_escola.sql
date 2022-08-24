/*Exemplo de comentário*/

/*EXERCICIO ESCOLA*/

/*Comando de criação de banco de dados*/
CREATE DATABASE db_escola_generation;

/*Seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes(
	/*O sistema incrementa automaticamente o id do usuario na sequência em coluna. Tendo um espaço inteiro vasto (bigint)*/
    id bigint auto_increment primary key,
    nome varchar(255), /*Igual o String (precisa de aspas). O número é o limite de caracteres que pode inserir na coluna de nome*/
    data_nascimento date, /*Aceita a data no formato ano-mês-dia (em aspas)*/
    turma int, /*Aceita números inteiros*/
    nota decimal(4,2) /*Quatro números no total com dois números depois da vírgula*/
);

/*Retorna todos os resultados da tabela de alunes (Serve apenas para consulta)*/
SELECT * FROM tb_alunes;

/*Insere dados na tabela (8 registros). Não é preciso inserir o id pois já está gerando automaticamente*/
INSERT INTO tb_alunes(nome, data_nascimento, turma, nota) VALUES("Larissa Santos", "1998-03-19", 57, 6.0);

/*Seleciona todos os dados da tabela de alunes ONDE a nota for maior que 7. Acrescento um filtro se matrícula está ativa ou não*/
SELECT * FROM tb_alunes WHERE nota > 7; /*AND matricula = false*/

/*Seleciona todos os dados da tabela de alunes ONDE a nota for menor que 7. Limita os dados da tabela até 5 resultados*/
SELECT * FROM tb_alunes WHERE nota < 7; /*LIMIT 5*/

/*Usamos para atualizar determinado dato na tabela. Update e Delete são feitos pelo id*/
UPDATE tb_alunes SET nota = 7 WHERE id=3;


/*Desativa o modo protegido do MySQL:
SET SQL_SAFE_UPDATES = 0;*/


