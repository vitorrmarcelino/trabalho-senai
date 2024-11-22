CREATE DATABASE trabalho_senai;
USE trabalho_senai;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE chamados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fk_cliente INT NOT NULL,
    descricao TEXT NOT NULL,
    criticidade ENUM('baixa', 'média', 'alta') NOT NULL,
    status ENUM('aberto', 'em andamento', 'resolvido') DEFAULT 'aberto',
    data_abertura DATETIME DEFAULT CURRENT_TIMESTAMP,
    fk_colaborador INT,
    FOREIGN KEY (fk_cliente) REFERENCES clientes(id),
    FOREIGN KEY (fk_colaborador) REFERENCES colaboradores(id) 
);
