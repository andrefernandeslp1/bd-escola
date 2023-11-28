-- (1)	Consulta Simples: recuperação de todos os registros de uma tabela específica.

SELECT * FROM CURSO;

-- (2)	Consulta de Junção: combinação de informações de duas ou mais tabelas.

SELECT NOME_CURSO, NOME_DEP FROM CURSO, DEPARTAMENTO WHERE CURSO.ID_DEP = DEPARTAMENTO.ID_DEP;

-- (3)	Consulta de Agregação: utilização de funções de agregação para calcular estatísticas ou totalizações.

SELECT COUNT(*) AS "QUANTIDADE DE ALUNOS" FROM ALUNO;

-- (4)	Consulta com Filtro: seleção de registros com base em condições específicas.

SELECT NOME_ALUNO FROM ALUNO WHERE DATA_NASC >= "01/01/1995";

-- (5)	Consulta com Ordenação: ordenação dos resultados com base em critérios específicos.

SELECT NOME_ALUNO FROM ALUNO ORDER BY NOME_ALUNO;

-- (6)	Consulta com Subconsulta: incorporação de uma subconsulta para obter informações mais detalhadas.

SELECT NOME_CURSO FROM CURSO WHERE ID_DEP = (SELECT ID_DEP FROM DEPARTAMENTO WHERE NOME_DEP like "%Tecnologia");

-- (7)	Consulta com União: combinação de resultados de duas consultas.

--SELECT NOME_ALUNO FROM ALUNO WHERE ID_CURSO = 1 UNION SELECT NOME_ALUNO FROM ALUNO WHERE ID_CURSO = 2;
SELECT NOME_ALUNO AS 'pessoas cadastradas',EMAIL, DATA_NASC FROM ALUNOS
UNION ALL
SELECT NOME_PROF,EMAIL,DATA_NASC FROM PROFESSOR;

-- (8)	Consulta com Agrupamento: agrupamento de registros com base em critérios específicos.

SELECT NOME_CURSO, COUNT(*) AS "QUANTIDADE DE ALUNOS" FROM CURSO, ALUNO WHERE CURSO.ID_CURSO = ALUNO.ID_CURSO GROUP BY NOME_CURSO;

-- (9)	Consulta com Limite: restrição do número de resultados retornados.

SELECT NOME_PROF FROM PROFESSOR LIMIT 5;

-- (10)	Consulta Complexa: desenvolvimento de uma consulta mais complexa que envolva múltiplas tabelas e condições.




