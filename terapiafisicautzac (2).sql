-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2018 a las 19:12:18
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `terapiafisicautzac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id_archivo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ruta` varchar(250) NOT NULL,
  `descripcion` varchar(350) DEFAULT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a_p_n_p`
--

CREATE TABLE `a_p_n_p` (
  `id_apnp` int(11) NOT NULL,
  `lugar_origen` varchar(35) NOT NULL,
  `domicilio` varchar(35) NOT NULL,
  `escolaridad` varchar(50) NOT NULL,
  `svs_municipales` varchar(50) NOT NULL,
  `habitacion` varchar(10) DEFAULT NULL,
  `tabaquismo_te` varchar(1) NOT NULL,
  `etilismo_te` varchar(1) NOT NULL,
  `higiene_personal` varchar(100) NOT NULL,
  `alimentacion` varchar(100) NOT NULL,
  `dominio` varchar(1) NOT NULL,
  `hijos` varchar(1) NOT NULL,
  `pasatiempos` varchar(150) NOT NULL,
  `otros` varchar(350) DEFAULT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `a_p_p_h`
--

CREATE TABLE `a_p_p_h` (
  `id_apph` int(11) NOT NULL,
  `diabetes` varchar(100) NOT NULL,
  `hta` varchar(100) NOT NULL,
  `cancer` varchar(100) NOT NULL,
  `enf_reumat` varchar(100) NOT NULL,
  `cardiopatias` varchar(100) NOT NULL,
  `cirugias` varchar(100) NOT NULL,
  `alergias` varchar(100) NOT NULL,
  `transfusiones` varchar(100) NOT NULL,
  `accidentes` varchar(100) NOT NULL,
  `encames` varchar(100) NOT NULL,
  `fracturas` varchar(100) NOT NULL,
  `t_a` varchar(100) NOT NULL,
  `temp` varchar(15) NOT NULL,
  `f_c` varchar(15) NOT NULL,
  `f_r` varchar(15) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cicatriz_quirurjica`
--

