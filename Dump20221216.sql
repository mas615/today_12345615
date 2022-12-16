-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bestdb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hs_id` int NOT NULL AUTO_INCREMENT,
  `hs_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_clear` int NOT NULL DEFAULT '0',
  `maker_id` int DEFAULT NULL,
  `hs_city` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hs_user` int DEFAULT NULL,
  `hs_phone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finishtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `note` text COLLATE utf8mb4_unicode_ci,
  `todayon` int DEFAULT '0',
  `lasttodayon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `makertodayon` int DEFAULT NULL,
  `makerlast` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hosday` date NOT NULL,
  PRIMARY KEY (`hs_id`),
  UNIQUE KEY `hs_name_UNIQUE` (`hs_name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (19,'건국대학교병원','서울시 광진구',0,1,'13',24,'02-000-0000','2021-01-29 00:41:57','학교안 병원',0,'2021-01-21 15:16:01',0,'2021-01-28 22:15:21','2021-01-22'),(20,'홍길동병원','부천시 범밥동',1,2,'12',27,'032-000-0000','2021-01-29 00:40:16','기공물함비밀번호:2828',0,'2021-01-20 15:13:52',0,'2021-01-28 22:16:50','2021-01-22'),(21,'기막힌병원','김포시 행복동',0,5,'15',27,'031-000-0000','2021-01-28 21:48:02','비고없음',0,'2021-01-17 01:43:28',0,'2021-01-17 19:54:18','2021-01-22'),(22,'엄청난병원','김포시 불행동',0,7,'13',24,'031-000-0000','2021-01-28 21:47:09','비고없음',0,'2021-01-17 01:43:28',0,'2021-01-17 19:38:02','2021-01-22'),(23,'고구마치과','김포시 천국동',1,5,'11',24,'031-000-0000','2021-01-29 00:40:11','소화전에열쇠보관했습니다.',1,'2021-01-29 22:03:40',0,'2021-01-17 19:54:18','2021-01-22'),(24,'마준영치과','부친시 심곡본동',0,2,'12',27,'032-655-9623','2021-01-29 00:40:20','비고없음',0,'2021-01-20 15:14:11',0,'2021-01-28 22:16:50','2021-01-22'),(25,'이상한치과','서울시 군자동',0,6,'15',27,'02-000-0000','2021-01-28 21:48:03','비고없음',0,'2021-01-17 01:43:28',0,'2021-01-17 01:43:28','2021-01-22'),(26,'세종대학교병원','서울시 광진구',0,1,'13',24,'02-000-0000','2021-01-29 00:41:58','비고없음',0,'2021-01-21 15:16:52',0,'2021-01-28 22:15:21','2021-01-22'),(27,'힘찬병원','김포시 장기동',1,7,'11',24,'031-000-0000','2021-01-28 21:47:07','비고없음',0,'2021-01-17 01:43:28',0,'2021-01-17 19:38:02','2021-01-22');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `idlog` int NOT NULL AUTO_INCREMENT,
  `logname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logdiscription` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logdatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2','1','2021-01-28 22:06:37'),(2,'23','소화전에열쇠보관했습니다.','2021-01-28 22:07:47'),(3,'병원23','소화전에열쇠보관했습니다.','2021-01-28 22:10:17'),(4,'기공소손오공기공소','19','2021-01-28 22:15:21'),(5,'기공소손오공기공소','26','2021-01-28 22:15:21'),(6,'기공소손오공기공소','-1','2021-01-28 22:15:21'),(7,'브루마기공소','20','2021-01-28 22:16:50'),(8,'브루마기공소','24','2021-01-28 22:16:50'),(9,'브루마기공소','-1','2021-01-28 22:16:50'),(10,'배달기사받음mas615','23','2021-01-29 00:40:11'),(11,'배달기사줌mas615','20','2021-01-29 00:40:16'),(12,'배달기사줌mas615','24','2021-01-29 00:40:20'),(13,'mas615배달기사 줌','19','2021-01-29 00:41:57'),(14,'mas615배달기사 줌','26','2021-01-29 00:41:58'),(15,'병원23','소화전에열쇠보관했습니다.','2021-01-29 22:03:40');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maker`
--

DROP TABLE IF EXISTS `maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maker` (
  `idmaker` int NOT NULL AUTO_INCREMENT,
  `makername` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `makeraddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `makerphone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `makernote` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idmaker`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maker`
--

LOCK TABLES `maker` WRITE;
/*!40000 ALTER TABLE `maker` DISABLE KEYS */;
INSERT INTO `maker` VALUES (1,'손오공기공소','나메크','123','비고'),(2,'브루마기공소','지구','123','비고'),(5,'배지터기공소','서울','123','비고'),(6,'천진반기공소','부천','123','비고'),(7,'크리링기공소','부천','123','비고');
/*!40000 ALTER TABLE `maker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site` (
  `idsite` int NOT NULL AUTO_INCREMENT,
  `sitename` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (11,'인천'),(12,'부천'),(13,'서울'),(14,'시흥'),(15,'김포'),(16,'제주');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (24,'mas615','123','마준영','부천','01095939623','2021-01-17 01:39:19'),(25,'abc123','abc','홍길동','서울','01000000000','2021-01-17 01:39:48'),(26,'majun','abc','Michael','CITY','01000000000','2021-01-17 01:40:12'),(27,'가나다','123','마이클','로스엔젤레스','01000000000','2021-01-17 01:40:42'),(28,'@_@',':-)','잭슨','강남','01000000000','2021-01-17 01:41:24'),(29,'mas9623','123123','123123','123123','123123','2022-06-05 22:30:14');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 13:25:06
