CREATE DATABASE IF NOT EXISTS db_cidade_das_carnes;

USE db_cidade_das_carnes;


 
CREATE TABLE IF NOT EXISTS tb_produto (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(35),
    preco_produto FLOAT(5 , 2 ),
    gramas_produto VARCHAR(60),
    PRIMARY KEY (id_produto)
);


 /*
INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Coxinha da asa','10.89','600 gramas');

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Contra Filé','30.79','1.00 kg');

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Tilápia','51.89','3.00 kg');

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Picanha ','57.09','2.00 kg');

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Salmão ','150.72','3.00 kg');

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Linguiça','21.02','1.00 kg'); 

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,gramas_produto) 
VALUES (null,'Camarão','38.02','1.00 kg');
*/
 
 



CREATE TABLE IF NOT EXISTS tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    categoria_produto ENUM('AVES', 'CARNES', 'PEIXES', 'PORCO', 'FRUTOS DO MAR'),
    PRIMARY KEY (id_categoria),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria)
        REFERENCES tb_produto (id_produto)
);

 
SELECT * FROM tb_produto;

/*INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('1','aves');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('2','CARNES');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('5','PEIXES');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('7','Frutos do Mar');  */


SELECT * FROM  tb_produto  
WHERE preco_produto>50;
 
SELECT * FROM  tb_produto
WHERE preco_produto  BETWEEN 3 and 60;

 
SELECT *   FROM  tb_produto
INNER JOIN tb_categoria 
ON tb_produto.id_produto=tb_categoria.id_categoria;

SELECT * FROM tb_produto 
WHERE nome_produto like 'C%';

SELECT *   FROM  tb_produto
INNER JOIN tb_categoria 
ON tb_produto.id_produto=tb_categoria.id_categoria
WHERE id_categoria=1;


 

