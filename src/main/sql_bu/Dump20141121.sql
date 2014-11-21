CREATE DATABASE  IF NOT EXISTS `hotels` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotels`;
-- MySQL dump 10.13  Distrib 5.1.34, for apple-darwin9.5.0 (i386)
--
-- Host: 127.0.0.1    Database: hotels
-- ------------------------------------------------------
-- Server version	5.5.13

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
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL DEFAULT 'ROLE_USER',
  `authorities_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`authorities_id`),
  UNIQUE KEY `ix_auth_username` (`username`,`authority`),
  CONSTRAINT `fk_authorities_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('bob@isp.com','ROLE_ADMIN',1),('sally@isp.com','ROLE_USER',2),('tom@isp.com','ROLE_USER',3);
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Conrad Treasury Place','William & George Streets','Brisbane','4001'),(2,'Ritz Carlton','1228 Sherbrooke St','Montreal','H3G1H6'),(3,'Hilton Diagonal Marr','Passeig del Taulat 262-264','Barcelona','08019'),(6,'Bath Travelodge','Rossiter Road, Widcombe Basin','Bath','BA2 4JP'),(7,'Melia White House','Albany Street','London','NW1 3UP'),(8,'Chilworth Manors','The Cottage, Southampton Business Park','Southampton','SO16 7JC'),(9,'Marriott Courtyard','Tower Place, Buckhead','Atlanta','30305'),(10,'Ritz Carlton','Peachtree Rd, Buckhead','Atlanta','30326'),(11,'Hotel Allegro','171 West Randolph Street','Chicago','60601'),(12,'Delafield Inn','1234 Main Street','Delafield','53018'),(15,'Jims Quality Hotel','1234 Street','Delafield','53018');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bob@isp.com','bfff7a2fd68c19738012752f9d023712fd2d7201c6f771da910946f41171e4df8d2921c5bdd4d9189c0a6f162e61aec570c0d228df5ddfd4fb0634e32f0320d5',1),('sally@isp.com','f7a09271901560af708fc65bba63c5ad592eed33e520fc8d73b4c112e27a50adee6e201c45e9532d1667233555d97d6e60b8ec134f04fd5145a5e3fee0fcdaa3',1),('tom@isp.com','1dca67581a5f684be074b6f130c405e57d85278dae9c32104e35b078f6385cae275a8feab21f401f8732239a2785dba9e3f340181811509f1858d56e249a5443',1);
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

-- Dump completed on 2014-11-21 21:40:24
