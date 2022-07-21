
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

create table biblioteca.emprestimos (
  `Id` int NOT NULL,
  `DataEmprestimo` datetime,
  `DataDevolucao` datetime,
  `NomeUsuario` varchar(1000),
  `Telefone` varchar(1000),
  `Devolvido` int,
  `LivroId` int);
alter table biblioteca.emprestimos
  add primary key (`Id`),
  add key `IX_Emprestimos_LivroId` (`LivroId`);

alter table biblioteca.emprestimos
  modify `Id` int not null auto_increment, auto_increment=1;
  



insert into biblioteca.emprestimos (`Id`, `DataEmprestimo`, `DataDevolucao`, `NomeUsuario`, `Telefone`, `Devolvido`, `LivroId`) VALUES
(1, '2022-06-01 00:00:00.000000', '2022-06-23 00:00:00.000000', 'mendoça', '587457874', 2, 1),
(2, '2022-06-03 00:00:00.000000', '2022-06-29 00:00:00.000000', 'fred', '54542121', 0, 1),
(3, '2022-06-07 00:00:00.000000', '2022-06-10 00:00:00.000000', 'lidia', '54548787', 7, 5),
(4, '2022-06-08 00:00:00.000000', '2022-06-09 00:00:00.000000', 'perola', '54548787', 6, 1),
(5, '2022-06-09 00:00:00.000000', '2022-06-11 00:00:00.000000', 'luanda', '54548787', 2, 9),
(6, '2022-06-15:00:00.000000', '2022-06-17 00:00:00.000000', 'bruna', '54548787', 8, 0),
(7, '2022-06-17 00:00:00.000000', '2022-06-19 00:00:00.000000', 'duquesa', '54548787', 7, 1),
(8, '2022-06-20 00:00:00.000000', '2022-06-20 00:00:00.000000', 'lindy', '54548787', 1, 3),
(9, '2022-06-22 00:00:00.000000', '2022-06-22 00:00:00.000000', 'amada', '54548787', 4, 4),
(10, '2022-06-25 00:00:00.000000', '2022-06-25 00:00:00.000000', 'brilho', '54548787', 5, 6);


CREATE TABLE biblioteca.livros (
  `Id` int,
  `Titulo` varchar(1000),
  `Autor` varchar(1000),
  `Ano` int);
  
  alter table biblioteca.livros
  add primary key (`Id`);
alter table biblioteca.livros
  modify `Id` int not null auto_increment, AUTO_INCREMENT=1;
  


INSERT INTO biblioteca.livros (`Id`, `Titulo`, `Autor`, `Ano`) VALUES
(1, 'o corvo', 'washinton', 1999),
(2, 'a terra', 'planeta agua', 1975),
(3, 'taça e madeira', 'congo', 2010),
(4, 'ibovespa', 'brasil', 2022),
(5, 'harry potter', 'katty', 1996),
(6, 'a queda', 'veronica', 2005),
(7, 'besouro verde', 'transparecer', 1994),
(8, 'scot pilgrem', 'jennifer', 2012),
(9, 'el dourado', 'dream', 2002),
(10, 'vagabundos e o trem', 'pericles', 2000),
(11, 'dom casmurro', 'vicente', 2016),
(12, 'a familia addams', 'gomes', 1974),
(13, 'a queda', 'bigbig', 2020),
(14, '2012', 'Lopes', 1982),
(15, 'o caruso macuto', 'caio', 2001),
(16, 'pele de cera', 'Demitre', 2004);


CREATE TABLE biblioteca.usuarios (
  `Id` int,
  `Nome` varchar(1000),
  `Login` varchar(1000),
  `Senha` varchar(100),
  `Tipo` int NOT NULL);
  
  alter table biblioteca.usuarios
  add primary key (`Id`);
alter table biblioteca.usuarios
  modify `Id` int not null auto_increment, auto_increment=1;

insert into biblioteca.usuarios (`Id`, `Nome`, `Login`, `Senha`, `Tipo`) value
(15, 'Administrador', 'adm', '202cb962ac59075b964b07152d234b70', 0),
(20, 'leila', 'll', '202cb962ac59075b964b07152d234b70', 0),
(25, 'barbara', 'ba', '202cb962ac59075b964b07152d234b70', 1),
(30, 'luz', '987', '202cb962ac59075b964b07152d234b70', 1);

create table biblioteca.__efmigrationshistory (
  `Id` int not null,
  `MigrationId` varchar(1000) not null,
  `ProductVersion` varchar(1000) not null);
  
alter table biblioteca.__efmigrationshistory
  add primary key (`Id`);
 alter table biblioteca.__efmigrationshistory
  modify `Id` int not null auto_increment, auto_increment=1;
  
insert into biblioteca.__efmigrationshistory (`MigrationId`, `ProductVersion`) values
('20220604031429_Cria_BancoDados', '3.0.0'),
('20220607193313_ChangeCampoDB', '3.0.0'),
('20220607194655_ChangeCampoDBTableEmprestimo', '3.0.0');





commit;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


