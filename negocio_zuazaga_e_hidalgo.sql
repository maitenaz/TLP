-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2022 a las 15:15:54
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
-- Base de datos: `negocio zuazaga e hidalgo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulos` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulos`, `Nombre`, `ciudad`) VALUES
(1, 'clasificadora', 'madrid'),
(2, 'perforadora', 'malga'),
(3, 'lectora', 'caseres'),
(4, 'consola', 'caseres'),
(5, 'mescladora', 'sevilla'),
(6, 'terminal', 'barcelona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `id_componentes` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `peso` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`id_componentes`, `nombre`, `color`, `peso`, `ciudad`) VALUES
(1, 'X3A', 'rojo', '12', 'sevilla'),
(3, 'C4B', 'azul', '17', 'malaga'),
(4, 'C4B', 'rojo', '14', 'sevilla'),
(5, 'VT8', 'azul', '12', 'madrid'),
(6, 'C30', 'rojo', '19', 'sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envios` int(11) NOT NULL,
  `P` varchar(30) NOT NULL,
  `C` varchar(30) NOT NULL,
  `T` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envios`, `P`, `C`, `T`, `cantidad`) VALUES
(1, 'P1', 'C1', 'T1', '200'),
(3, 'P2', 'C3', 'T1', '400'),
(4, 'P2', 'C3', 'T2', '200'),
(5, 'P2', 'C3', 'T4', '500'),
(6, 'P2', 'C3', 'T5', '600'),
(7, 'P2', 'C3', 'T6', '400'),
(8, 'P2', 'C3', 'T7', '800'),
(9, 'P2', 'C5', 'T2', '100'),
(10, 'P3', 'C3', 'T1', '200'),
(11, 'P3', 'C4', 'T2', '500'),
(12, 'P4', 'C6', 'T3', '300'),
(13, 'P4', 'C6', 'T7', '300'),
(14, 'P5', 'C2', 'T2', '200'),
(15, 'P5', 'C2', 'T4', '100'),
(16, 'P5', 'C5', 'T7', '100'),
(17, 'P5', 'C6', 'T2', '200'),
(18, 'P5', 'C1', 'T4', '100'),
(19, 'P5', 'C3', 'T4', '200'),
(20, 'P5', 'C4', 'T4', '800'),
(21, 'P5', 'C5', 'T5', '400'),
(22, 'P5', 'C6', 'T4', '500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Nombre` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `ciudad` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Nombre`, `categoria`, `id_proveedor`, `ciudad`) VALUES
('carlos', '20', 3, 'sevilla'),
('juan', '10', 4, 'madird'),
('inma', '20', 6, 'sevilla'),
('eva', '30', 7, 'caceres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulos`);

--
-- Indices de la tabla `componentes`
--
ALTER TABLE `componentes`
  ADD PRIMARY KEY (`id_componentes`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envios`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `componentes`
--
ALTER TABLE `componentes`
  MODIFY `id_componentes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
