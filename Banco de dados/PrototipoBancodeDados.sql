create database nosoulcompany;
use nosoulcompany;

create table Endereco (
	idEndereco int primary key auto_increment,
	cidade varchar(45),
    estado char(2),
    CEP char(9),
    rua varchar(60),
    numero char(6),
    bairro varchar(60)
);

create table Usuario (
	idUsuario int primary key auto_increment,
	nome varchar(45),
    CPF char(30),
    dataNasc date,
    sexo varchar(20),
    email varchar(45),
    senha varchar(45),
    telefone varchar(20)
) auto_increment = 10;

create table Produto (
	idProduto int primary key,
    nome varchar(45),
    preco varchar(45),
    categoria varchar(45),
    tamanho varchar(45)
) auto_increment = 100;

create table  UsuarioProduto (
	primary key (fkUsuario, fkProduto),
    fkUsuario int,
    foreign key(fkUsuario) references Usuario(idUsuario),
	fkProduto int, 
    foreign key(fkProduto) references Produto(idProduto),
    quantidade varchar(45),
    data_compra date
) auto_increment = 1000;

create table usuario_endereco (
	primary key (fkUsuario, fkEndereco),
	fkUsuario int,
    fkEndereco int
) auto_increment = 10000;

create table suporte (
	idUsuario int primary key,
	nome varchar(45),
    email varchar(45),
    mensagem varchar(500),
    fkUsuario int,
    foreign key(fkUsuario) references usuario(idUsuario)
);

insert into Endereco values (1, 'Rua Fortuna de Minas', 'Jardim Arize', 739, 'São Paulo', 'SP'),
							(2, 'Rua dos Soldados', 'Jardim Europa', 199, 'Dois Vizinhos', 'PR'),
							(3, 'Rua Rosas de Ouro', 'Jardim América', 435, 'São Bernardo do Campo', 'SP'),
							(4, 'Rua dos bandeirantes', 'Jardim Mineiro', 634, 'São Roque', 'SP'),
							(5, 'Rua das Orcas', 'Jardim das Rosas', 327, 'São Carlos', 'SP'),
							(6, 'Rua Três de Maio', 'Jardim Azul', 589, 'São João de Meriti', 'RJ'),
							(7, 'Rua Nove de Julho', 'Jardim Imperador', 857, 'Manaquiri', 'AM'),
							(8, 'Rua Principal', 'Jardim Liberdade', 585, 'Belo Horizonte', 'MG'),
							(9, 'Rua Quatro', 'Jardim Roque', 971, 'São Paulo', 'SP'),
							(10, 'Rua da Paz', 'Jardim São Lucas', 162, 'Contagem', 'MG');

insert into Usuario values (1, 'Jeremy Freitas', '47351953864', '2003-01-27', 'Masculino', 'jeremy_ph@outlook.com', 'Jeremy12345', '(55)11-93229-7681', 1),
						   (2, 'Kelvin Paduin Soeiro', '48907345215', '2003-01-28', 'Masculino', 'kelvin_soeiro@outlook.com', 'Kelvin12345', '(46)11-94623-5632', 2),
						   (3, 'Lucas Almeida', '56783424531', '2005-04-02', 'Masculino', 'lucas_almeida@gmail.com', 'lucas534534', '(55)11-96468-5842', 3),
						   (4, 'Bruno de Faria Bonassi', '24567890115', '2000-09-12', 'Masculino', 'bonassi@hotmail.com', 'bonassi757567', '(55)11-92453-8902', 4),
						   (5, 'Carlos Henrique da Silva', '35611236542', '2002-01-28', 'Masculino', 'henrique_carlos@outlook.com', 'carlosh124326', '(55)11-93567-5690', 5),
						   (6, 'Jean Carlo Magno', '27622234562', '1994-02-19', 'Masculino', 'jean_carlo@hotmail.com', 'jeancar97646', '(21)11-97823-5431', 6),
						   (7, 'Sarah Reis', '26947685638', '1993-09-16', 'Feminino', 'reis_sarah@gmail.com', 'sarah53465', '(92)11-95728-5576', 7),
						   (8, 'Pedro Ferreira', '58907764120', '2007-08-08', 'Masculino', 'pedro_f@outlook.com', 'pedro43265', '(31)11-94689-4642', 8),
						   (9, 'Leticia Maia', '54678324223', '2006-06-02', 'Feminino', 'le_maia@gmail', 'lemaia876876', '(55)11-96793-5031', 9),
						   (10, 'Amanda Menezes', '35679861223', '2001-11-11', 'Feminino', 'amanda_menezes@outlook.com', 'amanda2324', '(31)11-91643-6682', 10);
                           
insert into Produto values (1, 'Camisa estampa Logo' , '60.00', 'Camisas', 'XXL'),
						   (2, 'Regata estampa Logo', '50.00', 'Regatas', 'XL'),
						   (3, 'Camisa estampa Anarchy', '60.00', 'Camisas', 'L'),
						   (4, 'Calça Lilith', '40.00', 'Calças', 'M'),
						   (5, 'Blusa moletom noSoul', '100.00', 'Blusas', 'XL'),
						   (6, 'Anel Anarchy', '20.00', 'Acessórios', '21'),
						   (7, 'Brinco Ghost', '15.00', 'Acessórios', '18mm'),
						   (8, 'Camisa estampa Yu-gi', '60.00', 'Camisas', 'M'),
						   (9, 'Blusa moletom Lilith', '100.00', 'Blusas', 'XS');
                           
insert into UsuarioProduto values (1, 4, 1, '2021-03-13'),
								  (2, 5, 1, '2021-02-15'),
								  (3, 2, 1, '2020-12-26'),
								  (4, 6, 2, '2021-01-17'),
								  (5, 9, 1, '2020-12-27'),
								  (6, 3, 1, '2020-11-14'),
								  (7, 8, 3, '2021-01-23'),
								  (8, 5, 1, '2020-11-22'),
								  (9, 9, 1, '2021-04-01'),
								  (10, 4, 2, '2021-05-09');


select * from endereco;
select * from usuario;
select * from produto;
select * from suporte;
select * from UsuarioProduto;
select * from usuario_endereco;
select * from endereco, usuario, usuario_endereco;

drop database nosoulcompany;