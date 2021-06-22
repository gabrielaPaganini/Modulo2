CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classe(
id_classe INT AUTO_INCREMENT,
classe VARCHAR(20),
origem VARCHAR(20),
arma VARCHAR (20),
PRIMARY KEY(id_classe)
);
INSERT INTO tb_classe(classe, origem, arma)
VALUES('soldado', 'grimmfield', 'espada'),
	('atirador', 'grimord', 'arco e flecha'),
	('mago', 'grimmfield', 'cajado magico'),
	('tank', 'mysticcon', 'aneis magicos'),
	('soldado', 'firefight', 'espirito');
    
CREATE TABLE tb_personagem(
id_personagem INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20),
nivel INT,
habilidade VARCHAR(20),
defesa INT,
ataque INT,
fk_id_classe INT,
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_id_classe) REFERENCES tb_classe(id_classe)
);      
    
    INSERT INTO tb_personagem(nome, nivel, habilidade, defesa, ataque)
VALUE('alucard', 30, 'regenerar', 1800, 2700),
	('myia', 28, 'invisibilidade', 800, 3000),
	('odette', 27, 'stum', 600, 3200),
	('uranus', 30, 'regenerar HP', 6000, 200),
	('dyrrot', 29, 'avancar', 1900, 3000);
    
    SELECT 	nome, defesa, ataque  FROM tb_personagem WHERE ataque > 2000 ;
    SELECT  nome, defesa, ataque FROM tb_personagem WHERE defesa > 1000 OR defesa < 2000 ;
SELECT nome FROM tb_personagem WHERE nome LIKE 'C%';

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_classe.id_classe = tb_personagem.id_personagem;

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_classe.id_classe = tb_personagem.id_personagem WHERE classe = 'soldado';
