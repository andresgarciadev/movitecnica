-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-07-2013 a las 16:49:18
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `movitecnica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `created`, `updated`, `status`) VALUES
(1, 'inicio', 0, '2013-07-09 09:14:23', '2013-07-09 17:13:31', '1'),
(2, 'Conòcenos', 1, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(3, 'Mensaje del Gerente', 2, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(4, 'Misiòn y Vision', 2, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(5, 'Valores', 2, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(6, 'Equipo de Trabjado', 2, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(7, 'trabajador', 6, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(8, 'Que Hacemos', 1, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(9, 'Unidad de Grúas y Proyectos', 8, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(10, 'Últimos Proyectos', 9, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(11, 'Proyecto', 10, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(12, 'Unidad de Fajas Transportadoras', 1, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(13, 'Servicio de Empalme de Fajas', 12, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(14, 'Unidad de Servicio Técnico', 8, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(15, 'Últimos Servicios', 14, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(16, 'Servicio', 15, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(17, 'Unidad Comercial', 8, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(18, 'SIG', 1, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(19, 'Polìtica', 18, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(20, 'Garantia', 18, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(21, 'Reclamos', 18, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(22, 'Trabaje con Nosotros', 1, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(23, 'Porqué Movitécnica', 22, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(24, 'Testimonios', 22, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(25, 'testimonio', 24, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(26, 'Ofertas De Trabajo', 22, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(27, 'media', 1, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1'),
(28, 'Noticia', 27, '2013-07-09 09:14:23', '2013-07-09 14:14:42', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `phone1` varchar(255) NOT NULL,
  `phone2` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`name`, `username`, `password`, `email`, `logo`, `favicon`, `contact_email`, `address1`, `address2`, `phone1`, `phone2`, `fax`, `title`, `description`, `keywords`, `google`, `facebook`, `twitter`, `linkedin`, `skype`, `youtube`) VALUES
('andres', 'admin', '12345', 'andresgarciadev@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `phone1` varchar(255) NOT NULL,
  `phone2` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `overlap` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `content`
--

INSERT INTO `content` (`id`, `category_id`, `name`, `image`, `description`, `content`, `overlap`, `created`, `updated`, `status`) VALUES
(1, 1, 'inicio', '1.jpg', '', '', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(2, 2, 'Conocenos', 'Conocenos.png', '', '<div style="border-bottom: 1px solid #D7D7D7; width: 100%;">\r\n                                Somos una empresa peruana con más de 30 años en el mercado, líderes en el negocio de izaje en el Perú, contamos con profesionales altamente calificados para ofrecer la mejor calidad, atención y apoyo en todos los servicios. Proveemos  la ingeniería, los equipos, el servicio técnico, el montaje y la puesta en marcha del proyecto. Nuestra experiencia y solidez han contribuido a que contemos con una cobertura a nivel nacional, haciendo así que marcas de prestigio a nivel mundial, tales como Yale Hoist, Street, Dunlop, ASGCO, Conductix, Kühnezug,  Vetter y Cimbria,  nos confíen la distribución exclusiva de sus productos.\r\n                                <br /><br />\r\n                                <div class="listita">\r\n                                    <ul style="margin-bottom: 10px;"><div style="margin-bottom: 5px;"><b>Categorías:</b></div>\r\n                                        <li>Izaje</li>\r\n                                        <li>Accesorios de izaje.</li>\r\n                                        <li>Fajas transportadoras.</li>\r\n                                        <li>Accesorios de fajas.</li>\r\n                                        <li>Sistemas de electrificación.</li>\r\n                                        <li>Grúas.</li>\r\n                                        <li>Puentes Grúa.</li>\r\n                                        <li>Chutes antipolución.</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <br />\r\n\r\n                                Nuestro servicio técnico certificado por nuestros proveedores, garantiza el mejor servicio post venta del mercado.\r\n                                <br /><br />\r\n                                <img src="../images/logos_marcas.png">\r\n                                <br /><br />\r\n                            </div>\r\n                            <br />\r\n                            <!--                        <h3><b>Historia</b></h3>\r\n                                                    <div id="mobanner-container">\r\n                                                        <div id="mobanner_arrow_left"></div>\r\n                                                        <div id="mobanner-content">\r\n                                                            <img id="mobanner" src="../images/linea-de-tiempo.png"/>\r\n                                                        </div>\r\n                                                        <div id="mobanner_arrow_right"></div>\r\n                                                    </div>\r\n                                                    <div id="div_linea_tiempo">\r\n                                                        \r\n                                                    </div>-->\r\n                            <br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(3, 3, 'Mensaje del Gerente', 'CEO.png', '', '<span>\r\n                        Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.\r\n                    </span><br />\r\n                    <br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(4, 4, 'Misión y Visión', 'mision_y_vision.png', '', '<span>\r\n                            <h3><b>Misión</b></h3>\r\n                            Ayudar a nuestros clientes a mover, levantar, posicionar y asegurar todo tipo de material de una manera fácil y segura.<br /><br />\r\n\r\n                            <h3><b>Visión</b></h3>\r\n                            Ser líderes de la región sudamericana, como empresa Que brinda soluciones integrales de ingeniería a todos los sectores productivos.<br />\r\n                        </span><br />\r\n                        <br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(5, 5, 'Valores', 'Valores.png', '', '<span>\r\n                            <h3><b>Juego Limpio</b></h3>\r\n                            Es el comportamiento leal, honesto y fraterno hacia la competencia, los clientes, nuestros colaboradores, el Estado y la sociedad; siendo respetuosos de las reglas de juego y el correcto manejo de los clientes. <br /><br />\r\n\r\n                            <h3><b>Trabajamos y Ganamos en Equipo</b></h3>\r\n                            Surge de desarrollar y compartir nuestros conocimientos dentro de la organización. Fomentamos la integración donde los objetivos de la empresa son sentidos como propios por todos los colaboradores. <br /><br />\r\n\r\n                            <h3><b>Pasión por lo Que Hacemos</b></h3>\r\n                            Es nuestro entusiasmo y la satisfacción por la tarea Que se realiza Que nos impulsa a desarrollar nuestro máximo potencial.<br /><br />\r\n\r\n                            <h3><b>Formación de Talentos</b></h3>\r\n                            Es nuestro interés genuino por fomentar la formación y el desarrollo de los miembros del equipo Movitécnica a partir del análisis de sus necesidades y de la exposición a situaciones Que faciliten su crecimiento.<br />\r\n                        </span><br />\r\n                        <br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(7, 8, 'Que Hacemos', 'que_hacemos.png', '', '<br />\r\n                <br />\r\n                <div style="display: inline-block;" class="uni_response">\r\n                    <div style="width: 98%; text-align: left;">\r\n                    <div style="width: 43%; display: inline-block; vertical-align: top; margin-right: 13px; margin-left: 13px; margin-bottom: 50px;">\r\n                        <h4 style="margin-bottom: 18px;"><a href="Unidad_Gruas_Y_Proyectos.php"><span class="bold">></span> Unidad Grúas y Proyectos</a></h4>\r\n                        Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico.<br /><br />\r\n                        <div><a href="Unidad_Gruas_Y_Proyectos.php" style="">Ver más</a></div>\r\n                    </div>\r\n                    <div style="width: 43%; display: inline-block; vertical-align: top; margin-right: 13px; margin-left: 13px; margin-bottom: 50px;">\r\n                        <h4 style="margin-bottom: 18px;"><a href="Unidad_Fajas_Transportadoras.php"><span class="bold">></span> Unidad Fajas Transportadoras</a></h4>\r\n                        Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico.<br /><br />\r\n                        <div><a href="Unidad_Fajas_Transportadoras.php" style="">Ver más</a></div>\r\n                    </div>    \r\n                    <div style="width: 43%; display: inline-block; vertical-align: top; margin-right: 13px; margin-left: 13px; margin-bottom: 50px;">\r\n                        <h4 style="margin-bottom: 18px;"><a href="Unidad_Servicio_Tecnico.php"><span class="bold">></span> Unidad Servicio Técnico</a></h4>\r\n                        Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico.<br /><br />\r\n                        <div><a href="Unidad_Servicio_Tecnico.php" style="">Ver más</a></div>\r\n                    </div>\r\n                    <div style="width: 43%; display: inline-block; vertical-align: top; margin-right: 13px; margin-left: 13px; margin-bottom: 50px;">\r\n                        <h4 style="margin-bottom: 18px;"><a href="Unidad_Comercial.php"><span class="bold">></span> Unidad Comercial</a></h4>\r\n                        Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico.<br /><br />\r\n                        <div><a href="Unidad_Comercial.php" style="">Ver más</a></div>\r\n                    </div>\r\n                    <br />\r\n                    </div>\r\n                </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(8, 9, 'Unidad de Grúas y Proyectos', 'gruas_y_proyectos.png', '', '<br />\r\n                    <br />\r\n                    <div style="display: inline-block;" class="uni_response">\r\n                        <div style="width: 98%; text-align: left;">\r\n                            <h1><b>Unidad de Grúas y Proyectos</b></h1>\r\n                            <div>\r\n                                Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.\r\n                                <br /><br />\r\n                            </div> \r\n                            <div>\r\n                                <div class="image_carousel">\r\n                                    <div id="foo1">\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni2.jpg">\r\n                                            <img src="../images/uni2.jpg" alt="beachtree"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni3.jpg">\r\n                                            <img src="../images/uni3.jpg" alt="cupcackes"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                    </div>\r\n                                    <div class="clearfix"></div>\r\n                                </div>\r\n                                <br />\r\n                                <a href="ultimos_proyectos.php">Ir a  Últimos Proyectos ></a>\r\n                            </div>\r\n                        </div>\r\n                    </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(9, 12, 'Unidad de Fajas Transportadoras', 'fajas_transportadoras.png', '', '<br />\r\n                    <br />\r\n                    <div style="display: inline-block;" class="uni_response">\r\n                        <div style="width: 98%; text-align: left;">\r\n                            <h1><b>Unidad de Fajas Transportadoras</b></h1>\r\n                            <div>\r\n                                Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.\r\n                                <br /><br />\r\n                            </div> \r\n                            <div>\r\n                                <div class="image_carousel">\r\n                                    <div id="foo1">\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni2.jpg">\r\n                                            <img src="../images/uni2.jpg" alt="beachtree"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni3.jpg">\r\n                                            <img src="../images/uni3.jpg" alt="cupcackes"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                    </div>\r\n                                    <div class="clearfix"></div>\r\n                                </div>\r\n                                <br />\r\n                            </div>\r\n                            <div><a href="Servicio_De_Empalme.php"> Ir a Servicio de Empalme de Fajas ></a></div>\r\n                            <br />\r\n                        </div>\r\n                    </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(10, 13, 'Servicio de Empalme de Fajas', '', '', '<div style="display: inline-block;" class="uni_response">\r\n                    \r\n                    <div style="width: 98%;">\r\n                        <span>\r\n                            Es el comportamiento leal, honesto y fraterno hacia la competencia, los clientes, nuestros colaboradores, el Estado y la sociedad; siendo respetuosos de las reglas de juego y el correcto manejo de los clientes. <br />\r\n                            Surge de desarrollar y compartir nuestros conocimientos dentro de la organización. Fomentamos la integración donde los objetivos de la empresa son sentidos como propios por todos los colaboradores. <br />\r\n                            Es nuestro entusiasmo y la satisfacción por la tarea Que se realiza Que nos impulsa a desarrollar nuestro máximo potencial.<br />\r\n                            Es nuestro interés genuino por fomentar la formación y el desarrollo de los miembros del equipo Movitécnica a partir del análisis de sus necesidades y de la exposición a situaciones Que faciliten su crecimiento.<br />\r\n                        </span><br />\r\n                        <br />\r\n                        <div class="image_box" style="height: auto;"><img src="../images/Valores.png"></div>\r\n                        <a href="Unidad_Fajas_Transportadoras.php"> < Regresar a Unidad Fajas Transportadoras</a>\r\n                        <br/><br/>\r\n                    </div>\r\n                </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(11, 14, 'Unidad de Servicio Técnico', 'Servicio_tecnico.png', '', '<br />\r\n                    <br />\r\n                    <div style="display: inline-block;" class="uni_response">\r\n                        <div style="width: 98%; text-align: left;">\r\n                            <h1><b>Unidad de Servicio Técnico</b></h1>\r\n                            <div>\r\n                                Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.\r\n                                <br /><br />\r\n                            </div> \r\n                            <div>\r\n                                <div class="image_carousel">\r\n                                    <div id="foo1">\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni2.jpg">\r\n                                            <img src="../images/uni2.jpg" alt="beachtree"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni3.jpg">\r\n                                            <img src="../images/uni3.jpg" alt="cupcackes"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                    </div>\r\n                                    <div class="clearfix"></div>\r\n                                </div>\r\n                                <br />\r\n                            </div>\r\n                            <div><a href="Ultimos_Servicios.php">Ir a  Últimos Servicios ></a></div>\r\n                            <br />\r\n                        </div>\r\n                    </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(12, 17, 'Unidad Comercial', 'unidad_comercial.png', '', '<br />\r\n                    <br />\r\n                    <div style="display: inline-block;" class="uni_response">\r\n                        <div style="width: 98%; text-align: left;">\r\n                            <h1><b>Unidad Comercial</b></h1>\r\n                            <div>\r\n                                Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.\r\n                                <br /><br />\r\n                            </div> \r\n                            <div>\r\n                                <div class="image_carousel">\r\n                                    <div id="foo1">\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni2.jpg">\r\n                                            <img src="../images/uni2.jpg" alt="beachtree"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni3.jpg">\r\n                                            <img src="../images/uni3.jpg" alt="cupcackes"  />\r\n                                        </a>\r\n                                        <a rel="fancybox" href="../images/uni1.jpg">\r\n                                            <img src="../images/uni1.jpg" alt="basketball"  />\r\n                                        </a>\r\n                                    </div>\r\n                                    <div class="clearfix"></div>\r\n                                </div>\r\n                                <br />\r\n                            </div>\r\n                            <div><a href="">Ver Productos ></a></div>\r\n                            <br />\r\n                        </div>\r\n                    </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(13, 18, 'SIG', 'sig.png', '', '<span>Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio : <br /> unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.</span><br />\r\n                        <br />\r\n                        <span>\r\n                            <h3 style="margin-bottom: 6px;">Politica</h3>\r\n                            PageMaker, el cual incluye versiones de Lorem Ipsum <br />\r\n                            <div style="margin-top: 10px;"><a href="politica.php">Ver más</a></div>\r\n                        </span>\r\n                        <br /><br /><span>\r\n                            <h3 style="margin-bottom: 6px;">Garantia</h3>\r\n                            PageMaker, el cual incluye versiones de Lorem Ipsum <br />\r\n                            <div style="margin-top: 10px;"><a href="garantia.php">Ver más</a></div>\r\n                        </span>\r\n                        <br /><br /><span>\r\n                            <h3 style="margin-bottom: 6px;">Reclamos</h3>\r\n                            PageMaker, el cual incluye versiones de Lorem Ipsum <br />\r\n                            <div style="margin-top: 10px;"><a href="reclamos.php">Ver más</a></div>\r\n                        </span>\r\n                        <br /><br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(14, 19, 'Política', 'CEO.png', '', '<span>Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.</span><br />\r\n                    <br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(15, 20, 'Garantía', 'CEO.png', '', '<span>Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.</span><br />\r\n                    <br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(16, 21, 'Reclamos', 'reclamos.png', '', '<p><span>Somos una empresa peruana con mas de 30 a&ntilde;os en el mercado Que con cuatro lineas de negocio: unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.</span></p>\r\n<div><form class="form-horizontal">\r\n<div class="control-group"><label class="control-label" for="inputname">Nombre:</label>\r\n<div class="controls"><input id="inputname" type="text" /></div>\r\n</div>\r\n<div class="control-group"><label class="control-label" for="inputmail">E-Mail:</label>\r\n<div class="controls"><input id="inputmail" type="text" /></div>\r\n</div>\r\n<div class="control-group"><label class="control-label" for="inputcompany">Compa&ntilde;ia:</label>\r\n<div class="controls"><input id="inputcompany" type="text" /></div>\r\n</div>\r\n<div class="control-group"><label class="control-label" for="inputclaim">Motivo Reclamo</label></div>\r\n</form></div>', '', '0000-00-00 00:00:00', '2013-07-19 16:00:38', '1'),
(17, 22, 'Trabaje con Nosotros', 'trabaje_con_nosotros.png', '', '<span>Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio : <br /> unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.</span><br />\r\n                        <br />\r\n                        <span>\r\n                            <h3 style="margin-bottom: 6px;">Porqué Movitécnica</h3>\r\n                            PageMaker, el cual incluye versiones de Lorem Ipsum <br />\r\n                            <div style="margin-top: 10px;"><a href="porque_movitecnica.php">Ver más</a></div>\r\n                        </span>\r\n                        <br /><br /><span>\r\n                            <h3 style="margin-bottom: 6px;">Testimonios</h3>\r\n                            PageMaker, el cual incluye versiones de Lorem Ipsum <br />\r\n                            <div style="margin-top: 10px;"><a href="testimonio.php">Ver más</a></div>\r\n                        </span>\r\n                        <br /><br /><span>\r\n                            <h3 style="margin-bottom: 6px;">Oferta de Trabajo</h3>\r\n                            PageMaker, el cual incluye versiones de Lorem Ipsum <br />\r\n                            <div style="margin-top: 10px;"><a href="oferta_de_trabajo.php">Ver más</a></div>\r\n                        </span>\r\n                        <br /><br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(18, 23, 'Porqué Movitécnica', 'Conocenos.png', '', '<span>Somos una empresa peruana con mas de 30 años en el mercado Que con cuatro lineas de negocio : <br /> unidad de gruas, unidad de fajas tranportadoras, tiendas y servicio tecnico. representamos a marcas de prestigio mundial como YALE INDUSTRAL PRODUCTS para la linea de iaje FENNER DUNLOP para la linea de fajas transportadoras, CONDUCTIX para sistema de electrificacion, ASGCO para accesorios de fajas transportadoras y DUNLOP para fajas en V. Nuestras mayores fortalezas son nuestro personal altamente calificado y el respaldo de nuestros proveedores.</span><br />\r\n                        <br />\r\n                        <span>\r\n                            \r\n                        <br /><br />', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1'),
(19, 26, 'Oferta De Trabajo', '', '', '<div style="border-top: 1px solid #D7D7D7; padding-top: 15px;">\r\n                        <h4>Buscar entre Vacantes Abiertas</h4>\r\n                    <span>Busque en nuestra posición mediante la selección de una ubicación a continuación. Para ver todas las aberturas ordenados por ubicación, seleccione "Todo". Cada descripción del trabajo incluye un enlace para la aplicación y la presentación de su hoja de vida a nosotros en línea. Esta es la forma más rápida y fiable para ser considerado para alguna de nuestras posiciones.</span><br /><br />\r\n                    <span>Contamos con un total de <b>0</b> trabajos abiertos</span><br /><br />\r\n                        <form class="form-horizontal">\r\n                            <div class="control-group">\r\n                                <label class="control-label" for="Buscar">Buscar</label>\r\n                                <div class="controls">\r\n                                    <input type="text" id="buscar" placeholder="Ingrese Lo Que Desee Buscar">\r\n                                </div>\r\n                            </div>\r\n                            <div class="control-group">\r\n                                <label class="control-label" for="Localizacion">Localizacion</label>\r\n                                <div class="controls">\r\n                                    <select multiple="multiple" size="2">\r\n                                        <option>1</option>\r\n                                        <option>2</option>\r\n                                        <option>3</option>\r\n                                        <option>4</option>\r\n                                        <option>5</option>\r\n                                    </select>\r\n                                </div>\r\n                            </div>\r\n                            <div class="control-group">\r\n                                <label class="control-label" for="posicion">Tipo de Posicion</label>\r\n                                <div class="controls">\r\n                                    <select multiple="multiple" size="2">\r\n                                        <option>1</option>\r\n                                        <option>2</option>\r\n                                        <option>3</option>\r\n                                        <option>4</option>\r\n                                        <option>5</option>\r\n                                    </select>\r\n                                </div>\r\n                            </div>\r\n                            <div class="control-group">\r\n                                <label class="control-label" for="departamento">Departamento</label>\r\n                                <div class="controls">\r\n                                    <select multiple="multiple" size="2">\r\n                                        <option>1</option>\r\n                                        <option>2</option>\r\n                                        <option>3</option>\r\n                                        <option>4</option>\r\n                                        <option>5</option>\r\n                                    </select><br /><br />\r\n                                    <button type="submit" class="btn">Buscar</button>\r\n                                </div>\r\n\r\n                            </div>\r\n                        </form>\r\n                    </div>', '', '0000-00-00 00:00:00', '2013-07-10 15:13:34', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `extra1` varchar(255) NOT NULL,
  `extra2` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id`, `category_id`, `name`, `thumbnail`, `image`, `description`, `content`, `extra1`, `extra2`, `created`, `updated`, `status`) VALUES
(1, 1, 'Reclamos1', '', '', 'descripcion de reclamos1', '<p>contenido de reclamos1</p>', 'gerente1', '', '2013-07-23 00:00:00', '2013-07-23 23:12:19', ''),
(4, 2, 'proyect', '', '', 'asas', '<p>asas</p>', 'assa', '', '0000-00-00 00:00:00', '2013-07-23 23:49:46', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
