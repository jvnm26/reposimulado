-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2026 at 12:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simulado`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternativa`
--

CREATE TABLE `alternativa` (
  `id` int(11) NOT NULL,
  `idpergunta` int(11) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `certo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alternativa`
--

INSERT INTO `alternativa` (`id`, `idpergunta`, `texto`, `certo`) VALUES
(1, 121, 'A aceleração é a variação da velocidade pelo tempo.', 1),
(2, 121, 'A aceleração corresponde à velocidade constante.', 0),
(3, 121, 'A aceleração depende apenas da massa.', 0),
(4, 121, 'A aceleração é sempre zero.', 0),
(5, 122, 'Um corpo tende a manter seu estado de repouso ou movimento.', 1),
(6, 122, 'Todo corpo em movimento para naturalmente.', 0),
(7, 122, 'A força é proporcional à aceleração.', 0),
(8, 122, 'A ação gera uma reação contrária.', 0),
(9, 123, 'Massa é constante e peso depende da gravidade.', 1),
(10, 123, 'Massa e peso são sempre iguais.', 0),
(11, 123, 'Peso não depende da gravidade.', 0),
(12, 123, 'Massa varia conforme o planeta.', 0),
(13, 124, 'É a soma vetorial de todas as forças aplicadas.', 1),
(14, 124, 'É sempre igual à força peso.', 0),
(15, 124, 'Não depende da direção das forças.', 0),
(16, 124, 'Existe apenas uma força em um corpo.', 0),
(17, 125, 'Possui aceleração constante.', 1),
(18, 125, 'A velocidade é sempre zero.', 0),
(19, 125, 'Não existe aceleração.', 0),
(20, 125, 'O movimento ocorre apenas em repouso.', 0),
(21, 126, 'A incógnita aparece no expoente.', 1),
(22, 126, 'A incógnita aparece no denominador.', 0),
(23, 126, 'A equação não possui expoentes.', 0),
(24, 126, 'Toda equação exponencial é linear.', 0),
(25, 127, 'Logaritmo é o expoente de uma potência.', 1),
(26, 127, 'Logaritmo é sempre negativo.', 0),
(27, 127, 'Logaritmo não possui base.', 0),
(28, 127, 'Logaritmo é uma soma.', 0),
(29, 128, 'O resultado é um intervalo de valores.', 1),
(30, 128, 'O resultado é sempre um número.', 0),
(31, 128, 'Não possuem solução.', 0),
(32, 128, 'São iguais às equações.', 0),
(33, 129, 'Representa a relação entre variáveis.', 1),
(34, 129, 'Mostra apenas números negativos.', 0),
(35, 129, 'Não possui interpretação.', 0),
(36, 129, 'Serve apenas para estética.', 0),
(37, 130, 'É uma razão com denominador 100.', 1),
(38, 130, 'É sempre maior que 100.', 0),
(39, 130, 'Não pode ser calculada.', 0),
(40, 130, 'Não depende de frações.', 0),
(41, 131, 'Analisa o sentido e a linguagem do texto.', 1),
(42, 131, 'Avalia apenas a gramática.', 0),
(43, 131, 'Ignora figuras de linguagem.', 0),
(44, 131, 'Não considera o contexto.', 0),
(45, 132, 'Define a intenção comunicativa do texto.', 1),
(46, 132, 'Classifica apenas verbos.', 0),
(47, 132, 'Depende do tamanho do texto.', 0),
(48, 132, 'Não possui categorias.', 0),
(49, 133, 'Relacionam ideias de forma lógica.', 1),
(50, 133, 'Tratam apenas de ortografia.', 0),
(51, 133, 'Não interferem no sentido.', 0),
(52, 133, 'São conceitos iguais.', 0),
(53, 134, 'Mostra diferentes formas de uso da língua.', 1),
(54, 134, 'Elimina normas gramaticais.', 0),
(55, 134, 'É erro de linguagem.', 0),
(56, 134, 'Não existe no português.', 0),
(57, 135, 'Variam conforme o contexto.', 1),
(58, 135, 'São sempre iguais.', 0),
(59, 135, 'Não possuem regras.', 0),
(60, 135, 'Existem apenas na escrita.', 0),
(61, 136, 'Introduziu a mecanização da produção.', 1),
(62, 136, 'Eliminou o trabalho humano.', 0),
(63, 136, 'Aconteceu apenas no Brasil.', 0),
(64, 136, 'Não trouxe mudanças sociais.', 0),
(65, 137, 'Buscava expansão econômica e territorial.', 1),
(66, 137, 'Promovia igualdade entre nações.', 0),
(67, 137, 'Eliminou conflitos.', 0),
(68, 137, 'Não teve impactos.', 0),
(69, 138, 'Foi marcado por crises e instabilidade.', 1),
(70, 138, 'Foi um período de paz.', 0),
(71, 138, 'Não houve crises econômicas.', 0),
(72, 138, 'Não influenciou guerras.', 0),
(73, 139, 'Defendia regimes autoritários.', 1),
(74, 139, 'Promovia democracia plena.', 0),
(75, 139, 'Garantia liberdade total.', 0),
(76, 139, 'Não teve impacto político.', 0),
(77, 140, 'Relaciona passado e presente.', 1),
(78, 140, 'Analisa apenas datas.', 0),
(79, 140, 'Ignora o contexto atual.', 0),
(80, 140, 'Não permite interpretação.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pergunta`
--

CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `idsimulado` int(11) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pergunta`
--

INSERT INTO `pergunta` (`id`, `idprofessor`, `idsimulado`, `texto`) VALUES
(121, 5, 5, 'Questão 3: Calcule a aceleração do corpo.'),
(122, 5, 5, 'Questão 4: Explique a lei da inércia.'),
(123, 5, 5, 'Questão 5: Diferencie massa e peso.'),
(124, 5, 5, 'Questão 6: Calcule a força resultante.'),
(125, 5, 5, 'Questão 7: Explique o movimento uniformemente variado.'),
(126, 1, 6, 'Questão 1: Resolva uma equação exponencial.'),
(127, 1, 6, 'Questão 2: Calcule logaritmos simples.'),
(128, 1, 6, 'Questão 3: Resolva inequações.'),
(129, 1, 6, 'Questão 4: Analise um gráfico de função.'),
(130, 1, 6, 'Questão 5: Calcule porcentagem.'),
(131, 2, 7, 'Questão 1: Interprete um poema contemporâneo.'),
(132, 2, 7, 'Questão 2: Identifique a tipologia textual.'),
(133, 2, 7, 'Questão 3: Analise coesão e coerência.'),
(134, 2, 7, 'Questão 4: Explique variação linguística.'),
(135, 2, 7, 'Questão 5: Diferencie linguagem formal e informal.'),
(136, 3, 8, 'Questão 1: Explique a Revolução Industrial.'),
(137, 3, 8, 'Questão 2: Cite consequências do imperialismo.'),
(138, 3, 8, 'Questão 3: Analise o período entre guerras.'),
(139, 3, 8, 'Questão 4: Explique o surgimento do nazifascismo.'),
(140, 3, 8, 'Questão 5: Relacione fatos históricos ao contexto atual.');

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Danielly Mesquita', 'daniellymesquista@gmail.com', '123'),
(2, 'Rafael Loyola de Souza Fretes', 'rafael@gmail.com', 'rafaloyola123'),
(3, 'Julio Agosto Setembro de Souza Lima', '070809@gmail.com', 'jgs789\r\n'),
(4, 'Diego Pereira de Matos Freitas', 'diegomatos@gmail.com', 'matosfreitas123'),
(5, 'Sandro Oliveira Schneider', 'schneider445@gmail.com', 'schneider123'),
(6, 'admin', 'adm@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `simulado`
--

CREATE TABLE `simulado` (
  `id` int(11) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `simulado`
--

INSERT INTO `simulado` (`id`, `idprofessor`, `nome`, `data`) VALUES
(5, 1, 'Prova de Seila o que', '2026-06-07'),
(6, 1, 'Simulado Matemática I', '2026-02-01'),
(7, 2, 'Simulado Português I', '2026-02-05'),
(8, 3, 'Simulado História I', '2026-02-10'),
(9, 4, 'Simulado Geografia I', '2026-02-15'),
(10, 5, 'Simulado Física I', '2026-02-20'),
(11, 1, 'Simulado Matemática II', '2026-03-01'),
(12, 2, 'Simulado Português II', '2026-03-05'),
(13, 3, 'Simulado História II', '2026-03-10'),
(14, 4, 'Simulado Geografia II', '2026-03-15'),
(15, 5, 'Simulado Física II', '2026-03-20'),
(16, 1, 'Simulado Matemática ENEM', '2026-04-01'),
(17, 2, 'Simulado Linguagens ENEM', '2026-04-05'),
(18, 3, 'Simulado Ciências Humanas ENEM', '2026-04-10'),
(19, 4, 'Simulado Ciências da Natureza ENEM', '2026-04-15'),
(20, 5, 'Simulado Redação ENEM', '2026-04-20'),
(21, 1, 'Simulado Revisão Geral I', '2026-05-01'),
(22, 2, 'Simulado Revisão Geral II', '2026-05-05'),
(23, 3, 'Simulado Revisão Geral III', '2026-05-10'),
(24, 4, 'Simulado Final Preparatório', '2026-05-15'),
(25, 5, 'Simulado Avaliação Final', '2026-05-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternativa`
--
ALTER TABLE `alternativa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpergunta` (`idpergunta`);

--
-- Indexes for table `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprofessor` (`idprofessor`),
  ADD KEY `idsimulado` (`idsimulado`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simulado`
--
ALTER TABLE `simulado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprofessor` (`idprofessor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternativa`
--
ALTER TABLE `alternativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `simulado`
--
ALTER TABLE `simulado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternativa`
--
ALTER TABLE `alternativa`
  ADD CONSTRAINT `alternativa_ibfk_1` FOREIGN KEY (`idpergunta`) REFERENCES `pergunta` (`id`);

--
-- Constraints for table `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`id`),
  ADD CONSTRAINT `pergunta_ibfk_2` FOREIGN KEY (`idsimulado`) REFERENCES `simulado` (`id`);

--
-- Constraints for table `simulado`
--
ALTER TABLE `simulado`
  ADD CONSTRAINT `simulado_ibfk_1` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
