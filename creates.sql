CREATE TABLE DEPARTAMENTO (
    ID_DEP INTEGER PRIMARY KEY,
    NOME_DEP TEXT,
    LOCALIZACAO TEXT,
    TELEFONE TEXT
);

CREATE TABLE PROFESSOR (
    ID_PROF INTEGER PRIMARY KEY,
    NOME_PROF TEXT,
    DATA_NASC TEXT,
    EMAIL TEXT,
    ID_DEP INTEGER,
    FOREIGN KEY (ID_DEP) REFERENCES DEPARTAMENTO(ID_DEP)
);

CREATE TABLE DISCIPLINA (
    ID_DISC INTEGER PRIMARY KEY,
    NOME_DISC TEXT,
    CARGA_HORARIA INTEGER,
    ID_CURSO INTEGER,
    FOREIGN KEY (ID_CURSO) REFERENCES CURSO (ID_CURSO)
);

CREATE TABLE CURSO (
    ID_CURSO INTEGER PRIMARY KEY,
    NOME_CURSO TEXT,
    ID_DEP INTEGER,
    FOREIGN KEY (ID_DEP) REFERENCES DEPARTAMENTO(ID_DEP)
);

CREATE TABLE MATRICULADO (
    DATA_MAT TEXT,
    ID_ALUNO INTEGER,
    ID_CURSO INTEGER,
    FOREIGN KEY (ID_ALUNO) REFERENCES ALUNO(ID_ALUNO),
    FOREIGN KEY (ID_CURSO) REFERENCES CURSO(ID_CURSO)
);

CREATE TABLE ALUNO (
    ID_ALUNO INTEGER PRIMARY KEY,
    NOME_ALUNO TEXT,
    DATA_NASC TEXT,
    EMAIL TEXT,
    ID_CURSO INTEGER,
    FOREIGN KEY (ID_CURSO) REFERENCES CURSO(ID_CURSO)
);

CREATE TABLE INSCRITO (
    ID_ALUNO INTEGER,
    ID_TURMA INTEGER,
    DATA_INSC TEXT,
    FOREIGN KEY (ID_ALUNO) REFERENCES ALUNO(ID_ALUNO),
    FOREIGN KEY (ID_TURMA) REFERENCES TURMA(ID_TURMA)
);

CREATE TABLE TURMA (
    ID_TURMA INTEGER PRIMARY KEY,
    HORARIO TEXT,
    ID_DISC INTEGER,
    ID_PROF INTEGER,
    ID_SALA INTEGER,
    FOREIGN KEY (ID_DISC) REFERENCES DISCIPLINA(ID_DISC),
    FOREIGN KEY (ID_PROF) REFERENCES PROFESSOR(ID_PROF),
    FOREIGN KEY (ID_SALA) REFERENCES SALA(ID_SALA)
);

CREATE TABLE SALA (
    ID_SALA INTEGER PRIMARY KEY,
    CAPACIDADE INTEGER,
    LOCALIZACAO TEXT
);
