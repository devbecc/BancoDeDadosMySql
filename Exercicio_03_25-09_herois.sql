CREATE DATABASE IF NOT EXISTS db_generation_game_online;

USE db_generation_game_online;

drop TABLE tb_classe ;
 

CREATE TABLE tb_classe (
    id_joga INT NOT NULL AUTO_INCREMENT,
    nome_Dev VARCHAR(33),
    PRIMARY KEY (id_joga)
);

 INSERT INTO tb_classe (nome_Dev) VALUES ('REBECCA') ;
 
 INSERT INTO tb_classe (nome_Dev) VALUES ('Perseu') ;
 
 INSERT INTO tb_classe (nome_Dev) VALUES ('Zequinha') ;

CREATE TABLE tb_personagem (
    id_personagem INT AUTO_INCREMENT,
    nome VARCHAR(30),
    poder VARCHAR(100),
    nivel_poder INT,
    id_joga INT,
    PRIMARY KEY (id_personagem),
    CONSTRAINT fk_jogador_user FOREIGN KEY (id_joga)
        REFERENCES tb_classe (id_joga)
);


 
SELECT 
    *
FROM
    tb_personagem;
 
 
INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Mulher Maravilha','Força,Voo,inteligencia, empatia e super velocidade',590000);

 
INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Ravena','voo,telepata,fator de regeneração, projeção astra entre outros ',589000);


 
INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Xena','Habilidade em luta corporal. Perita em artes marciais.',295000);

 
INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Estelar','absorção de raios ultravioletas E velocidade supersônica.,',290000);
 
INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Tempestade','Voo,controlar todos os aspectos do tempo, seja em solo terrestre ou alienígena',430000);

INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Jean Grey / Fênix','A poderosa telepata de nível Omega ',400000);

INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Mulher Gata ',' lutadora perigosa, ágil, veloz e extremamente precisa',350000);
 
INSERT INTO tb_personagem (nome,poder,nivel_poder) 
values ('Pantera Negra',' conhecimento, força',191000);


SELECT 
    nome, nivel_poder
FROM
    tb_personagem
WHERE
    nivel_poder > 28000;
    
    
 
SELECT 
    nome, nivel_poder
FROM
    tb_personagem
WHERE
    nivel_poder BETWEEN 191000 AND 350000;
 

SELECT 
    *
FROM
    tb_personagem
WHERE
    nome LIKE 'R%';


 

 
