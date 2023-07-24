-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sg
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Hugo','2023-06-29 15:39:57','2023-06-29 15:39:57');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiais`
--

DROP TABLE IF EXISTS `filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filial` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiais`
--

LOCK TABLES `filiais` WRITE;
/*!40000 ALTER TABLE `filiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Fornecedor100','Fornecedor100.com','2023-06-12 16:20:16','2023-06-24 15:52:35','SP','Fornecedor100@hotmai.com',NULL),(2,'Fornecedor200','Fornecedor200.com','2023-06-12 16:20:16','2023-06-12 16:20:16','SP','Fornecedor200@hotmai.com',NULL),(3,'Fornecedor300','Fornecedor300.com',NULL,NULL,'SP','Fornecedor300@hotmai.com',NULL),(4,'hugo','sgrs','2023-06-23 16:48:06','2023-06-23 16:48:06','fg','hugo_moreira@hotmail.com',NULL),(5,'hugo','sgrswfw','2023-06-23 16:56:48','2023-06-24 19:49:01','fg','hugo_moreira@hotmail.com','2023-06-24 19:49:01'),(6,'Fornecedor3000','Fornecedor3000.com',NULL,NULL,'PT','Fornecedor3000@gamil.com',NULL);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_acessos`
--

DROP TABLE IF EXISTS `log_acessos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_acessos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_acessos`
--

