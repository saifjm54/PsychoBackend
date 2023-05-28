-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: PsychoDB
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (601,'86740-5899','Osinski Forks','Alanside','Cuba'),(602,'32972-0489','Miller Fork','Lake Lavernaville','Somalia'),(603,'17105','Torphy Square','South Kaylie','Sierra Leone'),(604,'99327','Yvette Overpass','Nikitaton','Netherlands Antilles'),(605,'99803','Jessica Fords','Kuhicland','Guinea'),(606,'17592-7821','Brionna Track','Elsamouth','Tokelau'),(607,'53461-2245','Pollich Stream','East Siennaville','Argentina'),(608,'08046-4312','Shirley Land','East Kianamouth','Israel'),(609,'91909','Stoltenberg Isle','Lonnieview','Gibraltar'),(610,'62647','Betty Grove','Lake Savion','Panama'),(611,'36220-3152','Alva Manors','West Ivahport','Antigua and Barbuda'),(612,'35965','Schiller Loaf','Greggland','Taiwan'),(613,'24278','Little Burg','North Kadenchester','Netherlands Antilles'),(614,'59499-2901','Mercedes Common','Rheastad','El Salvador'),(615,'65110','Princess Turnpike','Port Santinohaven','Venezuela'),(616,'10686','Feil Squares','Lake Jordon','Norway'),(617,'67290-0266','Von Trail','Moisesstad','Belize'),(618,'24627','Jenkins Rapid','East Abbey','Czech Republic'),(619,'12243','Klein Run','Quigleyland','French Southern Territories'),(620,'19461','Heaney Ranch','North Antwan','United Arab Emirates'),(621,'99786-6406','Clemens Vista','Nikolausborough','Saint Martin'),(622,'22906-6318','Wiegand Keys','East Sister','Andorra'),(623,'23309','Strosin Street','Lake Charlene','Poland'),(624,'88447','Dashawn Roads','Abbottshire','Zimbabwe'),(625,'42333','Roberts Light','Lake Leathachester','Armenia'),(626,'91427-9580','Mills Mountains','West Ivoryfort','Papua New Guinea'),(627,'13850','Shields Neck','Marcelview','Montserrat'),(628,'76663','Sylvia Square','Lakinberg','Swaziland'),(629,'76376','Tyrese Drive','Mantefurt','Guinea-Bissau'),(630,'88002','Eleanore Well','East Nakiatown','Estonia'),(631,'93701-0214','Zoey Ridges','Lake Haleyton','Libyan Arab Jamahiriya'),(632,'58872-1911','Lehner Throughway','New Ocie','Solomon Islands'),(633,'66532','Berge Ferry','Lowehaven','Seychelles'),(634,'67334-3518','Moses Brooks','Jedstad','South Africa'),(635,'45612','Altenwerth Spurs','South Tia','Bhutan'),(636,'91409-1866','Kayla Cape','New Dayne','Slovenia'),(637,'67107','Aufderhar Brooks','Port Briannebury','Iran'),(638,'73632-3422','Parisian Path','Lake Amaliastad','Afghanistan'),(639,'37484-4804','Shayne Manors','Albaland','Argentina'),(640,'40757-1220','Damien Avenue','East Zanderton','Gibraltar'),(641,'53884-9508','Heathcote Crossing','Donaldmouth','Guyana'),(642,'96176','Hudson Light','Nakiaville','British Indian Ocean Territory (Chagos Archipelago)'),(643,'88737','Stiedemann Stream','Brakustown','Norway'),(644,'03544-9103','Marquis Prairie','Novellaborough','Mayotte'),(645,'12702','Stanton Causeway','Lake Hershelberg','Belarus'),(646,'99313','Cade Row','Blockchester','United Kingdom'),(647,'68120','Sebastian Port','Crooksfurt','Jordan'),(648,'03761','Kiley Track','Janyfort','Puerto Rico'),(649,'92892-8611','Littel Spring','East Evangeline','Slovakia (Slovak Republic)'),(650,'75286-8080','Gutkowski Viaduct','Pacochaberg','Samoa'),(651,'12923','Altenwerth Stream','Port Zelma','Mauritania'),(652,'78665-4812','Daphne Mills','Port Juston','Lesotho'),(653,'34449-4776','Bradtke Harbors','Rueckerland','Uruguay'),(654,'43919','Robel Overpass','Rohanhaven','Latvia'),(655,'69403-0564','Weissnat Views','South Krystal','Reunion'),(656,'99603-3270','Maci Crossroad','Port Doris','Taiwan'),(657,'40787','Luigi Fall','Corwinport','Bouvet Island (Bouvetoya)'),(658,'49033','Daphney Valleys','New Guiseppe','Iraq'),(659,'32296-7807','Kiara Underpass','New Modesta','Falkland Islands (Malvinas)'),(660,'28959-0565','Hyman Camp','West Agustina','Taiwan'),(661,'89508','Tyra Knoll','Jeradstad','New Caledonia'),(662,'85927-1256','Zechariah Row','North Jessicachester','Costa Rica'),(663,'20352-3344','Lacey Centers','Narcisomouth','Malta'),(664,'46642-1074','Gaston Lights','Cooperside','Thailand'),(665,'39546','Douglas Streets','Kaceymouth','Puerto Rico'),(666,'52722','Liana Pine','Evanmouth','Isle of Man'),(667,'67820','White Freeway','Prosaccoborough','Tonga'),(668,'96174-3908','Geovany Overpass','Karsonside','Togo'),(669,'29827-0031','Emard Meadows','Farrellberg','Kazakhstan'),(670,'08204','Larson Canyon','Carmineberg','Lesotho'),(671,'15084','Koelpin Corners','Rohanburgh','Mexico'),(672,'75262','Ivory Dam','New Dannie','Poland'),(673,'83143-1070','Kub Underpass','East Corrine','Gabon'),(674,'19796-3779','Wuckert Radial','Jakubowskichester','Haiti'),(675,'00935','Mylene Trail','Kozeytown','Australia'),(676,'40749','Mertz Stream','Mullerland','Lithuania'),(677,'31258-9269','Demario Ridge','Pricefurt','Portugal'),(678,'11467','Hauck Ramp','North Dejuanstad','Angola'),(679,'22507','Walker Square','South Melvin','Poland'),(680,'15589-7911','Clare Rue','Arnaldoland','Samoa'),(681,'08073','Lucinda Ports','Casperchester','Iceland'),(682,'17924','Zieme Common','West Mervin','Central African Republic'),(683,'80628-7696','Fidel Roads','Croninfort','Guatemala'),(684,'30511-2198','Larissa Pines','West Crystel','Burkina Faso'),(685,'80797-1204','Dusty Pine','New Lavinaport','Montserrat'),(686,'83669','Kreiger Knoll','Nathanialport','Lao People\'s Democratic Republic'),(687,'58632','Hammes Branch','Creminhaven','Latvia'),(688,'21760','Luis Parkway','Brendenton','Azerbaijan'),(689,'75913','Sandrine Coves','Lake Jonathon','Korea'),(690,'5080','Rue Ibn Khaldoun','Teboulba','TN'),(691,'38510-6821','Runolfsdottir Wall','New Garland','Czech Republic'),(692,'47099','O\'Conner Coves','Lake Lukas','Turkey'),(693,'08160','Kuphal Plaza','Howellshire','Saint Martin'),(694,'01180','Berge Ridges','North Sandychester','Cambodia'),(695,'78335','Lockman Mountains','West Angel','Moldova'),(696,'97906-7009','Schneider Place','Lake Jaymeville','Nigeria'),(697,'69369-1834','Pfeffer Dale','Magaliburgh','South Georgia and the South Sandwich Islands'),(698,'84747','Crooks Hollow','Port Hortense','Micronesia'),(699,'39942-6225','Oceane Forks','East Tavaresburgh','Wallis and Futuna'),(700,'53429-7222','Joseph Street','Kurtland','Togo'),(701,'5080','Rue Ibn Khaldoun','Teboulba','TN'),(702,'5080','Rue Ibn Khaldoun','Teboulba','TN');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendrier`
--

DROP TABLE IF EXISTS `calendrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendrier` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendrier`
--

