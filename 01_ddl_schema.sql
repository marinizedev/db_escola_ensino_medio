-- SISTEMA DE ESCOLA DE ENSINO MÉDIO

CREATE DATABASE db_sistema_escola_ensino_medio;
USE db_sistema_escola_ensino_medio;
ALTER DATABASE db_sistema_escola_ensino_medio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

ALTER TABLE tbl_aluno ADD tipo ENUM('F', 'M') NOT NULL;
CREATE TABLE tbl_aluno (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  nome           VARCHAR(100) NOT NULL
);

ALTER TABLE tbl_endereco ADD CONSTRAINT CK_Formato_CEP CHECK (cep REGEXP '\\d{5}-?\\d{3}$');
CREATE TABLE tbl_endereco (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  logradouro     VARCHAR(65) NOT NULL,
  complemento    VARCHAR(100),
  numero         VARCHAR(45),
  cidade_uf      VARCHAR(65) NOT NULL,
  cep            VARCHAR(8) NOT NULL,
  id_aluno       INT NOT NULL,
  
  CONSTRAINT FK_Endereco_Aluno
  FOREIGN KEY (id_aluno)
  REFERENCES tbl_aluno(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE
);

ALTER TABLE tbl_telefone MODIFY numero VARCHAR(15);
CREATE TABLE tbl_telefone (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  numero         INT NOT NULL,
  id_aluno       INT NOT NULL,
  
  CONSTRAINT FK_Telefone_Aluno
  FOREIGN KEY (id_aluno)
  REFERENCES tbl_aluno(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  
  CONSTRAINT CK_Telefone_FormatoNumero
  CHECK (numero REGEXP '^\\([0-9]{2}\\)[0-9]{5}-[0-9]{4}$')
);

CREATE TABLE tbl_professor (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  nome           VARCHAR(100) NOT NULL,
  disciplina     VARCHAR(65) NOT NULL,
  cpf            VARCHAR(11) NOT NULL,
  
  CONSTRAINT UN_Professor_CPF
  UNIQUE (cpf),
  CONSTRAINT CK_FormatoCPF
  CHECK (cpf REGEXP '^[0-9]{11}$')
);

CREATE TABLE tbl_turma (
  id             INT PRIMARY KEY AUTO_INCREMENT,
  nome           VARCHAR(45) NOT NULL
);

CREATE TABLE tbl_matricula (
  id_professor   INT NOT NULL,
  id_turma       INT NOT NULL,
  
  CONSTRAINT PK_Matricula
  PRIMARY KEY (id_professor, id_turma),
  CONSTRAINT FK_Matricula_Professor
  FOREIGN KEY (id_professor)
  REFERENCES tbl_professor(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
  
  CONSTRAINT FK_Matricula_Turma
  FOREIGN KEY (id_turma)
  REFERENCES tbl_turma(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE
);

CREATE TABLE tbl_sala (
  id_aluno INT,
  id_turma INT,
  id_professor INT,
  
  CONSTRAINT PK_Sala
  PRIMARY KEY (id_aluno, id_turma, id_professor),
  CONSTRAINT FK_Sala_Aluno
  FOREIGN KEY (id_aluno)
  REFERENCES tbl_aluno(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
  
  CONSTRAINT FK_Sala_Turma
  FOREIGN KEY (id_turma)
  REFERENCES tbl_turma(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
  
  CONSTRAINT FK_Sala_Professor
  FOREIGN KEY (id_professor)
  REFERENCES tbl_professor(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE
);