-- CREAÇÃO DO BANCO DE DADOS E TABELA
-- ============================================================================

CREATE DATABASE IF NOT EXISTS DBempresa;
USE DBempresa;

DROP TABLE IF EXISTS funcionarios;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE,
    status VARCHAR(20) DEFAULT 'Ativo'
);

-- ============================================================================
-- INSERÇÃO DE 20 REGISTROS
-- ============================================================================

INSERT INTO funcionarios (nome, cargo, departamento, salario, data_admissao, status) VALUES
('Ana Silva', 'Desenvolvedor Frontend', 'TI', 4500.00, '2021-03-15', 'Ativo'),
('Carlos Eduardo', 'Desenvolvedor Backend', 'TI', 5500.00, '2019-06-10', 'Ativo'),
('Mariana Lima', 'Analista de RH', 'RH', 3800.00, '2020-01-20', 'Ativo'),
('Roberto Alves', 'Gerente de Projetos', 'TI', 8500.00, '2018-11-05', 'Ativo'),
('Fernanda Costa', 'Designer UX/UI', 'Marketing', NULL, '2022-04-01', 'Ativo'),
('Lucas Mendes', 'Analista Financeiro', 'Financeiro', 4200.00, '2021-08-12', 'Inativo'),
('Beatriz Rocha', 'Assistente Administrativo', 'RH', 2500.00, '2023-02-10', 'Ativo'),
('Gabriel Souza', 'Desenvolvedor Backend', 'TI', 5200.00, '2022-09-18', 'Ativo'),
('Patricia Gomes', 'Especialista em Marketing', 'Marketing', 4800.00, '2020-05-30', 'Ativo'),
('Diego Martins', 'Suporte Técnico', 'TI', 2800.00, '2023-01-15', NULL),
('Juliana Paes', 'Coordenadora de RH', 'RH', 6200.00, '2017-04-22', 'Ativo'),
('Marcelo Ribeiro', 'Analista Financeiro', 'Financeiro', NULL, '2022-11-01', 'Ativo'),
('Camila Rodrigues', 'Desenvolvedor Frontend', 'TI', 4600.00, '2021-10-05', 'Ativo'),
('Rafael Barbosa', 'Estagiário', 'TI', 1500.00, '2023-06-01', 'Ativo'),
('Larissa Dias', 'Estagiário', 'Marketing', 1500.00, '2023-07-15', 'Ativo'),
('Thiago Melo', 'Gerente Financeiro', 'Financeiro', 9000.00, '2016-02-18', 'Ativo'),
('Vanessa Nunes', 'Analista de Suporte', 'TI', 3100.00, '2019-12-01', 'Inativo'),
('Bruno Castro', 'Desenvolvedor Fullstack', 'TI', 6800.00, '2020-08-20', 'Ativo'),
('Amanda Faria', 'Assistente Financeiro', 'Financeiro', 2700.00, '2023-03-01', 'Ativo'),
('Rodrigo Teixeira', 'Diretor de Operações', 'Diretoria', 1500.00, '2015-01-10', 'Ativo');

UPDATE funcionarios
SET salario = 6000.00
WHERE nome = 'Carlos Eduardo';

UPDATE funcionarios
SET salario = 4000.00
WHERE id = 5;

UPDATE funcionarios
SET cargo = 'Gerente de Marketing', departamento = 'Marketing'
WHERE nome = 'Patricia Gomes';

UPDATE funcionarios
SET cargo = 'Assistente'
WHERE cargo = 'Estagiário';

UPDATE funcionarios
SET status = 'Inativo'
WHERE id IN (7, 10, 14);

UPDATE funcionarios
SET salario = 5000.00
WHERE cargo = 'Desenvolvedor Frontend' OR cargo = 'Desenvolvedor Backend';

UPDATE funcionarios
SET salario = 3000.00
WHERE salario IS NULL;

UPDATE funcionarios
SET status = 'Confirmado'
WHERE salario IS NOT NULL;

UPDATE funcionarios
SET salario = salario * 1.10
WHERE departamento = 'TI';

UPDATE funcionarios
SET status = 'Pendente'
WHERE status IS NULL;

DELETE FROM funcionarios
WHERE id = 15;

DELETE FROM funcionarios
WHERE nome = 'Lucas Mendes';

DELETE FROM funcionarios
WHERE data_admissao < '2018-01-01';

DELETE FROM funcionarios
WHERE cargo IN ('Estagiário', 'Suporte Técnico');

DELETE FROM funcionarios
WHERE departamento = 'Marketing' OR salario < 2000.00;

DELETE FROM funcionarios
WHERE status IS NULL;

DELETE FROM funcionarios
WHERE departamento = 'Financeiro' AND salario IS NOT NULL;

DELETE FROM funcionarios
WHERE status = 'Inativo';

DELETE FROM funcionarios
WHERE departamento = 'TI' AND salario < 3000.00;

DELETE FROM funcionarios
WHERE id = 20;