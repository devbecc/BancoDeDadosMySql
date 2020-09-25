CREATE DATABASE IF NOT EXISTS ECOMMERCE; 

USE ECOMMERCE;


CREATE TABLE IF NOT EXISTS tb_produto (
    id_produto INT AUTO_INCREMENT,
    preco_produto FLOAT(8 , 2 ),
    nome_produto VARCHAR(45),
    tamanho VARCHAR(45),
    quantidades INT(111),
    PRIMARY KEY (id_produto)
);


 
SELECT 
    nome_produto, preco_produto
FROM
    tb_produto
ORDER BY preco_produto DESC
LIMIT 1;

    

SELECT 
    nome_produto, preco_produto, MIN(preco_produto)
FROM
    tb_produto;
   

 /*
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('123,10','Camiseta','M','2');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('87283,10','Camiseta','M','5');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('12853,10','Camiseta','G','8');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('12877,10','Camiseta','PP','11');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('18000,10','Camiseta','XXG','3');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('98123,10','Camiseta','X','80');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('98123,10','Agasalho','p','1');
    INSERT INTO tb_produto (preco_produto,nome_produto,tamanho,quantidades) VALUES ('98123,10','shorts','m','80');
    
*/
    
    
    
    
    
    
    
    
	