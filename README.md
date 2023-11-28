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

Cada vez mais dados são gerados e necessitam serem armazenados e gerenciados. Para isso, é necessário o uso de um banco de dados, que é um conjunto de dados relacionados entre si, que são armazenados de forma persistente, e que são utilizados por sistemas de aplicação. O banco de dados é um recurso essencial para o funcionamento de sistemas de informação, pois é através dele que os dados são armazenados e recuperados.
Para o desenvolvimento de um banco de dados, é necessário seguir um processo de desenvolvimento que é composto por 5 etapas: análise de requisitos, projeto conceitual, projeto lógico, projeto físico e implementação.

### 2. Objetivo

Esta atividade tem como objetivo a criação de um banco de dados relacional para uma escola, que será utilizado para armazenar informações sobre os alunos, professores, disciplinas, turmas, entre outros. Para isso, será utilizado o modelo de entidade-relacionamento (MER) para a modelagem conceitual, o modelo relacional para a modelagem lógica e o SQLite para a implementação do banco de dados.

### 3. Proposta

Elaborar um sistema de gerenciamento de Escola.

### 3.1. Entidades

Aluno, Professor, Disciplina, Curso, Departamento, Turma e Sala.

### 4. Modelo Conceitual

![CONCEITUAL](https://github.com/andrefernandeslp1/bd-escola/blob/main/CONCEITUAL.PNG)


### 5. Modelo Lógico

![LOGICO](https://github.com/andrefernandeslp1/bd-escola/blob/main/LOGICO.PNG)


### 5.1. Mapeamento do Modelo Conceitual para o Modelo Lógico

🚧  
DEPARTAMENTO(#ID_Dep, Nome_Dep, Local, Telefone)  
DISCIPLINA(#ID_Disc, Nome_Disc, @ID_Dep, Carga_Hor)  
PROFESSOR(#ID_Prof, Nome_Prof, Email_Prof, Data_Nasc, @ID_Dep)  
CURSO(#ID_Curso, Nome_Curso, @ID_Dep)  
ALUNO(#ID_Aluno, Nome_Aluno, Email_Aluno, Data_Nasc, Matricula, @ID_Curso)  
MATRICULADO(@ID_Aluno, @ID_Curso, Data_Mat)  
INSCRITO(@ID_Aluno, @ID_Turma, Data_Insc)  
TURMA(#ID_Turma, Horario, @ID_Prof, @ID_Disc, @ID_Sala)  
SALA(#ID_Sala, Local)  

### 6. Modelo Físico

### 6.1. Criação do Banco de Dados

Execute o comando `slqlite3 escola.db` para criar/acessar o banco de dados.  
Em seguida, execute o comando `.mode column` para definir o modo de exibição para colunas.  
Execute também `.headers on` para ativar a exibição de cabeçalhos.  

![captura1](https://github.com/andrefernandeslp1/bd-escola/blob/main/auxiliar/captura1.PNG)

### 6.2. Criação das Tabelas

Acesse o arquivo [`creates.sql`](https://github.com/andrefernandeslp1/bd-escola/blob/main/creates.sql) para visualizar os comandos utilizados para a criação das tabelas.

### 6.3. Inserção de Dados

Acesse o arquivo [`inserts.sql`](https://github.com/andrefernandeslp1/bd-escola/blob/main/inserts.sql) para visualizar os comandos utilizados para a inserção de dados nas tabelas.

### 6.4. Consultas

Acesse o arquivo [`selects.sql`](https://github.com/andrefernandeslp1/bd-escola/blob/main/selects.sql) para visualizar as queries utilizadas para a realização das consultas.

### 6.4.1. Retorno das Consultas

Retorno das duas primeiras consultas:  
![consulta1](https://github.com/andrefernandeslp1/bd-escola/blob/main/auxiliar/consulta1.PNG)
![consulta1](https://github.com/andrefernandeslp1/bd-escola/blob/main/auxiliar/consulta2.PNG)

### 7. Conclusão

Através da realização desta atividade, foi possível compreender o processo de desenvolvimento de um banco de dados, desde a modelagem conceitual até a implementação. Além disso, foi possível compreender a importância de um banco de dados para o funcionamento de sistemas de informação, pois é através dele que os dados são armazenados e recuperados.


