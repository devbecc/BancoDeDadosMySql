USE RH;


CREATE TABLE tb_funcionarios (
    Id_funcionario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    cpf_func VARCHAR(15),
    sexo VARCHAR(10),
    salario FLOAT(7 , 2 ),
    PRIMARY KEY (Id_funcionario)
)  DEFAULT CHARSET=UTF8;

 
  
SELECT 
    MAX(salario)
FROM
    tb_funcionarios;
SELECT 
    MIN(salario)
FROM
    tb_funcionarios;
  
    
    /*insert into tb_funcionarios (nome, cpf_func,sexo,salario) values ('Rebecca','37648464198','Feminina','1000,00');
    insert into tb_funcionarios (nome, cpf_func,sexo,salario) values ('Sandra','79874548568','Feminina','8000,00');
    insert into tb_funcionarios (nome, cpf_func,sexo,salario) values ('Valmir','78949864419','Masculino','9000,00');
    insert into tb_funcionarios (nome, cpf_func,sexo,salario) values ('Juliana','7998768744','Feminina','9900,00');
    insert into tb_funcionarios (nome, cpf_func,sexo,salario) values ('Perseu','75766707650','Masculino','9000,00');*/
    
    
  
    
 



    
 

    
 
 