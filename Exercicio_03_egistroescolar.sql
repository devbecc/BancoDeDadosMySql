CREATE DATABASE IF NOT EXISTS db_egistroEscolar ;

USE db_egistroEscolar;


CREATE TABLE tb_aluno (
    id_aluno INT AUTO_INCREMENT,
    nome VARCHAR(45),
    nota FLOAT(5 , 2 ),
    disciplina VARCHAR(12),
    sexo VARCHAR(12),
    PRIMARY KEY (id_aluno)
);



SELECT 
    *
FROM
    tb_aluno;

 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('Rebecca','8.05','Biologia','Feminina');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('Juliana','7.75','Quimica','Feminina');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('Perseu','8.75','Filosofia','Masculino');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('Sandra','10.00','Ed. fisica','Feminina');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('Valmir','9.75','Matemática','Masculino');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('joão','3.55','Literatura','Masculino');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('maria','2.05','Artes','Feminina');
 
 INSERT INTO tb_aluno (nome,nota,disciplina,sexo) VALUES ('Zequinha','0.05','História','Masculino');
 
 
 
 




SELECT 
    nome, nota, disciplina
FROM
    tb_aluno
ORDER BY nota DESC
LIMIT 1
;
 
 
SELECT 
    nome, nota, disciplina, MIN(nota)
FROM
    tb_aluno;
 
 