-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2024 a las 04:14:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_register_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion_breve` text DEFAULT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `categoria` varchar(50) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `introduccion` text DEFAULT NULL,
  `objetivos` text DEFAULT NULL,
  `modulos` text DEFAULT NULL,
  `conclusiones` text DEFAULT NULL,
  `tipo_discapacidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`, `descripcion_breve`, `descripcion`, `fecha_creacion`, `categoria`, `profesor_id`, `introduccion`, `objetivos`, `modulos`, `conclusiones`, `tipo_discapacidad`) VALUES
(1, 'Curso de PHP2', '\"Domina PHP, uno de los lenguajes más populares para el desarrollo de aplicaciones web dinámicas.\"', '\"El Curso de PHP está diseñado para introducirte en el desarrollo web del lado del servidor utilizando PHP, un lenguaje ampliamente utilizado en la creación de sitios y aplicaciones dinámicas. Comenzarás con los conceptos básicos, como la sintaxis, variables y estructuras de control. A medida que avances, aprenderás a manejar formularios, sesiones y bases de datos para construir aplicaciones web completas. También exploraremos temas como la seguridad en PHP, la integración con bases de datos MySQL y el uso de patrones de diseño para proyectos organizados. Al finalizar el curso, estarás preparado para desarrollar aplicaciones dinámicas y escalables, así como para integrarte con tecnologías frontend y backend modernas.\"', '2024-10-24 01:39:46', 'PHP', 12, 'prueba', 'prueba 1.1', 'prueba 1.2', 'prueba 1.3', 'auditiva'),
(2, 'Curso de JavaScript', '\"Aprende JavaScript desde cero y domina uno de los lenguajes más utilizados para desarrollo web.\"\r\n\r\n', '\"Este curso de JavaScript está diseñado para principiantes y desarrolladores con conocimientos básicos que desean profundizar en uno de los lenguajes de programación más versátiles y poderosos del mundo web. A lo largo de este curso, aprenderás los fundamentos de JavaScript, desde las estructuras de datos y funciones hasta la manipulación del DOM y el uso de APIs. También abordaremos temas avanzados como asincronía, promesas y el uso de ES6 y versiones posteriores. Al finalizar el curso, serás capaz de crear aplicaciones web interactivas y dinámicas, y estarás preparado para trabajar con frameworks populares como React y Node.js. ¡Únete y lleva tus habilidades de desarrollo web al siguiente nivel!\"', '2024-10-24 01:39:46', 'JS', 12, NULL, NULL, NULL, NULL, NULL),
(3, 'Curso de HTML ', '\"Aprende HTML desde cero y construye la estructura de tus propias páginas web.\"\n', '\"El Curso de HTML está diseñado para principiantes que desean iniciar en el desarrollo web, proporcionando una base sólida en la creación de páginas web estructuradas. Aprenderás a utilizar etiquetas HTML para organizar contenido, crear enlaces, tablas, listas y formularios. Exploraremos las mejores prácticas para escribir un código HTML limpio y semántico, optimizando así la accesibilidad y la experiencia de usuario. Al finalizar, tendrás las habilidades necesarias para construir la estructura de sitios web funcionales y listos para ser estilizados con CSS y complementados con JavaScript.\"', '2024-10-24 01:39:46', 'HTML ', 8, NULL, NULL, NULL, NULL, NULL),
(4, 'Curso de MySQL', '\"Domina MySQL, uno de los sistemas de gestión de bases de datos más utilizados en el mundo.\"\r\n\r\n', '\"Este curso de MySQL te enseñará a utilizar y administrar bases de datos relacionales, una habilidad esencial en el desarrollo y gestión de aplicaciones y sistemas. Aprenderás desde los fundamentos del diseño de bases de datos y la creación de tablas, hasta la manipulación de datos con SQL (Structured Query Language), incluyendo operaciones de selección, inserción, actualización y eliminación de datos. También exploraremos temas avanzados, como el uso de joins para combinar datos de múltiples tablas, la optimización de consultas y la administración de usuarios y permisos. Al finalizar el curso, serás capaz de diseñar y gestionar bases de datos eficientemente, aplicar buenas prácticas de seguridad y entender cómo MySQL se integra con lenguajes de programación como PHP y Python. Ideal para desarrolladores, administradores de sistemas y todos aquellos interesados en el manejo de datos.\"\r\n', '2024-10-24 01:39:46', 'MySQL', 12, NULL, NULL, NULL, NULL, NULL),
(5, 'Curso de Python', '\"Aprende Python desde cero y domina uno de los lenguajes de programación más versátiles y populares.\"\r\n\r\n', '\"El Curso de Python está diseñado para llevarte desde los conceptos básicos hasta temas avanzados en uno de los lenguajes de programación más demandados en la industria. Comenzaremos con la sintaxis y estructuras de datos fundamentales, como listas, diccionarios y conjuntos. A medida que avances, aprenderás a trabajar con funciones, módulos y librerías esenciales para el desarrollo de proyectos reales. También cubriremos temas de programación orientada a objetos, manejo de errores y buenas prácticas en desarrollo. Finalmente, exploraremos aplicaciones prácticas, como el análisis de datos, la automatización de tareas y el desarrollo web. Al finalizar el curso, estarás preparado para crear aplicaciones propias, automatizar procesos, analizar datos y hasta dar tus primeros pasos en áreas como el machine learning. Ideal para principiantes y desarrolladores que buscan expandir sus habilidades.\"', '2024-10-24 01:39:46', 'PYTHON', 3, NULL, NULL, NULL, NULL, NULL),
(6, 'Curso de Machine Learning', '\"Introducción al machine learning: aprende a crear modelos predictivos y a analizar datos con técnicas avanzadas.\"\r\n\r\n', '\"El Curso de Machine Learning te ofrece una inmersión completa en el mundo de la inteligencia artificial y el análisis de datos. Diseñado tanto para principiantes como para profesionales que desean actualizar sus conocimientos, este curso cubre desde los fundamentos del aprendizaje automático hasta temas avanzados. Comenzarás con conceptos básicos de estadística, álgebra lineal y programación en Python, que son esenciales para entender cómo funcionan los algoritmos de machine learning. Luego, explorarás algoritmos clave, como regresión lineal, árboles de decisión, redes neuronales y clustering. Aprenderás a utilizar librerías populares como Scikit-Learn, Pandas, y TensorFlow para implementar y evaluar modelos. También abordaremos temas como la validación de modelos, la reducción de dimensionalidad y el ajuste de hiperparámetros. Al finalizar, estarás capacitado para construir modelos predictivos, interpretar resultados y aplicar machine learning en proyectos del mundo real, desde la predicción de tendencias hasta la clasificación de datos y mucho más.\"', '2024-10-24 01:39:46', 'MACHINE LEARNING', 0, NULL, NULL, NULL, NULL, NULL),
(7, 'Curso de Fotografía', '\"Aprende los conceptos básicos de fotografía y captura imágenes increíbles con tu cámara o smartphone.\"\r\n\r\n', '\"El Curso de Fotografía para Principiantes está diseñado para ayudarte a dominar los conceptos esenciales de la fotografía, sin importar si usas una cámara profesional o un smartphone. Comenzaremos con los fundamentos, como el manejo de la exposición, el enfoque, la apertura y la velocidad de obturación, para que comprendas cómo capturar imágenes nítidas y bien iluminadas. También exploraremos la composición, el uso de la luz natural y artificial, y técnicas para mejorar la calidad de tus fotos. A lo largo del curso, pondrás en práctica lo aprendido con ejercicios y proyectos guiados que te permitirán desarrollar tu propio estilo. Al finalizar, tendrás las habilidades necesarias para capturar momentos especiales y crear imágenes de alta calidad que impresionen a tus amigos, familiares o incluso en plataformas de redes sociales.\"', '2024-10-24 01:39:46', 'Fotografía', 3, NULL, NULL, NULL, NULL, NULL),
(8, 'Excel Avanzado', '\"Domina Excel a nivel avanzado para gestionar y analizar datos complejos. Aprende funciones avanzadas.\"\n\n', '\"El Curso de Excel Avanzado está diseñado para quienes desean llevar sus habilidades en Excel al siguiente nivel y aprender a manejar datos de manera eficiente y profesional. A lo largo del curso, te adentrarás en el uso avanzado de funciones y fórmulas, incluyendo las funciones de búsqueda, lógica y manipulación de datos. También aprenderás a crear y manejar tablas dinámicas, gráficos avanzados y a utilizar herramientas de análisis como el Solver y el Análisis de Escenarios. Exploraremos macros y VBA para automatizar tareas y mejorar la productividad en el manejo de grandes volúmenes de datos. Este curso es ideal para profesionales de todas las áreas que buscan optimizar su trabajo, mejorar la toma de decisiones basadas en datos y convertirse en expertos en Excel. Al finalizar, estarás preparado para enfrentar retos complejos y aprovechar todo el potencial de esta herramienta en tus proyectos y análisis.\"', '2024-10-24 01:39:46', 'Productividad', 3, NULL, NULL, NULL, NULL, NULL),
(9, 'Administración de Empresas', '\"Aprende los fundamentos de la administración de empresas y adquiere habilidades esenciales.\"', '\"El Curso de Administración de Empresas te proporciona una comprensión completa de los conceptos y prácticas esenciales para dirigir y gestionar una empresa de manera efectiva. Empezaremos con los principios básicos de administración, incluyendo planificación, organización, dirección y control. También exploraremos temas clave como finanzas, recursos humanos, marketing, operaciones y liderazgo. A lo largo del curso, estudiarás casos prácticos y desarrollarás habilidades de análisis y toma de decisiones que son fundamentales para enfrentar los desafíos del entorno empresarial actual. Este curso es ideal para emprendedores, futuros gerentes y todos aquellos interesados en el mundo de los negocios. Al finalizar, estarás preparado para aplicar técnicas administrativas en la creación y gestión de empresas, ayudándote a tomar decisiones estratégicas que impulsen el éxito organizacional.\"', '2024-10-24 01:39:46', 'Negocios', 8, NULL, NULL, NULL, NULL, NULL),
(10, 'Introducción a la Psicología', '\"Explora los conceptos básicos de la psicología y comprende mejor el comportamiento humano.\"', '\"El Curso de Introducción a la Psicología está diseñado para proporcionarte una visión general de los principios y teorías fundamentales de la psicología. A lo largo del curso, estudiarás temas clave como la percepción, la memoria, el desarrollo humano, la personalidad y las emociones. También exploraremos los diferentes enfoques de la psicología, incluyendo el conductual, el cognitivo y el psicoanalítico, para entender cómo se analizan y explican los procesos mentales y el comportamiento humano. Este curso utiliza ejemplos prácticos y estudios de caso para ayudarte a aplicar los conceptos en la vida diaria. Ideal para quienes desean comprender mejor la mente humana, esta introducción te proporcionará una base sólida si estás interesado en profundizar en el estudio de la psicología en el futuro.\"', '2024-10-24 01:39:46', 'Ciencias Sociales', 8, NULL, NULL, NULL, NULL, NULL),
(16, 'Diseño Gráfico Básico', '\"Descubre los fundamentos del diseño gráfico y aprende a crear contenido visual atractivo.\"', '\"El Curso de Diseño Gráfico Básico está orientado a quienes desean introducirse en el mundo del diseño visual y aprender a crear piezas gráficas impactantes. Comenzaremos con los principios fundamentales del diseño, como la teoría del color, la tipografía, la composición y el uso del espacio. Aprenderás a utilizar herramientas esenciales, como Adobe Photoshop e Illustrator, para crear tus primeros diseños. También exploraremos técnicas de edición de imágenes y diseño de logotipos, así como la creación de gráficos para redes sociales y presentaciones. Al finalizar el curso, estarás capacitado para producir contenido visual atractivo y con propósito, listo para compartir en diversas plataformas. Este curso es ideal para principiantes y para aquellos que buscan desarrollar habilidades creativas para proyectos personales o profesionales.\"', '2024-11-04 21:58:47', 'Fotografía', 3, NULL, NULL, NULL, NULL, NULL),
(19, 'prueba 05', 'kola', 'PRUEBA', '2024-11-07 16:14:21', '', 12, NULL, NULL, NULL, NULL, NULL),
(23, 'prueba 06', 'prueba 06', 'dfsfsds', '2024-11-11 21:46:39', '', 12, NULL, NULL, NULL, NULL, NULL),
(24, 'uiityy', '76867', 'uyiyti', '2024-11-11 22:08:31', '', 12, NULL, NULL, NULL, NULL, NULL),
(25, 'Curso de Comunicación Efectiva2', '\"Mejora tus habilidades de comunicación para entornos profesionales y personales.\"', '\"En este curso de Comunicación Efectiva, aprenderás técnicas y estrategias para expresarte con claridad, adaptarte a diferentes audiencias y resolver conflictos de manera asertiva. A lo largo de este curso, cubrirás temas como la escucha activa, el lenguaje corporal y cómo Estructurar mensajes persuasivos Ideal para mejorar tus relaciones laborales y personales, este curso te ayudará a desarrollar una comunicación más empática y efectiva. Al finalizar, tendrás herramientas prácticas para mejorar tus interacciones diarias y potenciar tu influencia en entornos profesionales.\r\n\r\n', '2024-11-12 02:36:58', '', 12, NULL, NULL, NULL, NULL, 'auditiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_completados`
--

