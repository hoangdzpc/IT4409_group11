-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: web_store_test
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(155) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` longtext,
  `price` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `vendor_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_vendor1` (`vendor_id`),
  KEY `fk_product_category1` (`category_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_vendor1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Apple iPhone 13 Pro Max 128GB Vàng',' apple_iPhone_13_Pro_Max ','Đường chéo màn hình 6,7\", Độ phân giải màn hình 2778x128478х1284',44999,'284924180.jpg',1,1),(2,'Samsung Galaxy S9','samsung_Galaxy_S9',NULL,9000,'samsung_galaxy_s9.png',2,1),(3,'Áo choàng dài của phụ nữ','ao_choang_nu',NULL,560,'photo_2021-11-05_20-53-27.jpg',3,2),(4,'Tivi LG','LG_55qauhd ',NULL,800,'237518843.jpg',4,3),(5,'Tivi Samsung QE50Q60AAUXUA','tivi_ss_QE50','Màn hình chéo 50\", hỗ trợ Smart TV, Độ phân giải 3840x2160',23999,'279813767.jpg',2,3),(6,'Tivi LG 43UP81006LA','tivi_LG_43UP','Màn hình chéo 43\", hỗ trợ Smart TV, Độ phân giải 3840x2160',18999,'240234430.jpg',4,3),(7,'Tivi LG 50UP77006LB','tivi_LG_50UP','Màn hình chéo 50\", hỗ trợ Smart TV, Độ phân giải 3840x2160',17999,'237519282.jpg',4,3),(8,'Tivi Samsung UE58AU7100UXUA','tivi_samsung_UE58','Màn hình chéo 58\", hỗ trợ Smart TV, Độ phân giải 3840x2160',19500,'181479242.jpg',2,3),(9,'Điện thoại Apple iPhone 12 mini 128GB Xanh','apple_iPhone_12_mini_xanh','Màn hình (5.4\", OLED (Super Retina XDR), 2340x1080',24199,'284920851.jpg',1,1),(10,'Điện thoại Samsung Galaxy M52 5G 6/128GB Đen','Samsung_M52','Màn hình (6,7\", Super AMOLED Plus, 2400x1080) / Qualcomm Snapdragon 778G',12999,'samsung_galaxy_m52.png',2,1),(11,'Đánh bóng áo choàng nam 50-60','ao_choang_nam','Size 50-60, Màu sắc, bardot, đỏ',600,'img_5018.jpg',3,2),(14,'iphone 16','apple_iphone_16','<div><table><tbody><tr><td>Đường chéo màn hình 6,7\", Độ phân giải màn hình 2778x128478х1284</td></tr></tbody></table></div>',5,'152740976.jpg',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-12 12:57:26
