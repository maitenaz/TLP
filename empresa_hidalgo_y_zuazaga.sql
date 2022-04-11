-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2022 a las 14:55:20
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
-- Base de datos: `empresa hidalgo y zuazaga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `Nombre` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`Nombre`, `ciudad`) VALUES
('clasificadora', 'madrid'),
('perforadora', 'malga'),
('lectora', 'caseres'),
('consola', 'caseres'),
('mescladora', 'sevilla'),
('terminal', 'barcelona'),
('cinta', 'sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `nombre` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `peso` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`nombre`, `color`, `peso`, `ciudad`) VALUES
('X3A', 'rojo', '12', 'sevilla'),
('B85', 'verde', '17', 'madrid'),
('C4B', 'azul', '17', 'malaga'),
('C4B', 'rojo', '14', 'sevilla'),
('VT8', 'azul', '12', 'madrid'),
('C30', 'rojo', '19', 'sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P` varchar(30) NOT NULL,
  `C` varchar(30) NOT NULL,
  `T` varchar(30) NOT NULL,
  `cantidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`P`, `C`, `T`, `cantidad`) VALUES
('P1', 'C1', 'T1', '200'),
('P1', 'C1', 'T4', '700'),
('P2', 'C3', 'T1', '400'),
('P2', 'C3', 'T2', '200'),
('P2', 'C3', 'T4', '500'),
('P2', 'C3', 'T5', '600'),
('P2', 'C3', 'T6', '400'),
('P2', 'C3', 'T7', '800'),
('P2', 'C5', 'T2', '100'),
('P3', 'C3', 'T1', '200'),
('P3', 'C4', 'T2', '500'),
('P4', 'C6', 'T3', '300'),
('P4', 'C6', 'T7', '300'),
('P5', 'C2', 'T2', '200'),
('P5', 'C2', 'T4', '100'),
('P5', 'C5', 'T7', '100'),
('P5', 'C6', 'T2', '200'),
('P5', 'C1', 'T4', '100'),
('P5', 'C3', 'T4', '200'),
('P5', 'C4', 'T4', '800'),
('P5', 'C5', 'T5', '400'),
('P5', 'C6', 'T4', '500');

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
('jose', '30', 5, 'seviklk'),
('inma', '20', 6, 'sevilla'),
('eva', '30', 7, 'caceres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
