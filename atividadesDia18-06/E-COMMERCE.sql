CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20),
preco DECIMAL(5,2),
marca VARCHAR(10),
cor VARCHAR(10),
quantidade_estoque BIGINT,
PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome, preco, marca, cor, quantidade_estoque ) VALUE ("camiseta", 30.99, "Tommy", "preta", 12);
INSERT INTO tb_produtos(nome, preco, marca, cor, quantidade_estoque ) VALUE ("corta vento", 600.80, "Nike", "preto", 10);
INSERT INTO tb_produtos(nome, preco, marca, cor, quantidade_estoque ) VALUE ("boné", 60.20, "Nike", "branco", 2);
INSERT INTO tb_produtos(nome, preco, marca, cor, quantidade_estoque ) VALUE ("camiseta", 90.99, "Tommy", "azul", 12);
INSERT INTO tb_produtos(nome, preco, marca, cor, quantidade_estoque ) VALUE ("camiseta", 170.90, "Lacoste", "branca", 1);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET nome = "bermuda" WHERE id = 2; 