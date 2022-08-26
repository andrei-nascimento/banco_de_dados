CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    guerreiro varchar(255),
	novato boolean
);

CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(255),
    arma varchar(255),
    poder_ataque int,
    poder_defesa int,
    classe_id bigint,
    
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes(guerreiro, novato) VALUES("Espadachim", false);
INSERT INTO tb_classes(guerreiro, novato) VALUES("Espadachim", true);
INSERT INTO tb_classes(guerreiro, novato) VALUES("Arqueiro", false);
INSERT INTO tb_classes(guerreiro, novato) VALUES("Arqueiro", true);
INSERT INTO tb_classes(guerreiro, novato) VALUES("Mago", false);
INSERT INTO tb_classes(guerreiro, novato) VALUES("Mago", true);

INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Arme", "Cajado Mágico", 3500, 3000, 5);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Elesis", "Espada de Pégasus", 5000, 1500, 1);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Sieghart", "Espada Dupla", 4000, 2000, 2);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Lire", "Arco Divino", 3000, 1200, 3);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Mari", "Livro de Feitiços", 1500, 800, 6);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Ryan", "Machado Celestial", 3200, 1800, 1);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Ronan", "Espada de Ouro", 2700, 4000, 1);
INSERT INTO tb_personagens(nome, arma, poder_ataque, poder_defesa, classe_id) VALUES ("Dio", "Lâmina das Trevas", 4800, 2500, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%"; /*Não há personagens com a letra "C"*/

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id WHERE novato = false;
