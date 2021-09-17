-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libranza`
--

CREATE TABLE `libranza` (
  `lbr_id` int(11) NOT NULL,
  `lbr_empresa` varchar(20) DEFAULT NULL,
  `lbr_tasa_interes` varchar(20) DEFAULT NULL,
  `lbr_meses_plazo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE `libranza`
  ADD PRIMARY KEY (`lbr_id`);
ALTER TABLE `libranza`
  ADD CONSTRAINT `fk_lbr_id` FOREIGN KEY (`lbr_id`) REFERENCES `campania` (`cmp_id`);

--
-- Volcado de datos para la tabla `libranza`
--

INSERT INTO `libranza` (`lbr_id`, `lbr_empresa`, `lbr_tasa_interes`, `lbr_meses_plazo`) VALUES
(6, 'La Cuncia S.A', '1.00', '60'),
(7, ' 	  Colsubsidio', '0.50', '48'),
(8, 'Los Recuerdos Ltda', '0.50', '36'),
(9, 'Conductores S.A ', '0.75', '60'),
(10, 'Pardo Rojo Ltda', '0.50', '60'),
(11, 'Manaure S.A.S', '0.75', '36'),
(12, 'Rio Frío Ltda', '0.90', '24'),
(13, 'Río Bravo S.A.S', '0.85', '48');