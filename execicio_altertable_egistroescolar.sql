
USE db_egistroEscolar;

ALTER TABLE tb_aluno 
add column sobrenomeAluno VARCHAR (30);

UPDATE tb_aluno 
SET 
    nome = 'Ana'
WHERE
    id_aluno = 8;
    
    
UPDATE tb_aluno 
SET 
    sexo = 'Feminino'
WHERE
    id_aluno = 8
        
    
 
