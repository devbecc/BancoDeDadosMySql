create database aula_select;
use aula_select;

CREATE TABLE clientes (
    codigo_cliente INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50),
    cidade VARCHAR(10),
    serie CHAR(1)
);
CREATE TABLE funcionarios (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5 , 2 ),
    altura DECIMAL(3 , 2 ),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
);


Insert into funcionarios values ('1','Alex', '2018-02-03','M','68.5','2.50', 'Brasil');
Insert into funcionarios values 
		('2','Gabriela', '1998-02-03','F','58.5','1.60', 'Brasil'),     
		('3','Daniela', '1995-02-03','F','56.5','1.57', 'Brasil');
        
        
        SELECT id,nome FROM funcionarios; 
        
        SELECT * FROM funcionarios WHERE id =3; 
        
        SELECT *FROM funcionarios WHERE nome ='Gabriela';
        
        SELECT COUNT(*) FROM funcionarios;
        
        SELECT * FROM funcionarios where nome like '_L%';
        
        SELECT * FROM funcionarios where altura>2; 
        
        
        
        