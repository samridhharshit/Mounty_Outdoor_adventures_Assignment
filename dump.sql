-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Current Database: `hotel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hotel`;

--
-- Table structure for table `reservation_details`
--

DROP TABLE IF EXISTS `reservation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `Bed` varchar(50) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` tinyint(1) DEFAULT '1',
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_details`
--

LOCK TABLES `reservation_details` WRITE;
/*!40000 ALTER TABLE `reservation_details` DISABLE KEYS */;
INSERT INTO `reservation_details` VALUES (1,'Samridh','Harshit','samridhharsh@gmail.com','Indian',8210760017,'Single Room','1',1,'2020-04-15','2020-04-16',1);
/*!40000 ALTER TABLE `reservation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Superior Room','Single'),(2,'Superior Room','Double'),(3,'Superior Room','Triple'),(4,'Single Room','Quad'),(5,'Superior Room','Quad'),(6,'Deluxe Room','Single'),(7,'Deluxe Room','Double'),(8,'Deluxe Room','Triple'),(9,'Deluxe Room','Quad'),(10,'Guest House','Single'),(11,'Guest House','Double'),(12,'Guest House','Quad'),(13,'Single Room','Single'),(14,'Single Room','Double'),(15,'Single Room','Triple');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-18 23:57:04
