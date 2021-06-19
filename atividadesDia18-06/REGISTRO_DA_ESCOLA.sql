CREATE DATABASE db_registro_escola;
USE db_registro_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20),
nota DECIMAL(2,1),
turma VARCHAR(5),
telefone VARCHAR(10),
endereco VARCHAR(20),
PRIMARY KEY(id)
);
INSERT tb_estudantes(nome, nota, turma, telefone, endereco) VALUE ("vitoria", 8.7, "8º A", "99998888", "********");
INSERT tb_estudantes(nome, nota, turma, telefone, endereco) VALUE ("regina",6.0, "8ºA", "77776666", "rua Indiana Jones");
INSERT tb_estudantes(nome, nota, turma, telefone, endereco) VALUE ("carmem", 9.2, "8º A", "9999654", "canoinhas");
INSERT tb_estudantes(nome, nota, turma, telefone, endereco) VALUE ("carola", 4.9, "8º A", "55558888", "esmeralda");
INSERT tb_estudantes(nome, nota, turma, telefone, endereco) VALUE ("marina", 9.9, "8º A", "33858888", "pequeno principe");

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7.0 WHERE id = 2;
