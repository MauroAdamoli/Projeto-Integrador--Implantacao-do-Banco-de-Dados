/*PI - Projeto Integrador 2° Parte*/

/*Criando o DATABASE* E CARREGANDO */
CREATE DATABASE IF NOT EXISTS db_GT_QV;
USE db_GT_QV;

/*SCRIP DDL */ 

/*Tabela usuários*/
CREATE TABLE IF NOT EXISTS usuario(
	CPF VARCHAR(15) UNIQUE NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(30) UNIQUE ,
    PRIMARY KEY(CPF)
);

/*Tabela de Redes Sociais*/
CREATE TABLE IF NOT EXISTS redes_sociais(
	CPF VARCHAR(15) NOT NULL,
    Telefone VARCHAR(25) UNIQUE NOT NULL,
    Facebook VARCHAR(20),
    Instagram VARCHAR(25),
    Tik_Tok VARCHAR(25),
    Linkedin VARCHAR(25),
    PRIMARY KEY(CPF),
    FOREIGN KEY(CPF) REFERENCES usuario(CPF)
);

/*Tabela Rotinas*/
CREATE TABLE IF NOT EXISTS rotinas(
	Atividade VARCHAR(30) NOT NULL,
	Hora_inicio TIME NOT NULL,
	Hora_fim TIME NOT NULL,
	CPF VARCHAR(15) NOT NULL,
	PRIMARY KEY(Atividade),
	FOREIGN KEY(CPF) REFERENCES usuario(CPF)
);

/*Tabela de Prioridades*/
CREATE TABLE IF NOT EXISTS prioridades(
	CPF VARCHAR(15) NOT NULL,
    Profissional VARCHAR(50),
    Financeira VARCHAR(50),
    Social VARCHAR(50),
    Saude VARCHAR(50),
    Qualidade_de_vida VARCHAR(50),
    PRIMARY KEY(CPF),
    FOREIGN KEY(CPF) REFERENCES usuario(CPF)
);

/*Tabela Cartão de Credito*/
CREATE TABLE IF NOT EXISTS cartao_credito(
	Numero VARCHAR(20) NOT NULL,
    Data_Validade DATE NOT NULL,
    Bandeira VARCHAR(20) NOT NULL,
    Nome_Proprietario VARCHAR(50) NOT NULL,
    CPF VARCHAR(15) NOT NULL,
    PRIMARY KEY(Numero),
    FOREIGN KEY(CPF) REFERENCES usuario(CPF)
);

/*Tabela de Afinidades*/
CREATE TABLE IF NOT EXISTS afinidades(
	Afinidades VARCHAR(50) NOT NULL,
    Tipo VARCHAR(20) NOT NULL,
    CPF VARCHAR(15) NOT NULL,
    PRIMARY KEY(Afinidades),
    FOREIGN KEY(CPF) REFERENCES usuario(CPF)
);

/*Tabela de Localização*/
CREATE TABLE IF NOT EXISTS localizao(
	Cidade VARCHAR(30) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    Estado VARCHAR(20) NOT NULL,
    Endereco VARCHAR(50) NOT NULL,
    Bairro VARCHAR(30) NOT NULL,
    Pais VARCHAR(20) NOT NULL,
    CPF VARCHAR(15) NOT NULL,
    PRIMARY KEY (Cidade, CEP),
    FOREIGN KEY(CPF) REFERENCES usuario(CPF)
);

ALTER TABLE localizao MODIFY COLUMN CEP VARCHAR(10) COMMENT 'Usuário pode separaro CEP com traço 00000-000';
ALTER TABLE redes_sociais MODIFY COLUMN Telefone VARCHAR(25) COMMENT 'Usuário pode usar traços ou () no DDD ou DDI';
ALTER TABLE cartao_credito MODIFY COLUMN Numero VARCHAR(20) COMMENT 'Rupos de 4 com espaços ou pontos/traços';
ALTER TABLE afinidades MODIFY COLUMN Tipo VARCHAR(20) COMMENT 'Define ou classifica o tipo da atividade informada';


