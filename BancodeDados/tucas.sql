-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/12/2023 às 02:18
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tucas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_anuncio`
--

CREATE TABLE `tb_anuncio` (
  `ID_ANUNCIO` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `NOME_PROFISSAO` varchar(200) NOT NULL,
  `DATA_ANUNCIO` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DESCRICAO_ANUNCIO` text NOT NULL,
  `ANEXO_ANUNCIO` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_anuncio`
--

INSERT INTO `tb_anuncio` (`ID_ANUNCIO`, `ID_USUARIO`, `NOME_PROFISSAO`, `DATA_ANUNCIO`, `DESCRICAO_ANUNCIO`, `ANEXO_ANUNCIO`) VALUES
(361, 330, 'Desenvolvedor Web', '2023-12-07 20:02:36', 'Faço sites pra quem pagar bem.', 'programador.jpg'),
(362, 329, 'Desenhista', '2023-12-07 20:02:45', 'Desenho o que precisarem.', 'desenho-de-fantasma-de-halloween_71328-356.jpg'),
(9, 333, 'Desenhista Digital', '2023-12-07 20:04:13', 'Arte que ganha vida! Desenhista Digital Freelancer especializado em ilustrações digitais vibrantes e envolventes. De personagens a conceitos visuais, transformo ideias em imagens cativantes. Acrescente um toque único ao seu projeto com ilustrações feitas sob medida.', 'imagem9.jpeg'),
(8, 335, 'Chef de Cozinha', '2023-11-22 10:01:15', 'Experiência gourmet em casa! Chef de Cozinha Freelancer apaixonado por criar deliciosas experiências gastronômicas. Ofereço serviços personalizados de catering, aulas de culinária e cardápios exclusivos. Transforme ocasiões especiais em momentos inesquecíveis com sabores incríveis.', 'chefe.jfif'),
(6, 325, 'Eletricista Residencial', '2023-07-12 15:00:00', 'Busco eletricista para realizar instalações elétricas em minha residência. Conhecimento em padrões de segurança é fundamental.', 'eletricista.jfif'),
(5, 334, 'Tradutora Freelancer', '2023-12-08 23:42:15', 'Conecte-se globalmente! Tradutora Freelancer fluente em diversos idiomas, tais como inglês, francês, russo, mandarim etc. Torne sua mensagem universal, garantindo precisão e naturalidade. Especializado em traduções para web, documentos e marketing. Rompa barreiras linguísticas e alcance audiências globais com minha expertise linguística.', 'tradutor.jpg'),
(4, 336, 'Desenvolvedor Mobile', '2023-12-08 23:45:07', 'Apps que impressionam! Desenvolvedor Mobile Freelancer focado em criar experiências únicas. Com expertise em iOS e Android, transformo suas ideias em aplicativos intuitivos e funcionais. Da concepção à implementação, garanto soluções inovadoras para impulsionar seu negócio no mundo mobile.', 'mobile.jpg'),
(3, 331, 'Redator Freelancer', '2023-12-08 23:48:10', 'Palavras que inspiram! Redator Freelancer dedicado a transmitir sua mensagem de forma envolvente. Especializado em SEO, produzo conteúdo persuasivo para blogs, sites e redes sociais. Transforme visitantes em clientes com narrativas cativantes. Sua história merece ser contada com maestria!', 'redator.jpg'),
(2, 337, 'Designer Gráfico', '2023-12-07 20:03:35', 'Dê vida à sua marca! Designer Gráfico Freelancer com habilidades criativas excepcionais. Do conceito à criação, ofereço designs impactantes para logos, materiais de marketing e mídias sociais. Transmita a essência da sua marca visualmente. Vamos colaborar para fazer sua identidade brilhar!', 'designgrafico.jpg'),
(364, 339, 'Faxineira', '2023-12-08 23:56:23', 'Transforme seu espaço! Limpeza completa, organização, e eficiência. Residências e escritórios. Resultados impecáveis. Agende agora! ', 'faxina.png'),
(365, 361, 'Quadrinista', '2023-12-08 23:56:27', 'faço commisions de quadinhos e icones', 'luizacomm1.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_anuncio_empresa`
--

