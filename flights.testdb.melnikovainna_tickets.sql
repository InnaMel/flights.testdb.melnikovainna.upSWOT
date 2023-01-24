-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: flights.testdb.melnikovainna
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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateFlight` date DEFAULT NULL,
  `flightId` int(11) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `buyingDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flightId` (`flightId`),
  KEY `client` (`client`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`flightId`) REFERENCES `flights` (`id`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`client`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'1999-01-25',1,'22A',1,'1999-01-03'),(2,'1999-11-15',2,'01B',2,'1999-10-13'),(3,'2000-11-15',3,'21C',3,'2000-10-29'),(4,'2001-01-15',5,'2B',5,'2001-01-10'),(5,'2001-01-15',6,'45B',6,'2001-01-09'),(6,'2002-08-08',1,'15B',6,'2002-05-09'),(7,'2022-05-18',3,'5C',4,'2022-05-17'),(8,'2022-10-16',4,'15C',5,'2022-09-17'),(9,'2023-02-16',3,'105C',2,'2022-12-31'),(10,'2022-12-31',5,'404A',6,'2022-11-11'),(11,'2008-11-21',2,'00D',5,'2008-12-21'),(12,'2016-10-01',1,'56F',5,'2016-12-01');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 10:37:28
