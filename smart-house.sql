-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 07-12-2022 a las 20:15:44
-- Versión del servidor: 8.0.31-0ubuntu0.22.04.1
-- Versión de PHP: 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `smart-house`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adquisisiones`
--

CREATE TABLE `adquisisiones` (
  `id_adquisicion` int NOT NULL,
  `id_proveedor` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `costo_unitario` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_empleado` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitaciones`
--

CREATE TABLE `capacitaciones` (
  `id_capacitacion` int NOT NULL,
  `id_empleado` int DEFAULT NULL,
  `tipo_cap` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `comentarios` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `capacitaciones`
--

INSERT INTO `capacitaciones` (`id_capacitacion`, `id_empleado`, `tipo_cap`, `descripcion`, `comentarios`, `fecha`) VALUES
(1, 1, 'Soporte', 'Soporte hacia clientes', 'Paso satisfactoriamente todo', '2022-10-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `num_tel` varchar(10) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `estatus` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellidos`, `fecha_nac`, `sexo`, `correo`, `num_tel`, `direccion`, `estatus`) VALUES
(1, 'Carlos', 'Gonzalez', '2000-09-29', 'M', 'carlos@hotmail.com', '3221353749', 'Av. Siempre viva #117', 0),
(2, 'Samuel', 'Garcia', '2000-12-05', 'M', 'samuel@hotmail.com', '3221325477', 'Hidalgo 36', 0),
(3, 'Josue', 'Adame', '1998-08-09', 'M', 'josue@hotmail.com', '3221478965', 'Jupiter 1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cod_promocion`
--

CREATE TABLE `cod_promocion` (
  `id_codigo` int NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `disponibilidad` int DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactanos`
--

CREATE TABLE `contactanos` (
  `nd` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `descripcion` varchar(256) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contactanos`
--

INSERT INTO `contactanos` (`nd`, `nombre`, `correo`, `descripcion`, `fecha`) VALUES
(7, 'josue adame  godinez', 'josueadame@gmail.com', 'todo  chevere', '2022-12-04'),
(6, 'josue adame  godinez', 'josueadame@gmail.com', 'klfajsdhglkasdfjnbgv', '2022-12-04'),
(8, 'pepe', 'pepe@gmail.com', 'hola, esto es una prueba ', '2022-12-05'),
(9, 'Guillermo ', 'algo@hotmail.com', 'Todo está Pal perro', '2022-12-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  `pass` varchar(256) NOT NULL,
  `num_tel` varchar(10) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `puesto` varchar(15) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `estatus` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellidos`, `sexo`, `fecha_nac`, `rfc`, `correo`, `pass`, `num_tel`, `fecha_contratacion`, `puesto`, `direccion`, `estatus`) VALUES
(1, 'Ana', 'Lopez', 'F', '2000-07-21', 'AND4103974128', 'Ana@gmail.com', '147258', '3221472836', '2021-10-12', 'Instaladora', 'Gorro 8', 1),
(2, 'Javier', 'Gamba', 'M', '2000-08-01', 'JG47123587412', 'Jav@gmail.com', '123456', '3221407943', '2020-09-05', 'Gerente', 'Josias 102', 0),
(3, 'Aldo', 'Nomad', 'M', '1999-01-20', 'AN14752369874', 'Ald@gmail.com', '', '3221398703', '2022-01-06', 'Soporte', 'Lolo 3', 0),
(5, 'Josue', 'Adame', 'M', '2000-09-20', 'dfjbdskfgdsb', 'josue@gmail.com', '147258', '3223683458', '2020-10-12', 'Supervisor', 'Gorro 5', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre_venta`
--

CREATE TABLE `pre_venta` (
  `nd` int NOT NULL,
  `img` varchar(256) NOT NULL,
  `id_producto` int NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `precio` int NOT NULL,
  `unidades` int NOT NULL,
  `fecha` date NOT NULL,
  `estatus` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pre_venta`
--

INSERT INTO `pre_venta` (`nd`, `img`, `id_producto`, `nombre`, `precio`, `unidades`, `fecha`, `estatus`) VALUES
(60, 'teatro.jpg', 13, 'TEATRO EN CASA', 8000, 1, '2022-12-07', 0),
(59, 'tv.jpg', 8, 'TV 40\"', 8000, 1, '2022-12-07', 0),
(58, 'alexa2.jpg', 10, 'ALEXA', 800, 1, '2022-12-07', 0);

--
-- Disparadores `pre_venta`
--
DELIMITER $$
CREATE TRIGGER `respaldoventa` BEFORE DELETE ON `pre_venta` FOR EACH ROW insert into ventas  (img,id_producto,nombre,total_venta,fecha)
    values(old.img,old.id_producto,old.nombre,old.precio,now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `marcha` varchar(10) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `inventario` int DEFAULT NULL,
  `estatus` int NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `marcha`, `descripcion`, `precio`, `inventario`, `estatus`, `img`) VALUES
(13, 'TEATRO EN CASA', 'LG', 'TEATRO EN CASA 7.1', 8000, 22, 0, 'teatro.jpg'),
(8, 'TV 40\"', 'TLC', 'Full HD 4K', 8000, 49, 0, 'tv.jpg'),
(9, 'TV 50\"', 'HISENSE', 'Full HD 4K', 7000, 17, 0, 'tv2.jpg'),
(10, 'ALEXA', 'AMAZON', 'ALEXA ALTAVIOZ INTELIGENTE', 800, 34, 0, 'alexa2.jpg'),
(11, 'GOOGLE HOME', 'GOOGLE', 'GOOGLE HOME MINI', 599, 4, 0, 'googlehome.jpg'),
(12, 'GOOGLE HOME 2', 'GOOGLE', 'GOOGLE HOME 2', 999, 19, 0, 'googlehome.jpg'),
(14, 'TEATRO EN CASA', 'LOGITECH', 'TEATRO EN CASA 5.1', 3999, 13, 0, 'teatro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `id_promocion` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `disponibilidad` int DEFAULT NULL,
  `costo` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `razon_social` varchar(20) DEFAULT NULL,
  `representante` varchar(30) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `rfc`, `razon_social`, `representante`, `telefono`, `correo`) VALUES
(1, 'Samsung', 'SM74128796358', 'Samsung electro', 'Jael Lopez', '3292824785', 'samsung@hotmail.co,'),
(2, 'Amazon', 'AM12369874123', 'Amazon Etp', 'Alondra Lu', '3221745985', 'amaz@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `id_encargado` int DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `tiempo_estimado` int DEFAULT NULL,
  `tiempo_finalizado` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `costo` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `nombre`, `id_encargado`, `estado`, `tiempo_estimado`, `tiempo_finalizado`, `id_cliente`, `costo`) VALUES
(1, 'Proyecto Ara', 2, 'En espera', 3, NULL, 1, 2999),
(2, 'Proyecto Loma', 1, 'En curso', 10, NULL, 2, 5999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_trabajador`
--

CREATE TABLE `proyecto_trabajador` (
  `id_proyecto` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto_trabajador`
--

INSERT INTO `proyecto_trabajador` (`id_proyecto`, `id_empleado`) VALUES
(1, 2),
(2, 2),
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `report_sug`
--

CREATE TABLE `report_sug` (
  `id_reporte` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_empleado` int DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `estatus` int DEFAULT NULL,
  `respuesta` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `nd` int NOT NULL,
  `user` varchar(256) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `estatus` varchar(50) DEFAULT NULL,
  `asignar` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`nd`, `user`, `correo`, `descripcion`, `estatus`, `asignar`) VALUES
(1, 'joshep1', 'joshep@gmail.com', 'no puedo conectarme al servidor de riot games', 'eliminado', 'Ingeniero'),
(2, 'admin', 'gukummdo@gmail.com', 'no puedo conectarme al servidor de riot games', 'finalizado', 'Tecnico'),
(4, 'VaidrollTeam3', 'itzel@gmail.com', 'no puedo conectarme al servidor de riot games', 'revisando', 'DiseÃ±ador'),
(16, 'samuel', 'samuel@gmail.com', 'no puedo conectarme al servidor de riot games', 'revisando', 'Tecnico'),
(17, 'josue', 'josue@gmail.com', 'no puedo conectarme al servidor de riot games', 'recibido', 'DiseÃ±ador'),
(18, 'josue', 'josue@gmail.com', 'todo mal', 'recibido', 'Ingeniero'),
(19, 'josue', 'josue@gmail.com', 'todo mal', 'recibido', 'Tecnico'),
(20, 'josue', 'josueadame32@gmail.com', 'presento problemas con los microfonos de la cocina', 'recibido', 'Tecnico'),
(21, 'josue', 'josueadame28@gmail.com', 'falata en yarda 20', 'recibido', 'DiseÃ±ador');

--
-- Disparadores `tickets`
--
DELIMITER $$
CREATE TRIGGER `respaldo` AFTER DELETE ON `tickets` FOR EACH ROW insert into bitacora (user,	correo,	descripcion, estatus, asignar, fecha	)
    values (old.user, old.correo, old.descripcion, old.estatus, old.asignar, now() )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int NOT NULL,
  `img` varchar(50) NOT NULL,
  `id_producto` int DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `total_venta` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_proyecto` int DEFAULT NULL,
  `id_promocion` int DEFAULT NULL,
  `id_codigo` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `img`, `id_producto`, `nombre`, `total_venta`, `fecha`, `id_proyecto`, `id_promocion`, `id_codigo`, `id_cliente`) VALUES
(1, '0', 1, '', 4999, '2022-10-13', NULL, NULL, NULL, 1),
(2, '0', 1, '', 4999, '2022-10-13', NULL, NULL, NULL, 2),
(3, '0', 2, '', 6999, '2021-10-13', NULL, NULL, NULL, 3),
(5, 'foco.jpg', 3, 'Foco', 398, '2022-12-04', NULL, NULL, NULL, NULL),
(6, 'minisplit.jpg', 4, 'Minisplit', 10000, '2022-12-04', NULL, NULL, NULL, NULL),
(7, 'enchufe.jpg', 5, 'Smart plug', 800, '2022-12-04', NULL, NULL, NULL, NULL),
(8, 'alexa.jpeg', 2, 'Alexa', 6999, '2022-12-04', NULL, NULL, NULL, NULL),
(9, 'enchufe.jpg', 5, 'Smart plug', 800, '2022-12-04', NULL, NULL, NULL, NULL),
(10, 'minisplit.jpg', 4, 'Minisplit', 10000, '2022-12-04', NULL, NULL, NULL, NULL),
(11, 'foco.jpg', 3, 'Foco', 398, '2022-12-04', NULL, NULL, NULL, NULL),
(12, 'tv.jpg', 1, 'TV', 4999, '2022-12-05', NULL, NULL, NULL, NULL),
(13, 'enchufe.jpg', 5, 'Smart plug', 800, '2022-12-05', NULL, NULL, NULL, NULL),
(14, 'foco.jpg', 3, 'Foco', 597, '2022-12-05', NULL, NULL, NULL, NULL),
(15, 'minisplit.jpg', 4, 'Minisplit', 10000, '2022-12-05', NULL, NULL, NULL, NULL),
(16, 'alexa.jpeg', 2, 'Alexa', 6999, '2022-12-05', NULL, NULL, NULL, NULL),
(17, 'tv.jpg', 1, 'TV', 4999, '2022-12-05', NULL, NULL, NULL, NULL),
(18, 'foco.jpg', 3, 'Foco', 199, '2022-12-05', NULL, NULL, NULL, NULL),
(19, 'alexa.jpeg', 2, 'Alexa', 6999, '2022-12-05', NULL, NULL, NULL, NULL),
(20, 'foco.jpg', 3, 'Foco', 199, '2022-12-05', NULL, NULL, NULL, NULL),
(21, 'enchufe.jpg', 5, 'Smart plug', 800, '2022-12-05', NULL, NULL, NULL, NULL),
(22, 'tv.jpg', 1, 'TV', 4999, '2022-12-05', NULL, NULL, NULL, NULL),
(23, 'alexa.jpeg', 2, 'Alexa', 6999, '2022-12-05', NULL, NULL, NULL, NULL),
(24, 'minisplit.jpg', 4, 'Minisplit', 30000, '2022-12-05', NULL, NULL, NULL, NULL),
(25, 'foco.jpg', 3, 'Foco', 597, '2022-12-05', NULL, NULL, NULL, NULL),
(26, 'enchufe.jpg', 5, 'Smart plug', 800, '2022-12-06', NULL, NULL, NULL, NULL),
(27, 'no jala', 6, 'teather home', 15500, '2022-12-06', NULL, NULL, NULL, NULL),
(28, 'tv.jpg', 1, 'TV', 4999, '2022-12-06', NULL, NULL, NULL, NULL),
(29, 'alexa.jpeg', 2, 'Alexa', 6999, '2022-12-06', NULL, NULL, NULL, NULL),
(30, 'tv.jpg', 1, 'TV', 9998, '2022-12-06', NULL, NULL, NULL, NULL),
(31, 'no jala', 6, 'teather home', 15500, '2022-12-06', NULL, NULL, NULL, NULL),
(32, 'tv.jpg', 1, 'TV', 9998, '2022-12-06', NULL, NULL, NULL, NULL),
(33, 'alexa.jpeg', 2, 'Alexa', 6999, '2022-12-06', NULL, NULL, NULL, NULL),
(34, 'foco.jpg', 3, 'Foco', 199, '2022-12-06', NULL, NULL, NULL, NULL),
(35, 'googlehome.jpg', 11, 'GOOGLE HOME', 599, '2022-12-06', NULL, NULL, NULL, NULL),
(36, 'tv2.jpg', 9, 'TV 50\"', 7000, '2022-12-06', NULL, NULL, NULL, NULL),
(37, 'tv.jpg', 8, 'TV 40\"', 8000, '2022-12-06', NULL, NULL, NULL, NULL),
(38, 'tv2.jpg', 9, 'TV 50\"', 7000, '2022-12-06', NULL, NULL, NULL, NULL),
(39, 'tv.jpg', 8, 'TV 40\"', 8000, '2022-12-07', NULL, NULL, NULL, NULL),
(40, 'googlehome.jpg', 12, 'GOOGLE HOME 2', 999, '2022-12-07', NULL, NULL, NULL, NULL),
(41, 'alexa.jpg', 10, 'ALEXA', 8800, '2022-12-07', NULL, NULL, NULL, NULL),
(42, 'googlehome.jpg', 11, 'GOOGLE HOME', 599, '2022-12-07', NULL, NULL, NULL, NULL),
(43, 'tv2.jpg', 9, 'TV 50\"', 7000, '2022-12-07', NULL, NULL, NULL, NULL),
(44, 'alexa.jpg', 10, 'ALEXA', 800, '2022-12-07', NULL, NULL, NULL, NULL),
(45, 'googlehome.jpg', 11, 'GOOGLE HOME', 599, '2022-12-07', NULL, NULL, NULL, NULL),
(46, 'tv2.jpg', 9, 'TV 50\"', 7000, '2022-12-07', NULL, NULL, NULL, NULL),
(47, 'tv.jpg', 8, 'TV 40\"', 8000, '2022-12-07', NULL, NULL, NULL, NULL),
(48, 'googlehome.jpg', 11, 'GOOGLE HOME', 599, '2022-12-07', NULL, NULL, NULL, NULL),
(49, 'tv.jpg', 8, 'TV 40\"', 8000, '2022-12-07', NULL, NULL, NULL, NULL),
(50, 'alexa2.jpg', 10, 'ALEXA', 2400, '2022-12-07', NULL, NULL, NULL, NULL),
(51, 'teatro.jpg', 14, 'TEATRO EN CASA', 3999, '2022-12-07', NULL, NULL, NULL, NULL),
(52, 'tv.jpg', 8, 'TV 40\"', 8000, '2022-12-07', NULL, NULL, NULL, NULL),
(53, 'tv.jpg', 8, 'TV 40\"', 8000, '2022-12-07', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adquisisiones`
--
ALTER TABLE `adquisisiones`
  ADD PRIMARY KEY (`id_adquisicion`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `capacitaciones`
--
ALTER TABLE `capacitaciones`
  ADD PRIMARY KEY (`id_capacitacion`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `cod_promocion`
--
ALTER TABLE `cod_promocion`
  ADD PRIMARY KEY (`id_codigo`);

--
-- Indices de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  ADD PRIMARY KEY (`nd`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `pre_venta`
--
ALTER TABLE `pre_venta`
  ADD PRIMARY KEY (`nd`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id_promocion`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `id_encargado` (`id_encargado`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `proyecto_trabajador`
--
ALTER TABLE `proyecto_trabajador`
  ADD KEY `id_proyecto` (`id_proyecto`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `report_sug`
--
ALTER TABLE `report_sug`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`nd`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_proyecto` (`id_proyecto`),
  ADD KEY `id_promocion` (`id_promocion`),
  ADD KEY `id_codigo` (`id_codigo`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adquisisiones`
--
ALTER TABLE `adquisisiones`
  MODIFY `id_adquisicion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capacitaciones`
--
ALTER TABLE `capacitaciones`
  MODIFY `id_capacitacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cod_promocion`
--
ALTER TABLE `cod_promocion`
  MODIFY `id_codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  MODIFY `nd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pre_venta`
--
ALTER TABLE `pre_venta`
  MODIFY `nd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id_promocion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `report_sug`
--
ALTER TABLE `report_sug`
  MODIFY `id_reporte` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `nd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