CREATE TABLE `tb_anuncio_empresa` (
  `ID_ANUNCIO` int(11) NOT NULL,
  `ID_EMPRESA` int(11) NOT NULL,
  `DATA_ANUNCIO` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DESCRICAO_ANUNCIO` text NOT NULL,
  `ANEXO_ANUNCIO` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_assinatura`
--

CREATE TABLE `tb_assinatura` (
  `ID_ASSINATURA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_EMPRESA` int(11) DEFAULT NULL,
  `ID_DESCASS` varchar(45) NOT NULL,
  `ID_VALORASS` double(4,2) NOT NULL,
  `ID_STATUSASS` text NOT NULL,
  `ID_DTAASS` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_DATAENASS` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_assinatura`
--

INSERT INTO `tb_assinatura` (`ID_ASSINATURA`, `ID_USUARIO`, `ID_EMPRESA`, `ID_DESCASS`, `ID_VALORASS`, `ID_STATUSASS`, `ID_DTAASS`, `ID_DATAENASS`) VALUES
(1, 8, NULL, 'Premeium', 19.99, 'Ativo', '2023-10-24 03:00:00', '2023-11-24 03:00:00'),
(2, 354, NULL, 'Premium', 19.99, 'Ativo', '2023-11-22 03:00:00', '2023-12-22 03:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_chat`
--

CREATE TABLE `tb_chat` (
  `ID_CHAT` int(11) NOT NULL,
  `ID_EMPRESA` int(11) DEFAULT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `DTA_CHAT` timestamp NULL DEFAULT current_timestamp(),
  `MSG_CHAT` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_chat`
--

INSERT INTO `tb_chat` (`ID_CHAT`, `ID_EMPRESA`, `ID_USUARIO`, `DTA_CHAT`, `MSG_CHAT`) VALUES
(8, 2, 8, '2023-10-20 10:59:23', 'dsfds'),
(7, 1, 7, '2023-10-20 11:03:14', 'dsfasfdsfdsdfadsfuhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhj');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_empresa`
--

CREATE TABLE `tb_empresa` (
  `ID_EMPRESA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_NOMEEMP` varchar(100) NOT NULL,
  `ID_EMAILEMP` varchar(45) NOT NULL,
  `ID_SENHAEMP` varchar(100) NOT NULL,
  `ID_CNPJEMP` varchar(18) NOT NULL,
  `ID_LOGOEMP` varchar(255) NOT NULL,
  `ID_SEDEEMP` varchar(255) DEFAULT NULL,
  `ID_DESCEMP` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_empresa`
--

INSERT INTO `tb_empresa` (`ID_EMPRESA`, `ID_USUARIO`, `ID_NOMEEMP`, `ID_EMAILEMP`, `ID_SENHAEMP`, `ID_CNPJEMP`, `ID_LOGOEMP`, `ID_SEDEEMP`, `ID_DESCEMP`) VALUES
(15, 322, 'Willian Barbearia', 'willianbarber.2@gmail.com', '14321aaqeqw', '68.135.195/0001-10', 'willianbarbearia.jpg', '', ''),
(17, 321, 'A Diarista', 'adiaristaoficial@hotmail.com', 'Q422575673', '08.236.512/0001-63', 'diarista.png', '', ''),
(16, 320, 'Vivo Operadora', 'vivo@gmail.com', 'F358269461', '02.449.992/0056-38', '359977.jpg', '', ''),
(22, 319, 'Correiros', 'ouvidoria@correios.com.br.', 'L441921161', '34.028.316/0001-03', 'a.png', '', ''),
(19, 317, 'Call Center - Serviço de Telemarkenting', 'callcenter@hotmail.com', 'B326405332', '37.338.716/0001-03', 'call.jpg', '', ''),
(20, 318, 'Rede da Gente Gaúcha ', 'redegauchasupermercados@hotmail.com', 'E392161549', '51.291.708/0001-80', 'gaucha.jpg', '', ''),
(21, 331, 'MiniPreço ', 'miniprecosupermercados', 'D572126996', '70.237.201/0001-92', 'min.jpg', '', ''),
(23, 332, 'Daniel Correia - Montagem de Móveis', 'danielmonatgensmoveis@gmail.com', 'Y421643042', '19.677.488/0001-14', 'danielcorreia.jpg', '', ''),
(24, 333, 'Banco Real', 'bancoreal@hotmail.com', 'P37696570031', '98.232.407/0001-49', 'bancoreal.jpg', '', ''),
(25, 334, 'Bucks Burgers', 'burgersbucks@gmail.com', '84448138', '59.172.840/0001-84', 'bucks.jpg', '', ''),
(26, 335, 'Escola Literal', 'escolaliteraloficial@gmail.com', 'B5003840', '54.473.911/0001-65', 'ESCOLALITERAL.jpg', '', ''),
(27, 336, 'Studio Music', 'musicstudioofic@hotmail.com', 'J6629921', '04.299.100/0001-11', 'STUDIOMUSIC.jpg', '', ''),
(28, 337, 'Renata Diario - Estilistas', 'renatadiario@hotmail.com', 'Q9257410', '62.008.117/0001-79', 'renatadiario.jpg', '', ''),
(29, 338, 'Prov Serv', 'proserv@hotmail.com', 'V7373581', '23.695.173/0001-77', 'proserv.jpg', '', ''),
(30, 339, 'Manicure Nali Polish', 'nalipolish@hotmail.com', 'V2183265', '88.349.597/0001-25', 'nailpolish.jpg', '', ''),
(31, 340, 'LA Concept', 'laconceptofic@hotmail.com', 'E8364793', '35.770.117/0001-39', 'laconcept.jpg', '', ''),
(32, 341, 'Jennie Brown', 'jenniebreal@hotmail.com', 'I0857343', '39.360.261/0001-58', 'jennie.jpg', '', ''),
(33, 342, 'Family Supermercados', 'familysupermercados@hotmail.com', 'R0431841', '86.533.292/0001-43', 'Family.jpg', '', ''),
(34, 343, 'On Wine - Tabacaria', 'onwinetabaca@gmail.com', 'W6986400', '78.810.335/0001-62', 'onwine.jpg', '', ''),
(35, 344, 'Smart Food - Marmitas no Ponto', 'smartfoodmarmitas@gmail.com', 'O2415702', '30.713.012/0001-24', 'smart.jpg', '', ''),
(36, 345, 'Mundo Moderno - Loja de Tecnologia', 'lojamundomoderno@gmail.com', 'G6390559', '08.822.921/0001-41', 'mundom.png', '', ''),
(37, 346, 'Sherpel', 'sherpelconst@gmail.com', 'Q3522940', '68.891.300/0001-41', 'sherpel.png', '', ''),
(38, 347, 'Artes Visuais', 'realartvisu@gmail.com', 'K2614487', '06.679.577/0001-58', 'artesv.png', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_perfil`
--

CREATE TABLE `tb_perfil` (
  `ID_PERFIL` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_DESCRICAOPERF` text DEFAULT NULL,
  `ID_WHATS` varchar(20) DEFAULT NULL,
  `ID_LINKEDIN` varchar(100) DEFAULT NULL,
  `ID_INSTAGRAM` varchar(100) DEFAULT NULL,
  `ID_TWITTER` varchar(100) DEFAULT NULL,
  `ID_TRABALHOFEITOS` varchar(255) DEFAULT NULL,
  `ID_PESSOASCONTRADAS` varchar(255) DEFAULT NULL,
  `ID_AVALIAÇÔES` double(2,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_perfil`
--

INSERT INTO `tb_perfil` (`ID_PERFIL`, `ID_USUARIO`, `ID_DESCRICAOPERF`, `ID_WHATS`, `ID_LINKEDIN`, `ID_INSTAGRAM`, `ID_TWITTER`, `ID_TRABALHOFEITOS`, `ID_PESSOASCONTRADAS`, `ID_AVALIAÇÔES`) VALUES
(341, 340, 'Sou apaixonado por transformar ideias em imagens digitais envolventes! \nCom expertise em softwares como Photoshop e tablet gráfico, ofereço ilustrações inovadoras e designs cativantes. \nDisponível para projetos variados, garanto qualidade, prazos cumpridos e uma colaboração inspiradora. \nVamos tornar sua visão uma realidade visual!', '+55 1122334455', 'linkedin.com/in/liztanaka', '@liztanaka_', '@liztanaka', NULL, NULL, NULL),
(360, 219, 'Entusiasta da inteligência artificial e machine learning. Transformando dados em insights. #AIEnthusiast', '+55 987654321', 'linkedin.com/in/alex-pearson', '@alex_pearson', '@alex_pearson', NULL, NULL, NULL),
(357, 322, 'Entusiasta da ciência de dados. Transformando dados em insights. #DataScience', '+55 987654321', 'linkedin.com/in/robertkane', '@robertkane', '@robertkane', NULL, NULL, NULL),
(358, 321, 'Apaixonada por marketing digital e storytelling. Contando histórias que conectam. #DigitalMarketing', '+55 1122334455', 'linkedin.com/in/brunavianaf', '@brunavianaf', '@brunavianaf', NULL, NULL, NULL),
(359, 320, 'Apaixonado por empreendedorismo e tecnologia. Criando soluções que impactam positivamente. #TechEntrepreneur', '+55 9988776655', 'linkedin.com/in/gilbertoagg', '@gilbertoagg', '@gilbertoagg', NULL, NULL, NULL),
(349, 330, 'Apaixonada por tecnologia desde sempre. Buscando sempre soluções inovadoras. #TechEnthusiast', '+55 1122334455', 'linkedin.com/in/cristinabsantos', '@cristinabsantos', '@crisbdosantos', NULL, NULL, NULL),
(350, 329, 'Entusiasta de esportes e estratégias de marketing. Focado em resultados. #SportsMarketing', '+55 9988776655', 'linkedin.com/in/geraldoesporte', '@geraldoesporte', '@geraldoesporte', NULL, NULL, NULL),
(351, 328, 'Comprometido com a tecnologia e o impacto social. Sempre buscando inovação. #TechForGood', '+55 987654321', 'linkedin.com/in/carloserivaldo', '@carloserivaldo', '@cesilva', NULL, NULL, NULL),
(352, 327, 'Apaixonada por design e experiência do usuário. Transformando ideias em realidade. #UXDesigner', '+55 987654321', 'linkedin.com/in/saori-otama', '@saori.otama', '@saoriotama', NULL, NULL, NULL),
(353, 323, 'Inovadora por natureza. Comprometida com resultados extraordinários. #InnovationLeader', '+55 9988776655', 'linkedin.com/in/camilasousaf', '@camilasousaf', '@camilasousaf', NULL, NULL, NULL),
(354, 326, 'Apaixonada por tecnologia e seu impacto na educação. #EdTechAdvocate', '+55 9988776655', 'linkedin.com/in/alinecastrom', '@linecastrom', '@alinecastrom', NULL, NULL, NULL),
(355, 356, 'Focado em inovação e liderança. Construindo um futuro melhor. #InnovationLeader', '+55 1122334455', 'linkedin.com/in/amyamoto', '@amyamoto', '@amyamoto', NULL, NULL, NULL),
(356, 324, 'Apaixonado por desenvolvimento web e experiência do usuário. #WebDeveloper', '+55 9988776655', 'linkedin.com/in/edisonfaria', '@edisonfaria', '@edisonfaria', NULL, NULL, NULL),
(362, 318, 'Defensora da diversidade e inclusão. Empoderando pessoas por meio da educação. #DiversityAdvocate', '+55 9988776655', 'linkedin.com/in/zahirakhan', '@zahirakhan', '@zahirakhan', NULL, NULL, NULL),
(363, 331, 'Entusiasta da inovação e estratégia de negócios. Transformando desafios em oportunidades. #InnovationStrategist', '+55 987654321', 'linkedin.com/in/ernestodoyle', '@ernestodoyle', '@ernestodoyle', NULL, NULL, NULL),
(364, 332, 'Apaixonada por marketing digital e comunicação estratégica. Criando conexões que geram impacto. #DigitalStrategist', '+55 1122334455', 'linkedin.com/in/joangray', '@joangray', '@joangray', NULL, NULL, NULL),
(365, 12, 'Comprometido com a liderança e gestão estratégica. Desenvolvendo equipes de alto desempenho. #LeadershipDevelopment', '+55 9988776655', 'linkedin.com/in/robertchapeck', '@robertchapeck', '@robertchapeck', NULL, NULL, NULL),
(366, 334, 'Apaixonada por finanças e análise de dados. Transformando números em estratégias financeiras. #FinanceAnalyst', '+55 987654321', 'linkedin.com/in/victoriacruz', '@victoriacruz', '@victoriacruz', NULL, NULL, NULL),
(367, 335, 'Como chefe de cozinha, lidero minha equipe com paixão pela culinária. Coordeno sabores, promovendo colaboração na cozinha. Sou preciso, respeitando ingredientes, e incentivo a criatividade. Com comunicação clara, busco eficiência nos serviços. Valorizo a inovação gastronômica, mantendo a satisfação dos clientes em destaque.', '+55 1122334455', 'linkedin.com/in/shmuelamiel', '@shmuelamiel', '@shmuelamiel', NULL, NULL, NULL),
(368, 366, 'Apaixonada por educação e inovação pedagógica. Transformando a experiência de aprendizado. #EdTech', '+55 9988776655', 'linkedin.com/in/taniaapedroza', '@taniaapedroza', '@taniaapedroza', NULL, NULL, NULL),
(370, 361, 'Freelancer', '+55 119833211353', 'luizabittes', 'luziafer', 'nao possuo', NULL, NULL, NULL),
(371, 325, 'Amante da eletricidade e da inovação! Transformo corrente em energia vibrante, assim como transformo dados em insights. Como entusiasta da inteligência artificial e machine learning, mantenho meus circuitos sempre atualizados. Apaixonado por empreendedorismo e tecnologia, aplico meu conhecimento para criar soluções elétricas que impactam positivamente. Ligado na eficiência, sou o eletricista que ilumina o caminho da inovação. #EletroTechInovador', '+55 13953067532', 'linkedin.com/in/João-Gabriel-Bastos', 'instagram.com/jgabastos', 'x.com/jgabastos', NULL, NULL, NULL),
(372, 336, 'Desenvolvedora mobile apaixonada por criar experiências inovadoras! Transformo ideias em aplicativos funcionais, navegando por linguagens de programação com destreza. Minha paixão pela tecnologia móvel me impulsiona a buscar constantes aprimoramentos. Dedico-me a construir soluções que surpreendem e facilitam a vida dos usuários. #MobileDev', '+55 13957069841', 'linkedin.com/in/Tania-Amaral-Pedroza', 'instagram.com/taniamaral_', 'x.com/tamaralpedroza', NULL, NULL, NULL),
(373, 337, 'Designer gráfico apaixonado por transformar conceitos em visualizações impactantes! Mergulho nas paletas de cores e formas, criando identidades visuais únicas. Minha criatividade se traduz em designs que contam histórias visualmente envolventes. Movido pela estética e inovação, estou sempre buscando novas tendências para elevar meus projetos. ', '+55 1192094377', 'linkedin.com/in/Jean-Petena', 'instagram.com/jpeneta', 'x.com/jpeneta', NULL, NULL, NULL),
(374, 339, 'Faço faxina em casa e apartamentos na região do ABC paulista.', '55+ 11912560076', 'linkedin.com/in/Lourdes-Maria-da-Silveira', 'instagram.com/LourdesSilveira', 'x.com/LourdesSilveira', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_NOMEUSU` varchar(90) NOT NULL,
  `ID_EMAILUSU` varchar(45) NOT NULL,
  `ID_SENHAUSU` varchar(45) NOT NULL,
  `ID_IMAGEMUSU` varbinary(999) NOT NULL,
  `ID_CPFUSU` varchar(11) NOT NULL,
  `ID_STAUSUSU` varchar(10) DEFAULT NULL,
  `ID_TOKEN_RESET` varchar(64) DEFAULT NULL,
  `ID_TEMPO_RESET` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`ID_USUARIO`, `ID_NOMEUSU`, `ID_EMAILUSU`, `ID_SENHAUSU`, `ID_IMAGEMUSU`, `ID_CPFUSU`, `ID_STAUSUSU`, `ID_TOKEN_RESET`, `ID_TEMPO_RESET`) VALUES
(357, 'Miguel Petena', 'miguelpetena2@gmail.com', 'migu&l18', 0x646f776e6c6f61642e6a7067, '47561970862', NULL, NULL, NULL),
(330, 'Cristina Barbosa dos Santos', 'cris.Barb27@protonmail.com', 'T6856712', 0x6a6573736963612e6a7067, '52628265044', NULL, NULL, NULL),
(329, 'Geraldo Brasil', 'geraldorrbrazil20@hotmail.com', 'GPVGH2YGMT', 0x676572616c646f2e6a7067, '69110817000', NULL, NULL, NULL),
(328, 'Carlos Erivaldo da Silva', 'carlos.da.silva12@hotmail.com', 'ZCKFRH66XB', 0x4361726c6f732e6a7067, '82999816040', NULL, NULL, NULL),
(327, 'Saori Otama', 'saoriot29@gmx.com', 'PKD6WTKB8M', 0x4d617274612e6a7067, '96888871029', NULL, NULL, NULL),
(323, 'Camila de Sousa Fernandes', 'camsfernandes833@hotmail.com', 'c09725529.', 0x67726163652e6a7067, '45104475077', NULL, NULL, NULL),
(326, 'Aline Castro Mello', 'linecastro@yandex.ru', 'cast2002', 0x416c696e652e6a7067, '20540341002', NULL, NULL, NULL),
(325, 'João Gabriel Pereira Bastos', 'joaogp43z@gmail.com', 'fé2920043k', 0x6a6fc3a36f2e6a7067, '29359567027', NULL, NULL, NULL),
(324, 'Edison Faria do Nascimento', 'edfaria34@gmail.com', 'V130794*', 0x6e656c736f6e2e6a7067, '69216428015', NULL, NULL, NULL),
(322, 'Robert Kane', 'robertkaneuk1@hotmail.com', 'gsthequeen1.', 0x626f622e6a7067, '67288480033', NULL, NULL, NULL),
(321, 'Bruna Viana', 'bruunavianaa2309@hotmail.com', 'B2309viana', 0x6272756e612e6a7067, '89563210052', NULL, NULL, NULL),
(320, 'Gilberto Alves Gonçalves', 'gilalvesgonvc10@usp.edu.br', 'Corinthians2012', 0x6564756172646f2e6a7067, '96725926045', NULL, NULL, NULL),
(319, 'Alex Pearson', 'alexpoficial@gmail.com', 'pearson2007.', 0x616c65782e6a7067, '16318867031', NULL, NULL, NULL),
(317, 'Airton Myamoto', 'airtonmy22@hotmail.com', 'Airt2806', 0x616972746f6e2e6a7067, '99846150067', NULL, NULL, NULL),
(318, 'Zahira Khan Al-Abadi', 'zahiraalabadi@gmail.com', 'Z1402khan', 0x53616c6d612e6a7067, '25452759045', NULL, NULL, NULL),
(331, 'Enersto Doyle', 'ernest.doyle24@protonmail.com', 'V1280564', 0x45726e6573746f2e6a7067, '99561798330', NULL, NULL, NULL),
(332, 'Joan Gray', 'joan94@aol.com', 'H3948968', 0x6a6f616e2e6a7067, '73305375000', NULL, NULL, NULL),
(333, 'Robert Chapeck', 'chapeckrobert@hotmail.com', 'J3460029', 0x526f626572742e6a7067, '55451098050', NULL, NULL, NULL),
(334, 'Victória de Azevedo Cruz', 'vicsazevedoo1@hotmail.com', 'H62958589461', 0x566974c3b37269612e6a7067, '54570091045', NULL, NULL, NULL),
(335, 'Shmuel Amiel', 'shmullami.23@yahoo.com', 'S432337132.', 0x53686d75656c2e6a7067, '78956579091', NULL, NULL, NULL),
(336, 'Tania Amaral Pedroza', 'tamaralpd45@yahoo.com', 'e5034716', 0x54c3a26e69612e6a7067, '13646013080', NULL, NULL, NULL),
(337, 'Jean Petená ', 'jean.pt.90@zoho.com', 'SP22007*', 0x6a6f7267652e6a7067, '13646013080', NULL, NULL, NULL),
(338, 'Luis da Silva Pereira', 'luizitos.pereira@zoho.com', 'a7537414', 0x52756c696f2e6a7067, '28684663080', NULL, NULL, NULL),
(339, 'Lourdes Maria da Silveira', 'lourdesmariasilveira02@outlook.com', 'y4554110', 0x4c6f75726465732e6a7067, '50565421045', NULL, NULL, NULL),
(340, 'Liz Tanaka', 'lizztanaka@hotmail.com', 'h2872658', 0x4c697a2e6a7067, '42581000058', NULL, NULL, NULL),
(341, 'Rosa Clarkson', 'rosaclark09@icloud.com', 'r8740675', 0x726f73612e6a7067, '45876564028', NULL, NULL, NULL),
(342, 'Natasha Roumie', 'natroumieoficial@icloud.com', 'S2520814', 0x4e6174617368612e6a7067, '61704076030', NULL, NULL, NULL),
(343, 'Jenice Kim', 'jenicekim.1@gmail.com', 'G6796820', 0x4a656e6963652e6a7067, '58414316093', NULL, NULL, NULL),
(344, 'Cleonice Aparecida Feitosa', 'cleoapfeitosa@hotmail.com', '3o1ogltiwpa2', 0x436c65c3b32e6a7067, '80171323017', NULL, NULL, NULL),
(345, 'Graça Maria de Jesus', 'graçamaria69@yahoo.com', '18nvope168bs', 0x477261c3a7612e6a7067, '34719462090', NULL, NULL, NULL),
(346, 'Guilherme Cardoso Nunes', 'guilherme.nunes3@yahoo.com', '0uz3tzyhsurm', 0x726f626572746f2e6a7067, '15167428009', NULL, NULL, NULL),
(347, 'Jonas Vicente da Silva', 'jvicente.silva@yahoo.com', '7j8isjdoq5wb', 0x5061626c6f2e6a7067, '63037654082', NULL, NULL, NULL),
(348, 'Jacqueline Viera ', 'jacsvieira29@yahoo.com', '26puvr9pvj93', 0x6a617175656c696e652e6a7067, '06539300034', NULL, NULL, NULL),
(349, 'Jussara Caeteno ', 'jussara.caetano@yahoo.com', '2q3li5luzq0f', 0x4a7573736172612e6a7067, '96336856054', NULL, NULL, NULL),
(350, 'Mauro Gonçalves dos Santos', 'mauro.goncalves@yahoo.com', '1c4bj9eo1jqx', 0x6d6175726f2e6a7067, '96336856054', NULL, NULL, NULL),
(351, 'Lisa Castro Barros', 'lisacastro@yahoo.com', '2l22p6wxo2s4', 0x4c6973612e6a7067, '74685495080', NULL, NULL, NULL),
(352, 'Honda Ravona', 'honda.ravona@yahoo.com', '34c2k27h0t08', 0x686f6e64612e6a7067, '74685495080', NULL, NULL, NULL),
(353, 'Shigeru Kurosaki', 'shigeru@hotmail.com', '94p7p4kp30us', 0x536869676572752e6a7067, '49008139073', NULL, NULL, NULL),
(355, 'togetic', 'BRITTESLUIZA@GMAIL.COM', '123123qwe', 0x696d6167656d5f323032332d31312d32325f3030343033303539392e706e67, '47069987862', NULL, NULL, NULL),
(356, 'Guilherme', 'guilherme@gmail.com', 'guizo091', 0x6775692e6a7067, '42395680921', NULL, NULL, NULL),
(358, 'Luiza Brittes Barros', 'BRITTESLU3IZ333A@GMAIL.COM', '123123qw', 0x696d6167656d5f323032332d31312d32335f3230323730373538312e706e67, '47069987862', NULL, NULL, NULL),
(359, 'Luiza Brittes Barros', 'lapr444as@gmail.com', '123123qw', 0x696d6167656d5f323032332d31312d32335f3230323830303137392e706e67, '47069987862', NULL, NULL, NULL),
(360, 'Luiza Brittes Barros', 'lapras@gmail.com', '123123qw', 0x696d6167656d5f323032332d31312d32335f3230323834303536322e706e67, '47069987862', NULL, NULL, NULL),
(361, 'Luiza Brittes Barros', 'luizabrittes333@hotmail.com', 'q123123123', 0x696d6167656d5f323032332d31322d30375f3135353434303533372e706e67, '47069987862', NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_anuncio`
--
ALTER TABLE `tb_anuncio`
  ADD PRIMARY KEY (`ID_ANUNCIO`);

--
-- Índices de tabela `tb_anuncio_empresa`
--
ALTER TABLE `tb_anuncio_empresa`
  ADD PRIMARY KEY (`ID_ANUNCIO`),
  ADD UNIQUE KEY `fk_id_empresa` (`ID_EMPRESA`);

--
-- Índices de tabela `tb_assinatura`
--
ALTER TABLE `tb_assinatura`
  ADD PRIMARY KEY (`ID_ASSINATURA`),
  ADD UNIQUE KEY `fk_id_usuario` (`ID_USUARIO`) USING BTREE,
  ADD UNIQUE KEY `fk_id_empresa` (`ID_EMPRESA`);

--
-- Índices de tabela `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`ID_CHAT`),
  ADD UNIQUE KEY `fk_id_usuario` (`ID_USUARIO`) USING BTREE,
  ADD UNIQUE KEY `fk_id_empresa` (`ID_EMPRESA`);

--
-- Índices de tabela `tb_empresa`
--
ALTER TABLE `tb_empresa`
  ADD PRIMARY KEY (`ID_EMPRESA`),
  ADD UNIQUE KEY `fk_id_usuario` (`ID_USUARIO`) USING BTREE;

--
-- Índices de tabela `tb_perfil`
--
ALTER TABLE `tb_perfil`
  ADD PRIMARY KEY (`ID_PERFIL`),
  ADD UNIQUE KEY `fk_id_usuario` (`ID_USUARIO`) USING BTREE;

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`ID_USUARIO`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_anuncio`
--
ALTER TABLE `tb_anuncio`
  MODIFY `ID_ANUNCIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT de tabela `tb_anuncio_empresa`
--
ALTER TABLE `tb_anuncio_empresa`
  MODIFY `ID_ANUNCIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_assinatura`
--
ALTER TABLE `tb_assinatura`
  MODIFY `ID_ASSINATURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_empresa`
--
ALTER TABLE `tb_empresa`
  MODIFY `ID_EMPRESA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `tb_perfil`
--
ALTER TABLE `tb_perfil`
  MODIFY `ID_PERFIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
