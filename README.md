## PROJETO DE BANCO DE DADOS DE UMA ESCOLA

### UNIVERSIDADE FEDERAL DO RIO GRANDE DO NORTE - UFRN
### DEPARTAMENTO DE INFORMÁTICA E MATEMÁTICA APLICADA
### DIM0114 - BANCO DE DADOS - T01 (2023.2)
#### DOCENTE: Profª. Marianne Batista Diniz da Silva
#### ALUNOS:
#### André Augusto Fernandes,
#### Brenda Stephanie de Oliveira Dantas,
#### Jean Victor Fernandes Vergacas
##

### 1. Introdução
### 2. Objetivo



Entidades:

1. Aluno

Atributos: ID_Aluno, Nome_Aluno, Data_Nascimento_Aluno, Email_Aluno, Numero_Matricula

2. Professor

Atributos: ID_Professor, Nome_Professor, Data_Nascimento_Professor, Email_Professor, Departamento, Disciplina

3. Disciplina

Atributos: ID_Disciplina, Nome_Disciplina, Curso, Departamento, Carga_Horaria

4. Turma

Atributos: ID_Turma, Numero_Turma

5. Matrícula

Atributos: Numero_Matricula, Data_Matricula, Status_Matricula

6. Departamento

Atributos: ID_Departamento, Nome_Departamento, Localizacao, Telefone_Departamento

7. Curso

Atributos: ID_Curso, Nome_Curso, Departamento



