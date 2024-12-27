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
-- Table structure for table `k_protocol`
--

DROP TABLE IF EXISTS `k_protocol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_protocol` (
  `k_bill_bill_num` int NOT NULL,
  `k_price_price_num` int NOT NULL,
  `quantity` int NOT NULL,
  `price_sum` decimal(9,2) NOT NULL,
  PRIMARY KEY (`k_bill_bill_num`,`k_price_price_num`),
  KEY `fk_k_bill_has_k_price_k_price1_idx` (`k_price_price_num`),
  KEY `fk_k_bill_has_k_price_k_bill1_idx` (`k_bill_bill_num`),
  CONSTRAINT `fk_k_bill_has_k_price_k_bill1` FOREIGN KEY (`k_bill_bill_num`) REFERENCES `k_bill` (`bill_num`),
  CONSTRAINT `fk_k_bill_has_k_price_k_price1` FOREIGN KEY (`k_price_price_num`) REFERENCES `k_price` (`price_num`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_protocol`
--

LOCK TABLES `k_protocol` WRITE;
/*!40000 ALTER TABLE `k_protocol` DISABLE KEYS */;
INSERT INTO `k_protocol` VALUES (2,1,1,1000.00),(3,1,1,1000.00),(3,5,1,800.00),(4,1,1,1000.00),(4,2,1,2000.00),(5,2,2,2000.00),(5,4,2,5000.00),(5,6,2,100.00),(6,5,2,100.00),(7,5,1,800.00),(8,6,1,300.00),(9,5,1,800.00),(10,4,2,300.00),(10,5,2,200.00),(11,2,1,2000.00),(11,3,1,1000.00),(12,6,1,300.00),(13,3,1,6000.00),(13,6,12,9000.00),(14,4,1,5000.00),(14,5,1,800.00),(15,1,1,1000.00),(15,6,1,100.00),(16,2,1,2000.00),(16,4,1,5000.00);
/*!40000 ALTER TABLE `k_protocol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 15:14:30
