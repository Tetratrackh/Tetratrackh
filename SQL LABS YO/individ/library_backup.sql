-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `a_id` int unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(150) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Фёдор Достоевский'),(2,'Лев Толстой'),(3,'Джордж Оруэлл'),(4,'Джоан Роулинг'),(5,'Артур Конан Дойл'),(6,'Николай Карамзин'),(7,'Стивен Хокинг');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `b_id` int unsigned NOT NULL AUTO_INCREMENT,
  `b_name` varchar(150) NOT NULL,
  `b_year` smallint unsigned NOT NULL,
  `b_quantity` smallint unsigned NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Преступление и наказание',1866,5),(2,'Война и мир',1869,3),(3,'1984',1949,7),(4,'Гарри Поттер и философский камень',1997,10),(5,'Шерлок Холмс. Собрание рассказов',1892,4),(6,'История государства Российского',1818,2),(7,'Краткая история времени',1988,6);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `g_id` int unsigned NOT NULL AUTO_INCREMENT,
  `g_name` varchar(150) NOT NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `UQ_genres_g_name` (`g_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (4,'Детектив'),(6,'История'),(7,'Научная литература'),(3,'Поэзия'),(1,'Роман'),(2,'Фантастика'),(5,'Фэнтези');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2m_books_authors`
--

DROP TABLE IF EXISTS `m2m_books_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2m_books_authors` (
  `b_id` int unsigned NOT NULL,
  `a_id` int unsigned NOT NULL,
  PRIMARY KEY (`b_id`,`a_id`),
  KEY `FK_m2m_books_authors_authors` (`a_id`),
  CONSTRAINT `FK_m2m_books_authors_authors` FOREIGN KEY (`a_id`) REFERENCES `authors` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_m2m_books_authors_books` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2m_books_authors`
--

LOCK TABLES `m2m_books_authors` WRITE;
/*!40000 ALTER TABLE `m2m_books_authors` DISABLE KEYS */;
INSERT INTO `m2m_books_authors` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7);
/*!40000 ALTER TABLE `m2m_books_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2m_books_genres`
--

DROP TABLE IF EXISTS `m2m_books_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m2m_books_genres` (
  `b_id` int unsigned NOT NULL,
  `g_id` int unsigned NOT NULL,
  PRIMARY KEY (`b_id`,`g_id`),
  KEY `FK_m2m_books_genres_genres` (`g_id`),
  CONSTRAINT `FK_m2m_books_genres_books` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_m2m_books_genres_genres` FOREIGN KEY (`g_id`) REFERENCES `genres` (`g_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2m_books_genres`
--

LOCK TABLES `m2m_books_genres` WRITE;
/*!40000 ALTER TABLE `m2m_books_genres` DISABLE KEYS */;
INSERT INTO `m2m_books_genres` VALUES (1,1),(2,1),(3,2),(5,4),(4,5),(6,6),(7,7);
/*!40000 ALTER TABLE `m2m_books_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `s_id` int unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(150) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'Иван Иванов'),(2,'Анна Смирнова'),(3,'Пётр Петров'),(4,'Екатерина Сидорова'),(5,'Алексей Васильев');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `sb_id` int unsigned NOT NULL AUTO_INCREMENT,
  `sb_subscriber` int unsigned NOT NULL,
  `sb_book` int unsigned NOT NULL,
  `sb_start` date NOT NULL,
  `sb_finish` date NOT NULL,
  `sb_is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`sb_id`),
  KEY `FK_subscriptions_books` (`sb_book`),
  KEY `FK_subscriptions_subscribers` (`sb_subscriber`),
  CONSTRAINT `FK_subscriptions_books` FOREIGN KEY (`sb_book`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_subscriptions_subscribers` FOREIGN KEY (`sb_subscriber`) REFERENCES `subscribers` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,1,1,'2023-12-01','2024-01-01','N'),(2,2,2,'2023-12-05','2024-01-10','Y'),(3,3,3,'2023-11-15','2023-12-15','N'),(4,4,4,'2023-12-20','2024-01-20','Y'),(5,5,5,'2023-12-25','2024-01-25','Y');
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

-- Dump completed on 2024-12-27  1:40:23
