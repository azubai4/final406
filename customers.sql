-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `LastPurchase` varchar(200) DEFAULT NULL,
  `FirstPurchase` varchar(200) DEFAULT NULL,
  `PhoneNumber` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Andrew','Lapadat','1/11/2023','10/14/2019','(716)-987-0956'),(2,'Joe','Johnson','05/04/2020','12/10/2019','123-456-7890'),(5,'Josh','Allen','05/06/2023','12/29/2019','(716)-345-0936'),(6,'Elizabeth','Green','05/01/2023','03/10/2020','(716)-260-0614'),(7,'John','Doe','05/07/2023','05/15/2021','(585)-123-4567'),(8,'John','Allen','05/07/2023','06/02/2021','(678)-123-4567'),(9,'Samuel','Ettie','05/02/2023','07/10/2021','(716)-260-0764'),(10,'Layton','Petal','04/23/2023','08/14/2021','(716)-367-0254'),(11,'Letha','Bowen','05/04/2023','08/22/2021','(585)-749-0632'),(12,'April','Meriwether','04/21/2023','08/29/2021','(716)-264-0965'),(13,'Nydia','Mickey','03/22/2023','10/14/2021','(384)-976-2765'),(14,'Janine','Nicholas','04/10/2023','01/02/2022','(716)-865-2896'),(15,'Nicholas','Sandford','05/03/2023','02/02/2022','(716)-982-3489'),(16,'Kerri','Braxton','05/01/2023','03/01/2022','(901)-236-8862');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-07 17:35:38
