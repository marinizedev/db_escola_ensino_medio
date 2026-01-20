# Banco de Dados — Escola de Ensino Médio

Projeto de banco de dados relacional desenvolvido em **MySQL** para um sistema fictício de escola de ensino médio. Criado com fins **educacionais e de portfólio**, abordando modelagem, relacionamentos, integridade referencial e consultas SQL.

---

## Objetivo

Modelar e implementar um banco de dados relacional que represente o funcionamento básico de uma escola de ensino médio, contemplando alunos, professores, turmas, matrículas e seus respectivos relacionamentos.

---

## Estrutura do Banco de Dados

O banco é composto pelas seguintes tabelas:

- **tbl_aluno** — Armazena os dados dos alunos
- **tbl_endereco** — Endereço vinculado ao aluno
- **tbl_telefone** — Telefone vinculado ao aluno
- **tbl_professor** — Dados dos professores e disciplinas
- **tbl_turma** — Identificação das turmas
- **tbl_sala** — Tabela associativa relacionada à organização das turmas
- **tbl_matricula** — Tabela associativa entre professor e turma

O modelo foi construído respeitando **integridade referencial**, utilizando chaves primárias e estrangeiras.

---

## Estrutura do Projeto

- **scripts/**
    - ddl_schema.sql -> Criação das tabelas e constraints
    - dml_inserts.sql -> Povoamento das tabelas
    - dml_queries.sql -> Consultas e relatórios SQL
- **reports/**
    - Relatórios visuais gerados a partir das consultas

---

## Tecnologias utilizadas

- MySQL
- MySQL wORKBENCH
- SQL (DDL e DML)
- Git & GitHub

---

## Organização dos Scripts

- ddl_schema.sql
- dml_inserts.sql
- dml_queries.sql

- **DDL**: Criação das tabelas e relacionamentos
- **DML**: Inserção de dados fictícios
- **Queries**: Consultas SQL para análise e validação do modelo

---

### Observações
Todos os dados utilizados neste projeto são **fictício** e foram criados exclusivamente para fins educacionais, não representando pessoas ou instituuições reais.

---

## Considerações Finais

Este projeto faz parte do meu processo de aprendizado e evolução na área de **banco de dados e dados**, com foco em boas práticas de modelagem e SQL.

---

## Autora

**Marinize Santana**
Estudante de Análise e Desenvolvimento de Sistemas
Foco em **Banco de Dados, SQL, Modelagem Dimensional, Business Intelligence e Back-end**.

---