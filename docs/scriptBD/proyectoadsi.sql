-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 18:27:56
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoadsi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudientes`
--

CREATE TABLE `acudientes` (
  `num_documento` bigint(11) NOT NULL,
  `tipo_documento` varchar(7) NOT NULL,
  `nombre1` varchar(12) NOT NULL,
  `nombre2` varchar(12) DEFAULT NULL,
  `apellido1` varchar(12) NOT NULL,
  `apellido2` varchar(12) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `parentesco` int(11) NOT NULL,
  `usuario_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `acudientes`
--

INSERT INTO `acudientes` (`num_documento`, `tipo_documento`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `telefono`, `parentesco`, `usuario_alumno`) VALUES
(32457654, 'CC', 'Lipsy', '', 'Palencia', 'Venera', 2147483647, 0, 1053801555),
(32789675, 'CC', 'Maria', 'Concepción', 'Jimenez', 'Perez', 2147483647, 0, 1053795396),
(32895234, 'CC', 'Lidya', '', 'Ferrer', 'Rodriguez', 2147483647, 0, 1053796646),
(72982312, 'CC', 'Pedro', 'Luis', 'Julio', 'Montaño', 2147483647, 0, 1053797430);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `cod_asig` varchar(7) NOT NULL,
  `asignatura` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`cod_asig`, `asignatura`) VALUES
