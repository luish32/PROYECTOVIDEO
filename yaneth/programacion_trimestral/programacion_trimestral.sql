-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2017 a las 19:21:35
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `programacion_trimestral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambientes`
--

CREATE TABLE `ambientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `cupo` int(100) NOT NULL,
  `disponibilidad` varchar(200) COLLATE utf8_bin NOT NULL,
  `centro` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ambientes`
--

INSERT INTO `ambientes` (`id`, `nombre`, `cupo`, `disponibilidad`, `centro`) VALUES
(1, 'SISTEMAS1', 60, '', 'industria'),
(2, 'SISTEMAS 2', 40, '', 'industria'),
(3, 'SISTEMAS 3', 50, '', 'industria'),
(4, 'AUTOCAD', 50, '', 'industria'),
(5, 'AUDITORIO', 200, '', 'industria'),
(6, 'AUTOMOTRIZ', 90, '', 'industria'),
(7, 'CONFECCION', 60, '', 'industria'),
(8, 'DIBUJO', 40, '', 'industria'),
(9, 'DIESEL', 100, '', 'industria'),
(10, 'ELECTRICIDAD 1', 60, '', 'industria'),
(11, 'ELECTRICIDAD 2 ', 70, '', 'industria'),
(12, 'ELECTRICIDAD 3', 50, '', 'industria'),
(13, 'ELECTRICIDAD 4', 30, '', 'industria'),
(14, 'MANUFACTURA MADERAS', 35, '', 'industria'),
(15, 'MANTENIMIENTO', 107, '', 'industria'),
(16, 'MECANIZADO', 80, '', 'industria'),
(17, 'METALOGRAFIA', 50, '', 'industria'),
(18, 'SALUD OCUPACIONAL', 70, '', 'industria'),
(19, 'SOLDADURA', 75, '', 'industria'),
(20, 'REDES PARA GAS', 50, '', 'industria'),
(21, 'INSTRUMENTACION Y CONTROL', 40, '', 'automatizacion'),
(22, 'NEUMATICA', 40, '', 'automatizacion'),
(23, 'SERVOSISTEMAS', 40, '', 'automatizacion'),
(24, 'AMBIENTE LEGO', 50, '', 'industria'),
(25, 'ESPACIO DEPORTIVO', 300, '', 'industria'),
(26, 'ESPACIO PARA TRABAJO EN ALTURAS', 350, '', 'industria'),
(27, 'GIMNASIO REGIONAL CALDAS', 1000, '', 'industria'),
(28, 'REFRIGERACION', 60, '', 'industria'),
(29, 'TECNOPARQUE', 75, '', 'industria'),
(30, 'MOTOS', 50, '', 'industria'),
(31, 'AMBIENTE EXTERNO', 0, '', 'externo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(10) NOT NULL,
  `centro` varchar(50) COLLATE utf8_bin NOT NULL,
  `ambientei` varchar(50) COLLATE utf8_bin NOT NULL,
  `instructori` varchar(50) COLLATE utf8_bin NOT NULL,
  `ambientea` varchar(50) COLLATE utf8_bin NOT NULL,
  `instructora` varchar(50) COLLATE utf8_bin NOT NULL,
  `area` varchar(100) COLLATE utf8_bin NOT NULL,
  `nueva_area` varchar(100) COLLATE utf8_bin NOT NULL,
  `ficha` int(50) NOT NULL,
  `especialidad` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `url` varchar(150) COLLATE utf8_bin NOT NULL,
  `class` varchar(45) COLLATE utf8_bin NOT NULL,
  `start` varchar(15) COLLATE utf8_bin NOT NULL,
  `end` varchar(15) COLLATE utf8_bin NOT NULL,
  `inicio_normal` datetime NOT NULL,
  `final_normal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `centro`, `ambientei`, `instructori`, `ambientea`, `instructora`, `area`, `nueva_area`, `ficha`, `especialidad`, `title`, `body`, `url`, `class`, `start`, `end`, `inicio_normal`, `final_normal`) VALUES
(98, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Osacar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=98', 'event-success', '1507024800000', '1507046400000', '2017-10-03 07:00:00', '2017-10-03 13:00:00'),
(99, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Seleccione...', 'Maria Beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=99', 'event-success', '1507050000000', '1507064400000', '2017-10-03 14:00:00', '2017-10-03 18:00:00'),
(100, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=100', 'event-success', '1507111200000', '1507132800000', '2017-10-04 07:00:00', '2017-10-04 13:00:00'),
(101, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=101', 'event-success', '1507197600000', '1507219200000', '2017-10-05 07:00:00', '2017-10-05 13:00:00'),
(102, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=102', 'event-success', '1507284000000', '1507305600000', '2017-10-06 07:00:00', '2017-10-06 13:00:00'),
(103, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Etica y Comunicacion', '', 1323395, 'Seleccione...', 'Consuelo', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=103', 'event-success', '1507309200000', '1507323600000', '2017-10-06 14:00:00', '2017-10-06 18:00:00'),
(105, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=105', 'event-success', '1507629600000', '1507651200000', '2017-10-10 07:00:00', '2017-10-10 13:00:00'),
(108, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Seleccione...', 'Maria Beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=108', 'event-success', '1507654800000', '1507669200000', '2017-10-10 14:00:00', '2017-10-10 18:00:00'),
(109, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=109', 'event-success', '1507716000000', '1507737600000', '2017-10-11 07:00:00', '2017-10-11 13:00:00'),
(110, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=110', 'event-success', '1507802400000', '1507824000000', '2017-10-12 07:00:00', '2017-10-12 13:00:00'),
(111, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=111', 'event-success', '1507888800000', '1507910400000', '2017-10-13 07:00:00', '2017-10-13 13:00:00'),
(112, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Etica y Comunicacion', '', 1323395, 'Seleccione...', 'Consuelo', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=112', 'event-success', '1507914000000', '1507928400000', '2017-10-13 14:00:00', '2017-10-13 18:00:00'),
(113, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=113', 'event-success', '1508234400000', '1508256000000', '2017-10-17 07:00:00', '2017-10-17 13:00:00'),
(114, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Seleccione...', 'Maria Beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=114', 'event-success', '1508259600000', '1508274000000', '2017-10-17 14:00:00', '2017-10-17 18:00:00'),
(115, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=115', 'event-success', '1508320800000', '1508342400000', '2017-10-18 07:00:00', '2017-10-18 13:00:00'),
(116, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=116', 'event-success', '1508407200000', '1508428800000', '2017-10-19 07:00:00', '2017-10-19 13:00:00'),
(117, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=117', 'event-success', '1508493600000', '1508515200000', '2017-10-20 07:00:00', '2017-10-20 13:00:00'),
(118, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Etica y Comunicacion', '', 1323395, 'Seleccione...', 'Consuelo', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=118', 'event-success', '1508518800000', '1508518800000', '2017-10-20 14:00:00', '2017-10-20 14:00:00'),
(119, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=119', 'event-success', '1508839200000', '1508860800000', '2017-10-24 07:00:00', '2017-10-24 13:00:00'),
(120, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Seleccione...', 'Maria Beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=120', 'event-success', '1508864400000', '1508878800000', '2017-10-24 14:00:00', '2017-10-24 18:00:00'),
(121, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=121', 'event-success', '1508925600000', '1508947200000', '2017-10-25 07:00:00', '2017-10-25 13:00:00'),
(122, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=122', 'event-success', '1509012000000', '1509033600000', '2017-10-26 07:00:00', '2017-10-26 13:00:00'),
(123, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=123', 'event-success', '1509098400000', '1509120000000', '2017-10-27 07:00:00', '2017-10-27 13:00:00'),
(124, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Etica y Comunicacion', '', 1323395, 'Seleccione...', 'Consuelo', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=124', 'event-success', '1509123600000', '1509138000000', '2017-10-27 14:00:00', '2017-10-27 18:00:00'),
(125, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=125', 'event-success', '1509444000000', '1509465600000', '2017-10-31 07:00:00', '2017-10-31 13:00:00'),
(126, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=126', 'event-success', '1509530400000', '1509552000000', '2017-11-01 07:00:00', '2017-11-01 13:00:00'),
(127, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Seleccione...', 'Maria Beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=127', 'event-success', '1509469200000', '1509483600000', '2017-10-31 14:00:00', '2017-10-31 18:00:00'),
(128, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=128', 'event-success', '1509616800000', '1509638400000', '2017-11-02 07:00:00', '2017-11-02 13:00:00'),
(129, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=129', 'event-success', '1509703200000', '1509724800000', '2017-11-03 07:00:00', '2017-11-03 13:00:00'),
(139, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=139', 'event-success', '1510048800000', '1510070400000', '2017-11-07 07:00:00', '2017-11-07 13:00:00'),
(144, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Seleccione...', 'Beatriz Pava', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=144', 'event-success', '1510074000000', '1510088400000', '2017-11-07 14:00:00', '2017-11-07 18:00:00'),
(145, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=145', 'event-success', '1510135200000', '1510156800000', '2017-11-08 07:00:00', '2017-11-08 13:00:00'),
(146, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=146', 'event-success', '1510221600000', '1510243200000', '2017-11-09 07:00:00', '2017-11-09 13:00:00'),
(147, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth Mejia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=147', 'event-success', '1510308000000', '1510329600000', '2017-11-10 07:00:00', '2017-11-10 13:00:00'),
(148, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Proyectos y Emprendimiento', '', 1323395, 'Seleccione...', 'Consuelo Garcia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=148', 'event-success', '1510333200000', '1510347600000', '2017-11-10 14:00:00', '2017-11-10 18:00:00'),
(149, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=149', 'event-success', '1510653600000', '1510675200000', '2017-11-14 07:00:00', '2017-11-14 13:00:00'),
(150, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Informatica', 'Beatriz Pava', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=150', 'event-success', '1510678800000', '1510693200000', '2017-11-14 14:00:00', '2017-11-14 18:00:00'),
(151, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', '6', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=151', 'event-success', '1510740000000', '1510761600000', '2017-11-15 07:00:00', '2017-11-15 13:00:00'),
(152, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=152', 'event-success', '1510826400000', '1510848000000', '2017-11-16 07:00:00', '2017-11-16 13:00:00'),
(153, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=153', 'event-success', '1510912800000', '1510934400000', '2017-11-17 07:00:00', '2017-11-17 13:00:00'),
(156, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Proyectos y Emprendimiento', '', 1323395, 'Informatica', 'Consuelo Garcia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=156', 'event-success', '1510938000000', '1510952400000', '2017-11-17 14:00:00', '2017-11-17 18:00:00'),
(157, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=157', 'event-success', '1511258400000', '1511280000000', '2017-11-21 07:00:00', '2017-11-21 13:00:00'),
(160, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Informatica', 'Yaneth Mejia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=160', 'event-success', '1511283600000', '1511298000000', '2017-11-21 14:00:00', '2017-11-21 18:00:00'),
(161, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth Mejia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=161', 'event-success', '1511344800000', '1511366400000', '2017-11-22 07:00:00', '2017-11-22 13:00:00'),
(170, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=170', 'event-success', '1511431200000', '1511452800000', '2017-11-23 07:00:00', '2017-11-23 13:00:00'),
(171, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth Mejia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=171', 'event-success', '1511517600000', '1511539200000', '2017-11-24 07:00:00', '2017-11-24 13:00:00'),
(174, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Proyectos y Emprendimiento', '', 1323395, 'Informatica', 'Consuelo Garcia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=174', 'event-success', '1511542800000', '1511557200000', '2017-11-24 14:00:00', '2017-11-24 18:00:00'),
(175, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=175', 'event-success', '1511863200000', '1511884800000', '2017-11-28 07:00:00', '2017-11-28 13:00:00'),
(176, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Informatica', 'Beatriz Pava', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=176', 'event-success', '1511888400000', '1511902800000', '2017-11-28 14:00:00', '2017-11-28 18:00:00'),
(179, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth Mejia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=179', 'event-success', '1511949600000', '1511971200000', '2017-11-29 07:00:00', '2017-11-29 13:00:00'),
(180, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Oscar Aristizabal', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=180', 'event-success', '1512036000000', '1512057600000', '2017-11-30 07:00:00', '2017-11-30 13:00:00'),
(183, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=183', '', '1512122400000', '1512144000000', '2017-12-01 07:00:00', '2017-12-01 13:00:00'),
(184, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=184', 'event-success', '1512468000000', '1512489600000', '2017-12-05 07:00:00', '2017-12-05 13:00:00'),
(187, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Ingles Presencial', '', 1323395, 'Informatica', 'beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=187', 'event-success', '1512493200000', '1512507600000', '2017-12-05 14:00:00', '2017-12-05 18:00:00'),
(190, 'Industria', 'SISTEMAS1', 'YANETH', '', '', '', '', 1323395, 'Informatica', 'Yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=190', 'event-success', '1512554400000', '1512576000000', '2017-12-06 07:00:00', '2017-12-06 13:00:00'),
(191, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=191', 'event-success', '1512640800000', '1512662400000', '2017-12-07 07:00:00', '2017-12-07 13:00:00'),
(192, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'yaneth', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=192', 'event-success', '1512727200000', '1512727200000', '2017-12-08 07:00:00', '2017-12-08 07:00:00'),
(193, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Mobiliario y Maderas', '', 1323395, 'Informatica', 'consuelo', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=193', 'event-success', '1512752400000', '1512766800000', '2017-12-08 14:00:00', '2017-12-08 18:00:00'),
(194, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=194', 'event-success', '1513072800000', '1513094400000', '2017-12-12 07:00:00', '2017-12-12 13:00:00'),
(195, 'Industria', 'SISTEMAS1', 'YANETH', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'Yaneth Mejia', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=195', 'event-success', '1513159200000', '1513180800000', '2017-12-13 07:00:00', '2017-12-13 13:00:00'),
(198, 'Industria', 'SISTEMAS1', 'OSCAR FERNANDO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'oscar', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=198', 'event-success', '1513245600000', '1513267200000', '2017-12-14 07:00:00', '2017-12-14 13:00:00'),
(201, 'Industria', 'SISTEMAS1', 'CONSUELO', '', '', 'Informatica y Sistemas', '', 1323395, 'Informatica', 'consuelo', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=201', 'event-success', '1513357200000', '1513371600000', '2017-12-15 14:00:00', '2017-12-15 18:00:00'),
(204, 'Industria', 'SISTEMAS1', 'MARIA BEATRIZ', '', '', 'Informatica y Sistemas', '', 1323395, 'Seleccione...', 'Maria Beatriz', '', 'http://localhost/yaneth/programacion_trimestral/calendario1/descripcion_evento.php?id=204', 'event-success', '1513094400000', '1513112400000', '2017-12-12 13:00:00', '2017-12-12 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `externo`
--

CREATE TABLE `externo` (
  `id` int(11) NOT NULL,
  `centro` varchar(50) COLLATE utf8_bin NOT NULL,
  `ambiente` varchar(50) COLLATE utf8_bin NOT NULL,
  `instructor` varchar(50) COLLATE utf8_bin NOT NULL,
  `area` varchar(100) COLLATE utf8_bin NOT NULL,
  `nueva_area` varchar(100) COLLATE utf8_bin NOT NULL,
  `ficha` int(50) NOT NULL,
  `especialidad` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `url` varchar(150) COLLATE utf8_bin NOT NULL,
  `class` varchar(45) COLLATE utf8_bin NOT NULL,
  `start` varchar(15) COLLATE utf8_bin NOT NULL,
  `end` varchar(15) COLLATE utf8_bin NOT NULL,
  `inicio_normal` datetime NOT NULL,
  `final_normal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `id` int(11) NOT NULL,
  `ficha` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `especialidad` varchar(100) COLLATE utf8_bin NOT NULL,
  `instructor` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_lectiva` date NOT NULL,
  `fecha_final` date NOT NULL,
  `horario` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fichas`
--

INSERT INTO `fichas` (`id`, `ficha`, `nombre`, `especialidad`, `instructor`, `fecha_inicio`, `fecha_lectiva`, `fecha_final`, `horario`) VALUES
(2, '1132816', 'Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yaneth Mejia', '2016-04-11', '2017-10-12', '2018-04-11', ''),
(3, '1323395', 'Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yaneth Mejia', '2017-01-23', '2018-07-23', '2019-01-23', 'Mixta'),
(4, '1368665', 'Especializacion Tecnologica en Metodologias Para el Desarrollo de Software', 'Informatica', 'Yaneth Mejia', '2017-04-17', '0000-00-00', '2017-10-16', 'Dual'),
(14, '1375843', 'Auxiliar Trabajador de Madera', 'Construccion', 'Camilo Andres Naranjo', '2017-02-23', '2017-05-23', '2017-08-23', 'Diurna'),
(15, '1132770', 'Desarrollo Grafico de Proyectos de Arquitectura E Ingenieria', 'Construccion', 'Jorge Alberto Tamayo ', '2017-04-11', '2017-10-11', '2018-04-11', 'Diurna'),
(21, '1094381', 'Topografia', 'Construccion', 'AndrÃ©s Felipe Jurado ', '2017-01-25', '2017-07-24', '2018-01-24', 'Diurna'),
(22, '1261608', 'Tecnologo en Construccion', 'Construccion', 'Alexander Arenas', '2016-09-26', '2018-03-26', '2018-09-26', 'Diurna'),
(23, '1261604', 'Tecnologo en Desarrollo Grafico de Proyectos de Arquitectura e ingenireria', 'Construccion', 'Aparicio Mejia', '2016-09-26', '0000-00-00', '2018-04-26', 'Diurna'),
(24, '1301351', 'Mantenimiento y ReparaciÃ³n de Edificaciones', 'Construccion', 'MARIO RAIGOZA', '2016-10-10', '0000-00-00', '2017-12-11', 'Diurna'),
(25, '1368569 A', 'Tecnologo en Desarrollo Grafico de Proyectos de Arquitectura e ingenireria', 'Construccion', 'Jorge Alberto Tamayo Grisales', '2017-04-17', '2018-10-16', '2019-04-16', 'Mixta'),
(26, '1075391', 'Tecnologo en Topografia', 'Construccion', 'Andres Felipe Jurado', '2015-09-28', '2017-03-28', '2017-09-28', 'Nocturna-Dual'),
(27, '1323382', 'Tecnologo en Topografia', 'Construccion', 'Felipe Jurado', '2017-01-23', '2018-07-23', '2019-07-23', 'Diurna'),
(28, '1368604', 'Tecnologo en Obras Civiles', 'Construccion', 'Aparicio Mejia', '2017-04-17', '2018-10-16', '2019-04-16', 'Dual'),
(29, '1132795', 'Mantenimiento Mecanico Industrial', 'Mecanica', 'Diego Alexander Grajales', '2016-04-11', '2017-10-11', '2018-04-11', 'Diurna'),
(32, '1197616', 'Mantenimiento Mecanico Industrial', 'Mecanica', 'Jhon Fredy Cortes ', '2016-07-11', '2018-01-11', '2018-01-11', 'Diurna'),
(33, '1368653', 'Mantenimiento Mecanico Industrial', 'Mecanica', 'Alberto Acebedo', '2017-04-17', '0000-00-00', '2019-04-16', 'Dual'),
(34, '1132756', 'Tecnologo en Electricidad Industrial', 'Electricidad', 'Guillermo Antonio Valencia', '2016-04-11', '2017-10-11', '2018-04-11', 'Diurna'),
(35, '1197544', 'Mantenimiento Electro-Mecanico Industrial', 'Eectricidad', 'Miryam Claudina Gracia Naranjo', '2016-07-11', '2018-01-11', '2018-07-11', 'Diurna'),
(36, '1197576', 'Electricidad Industrial', 'Eectricidad', 'Juan Carlos Lopez', '2016-07-11', '2018-01-11', '2018-07-11', 'Diurna'),
(37, '1368673', 'Tecnologo en Electricidad Industrial', 'Eectricidad', 'Claudio Alberto Valencia Sanchez', '2017-04-17', '2018-10-16', '2019-04-16', 'Diurna'),
(38, '1368529', 'Tecnologo en Electricidad Residencial', 'Eectricidad', 'Mario Leandro Vargas', '2017-04-17', '0000-00-00', '2018-07-16', 'Dual'),
(39, '1323358', 'Tecnologo en SupervisiÃ³n De Redes De DistribuciÃ³n De EnergÃ­a ElÃ©ctrica', 'Eectricidad', 'Melody Ramos Giraldo', '2017-01-23', '2018-07-23', '2019-01-23', 'Diurna'),
(40, '1367722', 'Mantenimiento Electro-Mecanico Industrial', 'Mecanica', 'Myriam Claudina Gracia Naranjo', '2017-04-13', '2018-09-13', '2019-04-16', 'Diurna'),
(41, '1114874', 'Mantenimiento Mecanico de Motores', 'Automotriz', 'Andres Mauricio Jaramillo', '2015-11-17', '0000-00-00', '2017-11-17', 'Diurna'),
(42, '1343933', 'TC MANTENIMIENTO DE LAS MOTOCICLETAS', 'Mecanica', 'Jaime Adolfo Fuentes', '0000-00-00', '2016-11-17', '2017-05-17', 'Diurna'),
(43, '1368501', 'Tecnologo En Mantenimiento De Motores DiÃ©sel', 'Mecanica', 'Luis Camilo Estrada PatiÃ±o', '2017-04-17', '2017-10-17', '2018-04-16', 'Diurna'),
(44, '1368642 A', 'Tgo En Mantenimiento MecatrÃ³nico De Automotores', 'Mecanica', 'VICTOR MAURICIO ACEVEDO CORREA', '2017-04-17', '0000-00-00', '0000-00-00', 'Dual'),
(45, '1368642 B', 'Tgo En Mantenimiento MecatrÃ³nico De Automotores (B)', 'Seleccione una opcion...', 'VICTOR MAURICIO ACEVEDO CORREA', '2017-04-17', '0000-00-00', '0000-00-00', 'Dual'),
(46, '1306630', 'Tecnologo en Seguridad Vial, Control de Transito y Transporte', 'Automotriz', 'Jhon Kevin Flores PeÃ±a', '2017-10-03', '0000-00-00', '2017-01-02', 'Diurna'),
(47, '1368498', 'Tecnologo en Mantenimiento de Motores DiÃ©sel', 'Mecanica', 'Jhon Kevin Flores PeÃ±a', '2017-04-17', '2017-10-17', '2018-12-16', 'Diurna'),
(48, '1197693', 'Gestion Integrada de Sistemas de Calidad Ambiental, Seguridad y  Salud Ocupacional HSEQ', 'Ambiental', 'Fernando Arsiniegas', '2016-07-11', '2018-01-11', '2018-07-11', 'Diurna'),
(49, '1261575 A', 'TECNOLOGO EN GESTIÃ“N INTEGRADA DE LA CALIDAD, MEDIO AMBIENTE, SEGURIDAD Y SALUD OCUPACIONAL', 'Salud Ocupacionak', 'CARLOS ARTURO VALENCIA', '2016-09-11', '0000-00-00', '2018-03-26', 'Dual'),
(50, '1261575 B', 'ECNOLOGO EN GESTIÃ“N INTEGRADA DE LA CALIDAD, MEDIO AMBIENTE, SEGURIDAD Y SALUD OCUPACIONAL (B)', 'Salud Ocupacionak', 'CARLOS ARTURO VALENCIA', '2016-09-26', '2018-03-26', '2018-09-26', 'Mixta'),
(51, '1369525 A', 'Tecnico en Patronaje Industrial de Prendas de Vestir', 'Confeccion', 'Gladys Francelly Cardona', '2017-04-17', '0000-00-00', '2018-06-17', 'Diurna'),
(52, '1369525 B', 'Tecnico en Patronaje Industrial de Prendas de Vestir', 'Confeccion', 'Gladys Frencelli', '2017-04-17', '0000-00-00', '2018-07-16', 'Diurna'),
(53, '1368558 A', 'Tgo En GestiÃ³n Integrada De La Calidad, Medio Ambiente, Seguridad Y Salud Ocupacional (A)', 'Salud Ocupacional', 'Carmen Elena Hernandez', '2017-04-17', '2018-10-16', '2019-04-16', 'Diurna'),
(54, '1368558 B', 'Tgo En GestiÃ³n Integrada De La Calidad, Medio Ambiente, Seguridad Y Salud Ocupacional (B)', 'Salud Ocupacional', 'Carmen Elena Hernandez', '2017-04-17', '2018-10-16', '2019-04-16', 'Diurna'),
(55, '1343983', 'MANTENIMIENTO ELÃ‰CTRICO Y ELECTRÃ“NICO EN AUTOMOTORES', 'Automotriz', 'ANDRES MAURICIO JARAMILLO', '0000-00-00', '0000-00-00', '2017-11-16', 'Mixta'),
(56, '1374264', 'Operario en Confeccion Industrial', 'Confeccion', 'Ruby Vargas', '2017-02-20', '2017-05-20', '2017-08-20', 'Diurna'),
(57, '1362328', 'Operario en Confeccion Industrial', 'Confeccion', 'Luz de Fatima Alvarez', '2017-02-06', '2017-05-06', '2017-08-06', 'Diurna'),
(58, '1343061', ' Tc Mantenimiento de Motocicletas', 'Mecanica', 'Diana Eugenia Henao', '2016-11-15', '2017-05-15', '2017-09-15', 'Diurna'),
(59, '1412895', 'Tecnologo en Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yamileth Erazo', '2017-04-08', '2018-11-08', '2019-04-08', 'Virtual'),
(60, '1412896', 'Tecnologo en Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yamileth Erazo', '2017-04-08', '2018-11-08', '2019-04-08', 'Virtual'),
(61, '1412897', 'Tecnologo en Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yamileth Erazo', '2017-04-08', '2018-11-08', '2019-04-08', 'Virtual'),
(62, '1412898', 'Tecnologo en Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yamileth Erazo', '2017-04-08', '2018-11-08', '2019-04-08', 'Virtual'),
(63, '1412899', 'Tecnologo en Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yamileth Erazo', '2017-04-08', '2018-11-08', '2019-04-08', 'Virtual'),
(64, '1412900', 'Tecnologo en Analisis y Desarrollo de Sistemas de Informacion', 'Informatica', 'Yamileth Erazo', '2017-04-08', '2018-11-08', '2019-04-08', 'Virtual'),
(66, '1413040', 'Especialidad Tecnologica en Gestion y Seguridad de Base de Datos', 'Informatica', 'Yamileth Erazo', '2017-05-08', '0000-00-00', '2017-11-08', 'Virtual'),
(67, '1413041', 'Especialidad Tecnologica en Gestion y Seguridad de Base de Datos', 'Informatica', 'Yamileth Erazo', '2017-05-08', '0000-00-00', '2017-11-08', 'Virtual'),
(68, '1368569 B', 'Tecnologo en Desarrollo Grafico de Proyectos de Arquitectura e ingenireria', 'Construccion', 'Jorge Alberto Tamayo Grisales', '2017-04-17', '2018-10-16', '2019-04-16', 'Diurna'),
(69, '1414331', 'Tecnico Mecanizado de Productos Metalmecanicos', 'Mecanica', 'Fernando Vergara', '2017-04-03', '2018-01-02', '2018-07-03', 'Diurna'),
(70, '1368517', 'Tecnicon en Soldadura de Productos metalicos (Platina)', 'Mecanica', 'Cristian Mauricio Toro', '2017-04-17', '2018-01-16', '2018-07-16', 'Diurna'),
(71, '1462163', 'Operario en Confeccion  Industrial', 'Confeccion', 'Ruby Vargas', '2017-06-05', '2017-09-05', '2017-12-05', 'Mixta'),
(72, '1445962', 'Operario en Confeccion Industrial', 'Confeccion', 'Luz de Fatima Alvarez', '2017-05-10', '2017-08-10', '2017-11-10', 'Mixta'),
(74, '1044920', 'Tecnologo en Obras Civiles', 'Construccion', 'Mario Raigoza', '2015-08-04', '0000-00-00', '2017-08-03', 'Dual'),
(75, '1368546 A', 'Tecnico en Mantenimiento de Motocicletas', 'Mecanica', 'Adolfo Fuentes', '2017-04-17', '2017-10-17', '2018-04-16', 'Diurna'),
(76, '1368546 B', 'Tecnico en Mantenimiento de Motocicletas', 'Mecanica', 'Adolfo Fuentes', '2017-04-17', '2017-10-17', '2018-04-16', 'Diurna'),
(78, '1045046', 'Mantenimiento Mecanico Industrial', 'Mecanica', 'Guillermo Valencia', '0000-00-00', '0000-00-00', '2017-08-03', 'Nocturna-Dual'),
(79, '1440113', 'Tecnologo en DiseÃ±o de Sistemas Mecanicos', 'Mecanica', 'Dairo de Jesus GaÃ±an', '2017-07-17', '2019-01-16', '2019-07-16', 'Nocturna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructores`
--

CREATE TABLE `instructores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_bin NOT NULL,
  `especialidad` varchar(100) COLLATE utf8_bin NOT NULL,
  `vinculacion1` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipoplanta` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipocontrato` varchar(100) COLLATE utf8_bin NOT NULL,
  `cantidadhoras` varchar(100) COLLATE utf8_bin NOT NULL,
  `actadministrativas` varchar(50) COLLATE utf8_bin NOT NULL,
  `area` varchar(50) COLLATE utf8_bin NOT NULL,
  `centro` text COLLATE utf8_bin NOT NULL,
  `horas` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `instructores`
--

INSERT INTO `instructores` (`id`, `nombres`, `apellidos`, `especialidad`, `vinculacion1`, `tipoplanta`, `tipocontrato`, `cantidadhoras`, `actadministrativas`, `area`, `centro`, `horas`) VALUES
(1, 'ROLAND', 'ROTH ECHEVERRY', 'Transversal', 'Planta', 'Provicional', 'No Aplica', '32', 'Articulacion', 'Ingles Presencial', 'Industria', 14),
(2, 'SANDRA MILENA', 'TRUJILLO ORTIZ', 'Transversal', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Virtual', 'Confeccion', 'Industria', 8),
(3, 'DIEGO  ', 'GIRALDO RAMIREZ', 'Transversal', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Virtual', 'Electricidad', 'Industria', 20),
(4, 'MONICA EUGENIA', 'MONTOYA ARIAS', 'Transversal', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Virtual', 'Salud Ocupacional', 'Industria', 3),
(5, 'NATALIA', 'ERAZO BECERRA', 'Transversal', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Virtual', 'Electricidad', 'Industria', 26),
(6, 'CLAUDIA SONIA', 'SERNA GRANADA', 'Ingles', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Virtual', 'Ingles Virtual', 'Industria', 21),
(7, 'CARMEN ELENA', 'HERNANDEZ RINCON', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Etica y Comunicacion', 'Industria', 3),
(8, 'ALEXANDER', 'ROMERO MORENO', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 13),
(9, 'PAULA ANDREA ', 'CRUZ MEJIA ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Gestion Integrada de la Calidad', 'Industria', 8),
(10, 'MARIA BEATRIZ', 'PAVA HURTADO', 'Ingles', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ingles Presencial', 'Industria', 114),
(11, 'LUISA FERNANDA', 'ECHEVERRI CABALLERO', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Etica y Comunicacion', 'Industria', 24),
(12, 'LUISA FERNANDA', 'CASTAÑO CALVO', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Cultura Fisica', 'Industria', 24),
(13, 'GERMAN', 'RODRIGUEZ VALENCIA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(14, 'OSCAR FERNANDO', 'ARISTIZABAL CARDONA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 197),
(15, 'ANDRES MAURICIO', 'JARAMILLO GONZALEZ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Automotriz', 'Industria', 26),
(16, 'JORGE ALBERTO', 'TAMAYO GRISALES', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 33),
(17, 'DIEGO ANDRES', 'SERNA VELASQUEZ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'DiseÃ±o Mecanico', 'Industria', 41),
(18, 'STHARLING MELODY', 'RAMOS GIRALDO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Electricidad', 'Industria', 4),
(19, 'LUIS CAMILO', 'ESTRADA PATINO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Automotriz', 'Industria', 7),
(20, 'OLGA CLEMENCIA', 'MARIN HENAO', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Salud Ocupacional', 'Industria', 0),
(21, 'ANDRES FELIPE', 'LOPEZ CHICA', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ambiental', 'Industria', 0),
(22, 'GLADYS FRANCELLY', 'CARDONA FRANCO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Confeccion', 'Industria', 4),
(23, 'JAVIER', 'ARIZA USECHE', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 0),
(24, 'JAIME ADOLFO', 'FUENTES SANCHEZ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Motos', 'Industria', 0),
(25, 'LORENA PATRICIA', 'VALENCIA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Salud Ocupacional', '', 0),
(26, 'FERNANDO', 'ARCINIEGAS CORDOBA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Gestion Integrada de la Calidad', 'Industria', 0),
(27, 'JHON FREDY', 'DUQUE GALLEGO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(28, 'ANDRES FELIPE ', 'JURADO PATINO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 0),
(29, 'ANGELA MARCELA', 'CASTELLANOS ORTEGON', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ingles Presencial', 'Industria', 3),
(30, 'CAMILO ANDRES', 'ARANGO MUNOZ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Mobiliario y Maderas', 'Industria', 0),
(31, 'YANETH', 'MEJIA RENDON ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 211),
(32, 'DANIEL FELIPE ', 'MONCADA CARDONA ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(33, 'MARIO LEANDRO', 'VANEGAS VALENCIA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Electricidad', 'Industria', 0),
(34, 'VICTOR HUGO', 'ARIAS SALDARRIAGA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 0),
(35, 'MARIO', 'RAIGOSA ARANGO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(36, 'JHONATAN', 'FRANCO ARIAS', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Soldadura', 'Industria', 0),
(37, 'YAMILETH', 'ERAZO BECERRA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 2),
(38, 'ANDREA DEL PILAR', 'ANDREA DEL PILAR', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 0),
(39, 'ALEXANDRA', 'NARANJO CARDONA ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ingles Presencial', 'Industria', 0),
(40, 'ADALBERTO', 'ACEVEDO TELLES', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'DiseÃ±o Mecanico', 'Industria', 18),
(41, 'LUCILA', 'NORENA ARIAS', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Confeccion', 'Industria', 0),
(42, 'JORGE HERNÃN', 'ALZATE BUITRAGO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(43, 'JOHN ALEXANDER', 'ARENAS NORIEGA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(44, 'DIANA EUGENIA', 'HENAO BARRAGAN', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Motos', 'Industria', 0),
(45, 'ANDRES JULIAN', 'HOYOS CAICEDO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 0),
(46, 'FERNANDO', 'MEJIA LOPEZ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 0),
(47, 'CLAUDIO ALBERTO', 'VALENCIA SANCHEZ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Electricidad', 'Industria', 4),
(48, 'CESAR AUGUSTO', 'RAMIREZ OCAMPO', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Mobiliario y Maderas', 'Industria', 2),
(49, 'JUAN PABLO', 'MEJIA RAMIREZ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ambiental', 'Industria', 0),
(50, 'ANGELA MARÃA ', 'ALZATE BUITRAGO', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Etica y Comunicacion', 'Industria', 3),
(51, 'JHON KEVIN', 'FLOREZ PENA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Automotriz', 'Industria', 6),
(52, 'LINA ROCIO', 'OSPINA DUQUE', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Salud Ocupacional', 'Industria', 0),
(53, 'JUNSUN', 'SUNICO CONSISTENTE', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ingles Presencial', 'Industria', 0),
(54, 'ANDRES FELIPE', 'HENAO LOPEZ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Cultura Fisica', 'Industria', 0),
(55, 'SARA MARIA', 'CLAVIJO ARRUBLA ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Construccion', 'Industria', 0),
(56, 'NESTOR MAURICIO', 'PINTO NORENA', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Electricidad', 'Industria', 0),
(57, 'KAREN VIVIANA ', 'LEMOS CEBALLOS ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Confeccion', 'Industria', 20),
(58, 'JORGE AUGUSTO ', 'VILLADA SUAZA ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 0),
(59, 'DIANA CRISTINA', 'MONTOYA HOYOS', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 2),
(60, 'LUISA FERNANDA', 'CALLEJAS ORREGO ', 'Tecnico', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Informatica y Sistemas', 'Industria', 24),
(61, 'CARLOS ANDRES', 'HENAO LEMA ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ambiental', 'Industria', 4),
(62, 'EMILCE SILVANA ', 'CERON ROSERO ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Salud Ocupacional', 'Industria', 4),
(63, 'PAOLA NATALIA ', 'OROZCO OROZCO ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ingles Presencial', 'Industria', 0),
(64, 'ASDRUBAL ', 'GOMEZ GALEANO ', 'Transversal', 'Contratista', 'No Aplica', 'TÃ©rmino Fijo', '40', 'Articulacion', 'Ingles Voluntarios', 'Industria', 0),
(65, 'JAVIER MAURICIO', 'CORTES MORENO', 'Tecnico', 'Contratista', 'No Aplica', 'Por Horas', '40', 'Articulacion', 'Joyeria', 'Industria', 0),
(66, 'JOSE URIEL', 'GALLEGO BERNAL', 'Tecnico', 'Contratista', 'No Aplica', 'Por Horas', '40', 'Articulacion', 'Redes para Gas', 'Industria', 0),
(67, 'ALEXANDER', 'GARCIA VASQUEZ', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Mantenimiento', 'Industria', 13),
(68, 'APARICIO', 'MEJIA RENDON', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Construccion', 'Industria', 6),
(69, 'CONSUELO', 'GARCIA ESCOBAR', 'Transversal', '', '', 'No Aplica', '', '', 'Emprendimiento', 'Industria', 118),
(70, 'CRISTIAN MAURICIO', 'TORO', 'Tecnico', 'Planta', 'Provisional', 'No Aplica', '32', 'Articulacion', 'Soldadura', 'Industria', 0),
(71, 'DIEGO ALEXANDER', 'GRAJALES PEREZ', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Mantenimiento', 'Industria', 2),
(72, 'ELVER', 'VALENCIA', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Soldadura', 'Industria', 0),
(73, 'FERNANDO', 'RODRIGUEZ VALENCIA', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Equipo Tecnico pedagogico', 'Industria', 0),
(74, 'FRANCISCO JAVIER', 'VARGAS', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Mantenimiento', 'Industria', 4),
(75, 'GUILLERMO ANTONIO', 'VALENCIA VELASQUEZ', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Electricidad', 'Industria', 0),
(76, 'JAIME', 'GIRALDO ORREGO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Electricidad', 'Industria', 3),
(77, 'JAIME ', 'TREJOS LONDONO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Electricidad', 'Industria', 3),
(78, 'JHON FREDY', 'CORTES SOTO', 'Tecnico', 'Planta', 'Provisional', 'No Aplica', '32', 'Articulacion', 'Mantenimiento', 'Industria', 0),
(79, 'JHON JAIRO', 'CARDENAS ROMERO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Automotriz', 'Industria', 0),
(80, 'JOSE ALIRIO', 'LONDONO RIVERA', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Mantenimiento', 'Industria', 0),
(81, 'JOSE FERNANDO', 'VERGARA GALLEGO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Metalmecanica', 'Industria', 0),
(82, 'JUAN CARLOS', 'ARANGO ARBELAEZ', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Automotriz', 'Industria', 7),
(83, 'JUAN CARLOS', 'LOPEZ MORALES', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Electricidad', 'Industria', 7),
(84, 'JUAN CARLOS', 'RUGE OSORIO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Competencias Laborales', 'Industria', 7),
(85, 'LUIS ENRIQUE', 'BRAVO CARDONA', 'Tecnico', 'Planta', 'Provisional', 'No Aplica', '32', 'Articulacion', 'Salud Ocupacional', 'Industria', 3),
(86, 'LUZ DE FATIMA', 'ALVAREZ OSORIO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Confeccion', 'Industria', 0),
(87, 'MIRIAM CLAUDINA', 'GARCIA NARANJO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Electricidad', 'Industria', 4),
(88, 'ROBERTO ', 'ESTRADA HERRERA', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Informatica y Sistemas', 'Industria', 0),
(89, 'RUBY', 'VARGAS RUIZ', 'Tecnico', 'Planta', 'Provisional', 'No Aplica', '32', 'Articulacion', 'Confeccion', 'Industria', 0),
(90, 'VICTOR MAURICIO', 'ACEVEDO CORREA', 'Tecnico', 'Planta', 'Provisional', 'No Aplica', '32', 'Articulacion', 'Automotriz', 'Industria', 0),
(91, 'PAULA ANDREA', 'LONDONO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Informatica y Sistemas', 'Industria', 8),
(92, 'DAIRO DE JESUS', 'GANAN GALLO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'DiseÃ±o Mecanico', 'Industria', 3),
(94, 'JORGE VICTOR ', 'BURITICA', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Ambiental', 'Automatizacion', 0),
(95, 'CARLOS', 'DUBER', 'Tecnico', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Articulacion', 'Neumatica y Electroneumatica', 'Automatizacion', 8),
(96, 'JULIAN ANDRES', 'GRISALES', 'Tecnico', 'Contratista', 'No Aplica', 'Por Horas', '40', 'Articulacion', 'PLC', 'Automatizacion', 2),
(97, 'JAIME', 'OCAMPO', 'Tecnico', 'Planta', 'Carrera', 'No Aplica', '32', 'Articulacion', 'Electronica', 'Automatizacion', 3),
(98, 'RUBEN DARIO', 'VILEGAS', 'Tecnico', 'Contratista', 'No Aplica', 'Por Horas', '40', 'Articulacion', 'CNC', 'Automatizacion', 0),
(99, 'JUAN', 'ALVARO', 'Tecnico', 'Contratista', 'No Aplica', 'Termino Fijo', '40', 'Articulacion', 'Multimedia', 'Automatizacion', 0),
(100, 'HUGO', ' Gallego', 'Tecnico', 'Planta', '', 'No Aplica', '32', 'Sindesena', 'Emprendimiento', 'Industria', 0),
(101, 'FELIZ ANTONIO ', 'CESPEDES', 'Tecnico', 'Contratista', 'No Aplica', 'Por Horas', '40', 'Virtual', 'Confeccion', 'Automatizacion', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`) VALUES
(1, 'Maicol', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'katherine', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Camilo', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'luish', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'administrador1', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'Yaneth', 'e424ca63fea1b3cd04c96d65611c94d3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valfic`
--

CREATE TABLE `valfic` (
  `id` int(11) NOT NULL,
  `ficha` varchar(100) COLLATE utf8_bin NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `url` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `valfic`
--

INSERT INTO `valfic` (`id`, `ficha`, `inicio`, `fin`, `url`) VALUES
(187, '1323395', '2017-10-03 07:00:00', '2017-10-03 13:00:00', 'si'),
(189, '1323395', '2017-10-03 14:00:00', '2017-10-03 18:00:00', 'si'),
(191, '1323395', '2017-10-04 07:00:00', '2017-10-04 13:00:00', 'si'),
(193, '1323395', '2017-10-05 07:00:00', '2017-10-05 13:00:00', 'si'),
(195, '1323395', '2017-10-06 07:00:00', '2017-10-06 13:00:00', 'si'),
(197, '1323395', '2017-10-06 14:00:00', '2017-10-06 18:00:00', 'si'),
(199, '1323395', '2017-10-09 07:00:00', '2017-10-09 13:00:00', 'si'),
(201, '1323395', '2017-10-10 07:00:00', '2017-10-10 13:00:00', 'si'),
(204, '1323395', '2017-10-10 14:00:00', '2017-10-10 18:00:00', 'si'),
(206, '1323395', '2017-10-11 07:00:00', '2017-10-11 13:00:00', 'si'),
(208, '1323395', '2017-10-12 07:00:00', '2017-10-12 13:00:00', 'si'),
(210, '1323395', '2017-10-13 07:00:00', '2017-10-13 13:00:00', 'si'),
(212, '1323395', '2017-10-13 14:00:00', '2017-10-13 18:00:00', 'si'),
(214, '1323395', '2017-10-17 07:00:00', '2017-10-17 13:00:00', 'si'),
(216, '1323395', '2017-10-17 14:00:00', '2017-10-17 18:00:00', 'si'),
(218, '1323395', '2017-10-18 07:00:00', '2017-10-18 13:00:00', 'si'),
(220, '1323395', '2017-10-19 07:00:00', '2017-10-19 13:00:00', 'si'),
(222, '1323395', '2017-10-20 07:00:00', '2017-10-20 13:00:00', 'si'),
(224, '1323395', '2017-10-20 14:00:00', '2017-10-20 14:00:00', 'si'),
(226, '1323395', '2017-10-24 07:00:00', '2017-10-24 13:00:00', 'si'),
(228, '1323395', '2017-10-24 14:00:00', '2017-10-24 18:00:00', 'si'),
(230, '1323395', '2017-10-25 07:00:00', '2017-10-25 13:00:00', 'si'),
(232, '1323395', '2017-10-26 07:00:00', '2017-10-26 13:00:00', 'si'),
(234, '1323395', '2017-10-27 07:00:00', '2017-10-27 13:00:00', 'si'),
(236, '1323395', '2017-10-27 14:00:00', '2017-10-27 18:00:00', 'si'),
(238, '1323395', '2017-10-31 07:00:00', '2017-10-31 13:00:00', 'si'),
(240, '1323395', '2017-11-01 07:00:00', '2017-11-01 13:00:00', 'si'),
(242, '1323395', '2017-10-31 14:00:00', '2017-10-31 18:00:00', 'si'),
(244, '1323395', '2017-11-02 07:00:00', '2017-11-02 13:00:00', 'si'),
(246, '1323395', '2017-11-03 07:00:00', '2017-11-03 13:00:00', 'si'),
(248, '1323395', '2017-11-03 14:00:00', '2017-11-03 18:00:00', 'si'),
(254, '1323395', '2017-11-07 07:00:00', '2017-11-07 13:00:00', 'si'),
(258, '1323395', '2017-11-07 14:00:00', '2017-11-07 18:00:00', 'si'),
(260, '1323395', '2017-11-08 07:00:00', '2017-11-08 13:00:00', 'si'),
(262, '1323395', '2017-11-09 07:00:00', '2017-11-09 13:00:00', 'si'),
(264, '1323395', '2017-11-10 07:00:00', '2017-11-10 13:00:00', 'si'),
(266, '1323395', '2017-11-10 14:00:00', '2017-11-10 18:00:00', 'si'),
(268, '1323395', '2017-11-14 07:00:00', '2017-11-14 13:00:00', 'si'),
(270, '1323395', '2017-11-14 14:00:00', '2017-11-14 18:00:00', 'si'),
(272, '1323395', '2017-11-15 07:00:00', '2017-11-15 13:00:00', 'si'),
(274, '1323395', '2017-11-16 07:00:00', '2017-11-16 13:00:00', 'si'),
(276, '1323395', '2017-11-17 07:00:00', '2017-11-17 13:00:00', 'si'),
(279, '1323395', '2017-11-17 14:00:00', '2017-11-17 18:00:00', 'si'),
(281, '1323395', '2017-11-21 07:00:00', '2017-11-21 13:00:00', 'si'),
(284, '1323395', '2017-11-21 14:00:00', '2017-11-21 18:00:00', 'si'),
(286, '1323395', '2017-11-22 07:00:00', '2017-11-22 13:00:00', 'si'),
(292, '1323395', '2017-11-23 07:00:00', '2017-11-23 13:00:00', 'si'),
(294, '1323395', '2017-11-24 07:00:00', '2017-11-24 13:00:00', 'si'),
(297, '1323395', '2017-11-24 14:00:00', '2017-11-24 18:00:00', 'si'),
(299, '1323395', '2017-11-28 07:00:00', '2017-11-28 13:00:00', 'si'),
(301, '1323395', '2017-11-28 14:00:00', '2017-11-28 18:00:00', 'si'),
(304, '1323395', '2017-11-29 07:00:00', '2017-11-29 13:00:00', 'si'),
(306, '1323395', '2017-11-30 07:00:00', '2017-11-30 13:00:00', 'si'),
(309, '1323395', '2017-12-01 07:00:00', '2017-12-01 13:00:00', 'si'),
(311, '1323395', '2017-12-05 07:00:00', '2017-12-05 13:00:00', 'si'),
(314, '1323395', '2017-12-05 14:00:00', '2017-12-05 18:00:00', 'si'),
(317, '1323395', '2017-12-06 07:00:00', '2017-12-06 13:00:00', 'si'),
(319, '1323395', '2017-12-07 07:00:00', '2017-12-07 13:00:00', 'si'),
(321, '1323395', '2017-12-08 07:00:00', '2017-12-08 07:00:00', 'si'),
(323, '1323395', '2017-12-08 14:00:00', '2017-12-08 18:00:00', 'si'),
(325, '1323395', '2017-12-12 07:00:00', '2017-12-12 13:00:00', 'si'),
(327, '1323395', '2017-12-13 07:00:00', '2017-12-13 13:00:00', 'si'),
(330, '1323395', '2017-12-14 07:00:00', '2017-12-14 13:00:00', 'si'),
(333, '1323395', '2017-12-15 14:00:00', '2017-12-15 18:00:00', 'si'),
(336, '1323395', '2017-12-12 13:00:00', '2017-12-12 18:00:00', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valins`
--

CREATE TABLE `valins` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `inicio` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `url` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `valins`
--

INSERT INTO `valins` (`id`, `nombre`, `inicio`, `fin`, `url`) VALUES
(187, 'OSCAR FERNANDO', '2017-10-03 07:00:00', '2017-10-03 13:00:00', 'si'),
(189, 'MARIA BEATRIZ', '2017-10-03 14:00:00', '2017-10-03 18:00:00', 'si'),
(191, 'YANETH', '2017-10-04 07:00:00', '2017-10-04 13:00:00', 'si'),
(193, 'OSCAR FERNANDO', '2017-10-05 07:00:00', '2017-10-05 13:00:00', 'si'),
(195, 'YANETH', '2017-10-06 07:00:00', '2017-10-06 13:00:00', 'si'),
(197, 'CONSUELO', '2017-10-06 14:00:00', '2017-10-06 18:00:00', 'si'),
(199, 'OSCAR FERNANDO', '2017-10-09 07:00:00', '2017-10-09 13:00:00', 'si'),
(201, 'OSCAR FERNANDO', '2017-10-10 07:00:00', '2017-10-10 13:00:00', 'si'),
(204, 'MARIA BEATRIZ', '2017-10-10 14:00:00', '2017-10-10 18:00:00', 'si'),
(206, 'YANETH', '2017-10-11 07:00:00', '2017-10-11 13:00:00', 'si'),
(208, 'OSCAR FERNANDO', '2017-10-12 07:00:00', '2017-10-12 13:00:00', 'si'),
(210, 'YANETH', '2017-10-13 07:00:00', '2017-10-13 13:00:00', 'si'),
(212, 'CONSUELO', '2017-10-13 14:00:00', '2017-10-13 18:00:00', 'si'),
(214, 'OSCAR FERNANDO', '2017-10-17 07:00:00', '2017-10-17 13:00:00', 'si'),
(216, 'MARIA BEATRIZ', '2017-10-17 14:00:00', '2017-10-17 18:00:00', 'si'),
(218, 'YANETH', '2017-10-18 07:00:00', '2017-10-18 13:00:00', 'si'),
(220, 'OSCAR FERNANDO', '2017-10-19 07:00:00', '2017-10-19 13:00:00', 'si'),
(222, 'YANETH', '2017-10-20 07:00:00', '2017-10-20 13:00:00', 'si'),
(224, 'CONSUELO', '2017-10-20 14:00:00', '2017-10-20 14:00:00', 'si'),
(226, 'OSCAR FERNANDO', '2017-10-24 07:00:00', '2017-10-24 13:00:00', 'si'),
(228, 'MARIA BEATRIZ', '2017-10-24 14:00:00', '2017-10-24 18:00:00', 'si'),
(230, 'YANETH', '2017-10-25 07:00:00', '2017-10-25 13:00:00', 'si'),
(232, 'OSCAR FERNANDO', '2017-10-26 07:00:00', '2017-10-26 13:00:00', 'si'),
(234, 'YANETH', '2017-10-27 07:00:00', '2017-10-27 13:00:00', 'si'),
(236, 'CONSUELO', '2017-10-27 14:00:00', '2017-10-27 18:00:00', 'si'),
(238, 'OSCAR FERNANDO', '2017-10-31 07:00:00', '2017-10-31 13:00:00', 'si'),
(240, 'YANETH', '2017-11-01 07:00:00', '2017-11-01 13:00:00', 'si'),
(242, 'MARIA BEATRIZ', '2017-10-31 14:00:00', '2017-10-31 18:00:00', 'si'),
(244, 'OSCAR FERNANDO', '2017-11-02 07:00:00', '2017-11-02 13:00:00', 'si'),
(246, 'YANETH', '2017-11-03 07:00:00', '2017-11-03 13:00:00', 'si'),
(248, 'CONSUELO', '2017-11-03 14:00:00', '2017-11-03 18:00:00', 'si'),
(254, 'YANETH', '2017-11-07 07:00:00', '2017-11-07 13:00:00', 'si'),
(258, 'MARIA BEATRIZ', '2017-11-07 14:00:00', '2017-11-07 18:00:00', 'si'),
(260, 'YANETH', '2017-11-08 07:00:00', '2017-11-08 13:00:00', 'si'),
(262, 'OSCAR FERNANDO', '2017-11-09 07:00:00', '2017-11-09 13:00:00', 'si'),
(264, 'YANETH', '2017-11-10 07:00:00', '2017-11-10 13:00:00', 'si'),
(266, 'CONSUELO', '2017-11-10 14:00:00', '2017-11-10 18:00:00', 'si'),
(268, 'OSCAR FERNANDO', '2017-11-14 07:00:00', '2017-11-14 13:00:00', 'si'),
(270, 'MARIA BEATRIZ', '2017-11-14 14:00:00', '2017-11-14 18:00:00', 'si'),
(272, 'YANETH', '2017-11-15 07:00:00', '2017-11-15 13:00:00', 'si'),
(274, 'OSCAR FERNANDO', '2017-11-16 07:00:00', '2017-11-16 13:00:00', 'si'),
(276, 'YANETH', '2017-11-17 07:00:00', '2017-11-17 13:00:00', 'si'),
(279, 'CONSUELO', '2017-11-17 14:00:00', '2017-11-17 18:00:00', 'si'),
(281, 'OSCAR FERNANDO', '2017-11-21 07:00:00', '2017-11-21 13:00:00', 'si'),
(284, 'MARIA BEATRIZ', '2017-11-21 14:00:00', '2017-11-21 18:00:00', 'si'),
(286, 'YANETH', '2017-11-22 07:00:00', '2017-11-22 13:00:00', 'si'),
(292, 'OSCAR FERNANDO', '2017-11-23 07:00:00', '2017-11-23 13:00:00', 'si'),
(294, 'YANETH', '2017-11-24 07:00:00', '2017-11-24 13:00:00', 'si'),
(297, 'CONSUELO', '2017-11-24 14:00:00', '2017-11-24 18:00:00', 'si'),
(299, 'OSCAR FERNANDO', '2017-11-28 07:00:00', '2017-11-28 13:00:00', 'si'),
(301, 'MARIA BEATRIZ', '2017-11-28 14:00:00', '2017-11-28 18:00:00', 'si'),
(304, 'YANETH', '2017-11-29 07:00:00', '2017-11-29 13:00:00', 'si'),
(306, 'OSCAR FERNANDO', '2017-11-30 07:00:00', '2017-11-30 13:00:00', 'si'),
(309, 'YANETH', '2017-12-01 07:00:00', '2017-12-01 13:00:00', 'si'),
(311, 'OSCAR FERNANDO', '2017-12-05 07:00:00', '2017-12-05 13:00:00', 'si'),
(314, 'MARIA BEATRIZ', '2017-12-05 14:00:00', '2017-12-05 18:00:00', 'si'),
(317, 'YANETH', '2017-12-06 07:00:00', '2017-12-06 13:00:00', 'si'),
(319, 'OSCAR FERNANDO', '2017-12-07 07:00:00', '2017-12-07 13:00:00', 'si'),
(321, 'YANETH', '2017-12-08 07:00:00', '2017-12-08 07:00:00', 'si'),
(323, 'CONSUELO', '2017-12-08 14:00:00', '2017-12-08 18:00:00', 'si'),
(325, 'OSCAR FERNANDO', '2017-12-12 07:00:00', '2017-12-12 13:00:00', 'si'),
(327, 'YANETH', '2017-12-13 07:00:00', '2017-12-13 13:00:00', 'si'),
(330, 'OSCAR FERNANDO', '2017-12-14 07:00:00', '2017-12-14 13:00:00', 'si'),
(333, 'CONSUELO', '2017-12-15 14:00:00', '2017-12-15 18:00:00', 'si'),
(336, 'MARIA BEATRIZ', '2017-12-12 13:00:00', '2017-12-12 18:00:00', 'si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `externo`
--
ALTER TABLE `externo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valfic`
--
ALTER TABLE `valfic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valins`
--
ALTER TABLE `valins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambientes`
--
ALTER TABLE `ambientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT de la tabla `externo`
--
ALTER TABLE `externo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fichas`
--
ALTER TABLE `fichas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `instructores`
--
ALTER TABLE `instructores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `valfic`
--
ALTER TABLE `valfic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
--
-- AUTO_INCREMENT de la tabla `valins`
--
ALTER TABLE `valins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
