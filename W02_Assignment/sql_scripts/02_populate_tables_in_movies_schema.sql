-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `movie_ratings`
--

LOCK TABLES `movie_ratings` WRITE;
/*!40000 ALTER TABLE `movie_ratings` DISABLE KEYS */;
INSERT INTO `movie_ratings` VALUES (1,1,4),(1,2,4),(1,3,5),(1,4,3),(1,5,5),(1,6,5),(1,7,5),(1,8,5),(1,9,5),(1,10,4),(1,11,5),(1,12,NULL),(1,13,5),(2,1,5),(2,2,NULL),(2,3,3),(2,4,3),(2,5,NULL),(2,6,NULL),(2,7,5),(2,8,NULL),(2,9,NULL),(2,10,5),(2,11,4),(2,12,5),(2,13,NULL),(3,1,2),(3,2,2),(3,3,5),(3,4,5),(3,5,2),(3,6,3),(3,7,5),(3,8,5),(3,9,5),(3,10,3),(3,11,NULL),(3,12,NULL),(3,13,5),(4,1,1),(4,2,3),(4,3,1),(4,4,2),(4,5,NULL),(4,6,NULL),(4,7,5),(4,8,NULL),(4,9,NULL),(4,10,3),(4,11,NULL),(4,12,NULL),(4,13,4),(5,1,3),(5,2,1),(5,3,4),(5,4,4),(5,5,4),(5,6,NULL),(5,7,4),(5,8,NULL),(5,9,NULL),(5,10,5),(5,11,4),(5,12,3),(5,13,5),(6,1,2),(6,2,NULL),(6,3,2),(6,4,2),(6,5,3),(6,6,5),(6,7,5),(6,8,3),(6,9,4),(6,10,5),(6,11,5),(6,12,5),(6,13,5);
/*!40000 ALTER TABLE `movie_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Black Panther',2018),(2,'Parasite (Gisaengchung)',2019),(3,'Avengers: Endgame',2019),(4,'Knives Out',2019),(5,'Us',2019),(6,'Toy Story 4',2019);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Elliot'),(2,'Sandra'),(3,'Jake'),(4,'Alex'),(5,'Jeannette'),(6,'Mya'),(7,'Natalie'),(8,'Diana'),(9,'Leslie'),(10,'Stacy'),(11,'Ginette'),(12,'Andres'),(13,'Cesar');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recent_movies_ratings`
--

LOCK TABLES `recent_movies_ratings` WRITE;
/*!40000 ALTER TABLE `recent_movies_ratings` DISABLE KEYS */;
INSERT INTO `recent_movies_ratings` VALUES ('Black Panther',2018,'Elliot',4),('Black Panther',2018,'Sandra',4),('Black Panther',2018,'Jake',5),('Black Panther',2018,'Alex',3),('Black Panther',2018,'Jeannette',5),('Black Panther',2018,'Mya',5),('Black Panther',2018,'Natalie',5),('Black Panther',2018,'Diana',5),('Black Panther',2018,'Leslie',5),('Black Panther',2018,'Stacy',4),('Black Panther',2018,'Ginette',5),('Black Panther',2018,'Andres',NULL),('Black Panther',2018,'Cesar',5),('Parasite (Gisaengchung)',2019,'Elliot',5),('Parasite (Gisaengchung)',2019,'Sandra',NULL),('Parasite (Gisaengchung)',2019,'Jake',3),('Parasite (Gisaengchung)',2019,'Alex',3),('Parasite (Gisaengchung)',2019,'Jeannette',NULL),('Parasite (Gisaengchung)',2019,'Mya',NULL),('Parasite (Gisaengchung)',2019,'Natalie',5),('Parasite (Gisaengchung)',2019,'Diana',NULL),('Parasite (Gisaengchung)',2019,'Leslie',NULL),('Parasite (Gisaengchung)',2019,'Stacy',5),('Parasite (Gisaengchung)',2019,'Ginette',4),('Parasite (Gisaengchung)',2019,'Andres',5),('Parasite (Gisaengchung)',2019,'Cesar',NULL),('Avengers: Endgame',2019,'Elliot',2),('Avengers: Endgame',2019,'Sandra',2),('Avengers: Endgame',2019,'Jake',5),('Avengers: Endgame',2019,'Alex',5),('Avengers: Endgame',2019,'Jeannette',2),('Avengers: Endgame',2019,'Mya',3),('Avengers: Endgame',2019,'Natalie',5),('Avengers: Endgame',2019,'Diana',5),('Avengers: Endgame',2019,'Leslie',5),('Avengers: Endgame',2019,'Stacy',3),('Avengers: Endgame',2019,'Ginette',NULL),('Avengers: Endgame',2019,'Andres',NULL),('Avengers: Endgame',2019,'Cesar',5),('Knives Out',2019,'Elliot',1),('Knives Out',2019,'Sandra',3),('Knives Out',2019,'Jake',1),('Knives Out',2019,'Alex',2),('Knives Out',2019,'Jeannette',NULL),('Knives Out',2019,'Mya',NULL),('Knives Out',2019,'Natalie',5),('Knives Out',2019,'Diana',NULL),('Knives Out',2019,'Leslie',NULL),('Knives Out',2019,'Stacy',3),('Knives Out',2019,'Ginette',NULL),('Knives Out',2019,'Andres',NULL),('Knives Out',2019,'Cesar',4),('Us',2019,'Elliot',3),('Us',2019,'Sandra',1),('Us',2019,'Jake',4),('Us',2019,'Alex',4),('Us',2019,'Jeannette',4),('Us',2019,'Mya',NULL),('Us',2019,'Natalie',4),('Us',2019,'Diana',NULL),('Us',2019,'Leslie',NULL),('Us',2019,'Stacy',5),('Us',2019,'Ginette',4),('Us',2019,'Andres',3),('Us',2019,'Cesar',5),('Toy Story 4',2019,'Elliot',2),('Toy Story 4',2019,'Sandra',NULL),('Toy Story 4',2019,'Jake',2),('Toy Story 4',2019,'Alex',2),('Toy Story 4',2019,'Jeannette',3),('Toy Story 4',2019,'Mya',5),('Toy Story 4',2019,'Natalie',5),('Toy Story 4',2019,'Diana',3),('Toy Story 4',2019,'Leslie',4),('Toy Story 4',2019,'Stacy',5),('Toy Story 4',2019,'Ginette',5),('Toy Story 4',2019,'Andres',5),('Toy Story 4',2019,'Cesar',5);
/*!40000 ALTER TABLE `recent_movies_ratings` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
