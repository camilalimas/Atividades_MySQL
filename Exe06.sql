CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    data_criacao DATE,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao, data_criacao) 
VALUES ('Medicamentos', 'Produtos para tratamento de doenças', '2023-10-01'),
('Suplementos', 'Produtos para suplementação alimentar e nutricional', '2023-10-02'),
('Cuidados Pessoais', 'Produtos para higiene e cuidados pessoais', '2023-10-03'),
('Dermocosméticos', 'Produtos para cuidados com a pele e beleza', '2023-10-04'),
('Infantil', 'Produtos destinados ao cuidado infantil.', '2023-10-05');

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, categoria_id) 
VALUES ('Paracetamol 500mg', 20.00, 100, 1),
('Vitamina C 1000mg', 25.00, 50, 2),
('Shampoo Anticaspa', 30.00, 30, 3),
('Protetor Solar FPS 50', 50.00, 20, 4),
('Fralda Descartável Tamanho M', 30.00, 60, 5),
('Ibuprofeno 200mg', 12.50, 80, 1),
('Ômega 3 1000mg', 55.00, 40, 2),
('Creme Hidratante Facial La Roche', 80.00, 25, 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_produtos.quantidade_estoque, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_produtos.quantidade_estoque, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Dermocosméticos';
