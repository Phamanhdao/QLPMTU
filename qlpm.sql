-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: qlpmcnhd
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add medicine',7,'add_medicine'),(26,'Can change medicine',7,'change_medicine'),(27,'Can delete medicine',7,'delete_medicine'),(28,'Can view medicine',7,'view_medicine'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add application',9,'add_application'),(34,'Can change application',9,'change_application'),(35,'Can delete application',9,'delete_application'),(36,'Can view application',9,'view_application'),(37,'Can add access token',10,'add_accesstoken'),(38,'Can change access token',10,'change_accesstoken'),(39,'Can delete access token',10,'delete_accesstoken'),(40,'Can view access token',10,'view_accesstoken'),(41,'Can add grant',11,'add_grant'),(42,'Can change grant',11,'change_grant'),(43,'Can delete grant',11,'delete_grant'),(44,'Can view grant',11,'view_grant'),(45,'Can add refresh token',12,'add_refreshtoken'),(46,'Can change refresh token',12,'change_refreshtoken'),(47,'Can delete refresh token',12,'delete_refreshtoken'),(48,'Can view refresh token',12,'view_refreshtoken'),(49,'Can add id token',13,'add_idtoken'),(50,'Can change id token',13,'change_idtoken'),(51,'Can delete id token',13,'delete_idtoken'),(52,'Can view id token',13,'view_idtoken'),(53,'Can add case_ record',14,'add_case_record'),(54,'Can change case_ record',14,'change_case_record'),(55,'Can delete case_ record',14,'delete_case_record'),(56,'Can view case_ record',14,'view_case_record'),(57,'Can add medical_ examination',15,'add_medical_examination'),(58,'Can change medical_ examination',15,'change_medical_examination'),(59,'Can delete medical_ examination',15,'delete_medical_examination'),(60,'Can view medical_ examination',15,'view_medical_examination'),(61,'Can add duty',16,'add_duty'),(62,'Can change duty',16,'change_duty'),(63,'Can delete duty',16,'delete_duty'),(64,'Can view duty',16,'view_duty'),(65,'Can add user_ role',17,'add_user_role'),(66,'Can change user_ role',17,'change_user_role'),(67,'Can delete user_ role',17,'delete_user_role'),(68,'Can view user_ role',17,'view_user_role'),(69,'Can add bill',18,'add_bill'),(70,'Can change bill',18,'change_bill'),(71,'Can delete bill',18,'delete_bill'),(72,'Can view bill',18,'view_bill'),(73,'Can add prescription',19,'add_prescription'),(74,'Can change prescription',19,'change_prescription'),(75,'Can delete prescription',19,'delete_prescription'),(76,'Can view prescription',19,'view_prescription'),(77,'Can add prescription_ detail',20,'add_prescription_detail'),(78,'Can change prescription_ detail',20,'change_prescription_detail'),(79,'Can delete prescription_ detail',20,'delete_prescription_detail'),(80,'Can view prescription_ detail',20,'view_prescription_detail'),(81,'Can add medical_ expenses',21,'add_medical_expenses'),(82,'Can change medical_ expenses',21,'change_medical_expenses'),(83,'Can delete medical_ expenses',21,'delete_medical_expenses'),(84,'Can view medical_ expenses',21,'view_medical_expenses'),(85,'Can add duty_ details',22,'add_duty_details'),(86,'Can change duty_ details',22,'change_duty_details'),(87,'Can delete duty_ details',22,'delete_duty_details'),(88,'Can view duty_ details',22,'view_duty_details');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_phongmach_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_phongmach_user_id` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-12-20 07:24:43.506208','4','Candid TV(60ml)',1,'[{\"added\": {}}]',7,1),(2,'2021-12-20 07:26:38.816532','5','Thuốc cơ xương khớp',1,'[{\"added\": {}}]',6,1),(3,'2021-12-20 07:27:00.927395','6','Thuốc hệ hô hấp',1,'[{\"added\": {}}]',6,1),(4,'2021-12-20 07:30:09.564605','6','Thuốc hệ hô hấp cấp tính',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',6,1),(5,'2021-12-20 07:33:08.162798','5','a',1,'[{\"added\": {}}]',7,1),(6,'2021-12-20 07:33:33.833807','5','a',3,'',7,1),(7,'2021-12-23 04:33:24.541413','1','doctor_per',1,'[{\"added\": {}}]',3,1),(8,'2021-12-23 04:33:29.081329','1','doctor_per',2,'[]',3,1),(9,'2021-12-23 04:34:37.963026','1','doctor_per',3,'',3,1),(10,'2021-12-23 04:39:09.400367','1','Duty object (1)',1,'[{\"added\": {}}]',16,1),(11,'2021-12-23 04:44:48.743690','1','Duty object (1)',2,'[{\"changed\": {\"fields\": [\"Duty day\"]}}]',16,1),(12,'2021-12-23 04:45:26.904958','1','Duty object (1)',2,'[{\"changed\": {\"fields\": [\"Duty day\"]}}]',16,1),(13,'2021-12-23 04:46:46.505655','2','Duty object (2)',1,'[{\"added\": {}}]',16,1),(14,'2021-12-23 07:56:01.912738','5','nguyentho',1,'[{\"added\": {}}]',8,1),(15,'2021-12-27 04:51:53.763865','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Avatar\", \"User role\"]}}]',8,1),(16,'2021-12-27 05:54:52.744871','2','Duty object (2)',3,'',16,1),(17,'2021-12-27 05:54:52.774544','1','Duty object (1)',3,'',16,1),(18,'2021-12-27 06:09:13.842022','3','Duty object (3)',1,'[{\"added\": {}}]',16,1),(19,'2021-12-27 06:12:28.295430','1','Duty_Details object (1)',1,'[{\"added\": {}}]',22,1),(20,'2021-12-27 06:16:50.228600','1','Duty_Details object (1)',2,'[{\"changed\": {\"fields\": [\"Duty day\"]}}]',22,1),(21,'2021-12-27 06:18:54.853724','3','Tháng 11',1,'[{\"added\": {}}]',22,1),(22,'2021-12-27 06:21:08.378244','3','hoangt11',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',16,1),(23,'2021-12-27 06:38:05.370110','12','anan',1,'[{\"added\": {}}]',8,1),(24,'2021-12-27 06:40:03.661562','13','phuongphuong',1,'[{\"added\": {}}]',8,1),(25,'2021-12-27 06:41:04.899492','4','phuongt12',1,'[{\"added\": {}}]',16,1),(26,'2021-12-27 06:42:34.593678','4','phuongt12',1,'[{\"added\": {}}]',22,1),(27,'2021-12-27 06:42:42.890230','5','phuongt12',1,'[{\"added\": {}}]',22,1),(28,'2021-12-27 07:10:56.131727','5','anan',1,'[{\"added\": {}}, {\"added\": {\"name\": \"duty_ details\", \"object\": \"anan\"}}, {\"added\": {\"name\": \"duty_ details\", \"object\": \"anan\"}}, {\"added\": {\"name\": \"duty_ details\", \"object\": \"anan\"}}, {\"added\": {\"name\": \"duty_ details\", \"object\": \"anan\"}}, {\"added\": {\"name\": \"duty_ details\", \"object\": \"anan\"}}]',16,1),(29,'2021-12-27 08:47:45.942052','15','miphuong',1,'[{\"added\": {}}]',8,1),(30,'2021-12-27 09:11:54.763559','16','trong',1,'[{\"added\": {}}]',8,1),(31,'2021-12-27 09:14:39.803534','17','ami',1,'[{\"added\": {}}]',8,1),(32,'2021-12-28 13:55:10.772436','1','Medical_Examination object (1)',1,'[{\"added\": {}}]',15,1),(33,'2021-12-28 14:03:32.928791','2','Nguyen2 Phuc2',1,'[{\"added\": {}}]',15,1),(34,'2021-12-28 14:04:10.850698','3','Nguyen2 Minh2',1,'[{\"added\": {}}]',15,1),(35,'2021-12-28 14:05:17.683500','3','Nguyen2 Minh2',3,'',15,1),(36,'2021-12-28 14:05:17.712517','2','Nguyen2 Phuc2',3,'',15,1),(37,'2021-12-28 14:05:17.742547','1','Nguyễn Minh',3,'',15,1),(38,'2021-12-28 14:07:50.905481','4','Nguyen2 Phuc2',1,'[{\"added\": {}}]',15,1),(39,'2021-12-28 14:08:54.647285','5','Nguyen tho',1,'[{\"added\": {}}]',15,1),(40,'2021-12-28 14:09:13.365402','6','Nguyen2 Minh2',1,'[{\"added\": {}}]',15,1),(41,'2021-12-28 14:16:21.485817','1','Prescription object (1)',1,'[{\"added\": {}}]',19,1),(42,'2021-12-28 14:16:49.533448','1','Prescription_Detail object (1)',1,'[{\"added\": {}}]',20,1),(43,'2021-12-28 14:20:19.392610','2','Prescription_Detail object (2)',1,'[{\"added\": {}}]',20,1),(44,'2021-12-28 14:22:38.172006','2','Prescription_Detail object (2)',3,'',20,1),(45,'2021-12-28 14:22:38.214005','1','Prescription_Detail object (1)',3,'',20,1),(46,'2021-12-29 23:57:25.538582','2','Prescription object (2)',1,'[{\"added\": {}}]',19,1),(47,'2021-12-29 23:57:55.058506','3','Prescription object (3)',1,'[{\"added\": {}}]',19,1),(48,'2021-12-29 23:58:39.530432','3','Prescription_Detail object (3)',1,'[{\"added\": {}}]',20,1),(49,'2021-12-29 23:58:55.634077','4','Prescription_Detail object (4)',1,'[{\"added\": {}}]',20,1),(50,'2021-12-29 23:59:10.831274','5','Prescription_Detail object (5)',1,'[{\"added\": {}}]',20,1),(51,'2021-12-29 23:59:26.879024','6','Prescription_Detail object (6)',1,'[{\"added\": {}}]',20,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(10,'oauth2_provider','accesstoken'),(9,'oauth2_provider','application'),(11,'oauth2_provider','grant'),(13,'oauth2_provider','idtoken'),(12,'oauth2_provider','refreshtoken'),(18,'phongmach','bill'),(14,'phongmach','case_record'),(6,'phongmach','category'),(16,'phongmach','duty'),(22,'phongmach','duty_details'),(15,'phongmach','medical_examination'),(21,'phongmach','medical_expenses'),(7,'phongmach','medicine'),(19,'phongmach','prescription'),(20,'phongmach','prescription_detail'),(8,'phongmach','user'),(17,'phongmach','user_role'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-17 07:08:31.527780'),(2,'contenttypes','0002_remove_content_type_name','2021-12-17 07:08:31.754007'),(3,'auth','0001_initial','2021-12-17 07:08:32.334107'),(4,'auth','0002_alter_permission_name_max_length','2021-12-17 07:08:32.521390'),(5,'auth','0003_alter_user_email_max_length','2021-12-17 07:08:32.543887'),(6,'auth','0004_alter_user_username_opts','2021-12-17 07:08:32.563517'),(7,'auth','0005_alter_user_last_login_null','2021-12-17 07:08:32.595809'),(8,'auth','0006_require_contenttypes_0002','2021-12-17 07:08:32.611317'),(9,'auth','0007_alter_validators_add_error_messages','2021-12-17 07:08:32.630335'),(10,'auth','0008_alter_user_username_max_length','2021-12-17 07:08:32.644342'),(11,'auth','0009_alter_user_last_name_max_length','2021-12-17 07:08:32.660937'),(12,'auth','0010_alter_group_name_max_length','2021-12-17 07:08:32.692075'),(13,'auth','0011_update_proxy_permissions','2021-12-17 07:08:32.707714'),(14,'auth','0012_alter_user_first_name_max_length','2021-12-17 07:08:32.722730'),(15,'phongmach','0001_initial','2021-12-17 07:08:33.877472'),(16,'admin','0001_initial','2021-12-17 07:08:34.708252'),(17,'admin','0002_logentry_remove_auto_add','2021-12-17 07:08:34.738229'),(18,'admin','0003_logentry_add_action_flag_choices','2021-12-17 07:08:34.757373'),(19,'sessions','0001_initial','2021-12-17 07:08:34.837528'),(20,'phongmach','0002_medicine_unit_price_medicine','2021-12-17 08:15:32.040468'),(21,'phongmach','0003_alter_medicine_unit_price_medicine','2021-12-17 08:49:26.304347'),(22,'phongmach','0004_alter_category_options_alter_medicine_name','2021-12-20 02:18:43.756336'),(23,'phongmach','0005_alter_category_options','2021-12-20 03:18:27.904493'),(24,'phongmach','0006_alter_user_avatar','2021-12-20 08:16:57.021675'),(25,'oauth2_provider','0001_initial','2021-12-22 02:43:45.984937'),(26,'oauth2_provider','0002_auto_20190406_1805','2021-12-22 02:43:46.176467'),(27,'oauth2_provider','0003_auto_20201211_1314','2021-12-22 02:43:46.681732'),(28,'oauth2_provider','0004_auto_20200902_2022','2021-12-22 02:43:48.123820'),(29,'phongmach','0007_case_record_duty_medical_examination','2021-12-22 11:26:43.103866'),(30,'phongmach','0008_auto_20211223_1035','2021-12-23 03:35:46.879988'),(31,'phongmach','0009_auto_20211223_1040','2021-12-23 03:40:52.202358'),(32,'phongmach','0010_auto_20211223_1104','2021-12-25 14:49:04.941738'),(33,'phongmach','0011_auto_20211225_2129','2021-12-25 14:49:04.953416'),(34,'phongmach','0012_auto_20211225_2157','2021-12-25 15:01:00.247010'),(35,'phongmach','0013_bill_prescription_prescription_detail','2021-12-25 15:02:14.430572'),(36,'phongmach','0014_auto_20211227_1152','2021-12-27 04:52:56.762811'),(37,'phongmach','0015_auto_20211227_1250','2021-12-27 05:51:17.095752'),(38,'phongmach','0016_duty_name','2021-12-27 05:53:45.930988'),(39,'phongmach','0017_rename_duty_duty_details_duty','2021-12-27 06:25:14.344246'),(40,'phongmach','0018_auto_20211227_1445','2021-12-27 07:45:28.213314'),(41,'phongmach','0019_auto_20211228_1912','2021-12-28 12:13:04.168603'),(42,'phongmach','0020_alter_prescription_detail_name_medicine','2021-12-28 12:15:02.833355'),(43,'phongmach','0021_remove_medical_examination_active','2021-12-28 12:29:41.472241'),(44,'phongmach','0022_alter_bill_medical_expenses','2021-12-28 12:33:07.728417'),(45,'phongmach','0023_auto_20211228_1941','2021-12-28 12:42:09.075071'),(46,'phongmach','0024_auto_20211228_1951','2021-12-28 12:51:13.093397'),(47,'phongmach','0025_rename_name_case_record_diagnose','2021-12-28 12:53:15.632392'),(48,'phongmach','0026_remove_prescription_total_money','2021-12-28 13:06:40.972823'),(49,'phongmach','0027_auto_20211228_2017','2021-12-28 13:21:52.030569'),(50,'phongmach','0028_remove_prescription_created_date','2021-12-28 13:27:09.790650'),(51,'phongmach','0029_prescription_created_date','2021-12-28 13:33:19.550042'),(52,'phongmach','0030_case_record','2021-12-28 13:35:35.826220'),(53,'phongmach','0031_delete_case_record','2021-12-28 13:37:37.721645'),(54,'phongmach','0032_auto_20211228_2039','2021-12-28 13:40:13.429531'),(55,'phongmach','0033_case_record','2021-12-28 13:41:54.939973'),(56,'phongmach','0034_delete_case_record','2021-12-28 13:42:29.477106'),(57,'phongmach','0035_bill_prescription_prescription_detail','2021-12-28 13:43:48.598857'),(58,'phongmach','0036_alter_medical_examination_register_date','2021-12-28 14:07:09.876473'),(59,'phongmach','0037_remove_prescription_detail_unit_price','2021-12-28 14:24:44.262646');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('vddn13qwal68du8plybpla63s4vum78i','.eJxVjMsOwiAQRf-FtSE8WgZcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou39gkIgIsj75QdLHjvggUeFCk_8oielAONNidTWIMKOlE2xVkMznAR7w_JxjeG:1n2C3W:bx29k09n1AYqjMiCo_H9tMYxKfY3OeyBIGeVNvd6Ko0','2022-01-11 12:58:18.025279');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_phongmach` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_phongmach` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'zrkyDUdQtQpbG2y8WPzTeJTBhLOL1v','2021-12-22 13:03:42.403988','read write',1,1,'2021-12-22 03:03:42.405013','2021-12-22 03:03:42.405013',NULL,NULL),(2,'NwFT75Ig9WNYlxeFChsEL7lcKySzBx','2021-12-25 17:23:24.170894','read write',1,11,'2021-12-25 07:23:24.171893','2021-12-25 07:23:24.171893',NULL,NULL),(3,'vKA6yr3HTLGof5gikGPuOUDIbTatI6','2021-12-25 17:37:27.193186','read write',1,8,'2021-12-25 07:37:27.193186','2021-12-25 07:37:27.193186',NULL,NULL),(4,'LqLwYpZTEm5oQq8v7swllDfM6XNUHh','2021-12-25 19:22:20.121829','read write',1,11,'2021-12-25 09:22:20.122830','2021-12-25 09:22:20.122830',NULL,NULL),(5,'qxzsUIvAgSevpfm3FTOhvjLDlz8iLI','2021-12-25 22:48:10.456626','read write',1,1,'2021-12-25 12:48:10.456626','2021-12-25 12:48:10.456626',NULL,NULL),(6,'Co13o4Y6XKKYiH0Tzoqo5FDJAyQtz2','2021-12-25 22:55:17.960747','read write',1,11,'2021-12-25 12:55:17.960747','2021-12-25 12:55:17.960747',NULL,NULL),(7,'kE3mlkoXL7PmQA2GpD3PluZEBsVmn5','2021-12-25 22:55:19.197970','read write',1,11,'2021-12-25 12:55:19.197970','2021-12-25 12:55:19.197970',NULL,NULL),(8,'1WWtlt4JtTONUgszvNO9U8bKTNXMlK','2021-12-25 23:27:09.697067','read write',1,1,'2021-12-25 13:27:09.697067','2021-12-25 13:27:09.697067',NULL,NULL),(9,'PRUF1RqFFlT8eAn4lw7x113XmpIYwQ','2021-12-25 23:27:39.181178','read write',1,11,'2021-12-25 13:27:39.181178','2021-12-25 13:27:39.181178',NULL,NULL),(10,'ZuhL6XaY8dWi7PHuU1m2AyZIRCn83H','2021-12-25 23:28:57.424216','read write',1,8,'2021-12-25 13:28:57.424216','2021-12-25 13:28:57.424216',NULL,NULL),(11,'ClVLUBpxQYAokuBXFcKVhTN3q6dkpY','2021-12-25 23:31:22.630150','read write',1,1,'2021-12-25 13:31:22.630150','2021-12-25 13:31:22.631154',NULL,NULL),(12,'9gX3NXzv5faDJivwR5Wxgiw8IyroKJ','2021-12-27 19:24:50.137878','read write',1,1,'2021-12-27 09:24:50.137878','2021-12-27 09:24:50.137878',NULL,NULL),(13,'8ynB8lOw5EucmcAs1Zbpx88iHzV84g','2021-12-27 19:31:08.639463','read write',1,17,'2021-12-27 09:31:08.639463','2021-12-27 09:31:08.639463',NULL,NULL),(14,'KU65V9flRu7cHfSyQaKJycXkP0L7d3','2021-12-29 13:29:38.470846','read write',1,17,'2021-12-29 03:29:38.471852','2021-12-29 03:29:38.471852',NULL,NULL),(15,'I8WueZVwtenXbYClZmleOVp8iIVLqY','2021-12-29 13:30:53.567640','read write',1,17,'2021-12-29 03:30:53.568642','2021-12-29 03:30:53.568642',NULL,NULL),(16,'Mp86ZnG0yBNdPA2XGVqReevTTcXOJL','2021-12-29 14:18:05.686638','read write',1,1,'2021-12-29 04:18:05.686638','2021-12-29 04:18:05.686638',NULL,NULL),(17,'Ku35HFExxZO5xKsIIF2sY9SjovoEfq','2021-12-29 14:18:35.443209','read write',1,1,'2021-12-29 04:18:35.443209','2021-12-29 04:18:35.443209',NULL,NULL),(18,'mBVit1gqbpAw3tyKOlOWKycc8tduhx','2021-12-29 15:40:09.743349','read write',1,1,'2021-12-29 05:40:09.745350','2021-12-29 05:40:09.745350',NULL,NULL),(19,'ULLSLwtQRpE7EpnbE485DHNqKpXhe3','2021-12-29 15:42:10.736933','read write',1,1,'2021-12-29 05:42:10.737936','2021-12-29 05:42:10.737936',NULL,NULL),(20,'MhBOXPFd5FqmXY7QQwmpQYOYWTIf4F','2021-12-29 15:45:58.202350','read write',1,1,'2021-12-29 05:45:58.203355','2021-12-29 05:45:58.203355',NULL,NULL),(21,'0WGzTTjqLPQ3MKc45tLLtGGiDKyLxr','2021-12-29 17:01:09.257103','read write',1,17,'2021-12-29 07:01:09.258107','2021-12-29 07:01:09.258107',NULL,NULL),(22,'tV4u5SOQhGAuaOAiXa2VbdKGfMouJb','2021-12-29 17:03:59.893059','read write',1,1,'2021-12-29 07:03:59.893059','2021-12-29 07:03:59.893059',NULL,NULL),(23,'1WwR6kiju4BVsHVAWwvqFxFgN3aWZR','2021-12-29 17:07:57.692631','read write',1,1,'2021-12-29 07:07:57.693633','2021-12-29 07:07:57.693633',NULL,NULL),(24,'5gMcDmDNPpb6TFpgRKQQGSPRnbSllU','2021-12-29 17:09:28.903967','read write',1,1,'2021-12-29 07:09:28.903967','2021-12-29 07:09:28.903967',NULL,NULL),(25,'4fcWP2KNpX0JDRpvc5Yfn760D9oxxj','2021-12-29 17:35:10.780966','read write',1,1,'2021-12-29 07:35:10.781970','2021-12-29 07:35:10.781970',NULL,NULL),(26,'tabEI1eSUSLSEJVomTqWcYG5Xno5CK','2021-12-29 17:35:48.196848','read write',1,11,'2021-12-29 07:35:48.196848','2021-12-29 07:35:48.196848',NULL,NULL),(27,'6ef04xMXlxDb1ZW2yDdfBbBfFE10Q2','2021-12-29 17:42:28.775025','read write',1,11,'2021-12-29 07:42:28.775025','2021-12-29 07:42:28.775990',NULL,NULL),(28,'1mXwRTCZyINkOSpQ5NXrFVwWB9RECc','2021-12-29 17:43:57.172003','read write',1,11,'2021-12-29 07:43:57.173014','2021-12-29 07:43:57.173014',NULL,NULL),(29,'a34WCZOuPyPem9HpHtjl0vWUHam8qK','2021-12-29 17:45:51.514248','read write',1,8,'2021-12-29 07:45:51.515250','2021-12-29 07:45:51.515250',NULL,NULL),(30,'jUsaiswyMDZ10AVO6Cn7jn1q1QQrfc','2021-12-29 18:16:21.940392','read write',1,8,'2021-12-29 08:16:21.941365','2021-12-29 08:16:21.941365',NULL,NULL),(31,'e5i3mW9Moz9wWa21YbRWVRD3NTABvI','2021-12-29 18:22:32.456660','read write',1,8,'2021-12-29 08:22:32.456660','2021-12-29 08:22:32.456660',NULL,NULL),(32,'kqT4WA5UXt1tw1GQir3rl1xwwwllLm','2021-12-29 18:31:02.982448','read write',1,1,'2021-12-29 08:31:02.982448','2021-12-29 08:31:02.982448',NULL,NULL),(33,'lE4IBlSAk8szYG0czhRZdNItj0Px4l','2021-12-29 18:43:12.866156','read write',1,1,'2021-12-29 08:43:12.867121','2021-12-29 08:43:12.867121',NULL,NULL),(34,'CeXQpuKJnWhrWhbbOWL8EgbeCZB0ne','2021-12-29 18:45:22.455379','read write',1,8,'2021-12-29 08:45:22.455379','2021-12-29 08:45:22.455379',NULL,NULL),(35,'EbTmiqBKJwVv5rTfEHjMoTHEfQScJl','2021-12-29 18:45:38.675974','read write',1,1,'2021-12-29 08:45:38.675974','2021-12-29 08:45:38.675974',NULL,NULL),(36,'3pcJRQoJzMGpVHsHPBOGy3hRIPWxyK','2021-12-29 18:49:12.293869','read write',1,8,'2021-12-29 08:49:12.294870','2021-12-29 08:49:12.294870',NULL,NULL),(37,'TG27DuAnkQX1rtmhH4BPEAkmnf7dcj','2021-12-29 20:35:16.871860','read write',1,3,'2021-12-29 10:35:16.871860','2021-12-29 10:35:16.871860',NULL,NULL),(38,'fCGKvfKp5pAsNv0tjzmpJgAPDXdWdG','2021-12-29 21:42:59.535633','read write',1,3,'2021-12-29 11:42:59.536628','2021-12-29 11:42:59.536628',NULL,NULL),(39,'h9FhKoY75CJ0qyoLC4CFIkn9J8MSgB','2021-12-29 23:14:56.509120','read write',1,3,'2021-12-29 13:14:56.511130','2021-12-29 13:14:56.511130',NULL,NULL),(40,'OfurzOlt99j0BP7wIn7Gm7D5YXkgPu','2021-12-30 00:01:21.687718','read write',1,1,'2021-12-29 14:01:21.687718','2021-12-29 14:01:21.687718',NULL,NULL),(41,'75ASQnkPw85vDBeUAp007FiP8dRKwm','2021-12-30 00:57:48.431774','read write',1,1,'2021-12-29 14:57:48.432775','2021-12-29 14:57:48.432775',NULL,NULL),(42,'CFNmgAc1d6FkdXLOApG2Yb6G4llJAU','2021-12-30 00:59:29.996257','read write',1,1,'2021-12-29 14:59:29.997266','2021-12-29 14:59:29.997266',NULL,NULL),(43,'c0YCdqHTO65SwVcWEsfBJhkKTO8fGl','2021-12-30 01:20:52.945643','read write',1,8,'2021-12-29 15:20:52.945643','2021-12-29 15:20:52.945643',NULL,NULL),(44,'oz1h6x8NHnqRxIaFlpDAfjDKum7QQd','2021-12-30 01:21:05.398961','read write',1,17,'2021-12-29 15:21:05.398961','2021-12-29 15:21:05.398961',NULL,NULL),(45,'9aqYD2N3KVlT7Wt818rMdcEvl9Rq0E','2021-12-30 01:23:04.171408','read write',1,11,'2021-12-29 15:23:04.171408','2021-12-29 15:23:04.171408',NULL,NULL),(46,'fL5lFuCkutlazDRlwOVO4naFtv90Cl','2021-12-30 01:23:38.734509','read write',1,1,'2021-12-29 15:23:38.735511','2021-12-29 15:23:38.735511',NULL,NULL),(47,'GXccSjWtXeEjObI3CSxClRyySah4GX','2021-12-30 01:23:50.077234','read write',1,1,'2021-12-29 15:23:50.078237','2021-12-29 15:23:50.078237',NULL,NULL),(48,'iCDyHp5k5nMd9rfV6P33U7dN89YUBi','2021-12-30 01:24:08.846651','read write',1,8,'2021-12-29 15:24:08.847615','2021-12-29 15:24:08.847615',NULL,NULL),(49,'KnehRhPfXcp0sxRGWFTG68RDocJqVY','2021-12-30 01:25:16.723608','read write',1,1,'2021-12-29 15:25:16.723608','2021-12-29 15:25:16.723608',NULL,NULL),(50,'QjQF4444bJH348HLqMW6xgPuNOE8RN','2021-12-30 01:30:53.691117','read write',1,17,'2021-12-29 15:30:53.692122','2021-12-29 15:30:53.692122',NULL,NULL),(51,'VZISFvO63FRMzaLkcgwfSczfD0zQi1','2021-12-30 01:35:52.615888','read write',1,1,'2021-12-29 15:35:52.615888','2021-12-29 15:35:52.615888',NULL,NULL),(52,'OCd3Avi7HEWr0c1Iy7xX1edRxyoE4I','2021-12-30 01:38:26.564665','read write',1,8,'2021-12-29 15:38:26.564665','2021-12-29 15:38:26.564665',NULL,NULL),(53,'qQSuuRahN9yyZuwiTZWtxCy4Fpnjez','2021-12-30 01:43:43.708640','read write',1,17,'2021-12-29 15:43:43.709640','2021-12-29 15:43:43.709640',NULL,NULL),(54,'l2XIcXdTgzYrd9dmDhMMXIYlhpr5dy','2021-12-30 01:44:18.486969','read write',1,17,'2021-12-29 15:44:18.486969','2021-12-29 15:44:18.486969',NULL,NULL),(55,'3AF9JW55z26zJhAEDA9kdAzOVrzT7Q','2021-12-30 01:47:00.320217','read write',1,8,'2021-12-29 15:47:00.320217','2021-12-29 15:47:00.320217',NULL,NULL),(56,'ysr0KdMFyA1vRue7kp01Ad0Gy33y9Y','2021-12-30 01:54:25.292351','read write',1,1,'2021-12-29 15:54:25.292351','2021-12-29 15:54:25.292351',NULL,NULL),(57,'FSiLvADV64pyBmUuIXoudnrqcq28c3','2021-12-30 01:54:58.860391','read write',1,1,'2021-12-29 15:54:58.860391','2021-12-29 15:54:58.860391',NULL,NULL),(58,'swgRCBWpuRJTh4Q4r29PHziQZ2JdLT','2021-12-30 02:00:05.350743','read write',1,8,'2021-12-29 16:00:05.350743','2021-12-29 16:00:05.350743',NULL,NULL),(59,'f8Xm38awyLtsl4wnjV5Sj0oyZq4nfW','2021-12-30 02:00:32.485399','read write',1,8,'2021-12-29 16:00:32.485399','2021-12-29 16:00:32.485399',NULL,NULL),(60,'KwlTPbjkpOOSzYfBTYTZuCVgqgDPG4','2021-12-30 02:05:10.480098','read write',1,8,'2021-12-29 16:05:10.481101','2021-12-29 16:05:10.481101',NULL,NULL),(61,'Ddn1CrcH2MZh0Wt5OQM9kwhuKfCppd','2021-12-30 02:15:37.124694','read write',1,11,'2021-12-29 16:15:37.125698','2021-12-29 16:15:37.125698',NULL,NULL),(62,'xiohwHCDBrYn8LEMb2p2CH3XIdc7Qi','2021-12-30 02:18:29.075145','read write',1,8,'2021-12-29 16:18:29.075145','2021-12-29 16:18:29.075145',NULL,NULL),(63,'XijnW0c8talfNxDsmsnmtATuISKRZk','2021-12-30 02:18:50.379788','read write',1,1,'2021-12-29 16:18:50.380795','2021-12-29 16:18:50.380795',NULL,NULL),(64,'eMSJW404Rc59VspzPXiz18VZk5sCSc','2021-12-30 02:20:53.717160','read write',1,8,'2021-12-29 16:20:53.717160','2021-12-29 16:20:53.717160',NULL,NULL),(65,'qro41y4aFRkoKPMPkg4I8hb0nqNEN1','2021-12-30 02:21:13.240174','read write',1,8,'2021-12-29 16:21:13.240174','2021-12-29 16:21:13.240174',NULL,NULL),(66,'lVXvXrM3tMvjcniqhrxLPIJONTRvT3','2021-12-30 02:34:52.282714','read write',1,8,'2021-12-29 16:34:52.282714','2021-12-29 16:34:52.282714',NULL,NULL),(67,'z1cyS07qHfq9oT5enmUaEWhO5OIfJ5','2021-12-30 02:35:28.818440','read write',1,11,'2021-12-29 16:35:28.819447','2021-12-29 16:35:28.819447',NULL,NULL),(68,'jNwf3genftrakEbCXWBqSjuhfvvN6k','2021-12-30 02:42:27.123196','read write',1,8,'2021-12-29 16:42:27.123196','2021-12-29 16:42:27.123196',NULL,NULL),(69,'nJHh3Sw8e75SVifYKLCbwiAYiEBKeC','2021-12-30 02:44:10.083479','read write',1,8,'2021-12-29 16:44:10.084510','2021-12-29 16:44:10.084510',NULL,NULL),(70,'cfkF4Rr5MFRobr6zg8kPARDao0ukMk','2021-12-30 02:48:47.273297','read write',1,8,'2021-12-29 16:48:47.273297','2021-12-29 16:48:47.273297',NULL,NULL),(71,'xQc2Uf1Hm2trUjPNIW5EB1ue1mkb4j','2021-12-30 02:56:41.633483','read write',1,8,'2021-12-29 16:56:41.633483','2021-12-29 16:56:41.633483',NULL,NULL),(72,'2qbJAdJPAkEUXPQjtlHyZWICyCk64i','2021-12-30 02:58:08.224672','read write',1,8,'2021-12-29 16:58:08.225679','2021-12-29 16:58:08.225679',NULL,NULL),(73,'SFKJvEGV6RAF1s67kYFz2Im7qInRvW','2021-12-30 03:22:11.964525','read write',1,8,'2021-12-29 17:22:11.964525','2021-12-29 17:22:11.964525',NULL,NULL),(74,'51Qhz0YI02qPbNDVkoVxKpLE1FNVF0','2021-12-30 03:58:04.989587','read write',1,8,'2021-12-29 17:58:04.989587','2021-12-29 17:58:04.989587',NULL,NULL),(75,'Fve1Cj3FB7wUOb1kxSHDCiekhfto4V','2021-12-30 10:16:04.121510','read write',1,3,'2021-12-30 00:16:04.123508','2021-12-30 00:16:04.123508',NULL,NULL),(76,'zxZvyeuJxSV2wpIruP229TgwokhUS3','2021-12-30 11:05:51.453489','read write',1,8,'2021-12-30 01:05:51.454493','2021-12-30 01:05:51.454493',NULL,NULL),(77,'5q7BbKQ0iDl7tG7lCkSDTIY1K1JNJR','2021-12-30 11:05:51.480496','read write',1,8,'2021-12-30 01:05:51.480496','2021-12-30 01:05:51.480496',NULL,NULL),(78,'NYYrmV4uquxGtVZVKAdrKCuzRSzKiB','2021-12-30 11:14:01.951990','read write',1,3,'2021-12-30 01:14:01.952989','2021-12-30 01:14:01.952989',NULL,NULL),(79,'7831aNtdXSLS85pmyqDYJ97BE2l4YA','2021-12-30 13:29:49.189075','read write',1,8,'2021-12-30 03:29:49.189075','2021-12-30 03:29:49.189075',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_phongmach` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_phongmach` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'SneXboD60d3vipOR5ZpebtZ2dnwh8LgF1hKDbtqc','','confidential','password','TFTzOMKiaRqv5gnvRQgTNPiVeIRuOsWYIRoB0ZQIWEQ0LCCk5tfboNsd2qpz8Ap3j4uJ3M8tMtlZEg1R1O1it38THscs0t7mhwoBTnOADI13VaclLBTOaJFuk9qg45Iq','PhongMachApp',1,0,'2021-12-22 02:47:27.983693','2021-12-22 02:47:27.983693','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_phongmach_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_phongmach_user_id` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_phongmach_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_phongmach_user_id` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_phongmach` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_phongmach` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'tc0lELv3dmdGstVjr0Ybe2YK7pTNCV',1,1,1,'2021-12-22 03:03:42.413004','2021-12-22 03:03:42.413004',NULL),(2,'3lot5vzXf6MBESsRvKGYNpUwAD3Cfc',2,1,11,'2021-12-25 07:23:24.309609','2021-12-25 07:23:24.309609',NULL),(3,'N0k7UT5mQh9jTmjDUFXNjPTPFQWkVf',3,1,8,'2021-12-25 07:37:27.224337','2021-12-25 07:37:27.224337',NULL),(4,'VyWb0eBHPM7GP9RLbUQVpTSJmPFTxd',4,1,11,'2021-12-25 09:22:20.425830','2021-12-25 09:22:20.426831',NULL),(5,'DWr5YQQREO9fOfdDLZuEVME3ohdRpF',5,1,1,'2021-12-25 12:48:10.588829','2021-12-25 12:48:10.588829',NULL),(6,'iSaRX7Rtfj1Qcvptrkw2p4FEaUQuXf',6,1,11,'2021-12-25 12:55:17.989783','2021-12-25 12:55:17.989783',NULL),(7,'YNsjlUy90ZvVsi9tiEGU2319p8cA3C',7,1,11,'2021-12-25 12:55:19.222969','2021-12-25 12:55:19.222969',NULL),(8,'VC3g6AiQBX6FR82WnulBgb2JZ9Sclo',8,1,1,'2021-12-25 13:27:09.738541','2021-12-25 13:27:09.738541',NULL),(9,'uMkakx3iuJMddG4EWYkRK5umbZAG1G',9,1,11,'2021-12-25 13:27:39.273972','2021-12-25 13:27:39.273972',NULL),(10,'qemweVLK40mgEPL6sJkdRP0DUi82VI',10,1,8,'2021-12-25 13:28:57.449403','2021-12-25 13:28:57.449403',NULL),(11,'zVjM3SeOM61FiaY2or43X7jq9ijdLm',11,1,1,'2021-12-25 13:31:22.656195','2021-12-25 13:31:22.656195',NULL),(12,'ZkcoFnNoTFGTsWBiDGrI78wRFRDX3Z',12,1,1,'2021-12-27 09:24:50.225879','2021-12-27 09:24:50.225879',NULL),(13,'ky4LREsrFnDP7pAoLtdsIzeNc6KQDW',13,1,17,'2021-12-27 09:31:08.685463','2021-12-27 09:31:08.685463',NULL),(14,'nlFrGhXFCRzmK4Y9L6gJsDoMYq9C81',14,1,17,'2021-12-29 03:29:38.663772','2021-12-29 03:29:38.663772',NULL),(15,'6I2MnWsjoRROElpLaQnZtVb0o7yCsv',15,1,17,'2021-12-29 03:30:53.592477','2021-12-29 03:30:53.592477',NULL),(16,'p73Rodi0M4J9wcO9FaPzmQMNEpkrJL',16,1,1,'2021-12-29 04:18:05.733187','2021-12-29 04:18:05.733187',NULL),(17,'9Rk4N73v4LSrU9azS0zLC1XYPUrLsY',17,1,1,'2021-12-29 04:18:35.483211','2021-12-29 04:18:35.483211',NULL),(18,'mnH759rDwRuTby5hreQaPT0uThatlJ',18,1,1,'2021-12-29 05:40:09.790351','2021-12-29 05:40:09.790351',NULL),(19,'ZJxb6K31g9icrqvMY075wz5beJU8Ez',19,1,1,'2021-12-29 05:42:10.797936','2021-12-29 05:42:10.797936',NULL),(20,'nlfCYz2IY1JVJqhdW6zuDCKwoS8N81',20,1,1,'2021-12-29 05:45:58.227699','2021-12-29 05:45:58.227699',NULL),(21,'FYb0Dlo0M4P9Pp7j80WSktrZ00pZZW',21,1,17,'2021-12-29 07:01:09.461030','2021-12-29 07:01:09.461030',NULL),(22,'MMglDhrqaR6E2VQYYeaxQ7vlqHO5TT',22,1,1,'2021-12-29 07:03:59.923056','2021-12-29 07:03:59.923056',NULL),(23,'qmlyK6g4wz9adfg5oEO82AhQVixf0z',23,1,1,'2021-12-29 07:07:57.719083','2021-12-29 07:07:57.719083',NULL),(24,'LcE3eKtmRUQ6fgWG48QvwPrOWzwGQo',24,1,1,'2021-12-29 07:09:28.931407','2021-12-29 07:09:28.931407',NULL),(25,'nh8Z5oKnJwPRT0VS69s93Nzx8rgXds',25,1,1,'2021-12-29 07:35:10.819970','2021-12-29 07:35:10.819970',NULL),(26,'DCObUjjLtiW1MMEEqjfv615I7JoDnR',26,1,11,'2021-12-29 07:35:48.221989','2021-12-29 07:35:48.221989',NULL),(27,'H2xvAS1QIyvJTaA2keza2rIJs8OVQ2',27,1,11,'2021-12-29 07:42:28.804862','2021-12-29 07:42:28.804862',NULL),(28,'V8iNFlsihgLSl7UKIMlcmGeGBgqAG8',28,1,11,'2021-12-29 07:43:57.197626','2021-12-29 07:43:57.197626',NULL),(29,'gu6CITMnjquHtFVV23qcUlwNZZE9Pf',29,1,8,'2021-12-29 07:45:51.539755','2021-12-29 07:45:51.539755',NULL),(30,'44i3nEB0uteUp8rJoeKUEtxV5TLKlQ',30,1,8,'2021-12-29 08:16:22.023122','2021-12-29 08:16:22.023122',NULL),(31,'6IoZhOEP6wxFOarKSoFbGMQWMlOZsV',31,1,8,'2021-12-29 08:22:32.488696','2021-12-29 08:22:32.488696',NULL),(32,'eUTFbLSqgYD5P9fSmPE0yqClImDF7V',32,1,1,'2021-12-29 08:31:03.007636','2021-12-29 08:31:03.007636',NULL),(33,'6O2DdZeIBVqQTe2k5624LvRcWNm0iv',33,1,1,'2021-12-29 08:43:12.892230','2021-12-29 08:43:12.892230',NULL),(34,'YRi0IYeyf5hm7mYf8944VggtUQEneG',34,1,8,'2021-12-29 08:45:22.547388','2021-12-29 08:45:22.547388',NULL),(35,'vryHXFJAj2rpk5VANMPTSzn2VNWyAM',35,1,1,'2021-12-29 08:45:38.702977','2021-12-29 08:45:38.702977',NULL),(36,'cX4Gn5c0k8GEJaU9i3BBvyZ9VrmWJ0',36,1,8,'2021-12-29 08:49:12.320426','2021-12-29 08:49:12.320426',NULL),(37,'00tOktvLvngrJavt68Bwz672bxiVgE',37,1,3,'2021-12-29 10:35:17.296388','2021-12-29 10:35:17.296388',NULL),(38,'EhQv1YpBmzCWfWu0Cu132BhNgzfKWA',38,1,3,'2021-12-29 11:42:59.574238','2021-12-29 11:42:59.574238',NULL),(39,'iJcZjuIei0sBAJbe5aTsgX5tdSVGK4',39,1,3,'2021-12-29 13:14:56.568666','2021-12-29 13:14:56.568666',NULL),(40,'JTFpufERiEAYGdDgew7iUDDgsrtbgF',40,1,1,'2021-12-29 14:01:21.750954','2021-12-29 14:01:21.750954',NULL),(41,'ioyEOv31yzGYYbEOLX5Caqkc2tW2BP',41,1,1,'2021-12-29 14:57:48.488890','2021-12-29 14:57:48.488890',NULL),(42,'6UpgaHD4lJpiQzwGhYCQRo4LquXOfW',42,1,1,'2021-12-29 14:59:30.032265','2021-12-29 14:59:30.032265',NULL),(43,'OS0cauiEn29k2oW0hiOEYzM3Ktoq0B',43,1,8,'2021-12-29 15:20:52.978586','2021-12-29 15:20:52.978586',NULL),(44,'M3ISJGAUpzzu1J3md3tCxcQ4cT9QFa',44,1,17,'2021-12-29 15:21:05.424924','2021-12-29 15:21:05.424924',NULL),(45,'4o4Vde2BmzUt7EXKeQeRYB5B7x7V0O',45,1,11,'2021-12-29 15:23:04.208369','2021-12-29 15:23:04.208369',NULL),(46,'0f9j3YjQYXMz7kq6Q7x7L0TRojZOvh',46,1,1,'2021-12-29 15:23:38.766509','2021-12-29 15:23:38.766509',NULL),(47,'MYYKtxmJVu2jevmXhQXe1L1qrgLJMp',47,1,1,'2021-12-29 15:23:50.102234','2021-12-29 15:23:50.102234',NULL),(48,'snTtAcvj6I8yFPltRpFz3RcRROwNio',48,1,8,'2021-12-29 15:24:08.877649','2021-12-29 15:24:08.877649',NULL),(49,'gcwRPHec6PY56Ernz4vVRMO4JFmh1v',49,1,1,'2021-12-29 15:25:16.750757','2021-12-29 15:25:16.750757',NULL),(50,'8gNuVQsve50BtOK9G9vVXleP6IyNaF',50,1,17,'2021-12-29 15:30:53.721162','2021-12-29 15:30:53.721162',NULL),(51,'yk4WgrwuXdEt7mdI1SnCbqnPGghJ63',51,1,1,'2021-12-29 15:35:52.641159','2021-12-29 15:35:52.641159',NULL),(52,'ttyc8lnvzxQtPICy79m0ZbGJ64elhT',52,1,8,'2021-12-29 15:38:26.593631','2021-12-29 15:38:26.593631',NULL),(53,'IVqHHzXIXwyc6ECXvAS98KiQ5oevPz',53,1,17,'2021-12-29 15:43:43.735983','2021-12-29 15:43:43.735983',NULL),(54,'19hQz8nyI2NNYRBGp4rRdetXBS2MCE',54,1,17,'2021-12-29 15:44:18.512873','2021-12-29 15:44:18.512873',NULL),(55,'Gyf0hiDAxnvXDeXlgNL7M6R81tXfns',55,1,8,'2021-12-29 15:47:00.347902','2021-12-29 15:47:00.347902',NULL),(56,'rxUBgkRBYsElemwGAqfEwMBHVxDq3p',56,1,1,'2021-12-29 15:54:25.319245','2021-12-29 15:54:25.319245',NULL),(57,'FZkN37utYfhAj8KtVMuug69IJgFC4R',57,1,1,'2021-12-29 15:54:58.885393','2021-12-29 15:54:58.885393',NULL),(58,'KSC0jZLN1xDz5xmkSsv4rtfMBVcdET',58,1,8,'2021-12-29 16:00:05.376533','2021-12-29 16:00:05.376533',NULL),(59,'dseaKYT5zfrM5eiam8umxcQmtrXJ9F',59,1,8,'2021-12-29 16:00:32.524346','2021-12-29 16:00:32.524346',NULL),(60,'uZEWH2A8WLa7vVH4OVUsMYWpl1329t',60,1,8,'2021-12-29 16:05:10.514377','2021-12-29 16:05:10.514377',NULL),(61,'5dVHgI1X6OiZJIzjXLOGCRb4JZ6X4j',61,1,11,'2021-12-29 16:15:37.154475','2021-12-29 16:15:37.154475',NULL),(62,'mS2udosaCX67AI9Hi2tO0GYTw83rlX',62,1,8,'2021-12-29 16:18:29.104167','2021-12-29 16:18:29.104167',NULL),(63,'pZR7qDYmAkHM6qfKeIxU85R9rVn9MX',63,1,1,'2021-12-29 16:18:50.404793','2021-12-29 16:18:50.404793',NULL),(64,'jMYi7kI37g0Ay6mkQtoYB1WhdjWSWM',64,1,8,'2021-12-29 16:20:53.745093','2021-12-29 16:20:53.745093',NULL),(65,'0GPSqOpQZ1DRr9kxY85UVwjnjq5xzs',65,1,8,'2021-12-29 16:21:13.266949','2021-12-29 16:21:13.266949',NULL),(66,'vE0PnMXDEVitFeLGGOpreYi9QjUSDF',66,1,8,'2021-12-29 16:34:52.312103','2021-12-29 16:34:52.312103',NULL),(67,'nnaCs75ESLW5sXZoDhTKdfje3BRS0F',67,1,11,'2021-12-29 16:35:28.854199','2021-12-29 16:35:28.854199',NULL),(68,'fWC2rX6jltlHvd2EWglpXnb1XyikEc',68,1,8,'2021-12-29 16:42:27.149895','2021-12-29 16:42:27.149895',NULL),(69,'MM6jYlHvfyAG1c9rmyicUgjfrBwGhX',69,1,8,'2021-12-29 16:44:10.111099','2021-12-29 16:44:10.111099',NULL),(70,'WfdSrv8Hcsl5qcFGtQeiTwNTWPexL0',70,1,8,'2021-12-29 16:48:47.299299','2021-12-29 16:48:47.299299',NULL),(71,'S6JxiSHQhszxEzsc2TNjaVIhP0go7n',71,1,8,'2021-12-29 16:56:41.658521','2021-12-29 16:56:41.658521',NULL),(72,'zpmBr0FywqrrwaQwBCGGQAAX2UhEB5',72,1,8,'2021-12-29 16:58:08.249352','2021-12-29 16:58:08.249352',NULL),(73,'RUCxRV1ofCREHmWRrUmmqtUVisoWYu',73,1,8,'2021-12-29 17:22:11.991874','2021-12-29 17:22:11.991874',NULL),(74,'dSpWQQu4lRRjwXu1kN0I7u7sQkfkZs',74,1,8,'2021-12-29 17:58:05.016583','2021-12-29 17:58:05.017586',NULL),(75,'WGbyNqd7Pvvyqsa9RXrCQNmjXoNEFV',75,1,3,'2021-12-30 00:16:04.330405','2021-12-30 00:16:04.330405',NULL),(76,'NyXjkirZuwMuKSQJKbeyO2CfDZiX7a',76,1,8,'2021-12-30 01:05:51.515646','2021-12-30 01:05:51.515646',NULL),(77,'ZVYaAa8qXp2okOiX7K8os7rtbKnC4e',77,1,8,'2021-12-30 01:05:51.522540','2021-12-30 01:05:51.522540',NULL),(78,'QlcHnh5EcjaY6u4IXl2HV1DNHILig5',78,1,3,'2021-12-30 01:14:01.979961','2021-12-30 01:14:01.979961',NULL),(79,'QgfIclo9PczmpQdgypY42M4s0uZpp1',79,1,8,'2021-12-30 03:29:49.297844','2021-12-30 03:29:49.297844',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_bill`
--

