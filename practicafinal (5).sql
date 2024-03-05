-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2024 a las 12:24:58
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicafinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquilable`
--

CREATE TABLE `alquilable` (
  `IDalquilable` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alquilable`
--

INSERT INTO `alquilable` (`IDalquilable`) VALUES
('111000000'),
('222000000'),
('333000000'),
('444000000'),
('555000000'),
('666000000'),
('777000000'),
('888000000'),
('999000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `pais` varchar(20) DEFAULT NULL,
  `tipusHuesped` varchar(20) DEFAULT NULL,
  `IDcliente` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`pais`, `tipusHuesped`, `IDcliente`) VALUES
('España', 'Adulto', '11111111A'),
('Francia', 'Adulto', '11111111B'),
('Canada', 'Bebe', '11111111C'),
('Estados Unidos', 'Bebe', '11111111D'),
('Colombia', 'Adolescente', '11111111E'),
('Argentina', 'Adulto', '11111111F'),
('Marruecos', 'Adulto', '11111111G'),
('Suiza', 'Bebe', '11111111H'),
('España', 'Bebe', '11111111I'),
('China', 'Adulto', '12345678A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `telefono` char(9) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `IDdirector` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`telefono`, `email`, `IDdirector`) VALUES
('600000001', 'dir1@hotel.com', '12345678A'),
('600000002', 'dir2@hotel.com', '12345678B'),
('600000003', 'dir3@hotel.com', '12345678C'),
('600000004', 'dir4@hotel.com', '12345678D'),
('600000005', 'dir5@hotel.com', '12345678E'),
('600000006', 'dir6@hotel.com', '12345678F'),
('600000007', 'dir7@hotel.com', '12345678G'),
('600000008', 'dir8@hotel.com', '12345678H'),
('600000009', 'dir9@hotel.com', '12345678I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadia`
--

CREATE TABLE `estadia` (
  `IDestadia` char(9) NOT NULL,
  `IDhabitacion` char(9) DEFAULT NULL,
  `IDregimen` char(9) DEFAULT NULL,
  `IDcliente` char(9) DEFAULT NULL,
  `numTarjeta` char(9) DEFAULT NULL,
  `tipoTarjeta` varchar(20) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadia`
--

INSERT INTO `estadia` (`IDestadia`, `IDhabitacion`, `IDregimen`, `IDcliente`, `numTarjeta`, `tipoTarjeta`, `fechaInicio`, `fechaFin`) VALUES
('202200000', '000000011', '000000001', '11111111A', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200001', '000000001', '000000001', '11111111A', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200002', '000000002', '000000002', '11111111B', '101010102', 'Visa', '2020-03-25', '2020-04-25'),
('202200003', '000000003', '000000003', '11111111C', '101010103', 'Visa', '2020-04-25', '2020-05-25'),
('202200004', '000000004', '000000004', '11111111D', '101010104', 'MasterCard', '2020-05-25', '2020-06-25'),
('202200005', '000000005', '000000005', '11111111E', '101010105', 'MasterCard', '2020-06-25', '2020-07-25'),
('202200006', '000000006', '000000006', '11111111F', '101010106', 'MasterCard', '2020-07-25', '2020-08-25'),
('202200007', '000000007', '000000007', '11111111G', '101010107', 'Visa', '2020-08-25', '2020-09-25'),
('202200009', '000000009', '000000009', '11111111I', '101010109', 'Visa', '2020-10-25', '2020-11-25'),
('202200010', '000000001', '000000001', '11111111A', '101010101', 'Visa', '2020-01-01', '2020-04-01'),
('202200011', '000000002', '000000002', '11111111B', '101010101', 'Visa', '2020-01-01', '2020-04-01'),
('202200012', '000000003', '000000003', '11111111C', '101010101', 'Visa', '2020-01-01', '2020-04-01'),
('202200015', '000000010', '000000001', '11111111F', '101010101', 'Visa', '2022-05-06', '2022-05-12'),
('202200016', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-02-01', '2020-02-25'),
('202200017', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-01-01', '2020-01-25'),
('202200018', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-07-01', '2020-07-25'),
('202200019', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-08-01', '2020-08-25'),
('202200020', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-09-01', '2020-09-25'),
('202200021', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-12-01', '2020-12-25'),
('202200022', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-11-01', '2020-11-25'),
('202200023', '000000010', '000000001', '11111111A', '101010101', 'Visa', '2020-10-01', '2020-10-25'),
('202200024', '000000010', '000000001', '11111111B', '101010101', 'Visa', '2020-07-01', '2020-07-25'),
('202200025', '000000010', '000000001', '11111111B', '101010101', 'Visa', '2020-08-01', '2020-08-25'),
('202200026', '000000010', '000000001', '11111111B', '101010101', 'Visa', '2020-09-01', '2020-09-25'),
('202200027', '000000010', '000000001', '11111111B', '101010101', 'Visa', '2020-12-01', '2020-12-25'),
('202200028', '000000010', '000000001', '11111111B', '101010101', 'Visa', '2020-11-01', '2020-11-25'),
('202200029', '000000010', '000000001', '11111111B', '101010101', 'Visa', '2020-10-01', '2020-10-25'),
('202200111', '000000001', '000000001', '11111111G', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200222', '000000001', '000000001', '11111111I', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200333', '000000001', '000000001', '11111111B', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200444', '000000001', '000000001', '11111111C', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200555', '000000001', '000000001', '11111111D', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200666', '000000001', '000000001', '11111111E', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202200777', '000000001', '000000001', '11111111F', '101010101', 'Visa', '2020-02-25', '2020-03-25'),
('202201111', '110000000', '000000001', '11111111B', '101010111', 'Visa', '2020-05-25', '2020-04-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `numero` char(3) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `IDhabitacion` char(9) NOT NULL,
  `IDhotel` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`numero`, `tipo`, `IDhabitacion`, `IDhotel`) VALUES
('001', 'Individual', '000000001', '100000000'),
('002', 'Doble', '000000002', '200000000'),
('003', 'Doble', '000000003', '300000000'),
('333', 'Doble', '000000004', '400000000'),
('005', 'Individual', '000000005', '500000000'),
('006', 'Individual', '000000006', '600000000'),
('007', 'Doble', '000000007', '700000000'),
('008', 'Individual', '000000008', '800000000'),
('009', 'Individual', '000000009', '900000000'),
('333', 'Doble', '000000010', '100000000'),
('100', 'Individual', '000000011', '100000000'),
('200', 'Doble', '000000022', '100000000'),
('300', 'Doble', '000000033', '100000000'),
('400', 'Doble', '000000044', '100000000'),
('500', 'Individual', '000000055', '100000000'),
('600', 'Individual', '000000066', '100000000'),
('700', 'Doble', '000000077', '100000000'),
('800', 'Individual', '000000088', '100000000'),
('900', 'Individual', '000000099', '100000000'),
('001', 'Doble', '110000000', '110000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `IDhistorial` char(9) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `IDhotel` char(9) DEFAULT NULL,
  `IDdirector` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`IDhistorial`, `fechaInicio`, `fechaFin`, `IDhotel`, `IDdirector`) VALUES
('100000001', '2001-01-01', '2001-12-31', '100000000', '12345678A'),
('100000002', '2002-01-01', '2002-12-31', '200000000', '12345678B'),
('100000003', '2003-01-01', '2003-12-31', '300000000', '12345678C'),
('100000004', '2004-01-01', '2004-12-31', '400000000', '12345678D'),
('100000005', '2005-01-01', '2005-12-31', '500000000', '12345678E'),
('100000006', '2006-01-01', '2006-12-31', '600000000', '12345678F'),
('100000007', '2007-01-01', '2007-12-31', '700000000', '12345678G'),
('100000008', '2008-01-01', '2008-12-31', '800000000', '12345678H'),
('100000009', '2009-01-01', '2009-12-31', '900000000', '12345678I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `nombre` varchar(30) NOT NULL,
  `IDhotel` char(9) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `año` year(4) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`nombre`, `IDhotel`, `categoria`, `año`, `direccion`, `telefono`) VALUES
('Canyes Blanques', '100000000', 3, 2001, 'Madrid 1', '900000001'),
('Sempre', '110000000', 5, 2010, 'Madrid 10', '900000010'),
('Glamur', '200000000', 4, 2002, 'Madrid 2', '900000002'),
('Passarela', '300000000', 3, 2003, 'Madrid 3', '900000003'),
('Realeza', '400000000', 4, 2004, 'Madrid 4', '900000004'),
('Queen', '500000000', 5, 2005, 'Madrid 5', '900000005'),
('King', '600000000', 2, 2006, 'Madrid 6', '900000006'),
('H2O', '700000000', 5, 2007, 'Madrid 7', '900000007'),
('La Cabaña', '800000000', 5, 2008, 'Madrid 8', '900000008'),
('Trufa', '900000000', 3, 2009, 'Madrid 9', '900000009');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacion`
--

CREATE TABLE `instalacion` (
  `IDinstalacion` char(9) NOT NULL,
  `IDhotel` char(9) DEFAULT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instalacion`
--

INSERT INTO `instalacion` (`IDinstalacion`, `IDhotel`, `nombre`) VALUES
('101000000', '100000000', 'Pescina interior'),
('111000000', '100000000', 'Pescina interior'),
('111100000', '100000000', 'Jaccuzi'),
('111200000', '100000000', 'Jaccuzi'),
('111300000', '100000000', 'Jaccuzi'),
('222000000', '200000000', 'Jaccuzi'),
('333000000', '300000000', 'Pescina exterior'),
('444000000', '400000000', 'Pista de tennis'),
('555000000', '500000000', 'Pista de minigolf'),
('666000000', '600000000', 'Badminton'),
('777000000', '700000000', 'Basquet'),
('888000000', '800000000', 'VoleyBall'),
('999000000', '900000000', 'Golf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID` char(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `telefono` char(9) DEFAULT NULL,
  `tipoID` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID`, `nombre`, `telefono`, `tipoID`) VALUES
('11111111A', 'Toni 1', '600000011', 'DNI'),
('11111111B', 'Toni 2', '600000012', 'DNI'),
('11111111C', 'Toni 3', '600000013', 'DNI'),
('11111111D', 'Toni 4', '600000014', 'DNI'),
('11111111E', 'Toni 5', '600000015', 'DNI'),
('11111111F', 'Toni 6', '600000016', 'DNI'),
('11111111G', 'Toni 7', '600000017', 'DNI'),
('11111111H', 'Toni 8', '600000018', 'DNI'),
('11111111I', 'Toni 9', '600000019', 'DNI'),
('12345678A', 'Jaime 1', '600000001', 'DNI'),
('12345678B', 'Jaime 2', '600000002', 'DNI'),
('12345678C', 'Jaime 3', '600000003', 'DNI'),
('12345678D', 'Jaime 4', '600000004', 'DNI'),
('12345678E', 'Jaime 5', '600000005', 'DNI'),
('12345678F', 'Jaime 6', '600000006', 'DNI'),
('12345678G', 'Jaime 7', '600000007', 'DNI'),
('12345678H', 'Jaime 8', '600000008', 'DNI'),
('12345678I', 'Jaime 9', '600000009', 'DNI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio`
--

CREATE TABLE `precio` (
  `IDprecio` char(9) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `IDregimen` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precio`
--

INSERT INTO `precio` (`IDprecio`, `cantidad`, `fechaInicio`, `fechaFin`, `IDregimen`) VALUES
('100000001', 120, '2020-01-01', '2020-04-01', '000000001'),
('101010101', 50, '2020-01-01', '2020-04-01', '000000001'),
('111111111', 50, '2022-05-01', '2022-09-30', '000000001'),
('200000001', 150, '2021-10-01', '2021-12-30', '000000002'),
('202020202', 70, '2021-10-01', '2021-12-30', '000000002'),
('222222222', 70, '2021-10-01', '2021-12-30', '000000002'),
('333333333', 50, '2021-10-01', '2021-12-30', '000000003'),
('444444444', 30, '2022-01-01', '2022-04-30', '000000004'),
('555555555', 100, '2022-01-01', '2022-04-30', '000000005'),
('666666666', 400, '2022-01-01', '2022-04-30', '000000006'),
('777777777', 80, '2022-05-01', '2022-09-30', '000000007'),
('888888888', 120, '2022-05-01', '2022-09-30', '000000008'),
('999999999', 600, '2022-05-01', '2022-09-30', '000000009');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen`
--

CREATE TABLE `regimen` (
  `IDregimen` char(9) NOT NULL,
  `tipo` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regimen`
--

INSERT INTO `regimen` (`IDregimen`, `tipo`) VALUES
('000000001', 'SH'),
('000000002', 'HD'),
('000000003', 'MP'),
('000000004', 'PC'),
('000000005', 'PC'),
('000000006', 'PC'),
('000000007', 'SH'),
('000000008', 'SH'),
('000000009', 'HD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_estadia_alquilable`
--

CREATE TABLE `r_estadia_alquilable` (
  `IDestadia` char(9) DEFAULT NULL,
  `IDalquilable` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `r_estadia_alquilable`
--

INSERT INTO `r_estadia_alquilable` (`IDestadia`, `IDalquilable`) VALUES
('202200000', '111000000'),
('202200001', '222000000'),
('202200002', '333000000'),
('202200003', '444000000'),
('202200004', '555000000'),
('202200005', '666000000'),
('202200006', '777000000'),
('202200007', '888000000'),
('202200009', '999000000'),
('202200007', '11100000'),
('202200007', '11100000'),
('202200007', '11100000'),
('202200007', '11100000'),
('202200007', '11100000'),
('202200007', '11100000'),
('202200008', '11100000'),
('202200009', '11100000'),
('202200010', '11100000'),
('202200011', '11100000'),
('202200015', '22200000'),
('202200000', '222000000'),
('202200000', '333000000'),
('202200000', '333000000'),
('202200000', '444000000'),
('202200000', '444000000'),
('202200000', '444000000'),
('202200000', '444000000'),
('202200000', '444000000'),
('202200000', '444000000'),
('202200015', '333000000'),
('202200015', '444000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_estadia_cliente`
--

CREATE TABLE `r_estadia_cliente` (
  `IDestadia` char(9) NOT NULL,
  `IDcliente` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `r_estadia_cliente`
--

INSERT INTO `r_estadia_cliente` (`IDestadia`, `IDcliente`) VALUES
('202200001', '11111111A'),
('202200001', '11111111B'),
('202200001', '11111111C'),
('202200001', '11111111D'),
('202200001', '11111111E'),
('202200001', '11111111F'),
('202200001', '11111111G'),
('202200001', '11111111H'),
('202200001', '11111111I'),
('202200001', '11111111L'),
('202200002', '11111111B'),
('202200003', '11111111C'),
('202200004', '11111111D'),
('202200005', '11111111E'),
('202200006', '11111111F'),
('202200007', '11111111G'),
('202200008', '11111111H'),
('202200009', '11111111I'),
('202200011', '11111111A'),
('202200012', '11111111B'),
('202200022', '11111111A'),
('202200023', '11111111B'),
('202200033', '11111111A'),
('202200034', '11111111B'),
('202200044', '11111111A'),
('202200045', '11111111B'),
('202200055', '11111111A'),
('202200056', '11111111B'),
('202200066', '11111111A'),
('202200067', '11111111B'),
('202200077', '11111111A'),
('202200078', '11111111B'),
('202200088', '11111111A'),
('202200089', '11111111B'),
('202200099', '11111111A'),
('202200110', '11111111B'),
('202200111', '11111111A'),
('202200121', '11111111B'),
('202200221', '11111111A'),
('202200231', '11111111B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_precio_alquilable`
--

CREATE TABLE `r_precio_alquilable` (
  `IDprecio` char(9) NOT NULL,
  `IDalquilable` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `r_precio_alquilable`
--

INSERT INTO `r_precio_alquilable` (`IDprecio`, `IDalquilable`) VALUES
('111111111', '111000000'),
('111111111', '111100000'),
('222222222', '222000000'),
('222222222', '222200000'),
('333333333', '333000000'),
('333333333', '333300000'),
('444444444', '444000000'),
('444444444', '444400000'),
('555555555', '555000000'),
('555555555', '555500000'),
('666666666', '666000000'),
('666666666', '666600000'),
('777777777', '666000000'),
('777777777', '777000000'),
('777777777', '777700000'),
('888888888', '666000000'),
('888888888', '888000000'),
('888888888', '888800000'),
('999999999', '666000000'),
('999999999', '999000000'),
('999999999', '999900000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_precio_habitacion`
--

CREATE TABLE `r_precio_habitacion` (
  `IDprecio` char(9) NOT NULL,
  `IDhabitacion` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `r_precio_habitacion`
--

INSERT INTO `r_precio_habitacion` (`IDprecio`, `IDhabitacion`) VALUES
('111111111', '000000010'),
('111111111', '10000000'),
('111111111', '100000000'),
('111111111', '110000000'),
('222222222', '000000002'),
('222222222', '000000011'),
('222222222', '10000000'),
('333333333', '000000003'),
('333333333', '000000022'),
('444444444', '000000001'),
('444444444', '000000055'),
('555555555', '000000005'),
('555555555', '000000044'),
('666666666', '000000006'),
('666666666', '000000055'),
('777777777', '000000007'),
('777777777', '000000066'),
('888888888', '000000008'),
('888888888', '000000077'),
('999999999', '000000009'),
('999999999', '000000088');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `tipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `temporada`
--

INSERT INTO `temporada` (`fechaInicio`, `fechaFin`, `tipo`) VALUES
('2020-01-01', '2020-04-01', 'Baja'),
('2021-10-01', '2021-12-30', 'Baja'),
('2022-01-01', '2022-04-30', 'Mediana'),
('2022-05-01', '2022-09-30', 'alta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquilable`
--
ALTER TABLE `alquilable`
  ADD PRIMARY KEY (`IDalquilable`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDcliente`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`IDdirector`);

--
-- Indices de la tabla `estadia`
--
ALTER TABLE `estadia`
  ADD PRIMARY KEY (`IDestadia`),
  ADD KEY `IDhabitacion` (`IDhabitacion`),
  ADD KEY `IDregimen` (`IDregimen`),
  ADD KEY `IDcliente` (`IDcliente`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`IDhabitacion`),
  ADD KEY `IDhotel` (`IDhotel`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`IDhistorial`),
  ADD KEY `IDhotel` (`IDhotel`),
  ADD KEY `IDdirector` (`IDdirector`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`IDhotel`);

--
-- Indices de la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD PRIMARY KEY (`IDinstalacion`),
  ADD KEY `IDhotel` (`IDhotel`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `precio`
--
ALTER TABLE `precio`
  ADD PRIMARY KEY (`IDprecio`),
  ADD KEY `fechaInicio` (`fechaInicio`,`fechaFin`),
  ADD KEY `IDregimen` (`IDregimen`);

--
-- Indices de la tabla `regimen`
--
ALTER TABLE `regimen`
  ADD PRIMARY KEY (`IDregimen`);

--
-- Indices de la tabla `r_estadia_cliente`
--
ALTER TABLE `r_estadia_cliente`
  ADD PRIMARY KEY (`IDestadia`,`IDcliente`);

--
-- Indices de la tabla `r_precio_alquilable`
--
ALTER TABLE `r_precio_alquilable`
  ADD PRIMARY KEY (`IDprecio`,`IDalquilable`);

--
-- Indices de la tabla `r_precio_habitacion`
--
ALTER TABLE `r_precio_habitacion`
  ADD PRIMARY KEY (`IDprecio`,`IDhabitacion`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`fechaInicio`,`fechaFin`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estadia`
--
ALTER TABLE `estadia`
  ADD CONSTRAINT `estadia_ibfk_1` FOREIGN KEY (`IDhabitacion`) REFERENCES `habitacion` (`IDhabitacion`),
  ADD CONSTRAINT `estadia_ibfk_2` FOREIGN KEY (`IDregimen`) REFERENCES `regimen` (`IDregimen`),
  ADD CONSTRAINT `estadia_ibfk_3` FOREIGN KEY (`IDcliente`) REFERENCES `cliente` (`IDcliente`);

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`IDhotel`) REFERENCES `hotel` (`IDhotel`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`IDhotel`) REFERENCES `hotel` (`IDhotel`),
  ADD CONSTRAINT `historial_ibfk_2` FOREIGN KEY (`IDdirector`) REFERENCES `director` (`IDdirector`);

--
-- Filtros para la tabla `instalacion`
--
ALTER TABLE `instalacion`
  ADD CONSTRAINT `instalacion_ibfk_1` FOREIGN KEY (`IDhotel`) REFERENCES `hotel` (`IDhotel`);

--
-- Filtros para la tabla `precio`
--
ALTER TABLE `precio`
  ADD CONSTRAINT `precio_ibfk_1` FOREIGN KEY (`fechaInicio`,`fechaFin`) REFERENCES `temporada` (`fechaInicio`, `fechaFin`),
  ADD CONSTRAINT `precio_ibfk_2` FOREIGN KEY (`IDregimen`) REFERENCES `regimen` (`IDregimen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
