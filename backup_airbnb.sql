-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES ('06507e90-4ace-4e4f-a3ca-ac3d3951a756','2021-12-21 11:48:33','2021-12-21 11:48:33','Cable'),('0667827e-b1d9-4ba9-b2c5-47225bb4bd89','2021-12-21 11:48:56','2021-12-21 11:48:56','Wifi'),('107f3809-d863-46de-b62a-2b32cf9546a6','2021-12-21 11:51:58','2021-12-21 11:51:58','Cable'),('11f5b4fb-2ba8-4ac9-9f81-edddff415402','2021-12-21 11:45:41','2021-12-21 11:45:41','Wifi'),('1675b80d-bdb8-4524-b3a8-5ae60b2f7738','2021-12-21 11:48:33','2021-12-21 11:48:33','Wifi'),('2ca3a92b-74f8-4446-9e63-3f1ce8a2be9b','2021-12-21 11:45:41','2021-12-21 11:45:41','Oven'),('3564e4bc-2bf7-4fd6-b24e-ab443466555f','2021-12-21 13:27:38','2021-12-21 13:27:38','Oven'),('362a9c26-af1d-4e81-bddf-808769ce3c24','2021-12-21 11:48:56','2021-12-21 11:48:56','Oven'),('4b056792-5563-40b2-aa15-12e310f8d742','2021-12-21 11:49:11','2021-12-21 11:49:11','Oven'),('4dc7f8c6-bd14-4019-99f5-8371b717a5e8','2021-12-21 13:27:38','2021-12-21 13:27:38','Cable'),('65db65ab-bb4e-4bf1-91d0-21f4fd05f84d','2021-12-21 11:45:41','2021-12-21 11:45:41','Cable'),('706ecae9-e702-4af6-a3e8-5269a5085feb','2021-12-21 11:48:56','2021-12-21 11:48:56','Cable'),('a09e8d19-524a-469e-9cec-05ef345f05a6','2021-12-21 11:51:58','2021-12-21 11:51:58','Oven'),('a75f19a8-ce40-47e7-877f-687f24010f91','2021-12-21 11:49:11','2021-12-21 11:49:11','Cable'),('bc41b2eb-c327-4f3d-8768-a3ee63197e9a','2021-12-21 11:49:11','2021-12-21 11:49:11','Wifi'),('d9c869ff-ea22-4ca5-9352-58a22a37af0d','2021-12-21 13:27:38','2021-12-21 13:27:38','Wifi'),('dda6b99c-bb0f-46bc-84fc-963ece8f7dc0','2021-12-21 11:48:33','2021-12-21 11:48:33','Oven'),('fc805361-cd87-4659-ab21-9dd33936eb93','2021-12-21 11:51:58','2021-12-21 11:51:58','Wifi');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `state_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('521a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479545','Akron'),('521a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479546','Douglas'),('521a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479547','San Francisco'),('521a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479548','Denver'),('521a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479549','Miami'),('521a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479551','Honolulu'),('521a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479552','Chicago'),('521a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479554','New Orleans'),('521a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479555','Saint Paul'),('521a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479556','Jackson'),('521a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479557','Portland'),('531a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479545','Babbie'),('531a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479546','Kearny'),('531a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479547','San Jose'),('531a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479549','Orlando'),('531a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479551','Kailua'),('531a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479552','Peoria'),('531a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479554','Baton rouge'),('531a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479556','Tupelo'),('531a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479557','Eugene'),('541a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479545','Calera'),('541a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479546','Tempe'),('541a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479547','Fremont'),('541a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479551','Pearl city'),('541a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479552','Naperville'),('541a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479554','Lafayette'),('541a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479556','Meridian'),('551a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479545','Fairfield'),('551a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479547','Napa'),('551a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479552','Urbana'),('561a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','421a55f4-7d82-47d9-b54c-a76916479547','Sonoma'),('561a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:41','2017-03-25 19:42:41','421a55f4-7d82-47d9-b54c-a76916479552','Joliet');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int NOT NULL,
  `number_bathrooms` int NOT NULL,
  `max_guest` int NOT NULL,
  `price_by_night` int NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `text` varchar(1024) NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('421a55f4-7d82-47d9-b54c-a76916479545','2017-03-25 19:42:40','2017-03-25 19:42:40','Alabama'),('421a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:42:40','2017-03-25 19:42:40','Arizona'),('421a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:42:40','2017-03-25 19:42:40','California'),('421a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:42:40','2017-03-25 19:42:40','Colorado'),('421a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:42:40','2017-03-25 19:42:40','Florida'),('421a55f4-7d82-47d9-b54c-a76916479550','2017-03-25 19:42:40','2017-03-25 19:42:40','Georgia'),('421a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:42:40','2017-03-25 19:42:40','Hawaii'),('421a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:42:40','2017-03-25 19:42:40','Illinois'),('421a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:42:40','2017-03-25 19:42:40','Indiana'),('421a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:42:40','2017-03-25 19:42:40','Louisiana'),('421a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:42:40','2017-03-25 19:42:40','Minnesota'),('421a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:42:40','2017-03-25 19:42:40','Mississippi'),('421a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:42:40','2017-03-25 19:42:40','Oregon');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('03ffc169-be54-4693-8992-3f2da1a5bcff','2021-12-21 13:27:38','2021-12-21 13:27:38','john@snow.com','johnpwd',NULL,NULL),('3c55516a-3c21-4d99-867e-e832cbe86d62','2021-12-21 11:51:58','2021-12-21 11:51:58','john@snow.com','johnpwd',NULL,NULL),('435dd9f4-4062-4e59-b2cf-685cde2b2bd8','2021-12-21 11:49:11','2021-12-21 11:49:11','john@snow.com','johnpwd',NULL,NULL),('5d6f2286-7832-4558-8f4b-c941c1ccade9','2021-12-21 11:45:41','2021-12-21 11:45:41','john@snow.com','johnpwd',NULL,NULL),('a16adca4-f666-439e-b2c8-03162661137a','2021-12-21 11:48:33','2021-12-21 11:48:33','john@snow.com','johnpwd',NULL,NULL),('ee727075-8f22-4f11-b8ff-f137389e2a93','2021-12-21 11:48:56','2021-12-21 11:48:56','john@snow.com','johnpwd',NULL,NULL);
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

-- Dump completed on 2022-01-28 15:36:02
