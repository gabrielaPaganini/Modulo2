CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    idade INT(1),
    cpf VARCHAR(2) NOT NULL,
    salario DECIMAL(10,2),
    cargo VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios(nome, idade, cpf, salario, cargo) VALUE("edleusa", 20, 9878, 2800, "desenvolvedora");
INSERT INTO tb_funcionarios(nome, idade, cpf, salario, cargo) VALUE("cleusa", 30, 9873, 2800, "desenvolvedora");
INSERT INTO tb_funcionarios(nome, idade, cpf, salario, cargo) VALUE("joao", 23, 9643, 9000, "PO");
INSERT INTO tb_funcionarios(nome, idade, cpf, salario, cargo) VALUE("pedrinho", 21, 3478, 2800, "desenvolvedora");
INSERT INTO tb_funcionarios(nome, idade, cpf, salario, cargo) VALUE("fernanda", 29, 2178, 900, "estagiario");

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET nome = "joca" WHERE id = 2;

SELECT * FROM tb_funcionarios;