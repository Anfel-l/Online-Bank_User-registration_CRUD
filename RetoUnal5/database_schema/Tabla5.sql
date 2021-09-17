-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumo`
--

CREATE TABLE `consumo` (
  `csm_id` int(11) NOT NULL,
  `csm_asesor` int(11) DEFAULT NULL,
  `csm_tasa_interes` varchar(20) DEFAULT NULL,
  `csm_cuotas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE `consumo`
  ADD PRIMARY KEY (`csm_id`),
  ADD KEY `fk_csm_asesor` (`csm_asesor`);
  
ALTER TABLE `consumo`
  ADD CONSTRAINT `fk_csm_asesor` FOREIGN KEY (`csm_asesor`) REFERENCES `asesor_comercial` (`asr_id`),
  ADD CONSTRAINT `fk_csm_id` FOREIGN KEY (`csm_id`) REFERENCES `campania` (`cmp_id`);
--
-- Volcado de datos para la tabla `consumo`
--

INSERT INTO `consumo` (`csm_id`, `csm_asesor`, `csm_tasa_interes`, `csm_cuotas`) VALUES
(1, 102, '0.72', '60'),
(2, 103, '1.0', '72'),
(3, 101, '2.50', '48'),
(4, 104, '0.90', '60'),
(5, 105, '0.70', '60');

-- --------------------------------------------------------