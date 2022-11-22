-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_bob
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `com_id` int NOT NULL AUTO_INCREMENT,
  `com_commen` varchar(500) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'aqui va el comentario bien bonito y kawaii'),(2,'aqui va un comentario todo kawaii'),(3,'aqui va un comentario todo kawaii 2'),(4,'este es el 4to comentario bien kawaii desune :3'),(5,'prueba insert con procedure'),(6,'comentaripo'),(7,'comentaripo45');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escribe`
--

DROP TABLE IF EXISTS `escribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escribe` (
  `cou_id` int NOT NULL AUTO_INCREMENT,
  `usu_id` int NOT NULL,
  `com_id` int NOT NULL,
  PRIMARY KEY (`cou_id`),
  KEY `usu_id_idx` (`usu_id`),
  KEY `com_id_idx` (`com_id`),
  CONSTRAINT `com_id` FOREIGN KEY (`com_id`) REFERENCES `comentario` (`com_id`),
  CONSTRAINT `usu_id` FOREIGN KEY (`usu_id`) REFERENCES `usuario` (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escribe`
--

LOCK TABLES `escribe` WRITE;
/*!40000 ALTER TABLE `escribe` DISABLE KEYS */;
INSERT INTO `escribe` VALUES (1,1,1);
/*!40000 ALTER TABLE `escribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_comentarios`
--

DROP TABLE IF EXISTS `lista_comentarios`;
/*!50001 DROP VIEW IF EXISTS `lista_comentarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_comentarios` AS SELECT 
 1 AS `usu_boleta`,
 1 AS `com_commen`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregunta` (
  `pre_id` int NOT NULL AUTO_INCREMENT,
  `pre_pregunta` varchar(500) NOT NULL,
  `tra_id` int DEFAULT NULL,
  PRIMARY KEY (`pre_id`),
  KEY `tra_id_idx` (`tra_id`),
  CONSTRAINT `tra_id` FOREIGN KEY (`tra_id`) REFERENCES `tramite` (`tra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'baja temporal',1),(2,'baja permanente',2),(3,'baja de unidad de aprendisaj',3),(4,'cita con docente',4),(5,'Constancia de estudios ',5),(6,'generación de correo electrónico',6),(7,'justificantes',7),(8,'préstamo de cañones y extensiones',8),(9,'reposición de credencial',9),(10,'trámites de becas',10),(11,'trámites de egreso y Servicio social ',11),(12,'inscripcion ETS',12);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `res_respuesta` varchar(1500) NOT NULL,
  `pre_id` int DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `pre_id_idx` (`pre_id`),
  CONSTRAINT `pre_id` FOREIGN KEY (`pre_id`) REFERENCES `pregunta` (`pre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (1,'Dirigirse a la siguiente liga: https://forms.gle/bpGcVh58sDm9G8Va8  Llene el formulario con los datos que se solicitan, verificando la información antes de enviarla. La solicitud la recibirá en el correo electrónico registrado. Siga las indicaciones que la solicitud le señala. IMPORTANTE: NO ES POSIBLE HACER EL TRÁMITE SI NO ADJUNTA LA SOLICITUD FIRMADA JUNTO CON LAS IDENTIFICACIONES DE LOS FIRMANTES. ',1),(2,'Dirigirse a la siguiente liga: https://forms.gle/phqbsmwKobLqEt8i7 Llene el formulario con los datos que se solicitan, verificando la información antes de enviarla. La solicitud la recibirá en el correo electrónico registrado. Siga las indicaciones que la solicitud le señala. IMPORTANTE: NO ES POSIBLE HACER EL TRÁMITE SI NO ADJUNTA LA SOLICITUD FIRMADA JUNTO CON LAS IDENTIFICACIONES DE LOS FIRMANTES. Recibirá la solicitud de la baja en el correo electrónico que registró al termino. Es necesario imprimirla entregarla en la Subdirección de Servicios e Integración Social. Si es alumno de la modalidad no escolarizada, debe enviarla a mpaperez@ipn.mx.  ',2),(3,'Dirigirse a la siguiente liga: https://forms.gle/AbWJkLcJ7cWxB9ka8 Llene el formulario con los datos que se solicitan, verificando la información antes de enviarla. Si fuera necesario, adjunte documentos probatorios en formato PDF que soporten sus motivos (médicos, legales, etc.). Recibirá la solicitud de la baja en el correo electrónico que registró. Es necesario imprimirla y enviarla a mpaperez@ipn.mx. IMPORTANTE: SI NO ADJUNTA LA SOLICITUD FIRMADA Y LAS IDENTIFICACIONES DE LOS FIRMANTES, EL TRÁMITE NO PODRÁ REALIZARSE.  ',3),(4,'-',4),(5,'$70 pesos. El alumno debe consultar el tabulador de precios en la página del CECyT, en el apartado “Avisos” de la Sección “Estudiantes” y realizar el pago en la Subdirección Administrativa. El alumno debe de ingresar a través de la siguiente liga al formulario de solicitud: https://forms.gle/AKQ9BRc3voyNq94s8 El alumno recibirá un correo de confirmación de  llenado que tendrá adjunto la solicitud en formato PDF. IMPORTANTE: De no recibir el correo, el alumno debe reportarlo al correo gescolar_cecyt9@ipn.mx informándolo para su envío. El PDF deberá imprimirlo, adjuntarle el talón amarillo  de pago que le dieron en la Subdirección Administrativa y  llevarlo físicamente a las ventanillas del Departamento de Gestión Escolar. El Departamento le entregará una contraseña y lo citará para recogerlo 2 días hábiles posteriores a la entrega de la solicitud. IMPORTANTE: Los documentos sólo tienen validez durante el tiempo que dure el semestre marcado en calendario oficial. Después de ese tiempo el documento pierde su validez y será necesario tramitarlo nuevamente.  ',5),(6,'-',6),(7,'-',7),(8,'-',8),(9,'Costo $140.50  CREDENCIAL INSTITUCIONAL : El trámite se realiza en la Dirección de  Administración Escolar a través de la siguiente liga: https://www.ipn.mx/dae/tramites/credencial-institucional.html  En caso de duda o mayor información: Email:  https://www.ipn.mx/dae/#:~:text=Sitios%20de%20Interes-,Contacto,-Nombre  Teléfono: 55 57 29 60 00 / 55 57 29 63 00 Ext. 54011, 54020, 54021, 54022, 54023, 54088, 54089, 54090 Call Center: 57296282 de lunes a viernes de 8:00 a 20:00 hrs tramite en linea ingresa a la siguiente liga: https://servicios.dae.ipn.mx/credenciales/   ingresa los datos solicitados. CREDENCIAL DEL PLANTEL   El trámite se realiza en la Unidad de Informática (UDI) ubicada en el edificio de aulas, enfrente del cubículo de matemáticas. Contacto  Email:  jegutierrezc@ipn.mx  Extensión: 63859  IMPORTANTE: SÓLO SE PUEDE SOLICITAR LA CREDENCIAL DEL PLANTEL MIENTRAS EL ALUMNO CUENTE CON INSCRIPCIÓN VIGENTE   ',9),(10,'1. Registra tu solicitud en el Sistema Informático de Becas IPN (SIBec)  2. Entrega tus documentos con el Representante de Becas de tu Unidad Académica.  3. Consulta resultados en el tablero de becas de tu unidad académica o en la página electrónica del SIBec. Contacto: Lic. T.S. Rocío América Quezada Contreras Responsable de atención a Becarios Tel. 57296000 Ext. 63828 Beca Institucional: becascecyt9ipn@gmail.com Benito Juárez: becasbenitojuarezcecyt9@gmail.com  WhatsApp: 5564841035  Lic. Natisma Julieta López Salas Jefa del Departamento de Extensión y Apoyos Educativos  Tel. 57296000 Ext. 63853 Correo electrónico: nlopezs@ipn.mx Dra. Dorina Ortega Sánchez Subdirectora de Servicios Educativos e Integración Social Tel. 57296000 Ext. 46264    ​Correo electrónico: subdir_se_is@ipn.mx Ubicación del depto de Becas: Planta alta del Edificio de Gobierno frente a Capital Humano  ',10),(11,'-',11),(12,'-',12);
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipousuario` (
  `tip_id` int NOT NULL AUTO_INCREMENT,
  `tip_departamento` varchar(200) NOT NULL,
  `usa_id` int NOT NULL,
  PRIMARY KEY (`tip_id`),
  KEY `usa_id_idx` (`usa_id`),
  CONSTRAINT `usa_id` FOREIGN KEY (`usa_id`) REFERENCES `usuad` (`usa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'gestion escolar',1),(2,'Becas',1),(3,'UDI',1),(4,'Servicio Social',1),(5,'SSEIS',1),(6,'Subdireccion Educativa',1);
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tramite`
--

DROP TABLE IF EXISTS `tramite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tramite` (
  `tra_id` int NOT NULL AUTO_INCREMENT,
  `tra_actividad` int NOT NULL,
  `tip_id` int DEFAULT NULL,
  PRIMARY KEY (`tra_id`),
  KEY `tip_id_idx` (`tip_id`),
  CONSTRAINT `tip_id` FOREIGN KEY (`tip_id`) REFERENCES `tipousuario` (`tip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramite`
--

LOCK TABLES `tramite` WRITE;
/*!40000 ALTER TABLE `tramite` DISABLE KEYS */;
INSERT INTO `tramite` VALUES (1,0,5),(2,0,5),(3,0,5),(4,0,6),(5,0,1),(6,0,3),(7,0,5),(8,0,3),(9,0,3),(10,0,2),(11,0,4),(12,0,1);
/*!40000 ALTER TABLE `tramite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuad`
--

DROP TABLE IF EXISTS `usuad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuad` (
  `usa_id` int NOT NULL AUTO_INCREMENT,
  `usa_nombre` varchar(60) NOT NULL,
  `usa_contrasenna` varchar(100) NOT NULL,
  PRIMARY KEY (`usa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuad`
--

LOCK TABLES `usuad` WRITE;
/*!40000 ALTER TABLE `usuad` DISABLE KEYS */;
INSERT INTO `usuad` VALUES (1,'antonio','contrasenna 1 prueba'),(2,'zabjndskjnc','hjgjfjhghgjh');
/*!40000 ALTER TABLE `usuad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_boleta` varchar(16) NOT NULL,
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'2021090721'),(2,'2021090721'),(3,'2021090722'),(4,'2021090722'),(5,'2026241563'),(6,'boleta'),(7,'boleta121');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vertotaltram`
--

DROP TABLE IF EXISTS `vertotaltram`;
/*!50001 DROP VIEW IF EXISTS `vertotaltram`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vertotaltram` AS SELECT 
 1 AS `tip_departamento`,
 1 AS `tra_id`,
 1 AS `pre_pregunta`,
 1 AS `res_respuesta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vertramites`
--

DROP TABLE IF EXISTS `vertramites`;
/*!50001 DROP VIEW IF EXISTS `vertramites`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vertramites` AS SELECT 
 1 AS `res_respuesta`,
 1 AS `pre_pregunta`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `lista_comentarios`
--

/*!50001 DROP VIEW IF EXISTS `lista_comentarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_comentarios` AS select `usuario`.`usu_boleta` AS `usu_boleta`,`comentario`.`com_commen` AS `com_commen` from (`usuario` join `comentario`) where (`usuario`.`usu_id` = `comentario`.`com_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vertotaltram`
--

/*!50001 DROP VIEW IF EXISTS `vertotaltram`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vertotaltram` AS select `tipousuario`.`tip_departamento` AS `tip_departamento`,`tramite`.`tra_id` AS `tra_id`,`pregunta`.`pre_pregunta` AS `pre_pregunta`,`respuesta`.`res_respuesta` AS `res_respuesta` from (((`tipousuario` join `tramite`) join `respuesta`) join `pregunta`) where ((`tramite`.`tra_id` = `pregunta`.`pre_id`) and (`pregunta`.`pre_id` = `respuesta`.`pre_id`) and (`tipousuario`.`tip_id` = `tramite`.`tip_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vertramites`
--

/*!50001 DROP VIEW IF EXISTS `vertramites`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vertramites` AS select `respuesta`.`res_respuesta` AS `res_respuesta`,`pregunta`.`pre_pregunta` AS `pre_pregunta` from (`respuesta` join `pregunta`) where (`pregunta`.`pre_id` = `respuesta`.`res_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-22  1:23:05
