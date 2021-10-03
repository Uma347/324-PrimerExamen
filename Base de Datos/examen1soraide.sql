-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-10-2021 a las 23:55:29
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen1soraide`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `ci` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `sigla` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nota1` int(11) NOT NULL,
  `nota2` int(11) NOT NULL,
  `nota3` int(11) NOT NULL,
  `notafinal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES
('11', 'EST-165', 20, 30, 10, 60),
('11', 'INF-164', 30, 30, 10, 70),
('12', 'EST-165', 10, 30, 10, 50),
('12', 'INF-164', 30, 40, 10, 80),
('13', 'EST-165', 15, 30, 15, 60),
('13', 'INF-164', 30, 45, 10, 85),
('14', 'EST-165', 10, 30, 15, 55),
('14', 'INF-164', 20, 45, 15, 80),
('15', 'EST-165', 30, 30, 10, 70),
('15', 'INF-164', 10, 30, 10, 50),
('16', 'EST-165', 30, 40, 10, 80),
('16', 'INF-164', 15, 30, 15, 60),
('17', 'EST-165', 30, 45, 10, 85),
('17', 'INF-164', 10, 30, 15, 55),
('18', 'EST-165', 20, 45, 15, 80),
('18', 'INF-164', 30, 45, 10, 85),
('19', 'EST-165', 30, 40, 10, 80),
('19', 'INF-164', 30, 30, 10, 70),
('20', 'EST-165', 30, 40, 10, 80),
('20', 'INF-164', 30, 45, 10, 85),
('21', 'EST-165', 30, 40, 10, 80),
('21', 'INF-164', 10, 30, 15, 55),
('22', 'EST-165', 20, 45, 15, 80),
('22', 'INF-164', 30, 30, 10, 70),
('23', 'EST-165', 10, 30, 15, 55),
('23', 'INF-164', 20, 45, 15, 80),
('24', 'EST-165', 30, 30, 10, 70),
('24', 'INF-164', 10, 30, 10, 50),
('25', 'EST-165', 30, 40, 10, 80),
('25', 'INF-164', 15, 30, 15, 60),
('26', 'EST-165', 30, 45, 10, 85),
('26', 'INF-164', 15, 30, 15, 60),
('27', 'EST-165', 30, 45, 10, 85),
('27', 'INF-164', 30, 30, 10, 70),
('28', 'EST-165', 10, 30, 15, 55),
('28', 'INF-164', 20, 45, 15, 80);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `departamento` varchar(2) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombre`, `fechadenacimiento`, `departamento`) VALUES
('10', 'MOISES SILVA', '1980-06-15', '02'),
('11', 'NAIRA SORAIDE', '1999-03-25', '01'),
('12', 'ANA LOPEZ', '2000-04-13', '01'),
('13', 'JUAN PEREZ', '1999-10-06', '02'),
('14', 'LUIS PAREDES', '2000-01-12', '02'),
('15', 'LUCIA MAMANI', '2000-01-19', '03'),
('16', 'JUAN MOLLO', '1999-05-19', '03'),
('17', 'LUZ HUANCA', '2000-07-05', '04'),
('18', 'SAMUEL LOZA', '1999-10-06', '04'),
('19', 'ALBERT APAZA', '1999-10-20', '05'),
('20', 'LUISA ZEBALLOS', '2000-11-07', '05'),
('21', 'MIGUEL QUISPE', '1999-05-19', '06'),
('22', 'MAGALI VILLCA', '1999-05-19', '06'),
('23', 'MANUEL QUISPE', '2000-10-05', '07'),
('24', 'ADRIAN VERNAL', '1999-10-20', '07'),
('25', 'TANIA GARCIA', '2000-01-12', '08'),
('26', 'RITA APAZA', '2001-10-05', '08'),
('27', 'RENE MARTINEZ', '1999-07-05', '09'),
('28', 'PEDRO RAMOS', '1999-05-19', '09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `password`, `usuario`) VALUES
('10', '10', 'docente'),
('11', '11', 'estudiante'),
('12', '12', 'estudiante'),
('13', '13', 'estudiante'),
('14', '14', 'estudiante'),
('15', '15', 'estudiante'),
('16', '16', 'estudiante'),
('17', '17', 'estudiante'),
('18', '18', 'estudiante'),
('19', '19', 'estudiante'),
('20', '20', 'estudiante'),
('21', '21', 'estudiante'),
('22', '22', 'estudiante'),
('23', '23', 'estudiante'),
('24', '24', 'estudiante'),
('25', '25', 'estudiante'),
('26', '26', 'estudiante'),
('27', '27', 'estudiante'),
('28', '28', 'estudiante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
