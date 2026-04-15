-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ortho_event
-- ------------------------------------------------------
-- Server version	5.6.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `hsno` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_sender_id` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hribgo0kw00r7vvaw39vjx0cq` (`address_id`),
  KEY `FK_bqq4bu608oxckso8scyqv0p2y` (`profile_pic_id`),
  KEY `FK_srrkly0y7bt6n8h3l6mh5ua0t` (`user_id_id`),
  CONSTRAINT `FK_bqq4bu608oxckso8scyqv0p2y` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hribgo0kw00r7vvaw39vjx0cq` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_srrkly0y7bt6n8h3l6mh5ua0t` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comman_users`
--

DROP TABLE IF EXISTS `comman_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comman_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_sender_id` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o69qwvnhiy577jr55uyvxc4fb` (`address_id`),
  KEY `FK_lcks1kjaf10ckh8vyf2yurnk0` (`profile_pic_id`),
  KEY `FK_9lehq2efnkw14px20u55vlg10` (`user_id_id`),
  CONSTRAINT `FK_9lehq2efnkw14px20u55vlg10` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`),
  CONSTRAINT `FK_lcks1kjaf10ckh8vyf2yurnk0` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_o69qwvnhiy577jr55uyvxc4fb` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comman_users`
--

LOCK TABLES `comman_users` WRITE;
/*!40000 ALTER TABLE `comman_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `comman_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `docs_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_certificate`
--

DROP TABLE IF EXISTS `download_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_certificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `download_date` datetime DEFAULT NULL,
  `international_certificate_id` bigint(20) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g5eo5gr8pmicrf6r2hjgcn3rd` (`international_certificate_id`),
  CONSTRAINT `FK_g5eo5gr8pmicrf6r2hjgcn3rd` FOREIGN KEY (`international_certificate_id`) REFERENCES `international_certificate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_certificate`
--

LOCK TABLES `download_certificate` WRITE;
/*!40000 ALTER TABLE `download_certificate` DISABLE KEYS */;
INSERT INTO `download_certificate` VALUES (1,0,NULL,3,'9916159009'),(2,0,NULL,46,'9448114892'),(3,0,NULL,68,'6364604266'),(4,0,NULL,91,'9448266519'),(5,0,NULL,134,'6360735174'),(6,0,NULL,154,'8105029328');
/*!40000 ALTER TABLE `download_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_id`
--

DROP TABLE IF EXISTS `download_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download_id` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `download_date` datetime DEFAULT NULL,
  `international_certificate_id` bigint(20) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_j6ownprj4stkp6l8hp5rktu29` (`international_certificate_id`),
  CONSTRAINT `FK_j6ownprj4stkp6l8hp5rktu29` FOREIGN KEY (`international_certificate_id`) REFERENCES `international_certificate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_id`
--

