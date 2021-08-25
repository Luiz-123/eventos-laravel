-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql201.byetcluster.com
-- Tempo de geração: 22/08/2021 às 09:09
-- Versão do servidor: 5.6.48-88.0
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `epiz_27682334_hdcevents`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `events`
--

INSERT INTO `events` (`id`, `created_at`, `updated_at`, `title`, `description`, `city`, `private`, `image`, `items`, `date`, `user_id`) VALUES
(1, '2021-08-07 07:34:31', '2021-08-07 07:34:31', 'Php', 'Criado por Rasmus Lerdorf em 1995, o PHP tem a produção de sua implementação principal, referência formal da linguagem, mantida por uma organização chamada The PHP Group. O PHP é software livre, licenciado sob a PHP License, uma licença incompatível com a GNU General Public License (GPL) devido a restrições no uso do termo PHP.', 'são paulo', 0, '106683c6332a522b4f39c23dd08c80ba.jpg', '[\"Tendas\", \"Palco\", \"Park\"]', '2021-08-14 00:00:00', 1),
(2, '2021-08-07 07:39:05', '2021-08-21 15:54:36', 'Css', 'Cascading Style Sheets (CSS) é um mecanismo para adicionar estilo (cores, fontes, espaçamento, etc.) a um documento web.\r\n\r\nO código CSS pode ser aplicado diretamente nas tags ou ficar contido dentro das tags <style>. Também é possível, em vez de colocar a formatação dentro do documento, criar um link para um arquivo CSS que contém os estilos.', 'rio de janeiro', 0, '8bde6a333ae53ce25fd63afb3fc64a1e.jpg', '[\"Tendas\", \"Palco\", \"Open Foods\"]', '2021-08-15 00:00:00', 1),
(3, '2021-08-07 07:41:38', '2021-08-21 15:55:15', 'Java Script', 'JavaScript (frequentemente abreviado como JS) é uma linguagem de programação interpretada estruturada, de script em alto nível com tipagem dinâmica fraca e multiparadigma (protótipos, orientado a objeto, imperativo e, funcional). Juntamente com HTML e CSS, o JavaScript é uma das três principais tecnologias da World Wide Web. JavaScript permite páginas da Web interativas e, portanto, é uma parte essencial dos aplicativos da web.', 'minas gerais', 0, '8fafa5bade151aba97ccc3c9b1b8ad02.jpg', '[\"Tendas\", \"Palco\"]', '2021-08-16 00:00:00', 1),
(4, '2021-08-07 07:43:07', '2021-08-21 15:55:59', 'Html 5', 'HTML5 (Hypertext Markup Language, versão 5) é uma linguagem de marcação para a World Wide Web e é uma tecnologia chave da Internet, originalmente proposto por Opera Software. É a quinta versão da linguagem HTML. Esta nova versão traz consigo importantes mudanças quanto ao papel do HTML no mundo da Web, através de novas funcionalidades como semântica e acessibilidade.', 'bahia', 1, '25a2f9c797fc7b1e24572ede268b6a6b.jpg', '[\"Tendas\", \"Palco\", \"Souvenir\"]', '2021-08-17 00:00:00', 1),
(5, '2021-08-07 07:49:56', '2021-08-21 15:56:27', 'Java', 'Java é o ambiente computacional, ou plataforma, criada pela empresa estadunidense Sun Microsystems, e vendida para a Oracle depois de alguns anos. A plataforma permite desenvolver programas utilizando a linguagem de programação Java. Uma grande vantagem da plataforma é a de não estar presa a um único sistema operacional ou hardware.', 'pernambuco', 1, '57844c97b12199304aedbf5adbaba651.jpg', '[\"Tendas\", \"Palco\", \"Drinks\"]', '2021-08-18 00:00:00', 1),
(6, '2021-08-07 07:52:21', '2021-08-21 15:57:05', 'Sass', 'Sass é uma linguagem de script que é interpretada ou compilada em Cascading Style Sheets (CSS). SassScript é a linguagem em si. Sass consiste em duas sintaxes. A sintaxe original, chamada de \"sintaxe indentada\", usa uma sintaxe semelhante a Haml. Ela usa indentação para separar blocos de código e caracteres de nova linha para separar regras. A sintaxe mais recente, \"SCSS\", usa formatação de bloco, como a de CSS.', 'rio grande do sul', 0, '66363a2059a860d4f30d83086e65be1f.jpg', '[\"Tendas\", \"Palco\"]', '2021-08-18 00:00:00', 1),
(7, '2021-08-07 07:54:43', '2021-08-21 15:47:50', 'Vue.js', 'O Vue.js conta com uma arquitetura que pode ser adotada de forma incremental, e que foca na renderização declarativa e na composição de componentes. Funcionalidades avançadas necessárias para aplicações complexas (como encaminhamento, gestão de estados e automação de compilação) são oferecidas por meio de bibliotecas e pacotes de suporte mantidos oficialmente, sendo o Nuxt.js como uma das soluções mais populares.', 'são paulo', 0, 'b16bb2d6bbd066391a1723d76092172b.jpg', '[\"Tendas\", \"Palco\", \"Open Foods\", \"Park\"]', '2021-08-19 00:00:00', 2),
(8, '2021-08-07 07:58:05', '2021-08-21 15:50:46', 'Ionic', 'Ionic é um SDK de código aberto completo para desenvolvimento de aplicativo móvel híbrido criado por Max Lynch, Ben Sperry e Adam Bradley da Drifty Co. em 2013.  A versão original foi lançada em 2013 e construída sobre AngularJS e Apache Cordova . No entanto, o mais recente lançamento foi re-construída como um conjunto de Web Components , permitindo ao usuário escolher qualquer estrutura de interface do usuário, como Angular , React ou Vue.js .', 'paraná', 0, 'd3a9cac7e5f69378fe51c83f851319b9.jpg', '[\"Tendas\", \"Open Foods\", \"Drinks\", \"Park\"]', '2021-08-20 00:00:00', 2),
(9, '2021-08-07 08:00:22', '2021-08-07 08:00:22', 'React', 'O React (também denominado React.js ou ReactJS) é uma biblioteca JavaScript de código aberto com foco em criar interfaces de usuário (frontend) em páginas web. É mantido pelo Facebook, Instagram, outras empresas e uma comunidade de desenvolvedores individuais. É utilizado nos sites da Netflix, Imgur, Feedly, Airbnb, SeatGeek, HelloSign, Walmart e outros.', 'mato grosso', 0, 'ee6f9028646ae8c33c3fe1b39b7f173c.jpg', '[\"Tendas\", \"Palco\"]', '2021-08-21 00:00:00', 1),
(10, '2021-08-07 08:03:31', '2021-08-21 15:59:10', 'React Native', 'React Native é uma biblioteca Javascript criada pelo Facebook. É usada para desenvolver aplicativos para os sistemas Android e iOS de forma nativa. \r\nO React Native não usa HTML. Em vez disso, trabalha com Javascript puro com sintaxe JSX.', 'alagoas', 0, '98f430ec013bc47222261029a73d7228.jpg', '[\"Tendas\", \"Palco\", \"Drinks\", \"Park\"]', '2021-08-22 00:00:00', 3),
(11, '2021-08-07 09:17:52', '2021-08-21 16:00:02', 'Node.js', 'Node.js é um software de código aberto, multiplataforma, baseado no interpretador V8 do Google e que permite a execução de códigos JavaScript fora de um navegador web.\r\n\r\nO runtime de JavaScript é constituído pelos seguintes comandos: node package manage (npm), e npx (node package extractor); onde o primeiro tem o propósito de executar código armazenado num package de nodejs, instalando o software globalmente ou localmente, já o segundo tem o propósito de instalar a nível local o código instalado globalmente. Um exemplo disso é o npx create-react-app que tem como propósito instalar a nível local um template vazio de um site de react, pronto a ser usado, através de uma fórmula instalada com npm.', 'rio de janeiro', 0, 'd94e28075a96ee0630a48f2f780fad3d.jpg', '[\"Tendas\", \"Palco\", \"Souvenir\"]', '2021-08-23 00:00:00', 3),
(12, '2021-08-13 06:52:38', '2021-08-13 06:52:38', 'Angular', 'Angular é uma plataforma de aplicações web de código-fonte aberto e front-end baseado em TypeScript liderado pela Equipe Angular do Google e por uma comunidade de indivíduos e corporações. Angular é uma reescrita completa do AngularJS, feito pela mesma equipe que o construiu.\r\nDesde a versão 9.0, a equipe do Angular mudou todos os novos aplicativos para usar o compilador e o tempo de execução Ivy. Eles trabalharão no Ivy para melhorar os tamanhos dos pacotes de saída e as velocidades de desenvolvimento.', 'vitória', 0, '4cde7ce8bfed116a0bfdcf4c63ccf8e1.jpg', '[\"Palco\", \"Open Foods\", \"Park\"]', '2021-08-24 00:00:00', 3),
(13, '2021-08-13 11:59:12', '2021-08-13 11:59:12', 'Flutter', 'Flutter é um kit de desenvolvimento de interface de usuário (UI toolkit), de código aberto, criado pelo Google, que possibilita a criação de aplicativos compilados nativamente. Atualmente pode compilar para Android, iOS, Windows, Mac, Linux, Google Fuchsia e Web.', 'rio grande', 1, '0681998ed36903cc1be5370493176aaf.jpg', '[\"Tendas\", \"Palco\", \"Park\"]', '2021-08-25 00:00:00', 3),
(14, '2021-08-13 16:12:56', '2021-08-13 16:12:56', 'Ruby', 'Ruby é uma linguagem de programação interpretada multiparadigma, de tipagem dinâmica e forte, com gerenciamento de memória automático, originalmente planejada e desenvolvida no Japão em 1995, por Yukihiro \"Matz\" Matsumoto, para ser usada como linguagem de script. Matsumoto queria desenvolver uma linguagem de script que fosse mais poderosa do que Perl, e mais orientada a objetos do que Python. Ruby suporta programação funcional, orientada a objetos, imperativa e reflexiva. Foi inspirada principalmente por Python, Perl, Smalltalk, Eiffel, Ada e Lisp, sendo muito similar em vários aspectos a Python. Ruby está entre as 10 linguagens mais populares, de acordo com uma pesquisa conduzida pela RedMonk.', 'são paulo', 0, 'babbdcc5c921e25d46cba4b9cd2a1c3c.jpg', '[\"Tendas\", \"Park\"]', '2021-08-26 00:00:00', 1),
(15, '2021-08-13 16:36:18', '2021-08-22 14:49:00', 'Spring Boot', 'O Spring é um framework open source para a plataforma Java criado por Rod Johnson e descrito em seu livro \"Expert One-on-One: JEE Design e Development\". Trata-se de um framework não intrusivo, baseado nos padrões de projeto inversão de controle (IoC) e injeção de dependência.\r\n\r\nNo Spring o container se encarrega de \"instanciar\" classes de uma aplicação Java e definir as dependências entre elas através de um arquivo de configuração em formato XML, inferências do framework, o que é chamado de auto-wiring ou ainda anotações nas classes, métodos e propriedades. Dessa forma o Spring permite o baixo acoplamento entre classes de uma aplicação orientada a objetos.', 'rio de janeiro', 0, 'f178f1acc9a6d5955bf2419b0df403a7.jpg', '[\"Palco\", \"Souvenir\"]', '2021-08-29 00:00:00', 1),
(16, '2021-08-13 16:43:21', '2021-08-21 15:51:23', 'MySQL', 'O MySQL é um sistema de gerenciamento de banco de dados (SGBD), que utiliza a linguagem SQL (Linguagem de Consulta Estruturada, do inglês Structured Query Language) como interface. É atualmente um dos sistemas de gerenciamento de bancos de dados mais populares da Oracle Corporation, com mais de 10 milhões de instalações pelo mundo.\r\n\r\nEntre os usuários do banco de dados MySQL estão: NASA, Friendster, Banco Bradesco, Dataprev, HP, Nokia, Sony, Lufthansa, U.S. Army, U.S. Federal Reserve Bank, Associated Press, Alcatel, Slashdot, Cisco Systems, Google, entre outros.', 'são paulo', 0, 'a045eb11298522f93a5a7c202010de4a.jpg', '[\"Tendas\", \"Palco\", \"Park\"]', '2021-08-29 00:00:00', 2),
(17, '2021-08-13 16:57:59', '2021-08-13 16:57:59', 'MongoDB', 'MongoDB é um software de banco de dados orientado a documentos livre, de código aberto e multiplataforma, escrito na linguagem C++. Classificado como um programa de banco de dados NoSQL, o MongoDB usa documentos semelhantes a JSON com esquemas. É desenvolvido pela MongoDB Inc. e publicado sob uma combinação da GNU Affero General Public License e Licença Apache.\r\n\r\nSuas características permitem com que as aplicações modelem informações de modo muito mais natural, pois os dados podem ser aninhados em hierarquias complexas e continuar a ser indexáveis e fáceis de buscar.', 'minas gerais', 1, '4a540fe0625f9a23a302ce61f698290a.jpg', '[\"Tendas\", \"Park\", \"Souvenir\"]', '2021-08-29 00:00:00', 2),
(18, '2021-08-14 07:15:08', '2021-08-14 07:15:08', 'Python', 'Python é uma linguagem de programação de alto nível, interpretada de script, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte. Foi lançada por Guido van Rossum em 1991. Atualmente, possui um modelo de desenvolvimento comunitário, aberto e gerenciado pela organização sem fins lucrativos Python Software Foundation. Apesar de várias partes da linguagem possuírem padrões e especificações formais, a linguagem, como um todo, não é formalmente especificada. O padrão de facto é a implementação CPython.', 'bahia', 0, '730d862b7425d84dd4cc39c5812358ca.jpg', '[\"Tendas\", \"Palco\", \"Park\", \"Souvenir\"]', '2021-08-30 00:00:00', 1),
(19, '2021-08-15 06:21:25', '2021-08-15 06:21:25', 'C Sharp', 'C# é uma linguagem de programação, multiparadigma, de tipagem forte, desenvolvida pela Microsoft como parte da plataforma .NET. A sua sintaxe orientada a objetos foi baseada no C++ mas inclui muitas influências de outras linguagens de programação, como Object Pascal e, principalmente, Java. O código fonte é compilado para Common Intermediate Language (CIL) que é interpretado pela máquina virtual Common Language Runtime (CLR). C# é uma das linguagens projetadas para funcionar na Common Language Infrastructure da plataforma .NET Framework.', 'bahia', 0, '6286933e2537180626c7f2e9627d6332.jpg', '[\"Tendas\", \"Palco\", \"Drinks\", \"Park\"]', '2021-08-30 00:00:00', 3),
(20, '2021-08-15 06:23:58', '2021-08-15 06:23:58', 'Kotlin', 'Kotlin é uma Linguagem de programação multiplataforma, orientada a objetos e funcional, concisa e estaticamente tipada (variáveis com tipos específicos), desenvolvida pela JetBrains em 2011, que compila para a Máquina virtual Java e que também pode ser traduzida para a linguagem JavaScript e compilada para código nativo (via LLVM). Foi anunciada em 2017 pela Google como a linguagem oficial do sistema Android.', 'rio grande do norte', 1, '3c21c391cf25b41e75e736e87164a260.jpg', '[\"Open Foods\", \"Drinks\", \"Souvenir\"]', '2021-08-30 00:00:00', 3),
(21, '2021-08-15 06:48:40', '2021-08-15 06:48:40', 'Bootstrap', 'Bootstrap é um framework web com código-fonte aberto para desenvolvimento de componentes de interface e front-end para sites e aplicações web usando HTML, CSS e JavaScript, baseado em modelos de design para a tipografia, melhorando a experiência do usuário em um site amigável e responsivo.\r\n\r\nO Bootstrap é um dos projetos mais bem avaliados no site GitHub, com mais de 111 600 estrelas e 51 500 forks. Possui ampla documentação na página oficial: https://getbootstrap.com/, assim como diversos tutoriais e materiais em português.', 'são paulo', 1, '50ea037c255f8a0829f085144e91b05e.jpg', '[\"Palco\", \"Drinks\", \"Souvenir\"]', '2021-08-31 00:00:00', 1),
(22, '2021-08-15 10:35:32', '2021-08-15 10:35:32', 'Swift', 'Swift é uma linguagem de programação desenvolvida pela Apple para desenvolvimento no iOS, macOS, watchOS, tvOS e Linux. Swift foi desenvolvida para manter compatibilidade com a API Cocoa e com código existente em Objective-C. O compilador usa a infraestrutura do LLVM e é distribuído junto do Xcode desde a versão 6.\r\n\r\nFoi anunciada na WWDC em 2014, conferência anual da Apple. Inicialmente um software proprietário, a partir da versão 2.2 (dezembro de 2015) foi distribuída sob a licença Apache 2.0.', 'paraná', 1, '4e26ecb47a6bcfc71e1bb77b03682b2b.jpg', '[\"Palco\", \"Souvenir\"]', '2021-08-31 00:00:00', 2),
(23, '2021-08-15 10:40:07', '2021-08-15 10:40:07', 'Laravel', 'Laravel é um framework PHP livre e open-source criado por Taylor B. Otwell para o desenvolvimento de sistemas web que utilizam o padrão MVC (model, view, controller). Algumas características proeminentes do Laravel são sua sintaxe simples e concisa, um sistema modular com gerenciador de dependências dedicado, várias formas de acesso a banco de dados relacionais e vários utilitários indispensáveis no auxílio ao desenvolvimento e manutenção de sistemas.', 'são paulo', 0, '6b1b97f85f80a0bfece8dbdcb721167d.jpg', '[\"Tendas\", \"Palco\", \"Park\", \"Souvenir\"]', '2021-08-31 00:00:00', 2),
(24, '2021-08-15 14:23:16', '2021-08-15 14:23:16', 'Electron', 'Electron (anteriormente conhecido como Atom Shell) é um framework de código aberto criado por Cheng Zhao, e agora desenvolvido pelo GitHub. Ele permite desenvolver aplicações para desktop GUI usando componentes front end e back end originalmente criados para aplicações web: Node.js para o back end e Chromium para o front end. Electron é o principal framework por trás de vários projetos notáveis de código aberto, incluindo Atom da GitHub e os editores de código-fonte: Visual Studio Code da Microsoft e o Light Table IDE, além da aplicação desktop do serviço de bate-papo Discord.', 'vitória', 1, '98984bdf023d8d2f2e63ea88dab3f02a.jpg', '[\"Palco\", \"Souvenir\"]', '2021-08-31 00:00:00', 3),
(25, '2021-08-17 07:48:35', '2021-08-17 07:48:35', 'Material Design', 'Material Design (codinomeado Quantum Paper) é uma linguagem de design desenvolvida pela Google. Uma melhoria nos \"card\" que estrearam no Google Now, o Material Design faz um uso mais liberal de layouts baseados em grids, animações e transições responsivas, preenchimentos, e efeitos de profundidade como luzes e sombras. O designer Matías Duarte explicou que \"diferente do papel real, o nosso material digital pode se expandir e se modificar de forma inteligente. O Material tem bordas e superfícies físicas. Costuras e sombras dão um sentido com o que você pode tocar.\" A Google afirma que a sua nova linguagem de design é baseada em papel e tinta.', 'goiás', 1, 'adfcb8ca0005ed99f9eb70ee38c7e165.jpg', '[\"Palco\", \"Open Foods\", \"Drinks\"]', '2021-09-02 00:00:00', 2),
(26, '2021-08-17 07:51:31', '2021-08-17 07:51:31', 'Git', 'Git é um sistema de controle de versões distribuído, usado principalmente no desenvolvimento de software, mas pode ser usado para registrar o histórico de edições de qualquer tipo de arquivo (Exemplo: alguns livros digitais são disponibilizados no GitHub e escrito aos poucos publicamente). O Git foi inicialmente projetado e desenvolvido por Linus Torvalds para o desenvolvimento do kernel Linux, mas foi adotado por muitos outros projetos.', 'ceará', 0, '906db5165b37f91473d3ba13bed68214.jpg', '[\"Tendas\", \"Park\", \"Souvenir\"]', '2021-09-02 00:00:00', 1),
(27, '2021-08-17 07:56:00', '2021-08-17 07:56:00', 'Dart', 'Dart (originalmente denominada Dash) é uma linguagem de script voltada à web desenvolvida pela Google. Ela foi lançada na GOTO Conference 2011, que aconteceu de 10 a 11 de outubro de 2011 em Aarhus, na Dinamarca. O objetivo da linguagem Dart foi inicialmente a de substituir a JavaScript como a linguagem principal embutida nos navegadores. Programas nesta linguagem podem tanto serem executados em uma máquina virtual quanto compilados para JavaScript.', 'maranhão', 0, '33b2200a822d0cc3547467947705838e.jpg', '[\"Palco\", \"Souvenir\"]', '2021-09-03 00:00:00', 2),
(28, '2021-08-17 08:03:51', '2021-08-21 08:33:53', 'Firebase', 'Firebase é uma plataforma desenvolvida pelo Google para a criação de aplicativos móveis e da web . Era originalmente uma empresa independente fundada em 2011. Em 2014, o Google adquiriu a plataforma  e agora é sua oferta principal para o desenvolvimento de aplicativos.\r\nO primeiro produto do Firebase foi o Firebase Realtime Database, uma API que sincroniza dados de aplicativos em dispositivos iOS, Android e Web e os armazena na nuvem do Firebase. O produto auxilia os desenvolvedores de software na construção de aplicativos colaborativos em tempo real.', 'pará', 1, '8a3e42254a46cf9d8c1542f8081756a7.jpg', '[\"Palco\", \"Open Foods\", \"Drinks\"]', '2021-09-03 00:00:00', 2),
(29, '2021-08-18 14:29:43', '2021-08-21 13:59:52', 'PostgreSQL', 'O PostgreSQL é um projeto open source coordenado pelo PostgreSQL Global Development Group. Embora as atividades do grupo sejam patrocinadas por diversas organizações de todo o mundo, seu modelo de desenvolvimento é o modelo Bazar (originalmente apresentado em A Catedral e o Bazar de Eric S. Raymond).\r\n\r\nPortanto, o desenvolvimento do PostgreSQL é feito por um grupo de desenvolvedores, em sua maioria voluntários, espalhados por todo o mundo e que se comunicam via Internet. Logo, trata-se, de um projeto direcionado pela comunidade de desenvolvedores e de usuários, a qual qualquer pessoa pode se juntar, bastando se inscrever em listas de discussão e participar delas.', 'paraíba', 1, 'e97b62fc7a55b943fe464f354abeb783.jpg', '[\"Palco\", \"Drinks\", \"Souvenir\"]', '2021-09-04 00:00:00', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `event_user`
--

CREATE TABLE `event_user` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `event_user`
--

INSERT INTO `event_user` (`event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 2, NULL, NULL),
(14, 2, NULL, NULL),
(2, 3, NULL, NULL),
(6, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_03_002924_create_events_table', 1),
(7, '2021_08_06_211644_add_image_to_events_table', 1),
(8, '2021_08_12_214624_add_items_to_events_table', 1),
(9, '2021_08_13_051301_add_date_to_events_table', 1),
(10, '2021_08_14_213903_create_sessions_table', 1),
(11, '2021_08_18_062246_add_user_id_to_events_table', 1),
(12, '2021_08_21_031413_create_event_user_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('L58j94a2l5r2JmajhGbXa4zg2xdOeha6ROgGyCOL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG5wTXRsOFltYjBlR3VHSVhIZmd2c09HV3JyY2pCQ1BJVmVhYVdiTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1629625250),
('meTGngcS7BrThWctptbmIBYSj23a1hvwtotH5pgJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1A2a1Q4SHFsN3d4MnZlRFIzSlNpSk1TMFgzT01FTDlWU1RCMVdlayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ldmVudHMvMjkiO319', 1629630415);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Design Music Festival', 'luiz@gmail.com', NULL, '$2y$10$OQe/dSAHu2LbVxppQNNdH.yxFVdlIvVuwchb9OFtx36fQRqKmpXSa', NULL, NULL, NULL, NULL, NULL, '2021-08-18 14:07:50', '2021-08-18 14:07:50'),
(2, 'Eletric Framework', 'ana@gmail.com', NULL, '$2y$10$cMtBJ47STMlPRdDM4d4yXe.Gr0XvmAViCFFEnb0SlUqwkLVjaeBl6', NULL, NULL, NULL, NULL, NULL, '2021-08-18 14:20:08', '2021-08-18 14:20:08'),
(3, 'Universo Front', 'davi@gmail.com', NULL, '$2y$10$y8VY6sAzHqTE66js9AUC.udOXQkHX4cLvC2MlhFGr45G1cholSWVW', NULL, NULL, NULL, NULL, NULL, '2021-08-18 14:24:59', '2021-08-18 14:24:59'),
(4, 'Mystery Land App', 'clara@gmail.com', NULL, '$2y$10$yKm38sbXsXvIeVZBtSS4nu6LYUmVq/fy6FptOOg/JeyB1aDNY/WX.', NULL, NULL, NULL, NULL, NULL, '2021-08-20 14:26:59', '2021-08-20 14:26:59');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Índices de tabela `event_user`
--
ALTER TABLE `event_user`
  ADD KEY `event_user_event_id_foreign` (`event_id`),
  ADD KEY `event_user_user_id_foreign` (`user_id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(250));

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
