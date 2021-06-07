-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: contactform
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
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `message` varchar(400) NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (2,'Emeline','Leduc','Développeuse web','J’aime beaucoup l’ergonomie et l’efficacité de votre site. Je pense qu\'il aidera de nombreuses personnes à faire des progrès en lecture. J\'ai d’ores et déjà parlé de ce logiciel autour de moi !',5),(3,'Caroline','Dupont','Assistante sociale','L’outil que vous proposez est vraiment génial ! ',5),(4,'Bertrand','Pasquet','Infirmier','Je ne suis pas satisfait de votre application.',3),(5,'Mehdi','Bekri','Conducteur de train','Formidable ! Une vraie expérience visuelle et auditive. ',5),(6,'Anne-Laure','Ferrari','Orthophoniste','J\'ai recommandé cette application à des patients. Je note une nette amélioration dans l\'apprentissage de la lecture.',5),(7,'Scothy','T.','Développeur','Cette application a été d\'une grande aide pour ma fille qui rencontre des difficultés de lecture. Depuis, je vois la différence : elle reprend confiance en elle !',5),(8,'Thomas','Paoli','Professeur','Top ! ',4),(9,'Paul-Emmanuel','Legrand','Rentier','J\'ai trouvé en AlphaB un nouvel espoir, après de longues années d\'errance à confondre les b et les d. Merci à toute l\'équipe !\n',4),(10,'Jean','Leduc','Développeuse web','Super !',5),(11,'Jean','Leduc','Développeuse web','Super !',5);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-07 19:32:36
