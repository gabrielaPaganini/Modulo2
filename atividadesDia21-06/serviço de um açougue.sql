CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
animal VARCHAR(20),
distribuidor VARCHAR (20),
ativo BOOLEAN,
PRIMARY KEY (id_categoria)
);
INSERT INTO tb_categoria(animal, distribuidor, ativo)
VALUES('boi', 'rei do gado', true),
	  ('peixe', 'dead fish', true),
      ('porco', 'peppapig store', true),
      ('carneiro', 'show carneiro', true),
      ('frango', ' avestore', true);

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
peca VARCHAR(20),
kg INT,
marca VARCHAR(20),
valor FLOAT,
categoria_id BIGINT NOT NULL,

PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produto(peca, kg, marca, valor, categoria_id)
VALUES ('coxao mole', 1, 'seara', 28.0, 1),
	   ('linguado', 1, 'fisher', 47.9, 2),
       ('bacalhau', 1, 'fesher', 70.0, 2),
       ('bisteca', 3, 'meat', 70.9, 3),
       ('sobrecoxa', 1, 'perdigao', 20.0, 5);

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor > 3 OR valor < 60;
SELECT * FROM tb_produto WHERE peca LIKE  'c%';

SELECT peca, animal, marca, kg, valor FROM tb_produto
 INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_produto.categoria_id WHERE animal = 'peixe';