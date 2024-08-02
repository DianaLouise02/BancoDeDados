CREATE DATABASE senai; -- Criar um database

USE senai; -- Selecionando database que será utilizado

CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	-- INT inteiro
	-- Primary Key -> Indica Chave Primária
	-- Not null -> Nunca vai ser vazio
	-- Auto_Increment -> Auto adicionar novo numero

	nome VARCHAR(60),
	materia VARCHAR(30)
);


INSERT INTO  professores(nome, materia) VALUES
('Arthur Rosa', 'Banco de Dados'),
('Samuel Santos', 'Flutter'),
('Giovani Ribeiro', 'React Native');
-- * -> Indica que estou buscando todas as colunas

SELECT * FROM professores;
-- Atualizar dados
-- Atualize a tabela professores, ajuste materia = back-end
-- Onde o id seja igual a 1
-- if(id == 1) {atualiza a materia}


UPDATE professores SET materia = 'Back-end' WHERE 	ID = 1;

-- WHERE -> If
DELETE FROM professores WHERE id = 1;

-- Criar tabela Alunos

-- (id, nome , idade)
-- Inserir 3 alunos

CREATE TABLE alunos(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
idade int
);

INSERT INTO alunos(nome, idade) VALUES
('Bianca Silva', 21) , ('Joao Pedro', '17') , ('Alan Santos', '18');

SELECT * FROM alunos

-- Deletar todos os dados
-- TRUNCATE TABLE alunos;

-- Deletar tabela
-- DROP TABLE alunos;

-- Deletar mais de um ID
-- DELETE FROM alunos WHERE id IN (1,2,3);

-- Atualizar mais de um ID
-- UPDATE alunos SET nome = '', idade = 22 WHERE id IN (1, 2, 3);


-- Colunas -> Modificar o tipo da coluna
-- ALTER TABLE alunos
-- MODIFY COLUMN nome VARCHAR(40)

-- Adicionar uma nova coluna
-- ALTER TABLE alunos
-- ADD COLUMN matricula VARCHAR(10);

-- Deletar uma coluna
-- ALTER TABLE alunos
-- DROP COLUMN matricula;

-- Trocar o nome
-- ALTER TABLE alunos
-- CHANGE COLUMN novoNome nome VARCHAR(30);


