-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 14:08:37
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `domicilio` varchar(50) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `DNI`, `telefono`, `domicilio`, `edad`, `fecha nacimiento`) VALUES
(2, 'felicitas', 'hidalgo', 45934672, 21474836, 'barriolacasacada', 17, '2021-09-04'),
(3, 'maitena', 'zuazaga', 46033388, 2147483647, 'la cascada country', 16, '0000-00-00'),
(4, 'romina', 'garcia', 4565485, 58845845, 'av colon', 56, '2019-09-08'),
(5, 'ignacio', 'seeber', 47596423, 351478, 'generalpaz', 15, '2026-04-07'),
(6, 'mateo', 'ramirez', 45896321, 325886, 'Manantiales', 18, '2015-12-03'),
(7, 'mateo', 'ramirez', 45896321, 325886, 'Manantiales', 18, '2015-12-03'),
(8, 'francina', 'garcia', 50129635, 3517655, 'la cascada', 5, '0006-11-18'),
(9, 'francina', 'garcia', 50129635, 3517655, 'la cascada', 5, '0006-11-18'),
(10, 'paola', 'argento', 20158963, 15222369, 'san lorenzo', 50, '0000-00-00'),
(11, 'paola', 'argento', 20158963, 15222369, 'san lorenzo', 50, '0000-00-00'),
(12, 'tiago', 'bedoya', 43693005, 351884563, 'mariano fragueiro', 20, '2015-05-01'),
(13, 'tiago', 'bedoya', 43693005, 351884563, 'mariano fragueiro', 20, '2015-05-01'),
(14, 'marianela', 'rinaldi', 42336008, 35146592, 'avenida colom', 20, '2011-02-01'),
(15, 'marianela', 'rinaldi', 42336008, 35146592, 'avenida colom', 20, '2011-02-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
