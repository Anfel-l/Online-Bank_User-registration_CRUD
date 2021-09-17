CREATE TABLE `usuario` (
  `usr_alias` varchar(20) NOT NULL,
  `usr_nombres` varchar(20) DEFAULT NULL,
  `usr_apellidos` varchar(20) DEFAULT NULL,
  `usr_email` varchar(20) DEFAULT NULL,
  `usr_celular` varchar(20) DEFAULT NULL,
  `usr_clave` varchar(20) DEFAULT NULL,
  `usr_fecha_nto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usr_alias`);
--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usr_alias`, `usr_nombres`, `usr_apellidos`, `usr_email`, `usr_celular`, `usr_clave`, `usr_fecha_nto`) VALUES
('diva', 'Ana', 'Diaz', 'adiaz@gmail.com', '3124578905', '76$3&gg', '20/09/1978'),
('dreamer', 'Luis', 'Rojas', 'lrojas@gmail.com', '3185241967', 'nsbdnbs', '11/10/1995'),
('green', 'Jorge', 'Rodriguez', 'orgeGreen@gmail.com', '3208956726', '1234%$#', '20/12/2000'),
('lucky', 'Pedro', 'Perez', 'pp@gmail.com', '3221589161', 'x1y2z3', '25/10/2000'),
('malopez', 'Maria', 'Lopez', 'malopez@gmail.com', '3501531561', '98774n', '4/03/1980'),
('neon', 'Nelson', 'Ruiz', 'nelson2@gmail.com', '3201643458', '45&$%', '25/08/1992'),
('ninja', 'Andres', 'Cruz', 'acninja@gmail.com', '3181513313', 'pass123', '30/10/1990'),
('rose', 'Claudia', 'Mendez', 'florm@gmail.com', '3108972635', 'flor121', '25/01/1990');