INSERT INTO tbl_aluno (nome, tipo) 
VALUES ('Eduardo Silva', 'M'), ('Yasmin Borges', 'F'), 
('Pedro Carlos', 'M'), ('Fernando Pimenta', 'M'),
('Gabriela Souza', 'F'), ('Eduardo Borges', 'M'), 
('Gabriel Charles', 'M'), ('Ana Beatriz', 'F'), 
('Ana luíza', 'F'), ('Anna paula', 'F'), 
('Anna Sofia', 'F'), ('Cláudia Pimentel', 'F'), 
('Diana Chaves', 'F'), ('Isabela Rocha', 'F'), 
('Daniel Francisco', 'M'),  ('Leidiane Michel', 'F'),
('Diego Pimenta', 'M'), ('Natan Ferraz', 'M'), 
('Hélio Perillo', 'M'), ('João Pedro da Silva', 'M'), 
('Sophia de Sousa', 'F'), ('Carlos Eduardo', 'M');

INSERT INTO tbl_endereco (id_aluno, logradouro, complemento, numero, cidade_uf, cep)
SELECT a.id, 'Rua Marechal Rondon', 'Bairro Jardim Floral', 34, 'Itapirapuã-GO', '76290000'
FROM tbl_aluno a 
WHERE a.nome = 'Anna Paula' AND a.tipo = 'F';
INSERT INTO tbl_endereco (id_aluno, logradouro, complemento, numero, cidade_uf, cep)
SELECT a.id, 'Av Joaquim Pimenta', 'St Bela Vista', '158', 'Pirinópolis-GO', '23456000'
FROM tbl_aluno a
WHERE a.nome = 'Diego Pimenta' AND a.tipo = 'M';
INSERT INTO tbl_endereco (id_aluno, logradouro, complemento, numero, cidade_uf, cep)
SELECT a.id, 'Rua Joaquim Xavier de Godoy', ' Qd 16 Lt 08', 6547, 'Cascavel-SP', '45897002'
FROM tbl_aluno a
WHERE a.nome = 'Yasmin Borges' AND a.tipo = 'F';
INSERT INTO tbl_endereco (id_aluno, logradouro, cidade_uf, cep)
SELECT a.id, 'AV Jardim Eldorado', 'Goiânia-GO', '26294000'
FROM tbl_aluno a
WHERE a.nome = 'Natan Ferraz' AND a.tipo = 'M';
INSERT INTO tbl_endereco (id_aluno, logradouro, numero, cidade_uf, cep)
SELECT a.id, 'Rua Pimenta Verde', 156, 'Rio de Janeiro-RJ', '15648001'
FROM tbl_aluno a
WHERE a.nome = 'Anna Sofia' AND a.tipo = 'F';
INSERT INTO tbl_endereco (id_aluno, logradouro, complemento, cidade_uf, cep)
SELECT a.id, 'Av Pedro Manco', 'St O Calango', 'Palmas-TO', '56189005'
FROM tbl_aluno a
WHERE a.nome = 'Gabriel Charles' AND a.tipo = 'M';
USE db_sistema_escola_ensino_medio;

INSERT INTO tbl_telefone (numero, id_aluno)
VALUES ('(62)01234-5678',1),('(62)12345-6789',2),
('(62)23456-7890',3),('(62)34567-8901',4),
('(62)45678-9012',5),('(62)56789-0123',6),
('(62)67890-1234',7),('(62)78901-2345',8),
('(62)89012-3456',9),('(62)90123-4567',10),
('(62)09876-5432',11),('(62)98765-4321',12),
('(62)87654-3210',13),('(62)76543-2109',14),
('(62)65432-1098',15),('(62)54321-0987',16),
('(62)43210-9876',17),('(62)32109-8765',18),
('(62)21098-7654',19),('(62)10987-6543',20),
('(62)12345-9876',21),('(62)23456-8765',22);

INSERT INTO tbl_professor (nome, disciplina, cpf)
VALUES ('João Pereira','Português','01234567890'),
('Maria Fernandes','Matemática','12345678901'),
('Pedro Guimarães','Educação Física','23456789012'),
('José Paulo Coutinho','Física','34567890123'),
('Paulo da Silva','Filosofia','45678901234'),
('Maria Clara Neves','Química','56789012345'),
('Murilo Ferreira','Inglês','67890123456'),
('Gustavo Gomes','Biologia','78901234567'),
('Fernando Souza','Geografia','89012345678'),
('José Matos','Sociologia','90123456789'),
('Clara Pereira','História','09876543210'),
('Alice Batista','Artes','87654321098');

INSERT INTO tbl_turma (nome) 
VALUES ('1º Ano A'), ('1º Ano B'), ('1º Ano C'), 
('2º Ano A'), ('2º Ano B'), ('2º Ano C'),
('3º Ano A'), ('3º Ano B'), ('3º Ano C');
