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
INSERT INTO `pregunta` VALUES (1,'baja temporal',NULL),(2,'baja permanente',NULL),(3,'baja de unidad de aprendisaj',NULL),(4,'cita con docente',NULL),(5,'Constancia de estudios ',NULL),(6,'generación de correo electrónico',NULL),(7,'justificantes',NULL),(8,'préstamo de cañones y extensiones',NULL),(9,'reposición de credencial',NULL),(10,'trámites de becas',NULL),(11,'trámites de egreso y Servicio social ',NULL),(12,'inscripcion ETS',NULL);
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
INSERT INTO `respuesta` VALUES (1,'Dirigirse a la siguiente liga: https://forms.gle/bpGcVh58sDm9G8Va8  Llene el formulario con los datos que se solicitan, verificando la información antes de enviarla. La solicitud la recibirá en el correo electrónico registrado. Siga las indicaciones que la solicitud le señala. IMPORTANTE: NO ES POSIBLE HACER EL TRÁMITE SI NO ADJUNTA LA SOLICITUD FIRMADA JUNTO CON LAS IDENTIFICACIONES DE LOS FIRMANTES. ',1),(2,'Dirigirse a la siguiente liga: https://forms.gle/phqbsmwKobLqEt8i7 Llene el formulario con los datos que se solicitan, verificando la información antes de enviarla. La solicitud la recibirá en el correo electrónico registrado. Siga las indicaciones que la solicitud le señala. IMPORTANTE: NO ES POSIBLE HACER EL TRÁMITE SI NO ADJUNTA LA SOLICITUD FIRMADA JUNTO CON LAS IDENTIFICACIONES DE LOS FIRMANTES. Recibirá la solicitud de la baja en el correo electrónico que registró al termino. Es necesario imprimirla entregarla en la Subdirección de Servicios e Integración Social. Si es alumno de la modalidad no escolarizada, debe enviarla a mpaperez@ipn.mx.  ',2),(3,'Dirigirse a la siguiente liga: https://forms.gle/AbWJkLcJ7cWxB9ka8 Llene el formulario con los datos que se solicitan, verificando la información antes de enviarla. Si fuera necesario, adjunte documentos probatorios en formato PDF que soporten sus motivos (médicos, legales, etc.). Recibirá la solicitud de la baja en el correo electrónico que registró. Es necesario imprimirla y enviarla a mpaperez@ipn.mx. IMPORTANTE: SI NO ADJUNTA LA SOLICITUD FIRMADA Y LAS IDENTIFICACIONES DE LOS FIRMANTES, EL TRÁMITE NO PODRÁ REALIZARSE.  ',3),(4,'-',4),(5,'$70 pesos. El alumno debe consultar el tabulador de precios en la página del CECyT, en el apartado “Avisos” de la Sección “Estudiantes” y realizar el pago en la Subdirección Administrativa. El alumno debe de ingresar a través de la siguiente liga al formulario de solicitud: https://forms.gle/AKQ9BRc3voyNq94s8 El alumno recibirá un correo de confirmación de  llenado que tendrá adjunto la solicitud en formato PDF. IMPORTANTE: De no recibir el correo, el alumno debe reportarlo al correo gescolar_cecyt9@ipn.mx informándolo para su envío. El PDF deberá imprimirlo, adjuntarle el talón amarillo  de pago que le dieron en la Subdirección Administrativa y  llevarlo físicamente a las ventanillas del Departamento de Gestión Escolar. El Departamento le entregará una contraseña y lo citará para recogerlo 2 días hábiles posteriores a la entrega de la solicitud. IMPORTANTE: Los documentos sólo tienen validez durante el tiempo que dure el semestre marcado en calendario oficial. Después de ese tiempo el documento pierde su validez y será necesario tramitarlo nuevamente.  ',5),(6,'-',6),(7,'-',7),(8,'-',8),(9,'-',9),(10,'-',10),(11,'-',11),(12,'-',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'gestion escolar',1),(2,'gestion escolar',1),(3,'gestion escolar',1),(4,'gestion escolar',1),(5,'gestion escolar',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramite`
--

LOCK TABLES `tramite` WRITE;
/*!40000 ALTER TABLE `tramite` DISABLE KEYS */;
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

-- Dump completed on 2022-11-21 14:04:49
