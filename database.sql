-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_management_room
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `userName` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `Phoneno` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('jui','jui@gmail.com','01641851081','Female','7110eda4d09e62aa5e4a390b0a572acd2c220'),('ekaram','ekaram@gmail.com','01643003269','Male','7110eda4d09e62aa5e4a390b0a572acd2c220');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `roomNo` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `idProof` varchar(20) DEFAULT NULL,
  `idNumber` varchar(20) DEFAULT NULL,
  `emailId` varchar(40) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `kids` int DEFAULT NULL,
  `submittedMoney` int DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `citizen` varchar(250) DEFAULT NULL,
  `checkin` varchar(255) DEFAULT NULL,
  `nightStay` int DEFAULT NULL,
  `meal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1','Luxury Room',56000,'Jui','Akter','Voter ID','1508491573','jui@gmail.com','0164300586978',2,1,8000,'Tangail','Other','Thu Mar 13 21:24:46 GMT+06:00 2025',7,'Veg'),('2','AC Room',18000,'Nokshi','Akter','Voter ID','124578987','nokshi@gmail.com','0156789324',2,1,6000,'Dhaka','Other','Thu Mar 13 21:27:14 GMT+06:00 2025',3,'Veg'),('3','N-AC Room',4000,'Joybayda','Juthi','Voter ID','41699999','juthi@gmail.com','015897685824',1,1,4000,'Gazipur','Other','Thu Mar 13 21:40:55 GMT+06:00 2025',1,'Veg'),('6','Luxury Room',7000,'Md. Ekaram','Hossen','Voter ID','1508491543','ekaram@gmail.com','01643003269',1,0,7000,'Dhaka','Indian','Wed Mar 19 23:40:31 GMT+06:00 2025',1,'Veg');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `fatherName` varchar(40) DEFAULT NULL,
  `emailId` varchar(40) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `idProof` varchar(20) DEFAULT NULL,
  `idNumber` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `work` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `permanent` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `nightDuty` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `foodName` varchar(40) DEFAULT NULL,
  `foodPrice` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `no` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `available` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('1','Luxury Room',8000,'No'),('2','AC Room',6000,'No'),('3','N-AC Room',4000,'No'),('4','Classic Room',3000,'Yes'),('5','AC Room',5800,'Yes'),('6','Luxury Room',7000,'No');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 23:57:36
