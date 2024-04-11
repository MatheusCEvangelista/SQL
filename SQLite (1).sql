Create DATABASE '2024-21-03T'
TEMPLATE=template0
Encoding 'UTF-8'
Connection LIMIT 100;

SELECT * FROM demo;
DROP TABLE tb_empregadoslopes

CREATE TABLE tb_empregadoslopes(
  cod		INTEGER UNIQUE,
  nome		VARCHAR(15),
  salario	Float,
  CONSTRAINT pk_tbempregadoslopes PRIMARY KEY(cod)
  );
  
  Create TABLE tb_departamentoslopes(
   nome_departamento	VARCHAR(20),
   qtde_integrantes		INTEGER,
   cod					INTEGER UNIQUE,
   CONSTRAINT pk_tb_departamentolopes_nome_cod PRIMARY Key (nome_departamento, cod),
   CONSTRAINT fk_tb_departamentolopes_cod FOREIGN KEY(cod) REFERENCES tb_empregadoslopes(cod)
   );
   
   CREATE TABLE tb_produtos(
     codigo_prod		Integer  UNIQUE,
     descricao_prod		Varchar(40),
     fornecedor_prod	Varchar(40),
     ncm_prod			Integer,
     cst				Integer,
     cod_barra			Integer,
     nome				Varchar(15),
     
     CONSTRAINT pk_tb_produtos_codigo_prod	PRIMARY Key (codigo_prod,cod_barra)
     Constraint fk_tb_produtos_nome FOREIGN Key(nome) REFERENCES tb_empregadoslopes(nome)
     );
     
     
     
  
  INSERT into tb_departamentoslopes(cod,nome_departamento,qtde_integrantes) VALUES(1,'Fiscal',3);
  
  SELECT *
  FROM tb_empregadoslopes;