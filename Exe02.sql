CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
marca VARCHAR(30) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tamanho VARCHAR(10) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("tênis", "nike", 550.99, "40");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("camiseta", "nike", 100.00, "P");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("calça", "adidas", 400.00, "M");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("mala", "samsonite", 900.00, "M");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("casaco de inverno", "patagonia", 1100.00, "G");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("mala", "rimowa", 3100.00, "P");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("tênis", "adidas", 350.50, "38");
INSERT INTO tb_produtos(tipo, marca, preco, tamanho)
VALUES ("casaco de inverno", "columbia", 1500.99, "P");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
 
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET marca = "vans" WHERE id = 7;

SELECT * FROM tb_produtos;




