-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: heritage_vault_final
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `artefacts`
--

DROP TABLE IF EXISTS `artefacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artefacts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `period` varchar(100) DEFAULT NULL,
  `iconography` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `item_condition` varchar(100) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `is_displayed` tinyint(1) DEFAULT '1',
  `is_digitised` tinyint(1) DEFAULT '0',
  `dynasty_id` int DEFAULT NULL,
  `material_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` bigint DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `deity_id` int DEFAULT NULL,
  `deity` varchar(255) DEFAULT NULL,
  `dynasty` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `idx_artefacts_dynasty` (`dynasty_id`),
  KEY `idx_artefacts_material` (`material_id`),
  KEY `idx_artefacts_region` (`region_id`),
  KEY `fk_deity` (`deity_id`),
  CONSTRAINT `artefacts_ibfk_1` FOREIGN KEY (`dynasty_id`) REFERENCES `dynasty` (`dynasty_id`) ON DELETE SET NULL,
  CONSTRAINT `artefacts_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `material` (`material_id`) ON DELETE SET NULL,
  CONSTRAINT `artefacts_ibfk_3` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE SET NULL,
  CONSTRAINT `artefacts_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_deity` FOREIGN KEY (`deity_id`) REFERENCES `deity` (`deity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artefacts`
--

LOCK TABLES `artefacts` WRITE;
/*!40000 ALTER TABLE `artefacts` DISABLE KEYS */;
INSERT INTO `artefacts` VALUES (1,'Dancing Girl','Sculpture','2500 BCE',NULL,'Iconic Indus Valley bronze','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776105390/Screenshot_2026-04-14_000600_ee3j53.png',1,0,6,1,10,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(2,'Didarganj Yakshi','Sculpture','3rd Century BCE',NULL,'Polished sandstone figure','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776105501/Screenshot_2026-04-14_000751_sejz3y.png',1,0,1,2,2,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(3,'Nataraja Shiva','Sculpture','11th Century CE',NULL,'Chola cosmic dance','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776105657/Screenshot_2026-04-14_001033_wpzdp2.png',1,0,3,1,1,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,1,NULL,NULL,NULL),(4,'Ashokan Capital','Sculpture','250 BCE',NULL,'Sarnath Lion pillar head','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776091263/Screenshot_2026-04-13_201036_cklu0c.png',1,0,1,2,3,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(5,'Fasting Buddha','Sculpture','2nd Century CE',NULL,'Gandhara school masterpiece','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776091482/Screenshot_2026-04-13_201422_eictng.png',1,0,6,2,3,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,8,NULL,NULL,NULL),(6,'Varaha Rescue','Relief','5th Century CE',NULL,'Udayagiri cave carving','Fair','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776092000/Screenshot_2026-04-13_202216_iboix9.png',1,0,2,2,5,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,2,NULL,NULL,NULL),(7,'Gommateshwara','Monolith','10th Century CE',NULL,'Shravanabelagola statue','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776092817/Screenshot_2026-04-13_203633_jkyezm.png',1,0,7,2,6,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,8,NULL,NULL,NULL),(8,'Sun God Surya','Sculpture','13th Century CE',NULL,'Konark temple carving','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776104057/Screenshot_2026-04-13_234321_vboqpi.png',1,0,9,2,7,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,6,NULL,NULL,NULL),(9,'Saraswati','Sculpture','12th Century CE',NULL,'Intricate Hoysala stone','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776104255/Screenshot_2026-04-13_234702_cuoben.png',1,0,8,2,6,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,7,NULL,NULL,NULL),(10,'Trimurti','Rock-cut','6th Century CE',NULL,'Elephanta Caves sculpture','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776096719/Screenshot_2026-04-13_214120_lz1utw.png',1,0,10,2,8,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,1,NULL,NULL,NULL),(11,'Mughal Mohur','Coin','17th Century CE',NULL,'Gold coin of Jahangir','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776104439/Screenshot_2026-04-13_235011_jqz06t.png',1,0,5,4,9,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(12,'Terracotta Plaque','Relief','8th Century CE',NULL,'Pala Buddhist art','Fragile','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776097129/Screenshot_2026-04-13_214832_up3ar0.png',0,0,9,3,2,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,8,NULL,NULL,NULL),(13,'Lakshmi Idol','Sculpture','10th Century CE',NULL,'Bronze Chola Lakshmi','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776104645/Screenshot_2026-04-13_235341_wylis2.png',1,0,3,1,1,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,3,NULL,NULL,NULL),(14,'Silver Rupee','Coin','16th Century CE',NULL,'Sher Shah Suri currency','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776097422/Screenshot_2026-04-13_215313_f1zlot.png',1,0,5,5,9,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(15,'Ivory Ganesha','Sculpture','18th Century CE',NULL,'Late Mughal ivory work','Fragile','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776097977/Screenshot_2026-04-13_220229_ufnkrf.png',0,0,5,7,4,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,5,NULL,NULL,NULL),(16,'Temple Panel','Relief','15th Century CE',NULL,'Vijayanagara war scene','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776105234/Screenshot_2026-04-14_000307_qs51wi.png',1,0,7,2,6,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(17,'Kushan Seated Buddha','Sculpture','1st Century CE',NULL,'Mathura style Red Sandstone','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776105033/Screenshot_2026-04-13_235959_qu2ub5.png',1,0,6,2,3,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,8,NULL,NULL,NULL),(18,'Chola Queen','Sculpture','12th Century CE',NULL,'Portrait bronze','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776104869/Screenshot_2026-04-13_235727_pt4sae.png',1,0,3,1,1,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(19,'Bull Seal','Seal','2500 BCE',NULL,'Steatite Harappan seal','Fair','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776098395/Screenshot_2026-04-13_220929_nl53sz.png',1,0,6,2,10,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(20,'Shalabhanjika','Sculpture','11th Century CE',NULL,'Celestial dancer','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776098782/Screenshot_2026-04-13_221542_x0h2hy.png',1,0,10,2,5,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,NULL,NULL,NULL,NULL),(21,'Krishna Govardhana','Sculpture','5th Century CE',NULL,'Gupta period stone carving of Krishna lifting Mount Govardhan.','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776243495/Screenshot_2026-04-15_142726_usqgvq.png',1,0,2,2,3,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,2,NULL,NULL,NULL),(22,'Venugopala Bronze','Sculpture','12th Century CE',NULL,'Chola bronze of Krishna playing the flute (Venugopala).','Excellent','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776243620/Screenshot_2026-04-15_143000_p8nfno.png',1,0,3,1,1,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,2,NULL,NULL,NULL),(23,'Kaliya Mardana','Sculpture','10th Century CE',NULL,'Bronze idol depicting Krishna subduing the serpent Kaliya.','Good','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776243821/Screenshot_2026-04-15_143322_j1siyd.png',1,0,3,1,1,'2026-04-18 01:27:24','2026-04-18 01:27:24',1,NULL,2,NULL,NULL,NULL),(24,'Krishna Idol','Sculpture','15th century',NULL,'Bronze idol from Vrindavan',NULL,NULL,0,0,NULL,NULL,NULL,'2026-04-26 14:50:17','2026-04-26 14:50:17',7,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `artefacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deity`
--

DROP TABLE IF EXISTS `deity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deity` (
  `deity_id` int NOT NULL AUTO_INCREMENT,
  `deity_name` varchar(100) NOT NULL,
  `religion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`deity_id`),
  UNIQUE KEY `deity_name` (`deity_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deity`
--

LOCK TABLES `deity` WRITE;
/*!40000 ALTER TABLE `deity` DISABLE KEYS */;
INSERT INTO `deity` VALUES (1,'Shiva','Hinduism'),(2,'Vishnu','Hinduism'),(3,'Lakshmi','Hinduism'),(4,'Durga','Hinduism'),(5,'Ganesha','Hinduism'),(6,'Surya','Hinduism'),(7,'Saraswati','Hinduism'),(8,'Buddha','Buddhism'),(9,'Varaha','Hinduism'),(10,'Krishna','Hinduism');
/*!40000 ALTER TABLE `deity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynasty`
--

DROP TABLE IF EXISTS `dynasty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynasty` (
  `dynasty_id` int NOT NULL AUTO_INCREMENT,
  `dynasty_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dynasty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynasty`
--

LOCK TABLES `dynasty` WRITE;
/*!40000 ALTER TABLE `dynasty` DISABLE KEYS */;
INSERT INTO `dynasty` VALUES (1,'Maurya'),(2,'Gupta'),(3,'Chola'),(4,'Pallava'),(5,'Mughal'),(6,'Kushan'),(7,'Vijayanagara'),(8,'Hoysala'),(9,'Pala'),(10,'Rashtrakuta');
/*!40000 ALTER TABLE `dynasty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folios`
--

DROP TABLE IF EXISTS `folios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `manuscript_id` bigint NOT NULL,
  `folio_number` varchar(50) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `transcription` text,
  `item_condition` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `transcribed_text` varchar(10000) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `deity_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folios_manuscript` (`manuscript_id`),
  KEY `fk_folio_deity` (`deity_id`),
  CONSTRAINT `fk_folio_deity` FOREIGN KEY (`deity_id`) REFERENCES `deity` (`deity_id`) ON DELETE SET NULL,
  CONSTRAINT `folios_ibfk_1` FOREIGN KEY (`manuscript_id`) REFERENCES `manuscripts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folios`
--

LOCK TABLES `folios` WRITE;
/*!40000 ALTER TABLE `folios` DISABLE KEYS */;
INSERT INTO `folios` VALUES (1,1,'Folio 1a','https://picsum.photos/id/30/400/600','Agnimile purohitam... Vedic hymn to Agni.','Excellent','2026-04-15 01:08:50.000000','Vedic hymn dedicated to the fire god Agni.','Vedic',NULL,'2026-04-15 01:08:50.000000',1),(2,1,'Folio 1b','https://picsum.photos/id/31/400/600','Agnimile purohitam... Vedic hymn to Agni.','Excellent','2026-04-15 01:08:50.000000','Vedic hymn dedicated to the fire god Agni.','Vedic',NULL,'2026-04-15 01:08:50.000000',1),(3,2,'Chapter 1.1','https://picsum.photos/id/32/400/600','Dharmakshetre Kurukshetre... Dedicated to Krishna.','Good','2026-04-15 01:08:50.000000','Philosophical discourse between Krishna and Arjuna.','Philosophical',NULL,'2026-04-15 01:08:50.000000',2),(4,3,'Folio 5','https://picsum.photos/id/33/400/600','Rules of Treasury...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(5,4,'Frontispiece','https://picsum.photos/id/34/400/600','Royal Court painting description',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(6,5,'Verse 1','https://picsum.photos/id/35/400/600','Pralaya-payodhi-jale...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(7,2,'Chapter 2.1','https://picsum.photos/id/36/400/600','Dharmakshetre Kurukshetre... Dedicated to Krishna.','Good','2026-04-15 01:08:50.000000','Philosophical discourse between Krishna and Arjuna.','Philosophical',NULL,'2026-04-15 01:08:50.000000',2),(8,1,'Folio 2a','https://picsum.photos/id/37/400/600','Sa devan eha vakshati...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(9,6,'Bala Kanda 1.1',NULL,'Tapah-svadhyaya-niratam...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(10,7,'Sutra Sthana 1',NULL,'Athato vedotpattim adhyayam...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(11,8,'Folio 1',NULL,'In the month of Ramadan in the year 899...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(12,9,'Sutra 1.1.1',NULL,'Vriddhiradaich...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(13,10,'Jinacharitra Folio 1',NULL,'Namo Arihantanam...',NULL,'2026-04-15 01:08:50.000000','Manuscript folio containing historical text and transcriptions.',NULL,NULL,'2026-04-15 01:08:50.000000',NULL),(14,11,'Skanda 10.1',NULL,'Shri Shukovacha: The birth of Krishna in Mathura...','Excellent',NULL,'Folio depicting the birth of Krishna.','Mythological',NULL,NULL,2),(15,11,'Skanda 10.33',NULL,'Rasa-lila descriptions in Vrindavan...','Good',NULL,'Description of the divine Rasa dance.','Philosophical',NULL,NULL,2),(16,5,'Verse 12',NULL,'Radha-Krishna union in the groves of Vraja.','Excellent',NULL,'Lyric poetry on the love of Krishna.','Devotional',NULL,NULL,2),(18,1,'Folio 1a','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776160364/Screenshot_2026-04-14_152214_xk5n7l.png','Agnimile purohitam...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,1,'Folio 1b','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776160504/Screenshot_2026-04-14_152447_qgl08b.png','Yajnasya devam...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,2,'Chapter 1.1','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776160630/Screenshot_2026-04-14_152646_f80qs7.png','Dharmakshetre Kurukshetre...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,'Folio 5','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776158223/Screenshot_2026-04-14_144635_g8thzp.png','Rules of Treasury...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,4,'Frontispiece','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776160911/Screenshot_2026-04-14_153041_fopzn6.png','Royal Court painting description',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,5,'Verse 1','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776161398/Screenshot_2026-04-14_153930_kw5rqm.png','Pralaya-payodhi-jale...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,2,'Chapter 2.1','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776160999/Screenshot_2026-04-14_153302_odneuo.png','Sanjaya Uvacha...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,'Folio 2a','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776160364/Screenshot_2026-04-14_152214_xk5n7l.png','Sa devan eha vakshati...',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `folios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manuscripts`
--

DROP TABLE IF EXISTS `manuscripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manuscripts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `accession_number` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `script` varchar(100) DEFAULT NULL,
  `material_id` int DEFAULT NULL,
  `total_folios` int DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint DEFAULT NULL,
  `archive_url` varchar(500) DEFAULT NULL,
  `item_condition` varchar(255) DEFAULT NULL,
  `deity` varchar(255) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `is_digitised` bit(1) DEFAULT NULL,
  `manuscript_language` varchar(255) DEFAULT NULL,
  `time_period` varchar(255) DEFAULT NULL,
  `place_of_composition` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accession_number` (`accession_number`),
  KEY `material_id` (`material_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `manuscripts_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`material_id`) ON DELETE SET NULL,
  CONSTRAINT `manuscripts_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manuscripts`
--

LOCK TABLES `manuscripts` WRITE;
/*!40000 ALTER TABLE `manuscripts` DISABLE KEYS */;
INSERT INTO `manuscripts` VALUES (1,'Rigveda Samhita','MS-001','Sanskrit','Devanagari',10,150,'Ancient Rishis','Earliest Vedic text','2026-04-13 19:23:18',1,NULL,'Excellent','Agni','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776158261/Screenshot_2026-04-14_144727_kzitb4.png',NULL,'Sanskrit','Ancient',NULL,'Vedic',NULL),(2,'Bhagavad Gita','MS-002','Sanskrit','Devanagari',8,70,'Vyasa','Sacred dialogue','2026-04-13 19:23:18',1,NULL,'Excellent','Krishna','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776158802/Screenshot_2026-04-14_145619_ffxomg.png',NULL,'Sanskrit','Ancient',NULL,'Philosophical',NULL),(3,'Arthashastra','MS-003','Sanskrit','Brahmi',8,120,'Chanakya','Treatise on statecraft','2026-04-13 19:23:18',1,NULL,'Excellent','None (Secular)','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776158929/Screenshot_2026-04-14_145833_h3nsrh.png',NULL,'Sanskrit','Ancient',NULL,'Governance',NULL),(4,'Akbarnama','MS-004','Persian','Nastaliq',9,300,'Abul Fazl','History of Akbar','2026-04-13 19:23:18',1,NULL,'Excellent','None (Historical)','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776159215/Screenshot_2026-04-14_150246_ym3ovk.png',NULL,'Persian','Mughal',NULL,'Historical',NULL),(5,'Gita Govinda','MS-005','Sanskrit','Odia',8,45,'Jayadeva','Poetry on Krishna','2026-04-13 19:23:18',1,NULL,'Excellent','Krishna','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776159295/Screenshot_2026-04-14_150442_lllyx8.png',NULL,'Sanskrit','Ancient',NULL,'Devotional',NULL),(6,'Ramayana','MS-006','Sanskrit','Grantha',8,400,'Valmiki','Epic of Rama','2026-04-13 19:23:18',1,NULL,'Excellent','Rama','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776157967/Screenshot_2026-04-14_143938_yehhan.png',NULL,'Sanskrit','Ancient',NULL,'Epic',NULL),(7,'Sushruta Samhita','MS-007','Sanskrit','Devanagari',10,95,'Sushruta','Ancient Surgery Text','2026-04-13 19:23:18',1,NULL,'Excellent','Vishnu','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776158358/Screenshot_2026-04-14_144905_wumxqn.png',NULL,'Sanskrit','Ancient',NULL,'Medical',NULL),(8,'Baburnama','MS-008','Chagatai','Nastaliq',9,210,'Babur','Autobiography','2026-04-13 19:23:18',1,NULL,'Excellent','None (Secular)','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776159360/Screenshot_2026-04-14_150533_o7trqz.png',NULL,'Chagatai','Mughal',NULL,'Autobiography',NULL),(9,'Ashtadhyayi','MS-009','Sanskrit','Brahmi',8,60,'Panini','Grammar treatise','2026-04-13 19:23:18',1,NULL,'Excellent','None (Linguistic)','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776159617/Screenshot_2026-04-14_151000_jajnbg.png',NULL,'Sanskrit','Ancient',NULL,'Linguistic',NULL),(10,'Kalpa Sutra','MS-010','Prakrit','Devanagari',9,110,'Bhadrabahu','Jain sacred text','2026-04-13 19:23:18',1,NULL,'Excellent','Mahavira','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776159719/Screenshot_2026-04-14_151142_fp9kqy.png',NULL,'Prakrit',NULL,NULL,'Religious',NULL),(11,'Bhagavata Purana','MS-011',NULL,'Devanagari',10,500,'Vyasa','Detailed chronicles of the life and avatars of Krishna.','2026-04-15 14:40:39',1,NULL,'Excellent','Krishna','https://res.cloudinary.com/drhsa6xzn/image/upload/v1776244188/Screenshot_2026-04-15_143923_uo21ou.png',NULL,'Sanskrit','Ancient',NULL,'Mythological',NULL);
/*!40000 ALTER TABLE `manuscripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `material_name` varchar(100) NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Bronze'),(2,'Stone'),(3,'Terracotta'),(4,'Gold'),(5,'Silver'),(6,'Copper'),(7,'Ivory'),(8,'Palm Leaf'),(9,'Handmade Paper'),(10,'Birch Bark');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int NOT NULL AUTO_INCREMENT,
  `region_name` varchar(100) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Tamil Nadu'),(2,'Bihar'),(3,'Uttar Pradesh'),(4,'Rajasthan'),(5,'Madhya Pradesh'),(6,'Karnataka'),(7,'Odisha'),(8,'Maharashtra'),(9,'Delhi'),(10,'Gujarat');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semantic_tags`
--

DROP TABLE IF EXISTS `semantic_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semantic_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `manuscript_id` bigint DEFAULT NULL,
  `artefact_id` bigint DEFAULT NULL,
  `relation` varchar(100) NOT NULL,
  `value` varchar(500) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `manuscript_id` (`manuscript_id`),
  KEY `created_by` (`created_by`),
  KEY `idx_semantic_tags_artifact` (`artefact_id`),
  CONSTRAINT `semantic_tags_ibfk_1` FOREIGN KEY (`manuscript_id`) REFERENCES `manuscripts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `semantic_tags_ibfk_2` FOREIGN KEY (`artefact_id`) REFERENCES `artefacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `semantic_tags_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semantic_tags`
--

LOCK TABLES `semantic_tags` WRITE;
/*!40000 ALTER TABLE `semantic_tags` DISABLE KEYS */;
INSERT INTO `semantic_tags` VALUES (1,2,NULL,'refersTo','Krishna','Deity',1,'2026-04-13 19:23:18'),(2,NULL,3,'refersTo','Shiva','Deity',1,'2026-04-13 19:23:18'),(3,5,NULL,'composedIn','Odisha','Place',1,'2026-04-13 19:23:18'),(4,NULL,1,'originatesFrom','Indus Valley','Place',1,'2026-04-13 19:23:18'),(5,1,NULL,'refersTo','Krishna','Deity',1,'2026-04-15 15:05:57'),(6,NULL,22,'represents','Krishna','Deity',1,'2026-04-15 15:24:01'),(7,NULL,1,'originatesFrom','Indus Valley','Place',1,'2026-04-15 18:05:54'),(8,NULL,4,'refersTo','Ashoka','Historical',1,'2026-04-15 18:05:54'),(9,NULL,5,'refersTo','Buddha','Deity',1,'2026-04-15 18:05:54'),(10,NULL,6,'refersTo','Varaha','Deity',1,'2026-04-15 18:05:54'),(11,NULL,8,'refersTo','Surya','Deity',1,'2026-04-15 18:05:54'),(12,NULL,9,'refersTo','Saraswati','Deity',1,'2026-04-15 18:05:54'),(13,NULL,13,'refersTo','Lakshmi','Deity',1,'2026-04-15 18:05:54'),(14,NULL,15,'refersTo','Ganesha','Deity',1,'2026-04-15 18:05:54'),(15,NULL,21,'refersTo','Krishna','Deity',1,'2026-04-15 18:05:54'),(16,NULL,22,'refersTo','Krishna','Deity',1,'2026-04-15 18:05:54'),(17,NULL,23,'refersTo','Krishna','Deity',1,'2026-04-15 18:05:54'),(18,1,NULL,'refersTo','Krishna','deity',7,'2026-04-15 13:39:42');
/*!40000 ALTER TABLE `semantic_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('ROLE_USER','ROLE_ADMIN','ROLE_CURATOR','ROLE_RESEARCHER','ROLE_VISITOR') DEFAULT 'ROLE_VISITOR',
  `fullName` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy','admin@museum.com','ROLE_ADMIN','Museum Admin',1,'2026-04-13 13:53:18','2026-04-13 13:53:18',NULL),(2,'lokesh','$2a$10$AHEwf.4MxN5R7Wi7JuE6pu0r1zQkguD/HnDI3wpfYL4WiK7BFgI5.','lokesh@user.com','ROLE_VISITOR',NULL,1,'2026-04-13 15:07:26','2026-04-13 15:07:26','lokesh User1'),(3,'lokesh1','$2a$10$qO1kc2XmgJNiqivTZMtbiuOtPbJ863vsztG/JZGkoxDwviqzMjlo6','lokesh1@user.com','ROLE_CURATOR',NULL,1,'2026-04-13 15:09:32','2026-04-15 08:17:56','lokesh User1'),(4,'gaurav','$2a$10$nTGAQvipUskfGgpj8Y7B1ejpt2ewN4mk5ilvCv145g872QsYBUPKm','gaurav@user.com','ROLE_VISITOR',NULL,1,'2026-04-14 05:44:39','2026-04-14 05:44:39','gaurav User1'),(6,'gauravtest','$2a$10$jkmFijix4jiNqN1ls7.bcuYo/AsXYlO1eXj5rYpTP9dXVGqxpBl/6','admingauravtest@gmail.com','ROLE_VISITOR',NULL,1,'2026-04-14 06:48:57','2026-04-14 06:48:57','gaurav2 User20'),(7,'admin2','$2a$10$SeUTi8iyjVbHKpQRJvpace2HR1EgYrKoH6JA0BU/OWZznr8QrEAD2','admin2@museum.com','ROLE_ADMIN',NULL,1,'2026-04-15 07:28:37','2026-04-15 07:28:37','Museum Administrator'),(8,'manish01','$2a$10$3/XT.IsE42sXV89ryvEXPOVgErSMk78mXMKXqfpeoc7OH82R6R8qq','manish0111@gmain.com','ROLE_VISITOR',NULL,1,'2026-04-17 11:20:09','2026-04-17 11:20:09','manish');
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

-- Dump completed on 2026-07-21 18:01:40
