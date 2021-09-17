--
-- Estructura de tabla para la tabla `asesor_comercial`
--

CREATE TABLE `asesor_comercial` (
  `asr_id` int(11) NOT NULL,
  `asr_nombres` char(20) DEFAULT NULL,
  `asr_apellidos` char(20) DEFAULT NULL,
  `asr_sucursal_bancaria` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `asesor_comercial`
  ADD PRIMARY KEY (`asr_id`);
  
--
-- Volcado de datos para la tabla `asesor_comercial`
--

INSERT INTO `asesor_comercial` (`asr_id`, `asr_nombres`, `asr_apellidos`, `asr_sucursal_bancaria`) VALUES
(101, 'Juanquini', 'Takebuchi', 'Centro Mayor'),
(102, 'Mariana', 'Blandón', 'Ensueño'),
(103, 'Farceliza', 'De la Hoz', 'Unicentro'),
(104, 'Cupertino', 'Lions', 'Gran Estación'),
(105, 'Mariano', 'Cívico', 'Américas');

-- --------------------------------------------------------