-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: company
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `k_firm`
--

DROP TABLE IF EXISTS `k_firm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_firm` (
  `firm_num` int NOT NULL AUTO_INCREMENT,
  `firm_name` varchar(45) NOT NULL,
  `firm_addr` varchar(45) DEFAULT NULL,
  `firm_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`firm_num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_firm`
--

LOCK TABLES `k_firm` WRITE;
/*!40000 ALTER TABLE `k_firm` DISABLE KEYS */;
INSERT INTO `k_firm` VALUES (1,'Альфа','Москва',NULL),(2,'Бета','Санкт-\nПетербург',NULL),(3,'Гамма','Могилев',NULL),(4,'Дельта','Витебск',NULL),(5,'Омега','Гродно',NULL),(6,'Эпсилон','Минск',NULL),(7,'ОДРИНА','Борисов',NULL),(8,'Asacris','Борисов',NULL),(9,'Partner Co','Бобруйск',NULL),(10,'Good Old Days','Минск',NULL),(11,'Маяк','Гродно',NULL),(12,'Горизонт','Минск',NULL);
/*!40000 ALTER TABLE `k_firm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 15:46:00
