-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Dez-2022 às 05:55
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cdcbanco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `nome` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cargahoraria` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`nome`, `descricao`, `cargahoraria`, `link`) VALUES
('Introduction to Computer Science and Programming in Python (MIT OpenCourseWare) ', ' Introdu??o ? Ci?ncia da Computa??o e Programa??o em Python destina-se a alunos com pouca ou nenhuma experi?ncia em programa??o. O objetivo ? fornecer aos alunos uma compreens?o do papel que a computa??o pode desempenhar na resolu??o de problemas e a', 'livre', 'https://ocw.mit.edu/courses/6-0001-introduction-to-computer-science-and-programming-in-python-fall-2016/'),
('Leadership Development (MIT OpenCourseWare)', 'Os alunos trabalham em um ambiente de semin?rio para aprimorar suas capacidades de lideran?a. Uma experi?ncia inicial de Outward Bound do Laborat?rio de Lideran?a desenvolve confian?a, trabalho em equipe e comunica??o. Leituras e atribui??es enfatiza', 'livre', 'https://ocw.mit.edu/courses/ids-910-leadership-development-fall-2014/'),
('Environmental Justice Law and Policy (MIT OpenCourseWare)', ' Este semin?rio apresenta aos alunos os princ?pios b?sicos da justi?a ambiental e apresenta estruturas para analisar e abordar as desigualdades na distribui??o de benef?cios e ?nus ambientais a partir das perspectivas das ci?ncias sociais, pol?ticas ', 'livre', 'https://ocw.mit.edu/courses/11-368-environmental-justice-law-and-policy-fall-2019/'),
('Get Clients For Your Digital Marketing Agency On Autopilot (Udemy)', 'Aprenda como conseguir clientes de forma previs?vel para sua ag?ncia de marketing todos os meses no piloto autom?tico', 'livre', 'https://www.udemy.com/course/get-clients-for-your-digital-marketing-agency-on-autopilot/'),
('Photoshop for Web Design Beginners (Udemy)', 'Curso de Photoshop perfeito para web designers iniciantes que desejam aprender a criar um design de p?gina da web simples e limpo.', 'livre', 'https://www.udemy.com/course/photoshop-for-web-design-beginners/'),
('Italian Language and Culture: Beginner (EdX)', 'Aprenda o b?sico da l?ngua e cultura italiana atrav?s de v?deos, podcasts, entrevistas e muito mais.', 'livre', 'https://www.edx.org/course/italian-language-and-culture-beginner-2021-2022'),
('Italian Language and Culture: Intermediate (EdX)', 'Melhore suas habilidades no idioma italiano e expanda seu vocabul?rio enquanto aprende sobre arte, literatura e sociedade contempor?nea italiana.', 'livre', 'https://www.edx.org/course/italian-language-and-culture-intermediate-2021-2022'),
('Italian Language and Culture: Advanced  (EdX)', ' Aprimore seu conhecimento da l?ngua italiana e aprenda sobre a cultura e a hist?ria da It?lia, incluindo teatro, ?pera e o poeta Dante.', 'livre', 'https://www.edx.org/course/italian-language-and-culture-advanced-2021-2022'),
('Product Design, Prototyping, and Testing (EdX)', 'Traduza ideias de produtos em ativos tang?veis criando wireframes, renderiza??es 3D, prot?tipos e produtos m?nimos vi?veis (MVPs) para testar suposi??es e validar os interesses do cliente', 'livre', 'https://www.edx.org/course/product-design-prototyping-testing'),
('Google Cloud Computing Foundations: Cloud Computing Fundamentals (EdX)', ' O primeiro curso do Certificado Profissional do Google Cloud Computing Foundations fornece uma vis?o geral da computa??o em nuvem, formas de usar o Google Cloud e diferentes op??es de computa??o.', 'livre', 'https://www.edx.org/course/google-cloud-computing-foundations-cloud-computing-fundamentals'),
('Justice (EdX) - HarvardX', 'Esta introdu??o ? filosofia moral e pol?tica ? um dos cursos mais populares ministrados no Harvard College. Ministrado pelo renomado professor de Harvard, Michael Sandel, Justice explora a an?lise cr?tica das teorias cl?ssicas e contempor?neas da jus', 'livre', 'https://www.edx.org/course/justice-2?index=product_value_experiment_a&queryID=9ad084f0e674ede98e79a3f75de82b43&position=2'),
('Rhetoric: The Art of Persuasive Writing and Public Speaking (EdX) - HarvardX', 'Gain critical communication skills in writing and public speaking with this introduction to American political rhetoric. Estamos vivendo em um momento controverso da hist?ria. Desentendimentos fundamentais sobre pol?tica cr?tica, quest?es econ?micas ', 'livre', 'https://www.edx.org/course/rhetoric-art-of-persuasive-writing-public-speaking?index=product_value_experiment_a&queryID=99a6d205bf9e76643592b252f4a3f13'),
('teste', 'computação', '23', 'asdasd'),
('Religion, Conflict and Peace (EdX) - HarvardX', ' Explore the diverse and complex roles that religions play in both promoting and mitigating violence. Neste curso, exploraremos uma série de conflitos contemporâneos em diferentes regiões do mundo com foco especial na identificação e análise dos dive', 'Livre', 'https://www.edx.org/course/religion-conflict-and-peace?index=product_value_experiment_a&queryID=feaba4f4d8c074693cbd2c7a62af34ff&position=4 '),
('Foundations of Modern Finance I (EdX) - MITX', ' Uma estrutura matematicamente rigorosa para entender os mercados financeiros fornecida com insights baseados em dados de professores do MIT. Este é um curso de duas partes e parte do Programa MicroMasters® em Finanças. Ele fornece uma introdução rig', 'Livre', 'https://www.edx.org/course/foundations-of-modern-finance-i?index=product_value_experiment_a&queryID=c5d16b1f6339584ded34e1c6233e5098&position=3 \r\n\r\n'),
('AP® Microeconomics (EdX) - MITX', 'Uma visão geral da microeconomia introdutória. Aprenda os princípios-chave da economia e como aplicá-los ao mundo real.', 'Livre', 'https://www.edx.org/course/ap-microeconomics?index=product_value_experiment_a&queryID=fc5f2e85bea8df395864c49b6a20e7cf&position=4 \r\n'),
('Teaching With Technology (EdX) \r\n', 'Explore as aplicações práticas do ensino com tecnologia em todas as fases, desde o ensino fundamental até o ensino superior.\r\n ', 'Orientado por instrutor em um ', '\r\nhttps://www.edx.org/course/uct-teaching-with-technology-online-short-course?filtered_tab=none&filtered_availability=none&filtered_level=none&filtere'),
('Teaching Certificate: Online and Hybrid Learning Design (EdX) ', 'Prepare-se para um ambiente de ensino em mudança. Obtenha as ferramentas para se destacar como um educador do futuro.', 'Orientado por instrutor em um ', '\r\nhttps://www.edx.org/course/teaching-certificate-online-and-hybrid-learning-design?filtered_tab=none&filtered_availability=none&filtered_level=none&f'),
('Japanese Culture and Language (I) (EdX) \r\n', 'Você tem interesse nos estilos de vida japoneses e suas culturas nacionais? Você tem a ambição de aprender um pouco de japonês básico rapidamente? Então este é o curso para você.', 'Livre', 'https://www.edx.org/course/japanese-culture-and-language-i-1 '),
('Japanese Culture and Language (II) (EdX) ', 'Você tem interesse nos estilos de vida japoneses e suas culturas nacionais? Você tem a ambição de aprender um pouco de japonês básico rapidamente? Então este é o curso para você. (Continuidade do curso Japanese Culture and Language (I) )\r\n\r\n', 'Livre', 'https://www.edx.org/course/japanese-culture-and-language-ii-2\r\n '),
('Curso de sistema digestivo', 'Neste Curso de Sistema Digestivo você aprenderá entre outras coisas pontos importantes como: Divisões anatômicas e órgãos digestivos, Anatomia do Esôfago, Epiglote e Engasgos, Fluxo da Bile e Enzimas no Tubo Digestivo, Segmentos Hepáticos, etc.', '40 horas', 'https://gyncursos.com.br/course/curso-de-sistema-digestivo/'),
('Curso de primeiros socorros', 'O Curso de Primeiros Socorros vai lhe ensinar sobre os primeiros procedimentos que devem ser realizados em pessoas que sofreram algum tipo de acidente, procedimentos que devidamente seguidos podem evitar o agravamento do estado de saúde ou até o óbit', '40 horas', 'https://gyncursos.com.br/course/curso-de-primeiros-socorros/'),
('Francês', 'Este Curso de Francês Completo é dividido em três módulos: Nível Básico, Nível Intermediário e Nível Avançado, para que você possa aprender de uma só vez e em um só curso tudo que precisa saber sobre esta lingua maravilhosa, se você é estudante que v', '40 horas', 'https://gyncursos.com.br/course/curso-de-frances/'),
('Curso de Inglês intermediário', 'Curso Online de Inglês Grátis em vídeo, completo rápido a distância EAD com vídeo aulas totalmente gratuito. Você cadastra e pode acessar seu curso a hora que desejar para assistir as aulas cada dia um pouco\r\n\r\nAprenda Inglês de uma maneira simples e', '40 horas', 'https://gyncursos.com.br/course/curso-de-ingles-online-gratis-com-certificado-nivel-\r\nintermediario/'),
('Aprendendo a aprender: ferramentas mentais poderosas para ajudá-lo a dominar\r\nas', 'Este curso dá-lhe acesso fácil a técnicas de aprendizagem de valor inestimável, usadas por\r\nespecialistas em Arte, Música, Literatura, Matemática, Ciência, Esportes e muitas outras\r\ndisciplinas.', '16 horas', 'https://pt.coursera.org/learn/aprender'),
('Negociações de sucesso: estratégias e habilidades essenciais', 'Todos nós negociamos diariamente. No nível pessoal, negociamos com amigos, família, proprietários do imóvel em que moramos, vendedores de carro, funcionários, entre outros. A negociação também é a chave para o sucesso nos negócios. Nenhuma empresa co', '14 horas', 'https://pt.coursera.org/learn/negociacao'),
('Análise de dados do Google', 'Entre no campo em alta de análise de dados com uma certificação profissional do Google. Aprenda como processar e analisar dados, usar as principais ferramentas de análise, aplicar linguagem R e criar visualizações que podem informar importantes decis', '6 meses', 'https://pt.coursera.org/professional-certificates/google-data-analytics'),
('Programa de cursos integrados O Músico Contemporâneo', 'Leve sua música para o próximo nível. Aprenda os conceitos básicos e os métodos\r\nnecessários para entender, criar e interpretar a música contemporânea', '5 meses', 'https://pt.coursera.org/specializations/musico-contmporaneo'),
('Curso: Alfabetização Midiática, Informacional e Diálogo Intercultural - UNESCO e', 'Este curso quer pensar junto com você sobre um fenômeno recente no Brasil, que é a\r\npresença de uma grande quantidade de informação via mundo digital.', '24 horas', 'https://pt.coursera.org/learn/alfabetizacao-midiatica'),
('Administração Financeira', 'O curso de Administração Financeira foi desenvolvido para que você adquira a proficiência\r\nbásica da linguagem de negócios no que tange às Finanças, e possa iniciar uma transição\r\nde carreira, iniciar seu próprio negócio ou mesmo preparar-se para cur', '23 horas', 'https://pt.coursera.org/learn/administracao-financeira'),
('Flow - Conversas difíceis', 'No Flow- Conversas difíceis você encontra dicas valiosas para transformar as conversas difíceis em diálogos produtivos, criar uma relação mais próxima com o seu time e, por consequência, garantir o melhor andamento dos seus processos.', '1 hora', 'https://sebrae.com.br/sites/PortalSebrae/cursosonline/flow-conversas-dificeis,0268ec3723da2810VgnVCM100000d701210aRCRD'),
('Políticas de Equidade em Saúde e o Enfrentamento das Violências', 'Ao longo dos módulos será possível compreender a concepção das políticas de equidade no SUS, os pontos de partida, as justificativas, a estruturação, a importância no contexto brasileiro, a implementação e, finalmente, a forma como elas se articulam ', '75 horas', 'https://lumina.ufrgs.br/course/view.php?id=173'),
('Química Geral I', 'O curso visa a fornecer embasamento teórico para introduzir o aluno em disciplinas de Química. Pretende-se desenvolver a capacidade de compreensão e cálculo de sistemas reacionais, em termos de massa, de energia e de velocidade.', '40 horas', 'https://lumina.ufrgs.br/course/view.php?id=184');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `login` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`login`, `senha`) VALUES
('felipe478@gmail,com', '09ba3f0df1447f40e98674ba9d62c7');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