DROP TABLE IF EXISTS `phongmach_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `total` double NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `medical_expenses_id` bigint DEFAULT NULL,
  `prescription_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phongmach_bill_medical_expenses_id_3cf46c94_fk_phongmach` (`medical_expenses_id`),
  KEY `phongmach_bill_prescription_id_4148e46b_fk_phongmach` (`prescription_id`),
  CONSTRAINT `phongmach_bill_medical_expenses_id_3cf46c94_fk_phongmach` FOREIGN KEY (`medical_expenses_id`) REFERENCES `phongmach_medical_expenses` (`id`),
  CONSTRAINT `phongmach_bill_prescription_id_4148e46b_fk_phongmach` FOREIGN KEY (`prescription_id`) REFERENCES `phongmach_prescription` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_bill`
--

LOCK TABLES `phongmach_bill` WRITE;
/*!40000 ALTER TABLE `phongmach_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `phongmach_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_category`
--

DROP TABLE IF EXISTS `phongmach_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_category`
--

LOCK TABLES `phongmach_category` WRITE;
/*!40000 ALTER TABLE `phongmach_category` DISABLE KEYS */;
INSERT INTO `phongmach_category` VALUES (2,'Thuốc cảm lạnh, ho'),(5,'Thuốc cơ xương khớp'),(3,'Thuốc da liễu'),(6,'Thuốc hệ hô hấp cấp tính'),(4,'Thuốc thần kinh'),(1,'Thuốc tiêu hóa');
/*!40000 ALTER TABLE `phongmach_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_duty`
--

DROP TABLE IF EXISTS `phongmach_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_duty` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `staff_id` bigint DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phongmach_duty_staff_id_f1806625_fk_phongmach_user_id` (`staff_id`),
  CONSTRAINT `phongmach_duty_staff_id_f1806625_fk_phongmach_user_id` FOREIGN KEY (`staff_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_duty`
--

LOCK TABLES `phongmach_duty` WRITE;
/*!40000 ALTER TABLE `phongmach_duty` DISABLE KEYS */;
INSERT INTO `phongmach_duty` VALUES (3,2,'hoangt11'),(4,13,'phuongt12'),(5,12,'anan');
/*!40000 ALTER TABLE `phongmach_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_duty_details`
--

DROP TABLE IF EXISTS `phongmach_duty_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_duty_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `duty_day` date NOT NULL,
  `duty_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phongmach_duty_details_duty_id_9ee603d1_fk_phongmach_duty_id` (`duty_id`),
  CONSTRAINT `phongmach_duty_details_duty_id_9ee603d1_fk_phongmach_duty_id` FOREIGN KEY (`duty_id`) REFERENCES `phongmach_duty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_duty_details`
--

LOCK TABLES `phongmach_duty_details` WRITE;
/*!40000 ALTER TABLE `phongmach_duty_details` DISABLE KEYS */;
INSERT INTO `phongmach_duty_details` VALUES (1,'2021-11-03',3),(3,'2021-11-18',3),(4,'2021-12-16',4),(5,'2021-12-27',4),(6,'2021-12-10',5),(7,'2021-12-23',5),(8,'2021-12-30',5),(9,'2021-12-22',5),(10,'2021-12-12',5);
/*!40000 ALTER TABLE `phongmach_duty_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_medical_examination`
--

DROP TABLE IF EXISTS `phongmach_medical_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_medical_examination` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `confirm` tinyint(1) NOT NULL,
  `register_date` date NOT NULL,
  `patient_id` bigint DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phongmach_medical_ex_patient_id_9c960670_fk_phongmach` (`patient_id`),
  CONSTRAINT `phongmach_medical_ex_patient_id_9c960670_fk_phongmach` FOREIGN KEY (`patient_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_medical_examination`
--

LOCK TABLES `phongmach_medical_examination` WRITE;
/*!40000 ALTER TABLE `phongmach_medical_examination` DISABLE KEYS */;
INSERT INTO `phongmach_medical_examination` VALUES (4,0,'2021-12-30',7,'đau họng, sốt, ho, tức ngực'),(5,0,'2022-01-12',5,'đau vai trái kèm sốt nhẹ'),(6,0,'2022-01-02',4,'đau nửa đầu trái, chảy nước mũi'),(7,0,'2022-02-02',3,'ho'),(8,0,'2022-02-02',3,'ho'),(9,0,'2022-02-01',3,'đau mắt'),(10,0,'2022-02-01',3,'đau họng'),(11,0,'2022-02-01',3,'viêm mũi dị ứng'),(12,0,'2022-02-01',3,'tê nhức tay chân'),(13,0,'2022-02-03',3,'đau đầu');
/*!40000 ALTER TABLE `phongmach_medical_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_medical_expenses`
--

DROP TABLE IF EXISTS `phongmach_medical_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_medical_expenses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_medical_expenses`
--

LOCK TABLES `phongmach_medical_expenses` WRITE;
/*!40000 ALTER TABLE `phongmach_medical_expenses` DISABLE KEYS */;
INSERT INTO `phongmach_medical_expenses` VALUES (1,'khám tổng quát',500),(2,'khám ngoại khoa',200000),(3,'khám mắt',100000),(4,'khám răng',250000),(5,'khám phụ khoa',300000);
/*!40000 ALTER TABLE `phongmach_medical_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_medicine`
--

DROP TABLE IF EXISTS `phongmach_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_medicine` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `unit_price_medicine` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phongmach_medicine_name_5082600b_uniq` (`name`),
  KEY `phongmach_medicine_category_id_25808d41_fk_phongmach_category_id` (`category_id`),
  CONSTRAINT `phongmach_medicine_category_id_25808d41_fk_phongmach_category_id` FOREIGN KEY (`category_id`) REFERENCES `phongmach_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_medicine`
--

LOCK TABLES `phongmach_medicine` WRITE;
/*!40000 ALTER TABLE `phongmach_medicine` DISABLE KEYS */;
INSERT INTO `phongmach_medicine` VALUES (2,'Carsil 90','2021-12-17 08:19:40.534741','2021-12-17 08:19:40.534741',1,1,20000),(3,'Alcomet','2021-12-17 08:57:49.848743','2021-12-17 08:57:49.848743',1,1,30000),(4,'Candid TV(60ml)','2021-12-20 07:24:43.495552','2021-12-20 07:24:43.496211',1,3,15000);
/*!40000 ALTER TABLE `phongmach_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_prescription`
--

DROP TABLE IF EXISTS `phongmach_prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_prescription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `diagnose` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `patient_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phongmach_prescription_patient_id_b9df91d6_fk_phongmach_user_id` (`patient_id`),
  CONSTRAINT `phongmach_prescription_patient_id_b9df91d6_fk_phongmach_user_id` FOREIGN KEY (`patient_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_prescription`
--

LOCK TABLES `phongmach_prescription` WRITE;
/*!40000 ALTER TABLE `phongmach_prescription` DISABLE KEYS */;
INSERT INTO `phongmach_prescription` VALUES (1,'viêm họng','2021-12-28 14:16:21.460756',4),(2,'sốt xuất huyết','2021-12-29 23:57:25.450389',5),(3,'đau nửa đầu vai gáy','2021-12-29 23:57:55.022513',14);
/*!40000 ALTER TABLE `phongmach_prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_prescription_detail`
--

DROP TABLE IF EXISTS `phongmach_prescription_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_prescription_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `prescription_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phongmach_prescripti_prescription_id_6108ec29_fk_phongmach` (`prescription_id`),
  CONSTRAINT `phongmach_prescripti_prescription_id_6108ec29_fk_phongmach` FOREIGN KEY (`prescription_id`) REFERENCES `phongmach_prescription` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_prescription_detail`
--

LOCK TABLES `phongmach_prescription_detail` WRITE;
/*!40000 ALTER TABLE `phongmach_prescription_detail` DISABLE KEYS */;
INSERT INTO `phongmach_prescription_detail` VALUES (3,'sáng 1v chiều 1v',15,2),(4,'sáng 2 viên',20,3),(5,'sáng 1v chiều 1v',25,2),(6,'sáng 1v chiều 1v',5,1);
/*!40000 ALTER TABLE `phongmach_prescription_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_prescription_detail_name_medicine`
--

DROP TABLE IF EXISTS `phongmach_prescription_detail_name_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_prescription_detail_name_medicine` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prescription_detail_id` bigint NOT NULL,
  `medicine_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phongmach_prescription_d_prescription_detail_id_m_3450a73a_uniq` (`prescription_detail_id`,`medicine_id`),
  KEY `phongmach_prescripti_medicine_id_a7b7d7cd_fk_phongmach` (`medicine_id`),
  CONSTRAINT `phongmach_prescripti_medicine_id_a7b7d7cd_fk_phongmach` FOREIGN KEY (`medicine_id`) REFERENCES `phongmach_medicine` (`id`),
  CONSTRAINT `phongmach_prescripti_prescription_detail__0a74272f_fk_phongmach` FOREIGN KEY (`prescription_detail_id`) REFERENCES `phongmach_prescription_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_prescription_detail_name_medicine`
--

LOCK TABLES `phongmach_prescription_detail_name_medicine` WRITE;
/*!40000 ALTER TABLE `phongmach_prescription_detail_name_medicine` DISABLE KEYS */;
INSERT INTO `phongmach_prescription_detail_name_medicine` VALUES (3,3,3),(4,4,3),(5,5,2),(6,6,3);
/*!40000 ALTER TABLE `phongmach_prescription_detail_name_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_user`
--

DROP TABLE IF EXISTS `phongmach_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_user`
--

LOCK TABLES `phongmach_user` WRITE;
/*!40000 ALTER TABLE `phongmach_user` DISABLE KEYS */;
INSERT INTO `phongmach_user` VALUES (1,'pbkdf2_sha256$260000$DB8ad6f2zlsw52iO7czycA$jeWseoj7O4nNmlqkcLZUhzAftwSqu94JUdDJEobf0+s=','2021-12-28 12:58:17.887876',1,'admin','Nam','Trần','mariepham2000@gmail.com',1,1,'2021-12-20 03:01:31.000000','uploads/2021/12/butsap.jpg','4'),(2,'pbkdf2_sha256$260000$N6c9OIMFUNByy94TAbcZUI$mzL3g+R42vHmk3Og11A/05sPi5kzaShvM4Rs1pyMHUw=',NULL,0,'anhhoang','hoang anh','Nguyen','anhhoang@gmail.com',0,1,'2021-12-23 04:15:50.217930','','2'),(3,'pbkdf2_sha256$260000$XlLIJUWNq5Q85HvPRHkVIS$TgvBovMfBRmvill4LuHXsTtzP0e+k39lmLhKi9XUgac=',NULL,0,'minhnguyen','Minh','Nguyen','nguyen@gmail.com',0,1,'2021-12-23 07:35:11.400532','uploads/2021/12/ball_XJ2VIaH.jpg','1'),(4,'pbkdf2_sha256$260000$3dLFRfxUqpeWuqrbol9ZH5$TB+rS0pluSsDLWlM12jnBO9Nz+BQ5wvRM9YDrFNs5yg=',NULL,0,'minhnguyen2','Minh2','Nguyen2','nguyen2@gmail.com',0,1,'2021-12-23 07:38:08.242449','uploads/2021/12/7Up.jpg','1'),(5,'pbkdf2_sha256$260000$Hp9WUHECXjvk9gtp4fpihL$ZO2u9ioUPWT9KH6easZNWQTz/De9sUWrwMwNTlpHrxE=',NULL,0,'nguyentho','tho','Nguyen','tho@gmail.com',0,1,'2021-12-23 07:55:07.000000','uploads/2021/12/gs.jpg','1'),(6,'pbkdf2_sha256$260000$iFNJ0SEjNOj3uk60WUmEfV$12/ErPsgUi7U9IyoStKSB7GmBzEjl8s69DYRnWRlCAY=',NULL,0,'phucnguyen','Phuc','Nguyen','nguyenphuc@gmail.com',0,1,'2021-12-23 08:01:14.604571','uploads/2021/12/butchiden.jpg','1'),(7,'pbkdf2_sha256$260000$xsiX9QULK4G6rkcNmZ774N$bhFR45S6nwB5yg4ruA51T72yx2cbFQUY7gEnMdwqE+0=',NULL,0,'phucnguyen2','Phuc2','Nguyen2','nguyenphuc2@gmail.com',0,1,'2021-12-23 08:12:23.113037','uploads/2021/12/butlongkim.jpg','2'),(8,'pbkdf2_sha256$260000$hw6w97oWBMzkKDWQDg4oEg$maYfqASZXGMNjR3bNbJd8pZkJtGy65k07fvU5agY3lM=',NULL,0,'ngoc','Minh','Nguyễn','aaa@gmail.com',0,1,'2021-12-25 04:59:04.637503','uploads/2021/12/7Up.jpg','1'),(11,'pbkdf2_sha256$260000$yxLdqH3ccAU1qCzSpe9hwS$TUypJ8vEmU7WNlo9Ss/S3LIpLBVnfTyVlDADDppoP+0=',NULL,0,'my','Minh','Nguyễn','bbb@gmail.com',0,1,'2021-12-25 05:30:05.603680','uploads/2021/12/7Up_8EnGSO2.jpg','1'),(12,'pbkdf2_sha256$260000$BD5M817eri5Y4lGtbEpyN1$oUCbbf8kDOOwKr2Gs7tjMySIvIv6ObWk6xBkFTBktjQ=',NULL,0,'anan','Minh An','Nguyễn','anan@gmail.com',0,1,'2021-12-27 06:35:41.000000','uploads/2021/12/e8c4974bcb65013b5874.jpg','2'),(13,'pbkdf2_sha256$260000$HlZfhr7SQQwLAHBIi4OFED$kW8b7wl2AEuBlVwqK0KgEfc0FP9ojhxl2wjQ1eh/sYQ=',NULL,0,'phuongphuong','Nam Phương','Trần','phuong@gmail.com',0,1,'2021-12-27 06:38:54.000000','uploads/2021/12/e8c4974bcb65013b5874_aNwovr0.jpg','3'),(14,'pbkdf2_sha256$260000$opm5qIz3ogr7w6eHs7HMWp$UEezfUmxS1iZp0dljRkiP886+4tRJBH0oLEbpwhbFmg=',NULL,0,'giabao','Gia Bảo','Đinh','baba@gmail.com',0,1,'2021-12-27 08:41:15.136290','uploads/2021/12/7d845818a0f8022147484d10dd0562ae.jpg','1'),(15,'pbkdf2_sha256$260000$j2CCuW7jQbdzA3PuJepKW2$hy7WQyzr3ReLy+S9yM1h9elrpH8FVlkOdC+DEWmGitw=',NULL,0,'miphuong','mi','Phuong','mi@gmail.com',0,1,'2021-12-27 08:42:26.000000','uploads/2021/12/Ve-chipi-cho-nguoi-moi-hoc.jpg','3'),(16,'pbkdf2_sha256$260000$EId11E0tk0BP86dsJhuLlW$7J1wB16uNl+/C3CDPO8tzQHsjBTkVUh9+Jv7f7ZIHPA=',NULL,0,'trong','Trọng','Nguyễn','trong@gmail.com',0,1,'2021-12-27 09:10:38.000000','uploads/2021/12/7d845818a0f8022147484d10dd0562ae_kl6L2yj.jpg','3'),(17,'pbkdf2_sha256$260000$6Qq3x6iYw25Osw5M3CYb9F$54tYge76EEDKiUwzGVzbLr5giM6xug0xqyBwI+yIlk0=',NULL,0,'ami','mi','A','ami@gmail.com',0,1,'2021-12-27 09:14:04.000000','uploads/2021/12/phu-kien-trang-tri-thoi-noi-cho-be_45-1.jpg','2'),(18,'pbkdf2_sha256$260000$a1BvDrQRBrHeHcRTvFmqAM$xvpZygCz4jcCqQQHYhsiVsNln1XsSu0rQH2/g6OgGRY=',NULL,0,'antran','Huyền An','Trần','antran@gmail.com',0,1,'2021-12-29 15:30:12.036184','uploads/2021/12/7Up_4jyt6D4.jpg','1'),(19,'pbkdf2_sha256$260000$aggkggLoNx62JBN6d2zZ1Y$FXLNpWUoKa3jNYGvXE2Ruk2SCDVxaxkEXhIuSIn1dyI=',NULL,0,'phuongtran','Anh Phương','Trần','b@gmail.com',0,1,'2021-12-29 17:13:31.421321','uploads/2021/12/ball.jpg','1'),(20,'pbkdf2_sha256$260000$0hNb7SbTgIwDEDDo2DH9aq$G4JP/J+QVZVH+YvsHCGOFn8c2ho8zGy0WLBZm2ZkFN4=',NULL,0,'a','a','a','aa@gmail.com',0,1,'2021-12-29 17:19:03.222515','uploads/2021/12/ruouchampagne.jpg','1'),(21,'pbkdf2_sha256$260000$qC1nV5ZiAgmslCrFBA8Rke$0WiJDgqvMZuugIdgO6p08AVPiN1YceXLgYmPkeosvXc=',NULL,0,'anh','Minh Ánh','Trương','c@gmail.com',0,1,'2021-12-29 17:57:38.679716','uploads/2021/12/7Up_iXC3WWj.jpg','1'),(22,'pbkdf2_sha256$260000$GaSTIawveXWUZHZQSeYyXb$CEMooIfrn1o6ZQig3IHhE/2m//LdJRcFS6T/MNqhprg=',NULL,0,'ac','a','c','ac@gmail.com',0,1,'2021-12-30 02:34:30.041365','uploads/2021/12/ball_jbnlynk.jpg','1'),(23,'pbkdf2_sha256$260000$hpYiJ6SKx0uQK3GeVpAqcE$LdnM0ufIeu2i1nK9Uxbn7dvd0ILWu4hBpmySNCKzjo8=',NULL,0,'abc','Anh','Trần','bb@gmail.com',0,1,'2021-12-30 02:36:01.196472','uploads/2021/12/7Up_ael03ek.jpg','1'),(24,'pbkdf2_sha256$260000$WI6jWzCQ23CXscLsNspkCA$R4q97P4sZQLy0XXNqjNgk0St8+mQQ7mPngj4RhCdNsY=',NULL,0,'acb','qư','aa','aaa@gmail.com',0,1,'2021-12-30 03:29:29.740441','uploads/2021/12/7Up_5Ff4AVL.jpg','1');
/*!40000 ALTER TABLE `phongmach_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_user_groups`
--

DROP TABLE IF EXISTS `phongmach_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phongmach_user_groups_user_id_group_id_af8e4957_uniq` (`user_id`,`group_id`),
  KEY `phongmach_user_groups_group_id_378dfb45_fk_auth_group_id` (`group_id`),
  CONSTRAINT `phongmach_user_groups_group_id_378dfb45_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `phongmach_user_groups_user_id_caaa71de_fk_phongmach_user_id` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_user_groups`
--

LOCK TABLES `phongmach_user_groups` WRITE;
/*!40000 ALTER TABLE `phongmach_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `phongmach_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_user_role`
--

DROP TABLE IF EXISTS `phongmach_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_user_role`
--

LOCK TABLES `phongmach_user_role` WRITE;
/*!40000 ALTER TABLE `phongmach_user_role` DISABLE KEYS */;
INSERT INTO `phongmach_user_role` VALUES (1,'USER_ROLE'),(2,'DOCTOR_ROLE'),(3,'NURSE_ROLE'),(4,'ADMIN_ROLE');
/*!40000 ALTER TABLE `phongmach_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongmach_user_user_permissions`
--

DROP TABLE IF EXISTS `phongmach_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongmach_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phongmach_user_user_perm_user_id_permission_id_e843cdc5_uniq` (`user_id`,`permission_id`),
  KEY `phongmach_user_user__permission_id_7f6667d7_fk_auth_perm` (`permission_id`),
  CONSTRAINT `phongmach_user_user__permission_id_7f6667d7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `phongmach_user_user__user_id_f03e5dcb_fk_phongmach` FOREIGN KEY (`user_id`) REFERENCES `phongmach_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongmach_user_user_permissions`
--

LOCK TABLES `phongmach_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `phongmach_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `phongmach_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-08 14:14:12
