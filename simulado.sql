-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Jan-2026 às 00:18
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `simulado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alternativa`
--

CREATE TABLE `alternativa` (
  `id` int(11) NOT NULL,
  `idpergunta` int(11) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `certo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alternativa`
--

INSERT INTO `alternativa` (`id`, `idpergunta`, `texto`, `certo`) VALUES
(41, 121, 'A equação é resolvida isolando a incógnita.', 1),
(42, 121, 'A equação não possui solução possível.', 0),
(43, 121, 'O resultado depende apenas da soma dos termos.', 0),
(44, 121, 'Toda equação tem infinitas soluções.', 0),
(45, 122, 'A área do triângulo é base vezes altura dividido por dois.', 1),
(46, 122, 'A área depende somente da hipotenusa.', 0),
(47, 122, 'Triângulos não possuem área.', 0),
(48, 122, 'A área é sempre igual ao perímetro.', 0),
(49, 123, 'O valor encontrado satisfaz a igualdade.', 1),
(50, 123, 'Não existe valor que resolva a equação.', 0),
(51, 123, 'O valor correto é sempre negativo.', 0),
(52, 123, 'A equação é inválida matematicamente.', 0),
(53, 124, 'A progressão possui razão constante.', 1),
(54, 124, 'Os termos são aleatórios.', 0),
(55, 124, 'A progressão não possui fórmula.', 0),
(56, 124, 'A razão é sempre zero.', 0),
(57, 125, 'A média é a soma dos valores dividida pela quantidade.', 1),
(58, 125, 'A média corresponde ao maior valor.', 0),
(59, 125, 'A média ignora números extremos.', 0),
(60, 125, 'Só existe média com números pares.', 0),
(61, 126, 'O sujeito pratica ou sofre a ação.', 1),
(62, 126, 'Toda frase tem dois sujeitos.', 0),
(63, 126, 'O sujeito é sempre oculto.', 0),
(64, 126, 'Sujeito e verbo são a mesma coisa.', 0),
(65, 127, 'O predicado é tudo que se declara sobre o sujeito.', 1),
(66, 127, 'Predicado só existe em frases interrogativas.', 0),
(67, 127, 'Predicado é apenas o verbo.', 0),
(68, 127, 'Toda frase possui mais de um predicado.', 0),
(69, 128, 'A figura de linguagem altera o sentido literal.', 1),
(70, 128, 'Serve apenas para textos científicos.', 0),
(71, 128, 'Elimina o sentido da frase.', 0),
(72, 128, 'Não existe na língua portuguesa.', 0),
(73, 129, 'A voz passiva destaca quem sofre a ação.', 1),
(74, 129, 'Elimina o sujeito da frase.', 0),
(75, 129, 'Só ocorre na linguagem informal.', 0),
(76, 129, 'Não pode ser usada no português.', 0),
(77, 130, 'A crase ocorre pela fusão de duas vogais iguais.', 1),
(78, 130, 'É usada antes de verbos.', 0),
(79, 130, 'Toda palavra feminina leva crase.', 0),
(80, 130, 'É sempre opcional.', 0),
(81, 131, 'A Revolução Industrial iniciou a mecanização da produção.', 1),
(82, 131, 'Eliminou o trabalho humano.', 0),
(83, 131, 'Ocorreu exclusivamente no Brasil.', 0),
(84, 131, 'Não teve impactos sociais.', 0),
(85, 132, 'O imperialismo buscava expansão econômica e territorial.', 1),
(86, 132, 'Defendia igualdade entre todas as nações.', 0),
(87, 132, 'Eliminou conflitos internacionais.', 0),
(88, 132, 'Não teve influência histórica.', 0),
(89, 133, 'O período entre guerras foi marcado por instabilidade.', 1),
(90, 133, 'Foi um período de paz absoluta.', 0),
(91, 133, 'Não houve crises econômicas.', 0),
(92, 133, 'Não influenciou a Segunda Guerra.', 0),
(93, 134, 'O nazifascismo defendia regimes autoritários.', 1),
(94, 134, 'Promovia liberdade total de expressão.', 0),
(95, 134, 'Defendia democracia plena.', 0),
(96, 134, 'Não teve impacto político.', 0),
(97, 135, 'A globalização intensifica relações econômicas e culturais.', 1),
(98, 135, 'Isola países economicamente.', 0),
(99, 135, 'Elimina diferenças culturais.', 0),
(100, 135, 'Reduz o comércio internacional.', 0),
(101, 136, 'O clima corresponde a padrões de longo prazo.', 1),
(102, 136, 'Clima e tempo são sinônimos.', 0),
(103, 136, 'O clima muda diariamente.', 0),
(104, 136, 'Não sofre influência ambiental.', 0),
(105, 137, 'O efeito estufa mantém a temperatura da Terra.', 1),
(106, 137, 'Torna o planeta inabitável.', 0),
(107, 137, 'Não tem relação com gases.', 0),
(108, 137, 'É causado apenas por vulcões.', 0),
(109, 138, 'Energias renováveis se regeneram naturalmente.', 1),
(110, 138, 'São sempre poluentes.', 0),
(111, 138, 'Existem apenas em países ricos.', 0),
(112, 138, 'Não produzem eletricidade.', 0),
(113, 139, 'A aceleração indica variação de velocidade.', 1),
(114, 139, 'Aceleração e velocidade são iguais.', 0),
(115, 139, 'Só existe em objetos parados.', 0),
(116, 139, 'Não depende do tempo.', 0),
(117, 140, 'A força resultante é a soma vetorial das forças.', 1),
(118, 140, 'Forças não podem ser somadas.', 0),
(119, 140, 'A força resultante é sempre zero.', 0),
(120, 140, 'Só existe uma força em qualquer sistema.', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `idsimulado` int(11) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pergunta`
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
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Danielly Mesquita', 'daniellymesquista@gmail.com', '123'),
(2, 'Rafael Loyola de Souza Fretes', 'rafael@gmail.com', 'rafaloyola123'),
(3, 'Julio Agosto Setembro de Souza Lima', '070809@gmail.com', 'jgs789\r\n'),
(4, 'Diego Pereira de Matos Freitas', 'diegomatos@gmail.com', 'matosfreitas123'),
(5, 'Sandro Oliveira Schneider', 'schneider445@gmail.com', 'schneider123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `simulado`
--

CREATE TABLE `simulado` (
  `id` int(11) NOT NULL,
  `idprofessor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `simulado`
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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alternativa`
--
ALTER TABLE `alternativa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpergunta` (`idpergunta`);

--
-- Índices para tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprofessor` (`idprofessor`),
  ADD KEY `idsimulado` (`idsimulado`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `simulado`
--
ALTER TABLE `simulado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprofessor` (`idprofessor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alternativa`
--
ALTER TABLE `alternativa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `simulado`
--
ALTER TABLE `simulado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alternativa`
--
ALTER TABLE `alternativa`
  ADD CONSTRAINT `alternativa_ibfk_1` FOREIGN KEY (`idpergunta`) REFERENCES `pergunta` (`id`);

--
-- Limitadores para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`id`),
  ADD CONSTRAINT `pergunta_ibfk_2` FOREIGN KEY (`idsimulado`) REFERENCES `simulado` (`id`);

--
-- Limitadores para a tabela `simulado`
--
ALTER TABLE `simulado`
  ADD CONSTRAINT `simulado_ibfk_1` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