('ART', 'Artística'),
('CI_NA', 'Ciencias Naturales'),
('COM_LEC', 'Compresión Lectora'),
('ED_CRI', 'Educación Cristiana'),
('ED_FI', 'Educación Física'),
('ESP', 'Español'),
('INF', 'Informática'),
('ING', 'Ingles'),
('INT', 'Integrada'),
('MAT', 'Matemáticas'),
('SOC', 'Sociales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas_alumnos`
--

CREATE TABLE `asignaturas_alumnos` (
  `cod_asig` varchar(7) NOT NULL,
  `usuario_alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `asignaturas_alumnos`
--

INSERT INTO `asignaturas_alumnos` (`cod_asig`, `usuario_alumno`) VALUES
('ART', 1053795396),
('CI_NA', 1053795396),
('COM_LEC', 1053795396),
('ED_CRI', 1053795396),
('ED_FI', 1053795396),
('ESP', 1053795396),
('INF', 1053795396),
('ING', 1053795396),
('MAT', 1053795396),
('SOC', 1053795396),
('ART', 1053801555),
('COM_LEC', 1053801555),
('ED_CRI', 1053801555),
('ED_FI', 1053801555),
('ESP', 1053801555),
('ING', 1053801555),
('INT', 1053801555),
('MAT', 1053801555),
('ART', 1053796646),
('COM_LEC', 1053796646),
('ED_CRI', 1053796646),
('ED_FI', 1053796646),
('ESP', 1053796646),
('ING', 1053796646),
('INT', 1053796646),
('MAT', 1053796646),
('ART', 1053797430),
('COM_LEC', 1053797430),
('ED_CRI', 1053797430),
('ED_FI', 1053797430),
('ESP', 1053797430),
('ING', 1053797430),
('INT', 1053797430),
('MAT', 1053797430);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `cod_asist` int(11) NOT NULL,
  `usuario_alumno` int(11) NOT NULL,
  `usuario_docente` int(11) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asoc_asig_grados`
--

CREATE TABLE `asoc_asig_grados` (
  `cod_asig` varchar(7) NOT NULL,
  `cod_grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `asoc_asig_grados`
--

INSERT INTO `asoc_asig_grados` (`cod_asig`, `cod_grado`) VALUES
('ART', 1),
('COM_LEC', 1),
('ED_CRI', 1),
('ED_FI', 1),
('ESP', 1),
('ING', 1),
('INT', 1),
('MAT', 1),
('ART', 2),
('COM_LEC', 2),
('ED_CRI', 2),
('ED_FI', 2),
('ESP', 2),
('ING', 2),
('INT', 2),
('MAT', 2),
('ART', 3),
('COM_LEC', 3),
('ED_CRI', 3),
('ED_FI', 3),
('ESP', 3),
('ING', 3),
('INT', 3),
('MAT', 3),
('ART', 4),
('CI_NA', 4),
('COM_LEC', 4),
('ED_CRI', 4),
('ED_FI', 4),
('ESP', 4),
('INF', 4),
('ING', 4),
('MAT', 4),
('SOC', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asoc_docente_asig`
--

CREATE TABLE `asoc_docente_asig` (
  `cod_asig` varchar(7) DEFAULT NULL,
  `usuario_docente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `asoc_docente_asig`
--

INSERT INTO `asoc_docente_asig` (`cod_asig`, `usuario_docente`) VALUES
('ART', 4414169),
('COM_LEC', 4414169),
('ED_CRI', 4414169),
('ED_FI', 4414169),
('ESP', 4414169),
('ING', 4414169),
('INT', 4414169),
('MAT', 4414169),
('ART', 9859830),
('COM_LEC', 9859830),
('ED_CRI', 9859830),
('ED_FI', 9859830),
('ESP', 9859830),
('ING', 9859830),
('INT', 9859830),
('MAT', 9859830),
('ART', 10258284),
('COM_LEC', 10258284),
('ED_CRI', 10258284),
('ED_FI', 10258284),
('ESP', 10258284),
('ING', 10258284),
('INT', 10258284),
('MAT', 10258284),
('ART', 72345986),
('CI_NA', 72345986),
('COM_LEC', 72345986),
('ED_CRI', 72345986),
('ED_FI', 72345986),
('ESP', 72345986),
('INF', 72345986),
('ING', 72345986),
('MAT', 72345986),
('SOC', 72345986);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `cod_grado` int(11) NOT NULL,
  `usuario_docente` int(11) NOT NULL,
  `nom_grado` varchar(10) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`cod_grado`, `usuario_docente`, `nom_grado`, `fecha_inicio`, `fecha_final`) VALUES
(1, 4414169, 'Pre Jardín', '2023-02-06', '2023-11-17'),
(2, 9859830, 'Jardín', '2023-02-06', '2023-11-17'),
(3, 10258284, 'Transición', '2023-02-06', '2023-11-17'),
(4, 72345986, 'Primero', '2023-02-06', '2023-11-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `cod_notas` int(11) NOT NULL,
  `usuario_alumno` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `cod_asig` varchar(7) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `cod_periodo` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `cod_pago` int(11) NOT NULL,
  `usuario_alumno` int(11) NOT NULL,
  `cod_grado` int(11) NOT NULL,
  `mes_cancelar` varchar(9) NOT NULL,
  `fecha_cancelar` date NOT NULL,
  `periodo` varchar(7) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `cod_periodo` int(11) NOT NULL,
  `periodo` varchar(10) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `num_documento` int(11) NOT NULL,
  `tipo_documento` varchar(22) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `usuario` varchar(35) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `nombre1` varchar(12) NOT NULL,
  `nombre2` varchar(12) DEFAULT NULL,
  `apellido1` varchar(12) NOT NULL,
  `apellido2` varchar(12) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `lugar_nacimiento` varchar(15) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `direccion` varchar(30) NOT NULL,
  `eps` varchar(20) DEFAULT NULL,
  `correo` varchar(40) DEFAULT NULL,
  `formacion_academica` text DEFAULT NULL,
  `cod_grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`num_documento`, `tipo_documento`, `rol`, `usuario`, `contrasena`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `edad`, `sexo`, `lugar_nacimiento`, `fecha_nacimiento`, `telefono`, `direccion`, `eps`, `correo`, `formacion_academica`, `cod_grado`) VALUES
(4414169, 'CC', 'Docente', 'docente2', 'docente2', 'Orlando', 'David', 'Zuluaga', 'Herrera', 30, 'M', 'Barranquilla', '1992-06-15', 3207689898, 'Kra 23 #51-33A', NULL, 'doc2@hotmail.com', 'Pedagogía Infantil - Psicología', NULL),
(9859830, 'CC', 'Docente', 'docente3', 'docente3', 'Felipe', '', 'Diaz', 'Camargo', 28, 'M', 'Barranquilla', '1994-06-15', 3155008713, 'Calle 23 #51-33A', NULL, 'doc3@hotmail.com', 'Pedagogía Infantil - Psicología - Licenciado en ciencias sociales', NULL),
(10258284, 'CC', 'Docente', 'docente4', 'docente4', 'Camila', 'Sofia', 'Melendez', 'Jinete', 28, 'F', 'Soledad', '1994-06-15', 3003567898, 'Calle 33 #16-33A', NULL, 'doc4@hotmail.com', 'Licenciada en lengua castellana', NULL),
(72345986, 'CC', 'Docente', 'docente1', 'docente1', 'Patricia', '', 'Orozco', 'Perez', 32, 'F', 'Barranquilla', '1990-06-15', 3155008713, 'Kra 21 #50-33A', NULL, 'patriorpe@hotmail.com', 'Pedagogía Infantil', NULL),
(1053795396, 'TI', 'Estudiante', 'alumno1', 'alumno1', 'Luisa', 'Fernanda', 'Jinete', 'Jimenez', 6, 'F', 'Sabanalarga', '2017-03-12', NULL, 'Diagonal 21 #13B-14', 'Salud Total', NULL, NULL, 4),
(1053796646, 'RC', 'Estudiante', 'alumno2', 'alumno2', 'Camila', 'Maria', 'Patiño', 'Rodriguez', 5, 'F', 'Soledad', '2018-09-17', NULL, 'Diagonal 22 #11B-14', 'Salud Total', NULL, NULL, 3),
(1053797430, 'RC', 'Estudiante', 'alumno3', 'alumno3', 'Orlando', 'Junior', 'Julio', 'Lopez', 4, 'M', 'Soledad', '2019-12-21', NULL, 'Calle 22 #11B-14', 'Salud Total', NULL, NULL, 2),
(1053801555, 'RC', 'Estudiante', 'alumno4', 'alumno4', 'Oscar', 'David', 'Escorcia', 'Palencia', 3, 'M', 'Barranquilla', '2020-12-21', NULL, 'Kra 22 #11B-14', 'Salud Total', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD PRIMARY KEY (`num_documento`),
  ADD KEY `usuario_alumno` (`usuario_alumno`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`cod_asig`);

--
-- Indices de la tabla `asignaturas_alumnos`
--
ALTER TABLE `asignaturas_alumnos`
  ADD KEY `cod_asig` (`cod_asig`),
  ADD KEY `usuario_alumno` (`usuario_alumno`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`cod_asist`),
  ADD KEY `usuario_alumno` (`usuario_alumno`),
  ADD KEY `usuario_docente` (`usuario_docente`),
  ADD KEY `cod_grado` (`cod_grado`);

--
-- Indices de la tabla `asoc_asig_grados`
--
ALTER TABLE `asoc_asig_grados`
  ADD KEY `cod_asig` (`cod_asig`),
  ADD KEY `cod_grado` (`cod_grado`);

--
-- Indices de la tabla `asoc_docente_asig`
--
ALTER TABLE `asoc_docente_asig`
  ADD KEY `cod_asig` (`cod_asig`),
  ADD KEY `usuario_docente` (`usuario_docente`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`cod_grado`),
  ADD KEY `usuario_docente` (`usuario_docente`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`cod_notas`),
  ADD KEY `usuario_alumno` (`usuario_alumno`),
  ADD KEY `cod_asig` (`cod_asig`),
  ADD KEY `cod_grado` (`cod_grado`),
  ADD KEY `cod_periodo` (`cod_periodo`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`cod_pago`),
  ADD KEY `usuario_alumno` (`usuario_alumno`),
  ADD KEY `cod_grado` (`cod_grado`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`cod_periodo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`num_documento`),
  ADD KEY `cod_grado` (`cod_grado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `cod_asist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `cod_notas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `cod_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acudientes`
--
ALTER TABLE `acudientes`
  ADD CONSTRAINT `acudientes_ibfk_1` FOREIGN KEY (`usuario_alumno`) REFERENCES `usuarios` (`num_documento`);

--
-- Filtros para la tabla `asignaturas_alumnos`
--
ALTER TABLE `asignaturas_alumnos`
  ADD CONSTRAINT `asignaturas_alumnos_ibfk_1` FOREIGN KEY (`cod_asig`) REFERENCES `asignaturas` (`cod_asig`),
  ADD CONSTRAINT `asignaturas_alumnos_ibfk_2` FOREIGN KEY (`usuario_alumno`) REFERENCES `usuarios` (`num_documento`);

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`usuario_alumno`) REFERENCES `usuarios` (`num_documento`),
  ADD CONSTRAINT `asistencias_ibfk_2` FOREIGN KEY (`usuario_docente`) REFERENCES `usuarios` (`num_documento`),
  ADD CONSTRAINT `asistencias_ibfk_3` FOREIGN KEY (`cod_grado`) REFERENCES `grados` (`cod_grado`);

--
-- Filtros para la tabla `asoc_asig_grados`
--
ALTER TABLE `asoc_asig_grados`
  ADD CONSTRAINT `asoc_asig_grados_ibfk_1` FOREIGN KEY (`cod_asig`) REFERENCES `asignaturas` (`cod_asig`),
  ADD CONSTRAINT `asoc_asig_grados_ibfk_2` FOREIGN KEY (`cod_grado`) REFERENCES `grados` (`cod_grado`);

--
-- Filtros para la tabla `asoc_docente_asig`
--
ALTER TABLE `asoc_docente_asig`
  ADD CONSTRAINT `asoc_docente_asig_ibfk_1` FOREIGN KEY (`cod_asig`) REFERENCES `asignaturas` (`cod_asig`),
  ADD CONSTRAINT `asoc_docente_asig_ibfk_2` FOREIGN KEY (`usuario_docente`) REFERENCES `usuarios` (`num_documento`);

--
-- Filtros para la tabla `grados`
--
ALTER TABLE `grados`
  ADD CONSTRAINT `grados_ibfk_1` FOREIGN KEY (`usuario_docente`) REFERENCES `usuarios` (`num_documento`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`usuario_alumno`) REFERENCES `usuarios` (`num_documento`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`cod_asig`) REFERENCES `asignaturas` (`cod_asig`),
  ADD CONSTRAINT `notas_ibfk_3` FOREIGN KEY (`cod_grado`) REFERENCES `grados` (`cod_grado`),
  ADD CONSTRAINT `notas_ibfk_4` FOREIGN KEY (`cod_periodo`) REFERENCES `periodo` (`cod_periodo`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`usuario_alumno`) REFERENCES `usuarios` (`num_documento`),
  ADD CONSTRAINT `pago_ibfk_2` FOREIGN KEY (`cod_grado`) REFERENCES `grados` (`cod_grado`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cod_grado`) REFERENCES `grados` (`cod_grado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
