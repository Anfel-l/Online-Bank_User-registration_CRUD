-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campania_aplicada`
--

CREATE TABLE `campania_aplicada` (
  `cpa_app_id` int(11) NOT NULL,
  `cpa_usuario` varchar(20) DEFAULT NULL,
  `cpa_campania` int(11) DEFAULT NULL,
  `cpa_app_fecha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `campania_aplicada`
  ADD PRIMARY KEY (`cpa_app_id`),
  ADD KEY `fk_cpa_usuario` (`cpa_usuario`),
  ADD KEY `fk_cpa_campania` (`cpa_campania`);

ALTER TABLE `campania_aplicada`
  ADD CONSTRAINT `fk_cpa_campania` FOREIGN KEY (`cpa_campania`) REFERENCES `campania` (`cmp_id`),
  ADD CONSTRAINT `fk_cpa_usuario` FOREIGN KEY (`cpa_usuario`) REFERENCES `usuario` (`usr_alias`);
--
-- Volcado de datos para la tabla `campania_aplicada`
--

INSERT INTO `campania_aplicada` (`cpa_app_id`, `cpa_usuario`, `cpa_campania`, `cpa_app_fecha`) VALUES
(1, 'lucky', 1, '2017-10-25 20:00:00'),
(2, 'malopez', 1, '2018-05-20 20:30:00'),
(3, 'diva', 2, '2019-05-20 20:30:00'),
(4, 'green', 2, '2020-01-10 17:30:20'),
(5, 'diva', 3, '2018-06-22 21:30:00'),
(6, 'lucky', 4, '2019-03-15 18:30:00'),
(7, 'green', 4, '2020-02-15 20:30:20'),
(8, 'green', 5, '2020-03-17 18:30:20'),
(9, 'diva', 11, '2020-03-17 15:30:20'),
(10, 'dreamer', 7, '2020-03-17 15:30:20'),
(11, 'dreamer', 8, '2020-04-10 18:30:20'),
(12, 'ninja', 9, '2020-02-17 20:30:20'),
(13, 'lucky', 9, '2019-05-20 20:30:00'),
(14, 'malopez', 9, '2019-05-20 20:30:00'),
(15, 'ninja', 10, '2020-02-20 16:30:20'),
(16, 'rose', 10, '2020-03-20 21:30:20'),
(17, 'ninja', 11, '2020-03-27 18:30:20');

-- --------------------------------------------------------