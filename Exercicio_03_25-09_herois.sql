create database funcoes_novas;
use funcoes_novas;
CREATE TABLE produtos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    pagamento ENUM('cartao', 'dinheiro', 'cheque'),
    quantidade INT UNSIGNED,
    preco DECIMAL(5 , 2 ),
    data DATE,
    cidade VARCHAR(30) DEFAULT 'São Paulo'
);


SELECT 
    *
FROM
    produtos;
    
dd
ALTER TABLE produtos add column codigo_produto  int first;
ALTER TABLE produtos add column marca varchar (30)  after cidade;  
ALTER TABLE produtos drop column pagamento;
ALTER TABLE produtos add column pagamento varchar (30)  after descricao;
ALTER TABLE produtos change column pagamento forma_pagamento VARCHAR (10);

SELECT 
    *
FROM
    produtos;
    
    
    
    
 