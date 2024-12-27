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
-- Table structure for table `k_bill`
--

DROP TABLE IF EXISTS `k_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_bill` (
  `bill_num` int NOT NULL AUTO_INCREMENT,
  `bill_date` varchar(45) DEFAULT NULL,
  `bill_sum` varchar(45) DEFAULT NULL,
  `bill_term` date DEFAULT NULL,
  `bill_peni` decimal(6,2) DEFAULT NULL,
  `k_contract_contract_num` int NOT NULL,
  PRIMARY KEY (`bill_num`),
  KEY `fk_k_bill_k_contract1_idx` (`k_contract_contract_num`),
  CONSTRAINT `fk_k_bill_k_contract1` FOREIGN KEY (`k_contract_contract_num`) REFERENCES `k_contract` (`contract_num`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_bill`
--

LOCK TABLES `k_bill` WRITE;
/*!40000 ALTER TABLE `k_bill` DISABLE KEYS */;
INSERT INTO `k_bill` VALUES (2,'2021-12-01','2000','2021-12-12',NULL,1),(3,'2021-12-01','2000','2022-01-02',NULL,2),(4,'2022-01-12','2000','2022-02-12',NULL,3),(5,'2021-12-12','6000','2022-01-12',NULL,4),(6,'2021-01-12','2300','2021-02-12',NULL,5),(7,'2022-01-12','2500','2022-02-12',NULL,6),(8,'2021-12-11','1500','2021-01-12',NULL,7),(9,'2021-12-12','1200','2022-01-12',NULL,8),(10,'2022-01-12','14000','2022-02-12',NULL,7),(11,'2022-01-12','12000','2022-03-12',NULL,5),(12,'2022-01-12','10000','2022-03-12',NULL,4),(13,'2024-01-12','11000','2024-03-12',NULL,10),(14,'2024-03-12','6500','2022-06-12',NULL,11),(15,'2024-02-11','12000','2024-03-12',NULL,12),(16,'2024-03-12','4000','2024-05-01',NULL,12);
/*!40000 ALTER TABLE `k_bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 15:25:46
