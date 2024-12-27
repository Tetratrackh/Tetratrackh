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
-- Table structure for table `k_payment`
--

DROP TABLE IF EXISTS `k_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_payment` (
  `payment_num` int NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_sum` decimal(9,2) DEFAULT NULL,
  `k_bill_bill_num` int NOT NULL,
  PRIMARY KEY (`payment_num`,`k_bill_bill_num`),
  KEY `fk_k_payment_k_bill1_idx` (`k_bill_bill_num`),
  CONSTRAINT `fk_k_payment_k_bill1` FOREIGN KEY (`k_bill_bill_num`) REFERENCES `k_bill` (`bill_num`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_payment`
--

LOCK TABLES `k_payment` WRITE;
/*!40000 ALTER TABLE `k_payment` DISABLE KEYS */;
INSERT INTO `k_payment` VALUES (1,'2021-12-05',1200.00,2),(1,'2021-12-08',1800.00,3),(1,'2022-01-28',2000.00,4),(1,'2021-12-25',4000.00,5),(1,'2021-01-15',2300.00,6),(1,'2022-01-17',1900.00,7),(1,'2021-12-17',1200.00,8),(1,'2021-12-17',1200.00,9),(1,'2024-02-17',1200.00,11),(1,'2024-04-18',3000.00,12),(1,'2024-05-11',1600.00,13),(2,'2021-12-07',800.00,2),(2,'2021-12-28',200.00,3),(2,'2021-12-25',2000.00,5),(2,'2022-01-23',600.00,7),(2,'2024-02-19',2400.00,11);
/*!40000 ALTER TABLE `k_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 15:46:01
