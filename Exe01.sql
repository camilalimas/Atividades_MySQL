CREATE DATABASE db_rh_empresa;

USE db_rh_empresa;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(30) NOT NULL,
salario DECIMAL(6,2) NOT NULL,
numero_registro INT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, numero_registro)
VALUES ("Camila Lima", "Desenvolvedora Java", 5500, 6754),
 ("Frederico Alvarenga", "Jovem Aprendiz", 1500, 9834),
 ("Diego Rodrigues", "Auxiliar administrativo", 2500, 3809),
 ("Luisa Garcia", "Gerente de Marketing", 9500.50, 2019),
 ("Mariana Borges", "Estagiária", 1100.80, 9991);
 
 SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3000 WHERE id = 3;

SELECT * FROM tb_colaboradores;
