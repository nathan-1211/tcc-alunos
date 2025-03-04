CREATE DATABASE  IF NOT EXISTS `carol_gabi_melissa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carol_gabi_melissa`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: carol_gabi_melissa
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_date` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Eric Gregorio','eric@eric.com','FR$5tghy6','2024-09-08 03:11:56'),(2,'Gregorio Eric','gregorio@gregorio.com','FR$5tghy6','2024-09-08 03:11:56'),(3,'Eric Gregorio','gregorio.eric@gmail.com','FR$5tghy6','2024-10-03 02:54:22');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `aluno_id` int NOT NULL AUTO_INCREMENT,
  `aluno_name` varchar(120) NOT NULL,
  `aluno_email` varchar(120) NOT NULL,
  `aluno_serie` varchar(10) NOT NULL,
  `aluno_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`aluno_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (2,'Eric Gregorio','gregorio.eric@gmail.com','9A ','2024-11-04 21:14:58'),(3,'Maria Eduarda Caetano','duda@duda.com','3B','2024-11-06 14:29:42'),(5,'Eric Gregorio de Aquino','gregorio.eric@gmail.com','3B','2025-02-06 13:45:15');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_image` varchar(255) NOT NULL,
  `book_name` varchar(120) NOT NULL,
  `book_autor` varchar(100) NOT NULL,
  `book_categoria` varchar(100) NOT NULL,
  `book_desc` text NOT NULL,
  `book_slug` varchar(255) DEFAULT NULL,
  `book_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'/1730747727992-577264565_corpos_secos.jpg','Corpos Secos','Luisa Geisler, Marcelo Ferroni','Suspense','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at feugiat nibh. Morbi vestibulum semper eros id commodo. Duis eget leo bibendum, hendrerit dui ac, tristique magna. Mauris fringilla nibh eu purus egestas commodo. Aliquam diam nunc, porta eget urna ac, aliquam pharetra turpis. Nunc vehicula commodo varius. In rutrum at neque sit amet malesuada. Vestibulum vel dictum elit. Praesent leo enim, sodales ut nunc vitae, dictum imperdiet risus. In hac habitasse platea dictumst. Ut lobortis velit enim, ac dapibus ipsum consequat vel.\r\n            \r\n            \r\n            ','Corpos-Secos','2024-11-04 19:15:28'),(2,'/1731864936625-648815364_ninguem_vai_te_ouvir_gritar.jpg','Ninguém Vai Te Ouvir Gritar','Mark Miller','Suspense','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque at feugiat nibh. Morbi vestibulum semper eros id commodo. Duis eget leo bibendum, hendrerit dui ac, tristique magna. Mauris fringilla nibh eu purus egestas commodo. Aliquam diam nunc, porta eget urna ac, aliquam pharetra turpis. Nunc vehicula commodo varius. In rutrum at neque sit amet malesuada. Vestibulum vel dictum elit. Praesent leo enim, sodales ut nunc vitae, dictum imperdiet risus. In hac habitasse platea dictumst. Ut lobortis velit enim, ac dapibus ipsum consequat vel.\r\n            ','Ninguém-Vai-Te-Ouvir-Gritar','2024-11-04 21:15:30'),(8,'/1731890979094-169028107_A_Contadora.jpg','A Contadora','Freida Mcfadden','Terror','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam faucibus augue lectus, a commodo felis scelerisque eget. Aenean tincidunt eros magna. In interdum felis arcu, vitae consequat lacus scelerisque sit amet. Nulla facilisi. Pellentesque sed lectus luctus, vestibulum risus sodales, porttitor nulla. Nulla suscipit neque sit amet elit mattis, a faucibus risus dapibus. Pellentesque consectetur quam purus, vitae varius mi porttitor quis. Etiam dapibus nec orci non accumsan. Donec at arcu non mi condimentum suscipit vitae at magna. Cras in blandit risus, quis pharetra odio.','A-Contadora','2024-11-18 00:49:39'),(9,'/1738849462474-18572933_715-TCHXB1L._SL1500_.jpg','Corpos Secos','Freida Mcfadden','Suspense','stjryjsfhjdfh\r\nsdghsdghsdt','Corpos-Secos','2025-02-06 13:44:22');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `loan_id` int NOT NULL AUTO_INCREMENT,
  `books_book_id` int NOT NULL,
  `alunos_aluno_id` int NOT NULL,
  `loan_date_atual` date NOT NULL,
  `loan_date_entrega` date NOT NULL,
  `loan_date_register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`loan_id`),
  KEY `fk_loan_books_idx` (`books_book_id`),
  KEY `fk_loan_alunos1_idx` (`alunos_aluno_id`),
  CONSTRAINT `fk_loan_alunos1` FOREIGN KEY (`alunos_aluno_id`) REFERENCES `alunos` (`aluno_id`),
  CONSTRAINT `fk_loan_books` FOREIGN KEY (`books_book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (2,2,2,'2024-11-04','2024-12-10','2024-11-04 21:15:50');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-02-27 23:01:35
