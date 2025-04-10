CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id BIGINT NOT NULL,
    ingredientes VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Vegetariana', 'Pizzas feitas com ingredientes frescos e sem carne'),
('Carnes', 'Pizzas com variedades de carnes'),
('Especialidades', 'Pizzas com receitas exclusivas da casa'),
('Frutos do Mar', 'Pizzas com ingredientes do mar'),
('Doces', 'Pizzas com coberturas doces para sobremesa');

INSERT INTO tb_pizzas (nome, preco, categoria_id, ingredientes) 
VALUES('Margherita', 45.00, 1, 'Molho de tomate, tomate, mussarela, manjericão'),
('Pepperoni', 55.00, 2, 'Molho de tomate, mussarela, pepperoni'),
('Quatro Queijos', 60.00, 1, 'Mussarela, gorgonzola, parmesão, provolone'),
('Frango com Catupiry', 60.00, 2, 'Molho de tomate, frango, mussarela, milho, catupiry'),
('Camarão', 75.00, 4, 'Molho de tomate, mussarela, camarão, alho'),
('Peruana', 70.00, 3, 'Molho de tomate, mussarela, atum, palmito, cebola roxa'),
('Chocolate', 50.00, 5, 'Chocolate ao leite, granulado'),
('Banana com Canela', 45.00, 5, 'Banana, açúcar, canela, leite condensado');

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_pizzas.ingredientes, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, tb_pizzas.preco, tb_pizzas.ingredientes, tb_categorias.nome_categoria,tb_categorias.descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Doces';












