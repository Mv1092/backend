-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2024 a las 05:35:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `edumath`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id_evaluacion` int(11) NOT NULL,
  `fo_usuario` int(11) NOT NULL,
  `Formulario` varchar(3000) NOT NULL,
  `Resultado` varchar(300) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`id_evaluacion`, `fo_usuario`, `Formulario`, `Resultado`, `Fecha`) VALUES
(2, 3, 'suma', '3.5', '2024-08-07'),
(60, 3, 'restas', '5', '2024-09-10'),
(64, 102, 'SDFSDF', '5', '2024-09-17'),
(1023, 1, 'ecuaciones', '5', '2024-10-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planeacion_didactica`
--

CREATE TABLE `planeacion_didactica` (
  `id_planeacion` int(11) NOT NULL,
  `fo_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tema` varchar(250) NOT NULL,
  `contenido_clase` varchar(3000) NOT NULL,
  `Ejercitacion` varchar(3000) NOT NULL,
  `resultados` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planeacion_didactica`
--

INSERT INTO `planeacion_didactica` (`id_planeacion`, `fo_usuario`, `fecha`, `tema`, `contenido_clase`, `Ejercitacion`, `resultados`) VALUES
(4, 2, '0000-00-00', 'producto', '', '', ''),
(16, 102, '2024-09-08', 'xyz', 'xyz', 'xyz', '5'),
(20, 2, '2024-09-11', 'JHGDFS', 'SDADS', 'ASDAD', '5'),
(24, 0, '2024-10-14', 'klsdjfgl', 'sfsdfsdf', 'sdfsf', '5'),
(25, 3, '2024-10-01', 'sumas', 'fhfh', 'hfhf', '5'),
(26, 1, '2024-10-01', 'sumas', 'ejercios', 'problemas', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `tipo_usuario` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellidos`, `fecha_de_nacimiento`, `email`, `clave`, `tipo_usuario`) VALUES
(1, 'user', 'prueba', '2024-04-09', 'nn@nn.co', '123abc', 'estudiante'),
(3, 'prueba', 'user3', '2024-08-05', 'nn', 'nn', 'estudet'),
(15, 'user15', 'user 15', '2024-10-13', 'xxx', 'avb', 'estudiante'),
(12348, '', '', '0000-00-00', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id_evaluacion`),
  ADD KEY `fo_usuario` (`fo_usuario`);

--
-- Indices de la tabla `planeacion_didactica`
--
ALTER TABLE `planeacion_didactica`
  ADD PRIMARY KEY (`id_planeacion`),
  ADD KEY `fo_usuario` (`fo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT de la tabla `planeacion_didactica`
--
ALTER TABLE `planeacion_didactica`
  MODIFY `id_planeacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12349;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
