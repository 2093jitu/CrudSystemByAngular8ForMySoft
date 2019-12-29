CREATE DATABASE  IF NOT EXISTS `edonation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `edonation`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: edonation
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountno` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bKashAcc` varchar(255) DEFAULT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `needammount` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (83,'20-30-18-09','munsigonj','01736083759','IFIC BANK','01738083759','2019-11-07 00:00:00','I Am A Help Less. My Current Sesuation Is Very dangaras                               \r\n                        ','mmjitu2019@gmail.com','md salauddin',5000,'salauddin.jpg','salauddin.jpg',1),(84,'20-30-18-09','Gazipur','01711158574','UCB BANK','01556284578','2019-11-01 00:00:00','I Need   Same Donation For My Helth Problem                           \r\n                        ','ashif@gmail.com','Md abdulla al ashif',49998,'ashifvi.jpg','ashifvi.jpg',1),(85,'20-30-18-09','Kustia','01711158574','IFIC BANK','01839047852','2019-11-07 00:00:00','I Have Need Same Money                               \r\n                        ','ruba@gmail.com','Md Rubait',75000,'tanvir.jpg','tanvir.jpg',1),(86,'20-30-18-09','Kumilla','01711158574','IFIC BANK','01754525458','2019-11-06 00:00:00','I Am A Help less Person                              \r\n                        ','rabbi@gmail.com','Fajla Rabbi',45000,'rabbi.jpg','rabbi.jpg',1),(87,'12-14-45-20','Rajbari','01736083759','UCB BANK','01754568547','2019-10-31 00:00:00','I Need Some Money                               \r\n                        ','alim@gmail.com','Abdul Alim',10000,'alim.jpg','alim.jpg',1),(88,'20-30-18-09','Damrai','01711158574','IFIC BANK','01706458552','2019-11-01 00:00:00','I Am Help Less                              \r\n                        ','munna@gmail.com','Ashraf Munna',47000,'munna.jpg','munna.jpg',1),(89,'12-14-45-20','faridpur','01765515354','IFIC BANK','01765515354','2019-11-02 00:00:00','i am chick                               \r\n                        ','mmjitu2019@gmail.com','md nuruzzaman',50000,'robiulIslam.jpg','dis.png',1);
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29 19:24:37
