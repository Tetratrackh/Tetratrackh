-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
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
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `sb_id` int NOT NULL AUTO_INCREMENT,
  `sb_subscriber` int NOT NULL,
  `sb_book` int NOT NULL,
  `sb_start` date NOT NULL,
  `sb_finish` date DEFAULT NULL,
  `sb_is_active` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`sb_id`),
  KEY `fk_subscriptions_subscribers_idx` (`sb_subscriber`),
  KEY `fk_subscriptions_books1_idx` (`sb_book`),
  CONSTRAINT `fk_subscriptions_books1` FOREIGN KEY (`sb_book`) REFERENCES `books` (`b_id`),
  CONSTRAINT `fk_subscriptions_subscribers` FOREIGN KEY (`sb_subscriber`) REFERENCES `subscribers` (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (2,1,1,'2011-01-12','2011-02-12','N'),(3,3,3,'2012-05-17','2012-07-17','Y'),(42,1,2,'2012-06-11','2012-08-11','N'),(57,4,5,'2012-06-11','2012-08-11','N'),(61,1,7,'2014-08-03','2014-10-03','N'),(62,3,5,'2014-08-03','2014-10-03','Y'),(86,3,1,'2014-08-03','2014-09-03','Y'),(91,4,1,'2015-10-07','2015-03-07','Y'),(95,1,4,'2015-10-07','2015-11-07','N'),(99,4,4,'2015-10-08','2025-11-08','Y'),(100,1,3,'2011-01-12','2011-02-12','N');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
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
