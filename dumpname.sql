-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: burger_vp1
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `users_id` int(15) NOT NULL,
  `name` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,0,0,'+75646548754','ghkgkyg 22 Корпус:  Квартира: 654 Этаж: 5','dgsdfgsdfgsdfg','2018-11-27 20:46:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` text NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `last_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'0000-00-00 00:00:00'),(2,'alex','alex@mail.ru','+7 (564) 655 64 64',0,'0000-00-00 00:00:00'),(3,'alex','alex@mail.ru','+7 (564) 655 64 64',0,'0000-00-00 00:00:00'),(4,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'0000-00-00 00:00:00'),(5,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'0000-00-00 00:00:00'),(6,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'0000-00-00 00:00:00'),(7,'john','okdd@mail.ru','+7 (564) 654 87 54',0,'0000-00-00 00:00:00'),(8,'john','okdd@mail.ru','+7 (564) 654 87 54',0,'0000-00-00 00:00:00'),(23,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'2018-11-27 16:48:32'),(24,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'2018-11-27 16:53:33'),(25,'john','dsfa@mail.ru','+7 (564) 654 87 54',0,'2018-11-27 17:03:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-27 21:28:20
