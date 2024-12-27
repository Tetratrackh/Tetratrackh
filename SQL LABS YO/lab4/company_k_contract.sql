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
-- Table structure for table `k_contract`
--

DROP TABLE IF EXISTS `k_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_contract` (
  `contract_num` int NOT NULL AUTO_INCREMENT,
  `contract_date` date DEFAULT NULL,
  `contract_type` enum('A','B','C') NOT NULL,
  `k_staff_staff_num` int NOT NULL,
  `k_firm_firm_num` int NOT NULL,
  PRIMARY KEY (`contract_num`),
  KEY `fk_k_contract_k_staff1_idx` (`k_staff_staff_num`),
  KEY `fk_k_contract_k_firm1_idx` (`k_firm_firm_num`),
  CONSTRAINT `fk_k_contract_k_firm1` FOREIGN KEY (`k_firm_firm_num`) REFERENCES `k_firm` (`firm_num`),
  CONSTRAINT `fk_k_contract_k_staff1` FOREIGN KEY (`k_staff_staff_num`) REFERENCES `k_staff` (`staff_num`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_contract`
--

LOCK TABLES `k_contract` WRITE;
/*!40000 ALTER TABLE `k_contract` DISABLE KEYS */;
INSERT INTO `k_contract` VALUES (1,'2021-11-01','A',1,1),(2,'2021-10-01','B',2,1),(3,'2021-09-01','C',1,1),(4,'2021-11-15','A',5,2),(5,'2021-08-01','B',3,2),(6,'2021-07-15','C',3,3),(7,'2021-11-12','A',4,5),(8,'2021-10-12','A',2,4),(9,'2023-11-12','A',7,4),(10,'2023-10-02','B',7,3),(11,'2023-11-02','C',7,5),(12,'2024-10-12','C',7,6);
/*!40000 ALTER TABLE `k_contract` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28 15:14:29
