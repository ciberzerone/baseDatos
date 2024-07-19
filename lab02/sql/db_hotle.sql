
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Crear la base de datos y usarla
CREATE DATABASE IF NOT EXISTS `gestionhotel`;
USE `gestionhotel`;


-- Crear la tabla `hotel`
CREATE TABLE `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Crear la tabla `habitacion`
CREATE TABLE `habitacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Crear la tabla `cliente`
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- Crear la tabla `reserva`
CREATE TABLE `reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `habitacion_id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_checkin` date DEFAULT NULL,
  `fecha_checkout` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `habitacion_id` (`habitacion_id`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`habitacion_id`) REFERENCES `habitacion` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Crear la tabla `servicio`
CREATE TABLE `servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Crear la tabla `reserva_servicio`
CREATE TABLE `reserva_servicio` (
  `reserva_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL,
  PRIMARY KEY (`reserva_id`, `servicio_id`),
  KEY `servicio_id` (`servicio_id`),
  CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`reserva_id`) REFERENCES `reserva` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



-- Insertar datos en la tabla `hotel`
INSERT INTO `hotel` (`id`, `nombre`, `direccion`) VALUES
(1, 'Hotel Sol', 'Av. del Sol 123'),
(2, 'Hotel Luna', 'Calle Luna 456'),
(3, 'Hotel Estrella', 'Calle Estrella 789'),
(4, 'Hotel Mar', 'Av. del Mar 101'),
(5, 'Hotel Montaña', 'Calle Montaña 102'),
(6, 'Hotel Roca', 'Av. de la Roca 103'),
(7, 'Hotel Bosque', 'Calle del Bosque 104'),
(8, 'Hotel Rio', 'Av. del Rio 105'),
(9, 'Hotel Valle', 'Calle Valle 106'),
(10, 'Hotel Playa', 'Av. de la Playa 107'),
(11, 'Hotel Ciudad', 'Calle Ciudad 108'),
(12, 'Hotel Campo', 'Av. del Campo 109'),
(13, 'Hotel Jardin', 'Calle Jardin 110'),
(14, 'Hotel Solarium', 'Av. del Solarium 111'),
(15, 'Hotel Horizonte', 'Calle Horizonte 112'),
(16, 'Hotel Brisa', 'Av. de la Brisa 113'),
(17, 'Hotel Luna Llena', 'Calle Luna Llena 114'),
(18, 'Hotel Aurora', 'Av. de la Aurora 115'),
(19, 'Hotel Maravilla', 'Calle Maravilla 116'),
(20, 'Hotel Sereno', 'Av. Sereno 117'),
(21, 'Hotel Eterno', 'Calle Eterno 118'),
(22, 'Hotel Primavera', 'Av. Primavera 119'),
(23, 'Hotel Invierno', 'Calle Invierno 120'),
(24, 'Hotel Otoño', 'Av. Otoño 121'),
(25, 'Hotel Verano', 'Calle Verano 122'),
(26, 'Hotel Nevado', 'Av. del Nevado 123'),
(27, 'Hotel Aurora Boreal', 'Calle Aurora Boreal 124'),
(28, 'Hotel Tropical', 'Av. Tropical 125'),
(29, 'Hotel Galaxia', 'Calle Galaxia 126'),
(30, 'Hotel Universo', 'Av. Universo 127');

-- Insertar datos en la tabla `habitacion`
INSERT INTO `habitacion` (`id`, `numero`, `tipo`, `hotel_id`, `estado`) VALUES
(1, 101, 'Individual', 1, 'Disponible'),
(2, 102, 'Doble', 1, 'Disponible'),
(3, 103, 'Suite', 1, 'Disponible'),
(4, 104, 'Individual', 1, 'Disponible'),
(5, 105, 'Doble', 1, 'Disponible'),
(6, 106, 'Suite', 1, 'Disponible'),
(7, 107, 'Individual', 1, 'Disponible'),
(8, 108, 'Doble', 1, 'Disponible'),
(9, 109, 'Suite', 1, 'Disponible'),
(10, 110, 'Individual', 1, 'Disponible'),
(11, 111, 'Doble', 1, 'Disponible'),
(12, 112, 'Suite', 1, 'Disponible'),
(13, 113, 'Individual', 2, 'Disponible'),
(14, 114, 'Doble', 2, 'Disponible'),
(15, 115, 'Suite', 2, 'Disponible'),
(16, 116, 'Individual', 2, 'Disponible'),
(17, 117, 'Doble', 2, 'Disponible'),
(18, 118, 'Suite', 2, 'Disponible'),
(19, 119, 'Individual', 2, 'Disponible'),
(20, 120, 'Doble', 2, 'Disponible'),
(21, 121, 'Suite', 2, 'Disponible'),
(22, 122, 'Individual', 2, 'Disponible'),
(23, 123, 'Doble', 2, 'Disponible'),
(24, 124, 'Suite', 2, 'Disponible'),
(25, 125, 'Individual', 2, 'Disponible'),
(26, 126, 'Doble', 2, 'Disponible'),
(27, 127, 'Suite', 2, 'Disponible'),
(28, 128, 'Individual', 3, 'Disponible'),
(29, 129, 'Doble', 3, 'Disponible'),
(30, 130, 'Suite', 3, 'Disponible'),
(31, 131, 'Individual', 3, 'Disponible'),
(32, 132, 'Doble', 3, 'Disponible'),
(33, 133, 'Suite', 3, 'Disponible'),
(34, 134, 'Individual', 3, 'Disponible'),
(35, 135, 'Doble', 3, 'Disponible'),
(36, 136, 'Suite', 3, 'Disponible'),
(37, 137, 'Individual', 3, 'Disponible'),
(38, 138, 'Doble', 3, 'Disponible'),
(39, 139, 'Suite', 3, 'Disponible'),
(40, 140, 'Individual', 3, 'Disponible'),
(41, 141, 'Doble', 3, 'Disponible'),
(42, 142, 'Suite', 3, 'Disponible'),
(43, 143, 'Individual', 3, 'Disponible'),
(44, 144, 'Doble', 3, 'Disponible'),
(45, 145, 'Suite', 3, 'Disponible'),
(46, 146, 'Individual', 3, 'Disponible'),
(47, 147, 'Doble', 3, 'Disponible'),
(48, 148, 'Suite', 3, 'Disponible'),
(49, 149, 'Individual', 3, 'Disponible'),
(50, 150, 'Doble', 3, 'Disponible'),
(51, 151, 'Suite', 3, 'Disponible'),
(52, 152, 'Individual', 4, 'Disponible'),
(53, 153, 'Doble', 4, 'Disponible'),
(54, 154, 'Suite', 4, 'Disponible'),
(55, 155, 'Individual', 4, 'Disponible'),
(56, 156, 'Doble', 4, 'Disponible'),
(57, 157, 'Suite', 4, 'Disponible'),
(58, 158, 'Individual', 4, 'Disponible'),
(59, 159, 'Doble', 4, 'Disponible'),
(60, 160, 'Suite', 4, 'Disponible'),
(61, 161, 'Individual', 4, 'Disponible'),
(62, 162, 'Doble', 4, 'Disponible'),
(63, 163, 'Suite', 4, 'Disponible'),
(64, 164, 'Individual', 4, 'Disponible'),
(65, 165, 'Doble', 4, 'Disponible'),
(66, 166, 'Suite', 4, 'Disponible'),
(67, 167, 'Individual', 4, 'Disponible'),
(68, 168, 'Doble', 4, 'Disponible'),
(69, 169, 'Suite', 4, 'Disponible'),
(70, 170, 'Individual', 4, 'Disponible'),
(71, 171, 'Doble', 4, 'Disponible'),
(72, 172, 'Suite', 4, 'Disponible'),
(73, 173, 'Individual', 4, 'Disponible'),
(74, 174, 'Doble', 4, 'Disponible'),
(75, 175, 'Suite', 4, 'Disponible'),
(76, 176, 'Individual', 4, 'Disponible'),
(77, 177, 'Doble', 4, 'Disponible'),
(78, 178, 'Suite', 4, 'Disponible'),
(79, 179, 'Individual', 4, 'Disponible'),
(80, 180, 'Doble', 4, 'Disponible');

-- Insertar datos en la tabla `cliente`
INSERT INTO `cliente` (`id`, `nombre`, `email`) VALUES
(1, 'Juan Perez', 'juan.perez1@example.com'),
(2, 'Ana Gomez', 'ana.gomez1@example.com'),
(3, 'Carlos Lopez', 'carlos.lopez1@example.com'),
(4, 'Laura Sanchez', 'laura.sanchez1@example.com'),
(5, 'Luis Martinez', 'luis.martinez1@example.com'),
(6, 'Marta Diaz', 'marta.diaz1@example.com'),
(7, 'Jorge Ramirez', 'jorge.ramirez1@example.com'),
(8, 'Lucia Fernandez', 'lucia.fernandez1@example.com'),
(9, 'Mario Torres', 'mario.torres1@example.com'),
(10, 'Carmen Ruiz', 'carmen.ruiz1@example.com');

INSERT INTO `reserva` (`id`, `cliente_id`, `habitacion_id`, `fecha_inicio`, `fecha_fin`, `estado`, `fecha_checkin`, `fecha_checkout`) VALUES
(1, 1, 1, '2024-07-01', '2024-07-05', 'Activa', '2024-07-01', '2024-07-05'),
(2, 2, 2, '2024-07-06', '2024-07-10', 'Activa', '2024-07-06', '2024-07-10'),
(3, 3, 3, '2024-07-11', '2024-07-15', 'Activa', '2024-07-11', '2024-07-15'),
(4, 4, 4, '2024-07-16', '2024-07-20', 'Activa', '2024-07-16', '2024-07-20'),
(5, 5, 5, '2024-07-21', '2024-07-25', 'Activa', '2024-07-21', '2024-07-25'),
(6, 6, 6, '2024-07-26', '2024-07-30', 'Activa', '2024-07-26', '2024-07-30'),
(7, 7, 7, '2024-08-01', '2024-08-05', 'Activa', '2024-08-01', '2024-08-05'),
(8, 8, 8, '2024-08-06', '2024-08-10', 'Activa', '2024-08-06', '2024-08-10'),
(9, 9, 9, '2024-08-11', '2024-08-15', 'Activa', '2024-08-11', '2024-08-15'),
(10, 10, 10, '2024-08-16', '2024-08-20', 'Activa', '2024-08-16', '2024-08-20');


-- Insertar datos en la tabla `servicio`
INSERT INTO `servicio` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Desayuno', 'Desayuno buffet incluido'),
(2, 'Spa', 'Acceso al spa del hotel'),
(3, 'Gimnasio', 'Uso del gimnasio'),
(4, 'Piscina', 'Acceso a la piscina del hotel'),
(5, 'Servicio de habitaciones', 'Servicio de habitaciones las 24 horas'),
(6, 'Lavandería', 'Servicio de lavandería y planchado'),
(7, 'Parking', 'Parking privado'),
(8, 'Traslado al aeropuerto', 'Servicio de traslado al aeropuerto'),
(9, 'Internet', 'Acceso a internet de alta velocidad'),
(10, 'Restaurante', 'Acceso al restaurante del hotel'),
(11, 'Bar', 'Acceso al bar del hotel'),
(12, 'Sala de conferencias', 'Uso de la sala de conferencias'),
(13, 'Salón de belleza', 'Servicios de salón de belleza'),
(14, 'Centro de negocios', 'Acceso al centro de negocios'),
(15, 'Guardería', 'Servicio de guardería para niños'),
(16, 'Jacuzzi', 'Acceso al jacuzzi'),
(17, 'Sauna', 'Acceso a la sauna'),
(18, 'Masajes', 'Servicio de masajes'),
(19, 'Pista de tenis', 'Uso de la pista de tenis'),
(20, 'Golf', 'Acceso al campo de golf'),
(21, 'Bicicletas', 'Alquiler de bicicletas'),
(22, 'Excursiones', 'Organización de excursiones'),
(23, 'Recepción 24h', 'Recepción disponible las 24 horas'),
(24, 'Seguridad', 'Servicios de seguridad 24h'),
(25, 'Boutique', 'Acceso a la boutique del hotel'),
(26, 'Mini-bar', 'Mini-bar en la habitación'),
(27, 'TV Satelital', 'Acceso a canales de TV satelital'),
(28, 'Llamadas internacionales', 'Llamadas internacionales desde la habitación'),
(29, 'Servicios médicos', 'Acceso a servicios médicos'),
(30, 'Servicio de despertador', 'Servicio de despertador'),
(31, 'Servicio de conserjería', 'Servicio de conserjería'),
(32, 'Cambio de divisas', 'Servicio de cambio de divisas'),
(33, 'Fotocopiadora', 'Acceso a fotocopiadora'),
(34, 'Impresora', 'Acceso a impresora'),
(35, 'Fax', 'Acceso a fax'),
(36, 'Servicio de correos', 'Servicio de correos'),
(37, 'Sala de juegos', 'Acceso a sala de juegos'),
(38, 'Biblioteca', 'Acceso a la biblioteca'),
(39, 'Cine', 'Acceso al cine del hotel'),
(40, 'Teatro', 'Acceso al teatro del hotel'),
(41, 'Zoo', 'Visita al zoo cercano'),
(42, 'Parque temático', 'Acceso a parque temático'),
(43, 'Museo', 'Visita al museo cercano'),
(44, 'Tour guiado', 'Tour guiado por la ciudad'),
(45, 'Clases de yoga', 'Clases de yoga'),
(46, 'Clases de baile', 'Clases de baile'),
(47, 'Clases de cocina', 'Clases de cocina'),
(48, 'Degustación de vinos', 'Degustación de vinos locales'),
(49, 'Paseo en barco', 'Paseo en barco'),
(50, 'Cata de cervezas', 'Cata de cervezas artesanales'),
(51, 'Clases de idiomas', 'Clases de idiomas'),
(52, 'Excursión en montaña', 'Excursión en montaña'),
(53, 'Buceo', 'Clases de buceo'),
(54, 'Surf', 'Clases de surf'),
(55, 'Esquí', 'Clases de esquí'),
(56, 'Snowboard', 'Clases de snowboard'),
(57, 'Kayak', 'Alquiler de kayak'),
(58, 'Rafting', 'Excursión de rafting'),
(59, 'Pesca', 'Excursión de pesca'),
(60, 'Equitación', 'Clases de equitación'),
(61, 'Clases de pintura', 'Clases de pintura'),
(62, 'Clases de escultura', 'Clases de escultura'),
(63, 'Clases de fotografía', 'Clases de fotografía'),
(64, 'Visita a bodegas', 'Visita a bodegas locales'),
(65, 'Senderismo', 'Excursión de senderismo'),
(66, 'Trekking', 'Excursión de trekking'),
(67, 'Camping', 'Excursión de camping'),
(68, 'Observación de aves', 'Excursión de observación de aves'),
(69, 'Safari', 'Safari en la reserva natural'),
(70, 'Paseo en globo', 'Paseo en globo aerostático'),
(71, 'Paseo en helicóptero', 'Paseo en helicóptero'),
(72, 'Cine al aire libre', 'Cine al aire libre en el hotel'),
(73, 'Picnic', 'Organización de picnics'),
(74, 'Clases de jardinería', 'Clases de jardinería'),
(75, 'Taller de manualidades', 'Taller de manualidades'),
(76, 'Clases de música', 'Clases de música'),
(77, 'Conciertos en vivo', 'Conciertos en vivo en el hotel'),
(78, 'DJs en vivo', 'DJs en vivo en el hotel'),
(79, 'Fiestas temáticas', 'Fiestas temáticas en el hotel'),
(80, 'Torneos deportivos', 'Torneos deportivos organizados'),
(81, 'Karaoke', 'Noches de karaoke'),
(82, 'Stand-up comedy', 'Espectáculos de stand-up comedy'),
(83, 'Pintura facial', 'Pintura facial para niños'),
(84, 'Cine infantil', 'Proyecciones de cine infantil'),
(85, 'Cuenta cuentos', 'Sesiones de cuenta cuentos'),
(86, 'Magia', 'Espectáculos de magia'),
(87, 'Títeres', 'Espectáculos de títeres'),
(88, 'Circo', 'Espectáculos de circo'),
(89, 'Planetario', 'Visita al planetario cercano'),
(90, 'Observatorio', 'Visita al observatorio astronómico'),
(91, 'Parque natural', 'Visita al parque natural cercano'),
(92, 'Playa privada', 'Acceso a playa privada'),
(93, 'Servicio de niñera', 'Servicio de niñera'),
(94, 'Clases de natación', 'Clases de natación'),
(95, 'Cata de chocolates', 'Cata de chocolates artesanales'),
(96, 'Tour en bicicleta', 'Tour en bicicleta por la ciudad'),
(97, 'Cine en la habitación', 'Acceso a cine en la habitación'),
(98, 'Bar en la habitación', 'Bar privado en la habitación'),
(99, 'Comida gourmet', 'Servicio de comida gourmet en la habitación'),
(100, 'Excursión en tren', 'Excursión en tren histórico'),
(101, 'Safari fotográfico', 'Safari fotográfico'),
(102, 'Curso de supervivencia', 'Curso de supervivencia en la naturaleza'),
(103, 'Astronomía', 'Observación de estrellas'),
(104, 'Geocaching', 'Excursión de geocaching'),
(105, 'Fotografía nocturna', 'Excursión de fotografía nocturna'),
(106, 'Tour en segway', 'Tour en segway por la ciudad'),
(107, 'Patinaje sobre hielo', 'Patinaje sobre hielo'),
(108, 'Hockey sobre hielo', 'Clases de hockey sobre hielo'),
(109, 'Esquí acuático', 'Clases de esquí acuático'),
(110, 'Wakeboard', 'Clases de wakeboard'),
(111, 'Vela', 'Clases de vela'),
(112, 'Windsurf', 'Clases de windsurf'),
(113, 'Parapente', 'Excursión de parapente'),
(114, 'Paracaidismo', 'Excursión de paracaidismo'),
(115, 'Ultraligero', 'Excursión en ultraligero'),
(116, 'Museo de cera', 'Visita al museo de cera'),
(117, 'Parque de atracciones', 'Acceso a parque de atracciones'),
(118, 'Parque acuático', 'Acceso a parque acuático'),
(119, 'Patinaje sobre ruedas', 'Patinaje sobre ruedas'),
(120, 'Karting', 'Carreras de karts'),
(121, 'Paintball', 'Excursión de paintball'),
(122, 'Laser tag', 'Excursión de laser tag'),
(123, 'Escape room', 'Participación en escape room'),
(124, 'Bolos', 'Juego de bolos'),
(125, 'Billar', 'Juego de billar'),
(126, 'Dardos', 'Juego de dardos');

INSERT INTO `reserva_servicio` (`reserva_id`, `servicio_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

COMMIT;





--
-- Índexs per a la taula `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Índexs per a la taula `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Índexs per a la taula `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `habitacion_id` (`habitacion_id`);

--
-- Índexs per a la taula `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD PRIMARY KEY (`reserva_id`,`servicio_id`),
  ADD KEY `servicio_id` (`servicio_id`);

--
-- Índexs per a la taula `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT per la taula `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT per la taula `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT per la taula `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT per la taula `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`);

--
-- Restriccions per a la taula `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`habitacion_id`) REFERENCES `habitacion` (`id`);

--
-- Restriccions per a la taula `reserva_servicio`
--
ALTER TABLE `reserva_servicio`
  ADD CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`reserva_id`) REFERENCES `reserva` (`id`),
  ADD CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