CREATE TABLE `cursos_completados` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `completado` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_completado` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cursos_completados`
--

INSERT INTO `cursos_completados` (`id`, `usuario_id`, `curso_id`, `completado`, `fecha_completado`) VALUES
(1, 9, 1, 1, '2024-10-24 20:06:05'),
(2, 9, 2, 1, '2024-11-04 18:30:11'),
(3, 9, 6, 1, '2024-11-04 18:52:14'),
(4, 18, 2, 1, '2024-11-04 20:15:00'),
(5, 18, 3, 1, '2024-11-04 20:15:09'),
(6, 20, 1, 1, '2024-11-05 16:12:12'),
(7, 9, 19, 1, '2024-11-08 17:49:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `usuario_id`, `curso_id`) VALUES
(1, 7, 1),
(2, 9, 1),
(3, 9, 2),
(4, 17, 1),
(5, 17, 4),
(6, 9, 5),
(7, 9, 6),
(8, 9, 16),
(9, 9, 3),
(10, 9, 4),
(11, 9, 7),
(12, 18, 3),
(13, 18, 5),
(14, 18, 2),
(15, 18, 1),
(16, 19, 1),
(17, 20, 1),
(19, 9, 19),
(20, 9, 24),
(21, 9, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `nombre_modulo` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id`, `curso_id`, `nombre_modulo`, `descripcion`) VALUES
(2, 1, 'Modulo 1', 'Ejemplo de introduccion '),
(3, 1, 'Modulo 2', 'ejemplo de desarrollo '),
(5, 1, 'Modulo 3', 'eee'),
(7, 1, 'Modulo 4', 'regerg'),
(11, 2, 'Modulo 5', 'czx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `nombre_archivo` varchar(255) NOT NULL,
  `ruta_archivo` varchar(255) NOT NULL,
  `fecha_subida` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipo_recurso` enum('archivo','video','documento') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id`, `curso_id`, `nombre_archivo`, `ruta_archivo`, `fecha_subida`, `tipo_recurso`) VALUES
(10, 4, 'Comunicación básica en Lengua de Señas ', 'uploads/Comunicación básica en Lengua de Señas (LESCO) - Hands-On LESCO (720p, h264, youtube).mp4', '2024-10-25 02:17:27', 'video'),
(11, 1, 'Comunicación básica en Lengua de Señas ', 'uploads/Comunicación básica en Lengua de Señas (LESCO) - Hands-On LESCO (720p, h264, youtube).mp4', '2024-11-04 16:58:31', 'video'),
(13, 1, 'prueba 02', 'uploads/EV 2 - Texto.docx', '2024-11-04 18:05:06', 'documento'),
(14, 1, 'prueba 03', 'uploads/CURSO HTML 1 Sordos y ceguera.mp4', '2024-11-04 20:29:19', 'video'),
(15, 1, 'jghjhj', 'uploads/01 - Rúbrica - Written Test 2 ESP1513.pdf', '2024-11-04 20:31:35', 'documento'),
(18, 1, 'prueba 04', 'uploads/CURSO HTML 1 Sordos y ceguera.mp4', '2024-11-04 20:51:42', 'video'),
(19, 1, 'prueba 04', 'uploads/CURSO HTML 1 Sordos y ceguera.mp4', '2024-11-04 21:00:33', 'archivo'),
(20, 1, 'documento 01', 'uploads/01 - ESP1513 - Written Test 2 .pdf', '2024-11-04 21:01:26', 'documento'),
(21, 24, 'prueba 06', './uploads/CURSO_EXCEL_SORDERA_Y_CEGUERA.mp4', '2024-11-11 22:55:46', 'video');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`) VALUES
(1, 'administrador'),
(2, 'usuario'),
(3, 'profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `role_id`, `email`, `full_name`, `telefono`, `direccion`) VALUES
(3, 'test', 'ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff', 3, 'profe_test@example.com', 'Test', NULL, NULL),
(5, 'yuko', '$2y$10$8VnLfYLeOq5HOk7u22Qqpu6wpSTsQb29lMXlnUVb5vLsX55STGWGC', 2, 'user_yuko@example.com', NULL, NULL, NULL),
(6, 'baby', '$2y$10$1YjsojQzKk13agNKazTOAuy1EdlTNC7uIzU4ppkiH6KKpxktBGHN.', 1, 'admin_baby@example.com', NULL, NULL, NULL),
(7, 'prueba', '$2y$10$R3dqz3A6uO8T6Psf5sR.X.GVNKgmxLkgBalhFNXrI0TIfI1PgSu0a', 3, 'profe_prueba@example.com', 'Prueba', NULL, NULL),
(8, 'koda', '$2y$10$3AtIanvkbbdLOug/5T5rzORaw886WlDEQcYlY4rjHuw3zy7HpEqAy', 3, 'profe_koda@example.com', 'Koda', NULL, NULL),
(9, 'luna', '$2y$10$qdIgGxzyaAOkD7XOLProBuBUBx3unqlaQj7H0g9KBxsRrGD4hoHHy', 2, 'user1_luna@example.com', 'Luna Cabrera', '0962016509', 'villa maipu'),
(10, 'tuto', '$2y$10$UfI4XovpG7mxmCMcn/M.cOIKsyqx1YVrZZm/u987BX1WHtiFzoYla', 2, 'user_tuto@example.com', NULL, NULL, NULL),
(11, 'matias', '$2y$10$JkS/ce6zYFLGH.QATbptC.q00Kckg14T30aYz6u3HBsm4AWTl/7pO', 2, 'user_matias@example.com', NULL, NULL, NULL),
(12, 'amanda', '$2y$10$ztNjDYgkP0evyaKutu5mT.eh6tCw9E8Bg2QDLOsm.SG2XeZ951GgC', 3, 'profe_amanda@example.com', 'Amanda Cabrera', NULL, ''),
(13, 'maria', '$2y$10$w8RDp16DNQExuE3DTcPU5e0DVvJxV1L.aVg4uXBaMj9jY/hJ.Ca8q', 2, 'user_maria@example.com', NULL, NULL, NULL),
(14, 'monserrat', '$2y$10$FmtP2w1E5YQMt/Dz.UDRbegSuLOyfBwtodDqNZmWJX25uYuNXvsye', 1, 'admin_monserrat@example.com', NULL, '965025403', 'Villa valparaiso'),
(17, 'Bruno', '$2y$10$4GXFatZsj.mjcYxAlCJyYul6c5GGF4avFsEgMeG3g4V98kYPu/lEu', 2, 'user_bruno@example.com', NULL, NULL, NULL),
(18, 'Estefany1', '$2y$10$znqDHu9tJr6gl3faE6SaGepjuillxxmYbzsl9yBEmQ5sEsWY9eCga', 2, 'user_estefany1@example.com', NULL, NULL, NULL),
(19, 'mariela', '$2y$10$udAqsBWpdftXYJgvtpOTLuQaYnJVAA.Tj6aBYx4nSgCibcnDMAlku', 2, 'user_mariela@example.com', NULL, NULL, NULL),
(20, 'juan', '$2y$10$8YsZL10lz/hNO/uzUe8wL.zlS8smSdYXYbRj3V8Q5oUrO9LR7oMG6', 2, 'user_juan@example.com', NULL, NULL, NULL),
(24, 'prueba 06', '$2y$10$tAeZ8Due/6hQssbzYLpo.e0qdD3P7pNNKlM5LC6QxFbkztvlvRXdi', 3, 'profe_prueba06@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `nombre_video` varchar(255) NOT NULL,
  `ruta_video` varchar(255) NOT NULL,
  `fecha_subida` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos_completados`
--
ALTER TABLE `cursos_completados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `cursos_completados`
--
ALTER TABLE `cursos_completados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos_completados`
--
ALTER TABLE `cursos_completados`
  ADD CONSTRAINT `cursos_completados_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `cursos_completados_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD CONSTRAINT `modulos_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD CONSTRAINT `recursos_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