LOCK TABLES `download_id` WRITE;
/*!40000 ALTER TABLE `download_id` DISABLE KEYS */;
INSERT INTO `download_id` VALUES (1,0,NULL,159,'8147161996'),(2,0,NULL,117,'8618501003'),(3,0,NULL,69,'9448403444'),(4,0,NULL,162,'9980368494'),(5,0,NULL,93,'9986276824'),(6,0,NULL,134,'6360735174'),(7,0,NULL,154,'8105029328');
/*!40000 ALTER TABLE `download_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `international_certificate`
--

DROP TABLE IF EXISTS `international_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `international_certificate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `idno` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `international_certificate`
--

LOCK TABLES `international_certificate` WRITE;
/*!40000 ALTER TABLE `international_certificate` DISABLE KEYS */;
INSERT INTO `international_certificate` VALUES (1,1,'DELEGATE','','Dr.Lokesh B Hosamani','KOA-CME-DLGT-001','9743175950','9743175950','',''),(2,2,'DELEGATE','','Dr Shrinivas kalliguddi','KOA-CME-DLGT-002','9611766279','9611766279','',''),(3,3,'DELEGATE','','Dr CHANDRAKANT MEDA','KOA-CME-DLGT-003','9916159009','9916159009','',''),(4,4,'DELEGATE','','Dr Praveen kumar','KOA-CME-DLGT-004','9986280168','9986280168','',''),(5,5,'DELEGATE','','Dr Shashikanth Bhure','KOA-CME-DLGT-005','9513335166','9513335166','',''),(6,6,'DELEGATE','','Dr Rajesh','KOA-CME-DLGT-006','7829400601','7829400601','',''),(7,7,'DELEGATE','','Dr Raghu Krishnamurthy','KOA-CME-DLGT-007','919448844891','9448844891','',''),(8,8,'DELEGATE','','Dr Vasudeva reddy','KOA-CME-DLGT-008','91720415346','1720415346','',''),(9,9,'DELEGATE','','Dr Md Irshad Naveed Ahmed','KOA-CME-DLGT-009','918867819394','8867819394','',''),(10,10,'DELEGATE','','Dr Shriniwas Balshetwar','KOA-CME-DLGT-010','919960643147','9960643147','',''),(11,11,'DELEGATE','','Dr ROHIT JHAMNANI','KOA-CME-DLGT-011','919008416596','9008416596','',''),(12,12,'DELEGATE','','Dr Santosh Veershetty patil','KOA-CME-DLGT-012','918142376336','8142376336','',''),(13,13,'DELEGATE','','Dr Arunkumar NK','KOA-CME-DLGT-013','917760307800','7760307800','',''),(14,14,'DELEGATE','','Dr Shrikanth mathapathi','KOA-CME-DLGT-014','916362484959','6362484959','',''),(15,15,'DELEGATE','','Dr Dayanand Kalshetty','KOA-CME-DLGT-015','918951804877','8951804877','',''),(16,16,'DELEGATE','','Dr Nishant Panegaon','KOA-CME-DLGT-016','919844603535','9844603535','',''),(17,17,'DELEGATE','','Dr Ravindranath Kommi','KOA-CME-DLGT-017','919341933405','9341933405','',''),(18,18,'DELEGATE','','Dr Shivaji Gurdale','KOA-CME-DLGT-018','919731612366','9731612366','',''),(19,19,'DELEGATE','','Dr Mohan Jadhav','KOA-CME-DLGT-019','919945835510','9945835510','',''),(20,20,'DELEGATE','','Dr. Shivkumar Patil','KOA-CME-DLGT-020','919008419121','9008419121','',''),(21,21,'DELEGATE','','Ajaykumar','KOA-CME-DLGT-021','918951803865','8951803865','',''),(22,22,'DELEGATE','','Dr Avinash Meda','KOA-CME-DLGT-022','918904589009','8904589009','',''),(23,23,'DELEGATE','','Dr Biradar Prashant','KOA-CME-DLGT-023','917977276038','7977276038','',''),(24,24,'DELEGATE','','Dr Mallikarjun','KOA-CME-DLGT-024','919980653418','9980653418','',''),(25,25,'DELEGATE','','Dr Suryawanshi Ravikumar','KOA-CME-DLGT-025','917353103000','7353103000','',''),(26,26,'DELEGATE','','Dr mallikarjun yemme','KOA-CME-DLGT-026','919036360396','9036360396','',''),(27,27,'DELEGATE','','DR PRASHANTH KUMAR','KOA-CME-DLGT-027','917892949194','7892949194','',''),(28,28,'DELEGATE','','Dr Kartik p n','KOA-CME-DLGT-028','919900353212','9900353212','',''),(29,29,'DELEGATE','','Dr Sachin Sulepetkar','KOA-CME-DLGT-029','918310186812','8310186812','',''),(30,30,'DELEGATE','','Digambar','KOA-CME-DLGT-030','919731351616','9731351616','',''),(31,31,'DELEGATE','','Dr Rohit Ranjolker','KOA-CME-DLGT-031','917561072093','7561072093','',''),(32,32,'DELEGATE','','Dr Md Mujtaba Hussain Patel','KOA-CME-DLGT-032','919972118756','9972118756','',''),(33,33,'DELEGATE','','Dr. Aamir Ali Soharwardi','KOA-CME-DLGT-033','919738335165','9738335165','',''),(34,34,'DELEGATE','','Dr Channabasava','KOA-CME-DLGT-034','919663202375','9663202375','',''),(35,35,'DELEGATE','','Dr Vishal Patil','KOA-CME-DLGT-035','918762542376','8762542376','',''),(36,36,'DELEGATE','','Dr SIDHARTH MELKUNDE','KOA-CME-DLGT-036','918547835564','8547835564','',''),(37,37,'DELEGATE','','Dr Anirudh C k','KOA-CME-DLGT-037','919008399299','9008399299','',''),(38,38,'DELEGATE','','Dr Veeresh Gourshetty','KOA-CME-DLGT-038','918147988038','8147988038','',''),(39,39,'DELEGATE','','Dr. MD Anwar','KOA-CME-DLGT-039','918050674792','8050674792','',''),(40,40,'DELEGATE','','Dr. Md Zakiuddin','KOA-CME-DLGT-040','919448426470','9448426470','',''),(41,41,'DELEGATE','','Dr Santosh v shegedar','KOA-CME-DLGT-041','917892210723','7892210723','',''),(42,42,'DELEGATE','','Dr Sachin Avinash Shah','KOA-CME-DLGT-042','919448139010','9448139010','',''),(43,43,'DELEGATE','','Dr Manjunath Daragad','KOA-CME-DLGT-043','919880372833','9880372833','',''),(44,44,'DELEGATE','','Dr Sachidanand Rai','KOA-CME-DLGT-044','919448455166','9448455166','',''),(45,45,'DELEGATE','','Dr Sarang Shete','KOA-CME-DLGT-045','919015442838','9015442838','',''),(46,46,'DELEGATE','','Dr Adiveppa hosangadi','KOA-CME-DLGT-046','919448114892','9448114892','',''),(47,47,'DELEGATE','','Dr Sachin Hanumanth Katti','KOA-CME-DLGT-047','917795263460','7795263460','',''),(48,48,'DELEGATE','','Dr Shivaraj a c','KOA-CME-DLGT-048','919686196045','9686196045','',''),(49,49,'DELEGATE','','Dr Marthand Kulkarni','KOA-CME-DLGT-049','919920736795','9920736795','',''),(50,50,'DELEGATE','','Dr Vijay Kumar Bulgundi','KOA-CME-DLGT-050','919900265365','9900265365','',''),(51,51,'DELEGATE','','DR ABHISHEK G','KOA-CME-DLGT-051','919008574732','9008574732','',''),(52,52,'DELEGATE','','Dr Shivshanker. B','KOA-CME-DLGT-052','919035624972','9035624972','',''),(53,53,'DELEGATE','','Dr sharanayya','KOA-CME-DLGT-053','919448100173','9448100173','',''),(54,54,'DELEGATE','','Dr Shankreppa','KOA-CME-DLGT-054','919845433848','9845433848','',''),(55,55,'DELEGATE','','Dr rajshekhar patil','KOA-CME-DLGT-055','919740212798','9740212798','',''),(56,56,'DELEGATE','','Dr Vilas','KOA-CME-DLGT-056','919626696893','9626696893','',''),(57,57,'DELEGATE','','Dr Kiran M Patil','KOA-CME-DLGT-057','919448444948','9448444948','',''),(58,58,'DELEGATE','','Dr BIPINKUMAR','KOA-CME-DLGT-058','919663031456','9663031456','',''),(59,59,'DELEGATE','','Dr Channaveer Karse','KOA-CME-DLGT-059','919900778806','9900778806','',''),(60,60,'DELEGATE','','Dr MOHAMMED ABDUL QUADAR','KOA-CME-DLGT-060','919448349967','9448349967','',''),(61,61,'DELEGATE','','Dr Patwadi Ajay Kumar','KOA-CME-DLGT-061','919959503911','9959503911','',''),(62,62,'DELEGATE','','Dr Omprakash Kalyani','KOA-CME-DLGT-062','919850299140','9850299140','',''),(63,63,'DELEGATE','','Dr Anand b jabshetty','KOA-CME-DLGT-063','919480066668','9480066668','',''),(64,64,'DELEGATE','','Dr. vijaykumar','KOA-CME-DLGT-064','919738415240','9738415240','',''),(65,65,'DELEGATE','','Dr Arunkumar NK','KOA-CME-DLGT-065','917760307800','7760307800','',''),(66,66,'DELEGATE','','Dr Yuvaraj M Biradar','KOA-CME-DLGT-066','919448452147','9448452147','',''),(67,67,'DELEGATE','','Dr Srimanth SGmadival','KOA-CME-DLGT-067','919448579748','9448579748','',''),(68,68,'DELEGATE','','Dr.Sharath tukade','KOA-CME-DLGT-068','916364604266','6364604266','',''),(69,69,'DELEGATE','','Dr Nitin patil','KOA-CME-DLGT-069','919448403444','9448403444','',''),(70,70,'DELEGATE','','Dr kavita Nitin Patil','KOA-CME-DLGT-070','919482637700','9482637700','',''),(71,71,'DELEGATE','','Dr Sajjal Balte','KOA-CME-DLGT-071','919845861186','9845861186','',''),(72,72,'DELEGATE','','Dr Kiran B','KOA-CME-DLGT-072','919945690149','9945690149','',''),(73,73,'DELEGATE','','Dr Yuvraj jadhav','KOA-CME-DLGT-073','919742192500','9742192500','',''),(74,74,'DELEGATE','','Dr.somshekhar Bhalke','KOA-CME-DLGT-074','919900002665','9900002665','',''),(75,75,'DELEGATE','','Dr girish','KOA-CME-DLGT-075','918722441111','8722441111','',''),(76,76,'DELEGATE','','Dr.Ambrish Avate','KOA-CME-DLGT-076','917259201939','7259201939','',''),(77,77,'DELEGATE','','Dr Nagraj Mitra','KOA-CME-DLGT-077','918105954280','8105954280','',''),(78,78,'DELEGATE','','Dr.sandesh','KOA-CME-DLGT-078','919113991393','9113991393','',''),(79,79,'DELEGATE','','Dr Santosh Reddy','KOA-CME-DLGT-079','919844324835','9844324835','',''),(80,80,'DELEGATE','','Dr.Seema Tiwari Pandey','KOA-CME-DLGT-080','919449825415','9449825415','',''),(81,81,'DELEGATE','','Dr NANDINI D J','KOA-CME-DLGT-081','918496876499','8496876499','',''),(82,82,'DELEGATE','','Dr Girish Mahanthayya swamy','KOA-CME-DLGT-082','919844812600','9844812600','',''),(83,83,'DELEGATE','','Dr Prashant Patil','KOA-CME-DLGT-083','919964431000','9964431000','',''),(84,84,'DELEGATE','','Dr Abdul Aziz','KOA-CME-DLGT-084','919886311173','9886311173','',''),(85,85,'DELEGATE','','Dr Anandkumar','KOA-CME-DLGT-085','918971282391','8971282391','',''),(86,86,'DELEGATE','','DR RAJKUMAR G B','KOA-CME-DLGT-086','919620055218','9620055218','',''),(87,87,'DELEGATE','','DR KISHWAR JAHAN','KOA-CME-DLGT-087','919538987493','9538987493','',''),(88,88,'DELEGATE','','Dr SURESH CHANDRA S S','KOA-CME-DLGT-088','919902718806','9902718806','',''),(89,89,'DELEGATE','','Dr Naganath Heble','KOA-CME-DLGT-089','919986309218','9986309218','',''),(90,90,'DELEGATE','','Dr. Vikram S D','KOA-CME-DLGT-090','919964205225','9964205225','',''),(91,91,'DELEGATE','','Dr Krishna reddy','KOA-CME-DLGT-091','919448266519','9448266519','',''),(92,92,'DELEGATE','','Dr ANUPAMA G J','KOA-CME-DLGT-092','919740457240','9740457240','',''),(93,93,'DELEGATE','','Dr Prashant','KOA-CME-DLGT-093','919986276824','9986276824','',''),(94,94,'DELEGATE','','Dr RAVINDRA PATIL','KOA-CME-DLGT-094','919110549984','9110549984','',''),(95,95,'DELEGATE','','Dr. Raghavendra Wagole','KOA-CME-DLGT-095','919591879785','9591879785','',''),(96,96,'DELEGATE','','Dr Rajendra bhalke','KOA-CME-DLGT-096','919448567927','9448567927','',''),(97,97,'DELEGATE','','Dr sukanand','KOA-CME-DLGT-097','919035386145','9035386145','',''),(98,98,'DELEGATE','','Dr praveen kumar sadanand','KOA-CME-DLGT-098','919591866086','9591866086','',''),(99,99,'DELEGATE','','Dr Arun Kumar Shirshetty','KOA-CME-DLGT-099','919739459214','9739459214','',''),(100,100,'DELEGATE','','Dr Santhosh','KOA-CME-DLGT-100','918792932111','8792932111','',''),(101,101,'DELEGATE','','Dr Sharnappa H','KOA-CME-DLGT-101','919591622006','9591622006','',''),(102,102,'DELEGATE','','Dr Gautam Kattimani','KOA-CME-DLGT-102','919980629581','9980629581','',''),(103,103,'DELEGATE','','Dr Sudha','KOA-CME-DLGT-103','918951792669','8951792669','',''),(104,104,'DELEGATE','','Dr Ravi Biradar','KOA-CME-DLGT-104','919945202667','9945202667','',''),(105,105,'DELEGATE','','Dr Hemalatha Patil','KOA-CME-DLGT-105','9.1945E+11','9449725850','',''),(106,106,'DELEGATE','','Dr. Vijay','KOA-CME-DLGT-106','9.19742E+11','9741676167','',''),(107,107,'DELEGATE','','Dr Nagnath Hulsure','KOA-CME-DLGT-107','919535578111','9535578111','',''),(108,108,'DELEGATE','','Dr Santosh prabha','KOA-CME-DLGT-108','919448349853','9448349853','',''),(109,109,'DELEGATE','','Dr Rajshekar Korwar','KOA-CME-DLGT-109','919448109681','9448109681','',''),(110,110,'DELEGATE','','Dr Aparna M','KOA-CME-DLGT-110','919448000834','9448000834','',''),(111,111,'DELEGATE','','DR SACHIN PATIL','KOA-CME-DLGT-111','919036891876','9036891876','',''),(112,112,'DELEGATE','','Dr Mahendra Biradar','KOA-CME-DLGT-112','919036920139','9036920139','',''),(113,113,'DELEGATE','','Dr Shantling Patil','KOA-CME-DLGT-113','9.19686E+11','9686475007','',''),(114,114,'DELEGATE','','Dr Ratikant swamy','KOA-CME-DLGT-114','919448469744','9448469744','',''),(115,115,'DELEGATE','','Dr Prem sagar','KOA-CME-DLGT-115','919742611774','9742611774','',''),(116,116,'DELEGATE','','Dr Pragnya','KOA-CME-DLGT-116','919742054543','9742054543','',''),(117,117,'DELEGATE','','Dr mahesh jojan','KOA-CME-DLGT-117','918618501003','8618501003','',''),(118,118,'DELEGATE','','Dr VINAY HALMANDGE','KOA-CME-DLGT-118','919481300420','9481300420','',''),(119,119,'DELEGATE','','Dr. Nagaraj v v','KOA-CME-DLGT-119','919341251119','9341251119','',''),(120,120,'DELEGATE','','Dr Sangmesh Kunkeri','KOA-CME-DLGT-120','919964748462','9964748462','',''),(121,121,'DELEGATE','','Dr Umesh patil','KOA-CME-DLGT-121','919686395484','9686395484','',''),(122,122,'DELEGATE','','Dr Nandini malipatil','KOA-CME-DLGT-122','919164740445','9164740445','',''),(123,123,'DELEGATE','','Dr VISHAL BIRADAR','KOA-CME-DLGT-123','918095032175','8095032175','',''),(124,124,'DELEGATE','','Dr. DEEPAK','KOA-CME-DLGT-124','917019953062','7019953062','',''),(125,125,'DELEGATE','','Maj. Dr. Bhushan (Retd)','KOA-CME-DLGT-125','919480293216','9480293216','',''),(126,126,'DELEGATE','','Dr ASHISH S M','KOA-CME-DLGT-126','919482228822','9482228822','',''),(127,127,'DELEGATE','','Dr Mahesh Tondare','KOA-CME-DLGT-127','919595906171','9595906171','',''),(128,128,'PG STUDENT','','DR SACHIN GADAD','KOA-CME-PG-001','918296210237','8296210237','',''),(129,129,'PG STUDENT','','Dr Gunderao Baburao shedole','KOA-CME-PG-002','917013381924','7013381924','',''),(130,130,'PG STUDENT','','Dr. Arunkumar','KOA-CME-PG-003','919916316098','9916316098','',''),(131,131,'PG STUDENT','','Dr. Swapnil Kishor Latkar','KOA-CME-PG-004','919960622478','9960622478','',''),(132,132,'PG STUDENT','','Dr. Basavalinga','KOA-CME-PG-005','918880051104','8880051104','',''),(133,133,'PG STUDENT','','Dr. Manjunath B S','KOA-CME-PG-006','919880966687','9880966687','',''),(134,134,'PG STUDENT','','Dr Dinesh','KOA-CME-PG-007','916360735174','6360735174','',''),(135,135,'PG STUDENT','','Dr. Rajneesh Baswala','KOA-CME-PG-008','916378296968','6378296968','',''),(136,136,'PG STUDENT','','dr.srihari m','KOA-CME-PG-009','917995958873','7995958873','',''),(137,137,'PG STUDENT','','Dr.Akram Jawed','KOA-CME-PG-010','918969992057','8969992057','',''),(138,138,'PG STUDENT','','Dr. Tukaram','KOA-CME-PG-011','918073559133','8073559133','',''),(139,139,'PG STUDENT','','Dr Vasant Pawar Bhalki','KOA-CME-PG-012','919945110129','9945110129','',''),(140,140,'PG STUDENT','','Dr.AKSHAY PATIL','KOA-CME-PG-013','919483688114','9483688114','',''),(141,141,'PG STUDENT','','Dr. SALMA SULTANA','KOA-CME-PG-014','919353394545','9353394545','',''),(142,142,'PG STUDENT','','Dr. Mohammed Musa','KOA-CME-PG-015','919986723802','9986723802','',''),(143,143,'PG STUDENT','','Dr. Yogesh','KOA-CME-PG-016','919945033730','9945033730','',''),(144,144,'PG STUDENT','','Dr. Goda Shanmukh','KOA-CME-PG-017','919492801151','9492801151','',''),(145,145,'PG STUDENT','','Dr shashank kulkarni','KOA-CME-PG-018','919972145284','9972145284','',''),(146,146,'PG STUDENT','','Dr. Atul tomar','KOA-CME-PG-019','917805847048','7805847048','',''),(147,147,'PG STUDENT','','Dr. BINGI MAURYA RAGHAV','KOA-CME-PG-020','918500747228','8500747228','',''),(148,148,'PG STUDENT','','Dr. Srikanth Vuyyuru','KOA-CME-PG-021','919391278203','9391278203','',''),(149,149,'PG STUDENT','','Dr. P.SAI KIRANMAI','KOA-CME-PG-022','919515105020','9515105020','',''),(150,150,'PG STUDENT','','Dr. Mohammed Mustafa Shahiduddin','KOA-CME-PG-023','918106804276','8106804276','',''),(151,151,'PG STUDENT','','Dr.Lokesh Sajjanshetty','KOA-CME-PG-024','919480575050','9480575050','',''),(152,152,'PG STUDENT','','Dr. Prem Sai Jakkani','KOA-CME-PG-025','917382010849','7382010849','',''),(153,153,'PG STUDENT','','Dr. NIKHIL BUDME','KOA-CME-PG-026','918555069624','8555069624','',''),(154,154,'PG STUDENT','','Dr.Vaibhav Talakeri','KOA-CME-PG-027','918105029328','8105029328','',''),(155,155,'PG STUDENT','','Dr Shivakumar Anandrao chalmal','KOA-CME-PG-028','918073671898','8073671898','',''),(156,156,'PG STUDENT','','Dr sharan patil','KOA-CME-PG-029','917022960600','7022960600','',''),(157,157,'PG STUDENT','','Dr. Syed Maaz Hussain','KOA-CME-PG-030','918050716981','8050716981','',''),(158,158,'PG STUDENT','','Dr Guruprasad','KOA-CME-PG-031','919113560537','9113560537','',''),(159,159,'PG STUDENT','','Dr.Nitishkumar D Patil','KOA-CME-PG-032','918147161996','8147161996','',''),(160,160,'PG STUDENT','','Dr. Ishwarryalakshmi V RA','KOA-CME-PG-033','917305616026','7305616026','',''),(161,161,'PG STUDENT','','Dr. Manganahalli Devaraj','KOA-CME-PG-034','918880108067','8880108067','',''),(162,162,'PG STUDENT','','Dr.Kiran Yashavant Nad','KOA-CME-PG-035','919980368494','9980368494','','');
/*!40000 ALTER TABLE `international_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `bank_ref_no` varchar(255) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `paymentrequest_id` varchar(255) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `terms` bit(1) NOT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role`
--

DROP TABLE IF EXISTS `sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oah023x2ltqw09mdue7w0mcxb` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role`
--

LOCK TABLES `sec_role` WRITE;
/*!40000 ALTER TABLE `sec_role` DISABLE KEYS */;
INSERT INTO `sec_role` VALUES (1,0,'ROLE_SUPERADMIN'),(2,0,'ROLE_ADMIN'),(3,0,'ROLE_USER'),(4,0,'ROLE_COMMANUSERS');
/*!40000 ALTER TABLE `sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user`
--

DROP TABLE IF EXISTS `sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `admin_id_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `comman_users_id_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5ctbdrlf3eismye20vsdtk8w8` (`username`),
  KEY `FK_tlddqljigbpjwdd3nw1rcr9ge` (`admin_id_id`),
  KEY `FK_r7q66xerm6r1mafg6cbnslwy1` (`comman_users_id_id`),
  KEY `FK_2qmct013ebecl50p8wswtj6ln` (`profile_pic_id`),
  CONSTRAINT `FK_2qmct013ebecl50p8wswtj6ln` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_r7q66xerm6r1mafg6cbnslwy1` FOREIGN KEY (`comman_users_id_id`) REFERENCES `comman_users` (`id`),
  CONSTRAINT `FK_tlddqljigbpjwdd3nw1rcr9ge` FOREIGN KEY (`admin_id_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user`
--

LOCK TABLES `sec_user` WRITE;
/*!40000 ALTER TABLE `sec_user` DISABLE KEYS */;
INSERT INTO `sec_user` VALUES (1,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$2ZWzUWen4i1p6J1RJprhfOZISzph0B3cEktuL99k0VB6YW/VnBToG','\0',NULL,NULL,NULL,'superadmin'),(2,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$lfMi9hHjdMBBZCSkm34a0OgQllOHD/YJHRzYi5.Ru2HNRqR1xr5jS','\0',NULL,NULL,NULL,'admin'),(3,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$WHh6ZSV5ZmUy1mXVb15i8e4KbJVU/z6dwyW6hst4ig3t2p1F84Oiq','\0',NULL,NULL,NULL,'user'),(4,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$Z7jWCz7lx38coVCqrMRne.sZh.ezYNVoK7K0xLh8mh3xgTs89c2Ja','\0',NULL,NULL,NULL,'commanusers');
/*!40000 ALTER TABLE `sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_sec_role`
--

DROP TABLE IF EXISTS `sec_user_sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_sec_role` (
  `sec_user_id` bigint(20) NOT NULL,
  `sec_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sec_user_id`,`sec_role_id`),
  KEY `FK_bshvqhdx8h9mb4rrbo1ahnp7q` (`sec_role_id`),
  CONSTRAINT `FK_bshvqhdx8h9mb4rrbo1ahnp7q` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_role` (`id`),
  CONSTRAINT `FK_f1eew3u65ajs3e50xvacwgron` FOREIGN KEY (`sec_user_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_sec_role`
--

LOCK TABLES `sec_user_sec_role` WRITE;
/*!40000 ALTER TABLE `sec_user_sec_role` DISABLE KEYS */;
INSERT INTO `sec_user_sec_role` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `sec_user_sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercreation`
--

DROP TABLE IF EXISTS `usercreation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercreation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `admin_id_id` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_himob4q3c7in2ggs85e9b2jnx` (`address_id`),
  KEY `FK_qm1i2yctq65xj6aubh640wv1e` (`admin_id_id`),
  KEY `FK_13bxlafo36qgwolf7vslofynw` (`profile_pic_id`),
  KEY `FK_je7p1526dv5c1ulpukgyiwit3` (`user_id_id`),
  CONSTRAINT `FK_13bxlafo36qgwolf7vslofynw` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_himob4q3c7in2ggs85e9b2jnx` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_je7p1526dv5c1ulpukgyiwit3` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`),
  CONSTRAINT `FK_qm1i2yctq65xj6aubh640wv1e` FOREIGN KEY (`admin_id_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercreation`
--

LOCK TABLES `usercreation` WRITE;
/*!40000 ALTER TABLE `usercreation` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercreation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-15 16:17:43
