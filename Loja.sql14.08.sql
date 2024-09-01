CREATE TABLE tb_funcionarios(
id_funcionario  INTEGER,
id_gerente      INTEGER,
nome            VARCHAR2(10)NOT NULL,
sobrenome       VARCHAR2(10)NOT NULL,
cargo           VARCHAR2(20),
salario         NUMBER(8,2),
fg_ativo        INTEGER,
CONSTRAINT pk_tb_funcionarios_id_func PRIMARY KEY(id_funcionario),
CONSTRAINT fk_tb_funcionarios_id_gerente FOREIGN KEY(id_gerente)
        REFERENCES tb_funcionarios(id_funcionario));
        
CREATE TABLE tb_grades_salarios(
id_salario      INTEGER,
base_salario    NUMBER(8,2),
teto_salario    NUMBER(8,2),
fg_ativo        INTEGER,
CONSTRAINT pk_tb_grades_salarios_id_salario PRIMARY KEY(id_salario));

--INSERçÂO USANDO DML-mais ações de commit e rollback
DESCRIBE tb_clientes;

--INSERT INTO tb_exemplo[(campos)]VALUES(valorcampo)
INSERT INTO tb_clientes(id_cliente,nome,sobrenome,dt_nascimento,telefone,fg_ativo)
VAlUEs (1,'JOHN','BROWN','1/jan/1965','800-555-1211',1);

INSERT INTO tb_clientes(id_cliente,nome,sobrenome,dt_nascimento,telefone,fg_ativo)
VALUES(2,'CYNTHIA','GREEN','05/fev/1968','800-555-1212',1);

INSERT INTO tb_clientes
VALUES(3,'STEVE','WHITE','16/mar/1971','800-555-1213',1);

INSERT INTO tb_clientes(id_cliente,nome,sobrenome,dt_nascimento,telefone,fg_ativo)
VALUES(4,'GAIL','BLACK','','800-555-1214',1);

INSERT INTO tb_clientes(id_cliente,nome,sobrenome,dt_nascimento,telefone,fg_ativo)
VALUES(5,'DOREEN','BLUE','20/mai/1970',NULL,1);

INSERT INTO tb_clientes(id_cliente,nome,sobrenome,dt_nascimento,telefone,fg_ativo)
VALUES(6,'FRED','BROWN','01/jan/1970','800-555-1215',1);

COMMIT;

SELECT*
FROM tb_tipos_produtos

INSERT INTO tb_tipos_produtos(id_tipo_produto,nm_tipo_produto,fg_ativo)
VALUES(2,'BOOK',1);

INSERT INTO tb_tipos_produtos(id_tipo_produto,nm_tipo_produto,fg_ativo)
VALUES(1,'VIDEO',1);

INSERT INTO tb_tipos_produtos(id_tipo_produto,nm_tipo_produto,fg_ativo)
VALUES(3,'DVD',1);

COMMIT;

INSERT INTO tb_tipos_produtos(id_tipo_produto,nm_tipo_produto,fg_ativo)
VALUES(4,'CD',1);

INSERT INTO tb_tipos_produtos(id_tipo_produto,nm_tipo_produto,fg_ativo)
VALUES(5,'MAGAZINE',1);

INSERT INTO tb_produtos(id_produto,id_tipo_produto,nm_produto,ds_produto,preco,fg_ativo)
VALUES(1,1,'MODERN SCIENCE','A DESCRIPTION OF MODERN SCIENCE',19.95,1);

INSERT INTO tb_produtos(id_produto,id_tipo_produto,nm_produto,ds_produto,preco,fg_ativo)
VALUES(2,1,'CHEMISTRY','INTRODUCTION ON CHEMISTRY',30,1);

INSERT INTO tb_produtos(id_produto,id_tipo_produto,nm_produto,ds_produto,preco,fg_ativo)
VALUES(3,2,'SUPERNOVA','A STAR EXPLODES',25.99,1);

INSERT INTO tb_produtos(id_produto,id_tipo_produto,nm_produto,ds_produto,preco,fg_ativo)
VALUES(4,2,'TANK WAR','ACTION MOVIE ABOUT A FUTURE WAR',13.95,1);

COMMIT;

SELECT*
FROM tb_produtos

INSERT INTO tb_compras(id_cliente,id_produto,quantidade,fg_ativo)
VALUES(1,1,1,1);

INSERT INTO tb_compras(id_cliente,id_produto,quantidade,fg_ativo)
VALUES(2,1,3,1);

INSERT INTO tb_compras(id_cliente,id_produto,quantidade,fg_ativo)
VALUES(1,4,1,1);

INSERT INTO tb_compras(id_cliente,id_produto,quantidade,fg_ativo)
VALUES(2,2,1,1);

INSERT INTO tb_compras(id_cliente,id_produto,quantidade,fg_ativo)
VALUES(1,3,1,1);

COMMIT;

SELECT*
FROM tb_compras

INSERT INTO tb_funcionarios(id_funcionario,id_gerente,nome,sobrenome,cargo,salario,fg_ativo)
VALUES(1,NULL,'JAMES','SMITH','CEO',8000.00,1);

INSERT INTO tb_funcionarios(id_funcionario,id_gerente,nome,sobrenome,cargo,salario,fg_ativo)
VALUES(2,1,'RON','JOHNSON','SALES MANAGER',6000.00,1);

INSERT INTO tb_funcionarios(id_funcionario,id_gerente,nome,sobrenome,cargo,salario,fg_ativo)
VALUES(3,2,'FRED','HOBBS','SALESPERSON',1500.00,1);

INSERT INTO tb_funcionarios(id_funcionario,id_gerente,nome,sobrenome,cargo,salario,fg_ativo)
VALUES(4,2,'SUSAN','JONES','SALESPERSON',5000.00,1);

COMMIT;

SELECT*
FROM tb_funcionarios