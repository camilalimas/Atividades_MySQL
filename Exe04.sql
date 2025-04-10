CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_jogo VARCHAR(255) NOT NULL,
tipo_jogo VARCHAR(255) NOT NULL,
dificuldade VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_classes (nome_jogo, tipo_jogo, dificuldade)
VALUES ("League of Legends", "Battle Arena (BA)", "Média"),
("World of Warcraft", "Role-Playing Game (RPG)", "Variável"),
("Fortnite", "Battle Royale (BR)", "Média"),
("Counter-Strike", "First-Person Shooter (FPS)", "Média a Difícil"),
("Minecraft", "Sandbox/Survival", "Fácil a Média");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome_personagem VARCHAR(255),
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
nucleo VARCHAR(255) NOT NULL,
classe_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes (id) 
);

SELECT * FROM tb_personagens;

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, nucleo, classe_id)
VALUES ("Ahri", 3500, 1500, "Ionia", 1),
("Garen", 4000, 4500, "Demacia", 1),
("Jaina Proudmoore", 4500, 2000, "Aliança", 2),
("Thrall", 3000, 3500, "Horda", 2),
("Jonesy", 3000, 2500, "Não aplicável", 3),
("Terrorista", 3500, 1000, "Terroristas", 4),
("Counter-Terrorista", 3500, 1000, "Contra-Terroristas", 4),
("Steve", 2500, 3000, "Não aplicável", 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT tb_personagens.nome_personagem, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_personagens.nucleo, tb_classes.nome_jogo, tb_classes.tipo_jogo, tb_classes.dificuldade
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.nome_personagem, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_personagens.nucleo, tb_classes.nome_jogo, tb_classes.tipo_jogo, tb_classes.dificuldade
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_jogo = "League of Legends";


