-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campania`
--

CREATE TABLE `campania` (
  `cmp_id` int(11) NOT NULL,
  `cmp_descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE `campania`
  ADD PRIMARY KEY (`cmp_id`);
--
-- Volcado de datos para la tabla `campania`
--

INSERT INTO `campania` (`cmp_id`, `cmp_descripcion`) VALUES
(1, 'Toma tú crédito de consumo al 0.72% mensual y compra lo que quieras'),
(2, 'Crédito de libre destino al 12% efectivo anual'),
(3, 'Realizando tus sueños con crédito de consumo al 2.5% mensual'),
(4, 'Tú crédito de consumo amigo con tasa de 0.9 mensual'),
(5, '1, 2 y 3, tú crédito de consumo otra vez con el 0.7 efectivo anual'),
(6, 'Crédito de libranza para invertir en lo que quieras al 12% efectivo anual '),
(7, 'Libranza para descuento directo de tu nómina Colsubsidio'),
(8, 'Toma tú libranza al 0.5% mensual para descuento directo por nómina'),
(9, 'Crédito de libranza para conductores SITP al 9% efectivo anual'),
(10, 'Trabaja y cumple tus sueños con una libranza por descuento de nómina'),
(11, 'Crédito de libranza para empleados de nómina'),
(12, 'Para lo que quieras, tú crédito de libranza ya'),
(13, '1,2 y 3, tú libranza está cerca otra vez');

-- --------------------------------------------------------