LOCK TABLES `calendrier` WRITE;
/*!40000 ALTER TABLE `calendrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20230420144154','2023-04-20 16:42:18',197),('DoctrineMigrations\\Version20230420155849','2023-04-20 17:58:57',26),('DoctrineMigrations\\Version20230423205800','2023-04-23 22:58:33',53),('DoctrineMigrations\\Version20230423214753','2023-04-23 23:47:59',15),('DoctrineMigrations\\Version20230423221523','2023-04-24 00:15:30',78),('DoctrineMigrations\\Version20230426224318','2023-04-27 00:43:28',54),('DoctrineMigrations\\Version20230426224549','2023-04-27 00:45:54',12),('DoctrineMigrations\\Version20230430140725','2023-04-30 16:07:38',23),('DoctrineMigrations\\Version20230430140844','2023-04-30 16:08:57',39),('DoctrineMigrations\\Version20230430150241','2023-04-30 17:02:45',22),('DoctrineMigrations\\Version20230508114728','2023-05-08 13:47:48',141);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (16,'male'),(17,'female'),(18,'Autre');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horaire_travail`
--

DROP TABLE IF EXISTS `horaire_travail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horaire_travail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seances_id` int DEFAULT NULL,
  `calendrier_id` int DEFAULT NULL,
  `jour` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A74025A810F09302` (`seances_id`),
  KEY `IDX_A74025A8FF52FC51` (`calendrier_id`),
  CONSTRAINT `FK_A74025A810F09302` FOREIGN KEY (`seances_id`) REFERENCES `seances` (`id`),
  CONSTRAINT `FK_A74025A8FF52FC51` FOREIGN KEY (`calendrier_id`) REFERENCES `calendrier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horaire_travail`
--

LOCK TABLES `horaire_travail` WRITE;
/*!40000 ALTER TABLE `horaire_travail` DISABLE KEYS */;
INSERT INTO `horaire_travail` VALUES (31,111,NULL,'lundi'),(32,NULL,NULL,'Mardi'),(33,NULL,NULL,'Mercredi'),(34,NULL,NULL,'Jeudi'),(35,NULL,NULL,'Vendredi'),(36,NULL,NULL,'Samedi'),(37,NULL,NULL,'Dimanche');
/*!40000 ALTER TABLE `horaire_travail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_account`
--

DROP TABLE IF EXISTS `patient_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `auth_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2055034FA76ED395` (`user_id`),
  KEY `IDX_2055034F708A0E0` (`gender_id`),
  CONSTRAINT `FK_2055034F708A0E0` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `FK_2055034FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_account`
--

LOCK TABLES `patient_account` WRITE;
/*!40000 ALTER TABLE `patient_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `praticien`
--

DROP TABLE IF EXISTS `praticien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `praticien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  `adress_id` int DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calendrier_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D9A27D3CCFA12B8` (`profile_id`),
  UNIQUE KEY `UNIQ_D9A27D3FF52FC51` (`calendrier_id`),
  KEY `IDX_D9A27D36BF700BD` (`status_id`),
  KEY `IDX_D9A27D38486F9AC` (`adress_id`),
  CONSTRAINT `FK_D9A27D36BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `FK_D9A27D38486F9AC` FOREIGN KEY (`adress_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_D9A27D3CCFA12B8` FOREIGN KEY (`profile_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_D9A27D3FF52FC51` FOREIGN KEY (`calendrier_id`) REFERENCES `calendrier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `praticien`
--

LOCK TABLES `praticien` WRITE;
/*!40000 ALTER TABLE `praticien` DISABLE KEYS */;
INSERT INTO `praticien` VALUES (12,132,41,702,NULL,'IMG-20220801-WA0003-645cd3205b52e.jpg','Saif','Jemaa',NULL);
/*!40000 ALTER TABLE `praticien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `praticien_speciality`
--

DROP TABLE IF EXISTS `praticien_speciality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `praticien_speciality` (
  `praticien_id` int NOT NULL,
  `speciality_id` int NOT NULL,
  PRIMARY KEY (`praticien_id`,`speciality_id`),
  KEY `IDX_6F1E1B942391866B` (`praticien_id`),
  KEY `IDX_6F1E1B943B5A08D7` (`speciality_id`),
  CONSTRAINT `FK_6F1E1B942391866B` FOREIGN KEY (`praticien_id`) REFERENCES `praticien` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6F1E1B943B5A08D7` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `praticien_speciality`
--

LOCK TABLES `praticien_speciality` WRITE;
/*!40000 ALTER TABLE `praticien_speciality` DISABLE KEYS */;
INSERT INTO `praticien_speciality` VALUES (12,41);
/*!40000 ALTER TABLE `praticien_speciality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seances`
--

DROP TABLE IF EXISTS `seances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seances`
--

LOCK TABLES `seances` WRITE;
/*!40000 ALTER TABLE `seances` DISABLE KEYS */;
INSERT INTO `seances` VALUES (1,'07:49:26','10:17:22'),(2,'21:13:34','05:58:03'),(3,'18:04:06','14:00:40'),(4,'12:59:26','06:56:53'),(5,'18:45:08','15:16:08'),(6,'09:43:43','22:02:35'),(7,'13:00:12','17:24:59'),(8,'11:24:45','22:27:08'),(9,'02:44:49','05:40:46'),(10,'04:47:17','09:26:45'),(11,'22:03:08','23:33:51'),(12,'04:01:07','20:08:06'),(13,'04:53:53','12:56:58'),(14,'01:26:37','14:24:11'),(15,'14:09:16','06:55:05'),(16,'04:35:31','10:10:20'),(17,'21:31:34','14:39:45'),(18,'02:47:48','14:21:37'),(19,'23:01:52','20:01:22'),(20,'23:37:37','11:14:26'),(21,'19:32:01','15:31:20'),(22,'14:03:32','04:02:59'),(23,'23:25:48','19:06:09'),(24,'04:50:02','15:46:58'),(25,'09:43:15','20:04:59'),(26,'09:20:10','13:32:46'),(27,'18:32:10','03:30:34'),(28,'03:16:52','00:53:28'),(29,'07:04:55','07:06:40'),(30,'17:10:42','20:55:53'),(31,'10:06:10','04:13:11'),(32,'14:26:36','21:58:18'),(33,'10:25:50','08:42:00'),(34,'18:17:59','10:24:23'),(35,'14:55:40','08:29:10'),(36,'21:03:49','14:38:02'),(37,'02:59:14','23:38:05'),(38,'14:54:41','04:32:54'),(39,'07:36:18','01:29:32'),(40,'16:56:44','21:02:11'),(41,'19:06:56','13:33:49'),(42,'07:36:34','12:37:23'),(43,'00:23:51','05:20:59'),(44,'12:35:29','12:35:28'),(45,'03:11:47','14:14:37'),(46,'20:59:01','13:05:34'),(47,'19:39:10','19:00:07'),(48,'16:40:36','02:45:00'),(49,'13:33:03','15:32:00'),(50,'22:40:02','01:26:59'),(51,'13:16:53','23:44:29'),(52,'14:34:50','20:59:07'),(53,'08:18:24','08:22:45'),(54,'18:04:53','04:46:21'),(55,'20:50:40','04:15:57'),(56,'15:00:51','23:47:41'),(57,'10:08:06','17:28:55'),(58,'13:00:16','20:52:38'),(59,'16:01:55','04:53:20'),(60,'19:19:50','08:40:35'),(61,'00:59:03','01:18:38'),(62,'00:41:41','18:34:19'),(63,'11:21:57','10:57:14'),(64,'21:55:21','03:45:37'),(65,'14:43:08','04:39:24'),(66,'18:39:59','01:10:26'),(67,'15:53:53','14:29:56'),(68,'07:49:20','21:50:57'),(69,'01:06:09','18:42:07'),(70,'03:58:43','05:16:41'),(71,'02:03:33','21:50:06'),(72,'00:08:54','02:11:09'),(73,'06:53:07','06:50:22'),(74,'11:35:39','03:16:14'),(75,'23:27:46','09:41:02'),(76,'10:34:00','19:50:53'),(77,'22:24:21','06:59:05'),(78,'06:23:04','06:36:17'),(79,'19:35:30','06:50:47'),(80,'12:13:47','06:44:03'),(81,'05:40:51','20:12:08'),(82,'04:09:32','20:26:46'),(83,'07:42:14','05:06:46'),(84,'18:13:47','05:04:46'),(85,'14:32:33','09:44:13'),(86,'02:01:30','08:05:29'),(87,'21:57:11','21:23:28'),(88,'06:45:47','16:17:49'),(89,'01:32:39','17:11:31'),(90,'18:21:54','00:22:12'),(91,'08:34:35','07:03:20'),(92,'10:20:53','08:41:55'),(93,'01:23:09','09:54:17'),(94,'06:40:01','06:33:29'),(95,'13:50:26','22:34:39'),(96,'06:30:58','02:07:28'),(97,'07:29:30','10:31:44'),(98,'16:27:13','01:38:25'),(99,'13:27:58','15:27:28'),(100,'10:50:16','10:54:04'),(101,'08:30:00','02:30:00'),(102,'08:30:00','02:30:00'),(103,'08:30:00','02:30:00'),(104,'08:30:00','02:30:00'),(105,'08:30:00','02:30:00'),(106,'08:30:00','02:30:00'),(107,'08:30:00','02:30:00'),(108,'08:30:00','02:30:00'),(109,'08:30:00','02:30:00'),(110,'08:30:00','02:30:00'),(111,'08:01:00','17:01:00');
/*!40000 ALTER TABLE `seances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speciality`
--

DROP TABLE IF EXISTS `speciality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speciality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speciality`
--

LOCK TABLES `speciality` WRITE;
/*!40000 ALTER TABLE `speciality` DISABLE KEYS */;
INSERT INTO `speciality` VALUES (41,'Médecin Généraliste'),(42,'Médecin Dermatologue'),(43,'Médecin Pédiatre'),(44,'Médecin Psychiatre'),(45,'Médecin Gymécologue'),(46,'Psychologue'),(47,'je suis Patient'),(48,'Autre');
/*!40000 ALTER TABLE `speciality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (41,'Libéral installé'),(42,'Libéral remplacant'),(43,'Hospitalier exclusif'),(44,'Mixte(Hospitalier/salarié et libéral'),(45,'Salarié'),(46,'Retraité'),(47,'En recherche d emploi'),(48,'Autre');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (129,'saifjmaa54@gmail.com','[]','Saifjavascript','Saif',0,NULL),(132,'psychoplatform23@gmail.com','[]','WqmSa2fDMbmSBHW','Saif jmaa',0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-27 12:21:38
