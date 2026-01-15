-- CONSULTAS/RELATÓRIOS DO SISTEMA

-- Supondo que você tenha N alunos, M turmas e M professores
SET @aluno_id := 0;
 
 -- Loop simulado a distribuição de alunos nas turmas
 -- Aqui cada aluno vai pra uma turma em sequência circular
 INSERT INTO tbl_sala (id_aluno, id_turma, id_professor)
 SELECT
    a.id AS id_aluno,
    t.id AS id_turma,
    p.id AS id_professor
FROM tbl_aluno a
JOIN tbl_turma t ON t.id = ((a.id - 1) % (SELECT COUNT(*) FROM tbl_turma)) + 1
JOIN tbl_professor p ON p.id = t.id; -- assumindo que professor com mesmo id da turma é responsável
  
  
SELECT
    a.nome AS aluno, 
    t.nome AS turma, 
    p.nome AS professor, 
    p.disciplina 
 FROM tbl_sala s 
 JOIN tbl_aluno a ON s.id_aluno = a.id 
 JOIN tbl_turma t ON s.id_turma = t.id 
 JOIN tbl_professor p ON s.id_professor = p.id 
 ORDER BY t.nome, a.nome;
 
SELECT
    a.nome AS 'Aluno:',
    t.nome AS 'Turma:',
    p.nome AS 'Professor:',
    p.disciplina AS 'Disciplina:',
    tel.numero AS 'Telefone:',
    CONCAT(e.logradouro, ', ', e.numero, ' ', IFNULL(e.complemento, ''), ' - ', e.cidade_uf, ' - CEP: ', e.cep) AS 'Endereco:'
FROM tbl_sala s
JOIN tbl_aluno a ON s.id_aluno = a.id
JOIN tbl_turma t ON s.id_turma = t.id
JOIN tbl_professor p ON s.id_professor = p.id
LEFT JOIN tbl_telefone tel ON a.id = tel.id_aluno
LEFT JOIN tbl_endereco e ON a.id = e.id_aluno
ORDER BY t.nome, a.nome;