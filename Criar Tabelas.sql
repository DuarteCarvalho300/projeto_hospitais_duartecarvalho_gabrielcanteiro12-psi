create table hospitais (
    codhospital int primary key auto_increment,
    nome varchar(100),
    morada varchar(100));

create table enfermarias (
    codenfermaria int primary key auto_increment,
    sigla varchar(10),
    num_camas int,
    codhospital int,
    foreign key (codhospital) references hospitais (codhospital));

create table empregados (
    codempregado int primary key auto_increment,
    nome varchar(100),
    morada varchar(150),
    telefone varchar(20),
    numordem int,
    categoria varchar(50),
    vencimento decimal(10,2),
    bi int,
    codhospital int,
    foreign key (codhospital) references hospitais (codhospital));

create table empregados_enfermarias (
    funcao varchar(100),
    codempregado int,
    foreign key (codempregado) references empregados (codempregado),
    codenfermaria int,
    foreign key (codenfermaria) references enfermarias (codenfermaria));

create table medicos (
    codmedico int primary key,
    especialidade varchar(100),
    miope boolean,
    codempregado int,
    foreign key (codempregado) references empregados (codempregado));

create table enfermeiros (
    codenfermeiro int primary key,
    codempregado int,
    foreign key (codempregado) references empregados (codempregado));

create table doentes (
    coddoente int primary key auto_increment,
    nome varchar(100),
    morada varchar(150),
    telefone varchar(20),
    numhospital int,
    bi int,
    codhospital int,
    foreign key (codhospital) references hospitais (codhospital));

create table diagnosticos (
    coddiagnostico int primary key auto_increment,
    descricao varchar(200),
    coddoente int,
    foreign key (coddoente) references doentes (coddoente));

create table laboratorios (
    codlaboratorio int primary key auto_increment,
    nome varchar(100));

create table analises (
    codanalise int primary key auto_increment,
    tipo varchar(100),
    dataanalise date,
    resultado varchar(200),
    coddoente int,
    foreign key (coddoente) references doentes (coddoente),
    codlaboratorio int,
    foreign key (codlaboratorio) references laboratorios (codlaboratorio));
