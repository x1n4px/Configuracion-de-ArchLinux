-- MariaDB dump 10.19-11.2.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: fgumaDB
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ACTIVITY`
--

DROP TABLE IF EXISTS `ACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACTIVITY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codeFGUMA` varchar(255) DEFAULT NULL,
  `codeTitleUMA` varchar(255) DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  `dateEndInscription` date DEFAULT NULL,
  `dateStart` date DEFAULT NULL,
  `dateStartInscription` date DEFAULT NULL,
  `delegationCode` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `dontSendNotification` bit(1) DEFAULT NULL,
  `esBonus` bit(1) DEFAULT NULL,
  `expirationDays` int(11) DEFAULT NULL,
  `idVirtualCampus` bigint(20) DEFAULT NULL,
  `lengthHoursOffline` double DEFAULT NULL,
  `lengthHoursOnline` double DEFAULT NULL,
  `lengthHoursStreaming` double DEFAULT NULL,
  `maxRegistrations` int(11) DEFAULT NULL,
  `minimumAssistance` double DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notificationsMail` varchar(255) DEFAULT NULL,
  `numberCredits` double DEFAULT NULL,
  `numberInstallments` double DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `program` text DEFAULT NULL,
  `projectCode` varchar(255) DEFAULT NULL,
  `registerMinors` bit(1) DEFAULT NULL,
  `registerUMADiploma` varchar(255) DEFAULT NULL,
  `registrationJustFromPanel` bit(1) DEFAULT NULL,
  `showNotifications` bit(1) DEFAULT NULL,
  `virtualChannelCode` varchar(255) DEFAULT NULL,
  `billingType_id` bigint(20) DEFAULT NULL,
  `diplomaType_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `headquarter_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `modality_id` bigint(20) NOT NULL,
  `paymentAccount_id` bigint(20) DEFAULT NULL,
  `ratingType_id` bigint(20) DEFAULT NULL,
  `typeRegister_id` bigint(20) DEFAULT NULL,
  `pricePartialRegistration` double DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKswsv85lo4iqswncq0en65sim8` (`billingType_id`),
  KEY `FK3e5iih1juydabphq66xn588c` (`diplomaType_id`),
  KEY `FKejj7jwnp5913oai66scfwwwt4` (`event_id`),
  KEY `FK808b6o9mcv2lpvtb62fp6ilhu` (`headquarter_id`),
  KEY `FK8n17r3dsspovjbalqdryg5oe` (`language_id`),
  KEY `FK9ja0vixenmm5j3roc4hchykro` (`modality_id`),
  KEY `FK9uo5ukx85u1umhwlcbvv2f8uc` (`paymentAccount_id`),
  KEY `FKrpysde38txiutul07924rq4hk` (`ratingType_id`),
  KEY `FKjm5eudr988leum7i2d8d2s8nv` (`typeRegister_id`),
  CONSTRAINT `FK3e5iih1juydabphq66xn588c` FOREIGN KEY (`diplomaType_id`) REFERENCES `DIPLOMATYPE` (`id`),
  CONSTRAINT `FK808b6o9mcv2lpvtb62fp6ilhu` FOREIGN KEY (`headquarter_id`) REFERENCES `HEADQUARTER` (`id`),
  CONSTRAINT `FK8n17r3dsspovjbalqdryg5oe` FOREIGN KEY (`language_id`) REFERENCES `LANGUAGE` (`id`),
  CONSTRAINT `FK9ja0vixenmm5j3roc4hchykro` FOREIGN KEY (`modality_id`) REFERENCES `MODALITY` (`id`),
  CONSTRAINT `FK9uo5ukx85u1umhwlcbvv2f8uc` FOREIGN KEY (`paymentAccount_id`) REFERENCES `PAYMENTACCOUNT` (`id`),
  CONSTRAINT `FKejj7jwnp5913oai66scfwwwt4` FOREIGN KEY (`event_id`) REFERENCES `EVENT` (`id`),
  CONSTRAINT `FKjm5eudr988leum7i2d8d2s8nv` FOREIGN KEY (`typeRegister_id`) REFERENCES `TYPEREGISTER` (`id`),
  CONSTRAINT `FKrpysde38txiutul07924rq4hk` FOREIGN KEY (`ratingType_id`) REFERENCES `RATINGTYPE` (`id`),
  CONSTRAINT `FKswsv85lo4iqswncq0en65sim8` FOREIGN KEY (`billingType_id`) REFERENCES `BILLINGTYPE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACTIVITY`
--

LOCK TABLES `ACTIVITY` WRITE;
/*!40000 ALTER TABLE `ACTIVITY` DISABLE KEYS */;
INSERT INTO `ACTIVITY` VALUES
(97,'FGMFRAS110','CIFRA22014','2024-02-15','2024-01-21','2024-01-22','2024-01-01','MA0021','<p>Curso de Francés para nivel principiantes<br></p>',NULL,'',15,NULL,0,64,0,100,40,'2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde','charoFrances@gmail.com',2,NULL,'<p>Se partirá desde 0<br></p>','<p>Vocabulario, Gramática, videos e interacción simple con los alumnos<br></p>','FRA2291','',NULL,NULL,NULL,'MO1002',NULL,1,20,4,2,15,11,6,1,NULL,NULL),
(98,'GUIA_CAN','GUIA_CAN','2024-02-01','2024-01-20','2024-01-22','2024-01-14','GUIA_CAN',NULL,NULL,'',10,NULL,20,0,0,25,10,'Guías caninos de avalancha','ccaninos@gmail.com',1,NULL,NULL,NULL,'GUIA_CAN',NULL,'0',NULL,NULL,'GUIA_CAN',NULL,1,22,4,NULL,17,12,NULL,1,NULL,'R/X1LToKTO2vZC7/o7uT+w'),
(99,'FGMFRAS110','CIFRA22014','2024-02-15','2024-01-21','2024-01-22','2024-01-01','MA0021','<p>Curso de Francés para nivel principiantes<br></p>',NULL,'',15,NULL,0,64,0,100,40,'2º Cuatrimestre Ingés 50h - B1 DELF (VIDEOCONFERENCIA) - L/J - Tarde','charoFrances@gmail.com',2,NULL,'<p>Se partirá desde 0<br></p>','<p>Vocabulario, Gramática, videos e interacción simple con los alumnos<br></p>','FRA2291',NULL,NULL,NULL,NULL,'MO1002',NULL,1,20,4,2,15,11,6,1,NULL,NULL),
(100,'FGMFRAS110','CIFRA22014','2024-02-15','2024-01-21','2024-01-22','2024-01-01','MA0021','<p>Curso de Francés para nivel principiantes<br></p>',NULL,'',15,NULL,0,64,0,100,40,'2º Cuatrimestre Portugués 30h','arturoptg@gmail.com',2,NULL,'<p>Se partirá desde 0<br></p>','<p>Vocabulario, Gramática, videos e interacción simple con los alumnos<br></p>','FRA2291','',NULL,NULL,NULL,'MO1002',NULL,1,20,4,5,15,11,6,1,NULL,NULL),
(101,'eis20001','IIDA201','2024-02-01','2024-01-14','2024-01-15','2024-01-07','AP0021',NULL,NULL,'',10,NULL,100,0,0,100,20,'CELI (Certificado de lengua italiana) - FEBRERO 2023','italiani@fguma.es',1,NULL,NULL,NULL,'00211',NULL,'1',NULL,NULL,'2099918',NULL,1,23,4,4,13,11,6,1,NULL,'00'),
(102,'C1002OVN','CVIN09','2024-02-01','2024-01-20','2024-01-22','2024-01-14','CJ129',NULL,NULL,'',10,NULL,20,0,0,25,10,'Curso de vino','ccaninos@gmail.com',1,NULL,NULL,NULL,'CVINO',NULL,'0',NULL,NULL,'1001',NULL,1,24,4,NULL,17,12,NULL,2,300,'R/X1LToKTO2vZC7/o7uT+w'),
(103,'PROG00120','pyjfal','2024-05-20','2024-04-01','2024-05-08','2024-02-01','001','<p>Introducción a la programación de ordenadores basada en ejemplos \nprácticos para que los alumnos los copien, modifiquen y sirvan de base \npara variaciones de los mismos. A realizar en grupos pequeños de \nalumnos. Se usará un lenguaje de programación actual y pujante, con el \nque se programan la mayoría de los recursos en Inteligencia Artificial. \nSe comenzará desde un nivel básico para entender qué es programar. Se \ninstalarán las herramientas en equipos personales, aunque se trabajará \ncomo taller práctico en laboratorios de ordenadores. Los programas \ndidácticos elegidos están basados en la larga experiencia del \nprofesorado. En las últimas sesiones se desarrollará un proyecto de \nprogramación de hojas de cálculo Excel desde Python, páginas web y un \njuego real usable.</p>',NULL,'',25,NULL,13,12,0,25,25,'Aprender a programar en Python mediante ejemplos y ejercicios','info@fguma.es',0,NULL,NULL,'<p><span class=\"gdlr-tail\">Tema 1. Introducción. Instalación, ejecución, variables, tipos, entrada/salida.</span></p><div class=\"gdlr-course-curriculum-lecture\"><span class=\"gdlr-tail\">Tema 2. Cadenas. Números, Operaciones. Condiciones lógicas.  Decisiones.</span></div><div class=\"gdlr-course-curriculum-lecture\"><span class=\"gdlr-tail\">Tema 3. Bucles while. Dibujando figuras. Listas.</span></div><div class=\"gdlr-course-curriculum-lecture\"><span class=\"gdlr-tail\">Tema 4. Funciones. Organización. Lectura de ficheros. El sistema operativo.</span></div><div class=\"gdlr-course-curriculum-lecture\"><span class=\"gdlr-tail\">Tema 5. Proyectos: automatizando Excel con Python. Introducción a la programación Web. Construcción de un juego.</span></div>','0120','','0',NULL,NULL,'OG00120',NULL,2,21,4,NULL,17,12,7,1,NULL,NULL),
(104,'OON10020','ACON01','2024-06-19','2024-02-15','2024-02-01','2024-01-01','CA220',NULL,NULL,NULL,30,NULL,0,25,0,100,100,'Actuaciones con menores infractores y sus conductas delictivas','rosaraqg@gmail.com',0,NULL,NULL,NULL,'C9929',NULL,'0',NULL,NULL,'CA10',NULL,2,25,6,NULL,18,12,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `ACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACTIVITY_LANGUAGELEVEL`
--

DROP TABLE IF EXISTS `ACTIVITY_LANGUAGELEVEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACTIVITY_LANGUAGELEVEL` (
  `activities_id` bigint(20) NOT NULL,
  `languageLevels_id` bigint(20) NOT NULL,
  KEY `FKtmj16fvhgv9muhf84imsxbclu` (`languageLevels_id`),
  KEY `FKi7jqxbtr5qtt0mx91dae5s00q` (`activities_id`),
  CONSTRAINT `FKi7jqxbtr5qtt0mx91dae5s00q` FOREIGN KEY (`activities_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FKtmj16fvhgv9muhf84imsxbclu` FOREIGN KEY (`languageLevels_id`) REFERENCES `LANGUAGELEVEL` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACTIVITY_LANGUAGELEVEL`
--

