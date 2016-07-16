-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 16-Jul-2016 às 16:27
-- Versão do servidor: 5.5.49-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `railscms_development`
--
CREATE DATABASE IF NOT EXISTS `railscms_development` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `railscms_development`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$11$JcDf6aIWh0kaa/JyExfwtOQCqBr/lZaOFhqROkgrtQmpO87puueUS', NULL, NULL, NULL, 1, '2016-06-09 04:03:15', '2016-06-09 04:03:15', '89.153.69.224', '89.153.69.224', '2016-06-09 03:39:19', '2016-06-09 04:03:15'),
(2, 'zetinocodavila@gmail.com', '$2a$11$8q/96urKeOS3knbeqfF.6OD0whR0vYJsqzFcCb/JP3NalAlAeyDeO', NULL, NULL, '2016-06-11 23:09:15', 3, '2016-07-06 16:53:54', '2016-06-12 01:54:18', '93.102.171.81', '89.153.69.224', '2016-06-09 04:06:43', '2016-07-06 16:53:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `position` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `show_title` tinyint(1) DEFAULT NULL,
  `class_suffix` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `blocks`
--

INSERT INTO `blocks` (`id`, `title`, `body`, `position`, `display`, `show_title`, `class_suffix`, `is_published`, `created_at`, `updated_at`, `order`) VALUES
(1, 'Block One', '<p>Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see. Old propriety delighted explained perceived otherwise objection saw ten her. Doubt merit sir the right these alone keeps. By sometimes intention smallness he northward. Consisted we otherwise arranging commanded discovery it explained. Does cold even song like two yet been.</p>', 'block', 'home', 1, '', 1, '2016-06-09 04:53:48', '2016-07-08 00:52:44', 2),
(2, 'Jumbotron Block', '<p>Depart do be so he enough talent. Sociable formerly six but handsome. Up do view time they shot. He concluded disposing provision by questions as situation. Its estimating are motionless day sentiments end. Calling an imagine at forbade. At name no an what like spot. Pressed my by do affixed he studied.</p>', 'jumbotron', 'home', 0, '', 1, '2016-07-08 00:18:03', '2016-07-08 00:29:04', 1),
(3, 'Block Two', '<p>Numbly some playfully baboon for jeez crassly because goodness far well more vigorously goodness crud lion hey stuffy shook objective wow scornfully the near camel oh some far swam otter one adroit this whooped dear opposite goodhearted far beneficent oversaw monkey much yikes and buffalo this beyond. <p>', 'block', 'home', 1, '', 1, '2016-07-08 00:50:21', '2016-07-08 00:50:21', 2),
(4, 'Block Three', '<p>Stole less thanks more until gosh wow irrespective a that exorbitant sardonically fishily against regarding oh kookaburra energetically less the the far regardless overdid that flexibly and waked as howled browbeat floated close this a unsociable far pending regarding successfully glared much because thankfully yet far dear.</p>', 'block', 'home', 1, '', 1, '2016-07-08 00:51:25', '2016-07-08 00:51:25', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `body` text,
  `order` int(11) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `menu_display` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `title`, `section_id`, `body`, `order`, `is_published`, `menu_display`, `created_at`, `updated_at`, `featured`) VALUES
(1, 'About Us', 1, '<h2>Lose eyes get fat shew</h2>\r\n\r\n<p>With my them if up many. Lain week nay she them her she. Extremity so attending objection as engrossed gentleman something. Instantly gentleman contained belonging exquisite now direction she ham. West room at sent if year. Numerous indulged distance old law you. Total state as merit court green decay he. Steepest sex bachelor the may delicate its yourself. As he instantly on discovery concluded to. Open draw far pure miss felt say yet few sigh.</p>\r\n\r\n<p>Her companions instrument set estimating sex remarkably solicitude motionless. Property men the why smallest graceful day insisted required. Inquiry justice country old placing sitting any ten age. Looking venture justice in evident in totally he do ability. Be is lose girl long of up give. Trifling wondered unpacked ye at he. In household certainty an on tolerably smallness difficult. Many no each like up be is next neat. Put not enjoyment behaviour her supposing. At he pulled object others.</p>', NULL, 1, 1, '2016-06-09 04:39:22', '2016-06-09 04:39:22', NULL),
(2, 'Web Design', 2, '<h2>Inhabit hearing perhaps on ye do no</h2>\r\n\r\n<p>Death weeks early had their and folly timed put. Hearted forbade on an village ye in fifteen. Age attended betrayed her man raptures laughter. Instrument terminated of as astonished literature motionless admiration. The affection are determine how performed intention discourse but. On merits on so valley indeed assure of. Has add particular boisterous uncommonly are. Early wrong as so manor match. Him necessary shameless discovery consulted one but.</p>\r\n\r\n<p>Style never met and those among great. At no or september sportsmen he perfectly happiness attending. Depending listening delivered off new she procuring satisfied sex existence. Person plenty answer to exeter it if. Law use assistance especially resolution cultivated did out sentiments unsatiable. Way necessary had intention happiness but september delighted his curiosity. Furniture furnished or on strangers neglected remainder engrossed.</p>\r\n\r\n<p>In show dull give need so held. One order all scale sense her gay style wrote. Incommode our not one ourselves residence. Shall there whose those stand she end. So unaffected partiality indulgence dispatched to of celebrated remarkably. Unfeeling are had allowance own perceived abilities.</p>\r\n\r\n<p>Supported neglected met she therefore unwilling discovery remainder. Way sentiments two indulgence uncommonly own. Diminution to frequently sentiments he connection continuing indulgence. An my exquisite conveying up defective. Shameless see the tolerably how continued. She enable men twenty elinor points appear. Whose merry ten yet was men seven ought balls.</p>', NULL, 1, 1, '2016-06-09 04:40:35', '2016-06-12 00:53:12', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160609033838'),
('20160609033847'),
('20160609041523'),
('20160609041824'),
('20160609042159'),
('20160609045111'),
('20160612003403');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `sections`
--

INSERT INTO `sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Company', '2016-06-09 04:38:14', '2016-06-09 04:38:14'),
(2, 'Services', '2016-06-09 04:38:25', '2016-06-09 04:38:25');
--
-- Base de Dados: `railscms_test`
--
CREATE DATABASE IF NOT EXISTS `railscms_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `railscms_test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
