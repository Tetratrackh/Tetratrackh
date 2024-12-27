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
-- Table structure for table `k_staff`
--

DROP TABLE IF EXISTS `k_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `k_staff` (
  `staff_num` int NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(45) NOT NULL,
  `staff_post` varchar(45) DEFAULT NULL,
  `staff_hiredate` date DEFAULT NULL,
  `staff_termdate` date DEFAULT NULL,
  `k_dept_dept_num` int NOT NULL,
  PRIMARY KEY (`staff_num`),
  KEY `fk_k_staff_k_dept_idx` (`k_dept_dept_num`),
  CONSTRAINT `fk_k_staff_k_dept` FOREIGN KEY (`k_dept_dept_num`) REFERENCES `k_dept` (`dept_num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_staff`
--

LOCK TABLES `k_staff` WRITE;
/*!40000 ALTER TABLE `k_staff` DISABLE KEYS */;
INSERT INTO `k_staff` VALUES (1,'Иванов','Менеджер','2021-01-01',NULL,1),(2,'Петров','Менеджер','2021-10-13',NULL,2),(3,'Сидоров','Менеджер','2020-12-01',NULL,3),(4,'Семенов','Директор','2019-01-01',NULL,11),(5,'Григорьев','Программист','2018-12-19',NULL,3),(6,'Михальчик','Маркетолог','2021-10-13',NULL,2),(7,'Столярчук','Программист (крутой)','2024-10-14','2024-12-25',3);
/*!40000 ALTER TABLE `k_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 15:08:45
