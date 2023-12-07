-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2023 a las 04:14:56
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `nombrecategoria` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `nombrecategoria`) VALUES
(8, 'POSTRES '),
(9, 'Vegetales'),
(14, 'POLLO'),
(15, 'PESCADO'),
(19, 'SERVICIO DE MESA'),
(20, 'PIZZERIA'),
(23, 'CAFE'),
(24, 'BEBIDAS'),
(25, 'CELIACO'),
(26, 'Helados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `iddetalle` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`iddetalle`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
(6, 39, 200, '12-09-2023', 6, 'MESA 3'),
(7, 39, 200, '12-09-2023', 6, 'MESA 3'),
(8, 39, 200, '12-09-2023', 6, 'MESA 3'),
(10, 39, 200, '12-09-2023', 6, 'MESA 3'),
(11, 39, 200, '12-09-2023', 6, 'MESA 3'),
(13, 39, 200, '12-09-2023', 6, 'MESA 3'),
(14, 39, 200, '12-09-2023', 6, 'MESA 3'),
(15, 39, 200, '12-09-2023', 6, 'MESA 3'),
(16, 39, 200, '12-09-2023', 6, 'MESA 3'),
(17, 39, 200, '12-09-2023', 6, 'MESA 3'),
(18, 39, 200, '12-09-2023', 6, 'MESA 3'),
(19, 39, 200, '13-09-2023', 6, 'MESA 3'),
(20, 38, 100, '14-09-2023', 6, 'MESA 3'),
(21, 38, 100, '14-09-2023', 6, 'MESA 3'),
(22, 41, 300, '15-09-2023', 6, 'MESA 3'),
(24, 40, 100, '15-09-2023', 6, 'MESA 3'),
(25, 39, 200, '17-09-2023', 6, 'MESA 1'),
(26, 42, 500, '15-10-2023', 7, 'MESA 1'),
(27, 40, 100, '15-10-2023', 7, 'MESA 1'),
(29, 38, 100, '15-10-2023', 7, 'MESA 1'),
(30, 38, 100, '15-10-2023', 7, 'MESA 1'),
(32, 41, 300, '15-10-2023', 7, 'MESA 1'),
(33, 40, 100, '15-10-2023', 7, 'MESA 1'),
(34, 38, 100, '15-10-2023', 7, 'MESA 1'),
(35, 41, 300, '15-10-2023', 7, 'MESA 1'),
(37, 40, 100, '15-10-2023', 7, 'MESA 1'),
(38, 40, 100, '15-10-2023', 7, 'MESA 1'),
(39, 41, 300, '15-10-2023', 7, 'MESA 1'),
(40, 40, 100, '15-10-2023', 7, 'MESA 1'),
(41, 40, 100, '15-10-2023', 7, 'MESA 1'),
(42, 42, 500, '15-10-2023', 7, 'MESA 1'),
(43, 38, 100, '15-10-2023', 7, 'MESA 1'),
(44, 38, 100, '15-10-2023', 7, 'MESA 1'),
(46, 40, 100, '15-10-2023', 7, 'MESA 1'),
(47, 41, 300, '15-10-2023', 7, 'MESA 1'),
(48, 41, 300, '15-10-2023', 7, 'MESA 1'),
(49, 41, 300, '15-10-2023', 7, 'MESA 1'),
(50, 38, 100, '15-10-2023', 7, 'MESA 1'),
(52, 42, 500, '15-10-2023', 7, 'MESA 1'),
(53, 41, 300, '15-10-2023', 7, 'MESA 1'),
(55, 38, 100, '15-10-2023', 7, 'MESA 1'),
(56, 38, 100, '15-10-2023', 7, 'MESA 1'),
(57, 42, 500, '02-11-2023', 7, 'MESA 1'),
(58, 38, 100, '02-11-2023', 7, 'MESA 3'),
(59, 42, 500, '02-11-2023', 7, 'MESA 3'),
(60, 40, 100, '02-11-2023', 7, 'MESA 3'),
(61, 38, 100, '06-12-2023', 7, 'MESA 6'),
(62, 41, 300, '06-12-2023', 7, 'MESA 6'),
(64, 38, 100, '06-12-2023', 7, 'MESA 2'),
(65, 40, 100, '06-12-2023', 7, 'MESA 2'),
(66, 41, 300, '06-12-2023', 7, 'MESA 2'),
(67, 40, 100, '06-12-2023', 7, 'MESA 3'),
(68, 38, 100, '06-12-2023', 7, 'MESA 3'),
(69, 38, 100, '06-12-2023', 7, 'MESA 3'),
(70, 40, 100, '06-12-2023', 7, 'MESA 3'),
(71, 38, 100, '06-12-2023', 7, 'MESA 1'),
(72, 38, 100, '06-12-2023', 7, 'MESA 1'),
(73, 41, 300, '06-12-2023', 7, 'MESA 1'),
(74, 38, 100, '06-12-2023', 7, 'MESA 1'),
(75, 38, 100, '06-12-2023', 7, 'MESA 1'),
(76, 38, 100, '06-12-2023', 7, 'MESA 1'),
(77, 38, 100, '06-12-2023', 7, 'MESA 1'),
(78, 43, 400, '06-12-2023', 7, 'MESA 1'),
(79, 43, 400, '06-12-2023', 7, 'MESA 1'),
(80, 38, 100, '06-12-2023', 7, 'MESA 1'),
(82, 38, 100, '06-12-2023', 7, 'MESA 6'),
(83, 42, 500, '06-12-2023', 7, 'MESA 6'),
(85, 38, 100, '06-12-2023', 7, 'MESA 3'),
(86, 38, 100, '06-12-2023', 7, 'MESA 3'),
(88, 43, 400, '06-12-2023', 7, 'MESA 3'),
(89, 38, 100, '06-12-2023', 7, 'MESA 3'),
(90, 38, 100, '06-12-2023', 7, 'MESA 3'),
(91, 38, 100, '06-12-2023', 7, 'MESA 3'),
(92, 38, 100, '06-12-2023', 7, 'MESA 3'),
(93, 43, 400, '06-12-2023', 7, 'MESA 3'),
(94, 40, 100, '06-12-2023', 7, 'MESA 3'),
(98, 38, 100, '06-12-2023', 7, 'MESA 6'),
(99, 38, 100, '06-12-2023', 7, 'MESA 3'),
(100, 38, 100, '06-12-2023', 7, 'MESA 3'),
(101, 38, 100, '06-12-2023', 7, 'MESA 3'),
(102, 43, 400, '06-12-2023', 7, 'MESA 3'),
(103, 38, 100, '06-12-2023', 7, 'MESA 3'),
(104, 42, 500, '06-12-2023', 7, 'MESA 3'),
(105, 38, 100, '06-12-2023', 7, 'MESA 3'),
(106, 38, 100, '06-12-2023', 7, 'MESA 3'),
(108, 42, 500, '06-12-2023', 7, 'MESA 3'),
(109, 38, 100, '06-12-2023', 7, 'MESA 3'),
(111, 42, 500, '07-12-2023', 7, 'MESA 3'),
(112, 42, 500, '07-12-2023', 7, 'MESA 3'),
(113, 41, 300, '07-12-2023', 7, 'MESA 3'),
(114, 38, 100, '07-12-2023', 7, 'MESA 3'),
(118, 43, 400, '06-12-2023', 7, 'MESA 1'),
(119, 43, 400, '07-12-2023', 7, 'MESA 1'),
(120, 40, 100, '07-12-2023', 7, 'MESA 1'),
(121, 38, 100, '07-12-2023', 7, 'MESA 1'),
(122, 43, 400, '07-12-2023', 7, 'MESA 1'),
(126, 38, 100, '07-12-2023', 7, 'MESA 1'),
(127, 43, 400, '07-12-2023', 7, 'MESA 3'),
(128, 42, 500, '07-12-2023', 7, 'MESA 3'),
(129, 43, 400, '07-12-2023', 7, 'MESA 3'),
(130, 40, 100, '07-12-2023', 7, 'MESA 3'),
(131, 38, 100, '07-12-2023', 7, 'MESA 3'),
(132, 43, 400, '07-12-2023', 7, 'MESA 3'),
(133, 38, 100, '07-12-2023', 7, 'MESA 3'),
(134, 38, 100, '07-12-2023', 7, 'MESA 3'),
(135, 42, 500, '07-12-2023', 7, 'MESA 3'),
(136, 38, 100, '07-12-2023', 7, 'MESA 3'),
(137, 38, 100, '07-12-2023', 7, 'MESA 3'),
(138, 38, 100, '07-12-2023', 7, 'MESA 3'),
(139, 43, 400, '07-12-2023', 7, 'MESA 3'),
(140, 40, 100, '07-12-2023', 7, 'MESA 3'),
(141, 43, 400, '07-12-2023', 7, 'MESA 3'),
(142, 38, 100, '07-12-2023', 7, 'MESA 3'),
(143, 38, 100, '07-12-2023', 7, 'MESA 3'),
(144, 43, 400, '07-12-2023', 7, 'MESA 3'),
(145, 43, 400, '07-12-2023', 7, 'MESA 3'),
(146, 43, 400, '07-12-2023', 7, 'MESA 3'),
(147, 38, 100, '07-12-2023', 7, 'MESA 3'),
(148, 38, 100, '07-12-2023', 7, 'MESA 3'),
(149, 38, 100, '07-12-2023', 7, 'MESA 3'),
(150, 43, 400, '07-12-2023', 7, 'MESA 3'),
(151, 42, 500, '07-12-2023', 7, 'MESA 3'),
(152, 43, 400, '07-12-2023', 7, 'MESA 3'),
(153, 40, 100, '07-12-2023', 7, 'MESA 3'),
(154, 42, 500, '07-12-2023', 7, 'MESA 3'),
(155, 45, 1000, '07-12-2023', 7, 'MESA 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa1`
--

CREATE TABLE `mesa1` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa2`
--

CREATE TABLE `mesa2` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa3`
--

CREATE TABLE `mesa3` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa4`
--

CREATE TABLE `mesa4` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa5`
--

CREATE TABLE `mesa5` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa6`
--

CREATE TABLE `mesa6` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 6'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `mesa6`
--

INSERT INTO `mesa6` (`idmesa`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
(9, 38, 100, '06-12-2023', 7, 'MESA 6'),
(10, 42, 500, '06-12-2023', 7, 'MESA 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa7`
--

CREATE TABLE `mesa7` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 7'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa8`
--

CREATE TABLE `mesa8` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 8'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa9`
--

CREATE TABLE `mesa9` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 9'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa10`
--

CREATE TABLE `mesa10` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombreproducto` text NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `precio` double NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombreproducto`, `idcategoria`, `precio`, `idusuario`) VALUES
(38, 'capuchino', 23, 100, 6),
(39, 'GASEOSA', 24, 200, 6),
(40, 'Filete', 15, 100, 6),
(41, 'GALLETAS DE ARROZ', 25, 300, 6),
(42, 'Agua Mineral', 24, 500, 6),
(43, 'Ensalada rusa', 9, 400, 7),
(44, 'Ron con pasas', 26, 600, 7),
(45, 'Servicio de Cubiertos', 19, 1000, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idproveedor` int(11) NOT NULL,
  `nombreproveedor` varchar(150) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idreserva` int(11) NOT NULL,
  `nombrecliente` varchar(150) NOT NULL,
  `cantidadpersonas` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `diallegada` date NOT NULL,
  `horallegada` text NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idreserva`, `nombrecliente`, `cantidadpersonas`, `telefono`, `diallegada`, `horallegada`, `observaciones`) VALUES
(39, 'Ignacio', '6', '11111111', '2023-12-08', '20:00', 'aaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombreusuario` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fechacreado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombreusuario`, `password`, `fechacreado`) VALUES
(6, 'Viglenis', '1986', '2023-08-24 21:41:15'),
(7, 'ADMINISTRADOR', 'admin', '2023-09-29 00:57:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idusuario` int(11) NOT NULL,
  `idmesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`iddetalle`),
  ADD KEY `FK__productos` (`idproducto`),
  ADD KEY `FK_detalles_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa1`
--
ALTER TABLE `mesa1`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa1_productos` (`idproducto`),
  ADD KEY `FK_mesa1_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa2`
--
ALTER TABLE `mesa2`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa2_productos` (`idproducto`),
  ADD KEY `FK_mesa2_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa3`
--
ALTER TABLE `mesa3`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `FK_mesa3_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa4`
--
ALTER TABLE `mesa4`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa4_productos` (`idproducto`);

--
-- Indices de la tabla `mesa5`
--
ALTER TABLE `mesa5`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `FK_mesa5_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa6`
--
ALTER TABLE `mesa6`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa6_productos` (`idproducto`),
  ADD KEY `FK_mesa6_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa7`
--
ALTER TABLE `mesa7`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa7_productos` (`idproducto`),
  ADD KEY `FK_mesa7_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa8`
--
ALTER TABLE `mesa8`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa8_productos` (`idproducto`),
  ADD KEY `FK_mesa8_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa9`
--
ALTER TABLE `mesa9`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa9_productos` (`idproducto`),
  ADD KEY `FK_mesa9_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa10`
--
ALTER TABLE `mesa10`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mase10_productos` (`idproducto`),
  ADD KEY `FK_mesa10_usuarios` (`idusuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `FK_productos_categorias` (`idcategoria`),
  ADD KEY `FK_productos_usuarios` (`idusuario`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idproveedor`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idreserva`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `FK_ventas_productos` (`idproducto`),
  ADD KEY `FK_ventas_usuarios` (`idusuario`),
  ADD KEY `FK_ventas_mesa` (`idmesa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `iddetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `mesa1`
--
ALTER TABLE `mesa1`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mesa2`
--
ALTER TABLE `mesa2`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mesa3`
--
ALTER TABLE `mesa3`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `mesa4`
--
ALTER TABLE `mesa4`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa5`
--
ALTER TABLE `mesa5`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa6`
--
ALTER TABLE `mesa6`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mesa7`
--
ALTER TABLE `mesa7`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa8`
--
ALTER TABLE `mesa8`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa9`
--
ALTER TABLE `mesa9`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa10`
--
ALTER TABLE `mesa10`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `FK__productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_detalles_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa1`
--
ALTER TABLE `mesa1`
  ADD CONSTRAINT `FK_mesa1_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa1_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa2`
--
ALTER TABLE `mesa2`
  ADD CONSTRAINT `FK_mesa2_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa2_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa3`
--
ALTER TABLE `mesa3`
  ADD CONSTRAINT `FK_mesa3_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa3_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa4`
--
ALTER TABLE `mesa4`
  ADD CONSTRAINT `FK_mesa4_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa5`
--
ALTER TABLE `mesa5`
  ADD CONSTRAINT `FK_mesa5_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa5_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa6`
--
ALTER TABLE `mesa6`
  ADD CONSTRAINT `FK_mesa6_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa6_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa7`
--
ALTER TABLE `mesa7`
  ADD CONSTRAINT `FK_mesa7_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa7_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`);

--
-- Filtros para la tabla `mesa8`
--
ALTER TABLE `mesa8`
  ADD CONSTRAINT `FK_mesa8_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa8_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa9`
--
ALTER TABLE `mesa9`
  ADD CONSTRAINT `FK_mesa9_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa9_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa10`
--
ALTER TABLE `mesa10`
  ADD CONSTRAINT `FK_mase10_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa10_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_productos_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_productos_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `FK_proveedores_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_proveedores_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `FK_ventas_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ventas_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `KF_ventas_mesa` FOREIGN KEY (`idmesa`) REFERENCES `mesa1` (`idmesa`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