LOCK TABLES `log_acessos` WRITE;
/*!40000 ALTER TABLE `log_acessos` DISABLE KEYS */;
INSERT INTO `log_acessos` VALUES (1,'IP xyz requisitou a rota abc','2023-06-17 12:41:06','2023-06-17 12:41:06'),(2,'IP 127.0.0.1 requisitou a rota /','2023-06-17 12:51:43','2023-06-17 12:51:43'),(3,'IP 127.0.0.1 requisitou a rota /','2023-06-17 12:52:49','2023-06-17 12:52:49'),(4,'IP 127.0.0.1 requisitou a rota /sobrenos','2023-06-17 13:18:44','2023-06-17 13:18:44'),(5,'IP 127.0.0.1 requisitou a rota /sobrenos','2023-06-17 16:04:35','2023-06-17 16:04:35'),(6,'IP 127.0.0.1 requisitou a rota /','2023-06-17 16:04:39','2023-06-17 16:04:39'),(7,'IP 127.0.0.1 requisitou a rota /login','2023-06-17 16:04:49','2023-06-17 16:04:49'),(8,'IP 127.0.0.1 requisitou a rota /','2023-06-17 16:08:50','2023-06-17 16:08:50'),(9,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-17 16:39:43','2023-06-17 16:39:43'),(10,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-17 16:40:12','2023-06-17 16:40:12'),(11,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-17 16:43:49','2023-06-17 16:43:49'),(12,'IP 127.0.0.1 requisitou a rota /app/fornecedores','2023-06-17 16:46:16','2023-06-17 16:46:16'),(13,'IP 127.0.0.1 requisitou a rota /app/produtos','2023-06-17 16:46:24','2023-06-17 16:46:24'),(14,'IP 127.0.0.1 requisitou a rota /app/produtos','2023-06-17 16:55:29','2023-06-17 16:55:29'),(15,'IP 127.0.0.1 requisitou a rota /app/produtos','2023-06-18 14:02:52','2023-06-18 14:02:52'),(16,'IP 127.0.0.1 requisitou a rota /app/produtos','2023-06-18 14:08:26','2023-06-18 14:08:26'),(17,'IP 127.0.0.1 requisitou a rota /login','2023-06-18 14:29:05','2023-06-18 14:29:05'),(18,'IP 127.0.0.1 requisitou a rota /','2023-06-18 14:30:57','2023-06-18 14:30:57'),(19,'IP 127.0.0.1 requisitou a rota /login','2023-06-18 14:31:04','2023-06-18 14:31:04'),(20,'IP 127.0.0.1 requisitou a rota /login','2023-06-18 14:32:06','2023-06-18 14:32:06'),(21,'IP 127.0.0.1 requisitou a rota /login','2023-06-18 14:44:07','2023-06-18 14:44:07'),(22,'IP 127.0.0.1 requisitou a rota /login','2023-06-18 14:45:56','2023-06-18 14:45:56'),(23,'IP 127.0.0.1 requisitou a rota /login','2023-06-18 14:47:05','2023-06-18 14:47:05'),(24,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:02:57','2023-06-20 16:02:57'),(25,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:02:59','2023-06-20 16:02:59'),(26,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:00','2023-06-20 16:03:00'),(27,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:01','2023-06-20 16:03:01'),(28,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:02','2023-06-20 16:03:02'),(29,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:18','2023-06-20 16:03:18'),(30,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:19','2023-06-20 16:03:19'),(31,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:19','2023-06-20 16:03:19'),(32,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:20','2023-06-20 16:03:20'),(33,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:21','2023-06-20 16:03:21'),(34,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:21','2023-06-20 16:03:21'),(35,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:23','2023-06-20 16:03:23'),(36,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:24','2023-06-20 16:03:24'),(37,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:35','2023-06-20 16:03:35'),(38,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:03:42','2023-06-20 16:03:42'),(39,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:05:07','2023-06-20 16:05:07'),(40,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:05:07','2023-06-20 16:05:07'),(41,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:26:11','2023-06-20 16:26:11'),(42,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:26:14','2023-06-20 16:26:14'),(43,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:26:17','2023-06-20 16:26:17'),(44,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:26:20','2023-06-20 16:26:20'),(45,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:49:39','2023-06-20 16:49:39'),(46,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 16:49:48','2023-06-20 16:49:48'),(47,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 16:49:48','2023-06-20 16:49:48'),(48,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 19:52:52','2023-06-20 19:52:52'),(49,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 19:52:55','2023-06-20 19:52:55'),(50,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 19:52:56','2023-06-20 19:52:56'),(51,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 19:53:00','2023-06-20 19:53:00'),(52,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 19:53:00','2023-06-20 19:53:00'),(53,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 19:53:40','2023-06-20 19:53:40'),(54,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 19:53:40','2023-06-20 19:53:40'),(55,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 19:54:36','2023-06-20 19:54:36'),(56,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 19:54:37','2023-06-20 19:54:37'),(57,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:14:02','2023-06-20 20:14:02'),(58,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:14:03','2023-06-20 20:14:03'),(59,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:14:09','2023-06-20 20:14:09'),(60,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 20:14:09','2023-06-20 20:14:09'),(61,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:15:02','2023-06-20 20:15:02'),(62,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 20:15:03','2023-06-20 20:15:03'),(63,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:15:09','2023-06-20 20:15:09'),(64,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:15:19','2023-06-20 20:15:19'),(65,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:15:25','2023-06-20 20:15:25'),(66,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:15:28','2023-06-20 20:15:28'),(67,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:16:20','2023-06-20 20:16:20'),(68,'IP 127.0.0.1 requisitou a rota /','2023-06-20 20:17:04','2023-06-20 20:17:04'),(69,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:17:12','2023-06-20 20:17:12'),(70,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:18:24','2023-06-20 20:18:24'),(71,'IP 127.0.0.1 requisitou a rota /login?erro=2','2023-06-20 20:18:24','2023-06-20 20:18:24'),(72,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:18:31','2023-06-20 20:18:31'),(73,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 20:18:31','2023-06-20 20:18:31'),(74,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:18:35','2023-06-20 20:18:35'),(75,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:18:36','2023-06-20 20:18:36'),(76,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 20:18:40','2023-06-20 20:18:40'),(77,'IP 127.0.0.1 requisitou a rota /login','2023-06-20 20:18:46','2023-06-20 20:18:46'),(78,'IP 127.0.0.1 requisitou a rota /login?erro=1','2023-06-20 20:18:47','2023-06-20 20:18:47'),(79,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-20 20:18:50','2023-06-20 20:18:50'),(80,'IP 127.0.0.1 requisitou a rota /login','2023-06-22 16:43:53','2023-06-22 16:43:53'),(81,'IP 127.0.0.1 requisitou a rota /login','2023-06-22 16:44:17','2023-06-22 16:44:17'),(82,'IP 127.0.0.1 requisitou a rota /login','2023-06-22 16:45:19','2023-06-22 16:45:19'),(83,'IP 127.0.0.1 requisitou a rota /app/home','2023-06-22 16:45:20','2023-06-22 16:45:20'),(84,'IP 127.0.0.1 requisitou a rota /app/home','2023-06-22 16:48:33','2023-06-22 16:48:33'),(85,'IP 127.0.0.1 requisitou a rota /app/home','2023-06-22 16:49:30','2023-06-22 16:49:30'),(86,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-22 16:49:38','2023-06-22 16:49:38'),(87,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-22 16:50:06','2023-06-22 16:50:06'),(88,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-22 16:50:08','2023-06-22 16:50:08'),(89,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-22 16:50:09','2023-06-22 16:50:09'),(90,'IP 127.0.0.1 requisitou a rota /app/sair','2023-06-22 16:50:10','2023-06-22 16:50:10'),(91,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-22 16:50:14','2023-06-22 16:50:14'),(92,'IP 127.0.0.1 requisitou a rota /app/sair','2023-06-22 17:03:44','2023-06-22 17:03:44'),(93,'IP 127.0.0.1 requisitou a rota /','2023-06-22 17:03:44','2023-06-22 17:03:44'),(94,'IP 127.0.0.1 requisitou a rota /app/clientes','2023-06-22 17:03:53','2023-06-22 17:03:53'),(95,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-22 17:03:58','2023-06-22 17:03:58'),(96,'IP 127.0.0.1 requisitou a rota /login?erro=2','2023-06-22 17:03:58','2023-06-22 17:03:58'),(97,'IP 127.0.0.1 requisitou a rota /','2023-06-23 15:41:54','2023-06-23 15:41:54'),(98,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:42:09','2023-06-23 15:42:09'),(99,'IP 127.0.0.1 requisitou a rota /login?erro=2','2023-06-23 15:42:09','2023-06-23 15:42:09'),(100,'IP 127.0.0.1 requisitou a rota /login','2023-06-23 15:42:15','2023-06-23 15:42:15'),(101,'IP 127.0.0.1 requisitou a rota /app/home','2023-06-23 15:42:16','2023-06-23 15:42:16'),(102,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:42:18','2023-06-23 15:42:18'),(103,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:42:32','2023-06-23 15:42:32'),(104,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:46:33','2023-06-23 15:46:33'),(105,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:47:42','2023-06-23 15:47:42'),(106,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:52:24','2023-06-23 15:52:24'),(107,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:57:24','2023-06-23 15:57:24'),(108,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-23 15:57:30','2023-06-23 15:57:30'),(109,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-23 15:58:54','2023-06-23 15:58:54'),(110,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-23 15:58:55','2023-06-23 15:58:55'),(111,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 15:58:57','2023-06-23 15:58:57'),(112,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-23 15:59:07','2023-06-23 15:59:07'),(113,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-23 16:01:34','2023-06-23 16:01:34'),(114,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:01:36','2023-06-23 16:01:36'),(115,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:02:44','2023-06-23 16:02:44'),(116,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:02:47','2023-06-23 16:02:47'),(117,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:02:49','2023-06-23 16:02:49'),(118,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:02:50','2023-06-23 16:02:50'),(119,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:02:52','2023-06-23 16:02:52'),(120,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:02:53','2023-06-23 16:02:53'),(121,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:03:06','2023-06-23 16:03:06'),(122,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 16:03:07','2023-06-23 16:03:07'),(123,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:21:13','2023-06-23 16:21:13'),(124,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:21:58','2023-06-23 16:21:58'),(125,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:22:00','2023-06-23 16:22:00'),(126,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-23 16:22:13','2023-06-23 16:22:13'),(127,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:22:14','2023-06-23 16:22:14'),(128,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:22:18','2023-06-23 16:22:18'),(129,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:39:18','2023-06-23 16:39:18'),(130,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:39:19','2023-06-23 16:39:19'),(131,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:39:22','2023-06-23 16:39:22'),(132,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:39:22','2023-06-23 16:39:22'),(133,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:39:37','2023-06-23 16:39:37'),(134,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:45:39','2023-06-23 16:45:39'),(135,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:45:39','2023-06-23 16:45:39'),(136,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:45:48','2023-06-23 16:45:48'),(137,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:45:49','2023-06-23 16:45:49'),(138,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:04','2023-06-23 16:47:04'),(139,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:11','2023-06-23 16:47:11'),(140,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:11','2023-06-23 16:47:11'),(141,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:44','2023-06-23 16:47:44'),(142,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:53','2023-06-23 16:47:53'),(143,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:55','2023-06-23 16:47:55'),(144,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:47:55','2023-06-23 16:47:55'),(145,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:48:06','2023-06-23 16:48:06'),(146,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:50:45','2023-06-23 16:50:45'),(147,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:50:46','2023-06-23 16:50:46'),(148,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:51:44','2023-06-23 16:51:44'),(149,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:51:47','2023-06-23 16:51:47'),(150,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:51:47','2023-06-23 16:51:47'),(151,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:52:32','2023-06-23 16:52:32'),(152,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:52:34','2023-06-23 16:52:34'),(153,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:52:34','2023-06-23 16:52:34'),(154,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:52:57','2023-06-23 16:52:57'),(155,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:52:58','2023-06-23 16:52:58'),(156,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:52:58','2023-06-23 16:52:58'),(157,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:54:02','2023-06-23 16:54:02'),(158,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:54:08','2023-06-23 16:54:08'),(159,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:54:08','2023-06-23 16:54:08'),(160,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:56:48','2023-06-23 16:56:48'),(161,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:56:54','2023-06-23 16:56:54'),(162,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:56:55','2023-06-23 16:56:55'),(163,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-23 16:57:02','2023-06-23 16:57:02'),(164,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:03:11','2023-06-24 15:03:11'),(165,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:03:15','2023-06-24 15:03:15'),(166,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:03:24','2023-06-24 15:03:24'),(167,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:11:17','2023-06-24 15:11:17'),(168,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:11:20','2023-06-24 15:11:20'),(169,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:11:57','2023-06-24 15:11:57'),(170,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:12:01','2023-06-24 15:12:01'),(171,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:19:30','2023-06-24 15:19:30'),(172,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:19:35','2023-06-24 15:19:35'),(173,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:20:32','2023-06-24 15:20:32'),(174,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:21:48','2023-06-24 15:21:48'),(175,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:21:59','2023-06-24 15:21:59'),(176,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:22:52','2023-06-24 15:22:52'),(177,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:29:33','2023-06-24 15:29:33'),(178,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar','2023-06-24 15:31:55','2023-06-24 15:31:55'),(179,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:32:05','2023-06-24 15:32:05'),(180,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/4','2023-06-24 15:32:07','2023-06-24 15:32:07'),(181,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/4','2023-06-24 15:32:29','2023-06-24 15:32:29'),(182,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:32:46','2023-06-24 15:32:46'),(183,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:33:18','2023-06-24 15:33:18'),(184,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/2','2023-06-24 15:33:20','2023-06-24 15:33:20'),(185,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:33:26','2023-06-24 15:33:26'),(186,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:34:05','2023-06-24 15:34:05'),(187,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/3','2023-06-24 15:34:09','2023-06-24 15:34:09'),(188,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:40:29','2023-06-24 15:40:29'),(189,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:40:31','2023-06-24 15:40:31'),(190,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/1','2023-06-24 15:40:34','2023-06-24 15:40:34'),(191,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/1','2023-06-24 15:40:38','2023-06-24 15:40:38'),(192,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/1','2023-06-24 15:41:55','2023-06-24 15:41:55'),(193,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:50:24','2023-06-24 15:50:24'),(194,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:50:27','2023-06-24 15:50:27'),(195,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/1','2023-06-24 15:50:32','2023-06-24 15:50:32'),(196,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-24 15:50:44','2023-06-24 15:50:44'),(197,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-24 15:52:17','2023-06-24 15:52:17'),(198,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-24 15:52:19','2023-06-24 15:52:19'),(199,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-24 15:52:20','2023-06-24 15:52:20'),(200,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 15:52:24','2023-06-24 15:52:24'),(201,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 15:52:25','2023-06-24 15:52:25'),(202,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/1','2023-06-24 15:52:28','2023-06-24 15:52:28'),(203,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-24 15:52:35','2023-06-24 15:52:35'),(204,'IP 127.0.0.1 requisitou a rota /app/fornecedor/adicionar','2023-06-24 15:53:13','2023-06-24 15:53:13'),(205,'IP 127.0.0.1 requisitou a rota /app/fornecedor/editar/1','2023-06-24 18:53:55','2023-06-24 18:53:55'),(206,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 18:53:56','2023-06-24 18:53:56'),(207,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 18:53:58','2023-06-24 18:53:58'),(208,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 18:54:54','2023-06-24 18:54:54'),(209,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 18:55:39','2023-06-24 18:55:39'),(210,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 18:55:44','2023-06-24 18:55:44'),(211,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 18:57:06','2023-06-24 18:57:06'),(212,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 18:57:08','2023-06-24 18:57:08'),(213,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=3','2023-06-24 18:57:09','2023-06-24 18:57:09'),(214,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 18:57:12','2023-06-24 18:57:12'),(215,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=1','2023-06-24 18:57:13','2023-06-24 18:57:13'),(216,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 18:59:50','2023-06-24 18:59:50'),(217,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 19:02:17','2023-06-24 19:02:17'),(218,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 19:02:35','2023-06-24 19:02:35'),(219,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 19:04:01','2023-06-24 19:04:01'),(220,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-24 19:11:50','2023-06-24 19:11:50'),(221,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 19:11:54','2023-06-24 19:11:54'),(222,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 19:12:01','2023-06-24 19:12:01'),(223,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 19:12:07','2023-06-24 19:12:07'),(224,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 19:12:11','2023-06-24 19:12:11'),(225,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=2','2023-06-24 19:12:15','2023-06-24 19:12:15'),(226,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=3','2023-06-24 19:12:16','2023-06-24 19:12:16'),(227,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=2','2023-06-24 19:12:19','2023-06-24 19:12:19'),(228,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=1','2023-06-24 19:12:21','2023-06-24 19:12:21'),(229,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 19:12:22','2023-06-24 19:12:22'),(230,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 19:12:26','2023-06-24 19:12:26'),(231,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=2','2023-06-24 19:12:28','2023-06-24 19:12:28'),(232,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:12:32','2023-06-24 19:12:32'),(233,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=2','2023-06-24 19:12:38','2023-06-24 19:12:38'),(234,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:12:40','2023-06-24 19:12:40'),(235,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:46:28','2023-06-24 19:46:28'),(236,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:46:49','2023-06-24 19:46:49'),(237,'IP 127.0.0.1 requisitou a rota /app/fornecedor/excluir/1','2023-06-24 19:46:51','2023-06-24 19:46:51'),(238,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:46:53','2023-06-24 19:46:53'),(239,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=2','2023-06-24 19:48:34','2023-06-24 19:48:34'),(240,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:48:50','2023-06-24 19:48:50'),(241,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=2','2023-06-24 19:48:52','2023-06-24 19:48:52'),(242,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&uf=SP&page=1','2023-06-24 19:48:53','2023-06-24 19:48:53'),(243,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 19:48:55','2023-06-24 19:48:55'),(244,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 19:48:57','2023-06-24 19:48:57'),(245,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=2','2023-06-24 19:48:58','2023-06-24 19:48:58'),(246,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=3','2023-06-24 19:48:59','2023-06-24 19:48:59'),(247,'IP 127.0.0.1 requisitou a rota /app/fornecedor/excluir/5','2023-06-24 19:49:01','2023-06-24 19:49:01'),(248,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-24 19:49:01','2023-06-24 19:49:01'),(249,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-24 19:49:04','2023-06-24 19:49:04'),(250,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=2','2023-06-24 19:49:05','2023-06-24 19:49:05'),(251,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=1','2023-06-24 19:49:07','2023-06-24 19:49:07'),(252,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?_token=cZmcbPG86xEjEgTQQbeBnVzKphMj4B9doKTxcNTN&page=2','2023-06-24 19:49:08','2023-06-24 19:49:08'),(253,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 12:40:13','2023-06-25 12:40:13'),(254,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:03:00','2023-06-25 15:03:00'),(255,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:04:43','2023-06-25 15:04:43'),(256,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:05:57','2023-06-25 15:05:57'),(257,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:18:49','2023-06-25 15:18:49'),(258,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:19:32','2023-06-25 15:19:32'),(259,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:20:15','2023-06-25 15:20:15'),(260,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:26:13','2023-06-25 15:26:13'),(261,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:27:27','2023-06-25 15:27:27'),(262,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:27:29','2023-06-25 15:27:29'),(263,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:27:31','2023-06-25 15:27:31'),(264,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:27:44','2023-06-25 15:27:44'),(265,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:27:45','2023-06-25 15:27:45'),(266,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:27:54','2023-06-25 15:27:54'),(267,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:27:56','2023-06-25 15:27:56'),(268,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:28:04','2023-06-25 15:28:04'),(269,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:28:19','2023-06-25 15:28:19'),(270,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:28:23','2023-06-25 15:28:23'),(271,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:32:14','2023-06-25 15:32:14'),(272,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:32:59','2023-06-25 15:32:59'),(273,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:39:44','2023-06-25 15:39:44'),(274,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:39:59','2023-06-25 15:39:59'),(275,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:40:59','2023-06-25 15:40:59'),(276,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 15:40:59','2023-06-25 15:40:59'),(277,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 15:41:34','2023-06-25 15:41:34'),(278,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 16:58:33','2023-06-25 16:58:33'),(279,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 17:00:02','2023-06-25 17:00:02'),(280,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:00:38','2023-06-25 17:00:38'),(281,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:01:25','2023-06-25 17:01:25'),(282,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 17:01:25','2023-06-25 17:01:25'),(283,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:01:28','2023-06-25 17:01:28'),(284,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 17:01:28','2023-06-25 17:01:28'),(285,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:02:07','2023-06-25 17:02:07'),(286,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-25 17:02:08','2023-06-25 17:02:08'),(287,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:02:11','2023-06-25 17:02:11'),(288,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:02:11','2023-06-25 17:02:11'),(289,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 17:30:46','2023-06-25 17:30:46'),(290,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-25 17:36:44','2023-06-25 17:36:44'),(291,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-25 17:37:23','2023-06-25 17:37:23'),(292,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-25 17:37:24','2023-06-25 17:37:24'),(293,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-25 17:37:24','2023-06-25 17:37:24'),(294,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-25 17:37:53','2023-06-25 17:37:53'),(295,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 19:11:28','2023-06-25 19:11:28'),(296,'IP 127.0.0.1 requisitou a rota /app/produto/5/edit','2023-06-25 19:11:32','2023-06-25 19:11:32'),(297,'IP 127.0.0.1 requisitou a rota /app/produto/5/edit','2023-06-25 19:11:56','2023-06-25 19:11:56'),(298,'IP 127.0.0.1 requisitou a rota /app/produto/5/edit','2023-06-25 19:12:12','2023-06-25 19:12:12'),(299,'IP 127.0.0.1 requisitou a rota /app/produto/5/edit','2023-06-25 19:53:12','2023-06-25 19:53:12'),(300,'IP 127.0.0.1 requisitou a rota /app/produto/5/edit','2023-06-25 19:53:14','2023-06-25 19:53:14'),(301,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 19:53:15','2023-06-25 19:53:15'),(302,'IP 127.0.0.1 requisitou a rota /app/produto/4/edit','2023-06-25 19:53:19','2023-06-25 19:53:19'),(303,'IP 127.0.0.1 requisitou a rota /app/produto/4','2023-06-25 19:53:23','2023-06-25 19:53:23'),(304,'IP 127.0.0.1 requisitou a rota /app/produto/4','2023-06-25 19:53:23','2023-06-25 19:53:23'),(305,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 19:53:27','2023-06-25 19:53:27'),(306,'IP 127.0.0.1 requisitou a rota /app/produto/4/edit','2023-06-25 19:53:29','2023-06-25 19:53:29'),(307,'IP 127.0.0.1 requisitou a rota /app/produto/4','2023-06-25 19:53:35','2023-06-25 19:53:35'),(308,'IP 127.0.0.1 requisitou a rota /app/produto/4','2023-06-25 19:53:35','2023-06-25 19:53:35'),(309,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 19:53:39','2023-06-25 19:53:39'),(310,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 20:16:26','2023-06-25 20:16:26'),(311,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-25 20:16:29','2023-06-25 20:16:29'),(312,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 20:16:42','2023-06-25 20:16:42'),(313,'IP 127.0.0.1 requisitou a rota /app/produto/2','2023-06-25 20:16:46','2023-06-25 20:16:46'),(314,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-25 20:16:51','2023-06-25 20:16:51'),(315,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-26 15:10:51','2023-06-26 15:10:51'),(316,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:11:03','2023-06-26 15:11:03'),(317,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:11:04','2023-06-26 15:11:04'),(318,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-26 15:11:10','2023-06-26 15:11:10'),(319,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-26 15:12:05','2023-06-26 15:12:05'),(320,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-26 15:12:13','2023-06-26 15:12:13'),(321,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-26 15:12:14','2023-06-26 15:12:14'),(322,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:12:16','2023-06-26 15:12:16'),(323,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:19:21','2023-06-26 15:19:21'),(324,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-26 15:19:23','2023-06-26 15:19:23'),(325,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:19:31','2023-06-26 15:19:31'),(326,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:19:32','2023-06-26 15:19:32'),(327,'IP 127.0.0.1 requisitou a rota /app/produto/7/edit','2023-06-26 15:20:00','2023-06-26 15:20:00'),(328,'IP 127.0.0.1 requisitou a rota /app/produto/7','2023-06-26 15:20:05','2023-06-26 15:20:05'),(329,'IP 127.0.0.1 requisitou a rota /app/produto/7','2023-06-26 15:20:05','2023-06-26 15:20:05'),(330,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 15:20:08','2023-06-26 15:20:08'),(331,'IP 127.0.0.1 requisitou a rota /app/produto-detalhes/create','2023-06-26 16:07:08','2023-06-26 16:07:08'),(332,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 16:07:11','2023-06-26 16:07:11'),(333,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 16:08:26','2023-06-26 16:08:26'),(334,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 16:11:02','2023-06-26 16:11:02'),(335,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 16:11:48','2023-06-26 16:11:48'),(336,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 16:13:08','2023-06-26 16:13:08'),(337,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe','2023-06-26 16:17:46','2023-06-26 16:17:46'),(338,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 16:27:22','2023-06-26 16:27:22'),(339,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/edit','2023-06-26 16:27:29','2023-06-26 16:27:29'),(340,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 16:27:38','2023-06-26 16:27:38'),(341,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 16:28:27','2023-06-26 16:28:27'),(342,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 16:30:33','2023-06-26 16:30:33'),(343,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 16:31:30','2023-06-26 16:31:30'),(344,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 16:33:25','2023-06-26 16:33:25'),(345,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1','2023-06-26 16:33:32','2023-06-26 16:33:32'),(346,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 16:33:37','2023-06-26 16:33:37'),(347,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1','2023-06-26 16:33:40','2023-06-26 16:33:40'),(348,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1','2023-06-26 16:33:40','2023-06-26 16:33:40'),(349,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 17:23:49','2023-06-26 17:23:49'),(350,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-26 17:23:52','2023-06-26 17:23:52'),(351,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 17:29:39','2023-06-26 17:29:39'),(352,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 17:31:02','2023-06-26 17:31:02'),(353,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 17:31:29','2023-06-26 17:31:29'),(354,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe','2023-06-26 17:31:40','2023-06-26 17:31:40'),(355,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-26 17:31:44','2023-06-26 17:31:44'),(356,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 17:31:45','2023-06-26 17:31:45'),(357,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-26 17:35:46','2023-06-26 17:35:46'),(358,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 15:07:25','2023-06-27 15:07:25'),(359,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 15:07:35','2023-06-27 15:07:35'),(360,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 15:07:48','2023-06-27 15:07:48'),(361,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 15:49:49','2023-06-27 15:49:49'),(362,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 15:51:41','2023-06-27 15:51:41'),(363,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 15:52:38','2023-06-27 15:52:38'),(364,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 15:54:08','2023-06-27 15:54:08'),(365,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 15:54:28','2023-06-27 15:54:28'),(366,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 16:45:11','2023-06-27 16:45:11'),(367,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 16:45:18','2023-06-27 16:45:18'),(368,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 16:45:20','2023-06-27 16:45:20'),(369,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 16:45:22','2023-06-27 16:45:22'),(370,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/edit','2023-06-27 16:45:22','2023-06-27 16:45:22'),(371,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/create','2023-06-27 16:45:23','2023-06-27 16:45:23'),(372,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 16:45:26','2023-06-27 16:45:26'),(373,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 16:46:39','2023-06-27 16:46:39'),(374,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 16:48:12','2023-06-27 16:48:12'),(375,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 16:49:03','2023-06-27 16:49:03'),(376,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 16:51:53','2023-06-27 16:51:53'),(377,'IP 127.0.0.1 requisitou a rota /app/produto-detalhe/1/edit','2023-06-27 17:06:57','2023-06-27 17:06:57'),(378,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 20:04:43','2023-06-27 20:04:43'),(379,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-27 20:06:55','2023-06-27 20:06:55'),(380,'IP 127.0.0.1 requisitou a rota /app/fornecedor','2023-06-28 15:22:43','2023-06-28 15:22:43'),(381,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:23:01','2023-06-28 15:23:01'),(382,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:33:32','2023-06-28 15:33:32'),(383,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:34:01','2023-06-28 15:34:01'),(384,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:34:03','2023-06-28 15:34:03'),(385,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:34:39','2023-06-28 15:34:39'),(386,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:39:50','2023-06-28 15:39:50'),(387,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:40:22','2023-06-28 15:40:22'),(388,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:40:49','2023-06-28 15:40:49'),(389,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar','2023-06-28 15:41:12','2023-06-28 15:41:12'),(390,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=2','2023-06-28 15:41:20','2023-06-28 15:41:20'),(391,'IP 127.0.0.1 requisitou a rota /app/fornecedor/listar?page=3','2023-06-28 15:41:21','2023-06-28 15:41:21'),(392,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-28 15:51:56','2023-06-28 15:51:56'),(393,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-28 15:54:50','2023-06-28 15:54:50'),(394,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-28 15:54:50','2023-06-28 15:54:50'),(395,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-28 15:54:54','2023-06-28 15:54:54'),(396,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-28 15:54:54','2023-06-28 15:54:54'),(397,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-28 15:54:56','2023-06-28 15:54:56'),(398,'IP 127.0.0.1 requisitou a rota /app/produto/1','2023-06-28 15:54:57','2023-06-28 15:54:57'),(399,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-28 15:54:58','2023-06-28 15:54:58'),(400,'IP 127.0.0.1 requisitou a rota /app/produto/1/edit','2023-06-28 15:54:59','2023-06-28 15:54:59'),(401,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-28 15:59:36','2023-06-28 15:59:36'),(402,'IP 127.0.0.1 requisitou a rota /app/produto/create','2023-06-28 16:00:16','2023-06-28 16:00:16'),(403,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-28 16:00:31','2023-06-28 16:00:31'),(404,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-28 16:00:31','2023-06-28 16:00:31'),(405,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-28 16:38:16','2023-06-28 16:38:16'),(406,'IP 127.0.0.1 requisitou a rota /app/cliente/create','2023-06-29 15:34:19','2023-06-29 15:34:19'),(407,'IP 127.0.0.1 requisitou a rota /app/cliente/create','2023-06-29 15:35:07','2023-06-29 15:35:07'),(408,'IP 127.0.0.1 requisitou a rota /app/cliente/create','2023-06-29 15:39:30','2023-06-29 15:39:30'),(409,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-29 15:39:56','2023-06-29 15:39:56'),(410,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-29 15:39:57','2023-06-29 15:39:57'),(411,'IP 127.0.0.1 requisitou a rota /app/cliente','2023-06-29 15:50:12','2023-06-29 15:50:12'),(412,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 15:50:14','2023-06-29 15:50:14'),(413,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 15:51:20','2023-06-29 15:51:20'),(414,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 15:51:43','2023-06-29 15:51:43'),(415,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 15:52:10','2023-06-29 15:52:10'),(416,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 15:52:58','2023-06-29 15:52:58'),(417,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:08:18','2023-06-29 16:08:18'),(418,'IP 127.0.0.1 requisitou a rota /app/pedido/create','2023-06-29 16:08:22','2023-06-29 16:08:22'),(419,'IP 127.0.0.1 requisitou a rota /app/pedido/create','2023-06-29 16:09:29','2023-06-29 16:09:29'),(420,'IP 127.0.0.1 requisitou a rota /app/pedido/create','2023-06-29 16:14:16','2023-06-29 16:14:16'),(421,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:14:43','2023-06-29 16:14:43'),(422,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:14:44','2023-06-29 16:14:44'),(423,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:15:59','2023-06-29 16:15:59'),(424,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:24:58','2023-06-29 16:24:58'),(425,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:27:14','2023-06-29 16:27:14'),(426,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 16:27:16','2023-06-29 16:27:16'),(427,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 16:32:02','2023-06-29 16:32:02'),(428,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 16:32:10','2023-06-29 16:32:10'),(429,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 16:32:12','2023-06-29 16:32:12'),(430,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 16:37:12','2023-06-29 16:37:12'),(431,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 16:37:29','2023-06-29 16:37:29'),(432,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 16:40:56','2023-06-29 16:40:56'),(433,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:46:23','2023-06-29 19:46:23'),(434,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:46:32','2023-06-29 19:46:32'),(435,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 19:47:16','2023-06-29 19:47:16'),(436,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 19:47:19','2023-06-29 19:47:19'),(437,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:47:22','2023-06-29 19:47:22'),(438,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:50:26','2023-06-29 19:50:26'),(439,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:50:53','2023-06-29 19:50:53'),(440,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:52:55','2023-06-29 19:52:55'),(441,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 19:52:59','2023-06-29 19:52:59'),(442,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:53:02','2023-06-29 19:53:02'),(443,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:53:21','2023-06-29 19:53:21'),(444,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:56:16','2023-06-29 19:56:16'),(445,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:58:28','2023-06-29 19:58:28'),(446,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:58:34','2023-06-29 19:58:34'),(447,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:58:53','2023-06-29 19:58:53'),(448,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:58:58','2023-06-29 19:58:58'),(449,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 19:59:06','2023-06-29 19:59:06'),(450,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 20:00:32','2023-06-29 20:00:32'),(451,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:00:37','2023-06-29 20:00:37'),(452,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:05:14','2023-06-29 20:05:14'),(453,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:06:11','2023-06-29 20:06:11'),(454,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:06:14','2023-06-29 20:06:14'),(455,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:13:22','2023-06-29 20:13:22'),(456,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:13:27','2023-06-29 20:13:27'),(457,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:13:30','2023-06-29 20:13:30'),(458,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:13:52','2023-06-29 20:13:52'),(459,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 20:13:55','2023-06-29 20:13:55'),(460,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:13:56','2023-06-29 20:13:56'),(461,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 20:14:22','2023-06-29 20:14:22'),(462,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:14:23','2023-06-29 20:14:23'),(463,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 20:14:26','2023-06-29 20:14:26'),(464,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:14:27','2023-06-29 20:14:27'),(465,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:15:26','2023-06-29 20:15:26'),(466,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:24:30','2023-06-29 20:24:30'),(467,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:35:55','2023-06-29 20:35:55'),(468,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 20:36:01','2023-06-29 20:36:01'),(469,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:36:01','2023-06-29 20:36:01'),(470,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:50:55','2023-06-29 20:50:55'),(471,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 20:51:00','2023-06-29 20:51:00'),(472,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:51:00','2023-06-29 20:51:00'),(473,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:51:24','2023-06-29 20:51:24'),(474,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 20:51:29','2023-06-29 20:51:29'),(475,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 20:51:29','2023-06-29 20:51:29'),(476,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 20:54:46','2023-06-29 20:54:46'),(477,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 20:54:50','2023-06-29 20:54:50'),(478,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 20:54:58','2023-06-29 20:54:58'),(479,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-29 20:55:14','2023-06-29 20:55:14'),(480,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-29 20:55:34','2023-06-29 20:55:34'),(481,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-29 21:00:17','2023-06-29 21:00:17'),(482,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-29 21:07:45','2023-06-29 21:07:45'),(483,'IP 127.0.0.1 requisitou a rota /app/produto','2023-06-29 21:21:11','2023-06-29 21:21:11'),(484,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 21:21:14','2023-06-29 21:21:14'),(485,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-29 21:21:19','2023-06-29 21:21:19'),(486,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 21:21:41','2023-06-29 21:21:41'),(487,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 21:22:57','2023-06-29 21:22:57'),(488,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 21:32:26','2023-06-29 21:32:26'),(489,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 21:43:32','2023-06-29 21:43:32'),(490,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/1','2023-06-29 21:43:39','2023-06-29 21:43:39'),(491,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-29 21:43:40','2023-06-29 21:43:40'),(492,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:14:17','2023-06-30 16:14:17'),(493,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/destroy/1/8','2023-06-30 16:14:27','2023-06-30 16:14:27'),(494,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:14:33','2023-06-30 16:14:33'),(495,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/destroy/1/8','2023-06-30 16:14:35','2023-06-30 16:14:35'),(496,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:14:37','2023-06-30 16:14:37'),(497,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:14:53','2023-06-30 16:14:53'),(498,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/1/8','2023-06-30 16:14:55','2023-06-30 16:14:55'),(499,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:14:56','2023-06-30 16:14:56'),(500,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:16:08','2023-06-30 16:16:08'),(501,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/1/8','2023-06-30 16:16:10','2023-06-30 16:16:10'),(502,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:18:14','2023-06-30 16:18:14'),(503,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/1/7','2023-06-30 16:18:17','2023-06-30 16:18:17'),(504,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:18:19','2023-06-30 16:18:19'),(505,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/1/4','2023-06-30 16:22:01','2023-06-30 16:22:01'),(506,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:22:04','2023-06-30 16:22:04'),(507,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/1','2023-06-30 16:23:07','2023-06-30 16:23:07'),(508,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/1/6','2023-06-30 16:23:09','2023-06-30 16:23:09'),(509,'IP 127.0.0.1 requisitou a rota /app/pedido/create?pedido=1','2023-06-30 16:23:10','2023-06-30 16:23:10'),(510,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-30 16:23:15','2023-06-30 16:23:15'),(511,'IP 127.0.0.1 requisitou a rota /app/pedido','2023-06-30 16:23:16','2023-06-30 16:23:16'),(512,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:23:34','2023-06-30 16:23:34'),(513,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/2','2023-06-30 16:23:40','2023-06-30 16:23:40'),(514,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:23:40','2023-06-30 16:23:40'),(515,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/2','2023-06-30 16:23:45','2023-06-30 16:23:45'),(516,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:23:45','2023-06-30 16:23:45'),(517,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/2','2023-06-30 16:24:16','2023-06-30 16:24:16'),(518,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:24:17','2023-06-30 16:24:17'),(519,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/2/5','2023-06-30 16:24:18','2023-06-30 16:24:18'),(520,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:24:19','2023-06-30 16:24:19'),(521,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/2','2023-06-30 16:26:30','2023-06-30 16:26:30'),(522,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:26:30','2023-06-30 16:26:30'),(523,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:38:01','2023-06-30 16:38:01'),(524,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/11/2','2023-06-30 16:38:05','2023-06-30 16:38:05'),(525,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:39:17','2023-06-30 16:39:17'),(526,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/2','2023-06-30 16:39:24','2023-06-30 16:39:24'),(527,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:39:25','2023-06-30 16:39:25'),(528,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/12/2','2023-06-30 16:39:27','2023-06-30 16:39:27'),(529,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:40:38','2023-06-30 16:40:38'),(530,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/store/2','2023-06-30 16:40:42','2023-06-30 16:40:42'),(531,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:40:43','2023-06-30 16:40:43'),(532,'IP 127.0.0.1 requisitou a rota /app/pedido-produto.destroy/13/2','2023-06-30 16:40:45','2023-06-30 16:40:45'),(533,'IP 127.0.0.1 requisitou a rota /app/pedido-produto/create/2','2023-06-30 16:40:45','2023-06-30 16:40:45'),(534,'IP 127.0.0.1 requisitou a rota /','2023-06-30 21:00:40','2023-06-30 21:00:40'),(535,'IP 127.0.0.1 requisitou a rota /','2023-07-24 16:16:20','2023-07-24 16:16:20'),(536,'IP 127.0.0.1 requisitou a rota /','2023-07-24 16:16:25','2023-07-24 16:16:25'),(537,'IP 127.0.0.1 requisitou a rota /','2023-07-24 16:16:29','2023-07-24 16:16:29'),(538,'IP 127.0.0.1 requisitou a rota /sobrenos','2023-07-24 16:16:32','2023-07-24 16:16:32'),(539,'IP 127.0.0.1 requisitou a rota /','2023-07-24 16:16:36','2023-07-24 16:16:36'),(540,'IP 127.0.0.1 requisitou a rota /contactos','2023-07-24 16:16:37','2023-07-24 16:16:37'),(541,'IP 127.0.0.1 requisitou a rota /','2023-07-24 16:16:39','2023-07-24 16:16:39');
/*!40000 ALTER TABLE `log_acessos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_06_08_131154_create_site_contactos_table',1),(6,'2023_06_09_205042_create_fornecedores_table',1),(7,'2023_06_10_082408_alter_fornecedores_novas_colunas',1),(8,'2023_06_10_091945_create_produtos_table',1),(9,'2023_06_10_093019_create_produtos_detalhes_table',1),(10,'2023_06_10_102645_create_unidades_table',1),(11,'2023_06_10_125342_ajuste_produtos_filiais',1),(12,'2023_06_10_170553_alter_fornecedores_nova_coluna_site_com_after',1),(13,'2023_06_11_204209_alter_fornecedores_softdeletes',1),(14,'2023_06_14_172703_create_motivo_contactos_table',2),(15,'2023_06_14_174638_alter_table_site_contactos_add_fk_motivo_contactos',3),(16,'2023_06_17_133507_create_log_acessos_table',4),(17,'2023_06_27_204431_alter_produtos_relacionamento_fornecedores',5),(18,'2023_06_28_171116_create_clientes_pedidos_produtos',6),(19,'2023_06_29_222557_alter_pedidos_produtos_add_qtd',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_contactos`
--

DROP TABLE IF EXISTS `motivo_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivo_contactos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `motivo_contacto` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_contactos`
--

LOCK TABLES `motivo_contactos` WRITE;
/*!40000 ALTER TABLE `motivo_contactos` DISABLE KEYS */;
INSERT INTO `motivo_contactos` VALUES (1,'Duvida','2023-06-14 16:36:04','2023-06-14 16:36:04'),(2,'Elogia','2023-06-14 16:36:04','2023-06-14 16:36:04'),(3,'Reclamacao','2023-06-14 16:36:04','2023-06-14 16:36:04');
/*!40000 ALTER TABLE `motivo_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_cliente_id_foreign` (`cliente_id`),
  CONSTRAINT `pedidos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'2023-06-29 16:14:43','2023-06-29 16:14:43'),(2,1,'2023-06-30 16:23:15','2023-06-30 16:23:15');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_produtos`
--

DROP TABLE IF EXISTS `pedidos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_produtos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint unsigned NOT NULL,
  `produto_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_produtos_pedido_id_foreign` (`pedido_id`),
  KEY `pedidos_produtos_produto_id_foreign` (`produto_id`),
  CONSTRAINT `pedidos_produtos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `pedidos_produtos_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_produtos`
--

LOCK TABLES `pedidos_produtos` WRITE;
/*!40000 ALTER TABLE `pedidos_produtos` DISABLE KEYS */;
INSERT INTO `pedidos_produtos` VALUES (1,1,8,'2023-06-29 20:13:55','2023-06-29 20:13:55',0),(2,1,8,'2023-06-29 20:14:22','2023-06-29 20:14:22',0),(3,1,2,'2023-06-29 20:14:26','2023-06-29 20:14:26',0),(5,1,8,'2023-06-29 20:51:00','2023-06-29 20:51:00',0),(8,2,1,'2023-06-30 16:23:40',NULL,4);
/*!40000 ALTER TABLE `pedidos_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_filiais`
--

DROP TABLE IF EXISTS `produto_filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_filiais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filial_id` bigint unsigned NOT NULL,
  `produto_id` bigint unsigned NOT NULL,
  `preco_venda` decimal(8,2) NOT NULL,
  `stock_minimo` int NOT NULL,
  `stock_maximo` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_filiais_filial_id_foreign` (`filial_id`),
  KEY `produto_filiais_produto_id_foreign` (`produto_id`),
  CONSTRAINT `produto_filiais_filial_id_foreign` FOREIGN KEY (`filial_id`) REFERENCES `filiais` (`id`),
  CONSTRAINT `produto_filiais_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_filiais`
--

LOCK TABLES `produto_filiais` WRITE;
/*!40000 ALTER TABLE `produto_filiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fornecedor_id` bigint unsigned NOT NULL DEFAULT '6',
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `peso` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produtos_unidade_id_foreign` (`unidade_id`),
  KEY `produtos_fornecedor_id_foreign` (`fornecedor_id`),
  CONSTRAINT `produtos_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`),
  CONSTRAINT `produtos_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,2,'geladeira','iiiiiiiiiiiiiiii',60,'2023-06-25 15:18:37','2023-06-28 15:54:50',1),(2,6,'tv','eascascsawfe',10,'2023-06-25 15:19:27','2023-06-25 15:19:27',1),(3,6,'bike','idel paxsacas',14,'2023-06-25 15:39:59','2023-06-25 15:39:59',1),(4,6,'bike','idel',14,'2023-06-25 15:40:59','2023-06-25 19:53:35',1),(5,6,'laptop','sgwrrsg',4,'2023-06-25 17:02:11','2023-06-25 17:02:11',1),(6,6,'fwew','fewfwe',11,'2023-06-26 15:11:04','2023-06-26 15:11:04',1),(7,6,'sfdbsdfb','dfbnsgdvbsbsdfbdfbdbn',4,'2023-06-26 15:19:31','2023-06-26 15:20:05',1),(8,1,'cama','sadafaf',45,'2023-06-28 16:00:31','2023-06-28 16:00:31',1);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_detalhes`
--

DROP TABLE IF EXISTS `produtos_detalhes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos_detalhes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `produto_id` bigint unsigned NOT NULL,
  `comprimento` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produtos_detalhes_produto_id_unique` (`produto_id`),
  KEY `produtos_detalhes_unidade_id_foreign` (`unidade_id`),
  CONSTRAINT `produtos_detalhes_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  CONSTRAINT `produtos_detalhes_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_detalhes`
--

LOCK TABLES `produtos_detalhes` WRITE;
/*!40000 ALTER TABLE `produtos_detalhes` DISABLE KEYS */;
INSERT INTO `produtos_detalhes` VALUES (1,1,66.00,66.00,66.00,'2023-06-26 16:17:47','2023-06-26 16:33:32',1),(2,2,13.00,32.00,12.00,'2023-06-26 17:31:40','2023-06-26 17:31:40',1);
/*!40000 ALTER TABLE `produtos_detalhes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_contactos`
--

DROP TABLE IF EXISTS `site_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_contactos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo_contactos_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_contactos_motivo_contactos_id_foreign` (`motivo_contactos_id`),
  CONSTRAINT `site_contactos_motivo_contactos_id_foreign` FOREIGN KEY (`motivo_contactos_id`) REFERENCES `motivo_contactos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_contactos`
--

LOCK TABLES `site_contactos` WRITE;
/*!40000 ALTER TABLE `site_contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unidade` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,'UN','unidade','2023-06-25 15:16:25','2023-06-25 15:16:25');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hugo','hugomoreira@hotmail.com',NULL,'1234',NULL,NULL,NULL);
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

-- Dump completed on 2023-07-24 18:22:44
