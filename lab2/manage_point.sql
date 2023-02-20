-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: QuanLyDiem
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `tbl_diemThi`
--

DROP TABLE IF EXISTS `tbl_diemThi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_diemThi` (
  `diemLan1` float NOT NULL,
  `diemLan2` float NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `maSV` int NOT NULL,
  `maMonHoc` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `maSV_idx` (`maSV`),
  KEY `maMonHoc_idx` (`maMonHoc`),
  CONSTRAINT `maMonHoc` FOREIGN KEY (`maMonHoc`) REFERENCES `tbl_monhoc` (`maMonHoc`),
  CONSTRAINT `maSV` FOREIGN KEY (`maSV`) REFERENCES `tbl_sinhVien` (`maSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_diemThi`
--

LOCK TABLES `tbl_diemThi` WRITE;
/*!40000 ALTER TABLE `tbl_diemThi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_diemThi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_monhoc`
--

DROP TABLE IF EXISTS `tbl_monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_monhoc` (
  `maMonHoc` int NOT NULL AUTO_INCREMENT,
  `tenMonHoc` varchar(45) NOT NULL,
  `soDVHT` varchar(45) NOT NULL,
  PRIMARY KEY (`maMonHoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_monhoc`
--

LOCK TABLES `tbl_monhoc` WRITE;
/*!40000 ALTER TABLE `tbl_monhoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sinhVien`
--

DROP TABLE IF EXISTS `tbl_sinhVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sinhVien` (
  `maSV` int NOT NULL AUTO_INCREMENT,
  `hoDem` varchar(45) NOT NULL,
  `ten` varchar(45) NOT NULL,
  `ngaySinh` date NOT NULL,
  `gioiTinh` double NOT NULL,
  `noiSinh` varchar(45) NOT NULL,
  `maLop` varchar(45) NOT NULL,
  PRIMARY KEY (`maSV`),
  UNIQUE KEY `maSV_UNIQUE` (`maSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sinhVien`
--

LOCK TABLES `tbl_sinhVien` WRITE;
/*!40000 ALTER TABLE `tbl_sinhVien` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sinhVien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-20 23:09:59
