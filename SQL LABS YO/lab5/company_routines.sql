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
-- Temporary view structure for view `k_contract1`
--

DROP TABLE IF EXISTS `k_contract1`;
/*!50001 DROP VIEW IF EXISTS `k_contract1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `k_contract1` AS SELECT 
 1 AS `contract_num`,
 1 AS `contract_date`,
 1 AS `contract_type`,
 1 AS `k_firm_firm_num`,
 1 AS `staff_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `k_pay_sum`
--

DROP TABLE IF EXISTS `k_pay_sum`;
/*!50001 DROP VIEW IF EXISTS `k_pay_sum`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `k_pay_sum` AS SELECT 
 1 AS `k_bill_bill_num`,
 1 AS `pay_sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `k_contract1`
--

/*!50001 DROP VIEW IF EXISTS `k_contract1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`new_vlados`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `k_contract1` AS select `k_contract`.`contract_num` AS `contract_num`,`k_contract`.`contract_date` AS `contract_date`,`k_contract`.`contract_type` AS `contract_type`,`k_contract`.`k_firm_firm_num` AS `k_firm_firm_num`,`k_staff`.`staff_name` AS `staff_name` from (`k_contract` join `k_staff` on((`k_contract`.`k_staff_staff_num` = `k_staff`.`staff_num`))) where (`k_staff`.`k_dept_dept_num` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `k_pay_sum`
--

/*!50001 DROP VIEW IF EXISTS `k_pay_sum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`new_vlados`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `k_pay_sum` AS select `k_payment`.`k_bill_bill_num` AS `k_bill_bill_num`,sum(`k_payment`.`payment_sum`) AS `pay_sum` from `k_payment` group by `k_payment`.`k_bill_bill_num` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'company'
--

--
-- Dumping routines for database 'company'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 15:08:45
