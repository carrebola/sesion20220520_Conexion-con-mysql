-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-05-2022 a las 10:56:48
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `entrevistas`
--
# Borramos los registro de la tabla alumnos

DROP TABLE IF EXISTS entrevistas;
DROP TABLE IF EXISTS alumnos;
DROP TABLE IF EXISTS tutor;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;


--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE IF NOT EXISTS `tutor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;


--
-- Estructura de tabla para la tabla `entrevistas`
--

CREATE TABLE IF NOT EXISTS `entrevistas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_ID` int(11) NOT NULL,
  `tutor_ID` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alumno_ID` (`alumno_ID`),
  KEY `tutor_ID` (`tutor_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;


--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellidos`, `email`) VALUES
(1, 'Pedro', 'Medario Feliz', 'medario@gmail.com'),
(2, 'Ana', 'Vespacial Enorme', 'vespacial@gmail.com'),
(3, 'Eva', 'Calao Contomate', 'calao@gmail.com'),
(4, 'Juan', 'Tena Parabolica', 'tena@gmail.com');

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`id`, `nombre`, `apellidos`, `email`) VALUES
(1, 'Juan', 'Medario Feliz', 'medario@gmail.com'),
(2, 'Andres', 'Vespacial Enorme', 'vespacial@gmail.com'),
(3, 'Laura', 'Calao Contomate', 'calao@gmail.com'),
(4, 'Manuel', 'Tena Parabolica', 'tena@gmail.com');



--
-- Volcado de datos para la tabla `entrevistas`
--

INSERT INTO `entrevistas` (`id`, `alumno_ID`, `tutor_ID`, `contenido`, `fecha`) VALUES
(1, 1, 1, 'Entrevista 11', '2022-05-21'),
(2, 2, 1, 'Entrevista 21', '2022-05-22'),
(3, 3, 1, 'Entrevista 31', '2022-05-23'),
(4, 1, 1, 'Entrevista 11', '2022-05-24'),
(5, 1, 2, 'Entrevista 12', '2022-05-25');

-- --------------------------------------------------------


--
-- Filtros para la tabla `entrevistas`
--
ALTER TABLE `entrevistas` ADD CONSTRAINT `entrevistas_alumno` FOREIGN KEY (`alumno_ID`) REFERENCES `alumnos` (`id`), ADD CONSTRAINT`entrevistas_tutor` FOREIGN KEY (`tutor_ID`) REFERENCES `tutor` (`id`);

--
-- Restricciones para tablas volcadas
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
