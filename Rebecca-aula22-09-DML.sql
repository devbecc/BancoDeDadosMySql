CREATE DATABASE db_deletar; 

USE  db_deletar;


CREATE TABLE consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);


INSERT INTO consumidores (nome) VALUES 
("Marcelo"),
("Julia");



SELECT 
    *
FROM
    consumidores;


DELETE FROM consumidores 
WHERE
    id = 1; 