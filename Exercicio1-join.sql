CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255),
se_mexe BOOLEAN
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
peso DECIMAL(5,2),
altura DECIMAL(5,2),
ataque_base INT,
genero CHAR,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(categoria, se_mexe)
VALUES ("Mago",true),
("Lutador",true),
("Suporte",true),
("Tanque",true),
("Assassino",true),
("Atirador",true);

INSERT INTO tb_personagens(nome, peso, altura, ataque_base, genero, classe_id)
VALUES ("Ícaro", 20, 1.8, 1667, "M", 5),
("Ianna", 95, 1.95, 2025, "F", 2),
("Junior", 0, 9.14, 1925, "M", 1),
("Lairra", 58, 1.69, 1855, "F", 1),
("Jess", 75, 1.85, 2100, "F", 4),
("Bryan", 72, 1.93, 1855, "M", 6),
("Kate", 85, 1.67, 1785, "F", 3),
("Ste", 4, 0.23, 1925, "F", 3);

SELECT * FROM tb_personagens WHERE ataque_base > 2000;

SELECT * FROM tb_personagens WHERE LOWER(nome) LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id WHERE tb_classes.id = 3;