![](https://lh7-us.googleusercontent.com/nikLl_gUJDWGE5V5x9JLlmC9UlhB10xASS8_FsQiuOgcBCjewNZsXEnsLP0Yxee8LSqRcHx07wigjeHTZnz1ABMNHgdFkXbQMhKWdoMuM2Li1Qd40IR0JlpXmCxYuuLyHGYfiJGP-mnI28N-ZqRsLgM)

![](https://lh7-us.googleusercontent.com/NmcdlyGcO-EWqniRkf_-VqCWW_mGIJAQhB72-Zpcpw7eHoZ-0GWaz2Ho9qv2CUh3-W8nEvcOPzzu8GSqXUYHkR3vnuzsUQPVqKF9obi8WYFhMN172Tl3BNOYdUq6XqCDJX9KuVWzYkwp6YV8I7BssPs)



Mapeamento :



ALUNO(#ID_Aluno, Nome_Aluno, Dt_Nasc, Email, @Num_Mat);

MATRICULA(#Num_Mat, Dt_Mat, Status_Mat);

TURMA(#ID_Turma, Num_Turma, @ID_Disc, @ID_Prof);

DISCIPLINA(#ID_Disc, Nome_Disc, @ID_Curso, @ID_Dep, Carga_Hor);

DEPARTAMENTO(#ID_Dep, Nome_Dep, Locali, Tel);

PROFESSOR(#ID_Prof, Nome_Prof, Dt_Nasc_Prof, Email_Prof, @ID_Dep);

CURSO(#ID_Curso, Nome_Curso, @ID_Dep);



Criação das tabelas:



--Tabela Aluno



CREATE TABLE Aluno(

  id_aluno integer PRIMARY KEY,

  nome_aluno text,

  dt_nasc_aluno text,

  num_mat integer,

  email text,

  FOREIGN KEY (num_mat) REFERENCES Matricula(num_mat)

);



 -- Tabela Matricula



CREATE TABLE Matricula(

  num_mat Integer PRIMARY KEY,

  dt_nasc text, 

  status_mat text

 );

 -- tabela Turma

 CREATE TABLE Turma (

   id_turma integer PRIMARY KEY,

   num_turma integer,

   id_disc integer,

   id_prof integer,

   FOREIGN key (id_disc) REFERENCES disciplina(id_disc),

   FOREIGN KEY (id_prof) REFERENCES professor(id_prof)

);

-- tabela Disciplina

CREATE TABLE Disciplina(

  id_disc integer PRIMARY KEY,

  nome_disc text,

  id_curso integer,

  id_dep integer,

  carga_hor,

  FOREIGN key (id_curso) REFERENCES Curso(id_curso),

  FOREIGN KEY (id_dep) REFERENCES Departamento(id_dep)

);

--tabela departamento

CREATE TABLE Departamento(

  id_dep integer PRIMARY KEY,

  nome_dep text,

  locali text,

  tel text

);

--tabela professor

CREATE TABLE Professor(

  id_prof integer PRIMARY KEY,

  nome_prof text,

  dt_nasc_prof text,

  email_prof text,

  id_dep integer,

  FOREIGN KEY (id_dep) REFERENCES departamento(id_dep)

);

--tebela curso

CREATE TABLE Curso(

  id_curso integer PRIMARY key,

  nome_curso text,

  id_dep integer,

  FOREIGN KEY (id_dep) REFERENCES departamento(id_dep)

);





Mexendo no SQLITE:



CREATE TABLE TB_ALUNO (

  id_aluno INTEGER PRIMARY KEY,

  nome_aluno TEXT,

  data_nasc_aluno TEXT,

  email TEXT,

  num_matr INTEGER,

  FOREIGN KEY (num_matr) REFERENCES TB_MATRICULA(num_matr)

);



CREATE TABLE TB_MATRICULA (

  num_matr INTEGER PRIMARY KEY,

  data_matr TEXT,

  status_matr TEXT

 );



 CREATE TABLE TB_TURMA (

   id_turma INTEGER PRIMARY KEY,

   num_turma INTEGER,

   id_disc INTEGER,

   id_prof INTEGER,

   FOREIGN key (id_disc) REFERENCES TB_DISCIPLINA(id_disc),

   FOREIGN KEY (id_prof) REFERENCES TB_PROFESSOR(id_prof)

);



CREATE TABLE TB_DISCIPLINA (

  id_disc INTEGER PRIMARY KEY,

  nome_disc TEXT,

  id_curso INTEGER,

  carga_hor INTEGER,

  FOREIGN key (id_curso) REFERENCES TB_CURSO(id_curso)

);



CREATE TABLE TB_DEPARTAMENTO (

  id_depto INTEGER PRIMARY KEY,

  nome_depto TEXT,

  locali_dpto TEXT,

  tel_dpto TEXT

);



CREATE TABLE TB_PROFESSOR (

  id_prof INTEGER PRIMARY KEY,

  nome_prof TEXT,

  data_nasc_prof TEXT,

  email_prof TEXT,

  id_depto INTEGER,

  FOREIGN KEY (id_depto) REFERENCES TB_DEPARTAMENTO(id_depto)

);



CREATE TABLE TB_CURSO (

  id_curso INTEGER PRIMARY key,

  nome_curso TEXT,

  id_depto INTEGER,

  FOREIGN KEY (id_depto) REFERENCES TB_DEPARTAMENTO(id_depto)

);



Inserções



ALUNO



INSERT INTO TB_ALUNO (id_aluno, nome_aluno, data_nasc_aluno, num_matr)

VALUES (1, 'Andre Augusto', '27/01/1996', 20237345534); 



INSERT INTO TB_ALUNO (id_aluno, nome_aluno, data_nasc_aluno, num_matr)

VALUES (2, 'Brenda Stephanie', '02/09/1972', 20239681174); 



INSERT INTO TB_ALUNO (id_aluno, nome_aluno, data_nasc_aluno, num_matr)

VALUES (3, 'Jean Victor', '21/05/2000', 20238540199); 



DEPARTAMENTO



INSERT into TB_DEPARTAMENTO (id_depto, nome_depto, locali_dpto, tel_dpto)

VALUES (10, 'Departamento de Tecnologia da Informação', 'Rua da TI, 2', '8492343-9245');



INSERT into TB_DEPARTAMENTO (id_depto, nome_depto, locali_dpto, tel_dpto)

VALUES (6, 'Departamento de Saúde', 'Rua da Saúde, 7', '8496434-8867');



INSERT into TB_DEPARTAMENTO (id_depto, nome_depto, locali_dpto, tel_dpto)

VALUES (13, 'Departamento de Ciências Sociais', 'Rua Social, 9', '8496434-8867');



CURSO



INSERT INTO TB_CURSO (id_curso, nome_curso, id_depto)

VALUES (1, 'Medicina', 6);



INSERT INTO TB_CURSO (id_curso, nome_curso, id_depto)

VALUES (2, 'Engenharia de Software', 10);



INSERT INTO TB_CURSO (id_curso, nome_curso, id_depto)

VALUES (3, 'Direito', 13);



PROFESSOR 



TURMA



MATRICULA



DISCIPLINA



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (1, 'Direito Civil', 3, 90);



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (2, 'Direito Constitucional', 3, 120);



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (3, 'Direito Penal', 3, 90);



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (4, 'Programação', 2, 60);



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (5, 'Banco de Dados', 2, 90);



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (6, 'Anatomia', 1, 80);



INSERT into TB_DISCIPLINA (id_disc, nome_disc, id_curso, carga_hor)

VALUES (7, 'Cardiologia', 1, 100);
