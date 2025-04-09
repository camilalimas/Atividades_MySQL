CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
serie VARCHAR(10) NOT NULL,
turma CHAR NOT NULL,
nome_responsavel VARCHAR(255) NOT NULL,
telefone_responsavel BIGINT(20) NOT NULL,
PRIMARY KEY(id)
);

ALTER TABLE tb_estudantes ADD nota DECIMAL(4,2);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, serie, turma, nome_responsavel, telefone_responsavel, nota)
VALUES ("João da Silva", "3ª", "A", "Maria da Silva (mãe)", 987654321, 7.5),
("Thiago Oliveira", "1ª", "B", "Benedita Oliveira (tia)", 978653412, 9.0),
("Catharina Martins", "9ª", "D", "Fabio Martins (pai)", 952689514, 4.5),
("Camila Sousa", "3ª", "A", "Fatima Sousa (avó)", 938746991, 6.0),
("José Diógenes Jr", "9ª", "C", "José Diógenes (pai)", 900937167, 8.0),
("Miguel Lemos", "2ª", "A", "Maria de Fátima (mãe)", 9839047121, 9.5),
("Manoel da Silva", "8ª", "A", "João Manoel (pai)", 944417652, 2.5),
("Lucas Gutierrez", "7ª", "C", "Monica Gutierrez (tia)", 966337821, 7.0);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 3.5 WHERE id = 7;

SELECT * FROM tb_estudantes;