CREATE TABLE `cicatriz_quirurjica` (
  `id_cq` int(11) NOT NULL,
  `sitio` varchar(250) NOT NULL,
  `queloide` varchar(300) NOT NULL,
  `retractil` varchar(350) NOT NULL,
  `abierta` varchar(300) NOT NULL,
  `con_adherencias` varchar(300) NOT NULL,
  `hipertrofica` varchar(300) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `code`
--

CREATE TABLE `code` (
  `id_code` int(11) NOT NULL,
  `code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dmr`
--

CREATE TABLE `dmr` (
  `id_dmr` int(11) NOT NULL,
  `reflejos` varchar(200) NOT NULL,
  `sensibilidad` varchar(200) NOT NULL,
  `lenguaje_orientacion` varchar(200) NOT NULL,
  `otros` varchar(300) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id_doctor` int(11) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dolor`
--

CREATE TABLE `dolor` (
  `id_dolor` int(11) NOT NULL,
  `rp_id` varchar(100) NOT NULL,
  `dolor_eva` varchar(2) NOT NULL,
  `dolor_wb` varchar(2) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espasmos_cm`
--

CREATE TABLE `espasmos_cm` (
  `id_ecm` int(11) NOT NULL,
  `sitio` varchar(350) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_goniometrica`
--

CREATE TABLE `evaluacion_goniometrica` (
  `id_eg` int(11) NOT NULL,
  `m_sup_izq_e1` varchar(100) NOT NULL,
  `m_sup_der_e1` varchar(100) NOT NULL,
  `m_sup_izq_e2` varchar(100) NOT NULL,
  `m_sup_der_e2` varchar(100) NOT NULL,
  `m_inf_izq_e1` varchar(100) NOT NULL,
  `m_inf_der_e1` varchar(100) NOT NULL,
  `m_inf_izq_e2` varchar(100) NOT NULL,
  `m_inf_der_e2` varchar(100) NOT NULL,
  `tronco_izq_e1` varchar(100) NOT NULL,
  `tronco_der_e1` varchar(100) NOT NULL,
  `tronco_izq_e2` varchar(100) NOT NULL,
  `tronco_der_e2` varchar(100) NOT NULL,
  `cuello_izq_e1` varchar(100) NOT NULL,
  `cuello_der_e1` varchar(100) NOT NULL,
  `cuello_izq_e2` varchar(100) NOT NULL,
  `cuello_der_e2` varchar(100) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion_muscular`
--

CREATE TABLE `evaluacion_muscular` (
  `id_em` int(11) NOT NULL,
  `m_sup_izq_e1` varchar(100) NOT NULL,
  `m_sup_der_e1` varchar(100) NOT NULL,
  `m_sup_izq_e2` varchar(100) NOT NULL,
  `m_sup_der_e2` varchar(100) NOT NULL,
  `m_inf_izq_e1` varchar(100) NOT NULL,
  `m_inf_der_e1` varchar(100) NOT NULL,
  `m_inf_izq_e2` varchar(100) NOT NULL,
  `m_inf_der_e2` varchar(100) NOT NULL,
  `tronco_izq_e1` varchar(100) NOT NULL,
  `tronco_der_e1` varchar(100) NOT NULL,
  `tronco_izq_e2` varchar(100) NOT NULL,
  `tronco_der_e2` varchar(100) NOT NULL,
  `cuello_izq_e1` varchar(100) NOT NULL,
  `cuello_der_e1` varchar(100) NOT NULL,
  `cuello_izq_e2` varchar(100) NOT NULL,
  `cuello_der_e2` varchar(100) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exploracion_neurologica`
--

CREATE TABLE `exploracion_neurologica` (
  `id_en` int(11) NOT NULL,
  `valoracion_tono` varchar(1) DEFAULT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exploracion_neurologica2`
--

CREATE TABLE `exploracion_neurologica2` (
  `id_en2` int(11) NOT NULL,
  `calificacion_hipotonia` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL,
  `grupo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoja_consentimiento`
--

CREATE TABLE `hoja_consentimiento` (
  `id_hoja_c` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_terapeuta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manifestaciones_motoras`
--

CREATE TABLE `manifestaciones_motoras` (
  `id_mm` int(11) NOT NULL,
  `3_ptosis` varchar(1) NOT NULL,
  `3_ojo_desv_afuera_abajo` varchar(1) NOT NULL,
  `3_ojonosemueve` varchar(1) NOT NULL,
  `4_ojomueveabajo` varchar(1) NOT NULL,
  `5_trans_masticacion` varchar(1) NOT NULL,
  `5_desv_bocahacialadonerviolesionado` varchar(1) NOT NULL,
  `6_estravismoconvergente` varchar(1) NOT NULL,
  `6_ojonosemuevehaciaafuera` varchar(1) NOT NULL,
  `7_trans_masticacion` varchar(1) NOT NULL,
  `7_desvbocahacianerviosano` varchar(1) NOT NULL,
  `7_signobell` varchar(1) NOT NULL,
  `7_espasmohemifacial` varchar(1) NOT NULL,
  `9_disfagia` varchar(1) NOT NULL,
  `10_desviacionvulvahacianerviosano` varchar(1) NOT NULL,
  `10_disfagia` varchar(1) NOT NULL,
  `10_disartia` varchar(1) NOT NULL,
  `10_laringeos` varchar(1) NOT NULL,
  `11_incagirarcabezayelevarhombro` varchar(1) NOT NULL,
  `11_trapecio` varchar(1) NOT NULL,
  `12_muscudelengua` varchar(1) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manifestaciones_sensitivas`
--

CREATE TABLE `manifestaciones_sensitivas` (
  `id_ms` int(11) NOT NULL,
  `1_cuanti_anosmia_hiposmia` varchar(1) NOT NULL,
  `1_cuali_parosmia` varchar(1) NOT NULL,
  `2_perd_agudezafacial` varchar(1) NOT NULL,
  `2_alt_campimetricas` varchar(1) NOT NULL,
  `5_hipoestesiafacial` varchar(1) NOT NULL,
  `5_neuralgiatrigemino` varchar(1) NOT NULL,
  `5_aboli_reflejocorneal` varchar(1) NOT NULL,
  `7_cuanti_hipogeusa` varchar(1) NOT NULL,
  `7_cuali_disgeusia` varchar(1) NOT NULL,
  `8_cuanti_hipoacusia` varchar(1) NOT NULL,
  `8_cuali_acufenos` varchar(1) NOT NULL,
  `9_cuanti_hipogeusa` varchar(1) NOT NULL,
  `9_cuali_disgeusia` varchar(1) NOT NULL,
  `10_noaparentes` varchar(1) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcha`
--

CREATE TABLE `marcha` (
  `id_marcha` int(11) NOT NULL,
  `t_marcha` varchar(100) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_evolucion`
--

CREATE TABLE `notas_evolucion` (
  `id_ne` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nota` text NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_terapeuta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_clinica_vi`
--

CREATE TABLE `nota_clinica_vi` (
  `id_ncvi` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `subjetivo` text NOT NULL,
  `objetivo` text NOT NULL,
  `analisis` text NOT NULL,
  `plan` text NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `ocupacion` varchar(30) NOT NULL,
  `estado_civil` varchar(2) NOT NULL,
  `id_terapeuta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revision_hc`
--

CREATE TABLE `revision_hc` (
  `id_revision` int(11) NOT NULL,
  `calificacion` varchar(1) NOT NULL,
  `id_apnp` varchar(1) DEFAULT NULL,
  `id_apph` varchar(1) DEFAULT NULL,
  `id_cq` varchar(1) DEFAULT NULL,
  `id_dmr` varchar(1) DEFAULT NULL,
  `id_dolor` varchar(1) DEFAULT NULL,
  `id_espasmos_cm` varchar(1) DEFAULT NULL,
  `id_eg` varchar(1) DEFAULT NULL,
  `id_em` varchar(1) DEFAULT NULL,
  `id_en` varchar(1) DEFAULT NULL,
  `id_en2` varchar(1) DEFAULT NULL,
  `id_mm` varchar(1) DEFAULT NULL,
  `id_ms` varchar(1) DEFAULT NULL,
  `id_marcha` varchar(1) DEFAULT NULL,
  `id_ne` varchar(1) DEFAULT NULL,
  `id_nt_vi` varchar(1) DEFAULT NULL,
  `id_traslados` varchar(1) DEFAULT NULL,
  `id_pac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terapeutas`
--

CREATE TABLE `terapeutas` (
  `id_terapeuta` int(11) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo` varchar(40) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `grado` varchar(1) NOT NULL,
  `grupo` varchar(1) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslados`
--

CREATE TABLE `traslados` (
  `id_traslados` int(11) NOT NULL,
  `entrada` varchar(10) NOT NULL,
  `salida` varchar(10) NOT NULL,
  `id_paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `tipo_usuario` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `a_p_n_p`
--
ALTER TABLE `a_p_n_p`
  ADD PRIMARY KEY (`id_apnp`);

--
-- Indices de la tabla `a_p_p_h`
--
ALTER TABLE `a_p_p_h`
  ADD PRIMARY KEY (`id_apph`);

--
-- Indices de la tabla `cicatriz_quirurjica`
--
ALTER TABLE `cicatriz_quirurjica`
  ADD PRIMARY KEY (`id_cq`);

--
-- Indices de la tabla `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`);

--
-- Indices de la tabla `dmr`
--
ALTER TABLE `dmr`
  ADD PRIMARY KEY (`id_dmr`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indices de la tabla `dolor`
--
ALTER TABLE `dolor`
  ADD PRIMARY KEY (`id_dolor`);

--
-- Indices de la tabla `espasmos_cm`
--
ALTER TABLE `espasmos_cm`
  ADD PRIMARY KEY (`id_ecm`);

--
-- Indices de la tabla `evaluacion_goniometrica`
--
ALTER TABLE `evaluacion_goniometrica`
  ADD PRIMARY KEY (`id_eg`);

--
-- Indices de la tabla `evaluacion_muscular`
--
ALTER TABLE `evaluacion_muscular`
  ADD PRIMARY KEY (`id_em`);

--
-- Indices de la tabla `exploracion_neurologica`
--
ALTER TABLE `exploracion_neurologica`
  ADD PRIMARY KEY (`id_en`);

--
-- Indices de la tabla `exploracion_neurologica2`
--
ALTER TABLE `exploracion_neurologica2`
  ADD PRIMARY KEY (`id_en2`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `hoja_consentimiento`
--
ALTER TABLE `hoja_consentimiento`
  ADD PRIMARY KEY (`id_hoja_c`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_terapeuta` (`id_terapeuta`);

--
-- Indices de la tabla `manifestaciones_motoras`
--
ALTER TABLE `manifestaciones_motoras`
  ADD PRIMARY KEY (`id_mm`);

--
-- Indices de la tabla `manifestaciones_sensitivas`
--
ALTER TABLE `manifestaciones_sensitivas`
  ADD PRIMARY KEY (`id_ms`);

--
-- Indices de la tabla `marcha`
--
ALTER TABLE `marcha`
  ADD PRIMARY KEY (`id_marcha`);

--
-- Indices de la tabla `notas_evolucion`
--
ALTER TABLE `notas_evolucion`
  ADD PRIMARY KEY (`id_ne`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_terapeuta` (`id_terapeuta`);

--
-- Indices de la tabla `nota_clinica_vi`
--
ALTER TABLE `nota_clinica_vi`
  ADD PRIMARY KEY (`id_ncvi`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `revision_hc`
--
ALTER TABLE `revision_hc`
  ADD PRIMARY KEY (`id_revision`);

--
-- Indices de la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  ADD PRIMARY KEY (`id_terapeuta`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `traslados`
--
ALTER TABLE `traslados`
  ADD PRIMARY KEY (`id_traslados`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `a_p_n_p`
--
ALTER TABLE `a_p_n_p`
  MODIFY `id_apnp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `a_p_p_h`
--
ALTER TABLE `a_p_p_h`
  MODIFY `id_apph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cicatriz_quirurjica`
--
ALTER TABLE `cicatriz_quirurjica`
  MODIFY `id_cq` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dmr`
--
ALTER TABLE `dmr`
  MODIFY `id_dmr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `dolor`
--
ALTER TABLE `dolor`
  MODIFY `id_dolor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `espasmos_cm`
--
ALTER TABLE `espasmos_cm`
  MODIFY `id_ecm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluacion_goniometrica`
--
ALTER TABLE `evaluacion_goniometrica`
  MODIFY `id_eg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `evaluacion_muscular`
--
ALTER TABLE `evaluacion_muscular`
  MODIFY `id_em` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `exploracion_neurologica`
--
ALTER TABLE `exploracion_neurologica`
  MODIFY `id_en` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `exploracion_neurologica2`
--
ALTER TABLE `exploracion_neurologica2`
  MODIFY `id_en2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `hoja_consentimiento`
--
ALTER TABLE `hoja_consentimiento`
  MODIFY `id_hoja_c` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `manifestaciones_motoras`
--
ALTER TABLE `manifestaciones_motoras`
  MODIFY `id_mm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `manifestaciones_sensitivas`
--
ALTER TABLE `manifestaciones_sensitivas`
  MODIFY `id_ms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marcha`
--
ALTER TABLE `marcha`
  MODIFY `id_marcha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notas_evolucion`
--
ALTER TABLE `notas_evolucion`
  MODIFY `id_ne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `nota_clinica_vi`
--
ALTER TABLE `nota_clinica_vi`
  MODIFY `id_ncvi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `revision_hc`
--
ALTER TABLE `revision_hc`
  MODIFY `id_revision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  MODIFY `id_terapeuta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `traslados`
--
ALTER TABLE `traslados`
  MODIFY `id_traslados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `hoja_consentimiento`
--
ALTER TABLE `hoja_consentimiento`
  ADD CONSTRAINT `hoja_consentimiento_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `hoja_consentimiento_ibfk_2` FOREIGN KEY (`id_terapeuta`) REFERENCES `terapeutas` (`id_terapeuta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas_evolucion`
--
ALTER TABLE `notas_evolucion`
  ADD CONSTRAINT `notas_evolucion_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `notas_evolucion_ibfk_2` FOREIGN KEY (`id_terapeuta`) REFERENCES `terapeutas` (`id_terapeuta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  ADD CONSTRAINT `terapeutas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
