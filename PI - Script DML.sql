/*CARGA DE DADOS DO BANCO - DML */

USE db_GT_QV;

/*INSERINDO DADOS NA TABELA USUÁRIO*/
INSERT INTO  usuario( CPF, Nome, Email) values 
('12344567899' , 'Giovani', 'giovaniandradeleal@gamil.com '),
('78945612333', 'Marina', 'marina@gmail.com'),
('45612300121', 'Luiz Cláudio', 'luizclaudio@hotmail.com'),
('32178900258', 'Mauro', 'mauro@yahoo.com'),
('25874100363', 'Willian', 'willian@bol.com');


/*INSERINDO DADOS NA TABELA REDES SOCIAIS*/
INSERT INTO redes_sociais(CPF, Telefone, Facebook, Instagram, Tik_Tok, Linkedin) VALUES 
('12344567899', '(27)96345-7825', 'www.linkfacebook', null,null,null),
('78945612333', '(11)23145-7828', null ,'www.instagran.com.br', null, null),
('45612300121', '(30)93123-1234', null,null,'www.tiktok.com',null ),
('32178900258', '(50)89745-4321', null,null,null, 'www.linkedin.com'),  
('25874100363', '(20)12345-6789', 'www.linkfacebook', 'www.instagran.com.br','www.tiktok.com','www.linkedin.com');

/*INSERINDO DADOS NA TABELA ROTINAS*/
INSERT INTO rotinas( Atividade,	Hora_inicio, Hora_fim, CPF) VALUES 
('Tomar Banho', '18:30','19:50','12344567899'),
('Entregar PI', '01:00', '01:15','78945612333'),
('Quiz Faculdade', '15:20', '16:30','45612300121'),
('Postagem no GIT', '19:02','19:45','32178900258'),  
('Comer', '12:00', '13:00','25874100363'); 

/*INSERINDO DADOS NA TABELA PRIORIDADES*/
INSERT INTO prioridades( CPF, Profissional, Financeira,Social, Saude, Qualidade_de_vida) VALUES 
('12344567899', 'Conseguir Emprego', 'Economizar','Andar de bicicleta', '2'),
('78945612333', 'Conseguir um aumento', 'comprar uma casa', 'correr', '3'),
('45612300121', 'Estagiar', 'Mudar de carro', 'Ficar bolado', '6'),
('32178900258', 'Ser promovido','Comprar moto', 'Ir a academia todos os dias', '7'),  
('25874100363', 'Conseguir Emprego', 'Economizar', 'correr', 5);

/*INSERINDO DADOS NA TABELA CARTAO_CREDITO */
INSERT INTO cartao_credito(Numero, Data_Validade, Bandeira,  Nome_Proprietario, CPF ) VALUES
('0000000000000000', '02/23','Master', 'Giovani', '12344567899'),
('1111111111111111', '12/24', 'Visa','Marina','78945612333'),
('2222222222222222', '05/29', 'Alcimir','45612300121'),
('3333333333333333', '06/26', 'Mauro', '32178900258'),  
('4444444444444444', '03/28', 'Vandival','25874100363');

/*INSERINDO DADOS NA TABELA AFINIDADES */
INSERT INTO afinidades(	Afinidades, Tipo, CPF ) VALUES 
('Contar Piada', 'Pessoal','12344567899'),
('Ler', 'Pessoal','78945612333'),
('Dançar', 'Pessoal','45612300121'),
('Falar em publico', 'Pessoal''32178900258'),  
('Cozinhar', 'Pessoal','25874100363');

/*INSERINDO DADOS NA TABELA LOCALIZACAO */
INSERT INTO localizao(Cidade, CEP, Estado, Endereco, Bairro, Pais, CPF) VALUES 
('Rio de Janeiro', '20102-020', 'Rio de Janeiro', 'Rua dos bobos, 21', 'Santa fé','Brasil','12344567899'),
('São Paulo', '20123-025', 'São Paulo', 'Rua dos fé, 102', 'Vila Rica','Brasil','78945612333'),
('Ubatuda', '23652-100', 'São Paulo', 'Rua do lobo, 85', 'Bairro do Surf','Brasil','45612300121'),
('São Luiz', '20102-020', 'Maranhão', 'Rua da paz,691', 'Vila Mauá','Brasil','32178900258'),  
('Salvador', '20102-020', 'Bahia', 'Avenida Afrânio Peixoto,36', 'Subúrbio Ferroviário','Brasil','25874100363');

