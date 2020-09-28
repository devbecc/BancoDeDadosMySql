CREATE DATABASE IF NOT EXISTS db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE IF NOT EXISTS tb_produto (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(35),
    preco_produto FLOAT(5 , 2 ),
    Tamanho_produto VARCHAR(3),
    cor_produto varchar (25),
    PRIMARY KEY (id_produto)
);

 
 select* from tb_produto;

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,Tamanho_produto,cor_produto) 
VALUES (null,'Calça Jeans','70.03','GG','Azul');


INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,Tamanho_produto,cor_produto) 
VALUES (null,'Camiseta','45.33','XG','Tie Dye');


INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,Tamanho_produto,cor_produto) 
VALUES (null,'Lingerie','65.03','M','Branca');


INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,Tamanho_produto,cor_produto) 
VALUES (null,'Lençol','39.99','Casal','Cinza');

INSERT INTO tb_produto (id_produto,nome_produto,preco_produto,Tamanho_produto,cor_produto) 
VALUES (null,'Tênis','199.10','33','Preto');
 
 
 


CREATE TABLE IF NOT EXISTS tb_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT,
    categoria_produto ENUM('Infantil', 'Masculina', 'Feminina', 'Intimas','Cama,mesa e banho' ,'Calçados'),
    PRIMARY KEY (id_categoria),
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria)
        REFERENCES tb_produto (id_produto)
);



INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('5','Infantil');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('4','Cama,mesa e banho');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('2','Masculina');
INSERT INTO tb_categoria (id_categoria,categoria_produto) VALUES ('1','Feminino');  


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

 
