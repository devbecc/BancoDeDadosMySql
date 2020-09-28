CREATE DATABASE IF NOT EXISTS db_cursoDaMinhaVida;
USE  db_cursoDaMinhaVida;

CREATE TABLE IF NOT EXISTS tb_produto (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(35),
    preco_produto FLOAT(5 , 2 ),
    duracao_curso Varchar (65),
    PRIMARY KEY (id_produto)
);

 
	
 INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,duracao_curso)
VALUES (null,'Informática ','50.03','4 semanas');


 INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,duracao_curso)
VALUES (null,'Manicure ','30.03','1 semana');


 INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,duracao_curso)
VALUES (null,'Gastronomia ','39.00','5 semanas');

 INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,duracao_curso)
VALUES (null,'Generation ','0.00','12 semanas');

 INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,duracao_curso)
VALUES (null,'Excel ','40.03','4 semanas');

 INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,duracao_curso)
VALUES (null,'Java ','80.03','8 semanas');



select*
from tb_produto;


CREATE TABLE IF NOT EXISTS tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    categoria_produto ENUM('Inciante','Médio','Avançado'),
    PRIMARY KEY (id_categoria),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria)
        REFERENCES tb_produto (id_produto)
);



INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('5','Inciante');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('4','Médio');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('2','Avançado');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('1','Médio');  
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('6','Avançado');  



SELECT * FROM  tb_produto  
WHERE preco_produto>50;
 
SELECT * FROM  tb_produto
WHERE preco_produto  BETWEEN 3 and 60;

 
SELECT *   FROM  tb_produto
INNER JOIN tb_categoria 
ON tb_produto.id_produto=tb_categoria.id_categoria;

SELECT * FROM tb_produto 
WHERE nome_produto like 'J%';

SELECT *   FROM  tb_produto
INNER JOIN tb_categoria 
ON tb_produto.id_produto=tb_categoria.id_categoria
WHERE id_categoria=6;
