insert into hospitais (nome, morada) values
('Hospital Central de Lisboa', 'Av. da Liberdade, 100 - Lisboa'),
('Hospital de São João', 'Rua da Constituição, 500 - Porto'),
('Hospital Distrital de Coimbra', 'Av. Fernão de Magalhães, 200 - Coimbra');

insert into enfermarias (sigla, num_camas, codhospital) values
('Enf-A1', 20, 1),
('Enf-B2', 15, 1),
('Enf-C1', 25, 2),
('Enf-D3', 18, 3);

insert into empregados (nome, morada, telefone, numordem, categoria, vencimento, bi, codhospital) values
('João Pereira', 'Rua das Flores, 12 - Lisboa', '912345678', 101, 'Médico', 3200.00, 12345678, 1),
('Maria Santos', 'Av. Almirante Reis, 50 - Lisboa', '913456789', 102, 'Enfermeira', 1900.00, 23456789, 1),
('Carlos Mota', 'Rua do Bonfim, 80 - Porto', '914567890', 103, 'Médico', 3500.00, 34567890, 2),
('Ana Lopes', 'Rua da Universidade, 25 - Coimbra', '915678901', 104, 'Enfermeira', 2000.00, 45678901, 3),
('Ricardo Silva', 'Rua das Oliveiras, 10 - Lisboa', '916789012', 105, 'Auxiliar', 1300.00, 56789012, 1);

insert into empregados_enfermarias (funcao, codempregado, codenfermaria) values
('Chefe de Enfermaria', 2, 1),
('Assistente Médico', 1, 1),
('Médico Responsável', 3, 3),
('Enfermeira de Turno', 4, 4),
('Auxiliar de Apoio', 5, 2);

insert into medicos (codmedico, especialidade, miope, codempregado) values
(1, 'Cardiologia', false, 1),
(2, 'Neurologia', true, 3);

insert into enfermeiros (codenfermeiro, codempregado) values
(1, 2),
(2, 4);

insert into doentes (nome, morada, telefone, numhospital, bi, codhospital) values
('Paulo Costa', 'Rua Verde, 30 - Lisboa', '917890123', 5001, 67890123, 1),
('Sofia Bernardes', 'Av. Atlântica, 40 - Porto', '918901234', 5002, 78901234, 2),
('Rita Nunes', 'Rua da Estrela, 60 - Coimbra', '919012345', 5003, 89012345, 3);

insert into diagnosticos (descricao, coddoente) values
('Hipertensão Arterial Controlada', 1),
('Epilepsia Ligeira', 2),
('Anemia Ferropénica', 3);

insert into laboratorios (nome) values
('LabVida Diagnósticos'),
('Análises Médicas Porto'),
('BioSaúde Coimbra');

insert into analises (tipo, dataanalise, resultado, coddoente, codlaboratorio) values
('Sangue', '2025-03-10', 'Hemoglobina dentro dos valores normais', 3, 3),
('Urina', '2025-02-25', 'Sem sinais de infeção', 1, 1),
('ECG', '2025-01-15', 'Leve arritmia detetada', 2, 2);
