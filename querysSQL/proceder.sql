-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2019 a las 02:46:31
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proceder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `idDia` int(11) NOT NULL,
  `nombreDia` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `dia`
--

INSERT INTO `dia` (`idDia`, `nombreDia`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miércoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sábado'),
(7, 'Domingo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL,
  `idDia` int(11) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`idHorario`, `idDia`, `horaInicio`, `horaFin`) VALUES
(1, 1, '08:30:00', '21:00:00'),
(2, 2, '08:30:00', '21:00:00'),
(3, 3, '08:30:00', '21:00:00'),
(4, 4, '08:30:00', '21:00:00'),
(5, 5, '08:30:00', '20:00:00'),
(6, 6, '07:00:00', '14:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horariounidad`
--

CREATE TABLE `horariounidad` (
  `idHoraUni` int(11) NOT NULL,
  `idUnidad` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `horariounidad`
--

INSERT INTO `horariounidad` (`idHoraUni`, `idUnidad`, `idHorario`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 4, 5),
(6, 4, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `idProceso` int(11) NOT NULL,
  `nombreProceso` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcionProceso` varchar(512) COLLATE utf8_bin NOT NULL,
  `idUnidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`idProceso`, `nombreProceso`, `descripcionProceso`, `idUnidad`) VALUES
(1, 'Acoger al nuevo integración de la comunidad\r\n', 'Para la vinculación y el reconocimiento de las dependencias institucionales, se realizan jornadas de inducción para estudiantes nuevos y homologantes.\r\n', 1),
(2, 'Tutorías\r\n', 'Fortalece tus conocimientos, recibe incentivos académicos y evita la pérdida de asignaturas\r\n', 2),
(3, 'Certificación interna\r\n', 'A través de los exámenes programados por la coordinación de manera presencial en las fechas previamente establecidas y con el pago correspondiente o curso intensivo presencial con apoyo didáctico (plataforma)\r\n', 3),
(4, 'Grados nivel Técnico profesional\r\n', 'El estudiante de acuerdo a las fechas establecidas en el cronograma de grados debe realizar el pago de los derechos de grado en la gerencia administrativa, para poder realizar la petición en el sistema de petición y gestión de grados, en el cual podrá después de registrar la petición consultar el estado de cumplimiento de los requisitos.\r\n', 4),
(5, 'Grados nivel Tecnológico\r\n', 'El estudiante de acuerdo a las fechas establecidas en el cronograma de grados debe realizar el pago de los derechos de grado en la gerencia administrativa, para poder realizar la petición en el sistema de petición y gestión de grados, en el cual podrá después de registrar la petición consultar el estado de cumplimiento de los requisitos.\r\n', 4),
(6, 'Grados nivel universitario\r\n', 'El estudiante de acuerdo a las fechas establecidas en el cronograma de grados debe realizar el pago de los derechos de grado en la gerencia administrativa, para poder realizar la petición en el sistema de petición y gestión de grados, en el cual podrá después de registrar la petición consultar el estado de cumplimiento de los requisitos.\r\n', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesorequisito`
--

CREATE TABLE `procesorequisito` (
  `idProReq` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `idRequisito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `procesorequisito`
--

INSERT INTO `procesorequisito` (`idProReq`, `idProceso`, `idRequisito`) VALUES
(1, 3, 1),
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 4, 5),
(6, 4, 6),
(7, 4, 7),
(8, 5, 2),
(9, 5, 8),
(10, 5, 4),
(11, 5, 5),
(12, 5, 6),
(13, 5, 7),
(14, 6, 2),
(15, 6, 8),
(16, 6, 4),
(17, 6, 9),
(18, 6, 5),
(19, 5, 6),
(20, 5, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisito`
--

CREATE TABLE `requisito` (
  `idRequisito` int(11) NOT NULL,
  `nombreRequisito` varchar(200) COLLATE utf8_bin NOT NULL,
  `descripcionRequisito` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `requisito`
--

INSERT INTO `requisito` (`idRequisito`, `nombreRequisito`, `descripcionRequisito`) VALUES
(1, 'Pago de solicitud', 'En caja se realiza el pago correspondiente al proceso solicitado\r\n'),
(2, 'Cursar y aprobar el correspondiente plan de estudios\r\n', ''),
(3, 'Realizar y aprobar la práctica empresarial', ''),
(4, 'Acreditar la realización de la labor social, si es el primer nivel de formación que cursa en la Institución.', ''),
(5, 'Realizar y aprobar la correspondiente opción de grado', ''),
(6, 'Presentar la prueba y/o pruebas de estado, que defina el Ministerio de Educación Nacional.', ''),
(7, 'Cumplir con los demás requisitos, que establezca el Gobierno Nacional', ''),
(8, 'Realizar y aprobar la práctica empresarial para los programas que así lo establezcan.', ''),
(9, 'Aportar Certificación vigente expedida por entidad certificadora, con\r\ncompetencias en Inglés Nivel B1, según el Marco Común Europeo de referencia para lenguas.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `idTelefono` int(11) NOT NULL,
  `telefonoFijo` int(11) NOT NULL,
  `telefonoExt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`idTelefono`, `telefonoFijo`, `telefonoExt`) VALUES
(1, 3309999, 221),
(2, 3309999, 121),
(3, 3236465, 0),
(4, 3309999, 888),
(5, 3309999, 777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonounidad`
--

CREATE TABLE `telefonounidad` (
  `idTelUni` int(11) NOT NULL,
  `idUnidad` int(11) NOT NULL,
  `idTelefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `telefonounidad`
--

INSERT INTO `telefonounidad` (`idTelUni`, `idUnidad`, `idTelefono`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `idUnidad` int(11) NOT NULL,
  `nombreUnidad` varchar(50) COLLATE utf8_bin NOT NULL,
  `descripcionUnidad` varchar(1024) COLLATE utf8_bin NOT NULL,
  `emailUnidad` varchar(50) COLLATE utf8_bin NOT NULL,
  `movilUnidad` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `unidad`
--

INSERT INTO `unidad` (`idUnidad`, `nombreUnidad`, `descripcionUnidad`, `emailUnidad`, `movilUnidad`) VALUES
(1, 'Bienestar Institucional', 'Estamos encargados de orientar, guiar y apoyar a la comunidad de educación presencial en los diferentes procesos institucionales, dando cumplimiento a la formación integral desde la cultura, el deporte, la salud, la ecología y la permanencia y graduación de todos nuestros estudiantes.\r\n', 'bienestar@sanmateo.edu.co', 3213285542),
(2, 'Programa de Permanencia y Graduación', 'El Programa de permanencia y graduación, tiene como función articular acciones que permitan identificar las causas de deserción estudiantil de la institución, con el fin de generar estrategias que contribuyan al acompañamiento institucional, de los estudiantes en su transitar por la educación superior, favoreciendo la realización del proyecto de vida a nivel académico, al continuar y finalizar sus estudios, para luego ingresar al campo laboral, aportando acciones significativas en el contexto.\r\n', 'orientadora2@sanmateo.edu.co', 0),
(3, 'Centro de Lenguas', 'El centro de lenguas tiene como objetivo primordial la formación de la comunidad mateista hacia el conocimiento de otras culturas y la comunicación en un segundo idioma según los estándares internacionales.\r\n', 'cenfus@funsanmateo.edu.co', 0),
(4, 'Unidad Atención al Usuario', '', 'unidadatencionusuario@sanmateo.edu.co', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`idDia`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idHorario`),
  ADD KEY `Horario_fk0` (`idDia`);

--
-- Indices de la tabla `horariounidad`
--
ALTER TABLE `horariounidad`
  ADD PRIMARY KEY (`idHoraUni`),
  ADD KEY `HorarioUnidad_fk0` (`idUnidad`),
  ADD KEY `HorarioUnidad_fk1` (`idHorario`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`idProceso`),
  ADD KEY `Proceso_fk0` (`idUnidad`);

--
-- Indices de la tabla `procesorequisito`
--
ALTER TABLE `procesorequisito`
  ADD PRIMARY KEY (`idProReq`),
  ADD KEY `ProcesoRequisito_fk0` (`idProceso`),
  ADD KEY `ProcesoRequisito_fk1` (`idRequisito`);

--
-- Indices de la tabla `requisito`
--
ALTER TABLE `requisito`
  ADD PRIMARY KEY (`idRequisito`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`idTelefono`);

--
-- Indices de la tabla `telefonounidad`
--
ALTER TABLE `telefonounidad`
  ADD PRIMARY KEY (`idTelUni`),
  ADD KEY `TelefonoUnidad_fk0` (`idUnidad`),
  ADD KEY `TelefonoUnidad_fk1` (`idTelefono`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`idUnidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dia`
--
ALTER TABLE `dia`
  MODIFY `idDia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `horariounidad`
--
ALTER TABLE `horariounidad`
  MODIFY `idHoraUni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `idProceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `procesorequisito`
--
ALTER TABLE `procesorequisito`
  MODIFY `idProReq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `requisito`
--
ALTER TABLE `requisito`
  MODIFY `idRequisito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `telefonounidad`
--
ALTER TABLE `telefonounidad`
  MODIFY `idTelUni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `idUnidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `Horario_fk0` FOREIGN KEY (`idDia`) REFERENCES `dia` (`idDia`);

--
-- Filtros para la tabla `horariounidad`
--
ALTER TABLE `horariounidad`
  ADD CONSTRAINT `HorarioUnidad_fk0` FOREIGN KEY (`idUnidad`) REFERENCES `unidad` (`idUnidad`),
  ADD CONSTRAINT `HorarioUnidad_fk1` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`);

--
-- Filtros para la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `Proceso_fk0` FOREIGN KEY (`idUnidad`) REFERENCES `unidad` (`idUnidad`);

--
-- Filtros para la tabla `procesorequisito`
--
ALTER TABLE `procesorequisito`
  ADD CONSTRAINT `ProcesoRequisito_fk0` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`),
  ADD CONSTRAINT `ProcesoRequisito_fk1` FOREIGN KEY (`idRequisito`) REFERENCES `requisito` (`idRequisito`);

--
-- Filtros para la tabla `telefonounidad`
--
ALTER TABLE `telefonounidad`
  ADD CONSTRAINT `TelefonoUnidad_fk0` FOREIGN KEY (`idUnidad`) REFERENCES `unidad` (`idUnidad`),
  ADD CONSTRAINT `TelefonoUnidad_fk1` FOREIGN KEY (`idTelefono`) REFERENCES `telefono` (`idTelefono`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
