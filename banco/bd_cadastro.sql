-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jul-2019 às 04:24
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_cadastro`
--
CREATE DATABASE IF NOT EXISTS `bd_cadastro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cw_admin`
--

DROP TABLE IF EXISTS `cw_admin`;
CREATE TABLE IF NOT EXISTS `cw_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nome_admin` varchar(100) NOT NULL,
  `nguerra_admin` varchar(30) NOT NULL,
  `login_admin` varchar(20) NOT NULL,
  `senha_admin` varchar(10) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `status_admin` enum('Ativo','Inativo') NOT NULL DEFAULT 'Ativo',
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `login_admin` (`login_admin`),
  KEY `id_cargo` (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cw_admin`
--

INSERT INTO `cw_admin` (`id_admin`, `nome_admin`, `nguerra_admin`, `login_admin`, `senha_admin`, `id_cargo`, `status_admin`) VALUES
(6, 'Felipe Gonçalves de Marins', 'Gonçalves', '17351807779', '19951203', 33, 'Ativo'),
(12, 'Allan Christian Xavier Apolinario', 'Allan ', '17695689726', 'aLLAN123', 33, 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cw_cargo`
--

DROP TABLE IF EXISTS `cw_cargo`;
CREATE TABLE IF NOT EXISTS `cw_cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(50) NOT NULL,
  `abr_cargo` varchar(20) NOT NULL,
  `ant_cargo` int(11) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cw_cargo`
--

INSERT INTO `cw_cargo` (`id_cargo`, `nome_cargo`, `abr_cargo`, `ant_cargo`) VALUES
(2, 'General de Exército', 'Gen Ex', 2),
(3, 'General de Divisão', 'Gen Div', 3),
(4, 'General de Brigada', 'Gen Bda', 4),
(5, 'Coronel', 'Cel', 5),
(6, 'Tenente Coronel', 'Ten Cel', 6),
(7, 'Major', 'Maj', 7),
(8, 'Capitão', 'Cap', 8),
(9, '1º Tenente', '1º Ten', 9),
(10, '2º Tenente', '2º Ten', 10),
(11, 'Aspirante a Oficial', 'Asp', 11),
(12, 'Cadete 4º Ano', 'Cad', 12),
(13, 'Subtenente', 'S Ten', 18),
(14, 'Primeiro Sargento', '1º Sgt', 19),
(15, 'Segundo Sargento', '2º Sgt', 20),
(16, 'Terceiro Sargento', '3º Sgt', 21),
(19, 'Taifeiro-mor', 'TM', 30),
(22, 'General Exército Inativo', 'Gen Ex Inativo', 1),
(23, 'Cadete 1º, 2º, 3º Ano', 'Cad', 13),
(24, 'Aluno CPOR/NPOR', 'AL', 14),
(25, 'Aluno ESFS', 'AL', 15),
(26, 'Aluno EPC 3º Ano', 'AL', 16),
(27, 'Aluno EPC 1º, 2º Ano', 'AL', 17),
(28, 'Cabo Engajado', 'CB', 22),
(29, 'Cabo não engajado', 'CB Ev', 23),
(30, 'Soldado 1ª Classe (Pqdt)', 'Sd', 24),
(31, 'Soldado 2ª Classe (Clarineta / Corneteiro)', 'Sd', 25),
(32, 'Soldado 3ª Classe (Clarim / Corneteiro)', 'Sd', 26),
(33, 'Soldado Engajado Especializado', 'Sd', 27),
(34, 'Soldado não engajado', 'Sd Ev', 29),
(36, 'Taifeiro 1ª Classe', 'TM', 31),
(37, 'Taifeiro 2ª Classe', 'TM', 32),
(38, 'Soldado não especializado', 'Sd', 28),
(39, 'Servidor Civíl', 'SC', 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cw_missao`
--

DROP TABLE IF EXISTS `cw_missao`;
CREATE TABLE IF NOT EXISTS `cw_missao` (
  `id_missao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_missao` varchar(100) NOT NULL,
  `conteudo_missao` varchar(500) NOT NULL,
  `dataini_missao` varchar(10) NOT NULL,
  `datafin_missao` varchar(10) NOT NULL,
  `obs_missao` varchar(300) NOT NULL,
  `status_missao` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_missao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cw_admin`
--
ALTER TABLE `cw_admin`
  ADD CONSTRAINT `cw_admin_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cw_cargo` (`id_cargo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
