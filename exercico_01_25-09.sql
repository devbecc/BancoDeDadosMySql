CREATE TABLE matriculados (
    id_curso INT,
    nome VARCHAR(30),
    descricao VARCHAR(30),
    carga CHAR(10),
    totalaulas INT,
    ano INT,
    PRIMARY KEY (id_curso)
);
        
        Insert into matriculados values
 ('1','HTML', 'Curso de HTML5','40','37','2019'),
 ('2','CSS', 'Curso de CSS3','20','15','2019'),
 ('3','PHOTOSHOP', 'Curso de Photoshop','10','8','2020'),
 ('4','JAVASCRIPT', 'Curso de JS','40','20','2020');


    show tables;
    
UPDATE matriculados 
SET 
    nome = 'HTML5'
WHERE
    id_curso = '1';
    
    
UPDATE matriculados 
SET 
    ano = '2021'
WHERE
    ano = '2020';

