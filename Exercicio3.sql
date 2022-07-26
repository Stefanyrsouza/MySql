CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(255),
turma INT,
idade INT,
nota DECIMAL(10,2),
aprovado BOOLEAN
);

SELECT * FROM tb_estudantes;

ALTER TABLE tb_estudantes
MODIFY COLUMN nota DECIMAL (4,2);

INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Ícaro Yan",4,10,9.5,true);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Elisa santos",8,13,5,false);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Ianna Valentina",2,8,9,true);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Jessica Bens",9,14,7.5,true);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Joana",6,11,10,true);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Bento",7,12,2,false);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Arlindo",5,10,5,false);
INSERT INTO tb_estudantes(nome_aluno,turma,idade,nota,aprovado)VALUES("Ana",3,8,10,true);

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;