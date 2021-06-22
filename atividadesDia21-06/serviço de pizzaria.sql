CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT,
modo_pagamento VARCHAR(20),
tempo_entrega VARCHAR(20),
endereco VARCHAR(100),
PRIMARY KEY(id_categoria)
);
INSERT INTO tb_categoria(modo_pagamento, tempo_entrega, endereco)
VALUES('dinheiro', '1:00:00','rua canoinhas'),
	  ('cartao de debito', '00:40:00','rua das esmeraldas'),
      ('credito', '00:20:00','rua cacador'),
      ('credito', '1:00:00','rua percador'),
      ('dinheiro', '1:00:00','rua nomidel');
      
CREATE TABLE tb_pizza(
id_pizza INT NOT NULL AUTO_INCREMENT,
sabor VARCHAR(20),
tamanho VARCHAR(20),
borda_recheada VARCHAR(20),
obs VARCHAR (200),
valor FLOAT,
fk_id_categoria INT,
PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_id_categoria) REFERENCES tb_categoria(id_categoria)
);      
INSERT INTO tb_pizza(sabor, tamanho, borda_recheada, obs, valor)
VALUE('calabresa', 'grande', 'catupiry', 'sem cebola', 40.80 ),
	 ('portuguesa', 'big', 'nao', 'bem acebolada', 42.80 ),
     ('moda da casa', 'gigante', 'chocolate', 'sem azeitona', 48.80 ),
     ('marguerita', 'grande', 'nao', 'enviar saches de maionese', 40.80 ),
     ('quatro queijo', 'big', 'catupiry', '', 42.80 );
     
SELECT 	sabor, tamanho, valor FROM tb_pizza WHERE valor > 45 ;
SELECT 	sabor, tamanho, valor FROM tb_pizza WHERE valor > 29 OR valor <60 ;
SELECT sabor FROM tb_pizza WHERE sabor LIKE 'C%';

SELECT * FROM tb_categoria
INNER JOIN tb_pizza on tb_categoria.id_categoria = tb_pizza.id_pizza;

SELECT * FROM tb_categoria
INNER JOIN tb_pizza on tb_categoria.id_categoria = tb_pizza.id_pizza WHERE modo_pagamento = 'credito';

