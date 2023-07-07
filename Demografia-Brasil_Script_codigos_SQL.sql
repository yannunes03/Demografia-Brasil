use demografia_brasil;
desc base_geral; /* Visualizar detalhes de configuração da tabela 'base_geral' */
select * from base_geral; /* Visualizar tabela 'base_geral' em formato tabular */
drop table base_geral; /* Apagar tabela "base geral" */

create table base_geral(
UF varchar(2) NOT NULL,
COD_UF int NOT NULL,
COD_MUNIC int NOT NULL,
NOME_DO_MUNICÍPIO varchar(100) NOT NULL,
POPULACAO int NOT NULL,
DATA_ATUALIZACAO date NOT NULL,
CENSO INT NOT NULL,
ESTADO varchar(50) NOT NULL, 
REGIAO varchar(30) NOT NULL,
CAPITAL varchar(30) NOT NULL,
PAIS varchar(15) NOT NULL default 'Brasil'
) default charset = utf8mb4;

/*Conferências e checagens em tabela */

/*Verificar quantidade de linhas e colunas  existentes na tabela */
select count(*) from base_geral; /* Verificar, contar e retornar a quantidade de linhas existentes em uma tabela */
SELECT COUNT(*) FROM information_schema.columns WHERE table_schema = 'demografia_brasil' AND table_name = 'base_geral'; /* Verificar e contar número de colunas em uma tabela */



/* Visualizar informações */
SELECT *
FROM base_geral
WHERE UF = 'RJ';

/* Inserir novas linhas a uma tabela criada */
insert into base_geral 
values('RJ', '33', '1', 'Rio de Janeiro', '200000', '2022-12-25', '2022', 'Rio de Janeiro', 'Sudeste', 'Rio de Janeiro', default);

/* Inserir novas colunas a uma tabela criada */
alter table base_geral
add column BAIRRO varchar(50) NOT NULL DEFAULT '-';

/* Preencher células */
UPDATE base_geral
SET BAIRRO = 'Copacabana'
WHERE UF = 'RJ' and DATA_ATUALIZACAO = '2022-12-25';












