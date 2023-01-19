CREATE DATABASE db_construindo_vida;

USE db_construindo_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    categorias VARCHAR(255),
    estoque INT,
    PRIMARY KEY (id)
);


CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco VARCHAR(255),
    quantidade INT,
    cor VARCHAR(255),
    
    categorias_id BIGINT,

    PRIMARY KEY (id),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categorias,estoque)
VALUES("Tinta", 20);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("Madeira", 50);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("encanamento", 120);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("Azuleijos", 600);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("Pregos", 200);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("Cimento", 60);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("Tijolos", 500);
INSERT INTO tb_categorias (categorias,estoque)
VALUES("Caixa d'Agua", 35);

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Suvinil",250,2,"azul",1);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Painel",500,3,"Marrom",2);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Cano",35,25,"Branco",3);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("3D",70,25,"Preto",4);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Aço",2,30,"cinza",5);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Votarantim",35,10,"Chumbo",6);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Baiano",15,200,"laranja",7);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("FortLev",500,1,"azul",8);
INSERT INTO tb_produtos (nome,preco,quantidade,cor,categorias_id)
VALUES ("Pia",87,1,"azul",8);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco >100 ;
SELECT * FROM tb_produtos WHERE preco > 70 AND preco <150;
SELECT * FROM tb_produtos
WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.id

WHERE categorias LIKE "%Tinta%";