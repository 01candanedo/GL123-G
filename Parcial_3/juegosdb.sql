-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2022 a las 14:53:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proximamente`
--

CREATE TABLE `proximamente` (
  `id` int(11) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `foto` varchar(60) NOT NULL,
  `precio` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proximamente`
--

INSERT INTO `proximamente` (`id`, `titulo`, `descripcion`, `foto`, `precio`) VALUES
(1, 'GOD OF WAR RAGNARÖK', 'Disponible El 9 De Nov, 2022', 'img/GOW.webp', '69.99'),
(2, 'A plague Tale: Requi', 'Disponible el 18 de oct, 2022', 'img/plague.webp', '59.99'),
(3, 'Red Dead Redemption ', 'Disponibilidad BD', 'img/red-dead-redemption-2.jpeg', '0.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proximamente`
--
ALTER TABLE `proximamente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proximamente`
--
ALTER TABLE `proximamente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
