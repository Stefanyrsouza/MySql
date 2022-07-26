CREATE DATABASE db_labrabaatelie;

USE db_labrabaatelie;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
quantidade INT,
cor VARCHAR(255),
valor DECIMAL(8,2),
tamanho CHAR,
categoria_id BIGINT,

PRIMARY KEY(id),
FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(categoria)VALUES("Produtos de Beleza"),("Velas"),("Coxinhas");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto,quantidade,cor,valor,tamanho,categoria_id)VALUES("Coxinha de Jaca",10,"Dourada",15,"G",3);

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id WHERE tb_categorias.id=3;
