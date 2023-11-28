INSERT INTO DEPARTAMENTO (ID_DEP, NOME_DEP, LOCALIZACAO, TELEFONE) VALUES
  (1, 'Departamento de Tecnologia', 'NATAL', '1234-5678'),
  (2, 'Departamento de Humanas', 'NATAL', '1234-5678'),
  (3, 'Departamento de Saude', 'NATAL', '1234-5678');

INSERT INTO PROFESSOR (ID_PROF, NOME_PROF, DATA_NASC, EMAIL, ID_DEP) VALUES
  (1, 'João Carlos', '01/01/1990', 'manojc@gmail.com', 1),
  (2, 'Maria Eduarda', '01/01/1991', 'duda@gmail.com', 2),
  (3, 'José Maria', '01/01/1995', 'zemaria@gmail.com', 3),
  (4, 'Ana Clara', '01/01/1994', 'aninha_ac@gmail.com', 1),
  (5, 'Pedro Algustos', '01/01/2000', 'algustos@gmail.com', 2),
  (6, 'Paulo Eduardo', '01/01/1999', 'paulo.edu@gmail.com', 3),
  (7, 'Carlos Algustos', '01/01/1998', 'carlos_algustos@gmail.com', 1),
  (8, 'Marcos Paulo', '01/01/1997', 'marcos.paulo@gmail.com', 2),
  (9, 'Lucas Matheus', '01/01/1999', 'lucasmate@gmail.com', 3),
  (10, 'Mateus Vinicius', '01/01/1996', 'mateusVini@gmail.com', 1);

INSERT INTO DISCIPLINA (ID_DISC, NOME_DISC, CARGA_HORARIA, ID_DEP) VALUES
  (1, 'Matemática', 60, 1),
  (2, 'Física', 60, 1),
  (3, 'Química', 60, 1),
  (4, 'Português', 60, 2),
  (5, 'História', 60, 2),
  (6, 'Geografia', 60, 2),
  (7, 'Biologia', 60, 3),
  (8, 'Educação Física', 60, 3),
  (9, 'Filosofia', 60, 3),
  (10, 'Sociologia', 60, 3);

INSERT INTO CURSO VALUES
  (1, 'Engenharia de Software', 1),
  (2, 'Engenharia de Computação', 1),
  (3, 'Engenharia de Produção', 1),
  (4, 'Direito', 2),
  (5, 'Administração', 2),
  (6, 'Ciências Contábeis', 2),
  (7, 'Enfermagem', 3),
  (8, 'Fisioterapia', 3),
  (9, 'Medicina', 3),
  (10, 'Odontologia', 3);

INSERT INTO SALA VALUES
  (1, 60, 'Bloco 1'),
  (2, 60, 'Bloco 1'),
  (3, 60, 'Bloco 1'),
  (4, 60, 'Bloco 2'),
  (5, 60, 'Bloco 2'),
  (6, 60, 'Bloco 2');

INSERT INTO TURMA VALUES
  (1, '24M12', 1, 1, 1),
  (2, '24M34', 2, 2, 2),
  (3, '35T12', 3, 3, 3),
  (4, '35T56', 4, 4, 4),
  (5, '6M1234', 5, 5, 5),
  (6, '46T12', 6, 6, 6),
  (7, '35N12', 7, 7, 1),
  (8, '24N34', 8, 8, 2),
  (9, '6T1234', 9, 9, 3),
  (10, '35M56', 10, 10, 4);

INSERT INTO ALUNO VALUES
  (1, 'João', '01/01/1990', 'joao@gmail.com', 1),
  (2, 'Maria', '01/01/1991', 'maria@hotmail.com.br', 2),
  (3, 'José', '01/01/1995', 'jose@gmail.com.br', 3),
  (4, 'Ana', '01/01/1994', 'ana_ana@gamil.com', 4),
  (5, 'Pedro', '01/01/2000', 'pedro@hotmail.com', 5),
  (6, 'Paulo', '01/01/1999', 'paulo@ufrn.com.br', 6),
  (7, 'Carlos', '01/01/1998', 'carlos@ufrn.com.br', 7),
  (8, 'Marcos', '01/01/1997', 'marcos.m@ufrn.com.br', 8),
  (9, 'Lucas', '01/01/1999', 'lucas@gmail.com', 9),
  (10, 'Mateus', '01/01/1996', 'matheus@email.com.br', 10);

INSERT INTO MATRICULADO VALUES
  ('01/01/2018', 1, 1),
  ('01/01/2019', 2, 2),
  ('01/01/2020', 3, 3),
  ('01/01/2021', 4, 4),
  ('01/01/2022', 5, 5),
  ('01/01/2023', 6, 6),
  ('01/01/2018', 7, 7),
  ('01/01/2019', 8, 8),
  ('01/01/2020', 9, 9),
  ('01/01/2021', 10, 10);

INSERT INTO INSCRITO VALUES
  (1, 1, '01/01/2023'),
  (2, 2, '01/01/2023'),
  (3, 3, '01/01/2023'),
  (4, 4, '01/01/2023'),
  (5, 5, '01/01/2023'),
  (6, 6, '01/01/2023'),
  (7, 7, '01/01/2023'),
  (8, 8, '01/01/2023'),
  (9, 9, '01/01/2023'),
  (10, 10, '01/01/2023');