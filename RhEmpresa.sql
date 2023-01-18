CREATE DATABASE empresa;

USE empresa;

CREATE TABLE RH(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
funcao VARCHAR (255),
carga_horaria INT,
salario DECIMAL(8,2),
PRIMARY KEY(id)
);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Jessica",27,"Desenvolvedor(a)Java",40,1780.00);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Ana Carolina",24,"Desenvolvedor(a)Java",40,2780.00);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Marlon",25,"Desenvolvedor(a)Java",40,1780.00);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Gustavo Henrique",22,"Desenvolvedor(a)Java",40,3780.00);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Henrqiue",36,"Desenvolvedor(a)Java",40,1780.00);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Joel",44,"Desenvolvedor(a)Java",40,5780.00);
INSERT INTO RH (nome,idade,funcao,carga_horaria,salario) VALUES("Wagner",36,"Desenvolvedor(a)Java",40,4780.00);

SELECT * FROM RH;
SELECT * FROM RH WHERE salario >2000.00;
SELECT * FROM RH WHERE salario<2000.00;