LOCK TABLES `ACTIVITY_LANGUAGELEVEL` WRITE;
/*!40000 ALTER TABLE `ACTIVITY_LANGUAGELEVEL` DISABLE KEYS */;
INSERT INTO `ACTIVITY_LANGUAGELEVEL` VALUES
(101,2),
(97,1),
(97,2),
(99,1),
(99,2),
(100,1),
(100,2);
/*!40000 ALTER TABLE `ACTIVITY_LANGUAGELEVEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ANNOUNCEMENT`
--

DROP TABLE IF EXISTS `ANNOUNCEMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANNOUNCEMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANNOUNCEMENT`
--

LOCK TABLES `ANNOUNCEMENT` WRITE;
/*!40000 ALTER TABLE `ANNOUNCEMENT` DISABLE KEYS */;
INSERT INTO `ANNOUNCEMENT` VALUES
(9,'Convocatoria de Febrero');
/*!40000 ALTER TABLE `ANNOUNCEMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ANNOUNCEMENT_ACTIVITY`
--

DROP TABLE IF EXISTS `ANNOUNCEMENT_ACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANNOUNCEMENT_ACTIVITY` (
  `announcements_id` bigint(20) NOT NULL,
  `activities_id` bigint(20) NOT NULL,
  KEY `FKgkoo28dwjjya7rwapjggk6ipd` (`activities_id`),
  KEY `FKctg5viwku1w6bl348r9nxrc8j` (`announcements_id`),
  CONSTRAINT `FKctg5viwku1w6bl348r9nxrc8j` FOREIGN KEY (`announcements_id`) REFERENCES `ANNOUNCEMENT` (`id`),
  CONSTRAINT `FKgkoo28dwjjya7rwapjggk6ipd` FOREIGN KEY (`activities_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANNOUNCEMENT_ACTIVITY`
--

LOCK TABLES `ANNOUNCEMENT_ACTIVITY` WRITE;
/*!40000 ALTER TABLE `ANNOUNCEMENT_ACTIVITY` DISABLE KEYS */;
INSERT INTO `ANNOUNCEMENT_ACTIVITY` VALUES
(9,97),
(9,100),
(9,99),
(9,103);
/*!40000 ALTER TABLE `ANNOUNCEMENT_ACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APPUSER`
--

DROP TABLE IF EXISTS `APPUSER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APPUSER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `repImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdukupq0xdtvtn8c2g1ggv7lyx` (`department_id`),
  CONSTRAINT `FKdukupq0xdtvtn8c2g1ggv7lyx` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPUSER`
--

LOCK TABLES `APPUSER` WRITE;
/*!40000 ALTER TABLE `APPUSER` DISABLE KEYS */;
INSERT INTO `APPUSER` VALUES
(38,'Admin','Admin',9999,'10000000',''),
(51,'Martin','Gutierrez Mata',10006,'00000102',NULL),
(52,'Sara','Gonzalez Gargar',10007,'00000102',NULL),
(67,'Marina','Díaz Marsa',10006,'00001000',NULL),
(68,'Jose Luís','Caballero Bono',10006,'00100000',NULL),
(71,'Alejandra María','Silva García',NULL,'00010000',NULL),
(73,'Juan','Fernandez Mata',NULL,'00100000',NULL),
(75,'Yadira','Albedo Soria',NULL,'00100000','388eac5f-32b2-4525-8231-4bcb46eb39f8.webp'),
(76,'Alejandro','Díaz Martí',10007,'00100000',NULL),
(86,'Isabel','Ramirez Ortega',10007,'00010000',NULL);
/*!40000 ALTER TABLE `APPUSER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `APPUSER_validatorActivities`
--

DROP TABLE IF EXISTS `APPUSER_validatorActivities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APPUSER_validatorActivities` (
  `validators_id` bigint(20) NOT NULL,
  `validatorActivities_id` bigint(20) NOT NULL,
  KEY `FKa66ndqgqeaeicbxj5oitw0n13` (`validatorActivities_id`),
  KEY `FKlr3957vhpkf05a43hyhbs1ngc` (`validators_id`),
  CONSTRAINT `FKa66ndqgqeaeicbxj5oitw0n13` FOREIGN KEY (`validatorActivities_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FKlr3957vhpkf05a43hyhbs1ngc` FOREIGN KEY (`validators_id`) REFERENCES `APPUSER` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPUSER_validatorActivities`
--

LOCK TABLES `APPUSER_validatorActivities` WRITE;
/*!40000 ALTER TABLE `APPUSER_validatorActivities` DISABLE KEYS */;
INSERT INTO `APPUSER_validatorActivities` VALUES
(86,102),
(86,98);
/*!40000 ALTER TABLE `APPUSER_validatorActivities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATRIBUTE`
--

DROP TABLE IF EXISTS `ATRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATRIBUTE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(255) DEFAULT NULL,
  `viewOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATRIBUTE`
--

LOCK TABLES `ATRIBUTE` WRITE;
/*!40000 ALTER TABLE `ATRIBUTE` DISABLE KEYS */;
INSERT INTO `ATRIBUTE` VALUES
(7,'Idiomas',1);
/*!40000 ALTER TABLE `ATRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATTRIBUTES_ACTIVITY`
--

DROP TABLE IF EXISTS `ATTRIBUTES_ACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTRIBUTES_ACTIVITY` (
  `activities_id` bigint(20) NOT NULL,
  `atributes_id` bigint(20) NOT NULL,
  KEY `FKnwiowvwiemt3ka7quge4alcy5` (`atributes_id`),
  KEY `FKo5rlq8whyfmfvpi565bjk7162` (`activities_id`),
  CONSTRAINT `FKnwiowvwiemt3ka7quge4alcy5` FOREIGN KEY (`atributes_id`) REFERENCES `ATRIBUTE` (`id`),
  CONSTRAINT `FKo5rlq8whyfmfvpi565bjk7162` FOREIGN KEY (`activities_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATTRIBUTES_ACTIVITY`
--

LOCK TABLES `ATTRIBUTES_ACTIVITY` WRITE;
/*!40000 ALTER TABLE `ATTRIBUTES_ACTIVITY` DISABLE KEYS */;
INSERT INTO `ATTRIBUTES_ACTIVITY` VALUES
(97,7),
(99,7),
(100,7);
/*!40000 ALTER TABLE `ATTRIBUTES_ACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUDITVALIDATORS`
--

DROP TABLE IF EXISTS `AUDITVALIDATORS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUDITVALIDATORS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `appUser_id` bigint(20) DEFAULT NULL,
  `registration_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj51qtvohysaubcd7ugxdo9g2o` (`appUser_id`),
  KEY `FK5qbrj71nr5itgxu6yd4w6nhd4` (`registration_id`),
  CONSTRAINT `FK5qbrj71nr5itgxu6yd4w6nhd4` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`),
  CONSTRAINT `FKj51qtvohysaubcd7ugxdo9g2o` FOREIGN KEY (`appUser_id`) REFERENCES `APPUSER` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUDITVALIDATORS`
--

LOCK TABLES `AUDITVALIDATORS` WRITE;
/*!40000 ALTER TABLE `AUDITVALIDATORS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AUDITVALIDATORS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BILLINGTYPE`
--

DROP TABLE IF EXISTS `BILLINGTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BILLINGTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BILLINGTYPE`
--

LOCK TABLES `BILLINGTYPE` WRITE;
/*!40000 ALTER TABLE `BILLINGTYPE` DISABLE KEYS */;
INSERT INTO `BILLINGTYPE` VALUES
(1,'Tarjeta'),
(2,'PayPal'),
(3,'Transferencia');
/*!40000 ALTER TABLE `BILLINGTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BUSINESS`
--

DROP TABLE IF EXISTS `BUSINESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BUSINESS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `cif` varchar(255) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `socialReason` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqw8tagbwxyxdegwix5ero02no` (`country_id`),
  KEY `FKekmwxvle6h9lkhc7s5919mv35` (`province_id`),
  CONSTRAINT `FKekmwxvle6h9lkhc7s5919mv35` FOREIGN KEY (`province_id`) REFERENCES `PROVINCE` (`id`),
  CONSTRAINT `FKqw8tagbwxyxdegwix5ero02no` FOREIGN KEY (`country_id`) REFERENCES `COUNTRY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BUSINESS`
--

LOCK TABLES `BUSINESS` WRITE;
/*!40000 ALTER TABLE `BUSINESS` DISABLE KEYS */;
INSERT INTO `BUSINESS` VALUES
(9,'C/ Saturno nº 10 ','B92466028',NULL,'Inergis Netlab','Rincón de la Victoria',29730,108,29);
/*!40000 ALTER TABLE `BUSINESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAMPUS`
--

DROP TABLE IF EXISTS `CAMPUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAMPUS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campus` varchar(255) DEFAULT NULL,
  `isDown` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAMPUS`
--

LOCK TABLES `CAMPUS` WRITE;
/*!40000 ALTER TABLE `CAMPUS` DISABLE KEYS */;
INSERT INTO `CAMPUS` VALUES
(1,'E.T.S. Informática','\0');
/*!40000 ALTER TABLE `CAMPUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CERTIFICATE_SPEAKER`
--

DROP TABLE IF EXISTS `CERTIFICATE_SPEAKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CERTIFICATE_SPEAKER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `repCertificate` varchar(255) DEFAULT NULL,
  `requestCertificate` bit(1) DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `participator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2tcwpd5d2j199v23mbxn5pad8` (`activity_id`),
  KEY `FK88003qe8dw2hlodoy3mo95uwp` (`participator_id`),
  CONSTRAINT `FK2tcwpd5d2j199v23mbxn5pad8` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FK88003qe8dw2hlodoy3mo95uwp` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CERTIFICATE_SPEAKER`
--

LOCK TABLES `CERTIFICATE_SPEAKER` WRITE;
/*!40000 ALTER TABLE `CERTIFICATE_SPEAKER` DISABLE KEYS */;
INSERT INTO `CERTIFICATE_SPEAKER` VALUES
(2,'Certificado de Asistencia y Ponencia','e74da65d-ea21-44fa-bccd-b66c483c5919.pdf','',102,11),
(4,'Certificado de Asistencia y Ponencia',NULL,'',98,11);
/*!40000 ALTER TABLE `CERTIFICATE_SPEAKER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CITY`
--

DROP TABLE IF EXISTS `CITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CITY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cod_auto` int(11) DEFAULT NULL,
  `cod_mun` int(11) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK42r4nsawiar87gsk9iaped9gq` (`province_id`),
  CONSTRAINT `FK42r4nsawiar87gsk9iaped9gq` FOREIGN KEY (`province_id`) REFERENCES `PROVINCE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITY`
--

LOCK TABLES `CITY` WRITE;
/*!40000 ALTER TABLE `CITY` DISABLE KEYS */;
INSERT INTO `CITY` VALUES
(1,'Malaga',29601,29601,29),
(2,'Fuengirola',29601,29640,29),
(3,'Mijas',29601,29649,29);
/*!40000 ALTER TABLE `CITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLASSROOM`
--

DROP TABLE IF EXISTS `CLASSROOM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLASSROOM` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classroom` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `isDown` bit(1) DEFAULT NULL,
  `faculty_id` bigint(20) DEFAULT NULL,
  `headquarter_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkd701jmd8a8b6dntyfr9ubidp` (`faculty_id`),
  KEY `FKep631jy7smxe6sui3ibpsa78s` (`headquarter_id`),
  CONSTRAINT `FKep631jy7smxe6sui3ibpsa78s` FOREIGN KEY (`headquarter_id`) REFERENCES `HEADQUARTER` (`id`),
  CONSTRAINT `FKkd701jmd8a8b6dntyfr9ubidp` FOREIGN KEY (`faculty_id`) REFERENCES `FACULTY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLASSROOM`
--

LOCK TABLES `CLASSROOM` WRITE;
/*!40000 ALTER TABLE `CLASSROOM` DISABLE KEYS */;
INSERT INTO `CLASSROOM` VALUES
(15,'3.0.8',NULL,'\0',1,4),
(16,'Aula de comunicaciones de la bibliteca general de la UMA',NULL,'\0',1,6);
/*!40000 ALTER TABLE `CLASSROOM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COLLECTIVE`
--

DROP TABLE IF EXISTS `COLLECTIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COLLECTIVE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnn10rw9nnhoyk9dk7u5thgjf8` (`department_id`),
  CONSTRAINT `FKnn10rw9nnhoyk9dk7u5thgjf8` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COLLECTIVE`
--

LOCK TABLES `COLLECTIVE` WRITE;
/*!40000 ALTER TABLE `COLLECTIVE` DISABLE KEYS */;
INSERT INTO `COLLECTIVE` VALUES
(6,'Alumno/a UMA',10006),
(7,'Alumno/a Sin vinculación Universitaria',10006),
(9,'Estudiante/a UMA',10007),
(10,'Persona FGUMA',10007),
(11,'Alumno/a CELI',10006),
(12,'Ordinario',10006),
(13,'Personal FGUMA',10006),
(14,'Comunidad Universitaria UMA - Discapacidad igual o superior al 33%',10006),
(15,'Comunidad Universitaria UMA - Familia numerosa especial',10006),
(16,'Comunidad Universitaria UMA - Solicitantes de asilo, beneficiarios de protección internacional y apátridas',10006),
(17,'Becados/ Premios FGUMA',10006),
(18,'Ordinario',10007),
(19,'Becados / Premios FGUMA',10007),
(20,'Comunidad UMA',10007),
(21,'Personas externas',10007);
/*!40000 ALTER TABLE `COLLECTIVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMISSION`
--

DROP TABLE IF EXISTS `COMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMISSION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  `descriptionE` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nameE` varchar(255) DEFAULT NULL,
  `showEnglish` bit(1) DEFAULT NULL,
  `viewOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMISSION`
--

LOCK TABLES `COMISSION` WRITE;
/*!40000 ALTER TABLE `COMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COUNTRY`
--

DROP TABLE IF EXISTS `COUNTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COUNTRY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COUNTRY`
--

LOCK TABLES `COUNTRY` WRITE;
/*!40000 ALTER TABLE `COUNTRY` DISABLE KEYS */;
INSERT INTO `COUNTRY` VALUES
(1,'SIN ESPECIFICAR'),
(101,'ALBANIA'),
(102,'AUSTRIA'),
(103,'BELGICA'),
(104,'BULGARIA'),
(106,'CHIPRE'),
(107,'DINAMARCA'),
(108,'ESPAÑA'),
(109,'FINLANDIA'),
(110,'FRANCIA'),
(111,'GRECIA'),
(112,'HUNGRIA'),
(113,'IRLANDA'),
(114,'ISLANDIA'),
(115,'ITALIA'),
(116,'LIECHTENSTEIN'),
(117,'LUXEMBURGO'),
(118,'MALTA'),
(119,'MONACO'),
(120,'NORUEGA'),
(121,'PAISES BAJOS'),
(122,'POLONIA'),
(123,'PORTUGAL'),
(124,'ANDORRA'),
(125,'REINO UNIDO'),
(126,'ALEMANIA'),
(128,'RUMANIA'),
(129,'SAN MARINO'),
(130,'SANTA SEDE'),
(131,'SUECIA'),
(132,'SUIZA'),
(135,'UCRANIA'),
(136,'LETONIA'),
(137,'MOLDAVIA'),
(138,'BELARUS'),
(139,'GEORGIA'),
(141,'ESTONIA'),
(142,'LITUANIA'),
(143,'REPUBLICA CHECA'),
(144,'REPUBLICA ESLOVACA'),
(145,'BOSNIA Y HERZEGOVINA'),
(146,'CROACIA'),
(147,'ESLOVENIA'),
(148,'ARMENIA'),
(154,'RUSIA'),
(156,'MACEDONIA '),
(157,'SERBIA'),
(158,'MONTENEGRO'),
(170,'GUERNESEY'),
(171,'SVALBARD Y JAN MAYEN'),
(172,'ISLAS FEROE'),
(173,'ISLA DE MAN'),
(174,'GIBRALTAR'),
(175,'ISLAS DEL CANAL'),
(176,'JERSEY'),
(177,'ISLAS ALAND'),
(198,'OTROS PAISES O TERRITORIOS DE LA UNION EUROPE'),
(199,'OTROS PAISES O TERRITORIOS DEL RESTO DE EUROP'),
(201,'BURKINA FASO'),
(202,'ANGOLA'),
(203,'ARGELIA'),
(204,'BENIN'),
(205,'BOTSWANA'),
(206,'BURUNDI'),
(207,'CABO VERDE'),
(208,'CAMERUN'),
(209,'COMORES'),
(210,'CONGO'),
(211,'COSTA DE MARFIL'),
(212,'DJIBOUTI'),
(213,'EGIPTO'),
(214,'ETIOPIA'),
(215,'GABON'),
(216,'GAMBIA'),
(217,'GHANA'),
(218,'GUINEA'),
(219,'GUINEA-BISSAU'),
(220,'GUINEA ECUATORIAL'),
(221,'KENIA'),
(222,'LESOTHO'),
(223,'LIBERIA'),
(224,'LIBIA'),
(225,'MADAGASCAR'),
(226,'MALAWI'),
(227,'MALI'),
(228,'MARRUECOS'),
(229,'MAURICIO'),
(230,'MAURITANIA'),
(231,'MOZAMBIQUE'),
(232,'NAMIBIA'),
(233,'NIGER'),
(234,'NIGERIA'),
(235,'REPUBLICA CENTROAFRICANA'),
(236,'SUDAFRICA'),
(237,'RUANDA'),
(238,'SANTO TOME Y PRINCIPE'),
(239,'SENEGAL'),
(240,'SEYCHELLES'),
(241,'SIERRA LEONA'),
(242,'SOMALIA'),
(243,'SUDAN'),
(244,'SWAZILANDIA'),
(245,'TANZANIA'),
(246,'CHAD'),
(247,'TOGO'),
(248,'TUNEZ'),
(249,'UGANDA'),
(250,'REP.DEMOCRATICA DEL CONGO'),
(251,'ZAMBIA'),
(252,'ZIMBABWE'),
(253,'ERITREA'),
(260,'SANTA HELENA'),
(261,'REUNION'),
(262,'MAYOTTE'),
(263,'SAHARA OCCIDENTAL'),
(299,'OTROS PAISES O TERRITORIOS DE AFRICA'),
(301,'CANADA'),
(302,'ESTADOS UNIDOS DE AMERICA'),
(303,'MEXICO'),
(310,'ANTIGUA Y BARBUDA'),
(311,'BAHAMAS'),
(312,'BARBADOS'),
(313,'BELICE'),
(314,'COSTA RICA'),
(315,'CUBA'),
(316,'DOMINICA'),
(317,'EL SALVADOR'),
(318,'GRANADA'),
(319,'GUATEMALA'),
(320,'HAITI'),
(321,'HONDURAS'),
(322,'JAMAICA'),
(323,'NICARAGUA'),
(324,'PANAMA'),
(325,'SAN VICENTE Y LAS GRANADINAS'),
(326,'REPUBLICA DOMINICANA'),
(327,'TRINIDAD Y TOBAGO'),
(328,'SANTA LUCIA'),
(329,'SAN CRISTOBAL Y NIEVES'),
(340,'ARGENTINA'),
(341,'BOLIVIA'),
(342,'BRASIL'),
(343,'COLOMBIA'),
(344,'CHILE'),
(345,'ECUADOR'),
(346,'GUYANA'),
(347,'PARAGUAY'),
(348,'PERU'),
(349,'SURINAM'),
(350,'URUGUAY'),
(351,'VENEZUELA'),
(370,'SAN PEDRO Y MIQUELON '),
(371,'GROENLANDIA'),
(380,'ISLAS CAIMÁN'),
(381,'ISLAS TURCAS Y CAICOS'),
(382,'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS'),
(383,'GUADALUPE'),
(384,'ANTILLAS HOLANDESAS'),
(385,'SAN MARTIN (PARTE FRANCESA)'),
(386,'ARUBA'),
(387,'MONTSERRAT'),
(388,'ANGUILLA'),
(389,'SAN BARTOLOME'),
(390,'MARTINICA'),
(391,'PUERTO RICO'),
(392,'BERMUDAS'),
(393,'ISLAS VIRGENES BRITANICAS'),
(394,'GUAYANA FRANCESA'),
(395,'ISLAS MALVINAS'),
(396,'OTROS PAISES  O TERRITORIOS DE AMERICA DEL NO'),
(398,'OTROS PAISES O TERRITORIOS DEL CARIBE Y AMERI'),
(399,'OTROS PAISES O TERRITORIOS  DE SUDAMERICA'),
(401,'AFGANISTAN'),
(402,'ARABIA SAUDI'),
(403,'BAHREIN'),
(404,'BANGLADESH'),
(405,'MYANMAR'),
(407,'CHINA'),
(408,'EMIRATOS ARABES UNIDOS'),
(409,'FILIPINAS'),
(410,'INDIA'),
(411,'INDONESIA'),
(412,'IRAQ'),
(413,'IRAN'),
(414,'ISRAEL'),
(415,'JAPON'),
(416,'JORDANIA'),
(417,'CAMBOYA'),
(418,'KUWAIT'),
(419,'LAOS'),
(420,'LIBANO'),
(421,'MALASIA'),
(422,'MALDIVAS'),
(423,'MONGOLIA'),
(424,'NEPAL'),
(425,'OMAN'),
(426,'PAKISTAN'),
(427,'QATAR'),
(430,'COREA'),
(431,'COREA DEL NORTE '),
(432,'SINGAPUR'),
(433,'SIRIA'),
(434,'SRI LANKA'),
(435,'TAILANDIA'),
(436,'TURQUIA'),
(437,''),
(439,'BRUNEI'),
(440,'ISLAS MARSHALL'),
(441,'YEMEN'),
(442,'AZERBAIYAN'),
(443,'KAZAJSTAN'),
(444,'KIRGUISTAN'),
(445,'TADYIKISTAN'),
(446,'TURKMENISTAN'),
(447,'UZBEKISTAN'),
(448,'ISLAS MARIANAS DEL NORTE'),
(449,'PALESTINA'),
(450,'HONG KONG'),
(453,'BHUTÁN'),
(454,'GUAM'),
(455,'MACAO'),
(499,'OTROS PAISES O TERRITORIOS DE ASIA'),
(501,'AUSTRALIA'),
(502,'FIJI'),
(504,'NUEVA ZELANDA'),
(505,'PAPUA NUEVA GUINEA'),
(506,'ISLAS SALOMON'),
(507,'SAMOA'),
(508,'TONGA'),
(509,'VANUATU'),
(511,'MICRONESIA'),
(512,'TUVALU'),
(513,'ISLAS COOK'),
(515,'NAURU'),
(516,'PALAOS'),
(517,'TIMOR ORIENTAL'),
(520,'POLINESIA FRANCESA'),
(521,'ISLA NORFOLK'),
(522,'KIRIBATI'),
(523,'NIUE'),
(524,'ISLAS PITCAIRN'),
(525,'TOKELAU'),
(526,'NUEVA CALEDONIA'),
(527,'WALLIS Y FORTUNA'),
(528,'SAMOA AMERICANA'),
(599,'OTROS PAISES O TERRITORIOS DE OCEANIA');
/*!40000 ALTER TABLE `COUNTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DELIVERED_DOCUMENT`
--

DROP TABLE IF EXISTS `DELIVERED_DOCUMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DELIVERED_DOCUMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deliveredByWeb` bit(1) DEFAULT NULL,
  `deliveredDate` date DEFAULT NULL,
  `deliveredInPerson` bit(1) DEFAULT NULL,
  `repFile` varchar(255) DEFAULT NULL,
  `verified` bit(1) DEFAULT NULL,
  `registration_id` bigint(20) NOT NULL,
  `requiredDocument_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs5ibe7qslx1a5t8qrnhijquwh` (`registration_id`),
  KEY `FK534tsddq6x2nq6eo3314e3rk8` (`requiredDocument_id`),
  CONSTRAINT `FK534tsddq6x2nq6eo3314e3rk8` FOREIGN KEY (`requiredDocument_id`) REFERENCES `REQUIREDDOCUMENT` (`id`),
  CONSTRAINT `FKs5ibe7qslx1a5t8qrnhijquwh` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DELIVERED_DOCUMENT`
--

LOCK TABLES `DELIVERED_DOCUMENT` WRITE;
/*!40000 ALTER TABLE `DELIVERED_DOCUMENT` DISABLE KEYS */;
INSERT INTO `DELIVERED_DOCUMENT` VALUES
(9,NULL,'2024-01-22','','640970a3-ad76-46b7-967a-cdc614f27f5e.pdf','',155,18),
(10,'','2024-01-25','','c8968d06-e20b-43c4-be77-76af923306ec.pdf',NULL,157,18),
(11,NULL,'2024-02-05','',NULL,NULL,159,20);
/*!40000 ALTER TABLE `DELIVERED_DOCUMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEPARTMENT`
--

DROP TABLE IF EXISTS `DEPARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isCI` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `notificationEmail` varchar(255) DEFAULT NULL,
  `orderD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENT`
--

LOCK TABLES `DEPARTMENT` WRITE;
/*!40000 ALTER TABLE `DEPARTMENT` DISABLE KEYS */;
INSERT INTO `DEPARTMENT` VALUES
(9999,'\0','ADMINISTRADOR',NULL,'9999'),
(10006,'','Centro de idiomas','cidiomas@fguma.es',NULL),
(10007,'\0','Fundacion fguma','fundacion@fguma.es','1');
/*!40000 ALTER TABLE `DEPARTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DIPLOMATYPE`
--

DROP TABLE IF EXISTS `DIPLOMATYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DIPLOMATYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DIPLOMATYPE`
--

LOCK TABLES `DIPLOMATYPE` WRITE;
/*!40000 ALTER TABLE `DIPLOMATYPE` DISABLE KEYS */;
INSERT INTO `DIPLOMATYPE` VALUES
(1,'Físico'),
(2,'Oficial'),
(4,'Propio'),
(5,'Honorífico');
/*!40000 ALTER TABLE `DIPLOMATYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISCOUNT`
--

DROP TABLE IF EXISTS `DISCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DISCOUNT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `dateEnd` datetime(6) DEFAULT NULL,
  `dateStart` datetime(6) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcvagv1l054lhbfwhsh1cxn5iu` (`activity_id`),
  CONSTRAINT `FKcvagv1l054lhbfwhsh1cxn5iu` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISCOUNT`
--

LOCK TABLES `DISCOUNT` WRITE;
/*!40000 ALTER TABLE `DISCOUNT` DISABLE KEYS */;
INSERT INTO `DISCOUNT` VALUES
(82,'\0','2024-01-21 01:00:00.000000','2024-01-19 01:00:00.000000',15,'Descuento Ultima hora Alumnos UMA',97),
(83,'\0','2024-01-21 01:00:00.000000','2024-01-19 01:00:00.000000',15,'Descuento Ultima hora Alumnos UMA',99),
(84,'\0','2024-01-21 01:00:00.000000','2024-01-19 01:00:00.000000',15,'Descuento Ultima hora Alumnos UMA',100),
(85,'','2024-03-06 01:00:00.000000','2024-01-04 01:00:00.000000',5,'Descuento Alumnado FGUMA',103),
(86,'','2024-02-06 01:00:00.000000','2024-02-06 01:00:00.000000',15,'Descuento mayores de 55',103),
(87,'','2024-03-06 01:00:00.000000','2024-01-06 01:00:00.000000',20,'Descuento personal UMA',103);
/*!40000 ALTER TABLE `DISCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOCUMENT_LINKS`
--

DROP TABLE IF EXISTS `DOCUMENT_LINKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOCUMENT_LINKS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCUMENT_LINKS`
--

LOCK TABLES `DOCUMENT_LINKS` WRITE;
/*!40000 ALTER TABLE `DOCUMENT_LINKS` DISABLE KEYS */;
INSERT INTO `DOCUMENT_LINKS` VALUES
(1,'Normativa General y De Devoluciones','https://www.inergis.com/','RGN'),
(3,'Acreditaciones','http://fguma.es/idiomas-informacion-general/','NAC'),
(4,'Nivel de acreditación','https://www.uma.es/SECRETARIAGENERAL/secgenfiles/AcreditacionB1/RelacionAcreditacionesReconocidas.pdf','NACL2'),
(6,'Información sobre protección de datos personales','https://fguma.es/wp-content/uploads/general/informacion-lopd.pdf','RGPD'),
(7,'Guia para el desbloqueo de ventanas emergentes','https://webfguma.uma.es/contenidos/guia/Guia_para_el_desbloqueo_de_ventanas_emergentes_.pdf','PGPU'),
(8,'DOCUMENTOS ACREDITATIVOS EN LA UNIVERSIDAD DE MÁLAGA DEL CONOCIMIENTO DE LENGUAS EXTRANJERAS','https://www.uma.es/SECRETARIAGENERAL/secgenfiles/AcreditacionB1/RelacionAcreditacionesReconocidas.pdf','DELEXT'),
(9,'Aviso legal','https://fguma.es/fguma-aviso-legal/','DISCLAIMER'),
(10,'Política de Cookies',NULL,'COOKIES'),
(11,'Guía de becas','','SSG');
/*!40000 ALTER TABLE `DOCUMENT_LINKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EDITION`
--

DROP TABLE IF EXISTS `EDITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EDITION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course` varchar(255) DEFAULT NULL,
  `isActual` bit(1) DEFAULT NULL,
  `publishCourses` bit(1) DEFAULT NULL,
  `publishRegistration` bit(1) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `repImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl5xo8bhnal4q49ylc5dhg5gu0` (`department_id`),
  KEY `FKuu4cr551p27bd1nxgn1vkcfi` (`section_id`),
  CONSTRAINT `FKl5xo8bhnal4q49ylc5dhg5gu0` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENT` (`id`),
  CONSTRAINT `FKuu4cr551p27bd1nxgn1vkcfi` FOREIGN KEY (`section_id`) REFERENCES `SECTION` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EDITION`
--

LOCK TABLES `EDITION` WRITE;
/*!40000 ALTER TABLE `EDITION` DISABLE KEYS */;
INSERT INTO `EDITION` VALUES
(23,'Edición de primavera','','','',10006,NULL,NULL),
(24,'Cursos Fundacion Primarvera','','',NULL,10007,NULL,NULL);
/*!40000 ALTER TABLE `EDITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EDUCATIONALLEVEL`
--

DROP TABLE IF EXISTS `EDUCATIONALLEVEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EDUCATIONALLEVEL` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isDown` bit(1) DEFAULT NULL,
  `isLanguage` bit(1) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EDUCATIONALLEVEL`
--

LOCK TABLES `EDUCATIONALLEVEL` WRITE;
/*!40000 ALTER TABLE `EDUCATIONALLEVEL` DISABLE KEYS */;
INSERT INTO `EDUCATIONALLEVEL` VALUES
(21,'\0','\0','Licenciado/a',1),
(22,'\0','\0','Diplomado/a',2),
(23,'\0','\0','FP',3),
(24,'\0','\0','Bachillerato',4),
(25,'\0','\0','Otros',15),
(26,'\0','\0','Ingeniero/a Superior',6),
(27,'\0','\0','Ingeniero/a Técnico',7),
(28,'\0','\0','Máster',8),
(29,'\0','\0','Graduado/a',9),
(30,'\0','\0','Arquitecto/a',10),
(31,'\0','\0','Arquitecto/a Técnico',11),
(33,'\0','\0','Grado',13),
(34,'\0','\0','Posgrado',14),
(35,'\0','\0','Sin determinar',0);
/*!40000 ALTER TABLE `EDUCATIONALLEVEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT`
--

DROP TABLE IF EXISTS `EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `repImage` varchar(255) DEFAULT NULL,
  `edition_id` bigint(20) DEFAULT NULL,
  `showCalification` bit(1) DEFAULT NULL,
  `article` varchar(255) DEFAULT NULL,
  `canal` varchar(255) DEFAULT NULL,
  `delegation` varchar(255) DEFAULT NULL,
  `enablePaypal` bit(1) DEFAULT NULL,
  `enableTPV` bit(1) DEFAULT NULL,
  `isAccreditation` bit(1) DEFAULT NULL,
  `isSummer` bit(1) DEFAULT NULL,
  `justOneRegistration` bit(1) DEFAULT NULL,
  `publish` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK69orv9a8nfyi871iqaxk1ow85` (`edition_id`),
  CONSTRAINT `FK69orv9a8nfyi871iqaxk1ow85` FOREIGN KEY (`edition_id`) REFERENCES `EDITION` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT`
--

LOCK TABLES `EVENT` WRITE;
/*!40000 ALTER TABLE `EVENT` DISABLE KEYS */;
INSERT INTO `EVENT` VALUES
(20,'Evento de primavera','c44c4525-23bb-4b2c-959c-604c6046beea.jpg',23,'','UE AC','1D','1821','\0','\0','\0','\0','\0',''),
(21,'Evento de primavera',NULL,24,'','dd1-','dd1-','dd1-','\0','\0','\0','\0','\0',''),
(22,'Guías caninos de avalancha',NULL,24,'','dd1-','dd1-','dd1-','\0','\0','\0','','\0',''),
(23,'Acreditaciones del CI',NULL,23,'','OOSBE','01E','AI 012','\0','\0','','\0','\0',''),
(24,'Vinoteca',NULL,24,'','xx','91','91','\0',NULL,'\0','\0','\0',''),
(25,'Cursos Online 2024',NULL,24,'','xx','CEO021','ASKK1','','','\0','\0','\0','');
/*!40000 ALTER TABLE `EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACULTY`
--

DROP TABLE IF EXISTS `FACULTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACULTY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `faculty` varchar(255) DEFAULT NULL,
  `isDown` bit(1) DEFAULT NULL,
  `isLanguage` bit(1) DEFAULT NULL,
  `campus_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp8g458q2ug8v2drbwwfdhuo5t` (`campus_id`),
  CONSTRAINT `FKp8g458q2ug8v2drbwwfdhuo5t` FOREIGN KEY (`campus_id`) REFERENCES `CAMPUS` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACULTY`
--

LOCK TABLES `FACULTY` WRITE;
/*!40000 ALTER TABLE `FACULTY` DISABLE KEYS */;
INSERT INTO `FACULTY` VALUES
(1,'ETSI Informaca','\0','',1);
/*!40000 ALTER TABLE `FACULTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FGUMA_UMA`
--

DROP TABLE IF EXISTS `FGUMA_UMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FGUMA_UMA` (
  `C_INCIDENCIA` int(11) NOT NULL AUTO_INCREMENT,
  `APELLIDO1` varchar(250) NOT NULL,
  `APELLIDO2` varchar(250) NOT NULL,
  `CODIGO` int(11) DEFAULT NULL,
  `CODIGO_UNIVERSITARIO` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(250) NOT NULL,
  `ESTADO` int(11) NOT NULL,
  `FECHA_DUMA` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `ID_CURSO` int(11) NOT NULL,
  `NIF` varchar(50) NOT NULL,
  `NOMBRE` varchar(250) NOT NULL,
  `NUM_MATRICULA` bigint(20) NOT NULL,
  `TD` tinyint(3) NOT NULL,
  PRIMARY KEY (`C_INCIDENCIA`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FGUMA_UMA`
--

LOCK TABLES `FGUMA_UMA` WRITE;
/*!40000 ALTER TABLE `FGUMA_UMA` DISABLE KEYS */;
INSERT INTO `FGUMA_UMA` VALUES
(1,'García Gutierrez','',11,NULL,'exsejoi@gmail.com',4,'2023-11-23','2023-11-21','2023-10-11',0,'11111112F','Samara',72,1),
(2,'García Gutierrez','',11,NULL,'exsejoi@gmail.com',4,'2023-11-23','2023-11-21','2023-10-11',0,'11111112F','Samara',72,1),
(3,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-23','2023-11-21','2023-10-11',0,'77429667F','Juan',75,1),
(4,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-11-23','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(5,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-11-23','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(6,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(7,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(8,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(9,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(10,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(11,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(12,'de Luca',' Garcia',23,NULL,'deluca@gmail.com',4,'2023-11-25','2023-11-21','2023-11-21',23,'77429667F','Juan',75,1),
(13,'Fernandez',' Maldona',13,NULL,'paco@gmail.com',4,'2023-12-01',NULL,NULL,13,'55556664','Paco',73,3),
(14,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(15,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(16,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(17,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(18,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(19,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(20,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(21,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(22,'García',' Gutierrez',11,NULL,'exsejoi@gmail.com',4,'2023-12-01','2023-11-21','2023-10-11',11,'11111112F','Samara',72,1),
(23,'Fernandez',' Maldona',13,NULL,'paco@gmail.com',4,'2023-12-02',NULL,NULL,13,'55556664','Paco',73,3),
(24,'Fernandez',' Maldona',13,NULL,'paco@gmail.com',4,'2023-12-02',NULL,NULL,13,'55556664','Paco',73,3),
(25,'Fernandez',' Maldona',13,NULL,'paco@gmail.com',4,'2023-12-02',NULL,NULL,13,'55556664','Paco',73,3),
(26,'Garrido',' ',13,NULL,'paco@gmail.com',4,'2023-12-13','2023-12-21','2023-11-11',13,'55556664','Juan',108,3);
/*!40000 ALTER TABLE `FGUMA_UMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILEREPENTRYBEANS`
--

DROP TABLE IF EXISTS `FILEREPENTRYBEANS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FILEREPENTRYBEANS` (
  `fileName` varchar(255) NOT NULL,
  `mimeType` varchar(255) DEFAULT NULL,
  `originalFileName` varchar(255) DEFAULT NULL,
  `uploadDate` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`fileName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILEREPENTRYBEANS`
--

LOCK TABLES `FILEREPENTRYBEANS` WRITE;
/*!40000 ALTER TABLE `FILEREPENTRYBEANS` DISABLE KEYS */;
INSERT INTO `FILEREPENTRYBEANS` VALUES
('0103ddf8-e612-42d4-ab01-e802053943bf.png','application/octet-stream','img1.png','2023-11-22 13:42:59.464000'),
('0323cabd-a203-433c-be8b-3e2be5e668c7.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:30:11.876000'),
('04736f94-13e6-4042-b339-e6676008b3af.webp','application/octet-stream','fondoMascara.webp','2023-11-20 14:21:34.145000'),
('04e47fbd-cbf6-4ef3-9787-22b6de800d6a.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:50:08.503000'),
('06e63836-cd06-4d70-88d2-e92d57f9b6ea.pdf','application/octet-stream','Diploma_Juan_Miguel_de_los_Rios_Caparros_1602097479968.pdf','2024-01-04 11:13:24.357000'),
('08eb5e00-0ca3-4c7a-91bc-68d7a3ea940c.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:34:13.627000'),
('095bf9db-b411-41d6-bef1-6bcf35a4d4a7.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:35:17.429000'),
('09ac2102-c048-4b85-9692-a5e4b5fdc2ad.png','application/octet-stream','fondoMascara.png','2024-01-25 18:48:39.385000'),
('0d9231e4-dfe5-4c42-bc5c-5ff083a79da5.jpg','application/octet-stream','maxresdefault.jpg','2024-02-07 23:32:07.161000'),
('0f9cbe09-69c6-4757-95a7-33ccaa4444fe.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:56:01.523000'),
('110ee442-df96-486e-a1f9-bd79b621b37b.pdf','application/octet-stream','tarea6.pdf','2023-12-20 12:38:31.507000'),
('11f335d8-1c5a-4d48-b284-04f0656be041.pdf','application/octet-stream','certificado.pdf','2024-01-25 18:14:04.848000'),
('1307eca0-1980-4ecb-b4d7-86ffd46d0a77.pdf','application/octet-stream','Certificado.pdf','2024-01-22 10:40:39.428000'),
('132009b0-ad38-4d2d-a795-60ed561d1ea5.pdf','application/octet-stream','ca45cc59-108d-4f8f-b66a-84c23614fa29.pdf (6).pdf','2023-11-22 23:51:26.685000'),
('14b2f6e7-41da-4da1-9edb-6e25b6f99b61.jpg','application/octet-stream','centro-idiomas-fguma.jpg','2023-12-20 09:32:00.933000'),
('1648381c-b615-46c4-add7-60f020b7403f.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 14:06:17.407000'),
('17c83ccd-cd45-4c33-83d1-815a7021746b.png','application/octet-stream','fondoMascara.png','2024-01-25 18:51:54.883000'),
('19ca408c-1219-4de6-b452-93a0ee96449b.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:55:34.105000'),
('1a023d19-31b0-4bf9-bde7-b91c68affeed.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:54:38.412000'),
('1a102d7a-9998-4612-918e-84eda76e7ce7.jpg','application/octet-stream','maxresdefault.jpg','2024-02-07 23:40:34.521000'),
('1b0d8a1e-6426-4537-af22-9609b14f196b.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 14:15:49.031000'),
('1c5ae31e-1809-426b-9d42-388079f76780.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:21:29.560000'),
('1c91ce48-0a1d-4ebe-869b-5b1f165a79df.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 10:47:04.966000'),
('1cbaa012-f5a7-4bf2-ae11-a0bf3672f134.png','application/octet-stream','Screenshot from 2023-11-21 11-27-23.png','2023-11-21 11:56:45.953000'),
('1e716342-e34a-4630-a946-d0162b5983b8.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:13:15.539000'),
('20dc5299-d926-49f1-afe2-4f83346a90d0.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 12:34:12.974000'),
('2163254e-dccd-4351-8b4e-ede88bbf283c.pdf','application/octet-stream','f149c38b-2c49-466d-b829-b7faeeeb769c.pdf.pdf','2024-01-04 11:22:02.649000'),
('223343b7-eed9-4f4b-b3b8-3815f369b280.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:58:16.993000'),
('22f3e716-0543-4771-8cf2-50df4e080167.pdf','application/octet-stream','practica-paquetes.pdf','2023-11-21 11:17:48.348000'),
('2319010f-a38e-4c58-ac1f-34f0754cda96.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:51:10.324000'),
('25bf1e78-2dde-4666-aa51-fbaa8a309bf6.png','application/octet-stream','Screenshot from 2023-11-22 13-03-22.png','2023-11-22 13:34:29.162000'),
('25e90477-dbe3-49d3-b3e2-cf892f859525.pdf','application/octet-stream','tarea6.pdf','2023-11-22 14:07:24.782000'),
('26873a18-3d49-4518-9d52-832e94840a79.pdf','application/octet-stream','ca45cc59-108d-4f8f-b66a-84c23614fa29.pdf (6).pdf','2023-11-22 23:35:39.781000'),
('2bcbec34-eb96-47e1-aa80-34b343f739a4.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 10:59:17.268000'),
('2ca5ded3-f799-469e-87f9-4c35a966c5a1.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:52:12.175000'),
('2d618533-018f-463e-b47f-f8a719f0af33.JPG','application/octet-stream','Imagen_para_plataforma.JPG','2023-12-15 13:04:15.822000'),
('2db85085-2f97-431b-9728-fea22e95e2c8.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:35:02.938000'),
('2e328ee3-0571-4b40-acd2-c74c4a0e1488.avif','application/octet-stream','matrix-style-binary-code-digital-falling-numbers-blue-background_1017-37387.avif','2024-01-25 18:57:18.508000'),
('2fbdf32d-156f-4674-b292-c1efb0d55357.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:17:08.066000'),
('30e41f43-e721-4099-9209-21f913b9bc66.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:15:49.551000'),
('373cb41e-dbb9-4d99-8274-66a60fa16369.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:49:28.087000'),
('388eac5f-32b2-4525-8231-4bcb46eb39f8.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-02-05 11:39:29.793000'),
('3e6fa3af-f0a3-46c0-8e76-39752e5d8f06.jpg','application/octet-stream','onlinefguma2021.jpg','2024-01-22 10:31:38.667000'),
('3ebbcc67-cb5a-4c9c-9c17-91b1eab3287b.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:35:54.468000'),
('3ee78caa-c8f2-422d-92f2-e4dd2bcd7c9d.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 10:45:20.574000'),
('42cf5935-e719-4961-ad88-473ec52ed6be.avif','application/octet-stream','photo-1547425260-76bcadfb4f2c.avif','2023-11-20 15:42:19.665000'),
('46763a90-6b0a-4618-af87-2123ae8f90a9.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:35:13.940000'),
('472def7a-abb8-49ff-8ca1-5211a32a9f46.pdf','application/octet-stream','ca45cc59-108d-4f8f-b66a-84c23614fa29.pdf (6).pdf','2023-11-23 00:05:24.826000'),
('491ece8a-aee0-41e8-9ea2-6ad5e4128ff0.webp','application/octet-stream','juan-gomez-jurado.webp','2023-12-16 12:09:57.155000'),
('497a119a-5d98-4a50-8bad-30f1d28e72e8.JPG','application/octet-stream','Imagen_para_plataforma.JPG','2023-12-15 13:05:06.000000'),
('4ac3aaa9-9967-4968-b03d-252bdf5b432c.pdf','application/octet-stream','Aceptaci?n de normas y tarifas INTENSIVOS ENE-FEB 2024_annotated.pdf','2024-01-25 18:19:15.949000'),
('4e0afb52-1f7f-4153-bdcb-b6ed0fce7afc.webp','application/octet-stream','juan-gomez-jurado.webp','2023-12-19 10:49:43.226000'),
('4f528d19-e6d9-4de1-94e3-e1b4c679e543.pdf','application/octet-stream','Certificado.pdf','2024-01-22 10:38:35.505000'),
('4fb57c0e-e468-42e3-a216-dc373d16a1d3.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:37:51.100000'),
('510de68a-577e-4049-9019-e59e44562e72.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:38:43.696000'),
('53c4f5a5-95ca-4a88-8cca-8ebbab916134.jpg','application/octet-stream','HD-wallpaper-not-found-404-error.jpg','2023-11-20 12:31:44.455000'),
('55bc4634-dbdc-4611-b7a7-8ef3522770e7.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-21 11:56:13.936000'),
('56039817-25f5-4adc-ae1e-e05361d82cbc.pdf','application/octet-stream','Diploma_Juan_Miguel_de_los_Rios_Caparros_1602097479968.pdf','2024-01-04 11:09:33.120000'),
('565cab92-b23e-47c2-97a8-2cc02824e4f4.webp','application/octet-stream','juan-gomez-jurado.webp','2023-12-19 10:47:59.856000'),
('5aa75b67-7f6b-4f0e-aeff-3399b94ce5b4.pdf','application/octet-stream','ssh.pdf','2023-12-20 12:35:43.970000'),
('5ab0cc25-e50b-4f11-8d2e-a33291741902.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 11:38:14.138000'),
('5d3c247c-b1a9-41de-9cab-dbceff87dfa5.JPG','application/octet-stream','Imagen_para_plataforma.JPG','2023-12-15 13:05:20.449000'),
('5d62c9da-5d99-4f73-a053-4ea0f309162b.pdf','application/octet-stream','practica-paquetes.pdf','2023-11-21 11:20:48.981000'),
('5ddaaed2-688e-42f2-83f1-821eddaa87e2.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-21 12:01:36.105000'),
('5fdeb527-4e33-4c7b-85da-0ccb01de918e.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 10:51:40.250000'),
('607d4a22-60b7-448a-bd75-b66ad1e8faf9.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 10:57:30.046000'),
('611826c5-a996-4914-8e99-8c5b5c0a200e.jpeg','application/octet-stream','download.jpeg','2024-01-25 18:48:25.824000'),
('63251b6b-c618-451a-97d3-1bec8e8c4b51.avif','application/octet-stream','matrix-style-binary-code-digital-falling-numbers-blue-background_1017-37387.avif','2024-01-25 18:58:12.482000'),
('640970a3-ad76-46b7-967a-cdc614f27f5e.pdf','application/octet-stream','certificado.pdf','2024-01-22 10:36:16.448000'),
('6649557a-a6d4-47b6-a3cc-b57447cd06ad.jpg','application/octet-stream','HD-wallpaper-not-found-404-error.jpg','2023-11-20 12:30:40.286000'),
('6a8cd141-538b-4cd3-adae-657d0963c9b6.webp','application/octet-stream','fondoMascara.webp','2023-11-20 14:53:25.853000'),
('6b52c2d3-611d-438b-924a-f93d5e5deb7e.webp','application/octet-stream','image.webp','2024-01-22 10:43:26.054000'),
('6c8230d9-fd3f-411b-b85d-c68640fa7b6b.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:56:09.664000'),
('6e97d343-aae0-40a3-95d1-69a705c958a4.pdf','application/octet-stream','Diploma_Juan_Miguel_de_los_Rios_Caparros_1602097479968.pdf','2024-01-04 11:14:06.293000'),
('6ec57bd1-aa64-4cc1-a418-84f2dda77631.webp','application/octet-stream','04736f94-13e6-4042-b339-e6676008b3af.webp','2023-11-20 14:26:04.839000'),
('7153e62a-3005-4f66-9fc1-4665ce1a39af.pdf','application/octet-stream','certificado-4.pdf','2024-02-02 18:57:40.195000'),
('73e793bf-281d-470a-992f-e7744fbaba86.png','application/octet-stream','fondoMascara.png','2023-11-20 12:29:21.587000'),
('75808d76-000b-4d20-98fc-a7a029f9c2d5.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:30:22.423000'),
('762ae5d2-ac13-4a71-8cf0-1d0eaea61e4e.pdf','application/octet-stream','f149c38b-2c49-466d-b829-b7faeeeb769c.pdf.pdf','2024-01-04 11:20:18.718000'),
('7658aa99-dd07-4ab9-bb15-ea08c6ffa68d.webp','application/octet-stream','juan-gomez-jurado.webp','2023-12-19 10:50:27.260000'),
('7980fc04-407e-4774-8aee-fa20862c2e87.png','application/octet-stream','Screenshot from 2023-11-21 11-27-23.png','2023-11-21 12:01:55.361000'),
('7a605591-78eb-43f8-8341-50fbcf4a4c9c.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:37:02.609000'),
('7a7ff3b9-3876-4389-b7d4-0d229248c43b.pdf','application/octet-stream','certificado.pdf','2024-01-25 18:17:06.402000'),
('7aa026f7-c5f1-48e5-87dd-e540a76e479d.jpg','application/octet-stream','onlinefguma2021.jpg','2024-01-22 10:32:17.781000'),
('7cba7ce3-7f5b-4cc3-bd23-ea6691ca72a1.webp','application/octet-stream','dni.webp','2024-01-22 10:42:55.890000'),
('7ea61665-2279-4918-834b-9b956000a9b8.pdf','application/octet-stream','sfa.pdf','2023-11-20 16:24:24.222000'),
('7ee5b09f-b8c8-4df2-ab6d-f4ee77dc7d0a.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:40:22.669000'),
('800e5e1a-589b-46d4-b5b2-cefbb38635cd.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:43:12.399000'),
('801de683-4ded-4f68-adf9-a3aacb273b36.JPG','application/octet-stream','Imagen_para_plataforma.JPG','2023-12-15 13:14:28.890000'),
('804815b6-40f1-459e-bdb9-263eaed5f416.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:19:02.605000'),
('83ac27b6-751b-4cc4-a5a2-9b5b84f1c205.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:53:09.058000'),
('8c42fdb1-8f6f-4475-a29d-c8cd99690d01.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:28:05.854000'),
('8e349650-d06b-4d36-beee-f52d136cdcb1.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:49:58.855000'),
('8ebddb16-a10f-474e-bc0d-85935f8de4c1.webp','application/octet-stream','juan-gomez-jurado.webp','2023-12-19 10:45:37.315000'),
('8ee3449e-65be-4ebf-9b8e-1eb430fe7c9d.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:49:57.858000'),
('8fc29a6c-c4f1-4a92-9782-4e155e9bc81c.jpg','application/octet-stream','FP-EMPLEO-CAMPUS-VIRTUAL___002_.jpg','2023-12-20 09:33:16.857000'),
('989a1e0d-2eb6-4ca2-a758-eb8f72c7076b.jpg','application/octet-stream','perfil-resilencia.jpg','2023-12-16 11:47:16.475000'),
('9bc75a55-9413-4012-9d49-01994ae9eb79.pdf','application/octet-stream','ssh.pdf','2023-12-18 23:48:17.345000'),
('9c5d4885-00e9-421e-a0c9-1f2db43fe467.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:27:59.584000'),
('9f7bd994-147c-4c45-bbc2-a48c653a998f.jpg','application/octet-stream','HD-wallpaper-not-found-404-error.jpg','2024-01-25 18:58:08.862000'),
('a0d462a3-1d97-4f26-8c78-7a89b5c55b48.pdf','application/octet-stream','Aceptaci?n de normas y tarifas INTENSIVOS ENE-FEB 2024_annotated.pdf','2024-01-25 18:17:59.460000'),
('a1f35eb7-4932-44c9-8f95-b22bbe17f1eb.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:09:13.977000'),
('a73fc2ea-32b0-44a5-831e-3d053b9bff78.png','application/octet-stream','img1.png','2023-11-22 13:37:11.171000'),
('a7ba20e3-8248-4faa-bb65-785b9af371ba.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-21 11:55:54.903000'),
('a9152253-e5e8-433c-85a8-88bf6ba4f74b.png','application/octet-stream','fondoMascara.png','2024-01-25 18:42:51.521000'),
('aacf28f6-e43e-4538-9437-5b8fa3bc0f97.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:29:26.219000'),
('ab3e2040-5b34-4f74-8a65-cef4d746b72a.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:37:10.606000'),
('ab53fe8f-8062-4b1b-ab4b-615120dd052f.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:38:24.822000'),
('ad9cf282-bb9d-42f9-b390-b3ea66204694.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:24:29.852000'),
('afa2b162-f946-4250-a170-366852dba0b4.png','application/octet-stream','e22a6efdddb911f6709f4e6186b24fd8.png','2024-01-22 10:22:04.042000'),
('b2176506-6f9a-4f2e-91bb-b75c3228e0b8.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:17:41.084000'),
('b3895bb5-c723-4acb-b2cf-29e99f7646cd.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:51:15.643000'),
('b6bb1d31-0b07-4a60-82ec-d8dd9599b652.png','application/octet-stream','fondoMascara.png','2024-01-25 18:43:24.301000'),
('b8b4fc95-c72f-40c9-83cd-9c9afd4667bb.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:23:53.987000'),
('b8b87eda-7324-4cc1-9e0a-565db66118df.jpg','application/octet-stream','HD-wallpaper-not-found-404-error.jpg','2023-11-20 14:53:42.426000'),
('b99fd0a9-1dc4-4bec-a5d6-d77f29dde76c.pdf','application/pdf','practicaSSH.pdf','2023-11-20 11:53:40.880000'),
('bd225d08-ecdf-4954-ae88-9ee7eb8d5299.jpg','application/octet-stream','perfil-resilencia.jpg','2023-12-16 12:08:57.966000'),
('bd25478a-7b0e-46a3-9742-07732812f788.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:46:24.268000'),
('bd656f70-5b17-4541-8c32-e940534c5e5d.avif','application/octet-stream','matrix-style-binary-code-digital-falling-numbers-blue-background_1017-37387.avif','2024-01-25 18:56:12.929000'),
('bdf12472-ecad-4295-b90f-1cd93444bf32.pdf','application/octet-stream','wuolah-free-Test-Tema4.pdf','2023-12-18 23:47:23.887000'),
('bdf4dffe-c86f-4727-942f-11c5469baf29.pdf','application/pdf','practicaSSH.pdf','2023-11-20 12:00:22.783000'),
('bea89b81-5ce3-4b2e-ab5d-205f34bd48e3.pdf','application/octet-stream','tarea6.pdf','2023-11-22 14:05:12.851000'),
('bf371a8b-3e5a-4578-8f6e-d6b1a44fdbd2.pdf','application/octet-stream','certificado.pdf','2024-01-25 18:15:08.063000'),
('c0e80575-87d3-406c-9a9b-e02bf0b15d82.webp','application/octet-stream','juan-gomez-jurado.webp','2023-12-19 10:52:20.364000'),
('c13727fe-7ea8-49dc-b135-c145f21c77b8.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:34:24.799000'),
('c28136c0-4ec2-4eac-8e2b-e4419139f2e6.png','application/octet-stream','img1.png','2023-11-22 13:49:53.912000'),
('c439fb3c-72ad-4cdb-8519-aef21c2901ef.pdf','application/octet-stream','certificado.pdf','2024-01-25 18:16:13.485000'),
('c44c4525-23bb-4b2c-959c-604c6046beea.jpg','application/octet-stream','onlinefguma2021.jpg','2024-01-22 10:17:20.992000'),
('c5627804-cbee-430b-98ac-8c2a7fc4c1cc.webp','application/octet-stream','dni.webp','2024-01-22 10:42:40.399000'),
('c696b605-23f0-46cb-bf0c-f7d889ad18fa.pdf','application/octet-stream','ca45cc59-108d-4f8f-b66a-84c23614fa29.pdf (6).pdf','2023-11-22 23:35:46.382000'),
('c8968d06-e20b-43c4-be77-76af923306ec.pdf','application/octet-stream','certificado.pdf','2024-01-25 18:20:06.490000'),
('c93509c6-2ec6-4780-ae53-5138f25500d2.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 21:44:36.565000'),
('cb56cedc-a4c8-42f2-b852-fbd0280a923e.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 10:50:47.024000'),
('ce21c26f-576c-4bd1-97e8-5169e4a98bfc.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:22:10.027000'),
('ceba7ea7-df60-47c3-aa72-1394faabec31.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:57:09.560000'),
('d126510e-38e1-4fb5-8c4c-488e22d72feb.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:25:21.083000'),
('d174d976-0223-49b1-a713-f90c4b9d206a.pdf','application/octet-stream','practica-paquetes.pdf','2023-11-21 11:38:41.476000'),
('d17d4813-d377-4e05-9e65-75fe35c80039.jpeg','application/octet-stream','fileDownloader.jpeg','2023-12-20 09:32:23.722000'),
('d1ff3033-1ee8-4a15-a734-a55732bed3a4.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:39:38.368000'),
('d26e9063-fd79-41b6-a575-c53c360c0cc1.png','application/octet-stream','pancho.png','2023-11-21 11:56:58.653000'),
('d2b22aab-6ebc-4d8c-907d-76bde0e9a77f.png','application/octet-stream','fondoMascara.png','2024-01-25 18:37:33.645000'),
('d52a6771-8fd3-4f5b-a674-e38fa0e6a4b7.png','application/octet-stream','Screenshot from 2023-11-22 12-46-54.png','2023-11-22 13:27:51.968000'),
('d6536cb1-8fec-4274-bf45-79827c91f5a2.jpg','application/octet-stream','onlinefguma2021.jpg','2024-01-22 10:39:53.260000'),
('d6df2645-892b-4aec-9e2e-826a75fbad6c.jpg','application/octet-stream','HD-wallpaper-not-found-404-error.jpg','2024-01-25 18:54:50.333000'),
('d8c4e1f9-5f9a-4afd-afea-0fa801f847d1.webp','application/octet-stream','2165947w620.webp','2023-12-16 11:32:36.923000'),
('d909efb5-ae77-4ab9-8e36-8b38db4117b7.pdf','application/octet-stream','certificado-3.pdf','2024-02-02 18:55:37.320000'),
('d946677e-bbea-4550-8f46-097442f6dd38.png','application/octet-stream','fondoMascara.png','2024-01-25 18:44:05.415000'),
('dbc9d447-a41b-4f7d-aba0-6272d250a420.pdf','application/octet-stream','wuolah-free-examenENERO2023.pdf','2024-01-04 11:20:45.447000'),
('dcc7c3ff-ef29-42e1-a9ba-029275c0aee3.png','application/octet-stream','fondoMascara.png','2024-01-25 18:42:32.664000'),
('dcdf02ba-f224-4746-b479-43f1a60fbdfd.png','application/octet-stream','img1.png','2023-11-22 13:33:55.795000'),
('deb96bf6-906d-4043-9f4e-6f0f8c9424e5.pdf','application/octet-stream','wuolah-free-Test-Tema4.pdf','2023-12-18 23:44:06.172000'),
('e1155c8e-5161-46c0-a46f-a189df13791b.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 13:37:34.238000'),
('e11a1bac-782d-414d-a124-a795c47c09ce.png','application/octet-stream','Juan de luca.png','2023-11-20 16:30:55.941000'),
('e27a2a1e-25ac-4d07-8217-1ea340d5e93c.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-22 14:09:13.418000'),
('e330274a-f923-407b-aeeb-9af28cef5ea2.png','application/octet-stream','fondoMascara.png','2024-01-25 19:57:20.360000'),
('e501171f-318b-4837-bd3f-c1f6616ce4d4.pdf','application/octet-stream','Diploma_Juan_Miguel_de_los_Rios_Caparros_1602097479968.pdf','2024-01-04 11:13:41.935000'),
('e74da65d-ea21-44fa-bccd-b66c483c5919.pdf','application/octet-stream','certificado-3.pdf','2024-02-02 18:56:09.622000'),
('eb9de804-2503-40d5-933a-b52a60540cae.pdf','application/octet-stream','practicaSSH.pdf','2023-11-21 11:45:27.422000'),
('eea66d8a-a7be-4eca-9389-54c57156fe6e.webp','application/octet-stream','fondoMascara.webp','2023-11-20 14:53:51.241000'),
('f05bd7d2-d2ca-4f9a-81f0-c3f41e3d7146.pdf','application/pdf','lambda.pdf','2023-11-21 11:15:46.281000'),
('f149c38b-2c49-466d-b829-b7faeeeb769c.pdf','application/octet-stream','Diploma_Juan_Miguel_de_los_Rios_Caparros_1602097479968.pdf','2024-01-04 10:49:10.223000'),
('f4a0922e-db7b-402a-895e-4d95fe49bfdf.png','application/octet-stream','Screenshot from 2023-11-22 13-03-22.png','2023-11-22 13:37:04.656000'),
('f4d2c295-5d53-4df0-bccb-cd97634e8f19.png','application/octet-stream','img1.png','2023-11-21 12:36:56.319000'),
('f60efa4d-664d-4a6e-98f1-bed2c1183116.webp','application/octet-stream','xcxmo_le_alcanzax_le_preguntan_fans_a_yadhira_carrillo_al_recurrir_a_maquillista_que_cobra_30_mil_pesos_al_dxa_x1x.png_423682103.webp','2024-01-25 18:51:25.385000'),
('f6c30695-a898-4466-8e5c-2a33df52628b.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 13:14:27.446000'),
('f75c38f0-28cf-4028-8990-96c468c2cc7a.pdf','application/octet-stream','certificado.pdf','2024-01-22 10:41:11.995000'),
('f83b3e4f-6b08-40a9-b8aa-dd60ccc7a00b.avif','application/octet-stream','matrix-style-binary-code-digital-falling-numbers-blue-background_1017-37387.avif','2024-01-25 18:48:32.637000'),
('f9a018b4-551b-4107-8bc4-f7f1bc2381f3.pdf','application/octet-stream','22f3e716-0543-4771-8cf2-50df4e080167.pdf','2023-11-21 11:55:12.830000'),
('fa3b71a3-5bcd-4694-8e19-8e2170ff284d.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 12:18:11.084000'),
('ff913a31-4bc1-4365-b087-f1c8d87d9ef2.pdf','application/octet-stream','practicaSSH.pdf','2023-11-20 16:33:56.737000');
/*!40000 ALTER TABLE `FILEREPENTRYBEANS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FUND_REQUEST_SPEAKER`
--

DROP TABLE IF EXISTS `FUND_REQUEST_SPEAKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FUND_REQUEST_SPEAKER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expenseDetails` varchar(255) DEFAULT NULL,
  `requestPurpose` varchar(255) DEFAULT NULL,
  `requestStatus` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `participator_id` bigint(20) NOT NULL,
  `requestDate` datetime(6) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `swiff` varchar(255) DEFAULT NULL,
  `requestAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6ooqjjbdaah4jj9wa1xbtgaw1` (`activity_id`),
  KEY `FKktuijvtwidl31vu5vopfnk8wg` (`participator_id`),
  CONSTRAINT `FK6ooqjjbdaah4jj9wa1xbtgaw1` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FKktuijvtwidl31vu5vopfnk8wg` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FUND_REQUEST_SPEAKER`
--

LOCK TABLES `FUND_REQUEST_SPEAKER` WRITE;
/*!40000 ALTER TABLE `FUND_REQUEST_SPEAKER` DISABLE KEYS */;
INSERT INTO `FUND_REQUEST_SPEAKER` VALUES
(4,NULL,'Gastos de transporte desde el aeropuerto hacia la fundación','Aprobado',98,11,'2024-01-30 16:29:12.073000','ES221 2141241241','ASFWS2214',45),
(5,NULL,'Gastos de peaje (Marbella dirección Málaga)','En espera',102,11,'2024-02-05 10:26:49.617000','ES221 2141241241','00 310 00012',10);
/*!40000 ALTER TABLE `FUND_REQUEST_SPEAKER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FoundationData`
--

DROP TABLE IF EXISTS `FoundationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FoundationData` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoundationData`
--

LOCK TABLES `FoundationData` WRITE;
/*!40000 ALTER TABLE `FoundationData` DISABLE KEYS */;
INSERT INTO `FoundationData` VALUES
(1,'Banco Santander','BI','Nombre Institución Bancaria'),
(2,'ES76 0049 5204 54 2218565380','AC','Número de cuenta'),
(3,'DIEGO JOSÉ VERA JURADO','CEO','Director General'),
(4,'Elsa Marina Alvarez González','SDA','Subdirectora Académica'),
(5,'https://fguma.es/idiomas-pruebas-nivel/','PNI','Enlace información pruebas de nivel'),
(6,'http://www.fguma.es/contenidos/general.action?idsupersection=2&idselected…','DHS','Documento de demanda de horario'),
(7,'https://fguma.es/idiomas-tipos-alumnos/','SAT','Información sobre Tipos de Alumnos'),
(8,'http://fguma.es/idiomas-informacion-general/','CIT','Información sobre Tipos de Cursos'),
(9,'15:00','BST','Hora de inicio del descanso'),
(10,'','BDT','Duración del descanso (En horas)'),
(11,'https://fguma.es/idiomas-tarifas/','FIT','Información sobre Tarifas'),
(12,NULL,'SCA','Informacion sobre colectivos de alumnos PDI, PAS o PIF'),
(13,'http://www.fguma.es/contenidos/images/firmaDirector.jpg','CDG','FIRMA DIRECTOR GENERAL'),
(14,'http://wfguma.uma.es/firmas/firma-Elsa-resolution-high.png','SDAF','FIRMA Subdirectora Académica'),
(15,'https://fguma.es/wp-content/uploads/IDIOMAS/Docs/2023/normativa-idiomas-…','NCO','Enlace normativa Cursos Ordinarios'),
(16,'http://fguma.es/idiomas-informacion-general/','STA','Información sobre Tipos de Acreditaciones'),
(17,'http://www.fguma.es/repository/fileDownloader?rfname=712082a1-ca4f-497e-…','BCP','Banner página de Cursos de Verano'),
(18,NULL,'NBS','Enlace normativa Becas Cursos de Verano'),
(19,NULL,'FDACI','Firma director académico Cursos Idiomas'),
(20,'','BCP','Banner página de Cursos de Formación'),
(21,'BANCO SANTANDER','BICF','Nombre institución bancaria (Cursos/Jornadas Formación)'),
(22,'0049 5204 56 2018591712 (IBAN ES07 0049 5204 5620 1859 1712)','ACNF','Número de cuenta (Cursos/Jornadas Formación)'),
(23,'BSCHESMM','BSCF','Código BIC/SWIFT (Cursos/Jornadas Formación)'),
(24,'<>Le informamos que hemos comprobado la documentación aportada por us.','TGCP','Texto genérico correos Solicitud de pago'),
(25,'<p>Le confirmamos el pago de su matrícula en los cursos Online de la FGU..','TGCCF','Texto genérico correos Confirmación y Formalización'),
(26,'http://webfguma.uma.es/contenidos/images/firma_en_blanco.png','FDACV','Firma director académico Cursos Verano'),
(27,'201','SCI','Sufijo Centro Idiomas'),
(28,'206','SCV','Sufijo Cursos Verano'),
(29,'205','SC','Sufijo Cambridge'),
(30,'200','SF','Sufijo Formación'),
(31,'207','SE','Sufijo Eventos'),
(32,'https://www.uma.es/SECRETARIAGENERAL/secgenfiles/AcreditacionB1/Rel','AAIL','Enlace aviso nivel acreditado MOL Idiomas'),
(33,'https://fguma.es/wp-content/uploads/general/informacion-lopd.pdf','NG','Enlace Normativa grabación');
/*!40000 ALTER TABLE `FoundationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GENDER`
--

DROP TABLE IF EXISTS `GENDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GENDER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GENDER`
--

LOCK TABLES `GENDER` WRITE;
/*!40000 ALTER TABLE `GENDER` DISABLE KEYS */;
INSERT INTO `GENDER` VALUES
(1,'Hombre'),
(2,'Mujer'),
(3,'No binario');
/*!40000 ALTER TABLE `GENDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HEADQUARTER`
--

DROP TABLE IF EXISTS `HEADQUARTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HEADQUARTER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKohko7gksyq4m4x8efdtwgr35p` (`city_id`),
  CONSTRAINT `FKohko7gksyq4m4x8efdtwgr35p` FOREIGN KEY (`city_id`) REFERENCES `CITY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HEADQUARTER`
--

LOCK TABLES `HEADQUARTER` WRITE;
/*!40000 ALTER TABLE `HEADQUARTER` DISABLE KEYS */;
INSERT INTO `HEADQUARTER` VALUES
(4,'E.T.S Informática',1),
(6,'Biblioteca general UMA',1);
/*!40000 ALTER TABLE `HEADQUARTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOLIDAY_DATE`
--

DROP TABLE IF EXISTS `HOLIDAY_DATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOLIDAY_DATE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `holidayDate` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOLIDAY_DATE`
--

LOCK TABLES `HOLIDAY_DATE` WRITE;
/*!40000 ALTER TABLE `HOLIDAY_DATE` DISABLE KEYS */;
INSERT INTO `HOLIDAY_DATE` VALUES
(15,'2024-01-01 01:00:00.000000','Año nuevo'),
(16,'2024-03-29 01:00:00.000000','Viernes Santo'),
(17,'2024-05-01 02:00:00.000000','Fiesta del trabajador'),
(18,'2024-08-15 02:00:00.000000','Asunción de la Virgen'),
(19,'2024-12-10 01:00:00.000000','Fiesta Nacional de España'),
(20,'2024-02-28 01:00:00.000000','Día de Andalucía'),
(21,'2024-01-06 01:00:00.000000','Epifanía del Señor');
/*!40000 ALTER TABLE `HOLIDAY_DATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOW_DID_YOU_KNOW_US`
--

DROP TABLE IF EXISTS `HOW_DID_YOU_KNOW_US`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOW_DID_YOU_KNOW_US` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOW_DID_YOU_KNOW_US`
--

LOCK TABLES `HOW_DID_YOU_KNOW_US` WRITE;
/*!40000 ALTER TABLE `HOW_DID_YOU_KNOW_US` DISABLE KEYS */;
INSERT INTO `HOW_DID_YOU_KNOW_US` VALUES
(1,'Universidad'),
(2,'Prensa'),
(3,'Radio'),
(4,'Otros');
/*!40000 ALTER TABLE `HOW_DID_YOU_KNOW_US` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTIFICATIONDOCUMENT`
--

DROP TABLE IF EXISTS `IDENTIFICATIONDOCUMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTIFICATIONDOCUMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTIFICATIONDOCUMENT`
--

LOCK TABLES `IDENTIFICATIONDOCUMENT` WRITE;
/*!40000 ALTER TABLE `IDENTIFICATIONDOCUMENT` DISABLE KEYS */;
INSERT INTO `IDENTIFICATIONDOCUMENT` VALUES
(1,'DNI'),
(2,'NIE'),
(3,'PAS');
/*!40000 ALTER TABLE `IDENTIFICATIONDOCUMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LANGUAGE`
--

DROP TABLE IF EXISTS `LANGUAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LANGUAGE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LANGUAGE`
--

LOCK TABLES `LANGUAGE` WRITE;
/*!40000 ALTER TABLE `LANGUAGE` DISABLE KEYS */;
INSERT INTO `LANGUAGE` VALUES
(1,'Inglesa'),
(2,'Francés'),
(3,'Alemán'),
(4,'Italiano'),
(5,'Portugués');
/*!40000 ALTER TABLE `LANGUAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LANGUAGELEVEL`
--

DROP TABLE IF EXISTS `LANGUAGELEVEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LANGUAGELEVEL` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LANGUAGELEVEL`
--

LOCK TABLES `LANGUAGELEVEL` WRITE;
/*!40000 ALTER TABLE `LANGUAGELEVEL` DISABLE KEYS */;
INSERT INTO `LANGUAGELEVEL` VALUES
(1,'A1'),
(2,'A2'),
(3,'B1'),
(4,'B2'),
(5,'C1'),
(6,'C2');
/*!40000 ALTER TABLE `LANGUAGELEVEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LANGUAGELEVEL_LANGUAGE`
--

DROP TABLE IF EXISTS `LANGUAGELEVEL_LANGUAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LANGUAGELEVEL_LANGUAGE` (
  `languageLevels_id` bigint(20) NOT NULL,
  `languages_id` bigint(20) NOT NULL,
  KEY `FK4kmuwqmyx3ty0h1fm8146gsdm` (`languages_id`),
  KEY `FKirlt6rd1la12bc1oq18m79uic` (`languageLevels_id`),
  CONSTRAINT `FK4kmuwqmyx3ty0h1fm8146gsdm` FOREIGN KEY (`languages_id`) REFERENCES `LANGUAGE` (`id`),
  CONSTRAINT `FKirlt6rd1la12bc1oq18m79uic` FOREIGN KEY (`languageLevels_id`) REFERENCES `LANGUAGELEVEL` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LANGUAGELEVEL_LANGUAGE`
--

LOCK TABLES `LANGUAGELEVEL_LANGUAGE` WRITE;
/*!40000 ALTER TABLE `LANGUAGELEVEL_LANGUAGE` DISABLE KEYS */;
INSERT INTO `LANGUAGELEVEL_LANGUAGE` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(6,2),
(1,3),
(2,3),
(3,3),
(4,3),
(5,3),
(6,3),
(1,4),
(2,4),
(3,4),
(4,4),
(1,5),
(2,5),
(3,5);
/*!40000 ALTER TABLE `LANGUAGELEVEL_LANGUAGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LEVEL_TEST`
--

DROP TABLE IF EXISTS `LEVEL_TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LEVEL_TEST` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `enteredLevel_id` bigint(20) DEFAULT NULL,
  `language_id` bigint(20) DEFAULT NULL,
  `obtainedLevel_id` bigint(20) DEFAULT NULL,
  `participator_id` bigint(20) DEFAULT NULL,
  `registration_id` bigint(20) DEFAULT NULL,
  `Level_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfs7s1ru0geug0cmr94nd10nl3` (`enteredLevel_id`),
  KEY `FKaavwhepaeonwwo2shdf4y88r6` (`language_id`),
  KEY `FKrx6w0imt132tiikwnqw4gpi8i` (`obtainedLevel_id`),
  KEY `FKt0rl11koydppyf39r3y5a25ka` (`participator_id`),
  KEY `FK8qpy6o4a61xsx4swp8vt2p9g8` (`registration_id`),
  KEY `FK5uxhnr1mabh7xu305veppdaky` (`Level_id`),
  CONSTRAINT `FK5uxhnr1mabh7xu305veppdaky` FOREIGN KEY (`Level_id`) REFERENCES `LANGUAGELEVEL` (`id`),
  CONSTRAINT `FK8qpy6o4a61xsx4swp8vt2p9g8` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`),
  CONSTRAINT `FKaavwhepaeonwwo2shdf4y88r6` FOREIGN KEY (`language_id`) REFERENCES `LANGUAGE` (`id`),
  CONSTRAINT `FKfs7s1ru0geug0cmr94nd10nl3` FOREIGN KEY (`enteredLevel_id`) REFERENCES `LANGUAGELEVEL` (`id`),
  CONSTRAINT `FKrx6w0imt132tiikwnqw4gpi8i` FOREIGN KEY (`obtainedLevel_id`) REFERENCES `LANGUAGELEVEL` (`id`),
  CONSTRAINT `FKt0rl11koydppyf39r3y5a25ka` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LEVEL_TEST`
--

LOCK TABLES `LEVEL_TEST` WRITE;
/*!40000 ALTER TABLE `LEVEL_TEST` DISABLE KEYS */;
INSERT INTO `LEVEL_TEST` VALUES
(13,'2024-01-20',2,2,2,7,155,1);
/*!40000 ALTER TABLE `LEVEL_TEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOGISTIC_SPEAKER`
--

DROP TABLE IF EXISTS `LOGISTIC_SPEAKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOGISTIC_SPEAKER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrivalDate` datetime(6) DEFAULT NULL,
  `departureDate` datetime(6) DEFAULT NULL,
  `locationPreference` varchar(255) DEFAULT NULL,
  `preferredModeOfTransport` varchar(255) DEFAULT NULL,
  `requestSpecificTransportation` bit(1) DEFAULT NULL,
  `roomType` varchar(255) DEFAULT NULL,
  `specialNeed` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `participator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKemttj60mctkaxapgbtmyecq1r` (`activity_id`),
  KEY `FKm394yys5np41my2ctwdhg6jed` (`participator_id`),
  CONSTRAINT `FKemttj60mctkaxapgbtmyecq1r` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FKm394yys5np41my2ctwdhg6jed` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOGISTIC_SPEAKER`
--

LOCK TABLES `LOGISTIC_SPEAKER` WRITE;
/*!40000 ALTER TABLE `LOGISTIC_SPEAKER` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOGISTIC_SPEAKER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAILTEMPLATE`
--

DROP TABLE IF EXISTS `MAILTEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAILTEMPLATE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  `mailType_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5hiw3tpx728fnvtbvx5t058if` (`event_id`),
  KEY `FK58sjvepq0vfhvo4dhlgcwlki1` (`mailType_id`),
  CONSTRAINT `FK58sjvepq0vfhvo4dhlgcwlki1` FOREIGN KEY (`mailType_id`) REFERENCES `MAILTYPE` (`id`),
  CONSTRAINT `FK5hiw3tpx728fnvtbvx5t058if` FOREIGN KEY (`event_id`) REFERENCES `EVENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAILTEMPLATE`
--

LOCK TABLES `MAILTEMPLATE` WRITE;
/*!40000 ALTER TABLE `MAILTEMPLATE` DISABLE KEYS */;
INSERT INTO `MAILTEMPLATE` VALUES
(1,'Gracias por tu interés. Tu matrícula ha sido creada con éxito. Pronto \nrecibirás más detalles sobre el curso. ¡Bienvenido a la comunidad de la \nFundación FGUMA!',20,1),
(2,'<p>Hemos procesado tu matrícula. Por favor, sigue el enlace adjunto para \ncompletar el pago y confirmar tu participación. Quedamos a tu \ndisposición para cualquier consulta</p>',20,2),
(3,'<p>Te informamos que tu bono ha sido confirmado y formalizado. Pronto \nrecibirás información sobre cómo canjearlo. ¡Gracias por confiar en la \nFundación FGUMA!</p>',20,5),
(4,'<p>Felicitaciones, tu matrícula ha sido confirmada y formalizada con éxito.\n Recibirás información detallada sobre el inicio del curso. ¡Esperamos \nverte pronto!</p>',20,3),
(5,'<p>Este es un recordatorio amistoso. Tu matrícula está próxima a caducar. \nRenueva tu inscripción para continuar disfrutando de nuestros cursos y \nbeneficios.</p>',20,4),
(6,'Gracias por tu interés. Tu matrícula ha sido creada con éxito. Pronto \nrecibirás más detalles sobre el curso. ¡Bienvenido a la comunidad de la \nFundación FGUMA!',24,1),
(7,'<p>Hemos procesado tu matrícula. Por favor, sigue el enlace adjunto para \ncompletar el pago y confirmar tu participación. Quedamos a tu \ndisposición para cualquier consulta</p>',24,2),
(8,'<p>Te informamos que tu bono ha sido confirmado y formalizado. Pronto \nrecibirás información sobre cómo canjearlo. ¡Gracias por confiar en la \nFundación FGUMA!</p>',24,5),
(9,'<p>Felicitaciones, tu matrícula ha sido confirmada y formalizada con éxito.\n Recibirás información detallada sobre el inicio del curso. ¡Esperamos \nverte pronto!</p>',24,3),
(10,'<p>Este es un recordatorio amistoso. Tu matrícula está próxima a caducar. \nRenueva tu inscripción para continuar disfrutando de nuestros cursos y \nbeneficios.</p>',24,4),
(11,'<p>Estimado Alumno, </p><p><br></p><br>',25,1);
/*!40000 ALTER TABLE `MAILTEMPLATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAILTYPE`
--

DROP TABLE IF EXISTS `MAILTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAILTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAILTYPE`
--

LOCK TABLES `MAILTYPE` WRITE;
/*!40000 ALTER TABLE `MAILTYPE` DISABLE KEYS */;
INSERT INTO `MAILTYPE` VALUES
(1,'Creación'),
(2,'Solicitud de pago'),
(3,'Confirmación y formalización'),
(4,'Caducidad'),
(5,'Confirmación y formalización (Bono)');
/*!40000 ALTER TABLE `MAILTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAIL_FGUMA`
--

DROP TABLE IF EXISTS `MAIL_FGUMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAIL_FGUMA` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_file` varchar(255) DEFAULT NULL,
  `has_attachment` bit(1) DEFAULT NULL,
  `remitter` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAIL_FGUMA`
--

LOCK TABLES `MAIL_FGUMA` WRITE;
/*!40000 ALTER TABLE `MAIL_FGUMA` DISABLE KEYS */;
INSERT INTO `MAIL_FGUMA` VALUES
(21,'','\0',NULL,'Inscripción en ACT 1','\n      <p>Estimado/a Samara García Gutierrez:</p>\n      <p>Hemos procedido a verificar la documentación de su matrícula en el Formación de la actividad ACT 1.</p>\n      <p><br></p>\n      <p>Puede ir al área privada y proceder al pago, en el apartado de \"Ver mis cursos\", dentro de Formación:</p>\n      <p><br></p>\n      <p><a href=\"https://alumnosfguma.uma.es/\" target=\"_blank\">https://alumnosfguma.uma.es/</a></p>\n      <p><br></p>\n      <p>Si tiene alguna duda o problema, puede ponerse en contacto con nosotros en el email undefined.</p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(22,'','\0',NULL,'Inscripción en ACT 1','\n      <p>Estimado/a Samara García Gutierrez:</p>\n      <p>Hemos procedido a verificar la documentación de su matrícula en el Formación de la actividad ACT 1.</p>\n      <p><br></p>\n      <p>Puede ir al área privada y proceder al pago, en el apartado de \"Ver mis cursos\", dentro de Formación:</p>\n      <p><br></p>\n      <p><a href=\"https://alumnosfguma.uma.es/\" target=\"_blank\">https://alumnosfguma.uma.es/</a></p>\n      <p><br></p>\n      <p>Si tiene alguna duda o problema, puede ponerse en contacto con nosotros en el email undefined.</p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(23,'','\0',NULL,'Inscripción en ACT 1','\n      <p>Estimado/a Samara García Gutierrez:</p>\n      <p>Hemos procedido a verificar la documentación de su matrícula en el Formación de la actividad ACT 1.</p>\n      <p><br></p>\n      <p>Puede ir al área privada y proceder al pago, en el apartado de \"Ver mis cursos\", dentro de Formación:</p>\n      <p><br></p>\n      <p><a href=\"https://alumnosfguma.uma.es/\" target=\"_blank\">https://alumnosfguma.uma.es/</a></p>\n      <p><br></p>\n      <p>Si tiene alguna duda o problema, puede ponerse en contacto con nosotros en el email undefined.</p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(24,'','\0',NULL,'Inscripción en ACT 1','\n      <p>Estimado/a Samara García Gutierrez:</p>\n      <p>Hemos procedido a verificar la documentación de su matrícula en el Formación de la actividad ACT 1.</p>\n      <p><br></p>\n      <p>Puede ir al área privada y proceder al pago, en el apartado de \"Ver mis cursos\", dentro de Formación:</p>\n      <p><br></p>\n      <p><a href=\"https://alumnosfguma.uma.es/\" target=\"_blank\">https://alumnosfguma.uma.es/</a></p>\n      <p><br></p>\n      <p>Si tiene alguna duda o problema, puede ponerse en contacto con nosotros en el email undefined.</p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(25,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Juan de Luca Garcia:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(26,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Juan de Luca Garcia:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(27,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Samara García Gutierrez:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(28,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Zoraida Gonzalez Calderon:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(29,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Zoraida Gonzalez Calderon:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(30,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Zoraida Gonzalez Calderon:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(31,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Zoraida Gonzalez Calderon:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"370\" height=\"370\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(32,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Irene Martinez:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(33,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Pedro Camino:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(34,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Irene Martinez:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(35,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Juan Garrido :</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(36,'','\0','formacion@fguma.es','Inscripción en ACT 1','\n      <p>Estimado/a Juan Garrido :</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad ACT 1 ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Formación\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(37,'','\0','formacion@fguma.es','Inscripción en EL VINO Y SU MUNDO','\n      <p>Estimado/a Bernardo Quintero:</p>\n      <p>Este correo lo ha recibido para notificarle que se ha realizado una modificación en el estado de su solicitud de pago referente a la actividad EL VINO Y SU MUNDO.</p>\n      <p>Puede revisar tanto el estado de la misma, como sus datos personales a través de la web.</p>\n      <p><br></p>\n      <p>El estado de su solicitud ha cambiado a: Aprobado</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n\n\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(38,'','\0','formacion@fguma.es','Inscripción en EL VINO Y SU MUNDO','\n      <p>Estimado/a Bernardo Quintero:</p>\n      <p>Este correo lo ha recibido para notificarle que se ha realizado una modificación en el estado de su solicitud de pago referente a la actividad EL VINO Y SU MUNDO.</p>\n      <p>Puede revisar tanto el estado de la misma, como sus datos personales a través de la web.</p>\n      <p><br></p>\n      <p>El estado de su solicitud ha cambiado a: Dengado</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a formacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n\n\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(39,'','\0','cidiomas@fguma.es','Inscripción en 2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde','\n      <p>Estimado/a Juan Antonio De los Santos Martin:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad 2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Centro de idiomas\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Centro de idiomas\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a cidiomas@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(40,'','\0','cidiomas@fguma.es','Inscripción en 2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde','\n      <p>Estimado/a Juan Antonio Gutierrez Mata:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad 2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde para el idioma undefined en el nivel undefined ha sido creada con éxito.</p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Centro de idiomas\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Centro de idiomas\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a cidiomas@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(41,'','\0','cidiomas@fguma.es','Inscripción en 2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde','\n       <p>Hemos procedido a verificar la documentación de su matrícula en el Centro de idiomas de la actividad 2º Cuatrimestre Francés 50h - B1 DELF (VIDEOCONFERENCIA) - M/J - Tarde para el idioma Francés en el nivel A2.</p>\n      <p><br></p>\n      <p>Puede ir al área privada y proceder al pago, en el apartado de \"Ver mis cursos\", dentro de Centro de idiomas:</p>\n      <p><br></p>\n      <p><a href=\"https://alumnosfguma.uma.es/\" target=\"_blank\">https://alumnosfguma.uma.es/</a></p>\n      <p><br></p>\n      <p>Si tiene alguna duda o problema, puede ponerse en contacto con nosotros en el email cidiomas@fguma.es.</p>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(42,'','\0','cidiomas@fguma.es','Inscripción en 2º Cuatrimestre Ingés 50h - B1 DELF (VIDEOCONFERENCIA) - L/J - Tarde','\n      <p>Estimado/a Yadira Albedo Soria:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad 2º Cuatrimestre Ingés 50h - B1 DELF (VIDEOCONFERENCIA) - L/J - Tarde para el idioma undefined en el nivel undefined ha sido creada con éxito.</p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Centro de idiomas\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Centro de idiomas\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a cidiomas@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n\n      <p><br></p>\n      <img src=\"data:image/gif;base64,R0lGODdhmgGaAYAAAAAAAP///ywAAAAAmgGaAQAC/4yPqcvtD6OctNqLs968+w+G4kiW5omm6sq27gvH8kzX9o3n+s73/g8MCofEovGITCqXzKbzCY1Kp9Sq9YrNarfcrvcLDovH5LL5jE6r1+y2+w2Py+f0uv2Oz+v3/L7/DxgoOEhYaHiImKi4yNjo+AgZKTlJWWl5iZmpucnZ6fkJGio6SlpqeoqaqrrK2ur6ChsrO0tba3uLqwmwy9vr+wscLDxM3OswjFEcfKzcXCzi7AsdTV1dTWWdrY3cwG2RzbwdPX0dIn4ujo2+Xs7gXQHezf5sbk0+j/8Olc8vHA6czJ68fr/ujatHMCEAdQoJ/it4IZ67hrwMOrNIkR3DjP/4HkqLKHBiRozKSHJMN+VkPo/GQLZbcNIkMZkqQ0apOY9lRZfUdPaj6Q8hznMbh27zuZDnQZEUgS4TalRb0ag2FeibIBEmR6cAoVJ9uS8ojasSssogG8FsB7QG2LZwqwTuCrlMl86gqxXsWrF5u47lG/bpX8HwqsbAa9UwB7eITzQm8rhE5LaKX0wOoHYx4ASXZU5tOdhvYb0wLmfewHhzadVNOnsFPbpnDdOVNaQmfJY1E9cgaJO2rPvBadvBeX8wzgP5XtxYa78NjlQ5gtuiczN3Ih019IGyQ0P85jzg9QPZiY/fvV2F7+530/e164H69/bnl8hHh9Qz9/kUhmP/3jpXcR3t95EU9xFFIGzxCVhfdAw2FWB9KyW4k4EPrpPfaxW+V2Bs8HEGoHoX4kfhLp9tmFhOJSbV24gKNvcbZSNFWB2IKtbVYWA1Tjcgji9qJqF7KbI3ZEMsHIiSjyg+geRRK+qnpIlKXbTihCIGeSOHP7bmYpJaLgnkjuQJaSORZRpJI39nkhglizd16WSbUH4pJXgx/jfjlWLKqNGTKcEplZ8tYrmncM7FlGaOayIo55+EYijocYCKZyaPeabQZKCNWvgom3S6aV2hlEJqp6iRFqmopX1u+manjH5qQ3l4ruphqmlNWuWhZEIGqH+yjmqrebT2t+uYroJp7LCL/yKL3rFxwjpbsRBYWeuW0+Lapq/SBpGptg0mam0G1BL7LauohjvusnW2Wmi6qqq5WrnVekmuqeaqCyq+3tp7RLe6youCrO7eCjC+GWb7L79G+Hvnr1OGC+yr9cJLcLu9JkxxsxZneS6zzxVcVo/zrjtxsLNmfLKnHZPM5MUNbzvnghzDqLDBp+qLsclxuVxpsigfDG2ppI7MT8w4vwzyEAz3zOfPN7+rc653OjhzmCgP3HTUSCz9IdQQP+2z1p/6R7WyVpuMdcpfb81z12GvHXTcJUtMM5qDbmz22x7v7KymcteN9rZplz20zHgXbjOnh6ucONFAz00v4AkZ7XXklf+zjF3bVN4bct8RW16x3ZL2va/TbJOeM9wr53s566Ez3jmEd18t8uonYq73s7Y/7PF6iMcuuuG0V5276xoPn3fWqje+u9Cwvz65hrgrDzr109sHs/TGi4stpqnvDfa1SZPgsHdiB5w958Uf+f31j0sOvp6m95v+6DUDH/j43CN9//q8uw+u+NFPf5TTjucCSA/1ia9/1tse+wj4g/I5TnvvM0Hpzsc8+AFQfhjkFQRn10Ho9a5+kEvg3/C3vNbFioQ7kGAJHfi/7bnwaItLof+cZ0PysVAHM0ShAF9YQcm0D4YKNNQH7Te/he3QgAw0Yg1/uBymqQ2KKozhCo+YnCX/CiuJGpShFp3otgZ+boMnBA4WW/gVvzWvjGIM3xSvl6kgthFhafziFesoxTi6UY9F5CMb34jHHpoxkJv7ox/XiMgMVrGPmiMkEQfoyJLssXuJXKQhKanI4kUyhELYZDPkCEhQHjKTc7wk6jz5SCWicpSWrOQNTflEOGKydatMZRFqycpXurKUuwzlJA9IR0/eDpeinKUuSelLRgJzbKscZi2Lucxe5pKXyORaJJ3ZzF/G0ovRrKYxqUnLbIrCmuiyoxsf2MRcIJCbeTRnEdHJRXW6gJwjPKMPyYg+e8qzgA2c5ggEucB47nOdhMtfOq0YLX0OFIkGDWMyvafQ/R10/6E6POU24cnJf7qTomNkp0MB+tBQCZSjFmxkPSc6QfPlkKQV3aY/+fkxlDLigp88p9TaqT+QdvSlBHUUTn86UkDSlIrH5OEQ7xhUIAzVhL0saE3faVOVShKqHFypUofI02B+VHAbFV4hm9pTxW2Vf0FNm+8yitGn/jGtRO0kVr8JxueBU4T4PMxREypTNJL1q8h06lTXGlX6ABWtFPTpWAe7UrNyNaJcQV5SCytWvoazm/dUY18DK1LJFnWQj/XBUmeCWRoetqxdjeJoCQtCqxpWsy11qF9lGdE6QlOKoEQD2bR3VrWCFYc4ma1rQyuG26b2ry/MKtEQpUzaAjcMwv9lqG67aNzihgiWv6VqGZrr1edWNrrQna40w7NcMGDXtKyNq3Y3u0Wj+La8tT3DeM923oCWV2BpXG98zdvWL7yXidVlJmX5q15t9ne31wXvcJna3f+mdyj2JW4X5bDfBTt4u3DdqXe9ObXwzoG7FFawUGuHYaq81patvAOH6Qra5AYvxFEZcUf5cGL53peeumNxgLWaUZ2utpyxvSuO6VbiycrOv03UcWR5nFchO7ahCmlwTVyMUD3EGL8IDrImQWzlfl5YyTkuLRamDGUVN1nANyYyaRnbBTDfdMlIXnGWP3yp1eU2v7atcAz9iVzqllnOi00yc+3M2yqjF87JC6n/aMf84/waGaKFjjCVVWJhD794nY7G5l7vG+khS1fSUWb07/5MPC33+CuZZjOdNVxq9qYZy1cetYjvDOiUelqu+mW1qP18azejWM3WzW71ah1qQnfWzIg+bqyBSGkDb0GxGQ40pGHNaWeztcbBtbWwUUvs6Dmb14A9sGWrHexKr7nYm74oZGcNZFA3Wtnl1rWMJzzoSVf1116gb5xtnG4J1zVehXZyitk1bD6H26SC1jeJOUtrfy86n7i+dr4NzWVMdzqLwVa4lxGu2kRTe9CDm7he+01miZ+u4Xn+bsU9btSTi1nkkAz4oR9O43/7et8Yp3fI4X08bAt83RYd8IMj/2hti6NZqjR/909uvnGDX1Xlema5Kkm+ZY4HHeU56PjKcY49V7sb4q1WrrSBznSTe73le05ww0csW2hDPdoFJrXaXd5hYb5d5/g+NRfSvu2L5/qac8940+2+7Pr2HfDt5nvetc5kv2sB78YeerYJmWrF173owH714c8+bkdGnvCTP7h4BX95uO9anI1fu7nhwPjCSz7um9w85f0NYdCXXvRGJ+bgX490z1e+xbfXvevx+HuYLvyWU9e4zMkL8y/OmfKOHr4HQW58e/Pc9GcuMrsvawarP77gEv30XJVO9dov3/erDvvLsf57bhN4/ednvt6zDv3tHx++v5Z+9e+v6v9ej0H7O/c56+erfH2Gf06HfW0Xf/2Xf7MHgIiXWAKYgOwHbgfYfvMHYMnHgIrmgAT4ZnVmfhGHfr2nfgUIgV03gJz3ZcUnf/ZHayrYgDl1fRvoXj72d0nHda3VZZd2UiXofmz3dKfVZolXf+83fniWgRjIg8SHg7DlUjLIcDpIgd9Xg48mb91GdjMGV8yGefrngUpoajtofUf4fD6Yg0BIgyA1hFdYhF7YheTnWUzYeZ81bboHhxo2fu01cmLIhWT4bfF2bqo3hj/Ygl94egC3gIOIgFboeCO4d4D4h0YoiGtoaYb4hm5YUi6YhB51g4+oh5EIibk3h/OmhoXYiV//R4pU2IMPOImWSH0Jh1d4WDSZZ4JV94JS12ymaHb+V3PcV3ITyImZuIZ1iFuzOE9vNXC1eIoaSItjp4iPJm6g+IQOF4TGiITKmIqauHokiIr85opYiItuJY1v1nwB2IG5+Iy7uIVs2APh2HO+SHfn6Hyjt44WSI1hmI3J2I1RmH7vF3ywWIbCyC3+GHNTOHN7iAOfxY316I3zaI8IiY8gqI+9h3bEmIXpKJFOGJH39n+MyH0XqZCLGIsJuY1piImaB5H8KIdRJ34PSXTlCJAE92yhp4dnOI4eiXt3KIoMGXPmCI9LqIpbF2aBd4nAGH0oyYwumY/fiI3XCJI3iYxQ//hMJWl8R9mR0FiTVYh16siTlqeAGvmMHHmPzWiVutiS8dhbUCl/UvmV/sg3iPWBVxdI+xiVDomUNImOx3iVY5mVvAeTXCmTEniOsReUeEl7UaiTKRmYF1iVi1eROCmOecmKQ0mWiSmC+7eYTdmQpXiINgeZjqmUl2mAITmXnolsm5mWxTiVdviZTKmZtlhZXsmYpnmPqEkGBimY7biQ2raVdxmaskmZhzmVLNiIR7eXunmaqFZ+bEmDvNmaJomV3keVdTmZEQiav9mYv4iCmSmWu2mcd1eZbcmaKOaalnmQlqmcSmNtfTmYOSmScHmWzHmd0+ic6GmbTvmeMBiX9/+ZgvVpnrDJjuTpibUZiNNpnRjJJfwZoAwpdNTZk6qZnVqpI/EpksCZhw9XnnT5k9j5ikcWjdbonaOZnwt6oIiInC9JiPLohBI6kqu5jLQZmRlaoht6otUZkwDqiAI6owSacybanx36c6S5o6EoojaKmw+6ghEqo3xJo0BKnELqEMc5irnZoAM6fVI6mLD3CFM2nsHpomIXm+EnmoGApefpkp/Yns5YoX0QpgaqpVk6oTxKf20qmXaQplN6o3SKpInYeZAwpxDaomSKoXF4pjB2bBNIhDhKmGrppe/4eWCYlEtap3zKmR8phduZB3tapH1KiY0ap+BJqXhgqTp6p3b/uqZCOKhyOqbr6aUCiXyOCqqjeon1dqogWqPz+aUZ6aojGp5aCquYKqtKuqlQyJ4YWqii+qv/yKsc6qvQaZ9QmqL9eKxPqpjP+qMniZjKqqnNSpCHqqbFunSRupF0eKSSyqK46p6MmqO3WprIaq3AapbCiobbuq7G6q1dCa7V2liPyqDY6qdZoJ69Sq2r2Jnj6oq5Cqfx2q1U+prqClPBSqjvSqwGC3YAi674ypUXalfm+pwES682GbBGaZIJWqWJaqTS6p9taK8fi7JuubHopqvt2rDaabISW7AB+Z94upxaeK0aq6gadbL4+ac1O5EeuqLdmZxJgKIW+5dAG7KY/xmdOVuuxRmz6emxPluNSytrQ+ubzrmWUtuiSHubbipEGCuwjxmW8UqzVAuOiOptZzq2FGq04TqzUzuDK9uEm+iy7qi2FOmvQvmd4Ie2fBi108qB6sq3y6iqSYuzBYmq2TeyCtupPVqmfXsDhdubhLu4knu4Tpu4k3u5s9m4Fvm4Nxu5htuKghuDe9u5Teu3o6u6nOuvgxujrxu6nPq37Bq4ISqpWzutlLusA+m1tqu3jsu4qCu7m5u5Fjq7w1i8qYm736qygJqymFu6zQuxHAu2hqlpqxql+RqHqde6uluyH+qXO4mwFZtsbme8bwuz4qu1d6u50jucT5a88tqlPv/qtvGrr6VagZA3vweLoE/bvvj7u7W6v2/ZvxFbv+xLtn4YtxiLluT2veoLtQp8v8w6wGZIeqRrvc7LrPx3ixTbss7ovb3bMuvrrjNZlF17wPbbpOm7wXT7wUOqvSz5qufroBGMCcPKtROMtTJLw0G7CDpMq2DZwzs8sK0gxB1rwq2LoiFICUksrnlbxEOcqaYAxcVKxEwMtz9stTPlsEb8v5vbxPrLCVdstlKsxdXqxJNgxveqxMLrXKyau1f6xVS8xCSMx+Rrt6zQxsHYs1c7w2u8lLg0q+F7wvMqn+Zbu2lAyMTrw217vRmrtLTaiyQpwH48os3JvdHrBo1suWr/TLQwjLhzu7P+68kM+6bZ6sGjzKVhDJSeXMiRrLGz7L70ecdXAMu7u8WQzME/q7KljMCwjMoFrMr6iby/rJJl+5SX7G28LMrv28qGzK+5HMu9HMNyXLSLfLZvsLOJPLEyLLpCi8MULMsS3MWQy8D5a6hsS8YpPL7nyq2pyskv+84EbMuPbMzwd87hfM0NnL38DNCA28FoTI+debzuXL4tDMgBDbzpnMUFPcdMa6v+7JP1KompvMoFCsQMjdAgLJwLTbvwS87WnDk2G9LprLNJ+q/QGsj5DL4RDdLYm9AfLc4cPcYo/NLxLNF6HKoVLcbtnNImrbgkG8KS+9AnzYsA/2x43ByrFy3QvsyyFO3Rtod6Tc3SeXzMUa3OiJzBbdCvTt3QSW2m84y3qASYXO1h3qzTpGzVS93Jba3IRk3QSM3K9Nx6cfDVV/3UYq3VF0zNJK1uM83Fe2zBYcW6ZS13VU3UBcvOt1x7fv3XwHy734zN2DrMNtjTU73MTL3Ylj3JbwzG1HvUMr3A8KnZdZzZoG3Hn8zD/ZytOb3VR4zMf+y7crnR1zrarovWYK2trY3Vk4q/GLzO5nzaaS23tb22tr3PuD3XQ73ben3PCazBco3Tyu3KFPfchB3N5ezC1F3PDyzNKZfdcb3dgP3Yfejawv3PGi3YfbzIBw3fSm3Q8v/N3cHb3qhN2Vi8xeAN04cs3R9332Ibys580z582fpc3LwN2etNlwUe2tX8zIOc34Mt2nBd2bmN4Z9LydM74Z964WJa3e8tzyL+wrT801l7qd9N1sR84LBt4t7NpM6q4iQe0x093yv54lMcpBCM2A9u3sBd2Boq1Tte4Z2d16v937+d20iV4NBt4x0+4Lu837WM4Kld2QdemM/p4Eiuy0IdU8t93rOt4DtW1OW9pSV822HO1g5M3ORdtaUN0Wtd01+7vTdu39r95hVsl3KOznle5tNs3EaezHVr53Me3ZvMnYE+3vWN3WAO5GYuyPSL52k73CXO4Yy94mFd0rx95OH/LYtebqXaPOgXy+kW/uOm3N99TunkmuilLuigbtiZ5eZ1/dsunntBneZfLswW7eQtbsOCLah/3dhjzsyCFePV+8q5POy9TuXde9wmFtnLPunE3M2hHOzULO2zTu2jTuvQDO3CzuvTbnDVjuKFDujYHu7aPu7c7u3dTgeR7dk7rek8neoTHdsb3urKnu5/jtHsntVQ7anRvu+Y3sz+Lsk0zlIJr/ALz/AN7/APD/ERL/ETT/EVb/EXj/EZr/Ebz/Ed7/EfD/IhL/IjT/Ilb/Inj/Ipr/Irz/It7/IvD/MxL/MzT/M1b/M3j/M5r/M7z/M97/M/D/RBL/RDT/RFb/RHEI/0Sa/0S8/0Te/0Tw/zBQAAOw==\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(43,'','\0','fundacion@fguma.es','Inscripción en Guías caninos de avalancha','\n      <p>Estimado/a Alejandro Díaz Martí:</p>\n      <p>Este correo lo ha recibido para notificarle que se ha realizado una modificación en el estado de su solicitud de pago referente a la actividad Guías caninos de avalancha.</p>\n      <p>Puede revisar tanto el estado de la misma, como sus datos personales a través de la web.</p>\n      <p><br></p>\n      <p>El estado de su solicitud ha cambiado a: Aprobado</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a fundacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n\n\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    '),
(44,'','\0','fundacion@fguma.es','Inscripción en Curso de vino','\n      <p>Estimado/a Juan Miguel De los Ríos Caparrós:</p>\n      <p>Este correo lo ha recibido para notificarle que su matrícula en la actividad Curso de vino ha sido creada con éxito.</p>\n      <p><br></p>\n      <p>Dispone de 5 días para formalizar el pago de la misma. Para anular su matrícula puede hacerlo a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Fundacion fguma\'.</p>\n      <p><br></p>\n      <p>La documentación solicitada la puede subir a través de la web, desde su zona privada de alumno, mediante el menú \'VER MIS CURSOS > Fundacion fguma\' desde la opción \'DOCUMENTACIón\'</p>\n      <p><br></p>\n      <p>Queremos recordarle que si tiene cualquier duda o problema, comuníquenoslo enviando un e-mail a fundacion@fguma.es.</p>\n      <p><br></p>\n      <p>Atentamente,</p>\n      <p>El equipo de <a href=\"https://fguma.es/\" target=\"_blank\">https://fguma.es/</a></p>\n      <p><br></p>\n      <img src=\"data:image/gif;base64,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\" width=\"410\" height=\"410\"/>\n      <p><br></p>\n      <p><b>¡AVISO IMPORTANTE! </b>Este correo ha sido enviado automáticamente. Por favor, no responda.<br><br></p>\n    ');
/*!40000 ALTER TABLE `MAIL_FGUMA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MODALITY`
--

DROP TABLE IF EXISTS `MODALITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MODALITY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKie8n3x5fdjnht531iwn03e4v` (`department_id`),
  CONSTRAINT `FKie8n3x5fdjnht531iwn03e4v` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MODALITY`
--

LOCK TABLES `MODALITY` WRITE;
/*!40000 ALTER TABLE `MODALITY` DISABLE KEYS */;
INSERT INTO `MODALITY` VALUES
(13,'Presencial',10006),
(15,'Virtual',10006),
(16,'Semi-Presencial',10006),
(17,'Presencial',10007),
(18,'Virtual',10007);
/*!40000 ALTER TABLE `MODALITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NO_ASSISTANCE`
--

DROP TABLE IF EXISTS `NO_ASSISTANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NO_ASSISTANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `registration_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc0l1xkektnubnomt6ir0cwpid` (`registration_id`),
  CONSTRAINT `FKc0l1xkektnubnomt6ir0cwpid` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NO_ASSISTANCE`
--

LOCK TABLES `NO_ASSISTANCE` WRITE;
/*!40000 ALTER TABLE `NO_ASSISTANCE` DISABLE KEYS */;
INSERT INTO `NO_ASSISTANCE` VALUES
(27,'2024-01-23',155);
/*!40000 ALTER TABLE `NO_ASSISTANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARCIAL_PAYMENT`
--

DROP TABLE IF EXISTS `PARCIAL_PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARCIAL_PAYMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4wgkj303ceksfkel6amdos6ke` (`activity_id`),
  CONSTRAINT `FK4wgkj303ceksfkel6amdos6ke` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARCIAL_PAYMENT`
--

LOCK TABLES `PARCIAL_PAYMENT` WRITE;
/*!40000 ALTER TABLE `PARCIAL_PAYMENT` DISABLE KEYS */;
INSERT INTO `PARCIAL_PAYMENT` VALUES
(60,NULL,'1',NULL,100),
(61,'2024-02-01','1',40,102),
(62,'2024-03-01','2',40,102),
(63,'2024-04-05','3',20,102);
/*!40000 ALTER TABLE `PARCIAL_PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTICIPATOR`
--

DROP TABLE IF EXISTS `PARTICIPATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTICIPATOR` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `academicDegree` varchar(255) DEFAULT NULL,
  `acceptDataProtection` bit(1) DEFAULT NULL,
  `acceptPublicity` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `curriculum` varchar(255) DEFAULT NULL,
  `dateAcceptDataProtection` date DEFAULT NULL,
  `dateAcceptPublicity` date DEFAULT NULL,
  `datesStart` date DEFAULT NULL,
  `dniFile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `identificationDocumentNumber` varchar(255) DEFAULT NULL,
  `isCv` bit(1) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numberCCC` varchar(255) DEFAULT NULL,
  `observations` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `swiff` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `gender_id` bigint(20) NOT NULL,
  `identificationDocument_id` bigint(20) NOT NULL,
  `isRestricted` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKapeedud1lvf4fb2psesrk2kap` (`gender_id`),
  KEY `FKoywuojlg7fiwee9v5xte55e5l` (`identificationDocument_id`),
  CONSTRAINT `FKapeedud1lvf4fb2psesrk2kap` FOREIGN KEY (`gender_id`) REFERENCES `GENDER` (`id`),
  CONSTRAINT `FKoywuojlg7fiwee9v5xte55e5l` FOREIGN KEY (`identificationDocument_id`) REFERENCES `IDENTIFICATIONDOCUMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTICIPATOR`
--

LOCK TABLES `PARTICIPATOR` WRITE;
/*!40000 ALTER TABLE `PARTICIPATOR` DISABLE KEYS */;
INSERT INTO `PARTICIPATOR` VALUES
(7,'Filosofía','','',NULL,NULL,NULL,NULL,'','2024-01-18','2024-01-18','2024-01-18','','fcabono@gmail.com','ES21000124810','77428559H',NULL,NULL,'Jose Luís','AN10220401',NULL,'659913456','Filósofo','Caballero Bono','003102901',NULL,'Sr.',NULL,1,1,'\0'),
(9,NULL,'','',NULL,NULL,NULL,NULL,NULL,'2024-01-19','2024-01-19','2024-01-19',NULL,'marinadmarsa@gmail.com',NULL,'88844563W',NULL,NULL,'Marina',NULL,NULL,'652990876',NULL,'Díaz Marsa',NULL,NULL,'Sra.',NULL,2,1,'\0'),
(10,'Marketing','','',NULL,NULL,NULL,NULL,NULL,'2024-01-23','2024-01-23','2024-01-23',NULL,'ale.silva@gmail.com',NULL,'88543562H',NULL,NULL,'Alejandra María',NULL,NULL,'654478993','Publicista','Silva García',NULL,NULL,'Sra.',NULL,2,1,'\0'),
(11,'Ingeniero químico','','',NULL,NULL,NULL,NULL,NULL,'2024-01-30','2024-01-30','2024-01-30',NULL,'aledmart@gmail.com','ES221 2141241241','77455991E',NULL,NULL,'Alejandro','AN22924194129',NULL,'654485559','Profesor de Química','Díaz Martí','00 310 00012',NULL,'Sr.',NULL,1,1,'\0'),
(12,NULL,'','',NULL,NULL,NULL,NULL,NULL,'2024-02-01','2024-02-01','2024-02-01',NULL,'isabelram@gmail.com',NULL,'74333256T',NULL,NULL,'Isabel',NULL,NULL,'682281928',NULL,'Ramirez Ortega',NULL,NULL,'Sra.',NULL,3,1,'\0');
/*!40000 ALTER TABLE `PARTICIPATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTICIPATORINVOICE`
--

DROP TABLE IF EXISTS `PARTICIPATORINVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTICIPATORINVOICE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `canalCode` varchar(255) DEFAULT NULL,
  `netPrice` double DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `participatorRole_id` bigint(20) DEFAULT NULL,
  `retentionType_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK39f74abd01io4xsa5b6k2i6xd` (`participatorRole_id`),
  KEY `FKhqvhl4vviwe43q2jfuhbwmtu5` (`retentionType_id`),
  CONSTRAINT `FK39f74abd01io4xsa5b6k2i6xd` FOREIGN KEY (`participatorRole_id`) REFERENCES `PARTICIPATORROLE` (`id`),
  CONSTRAINT `FKhqvhl4vviwe43q2jfuhbwmtu5` FOREIGN KEY (`retentionType_id`) REFERENCES `RETENTIONTYPE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTICIPATORINVOICE`
--

LOCK TABLES `PARTICIPATORINVOICE` WRITE;
/*!40000 ALTER TABLE `PARTICIPATORINVOICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PARTICIPATORINVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTICIPATORROLE`
--

DROP TABLE IF EXISTS `PARTICIPATORROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTICIPATORROLE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hours` double DEFAULT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `participator_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpi4tct6vtdi1wv5028d1xwc8e` (`activity_id`),
  KEY `FKbajek4vhwyre5c9ve5537kaww` (`participator_id`),
  KEY `FKlmctd9k6gushspopi9f5cipwi` (`role_id`),
  CONSTRAINT `FKbajek4vhwyre5c9ve5537kaww` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`),
  CONSTRAINT `FKlmctd9k6gushspopi9f5cipwi` FOREIGN KEY (`role_id`) REFERENCES `ROLE` (`id`),
  CONSTRAINT `FKpi4tct6vtdi1wv5028d1xwc8e` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTICIPATORROLE`
--

LOCK TABLES `PARTICIPATORROLE` WRITE;
/*!40000 ALTER TABLE `PARTICIPATORROLE` DISABLE KEYS */;
INSERT INTO `PARTICIPATORROLE` VALUES
(105,2,97,7,5),
(106,2,99,7,4),
(130,2,97,9,4),
(131,4,99,9,4),
(136,2,98,11,5),
(137,8,102,11,4);
/*!40000 ALTER TABLE `PARTICIPATORROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PARTICIPATOR_BUSINESS`
--

DROP TABLE IF EXISTS `PARTICIPATOR_BUSINESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PARTICIPATOR_BUSINESS` (
  `participators_id` bigint(20) NOT NULL,
  `businesses_id` bigint(20) NOT NULL,
  KEY `FKq40nfogjjtdnjihb9fxypnvn2` (`businesses_id`),
  KEY `FK1ilugdlwgdnij3cgmkakpp91x` (`participators_id`),
  CONSTRAINT `FK1ilugdlwgdnij3cgmkakpp91x` FOREIGN KEY (`participators_id`) REFERENCES `PARTICIPATOR` (`id`),
  CONSTRAINT `FKq40nfogjjtdnjihb9fxypnvn2` FOREIGN KEY (`businesses_id`) REFERENCES `BUSINESS` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PARTICIPATOR_BUSINESS`
--

LOCK TABLES `PARTICIPATOR_BUSINESS` WRITE;
/*!40000 ALTER TABLE `PARTICIPATOR_BUSINESS` DISABLE KEYS */;
INSERT INTO `PARTICIPATOR_BUSINESS` VALUES
(7,9),
(7,9);
/*!40000 ALTER TABLE `PARTICIPATOR_BUSINESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAYMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `parcialPayment_id` bigint(20) DEFAULT NULL,
  `registration_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq3gsm51oo8in0olgkr1h2obh7` (`parcialPayment_id`),
  KEY `FKmemshf69vwgtt1jv6qq9ly0xv` (`registration_id`),
  CONSTRAINT `FKmemshf69vwgtt1jv6qq9ly0xv` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`),
  CONSTRAINT `FKq3gsm51oo8in0olgkr1h2obh7` FOREIGN KEY (`parcialPayment_id`) REFERENCES `PARCIAL_PAYMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT`
--

LOCK TABLES `PAYMENT` WRITE;
/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENTACCOUNT`
--

DROP TABLE IF EXISTS `PAYMENTACCOUNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAYMENTACCOUNT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accountNumber` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `isPaypalActive` bit(1) DEFAULT NULL,
  `nominalName` varchar(255) DEFAULT NULL,
  `paypalAccount` varchar(255) DEFAULT NULL,
  `swift` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `isTpvActive` bit(1) DEFAULT NULL,
  `tpvAccount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiyuyiyndnp2hi9lsu4gfasgnm` (`department_id`),
  CONSTRAINT `FKiyuyiyndnp2hi9lsu4gfasgnm` FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENTACCOUNT`
--

LOCK TABLES `PAYMENTACCOUNT` WRITE;
/*!40000 ALTER TABLE `PAYMENTACCOUNT` DISABLE KEYS */;
INSERT INTO `PAYMENTACCOUNT` VALUES
(11,'22142190419','BBVA','ES21',NULL,'Cuenta de pago Centro de idiomas',NULL,NULL,10006,NULL,NULL),
(12,'219487129','Santander','ES21',NULL,'Cuenta de pago de fundación',NULL,NULL,10007,NULL,NULL);
/*!40000 ALTER TABLE `PAYMENTACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENTTYPE`
--

DROP TABLE IF EXISTS `PAYMENTTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAYMENTTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isDown` bit(1) DEFAULT NULL,
  `_order` int(11) DEFAULT NULL,
  `paymentType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENTTYPE`
--

LOCK TABLES `PAYMENTTYPE` WRITE;
/*!40000 ALTER TABLE `PAYMENTTYPE` DISABLE KEYS */;
INSERT INTO `PAYMENTTYPE` VALUES
(1,'\0',0,'Sin definir'),
(2,'\0',1,'Efectivo'),
(3,'\0',2,'Tarjeta Bancaria'),
(4,'\0',3,'Transferencia'),
(5,'\0',4,'Paypal');
/*!40000 ALTER TABLE `PAYMENTTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT_RETURN`
--

DROP TABLE IF EXISTS `PAYMENT_RETURN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAYMENT_RETURN` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `isReturned` bit(1) DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `returnPetitionDate` date DEFAULT NULL,
  `returnReason` text DEFAULT NULL,
  `registration_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcwlt9xc9bw4mns7rdog0ql2jr` (`registration_id`),
  CONSTRAINT `FKcwlt9xc9bw4mns7rdog0ql2jr` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT_RETURN`
--

LOCK TABLES `PAYMENT_RETURN` WRITE;
/*!40000 ALTER TABLE `PAYMENT_RETURN` DISABLE KEYS */;
INSERT INTO `PAYMENT_RETURN` VALUES
(8,100,'','2024-01-22','2024-01-22',NULL,155);
/*!40000 ALTER TABLE `PAYMENT_RETURN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROVINCE`
--

DROP TABLE IF EXISTS `PROVINCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROVINCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVINCE`
--

LOCK TABLES `PROVINCE` WRITE;
/*!40000 ALTER TABLE `PROVINCE` DISABLE KEYS */;
INSERT INTO `PROVINCE` VALUES
(2,'Albacete'),
(3,'Alicante/Alacant'),
(4,'Almería'),
(5,'Ávila'),
(6,'Badajoz'),
(7,'Balears, Illes'),
(8,'Barcelona'),
(9,'Burgos'),
(10,'Cáceres'),
(11,'Cádiz'),
(12,'Castellón/Castelló'),
(13,'Ciudad Real'),
(14,'Córdoba'),
(15,'Coruña, A'),
(16,'Cuenca'),
(17,'Girona'),
(18,'Granada'),
(19,'Guadalajara'),
(20,'Gipuzkoa'),
(21,'Huelva'),
(22,'Huesca'),
(23,'Jaén'),
(24,'León'),
(25,'Lleida'),
(26,'Rioja, La'),
(27,'Lugo'),
(28,'Madrid'),
(29,'Málaga'),
(30,'Murcia'),
(31,'Navarra'),
(32,'Ourense'),
(33,'Asturias'),
(34,'Palencia'),
(35,'Palmas, Las'),
(36,'Pontevedra'),
(37,'Salamanca'),
(38,'Santa Cruz de Tenerife'),
(39,'Cantabria'),
(40,'Segovia'),
(41,'Sevilla'),
(42,'Soria'),
(43,'Tarragona'),
(44,'Teruel'),
(45,'Toledo'),
(46,'Valencia/València'),
(47,'Valladolid'),
(48,'Bizkaia'),
(49,'Zamora'),
(50,'Zaragoza'),
(51,'Ceuta'),
(52,'Melilla'),
(54,'SIN ESPECIFICAR');
/*!40000 ALTER TABLE `PROVINCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTION`
--

DROP TABLE IF EXISTS `QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answerNo` int(11) DEFAULT NULL,
  `answerYes` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc3d4sd4k6nytqjkwe8exuohxh` (`comission_id`),
  CONSTRAINT `FKc3d4sd4k6nytqjkwe8exuohxh` FOREIGN KEY (`comission_id`) REFERENCES `COMISSION` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTION`
--

LOCK TABLES `QUESTION` WRITE;
/*!40000 ALTER TABLE `QUESTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RATE`
--

DROP TABLE IF EXISTS `RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RATE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxParticipants` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `collective_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl7gaofc911f8ifbcmwheo3qte` (`activity_id`),
  KEY `FKbyrrd884sv6pm24v6o19w5bj0` (`collective_id`),
  CONSTRAINT `FKbyrrd884sv6pm24v6o19w5bj0` FOREIGN KEY (`collective_id`) REFERENCES `COLLECTIVE` (`id`),
  CONSTRAINT `FKl7gaofc911f8ifbcmwheo3qte` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RATE`
--

LOCK TABLES `RATE` WRITE;
/*!40000 ALTER TABLE `RATE` DISABLE KEYS */;
INSERT INTO `RATE` VALUES
(43,100,400,97,7),
(44,12,200,97,6),
(45,25,350,98,10),
(46,100,400,99,7),
(47,12,200,99,6),
(48,100,400,100,7),
(49,12,200,100,6),
(50,25,350,102,10),
(51,10,70,103,21),
(52,15,50,103,20);
/*!40000 ALTER TABLE `RATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RATING`
--

DROP TABLE IF EXISTS `RATING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RATING` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `ratingType_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi6qtxx9j89wyqhvhlmi6iq24b` (`ratingType_id`),
  CONSTRAINT `FKi6qtxx9j89wyqhvhlmi6iq24b` FOREIGN KEY (`ratingType_id`) REFERENCES `RATINGTYPE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RATING`
--

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;
INSERT INTO `RATING` VALUES
(31,'Speaking',25,6),
(32,'Listening',25,6),
(33,'Writing',25,6),
(34,'Reading',25,6),
(35,'Prácticas',100,7);
/*!40000 ALTER TABLE `RATING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RATINGTYPE`
--

DROP TABLE IF EXISTS `RATINGTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RATINGTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RATINGTYPE`
--

LOCK TABLES `RATINGTYPE` WRITE;
/*!40000 ALTER TABLE `RATINGTYPE` DISABLE KEYS */;
INSERT INTO `RATINGTYPE` VALUES
(6,'Calificación de idiomas estándar'),
(7,'Cursos de programación externos');
/*!40000 ALTER TABLE `RATINGTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RATINGVALUE`
--

DROP TABLE IF EXISTS `RATINGVALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RATINGVALUE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` double DEFAULT NULL,
  `announcement_id` bigint(20) NOT NULL,
  `rating_id` bigint(20) NOT NULL,
  `registration_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr19x0mqhdyxq26eojkfjscn7t` (`announcement_id`),
  KEY `FKj7owefejtbp5bui2gk6hgh715` (`rating_id`),
  KEY `FKp90tiotyrgl9po18edgjv1d5g` (`registration_id`),
  CONSTRAINT `FKj7owefejtbp5bui2gk6hgh715` FOREIGN KEY (`rating_id`) REFERENCES `RATING` (`id`),
  CONSTRAINT `FKp90tiotyrgl9po18edgjv1d5g` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`),
  CONSTRAINT `FKr19x0mqhdyxq26eojkfjscn7t` FOREIGN KEY (`announcement_id`) REFERENCES `ANNOUNCEMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RATINGVALUE`
--

LOCK TABLES `RATINGVALUE` WRITE;
/*!40000 ALTER TABLE `RATINGVALUE` DISABLE KEYS */;
INSERT INTO `RATINGVALUE` VALUES
(93,6,9,31,155),
(94,NULL,9,32,155),
(95,NULL,9,33,155),
(96,NULL,9,34,155);
/*!40000 ALTER TABLE `RATINGVALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRATION`
--

DROP TABLE IF EXISTS `REGISTRATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REGISTRATION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acceptFilmAndPhoto` bit(1) DEFAULT NULL,
  `accountNumber` varchar(255) DEFAULT NULL,
  `byTownHall` bit(1) DEFAULT NULL,
  `cancellationReason` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `diplomaCollected` bit(1) DEFAULT NULL,
  `diplomaDate` date DEFAULT NULL,
  `diplomaOnWeb` bit(1) DEFAULT NULL,
  `documentationCompleted` bit(1) DEFAULT NULL,
  `iDPaypal` varchar(255) DEFAULT NULL,
  `iDTPV` varchar(255) DEFAULT NULL,
  `installmentPayment` bit(1) DEFAULT NULL,
  `marcAsCanceled` bit(1) DEFAULT NULL,
  `marcAsPaid` bit(1) DEFAULT NULL,
  `scholarshipApproved` bit(1) DEFAULT NULL,
  `scholarshipDenied` bit(1) DEFAULT NULL,
  `scholarshipRequested` bit(1) DEFAULT NULL,
  `solicitudeDate` date DEFAULT NULL,
  `specialNeeds` varchar(255) DEFAULT NULL,
  `discount_id` bigint(20) DEFAULT NULL,
  `headquarter_id` bigint(20) DEFAULT NULL,
  `languageLevel_id` bigint(20) DEFAULT NULL,
  `paymentType_id` bigint(20) NOT NULL,
  `rate_id` bigint(20) DEFAULT NULL,
  `schedule_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) NOT NULL,
  `diplomaColectionDate` date DEFAULT NULL,
  `materialCode` bigint(20) DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `cancellationDate` date DEFAULT NULL,
  `isDown` bit(1) DEFAULT NULL,
  `repDiploma` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `business_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkge8ftyi8ny3hq5bxpk6r9hrf` (`discount_id`),
  KEY `FKrjostc4sl6j0b40fuwujkcvju` (`headquarter_id`),
  KEY `FK8vhyjaaslldmordvetm9ku4eo` (`languageLevel_id`),
  KEY `FK917wx9w5dy4nu091ticni5slp` (`paymentType_id`),
  KEY `FK4y3nmd2pxfa1ca8r07xwfhl29` (`rate_id`),
  KEY `FKncvr1xnc6hkgm7ahitsqg5l8q` (`schedule_id`),
  KEY `FKekkh384d2rxy3f6vmjjj0432s` (`state_id`),
  KEY `FK65ns7i3nvbisc3ibejnnmu0ku` (`student_id`),
  KEY `FKdkyb5u35cmwef1a8jytv8w9xo` (`business_id`),
  CONSTRAINT `FK4y3nmd2pxfa1ca8r07xwfhl29` FOREIGN KEY (`rate_id`) REFERENCES `RATE` (`id`),
  CONSTRAINT `FK65ns7i3nvbisc3ibejnnmu0ku` FOREIGN KEY (`student_id`) REFERENCES `STUDENT` (`id`),
  CONSTRAINT `FK8vhyjaaslldmordvetm9ku4eo` FOREIGN KEY (`languageLevel_id`) REFERENCES `LANGUAGELEVEL` (`id`),
  CONSTRAINT `FK917wx9w5dy4nu091ticni5slp` FOREIGN KEY (`paymentType_id`) REFERENCES `PAYMENTTYPE` (`id`),
  CONSTRAINT `FKdkyb5u35cmwef1a8jytv8w9xo` FOREIGN KEY (`business_id`) REFERENCES `BUSINESS` (`id`),
  CONSTRAINT `FKekkh384d2rxy3f6vmjjj0432s` FOREIGN KEY (`state_id`) REFERENCES `REGISTRATIONSTATE` (`id`),
  CONSTRAINT `FKkge8ftyi8ny3hq5bxpk6r9hrf` FOREIGN KEY (`discount_id`) REFERENCES `DISCOUNT` (`id`),
  CONSTRAINT `FKncvr1xnc6hkgm7ahitsqg5l8q` FOREIGN KEY (`schedule_id`) REFERENCES `SCHEDULE` (`id`),
  CONSTRAINT `FKrjostc4sl6j0b40fuwujkcvju` FOREIGN KEY (`headquarter_id`) REFERENCES `HEADQUARTER` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRATION`
--

LOCK TABLES `REGISTRATION` WRITE;
/*!40000 ALTER TABLE `REGISTRATION` DISABLE KEYS */;
INSERT INTO `REGISTRATION` VALUES
(155,'\0','ES21','\0','',NULL,'\0',NULL,'\0','\0',NULL,NULL,NULL,'\0',NULL,'\0','\0','','2024-01-19',NULL,NULL,NULL,NULL,1,44,79,4,35,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'3SzsajCnSQOPY5k1P2r1sA',NULL),
(156,'','22142190419',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-01-24',NULL,NULL,NULL,2,1,43,79,5,43,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL),
(157,'','22142190419',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-01-25',NULL,NULL,NULL,2,1,44,79,5,43,NULL,NULL,NULL,NULL,'2024-01-29','',NULL,NULL,9),
(159,'','219487129',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-01-26',NULL,NULL,NULL,NULL,1,45,85,4,43,NULL,NULL,NULL,NULL,NULL,'\0',NULL,NULL,NULL),
(168,'','219487129',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-05',NULL,NULL,NULL,NULL,2,50,88,3,43,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'Roca3AhCQ56Z9DBwJp6zXw',NULL),
(170,'','219487129',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-06',NULL,87,NULL,NULL,3,52,89,3,43,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'gx15KSNPTNGxfbpNimBkHw',NULL),
(171,'','219487129',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-07','Necesidad de corriente eléctrica',NULL,NULL,NULL,1,51,89,3,43,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'Ky4aLMpZTd6rVaLg0k8Jvg',NULL),
(174,'','219487129',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-07',NULL,87,NULL,NULL,1,52,89,3,43,NULL,NULL,NULL,NULL,NULL,'\0',NULL,'26p9n4vqSoO5pb3iRNvcMg',NULL);
/*!40000 ALTER TABLE `REGISTRATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRATIONSTATE`
--

DROP TABLE IF EXISTS `REGISTRATIONSTATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REGISTRATIONSTATE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRATIONSTATE`
--

LOCK TABLES `REGISTRATIONSTATE` WRITE;
/*!40000 ALTER TABLE `REGISTRATIONSTATE` DISABLE KEYS */;
INSERT INTO `REGISTRATIONSTATE` VALUES
(1,'Creada'),
(2,'Pendiente de documentación'),
(3,'Pendiente de pago'),
(4,'Formalizada'),
(5,'Anulada'),
(6,'Caducada');
/*!40000 ALTER TABLE `REGISTRATIONSTATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIREDDOCUMENT`
--

DROP TABLE IF EXISTS `REQUIREDDOCUMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIREDDOCUMENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `repFile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIREDDOCUMENT`
--

LOCK TABLES `REQUIREDDOCUMENT` WRITE;
/*!40000 ALTER TABLE `REQUIREDDOCUMENT` DISABLE KEYS */;
INSERT INTO `REQUIREDDOCUMENT` VALUES
(15,NULL,'Documento de identidad',NULL),
(16,'asf','asf',NULL),
(17,'DNI','Docuemento de identidad',NULL),
(18,'DNI','Documento de Identidad',NULL),
(20,NULL,'Acreditación personal FGUMA',NULL),
(21,NULL,'Documento de identidad',NULL);
/*!40000 ALTER TABLE `REQUIREDDOCUMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIREDDOCUMENT_ACTIVITY`
--

DROP TABLE IF EXISTS `REQUIREDDOCUMENT_ACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIREDDOCUMENT_ACTIVITY` (
  `activities_id` bigint(20) NOT NULL,
  `requiredDocuments_id` bigint(20) NOT NULL,
  KEY `FKf5wnk6tyy0h41e4dk0aedl2fw` (`requiredDocuments_id`),
  KEY `FK17igclaoevg0u19qvve3x09ap` (`activities_id`),
  CONSTRAINT `FK17igclaoevg0u19qvve3x09ap` FOREIGN KEY (`activities_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FKf5wnk6tyy0h41e4dk0aedl2fw` FOREIGN KEY (`requiredDocuments_id`) REFERENCES `REQUIREDDOCUMENT` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIREDDOCUMENT_ACTIVITY`
--

LOCK TABLES `REQUIREDDOCUMENT_ACTIVITY` WRITE;
/*!40000 ALTER TABLE `REQUIREDDOCUMENT_ACTIVITY` DISABLE KEYS */;
INSERT INTO `REQUIREDDOCUMENT_ACTIVITY` VALUES
(98,21);
/*!40000 ALTER TABLE `REQUIREDDOCUMENT_ACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIREDDOCUMENT_COLLECTIVE`
--

DROP TABLE IF EXISTS `REQUIREDDOCUMENT_COLLECTIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIREDDOCUMENT_COLLECTIVE` (
  `requiredDocuments_id` bigint(20) NOT NULL,
  `collectives_id` bigint(20) NOT NULL,
  KEY `FK9n7kuhq37lq6n3o0q0tn704pr` (`collectives_id`),
  KEY `FK1ps6vhay7nbpeovwqlnxwq260` (`requiredDocuments_id`),
  CONSTRAINT `FK1ps6vhay7nbpeovwqlnxwq260` FOREIGN KEY (`requiredDocuments_id`) REFERENCES `REQUIREDDOCUMENT` (`id`),
  CONSTRAINT `FK9n7kuhq37lq6n3o0q0tn704pr` FOREIGN KEY (`collectives_id`) REFERENCES `COLLECTIVE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIREDDOCUMENT_COLLECTIVE`
--

LOCK TABLES `REQUIREDDOCUMENT_COLLECTIVE` WRITE;
/*!40000 ALTER TABLE `REQUIREDDOCUMENT_COLLECTIVE` DISABLE KEYS */;
INSERT INTO `REQUIREDDOCUMENT_COLLECTIVE` VALUES
(18,6),
(20,9),
(20,10),
(20,18),
(20,19),
(21,9),
(21,10),
(21,18),
(21,19);
/*!40000 ALTER TABLE `REQUIREDDOCUMENT_COLLECTIVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIREDDOCUMENT_RATE`
--

DROP TABLE IF EXISTS `REQUIREDDOCUMENT_RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIREDDOCUMENT_RATE` (
  `requiredDocuments_id` bigint(20) NOT NULL,
  `rates_id` bigint(20) NOT NULL,
  KEY `FK5fy3orhimo9b2kdiyij3ta7r7` (`rates_id`),
  KEY `FKicvvfx0awphphenp5hu78pjsh` (`requiredDocuments_id`),
  CONSTRAINT `FK5fy3orhimo9b2kdiyij3ta7r7` FOREIGN KEY (`rates_id`) REFERENCES `RATE` (`id`),
  CONSTRAINT `FKicvvfx0awphphenp5hu78pjsh` FOREIGN KEY (`requiredDocuments_id`) REFERENCES `REQUIREDDOCUMENT` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIREDDOCUMENT_RATE`
--

LOCK TABLES `REQUIREDDOCUMENT_RATE` WRITE;
/*!40000 ALTER TABLE `REQUIREDDOCUMENT_RATE` DISABLE KEYS */;
INSERT INTO `REQUIREDDOCUMENT_RATE` VALUES
(18,43),
(18,44),
(18,46),
(18,47),
(18,48),
(18,49),
(20,45);
/*!40000 ALTER TABLE `REQUIREDDOCUMENT_RATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RETENTIONTYPE`
--

DROP TABLE IF EXISTS `RETENTIONTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RETENTIONTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `percentage` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RETENTIONTYPE`
--

LOCK TABLES `RETENTIONTYPE` WRITE;
/*!40000 ALTER TABLE `RETENTIONTYPE` DISABLE KEYS */;
INSERT INTO `RETENTIONTYPE` VALUES
(1,9),
(2,15);
/*!40000 ALTER TABLE `RETENTIONTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `isTeacher` bit(1) NOT NULL,
  `isSpeaker` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES
(1,'Presidente','\0','\0'),
(2,'Vicepresidente','\0','\0'),
(3,'Supervisor','\0','\0'),
(4,'Profesor','','\0'),
(5,'Ponente','\0','');
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCHEDULE`
--

DROP TABLE IF EXISTS `SCHEDULE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCHEDULE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxCapacity` double DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `classroom_id` bigint(20) DEFAULT NULL,
  `languageLevel_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbjc3hupu6npq79d6ifarha4gt` (`activity_id`),
  KEY `FKjsjx3s0v7palbou5cqcfvubik` (`classroom_id`),
  KEY `FKdc89h16n4ywochkm6xgyjg1dd` (`languageLevel_id`),
  CONSTRAINT `FKbjc3hupu6npq79d6ifarha4gt` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FKdc89h16n4ywochkm6xgyjg1dd` FOREIGN KEY (`languageLevel_id`) REFERENCES `LANGUAGELEVEL` (`id`),
  CONSTRAINT `FKjsjx3s0v7palbou5cqcfvubik` FOREIGN KEY (`classroom_id`) REFERENCES `CLASSROOM` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCHEDULE`
--

LOCK TABLES `SCHEDULE` WRITE;
/*!40000 ALTER TABLE `SCHEDULE` DISABLE KEYS */;
INSERT INTO `SCHEDULE` VALUES
(79,50,97,15,1),
(80,50,99,15,2),
(84,50,100,15,2),
(85,20,98,15,NULL),
(86,20,98,15,NULL),
(87,20,102,15,NULL),
(88,20,102,15,NULL),
(89,25,103,15,NULL);
/*!40000 ALTER TABLE `SCHEDULE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCHEDULEHOURS`
--

DROP TABLE IF EXISTS `SCHEDULEHOURS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCHEDULEHOURS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) DEFAULT NULL,
  `hourFrom` time(6) DEFAULT NULL,
  `hourTo` time(6) DEFAULT NULL,
  `schedule_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgncvtg0tvpaer0omcorbnpoy2` (`schedule_id`),
  CONSTRAINT `FKgncvtg0tvpaer0omcorbnpoy2` FOREIGN KEY (`schedule_id`) REFERENCES `SCHEDULE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCHEDULEHOURS`
--

LOCK TABLES `SCHEDULEHOURS` WRITE;
/*!40000 ALTER TABLE `SCHEDULEHOURS` DISABLE KEYS */;
INSERT INTO `SCHEDULEHOURS` VALUES
(54,'Lunes','10:00:00.849000','12:00:00.849000',79),
(55,'Miércoles','10:00:00.011000','12:00:00.011000',79),
(57,'Miércoles','10:00:00.011000','12:00:00.011000',80),
(58,'Lunes','10:00:00.053000','12:00:00.053000',80),
(59,'Miércoles','10:00:00.011000','12:00:00.011000',84),
(60,'Lunes','10:00:00.053000','12:00:00.053000',84),
(61,'Lunes','10:00:00.465000','12:00:00.465000',85),
(62,'Viernes','16:00:00.583000','18:00:00.583000',86),
(63,'Lunes','10:00:00.465000','12:00:00.465000',87),
(64,'Viernes','16:00:00.583000','18:00:00.583000',88),
(65,'Lunes','16:00:00.325000','18:30:00.325000',89),
(66,'Martes','16:00:00.900000','18:30:00.900000',89),
(67,'Miércoles','16:00:00.491000','18:30:00.491000',89),
(68,'Jueves','16:00:00.861000','18:00:00.861000',89),
(69,'Viernes','16:00:00.990000','18:30:00.990000',89);
/*!40000 ALTER TABLE `SCHEDULEHOURS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCHEDULE_PARTICIPATORROLE`
--

DROP TABLE IF EXISTS `SCHEDULE_PARTICIPATORROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCHEDULE_PARTICIPATORROLE` (
  `schedules_id` bigint(20) NOT NULL,
  `participatorRoles_id` bigint(20) NOT NULL,
  KEY `FKmly3i5a1jkeue3orpxx2h1a3w` (`participatorRoles_id`),
  KEY `FKcr5bltcok08nfupwlkpu1gtmo` (`schedules_id`),
  CONSTRAINT `FKcr5bltcok08nfupwlkpu1gtmo` FOREIGN KEY (`schedules_id`) REFERENCES `SCHEDULE` (`id`),
  CONSTRAINT `FKmly3i5a1jkeue3orpxx2h1a3w` FOREIGN KEY (`participatorRoles_id`) REFERENCES `PARTICIPATORROLE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCHEDULE_PARTICIPATORROLE`
--

LOCK TABLES `SCHEDULE_PARTICIPATORROLE` WRITE;
/*!40000 ALTER TABLE `SCHEDULE_PARTICIPATORROLE` DISABLE KEYS */;
INSERT INTO `SCHEDULE_PARTICIPATORROLE` VALUES
(79,130),
(87,137),
(88,137);
/*!40000 ALTER TABLE `SCHEDULE_PARTICIPATORROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECTION`
--

DROP TABLE IF EXISTS `SECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SECTION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `photo` tinytext DEFAULT NULL,
  `showEnglish` bit(1) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tagE` varchar(255) DEFAULT NULL,
  `viewOrder` int(11) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `webPage_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl23wdc5sdquah83osonh2qnk1` (`section_id`),
  KEY `FKsxktrb2vwask3jvhiv5au5l9i` (`webPage_id`),
  CONSTRAINT `FKl23wdc5sdquah83osonh2qnk1` FOREIGN KEY (`section_id`) REFERENCES `SECTION` (`id`),
  CONSTRAINT `FKsxktrb2vwask3jvhiv5au5l9i` FOREIGN KEY (`webPage_id`) REFERENCES `WEBPAGE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECTION`
--

LOCK TABLES `SECTION` WRITE;
/*!40000 ALTER TABLE `SECTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPECIAL_NEED_SPEAKER`
--

DROP TABLE IF EXISTS `SPECIAL_NEED_SPEAKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPECIAL_NEED_SPEAKER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `presentationEquipment` varchar(255) DEFAULT NULL,
  `presentationEquipmentOther` varchar(255) DEFAULT NULL,
  `specialTechnicalNeeds` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `participator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK20v2wevnqetignqoktele0ai8` (`activity_id`),
  KEY `FK62nhn11ev9pe5vyhl6t5q5wvq` (`participator_id`),
  CONSTRAINT `FK20v2wevnqetignqoktele0ai8` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`),
  CONSTRAINT `FK62nhn11ev9pe5vyhl6t5q5wvq` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPECIAL_NEED_SPEAKER`
--

LOCK TABLES `SPECIAL_NEED_SPEAKER` WRITE;
/*!40000 ALTER TABLE `SPECIAL_NEED_SPEAKER` DISABLE KEYS */;
INSERT INTO `SPECIAL_NEED_SPEAKER` VALUES
(1,'Proyector','Pizarra','Conexión internet',98,11),
(2,'Proyector',NULL,' ',98,11);
/*!40000 ALTER TABLE `SPECIAL_NEED_SPEAKER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STADISTIC_REGISTRATION`
--

DROP TABLE IF EXISTS `STADISTIC_REGISTRATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STADISTIC_REGISTRATION` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `highLevel` varchar(255) DEFAULT NULL,
  `isDegreeProgram` bit(1) DEFAULT NULL,
  `isEnrolledInLastYearSubject` bit(1) DEFAULT NULL,
  `isPursuingUniversityDegreeUma` bit(1) DEFAULT NULL,
  `registration_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7wd690ltmjmq0cn8gtuo55ma5` (`registration_id`),
  CONSTRAINT `FK7wd690ltmjmq0cn8gtuo55ma5` FOREIGN KEY (`registration_id`) REFERENCES `REGISTRATION` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STADISTIC_REGISTRATION`
--

LOCK TABLES `STADISTIC_REGISTRATION` WRITE;
/*!40000 ALTER TABLE `STADISTIC_REGISTRATION` DISABLE KEYS */;
INSERT INTO `STADISTIC_REGISTRATION` VALUES
(6,NULL,NULL,NULL,NULL,156),
(16,NULL,NULL,NULL,NULL,168),
(18,NULL,'\0','\0',NULL,170),
(22,NULL,'\0','\0','\0',174);
/*!40000 ALTER TABLE `STADISTIC_REGISTRATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acceptDataProtection` bit(1) DEFAULT NULL,
  `acceptPublicity` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `dateAcceptDataProtection` date DEFAULT NULL,
  `dateAcceptPublicity` date DEFAULT NULL,
  `dateRegistration` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `headquarters` varchar(255) DEFAULT NULL,
  `identificationDocumentNumber` varchar(255) DEFAULT NULL,
  `identificationDocumentNumberTutor` varchar(255) DEFAULT NULL,
  `identificationDocumentVerified` bit(1) DEFAULT NULL,
  `isMinor` bit(1) DEFAULT NULL,
  `isValid` bit(1) DEFAULT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `nameTutor` varchar(255) DEFAULT NULL,
  `observations` text DEFAULT NULL,
  `passwordValidated` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postalCode` int(11) DEFAULT NULL,
  `professionOrStudies` varchar(255) DEFAULT NULL,
  `repImage` varchar(255) DEFAULT NULL,
  `surname` varchar(255) NOT NULL,
  `surnameTutor` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `educationalLevel_id` bigint(20) DEFAULT NULL,
  `faculty_id` bigint(20) DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `howDidYouKnowUs_id` bigint(20) DEFAULT NULL,
  `identificationDocument_id` bigint(20) DEFAULT NULL,
  `identificationDocumentTutor_id` bigint(20) DEFAULT NULL,
  `title_id` bigint(20) DEFAULT NULL,
  `university_id` bigint(20) DEFAULT NULL,
  `isDown` bit(1) NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs3dukh3t6g3sp0n0fmpx60sr3` (`country_id`),
  KEY `FKd7emuvial41gewsbg3olhp1sn` (`educationalLevel_id`),
  KEY `FKqjaircjqardrd7pro9xcorx59` (`faculty_id`),
  KEY `FK2ln6plov22uc98y99gd38j08y` (`gender_id`),
  KEY `FKdn4sjip0mcwflb0li0simydfs` (`howDidYouKnowUs_id`),
  KEY `FKas5f5b0tgnqgb7wpv9arr6a3d` (`identificationDocument_id`),
  KEY `FKs8xshr21vwm662fdy5n6x1q85` (`identificationDocumentTutor_id`),
  KEY `FKg1owe8l6c9b9akeeijreu39x7` (`title_id`),
  KEY `FK8634a1bhcdreefy0pkf1mcps7` (`university_id`),
  KEY `FKb0fujy5thsyctux45cu0vns44` (`city_id`),
  CONSTRAINT `FK2ln6plov22uc98y99gd38j08y` FOREIGN KEY (`gender_id`) REFERENCES `GENDER` (`id`),
  CONSTRAINT `FK8634a1bhcdreefy0pkf1mcps7` FOREIGN KEY (`university_id`) REFERENCES `UNIVERSITY` (`id`),
  CONSTRAINT `FKas5f5b0tgnqgb7wpv9arr6a3d` FOREIGN KEY (`identificationDocument_id`) REFERENCES `IDENTIFICATIONDOCUMENT` (`id`),
  CONSTRAINT `FKb0fujy5thsyctux45cu0vns44` FOREIGN KEY (`city_id`) REFERENCES `CITY` (`id`),
  CONSTRAINT `FKd7emuvial41gewsbg3olhp1sn` FOREIGN KEY (`educationalLevel_id`) REFERENCES `EDUCATIONALLEVEL` (`id`),
  CONSTRAINT `FKdn4sjip0mcwflb0li0simydfs` FOREIGN KEY (`howDidYouKnowUs_id`) REFERENCES `HOW_DID_YOU_KNOW_US` (`id`),
  CONSTRAINT `FKg1owe8l6c9b9akeeijreu39x7` FOREIGN KEY (`title_id`) REFERENCES `TITLE` (`id`),
  CONSTRAINT `FKqjaircjqardrd7pro9xcorx59` FOREIGN KEY (`faculty_id`) REFERENCES `FACULTY` (`id`),
  CONSTRAINT `FKs3dukh3t6g3sp0n0fmpx60sr3` FOREIGN KEY (`country_id`) REFERENCES `COUNTRY` (`id`),
  CONSTRAINT `FKs8xshr21vwm662fdy5n6x1q85` FOREIGN KEY (`identificationDocumentTutor_id`) REFERENCES `IDENTIFICATIONDOCUMENT` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES
(35,'','','Calle Alonso de Palencia','1995-03-17',NULL,'2024-01-18','2024-01-18','2024-01-18','jantonio.obras@gmail.com','I.E.S Sierra de Mijas','78243456H',NULL,'','\0','\0','610856929','Juan Antonio',NULL,NULL,NULL,NULL,29001,'Albañil','6b52c2d3-611d-438b-924a-f93d5e5deb7e.webp','Gutierrez Mata',NULL,NULL,23,NULL,1,3,1,NULL,1,NULL,'\0',1),
(36,'','','Calle los Naranjos','2005-03-19',NULL,'2024-01-19','2024-01-19','2024-01-19','albilio_05@gmail.com','Coolegio Maristas de Málaga','45699876E',NULL,'','\0','\0','724456711','Albilio',NULL,NULL,NULL,NULL,29640,'Estudiante','c5627804-cbee-430b-98ac-8c2a7fc4c1cc.webp','Ruiz Ramos',NULL,NULL,24,NULL,1,1,1,NULL,18,1,'\0',2),
(43,'\0',NULL,'Calle las rosa 24','1998-12-04',NULL,NULL,NULL,NULL,'yadh0231@gmail.com',NULL,'77428560A',NULL,NULL,NULL,'\0','628594485','Yadira',NULL,NULL,NULL,NULL,29641,'Estudiante sin empleo',NULL,'Albedo Soria',NULL,NULL,21,NULL,2,1,1,NULL,NULL,NULL,'\0',NULL);
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT_BUSINESS`
--

DROP TABLE IF EXISTS `STUDENT_BUSINESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENT_BUSINESS` (
  `students_id` bigint(20) NOT NULL,
  `businesses_id` bigint(20) NOT NULL,
  KEY `FKk54mivmyo3lyaqf5b68t1y7a0` (`businesses_id`),
  KEY `FK3b0xwcb4cnlqa4inkgc9y8dqw` (`students_id`),
  CONSTRAINT `FK3b0xwcb4cnlqa4inkgc9y8dqw` FOREIGN KEY (`students_id`) REFERENCES `STUDENT` (`id`),
  CONSTRAINT `FKk54mivmyo3lyaqf5b68t1y7a0` FOREIGN KEY (`businesses_id`) REFERENCES `BUSINESS` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT_BUSINESS`
--

LOCK TABLES `STUDENT_BUSINESS` WRITE;
/*!40000 ALTER TABLE `STUDENT_BUSINESS` DISABLE KEYS */;
INSERT INTO `STUDENT_BUSINESS` VALUES
(43,9);
/*!40000 ALTER TABLE `STUDENT_BUSINESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TITLE`
--

DROP TABLE IF EXISTS `TITLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TITLE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `certificationName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TITLE`
--

LOCK TABLES `TITLE` WRITE;
/*!40000 ALTER TABLE `TITLE` DISABLE KEYS */;
INSERT INTO `TITLE` VALUES
(1,'SIN CERTIFICACION'),
(2,'ARQUITECTO'),
(3,'DIPLOMADO EN CIENCIAS EMPRESARIALES'),
(4,'DIPLOMADO EN EDUCACION SOCIAL'),
(5,'DIPLOMADO EN ENFERMERIA'),
(6,'DIPLOMADO EN FISIOTERAPIA (REFORMADO)'),
(7,'DIPLOMADO EN GESTION Y ADMINISTRACION PUBLICA'),
(8,'DIPLOMADO EN LOGOPEDIA'),
(9,'DIPLOMADO EN PODOLOGIA'),
(10,'DIPLOMADO EN RELACIONES LABORALES'),
(11,'DIPLOMADO EN TERAPIA OCUPACIONAL'),
(12,'DIPLOMADO EN TRABAJO SOCIAL'),
(13,'DIPLOMADO EN TURISMO'),
(14,'FILOLOGIA CLINICA'),
(15,'FILOLOGIA HISPANICA'),
(16,'FILOLOGIA INGLESA'),
(17,'FILOSOFIA'),
(18,'GEOGRAFIA'),
(19,'GRADO EN ADMINISTRACION Y DIRECCION DE EMPRESAS'),
(20,'GRADO EN ARQUITECTURA'),
(21,'GRADO EN BELLAS ARTES'),
(22,'GRADO EN BIOLOGIA'),
(23,'GRADO EN CIENCIAS AMBIENTALES'),
(24,'GRADO EN COMUNICACION AUDIOVISUAL'),
(25,'GRADO EN CRIMINOLOGIA'),
(26,'GRADO EN DERECHO'),
(27,'GRADO EN ECONOMIA'),
(28,'GRADO EN EDUCACION SOCIAL'),
(29,'GRADO EN ENFERMERIA'),
(30,'GRADO EN ESTUDIOS INGLESES'),
(31,'GRADO EN FILOLOGIA CLINICA'),
(32,'GRADO EN FILOLOGIA HISPINICA'),
(33,'GRADO EN FILOSOFIA'),
(34,'GRADO EN FINANCIAS Y CONTABILIDAD'),
(35,'GRADO EN FISIOTERAPIA'),
(36,'GRADO EN GEOGRAFIA Y GESTION DEL TERRITORIO'),
(37,'GRADO EN GESTION Y ADMINISTRACION PUBLICA'),
(38,'GRADO EN HISTORIA'),
(39,'GRADO EN HISTORIA DEL ARTE'),
(40,'GRADO EN INGENIERIA DE COMPUTADORES'),
(41,'GRADO EN INGENIERIA DE SISTEMAS DE TELECOMUNICACION'),
(42,'GRADO EN INGENIERIA DE SISTEMAS ELECTRONICOS'),
(43,'GRADO EN INGENIERIA DE SONIDO E IMAGEN'),
(44,'GRADO EN INGENIERIA DE TECNOLOGIA DE TELECOMUNICACION'),
(45,'GRADO EN INGENIERIA DEL SOFTWARE'),
(46,'GRADO EN INGENIERIA ELECTRONICA'),
(47,'GRADO EN INGENIERIA ELECTRONICA INDUSTRIAL'),
(48,'GRADO EN INGENIERIA EN DISEÃ‘O  INDUSTRIAL Y DESARROLLO DE PRODUCTO'),
(49,'GRADO EN INGENIERIA EN TECNOLOGIA INDUSTRIALES'),
(50,'GRADO EN INGENIERIA INFORMATICA'),
(51,'GRADO EN INGENIERIA MECANICA'),
(52,'GRADO EN INGENIERIA QUIMICA'),
(53,'GRADO EN INGENIERIA TELEMATICA'),
(54,'GRADO EN LOGOPEDIA'),
(55,'GRADO EN MAESTRO/A DE EDUCACION INFANTIL'),
(56,'GRADO EN MAESTRO/A DE EDUCACION PRIMARIA'),
(57,'GRADO EN MARKETING E INVESTIGACION DE MERCADOS'),
(58,'GRADO EN MATEMATICAS'),
(59,'GRADO EN MEDICINA'),
(60,'GRADO EN PEDAGOGIA'),
(61,'GRADO EN PERIODISMO'),
(62,'GRADO EN PODOLOGIA'),
(63,'GRADO EN PSICOLOGIA'),
(64,'GRADO EN PUBLICIDAD Y RELACIONES PUBLICU'),
(65,'GRADO EN QUIMICA'),
(66,'GRADO EN RELACIONES LABORALES Y RECURSOS HUMANOS'),
(67,'GRADO EN TERAPIA OCUPACIONAL'),
(68,'GRADO EN TRABAJO SOCIAL'),
(69,'GRADO EN TRADUCCION E INTERPRETACION'),
(70,'GRADO EN TURISMO'),
(71,'HISTORIA'),
(72,'HISTORIA DEL ARTE'),
(73,'INGENIERO DE ORGANIZACION INDUSTRIAL'),
(74,'INGENIERO DE TELECOMUNICACION'),
(75,'INGENIERO EN AUTOMATICA Y ELECTRONICA INDUSTRIAL'),
(76,'INGENIERO EN ELECTRONICA'),
(77,'INGENIERO EN INFORMATICA'),
(78,'INGENIERO INDUSTRIAL'),
(79,'INGENIERO QUIMICO'),
(80,'INGENIERO TECNICO DE TELECOMUNICACION (SISTEMU DE TELECOMUNICACION)'),
(81,'INGENIERO TECNICO DE TELECOMUNICACION (SISTEMU ELECTRONICOS)'),
(82,'INGENIERO TECNICO DE TELECOMUNICACION (SONIDO E IMAGEN)'),
(83,'INGENIERO TECNICO EN DISEÃ‘O INDUSTRIAL'),
(84,'INGENIERO TECNICO EN INFORMATICA DE GESTION'),
(85,'INGENIERO TECNICO EN INFORMATICA DE SISTEMAS'),
(86,'INGENIERO TECNICO INDUSTRIAL ESPECIALIDAD ELECTRONICA INDUSTRIAL'),
(87,'INGENIERO TECNICO INDUSTRIAL. ESPECIALIDAD ELECTRICIDAD'),
(88,'INGENIERO TECNICO INDUSTRIAL. ESPECIALIDAD MECINICA'),
(89,'LDO. EN DERECHO'),
(90,'LDO. EN MEDICINA Y CIRUGIA'),
(91,'LDO. EN TRADUCCION E INTERPRETACION'),
(92,'LICENCIADO EN ADMINISTRACION Y DIRECCION DE EMPRESU'),
(93,'LICENCIADO EN BELLAS  ARTES'),
(94,'LICENCIADO EN BIOLOGIA'),
(95,'LICENCIADO EN CIENCIAS ACTUARIALES Y FINANCIERU'),
(96,'LICENCIADO EN CIENCIAS AMBIENTALES'),
(97,'LICENCIADO EN CIENCIAS DEL TRABAJO'),
(98,'LICENCIADO EN COMUNICACION AUDIOVISUAL'),
(99,'LICENCIADO EN ECONOMIA'),
(100,'LICENCIADO EN FILOLOGIA CLISICA'),
(101,'LICENCIADO EN FILOSOFIA'),
(102,'LICENCIADO EN GEOGRAFIA'),
(103,'LICENCIADO EN HISTORIA'),
(104,'LICENCIADO EN HISTORIA DEL ARTE'),
(105,'LICENCIADO EN MATEMATICAS'),
(106,'LICENCIADO EN MEDICINA'),
(107,'LICENCIADO EN PEDAGOGIA'),
(108,'LICENCIADO EN PERIODISMO'),
(109,'LICENCIADO EN PSICOLOGIA'),
(110,'LICENCIADO EN PSICOPEDAGOGIA'),
(111,'LICENCIADO EN PUBLICIDAD Y RELACIONES PUBLICAS'),
(112,'LICENCIADO EN QUIMICA'),
(113,'MAESTRO. ESPECIALIDAD DE AUDICION Y LENGUAJE'),
(114,'MAESTRO. ESPECIALIDAD DE EDUCACION ESPECIAL'),
(115,'MAESTRO. ESPECIALIDAD DE EDUCACION FISICA'),
(116,'MAESTRO. ESPECIALIDAD DE EDUCACION INFANTIL'),
(117,'MAESTRO. ESPECIALIDAD DE EDUCACION MUSICAL'),
(118,'MAESTRO. ESPECIALIDAD DE EDUCACION PRIMARIA'),
(119,'MAESTRO. ESPECIALIDAD DE LENGUA EXTRANJERA'),
(120,'LICENCIADO EN FARMACIA'),
(121,'OTROS ESTUDIOS');
/*!40000 ALTER TABLE `TITLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TOWN`
--

DROP TABLE IF EXISTS `TOWN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TOWN` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cod_auto` int(11) DEFAULT NULL,
  `cod_mun` int(11) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb08tcs36t1dq6q9tfpar9h1eo` (`province_id`),
  CONSTRAINT `FKb08tcs36t1dq6q9tfpar9h1eo` FOREIGN KEY (`province_id`) REFERENCES `PROVINCE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TOWN`
--

LOCK TABLES `TOWN` WRITE;
/*!40000 ALTER TABLE `TOWN` DISABLE KEYS */;
INSERT INTO `TOWN` VALUES
(17,29001,29649,'Mijas',29),
(18,29001,29600,'Marbella',29),
(19,29001,29680,'Estepona',29),
(20,29001,29400,'Ronda',29),
(21,29001,29640,'Fuengirola',29);
/*!40000 ALTER TABLE `TOWN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TO_LIST`
--

DROP TABLE IF EXISTS `TO_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TO_LIST` (
  `to_list_id` bigint(20) NOT NULL,
  `to_list` varchar(255) DEFAULT NULL,
  KEY `FK2e3xvsyy95opotu99tsjkof` (`to_list_id`),
  CONSTRAINT `FK2e3xvsyy95opotu99tsjkof` FOREIGN KEY (`to_list_id`) REFERENCES `MAIL_FGUMA` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TO_LIST`
--

LOCK TABLES `TO_LIST` WRITE;
/*!40000 ALTER TABLE `TO_LIST` DISABLE KEYS */;
INSERT INTO `TO_LIST` VALUES
(39,'jantoniosantos1987@gmail.com'),
(40,'jantonio.obras@gmail.com'),
(41,'jantonio.obras@gmail.com'),
(42,'yadh0231@gmail.com'),
(43,'aledmart@gmail.com'),
(44,'jmrios@inergis.com');
/*!40000 ALTER TABLE `TO_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TUTORING`
--

DROP TABLE IF EXISTS `TUTORING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TUTORING` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classroom_id` bigint(20) DEFAULT NULL,
  `participatorRole_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK77iyc1ji5f1ulnm2scrkpx4dx` (`classroom_id`),
  KEY `FKkjjwrtbcn5t9d38btsvcdc5jg` (`participatorRole_id`),
  CONSTRAINT `FK77iyc1ji5f1ulnm2scrkpx4dx` FOREIGN KEY (`classroom_id`) REFERENCES `CLASSROOM` (`id`),
  CONSTRAINT `FKkjjwrtbcn5t9d38btsvcdc5jg` FOREIGN KEY (`participatorRole_id`) REFERENCES `PARTICIPATORROLE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TUTORING`
--

LOCK TABLES `TUTORING` WRITE;
/*!40000 ALTER TABLE `TUTORING` DISABLE KEYS */;
INSERT INTO `TUTORING` VALUES
(24,15,130);
/*!40000 ALTER TABLE `TUTORING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TUTORINGHOURS`
--

DROP TABLE IF EXISTS `TUTORINGHOURS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TUTORINGHOURS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) DEFAULT NULL,
  `hourFrom` time(6) DEFAULT NULL,
  `hourTo` time(6) DEFAULT NULL,
  `tutoring_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe0vmlmcvvst739di13s74okld` (`tutoring_id`),
  CONSTRAINT `FKe0vmlmcvvst739di13s74okld` FOREIGN KEY (`tutoring_id`) REFERENCES `TUTORING` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TUTORINGHOURS`
--

LOCK TABLES `TUTORINGHOURS` WRITE;
/*!40000 ALTER TABLE `TUTORINGHOURS` DISABLE KEYS */;
INSERT INTO `TUTORINGHOURS` VALUES
(28,'Lunes','10:00:21.306000','12:00:21.306000',24);
/*!40000 ALTER TABLE `TUTORINGHOURS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TYPEREGISTER`
--

DROP TABLE IF EXISTS `TYPEREGISTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TYPEREGISTER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TYPEREGISTER`
--

LOCK TABLES `TYPEREGISTER` WRITE;
/*!40000 ALTER TABLE `TYPEREGISTER` DISABLE KEYS */;
INSERT INTO `TYPEREGISTER` VALUES
(1,'Completo'),
(2,'Parcial');
/*!40000 ALTER TABLE `TYPEREGISTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNIVERSITY`
--

DROP TABLE IF EXISTS `UNIVERSITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UNIVERSITY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isDown` bit(1) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNIVERSITY`
--

LOCK TABLES `UNIVERSITY` WRITE;
/*!40000 ALTER TABLE `UNIVERSITY` DISABLE KEYS */;
INSERT INTO `UNIVERSITY` VALUES
(1,'\0','Universidad de Málaga'),
(2,'\0','Otras Universidades');
/*!40000 ALTER TABLE `UNIVERSITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNREG_STUDENT`
--

DROP TABLE IF EXISTS `UNREG_STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UNREG_STUDENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dni` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `activity_id` bigint(20) NOT NULL,
  `isDown` bit(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `registrationState_id` bigint(20) NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlscaoebp1ywnn7r99q4uo377d` (`activity_id`),
  KEY `FK47iw6cjpkn9ekom6c99iagoah` (`registrationState_id`),
  CONSTRAINT `FK47iw6cjpkn9ekom6c99iagoah` FOREIGN KEY (`registrationState_id`) REFERENCES `REGISTRATIONSTATE` (`id`),
  CONSTRAINT `FKlscaoebp1ywnn7r99q4uo377d` FOREIGN KEY (`activity_id`) REFERENCES `ACTIVITY` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNREG_STUDENT`
--

LOCK TABLES `UNREG_STUDENT` WRITE;
/*!40000 ALTER TABLE `UNREG_STUDENT` DISABLE KEYS */;
INSERT INTO `UNREG_STUDENT` VALUES
(8,'84556724T','jantoniosantos1987@gmail.com','Juan Antonio','De los Santos Martin',97,'\0',NULL,1,'dOXvMKvJQeKAa6BmGyUvoQ'),
(9,'25674941H','jmrios@inergis.com','Juan Miguel','De los Ríos Caparrós',102,'\0',300,1,'GDyc+XA0QnmwVBEYTQmgog');
/*!40000 ALTER TABLE `UNREG_STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dni` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `appUser_id` bigint(20) DEFAULT NULL,
  `participator_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `isDown` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2da8tohtc3w14hiub2w3asp5h` (`appUser_id`),
  UNIQUE KEY `UK_9n6aoww8kjo7woy25fhjyab1f` (`participator_id`),
  UNIQUE KEY `UK_g3a205p4bc35dow56nssnr1ge` (`student_id`),
  CONSTRAINT `FK52n4bgh5f6pivplqvc9p0of3g` FOREIGN KEY (`student_id`) REFERENCES `STUDENT` (`id`),
  CONSTRAINT `FK6hmrv869gv44om5s186prh3mc` FOREIGN KEY (`appUser_id`) REFERENCES `APPUSER` (`id`),
  CONSTRAINT `FKm4el08r38txgv09dmkvixye0u` FOREIGN KEY (`participator_id`) REFERENCES `PARTICIPATOR` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES
(75,'15545678Z','$2a$10$NuHKGy3YG10a0KyRtDwmdu4W72qF33y9kU3MmODgYDkATm21btPeS','admin',38,NULL,NULL,'\0'),
(86,'72433569U','$2a$10$3nDL47NsJ1By53Cn9KRJE.yrWhyTG8x6GUuQ4y1sz3dlNo.kPES2O','martinpd',51,NULL,NULL,'\0'),
(87,'84569122P','$2a$10$yZdIVjYI52vXvjoRZDDkbOzGEjiu8OOTWNf6Ga8bfPxDPopwGHR..','ssgorga',52,NULL,NULL,'\0'),
(108,'88844563W','$2a$10$iv9mAMZWLzR5Gi6pM1CqxO6BhbPmMpfDCbZ6m1klpTz0uGsjoYZGq','dmarsa',67,9,NULL,'\0'),
(112,'88543562H','$2a$10$Cdm4ofS93NUfXWnTHjYRCOrTKZVg3zeRogmX8z0zUg.14GcTSwk12','ales',71,10,NULL,'\0'),
(113,'77428559W','$2a$10$yZdIVjYI52vXvjoRZDDkbOzGEjiu8OOTWNf6Ga8bfPxDPopwGHR..','alumno',73,NULL,NULL,'\0'),
(115,'77428560A','$2a$10$WA7O3Yo8sN7OWIIETv7EIe1Z.IUfFZV5l3NwzNKKtXm/pG1Xm3.cC','yadh',75,NULL,43,'\0'),
(116,'77455991E','$2a$10$ul66dedAar0dV.Ht/m4Ql.t4ohkB/El081bi6nM6n/oJS5XRvFMiC','aled',76,11,NULL,'\0'),
(124,'74333256T','$2a$10$/oT.oyiHLQ5J4eMit/.vhOfo4f6BFWhIzCzlz4O.w6sOuwMo4p8t2','isaram',86,12,NULL,'\0');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEBPAGE`
--

DROP TABLE IF EXISTS `WEBPAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEBPAGE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  `descriptionE` text DEFAULT NULL,
  `idSchema` int(11) DEFAULT NULL,
  `incluedeSearch` bit(1) DEFAULT NULL,
  `isSecretaty` bit(1) DEFAULT NULL,
  `madificationDate` date DEFAULT NULL,
  `needLogin` bit(1) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tagE` varchar(255) DEFAULT NULL,
  `comission_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlcehp5k563km3a7kah47f1c8f` (`comission_id`),
  KEY `FKm0m3vhn7je1jt174w8j6du1p4` (`question_id`),
  CONSTRAINT `FKlcehp5k563km3a7kah47f1c8f` FOREIGN KEY (`comission_id`) REFERENCES `COMISSION` (`id`),
  CONSTRAINT `FKm0m3vhn7je1jt174w8j6du1p4` FOREIGN KEY (`question_id`) REFERENCES `QUESTION` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEBPAGE`
--

LOCK TABLES `WEBPAGE` WRITE;
/*!40000 ALTER TABLE `WEBPAGE` DISABLE KEYS */;
/*!40000 ALTER TABLE `WEBPAGE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-10 12:09:16
