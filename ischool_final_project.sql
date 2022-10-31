CREATE DATABASE IF NOT EXISTS `ischool_final_project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ischool_final_project`;
-- MySQL dump 10.13 Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost Database: ischool
-- ------------------------------------------------------
-- Server version 8.0.25
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
-- Temporary view structure for view `advisor_view`
--
DROP TABLE IF EXISTS `advisor_view`;
/*!50001 DROP VIEW IF EXISTS `advisor_view`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `advisor_view` AS SELECT
 1 AS `Studnet id`,
 1 AS `Student First Name`,
 1 AS `Student Last Name`,
 1 AS `Job Title`,
 1 AS `employer`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `advisors`
--
DROP TABLE IF EXISTS `advisors`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advisors` (
 `advisor_id` int unsigned NOT NULL,
 `advisor_initials` varchar(45) NOT NULL,
 PRIMARY KEY (`advisor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `advisors`
--
LOCK TABLES `advisors` WRITE;
/*!40000 ALTER TABLE `advisors` DISABLE KEYS */;
INSERT INTO `advisors` VALUES (1,'DB'),(2,'FW'),(3,'TH'),(4,'WS'),(5,'SC'),
(6,'JM'),(7,'NB'),(8,'OH'),(9,'DH');
/*!40000 ALTER TABLE `advisors` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `appointment`
--
DROP TABLE IF EXISTS `appointment`;
/*!50001 DROP VIEW IF EXISTS `appointment`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `appointment` AS SELECT
 1 AS `Advicing ID`,
 1 AS `Advisor id`,
 1 AS `Format`,
 1 AS `Required service`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `career_services`
--
DROP TABLE IF EXISTS `career_services`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `career_services` (
 `service_id` int unsigned NOT NULL,
 `service_description` varchar(80) NOT NULL,
 PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `career_services`
--
LOCK TABLES `career_services` WRITE;
/*!40000 ALTER TABLE `career_services` DISABLE KEYS */;
INSERT INTO `career_services` VALUES (1,'Resume Review'),(2,'Internship'),
(3,'Jobs'),(4,'General'),(5,'Interview'),(6,'Career Fair'),(7,'Problems');
/*!40000 ALTER TABLE `career_services` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `company`
--
DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
 `company_id` int unsigned NOT NULL,
 `company_name` varchar(60) DEFAULT NULL,
 `size` varchar(45) DEFAULT NULL,
 `type` varchar(45) DEFAULT NULL,
 `city` varchar(45) DEFAULT NULL,
 PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `company`
--
LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Accenture','Big','Consulting','Dublin'),
(2,'Adobe','Big','Tech','San Jose'),(3,'AEGIS.net
inc.','Medium','Research','Rockville'),(4,'Booz Allen
Hamilton','Medium','Consulting','McLean'),(5,'Bloomberg LP','Medium','Tech','New
York'),(6,'Capital One','Big','Banking','McLean'),(7,'CareFirst Bluecross
Blueshield','Medium','Insurance','Baltimore'),(8,'Data and Cloud Computing
Society','Medium','Tech','College Park'),(9,'Deloitte','Big','Professional
Service','Bethesda'),(10,'Ernst & Young','Medium','Professional
Service','Washington D.C.'),(11,'FINRA (Financial Industry Regulatory
Authority)','Small','Finance','Washington D.C.'),(12,'Freddie
Mac','Small','Government','McLean'),(13,'GEICO','Big','Insurance','Washington
D.C.'),(14,'Google, Inc.','Big','Tech','San Francisco'),(15,'IBM','Big','Tech','New
York'),(16,'Lockheed Martin Corporation','Medium','Tech','Bethesda'),(17,'McKinsey
& Company','Medium','Consulting','Washington D.C.'),
(18,'Microsoft','Big','Tech','Washington D.C.'),(19,'Morgan
Stanley','Big','Banking','New York'),(20,'Nextdoor','Small','Tech','San
Francisco'),(21,'T-Mobile','Big','Tech','Washington D.C.'),(22,'U.S. Holocaust
Memorial Museum','Medium','Government','Washington D.C.'),(23,'Under
Armour','Medium','Sports Equipment','Baltimore'),(24,'University of
Maryland','Big','Research','College Park'),(25,'Visa','Big','Finance','San
Francisco'),(26,'Vietnam Relief Services','Small','Insurance','Washington D.C.'),
(27,'Zillow Group','Medium','Estate','Seattle');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `drop_in_advising`
--
DROP TABLE IF EXISTS `drop_in_advising`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_in_advising` (
 `advicing_id` int unsigned NOT NULL,
 `advisor_id` int unsigned NOT NULL,
 `format` varchar(45) DEFAULT NULL,
 `service_id` int unsigned NOT NULL,
 `drop_in_date` date NOT NULL,
 `student_id` int unsigned NOT NULL,
 PRIMARY KEY (`advicing_id`),
 KEY `fk_drop_in_advising_advisors1_idx` (`advisor_id`),
 KEY `fk_drop_in_advising_career_services1_idx` (`service_id`),
 KEY `fk_drop_in_advising_students1_idx` (`student_id`),
 CONSTRAINT `fk_drop_in_advising_advisors1` FOREIGN KEY (`advisor_id`) REFERENCES
`advisors` (`advisor_id`),
 CONSTRAINT `fk_drop_in_advising_career_services1` FOREIGN KEY (`service_id`)
REFERENCES `career_services` (`service_id`),
 CONSTRAINT `fk_drop_in_advising_students1` FOREIGN KEY (`student_id`) REFERENCES
`students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `drop_in_advising`
--
LOCK TABLES `drop_in_advising` WRITE;
/*!40000 ALTER TABLE `drop_in_advising` DISABLE KEYS */;
INSERT INTO `drop_in_advising` VALUES (1,2,'Online',3,'2020-02-18',114544821),
(2,5,'Online',5,'2020-02-18',114544939),(3,3,'In-person',7,'2020-02-25',114544933),
(4,6,'Online',2,'2020-03-02',114544762),(5,8,'Online',1,'2020-03-03',114544223),
(6,8,'In-person',3,'2020-03-03',114544864),(7,9,'In-person',2,'2020-03-
03',114544758),(8,6,'Online',2,'2020-03-03',114544988),(9,5,'Online',5,'2020-03-
10',114544465),(10,4,'Online',4,'2020-03-24',114566877),(11,3,'Online',7,'2020-03-
24',114977394),(12,6,'Online',5,'2020-03-24',114855775),(13,2,'In-person',4,'2020-
03-25',114533987),(14,4,'In-person',2,'2021-01-21',114799388),
(15,3,'Online',3,'2021-01-25',114774978),(16,7,'Online',1,'2021-01-25',114899483),
(17,8,'Online',5,'2021-01-25',114859499),(18,5,'Online',7,'2021-02-01',114722114),
(19,3,'Online',4,'2021-02-01',114893720),(20,1,'Online',7,'2021-02-01',114332995),
(21,3,'Online',5,'2021-02-04',114885330),(22,7,'Online',3,'2021-02-08',114799389),
(23,4,'In-person',2,'2021-02-08',114311249),(24,6,'In-person',4,'2021-02-
11',114533211),(25,8,'In-person',1,'2021-02-11',114223400),(26,9,'Inperson',5,'2021-02-15',114998222),(27,4,'Online',3,'2021-02-15',114003999),
(28,6,'Online',6,'2021-02-15',114992883),(29,2,'Online',3,'2021-02-22',114927992),
(30,7,'In-person',1,'2021-02-22',114882838),(31,9,'Online',5,'2021-02-
22',114222399),(32,9,'In-person',4,'2021-02-22',115939892),(33,8,'Online',1,'2021-
02-25',114939029),(34,4,'In-person',2,'2021-02-28',114009228),
(35,6,'Online',5,'2021-02-28',112340992),(36,1,'Online',6,'2021-02-28',114002488),
(37,1,'Online',7,'2021-02-28',114993958),(38,2,'Online',7,'2021-03-04',112400393),
(39,5,'In-person',3,'2021-03-08',114998350),(40,3,'In-person',3,'2021-03-
08',112444024),(41,7,'In-person',4,'2021-03-11',112440550),(42,5,'Online',1,'2021-
03-11',114824893),(43,6,'In-person',5,'2021-03-16',114922047),(44,3,'Inperson',2,'2021-03-18',112952447),(45,4,'In-person',1,'2021-03-18',112441149),
(46,6,'Online',6,'2021-03-22',112410230),(47,7,'Online',1,'2021-03-22',111294858),
(48,4,'Online',4,'2021-03-25',110992849),(49,5,'Online',6,'2021-03-25',110248295),
(50,3,'In-person',5,'2021-03-25',114939293),(51,7,'In-person',3,'2021-03-
29',114939402),(52,9,'In-person',2,'2021-03-29',115393562),(53,4,'Online',7,'2021-
03-29',120442992),(54,6,'Online',6,'2021-04-01',112443709),(55,3,'Online',6,'2021-
04-01',119883857),(56,4,'In-person',3,'2021-04-01',118945932),(57,2,'Inperson',5,'2021-04-05',119358382),(58,3,'In-person',4,'2021-04-05',110284837),
(59,6,'In-person',3,'2021-04-05',118030402),(60,7,'In-person',2,'2021-04-
08',119395303),(61,8,'In-person',1,'2021-04-08',110305938),(62,5,'Online',5,'2021-
04-08',113959382),(63,6,'Online',3,'2021-04-12',103958203),(64,3,'Online',5,'2021-
04-12',193958827),(65,4,'Online',4,'2021-04-12',919285702),(66,2,'Online',4,'2021-
04-12',192840129),(67,7,'Online',1,'2021-04-14',113503948),(68,5,'Inperson',6,'2021-04-15',102048282),(69,1,'Online',3,'2021-04-19',110385832),
(70,3,'Online',2,'2021-04-19',100351720),(71,2,'Online',6,'2021-04-19',192937502),
(72,7,'Online',3,'2021-04-22',192858302),(73,9,'Online',7,'2021-04-22',102858372),
(74,5,'Online',4,'2021-04-26',192800288),(75,3,'Online',3,'2021-04-29',100838282),
(76,7,'Online',4,'2021-05-03',918285730),(77,5,'Online',2,'2021-05-03',192884022),
(78,6,'In-person',3,'2021-05-04',192411830),(79,3,'In-person',4,'2021-05-
06',910385711),(80,5,'Online',2,'2021-05-06',102488285),(81,4,'Online',1,'2021-05-
13',918740120),(82,4,'Online',6,'2021-05-17',112395828),(83,8,'Online',4,'2021-05-
20',119384820),(84,7,'Online',3,'2021-05-20',103882949),(85,8,'Online',2,'2021-05-
20',108204829),(86,4,'Online',7,'2021-06-01',193882030),(87,3,'Online',6,'2021-06-
10',188830201),(88,7,'Online',6,'2021-06-10',848102820);
/*!40000 ALTER TABLE `drop_in_advising` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `job_title_company`
--
DROP TABLE IF EXISTS `job_title_company`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_title_company` (
 `job_title_id` int unsigned NOT NULL,
 `company_id` int unsigned NOT NULL,
 KEY `fk_job_title_info_job_title_company_idx` (`job_title_id`),
 KEY `fk_job_title_info_company_idx` (`company_id`),
 CONSTRAINT `fk_company_job` FOREIGN KEY (`company_id`) REFERENCES `company`
(`company_id`),
 CONSTRAINT `fk_job_title_info` FOREIGN KEY (`job_title_id`) REFERENCES
`job_title_info` (`job_title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `job_title_company`
--
LOCK TABLES `job_title_company` WRITE;
/*!40000 ALTER TABLE `job_title_company` DISABLE KEYS */;
INSERT INTO `job_title_company` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),
(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),
(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),
(28,2),(29,6),(30,23),(31,12),(32,11),(33,9),(34,18),(35,16),(36,7),(37,7),(38,8),
(39,1),(40,19),(41,13),(42,17),(43,12),(44,24),(45,27),(46,10),(47,5),(48,15),
(49,19),(50,15),(51,13),(52,19),(53,26),(54,23),(55,26),(56,10),(57,9),(58,9),
(59,7),(60,3),(61,4),(62,14),(63,5),(64,2),(65,22),(66,21),(67,10),(68,20),(69,2),
(70,3),(71,26),(72,22),(73,10),(74,19),(75,23),(76,12),(77,11),(78,24),(79,14),
(80,13),(81,9),(82,9),(83,7),(84,17),(85,16),(86,15),(87,12),(88,11),(89,19),
(90,12),(91,12),(92,11),(93,27),(94,26),(95,25),(96,18),(97,16),(98,15),(99,4),
(100,5),(101,3),(102,8),(103,7);
/*!40000 ALTER TABLE `job_title_company` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `job_title_info`
--
DROP TABLE IF EXISTS `job_title_info`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_title_info` (
 `job_title_id` int unsigned NOT NULL,
 `job_title` varchar(80) DEFAULT NULL,
 `infosci_concentration` varchar(80) DEFAULT NULL,
 `employer` varchar(80) DEFAULT NULL,
 PRIMARY KEY (`job_title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `job_title_info`
--
LOCK TABLES `job_title_info` WRITE;
/*!40000 ALTER TABLE `job_title_info` DISABLE KEYS */;
INSERT INTO `job_title_info` VALUES (1,'Business Analytics Intern','Undecided','CBS
Interactive'),(2,'Summer Technology Intern','InforSci','Geico'),(3,'Discovery, Data
& Technology Associate','InforSci','Ankura Consulting Group'),(4,'Cybersecurity
Consulting Staff','InforSci','Ernst & Young'),(5,'Web Developer: Advocating for
Social Justice Issues','InforSci','Rad Campain'),(6,'Archivist','MIM','Apple'),
(7,'User Experience Intern','HCI','Vivet'),(8,'Customer Operations/Data Management
Intern','InforSci','Collins Aerospace/Ratheon'),(9,'Library Services
Intern','InforSci','Evidera'),(10,'TRUE Certification Market Research and
Development Intern','InforSci','U.S. Green Builting Council'),(11,'UX Researcher -
Part Time','PhD','Celerity'),(12,'Metadata Librarian','LBS','University of Maryland
Libraries'),(13,'Information Security Rotation Program','LBSC','Rapid7'),(14,'Jr.
Software Developer','InfoSci','Northrop Grumman'),(15,'Data Science/Analytics
Intern','InfoSci','ManTech'),(16,'Analytics Intern (IT)','MLIS','Conagra Brands'),
(17,'Summer Associate, Demand Generation','HCIM','AlphaSights'),(18,'IT Operations
Associate','InfoSci','General Dynamics Information Technology'),(19,'IT Specialist
(Application Software) (Recent Graduate)','MLIS','US Department of Energy'),
(20,'Pricing Strategy Analyst','InfoSci','Conagra Brands'),(21,'IT Functional
Analyst','MLIS','Maryland State Board of Elections'),(22,'Clinical Data
Analyst','InfoSci','Medstar Health'),(23,'Summer Intern','InfoSci','Xometru'),
(24,'Programming Internship - Warrington','InfoSci','Activision'),(25,'Summer
Intern - Technology Governance','InfoSci','Federal Reserve Board'),(26,'IT
Intern','InfoSci','Enterprise Resource Performance, Inc.'),(27,'Wildlife Protection
Intern','InfoSci','Humane Society of the United States'),(28,'Technology Risk
Consulting Summer 2022 Intern','InfoSci','RSM'),(29,'Digital Maryland
Intern','InfoSci','Enoch Pratt Free Library'),(30,'Corporate Research Library
Intern','InfoSci','Analog Devices Inc.'),(31,'UX Designer','MLIS','Xometry'),
(32,'Associate Technical Consultant','InfoSci','srcLogic'),(33,'Gameplay UI
Engineer','InfoSci','Raven Software (Subsidiary of Activision)'),(34,'Market
Intelligence & Insights Analyst, Executive Practice','InfoSci','Activision
Blizzard'),(35,'Information Security Engineer','InfoSci','Unifirst'),(36,'eCommerce
Digital Marketing Analytics Consultant','InfoSci','Nestle Purina'),
(37,'Digitization Archivist','InfoSci','State of North Carolina Department of
Natural and Cultural Resources'),(38,'Cataloging Librarian II','InfoSci','Southern
Maryland Regional Library Association'),(39,'Preservation Digital Technology
Internship','InfoSci','Library of Congress'),(40,'Portfolio and Impact Analysis
Intern','InfoSci','Capital Impact Partners'),(41,'Social Media
Intern','HCIM','Enterprise Resrouce Performance, Inc.'),(42,'Software Engineer
Intern','MLIS','Appian'),(43,'Digital & Information Services
Intern','MLIS','Polaris Industries'),(44,'Optimization Analyst','MLIS','Kaplan'),
(45,'Product Admin','MLIS','Adobe'),(46,'Information Architect III','MLIS','WiSC
Enterprises'),(47,'Baltimore Project Coordinator','MLIS','Libraries Without
Borders'),(48,'Associate Data Analyst - Custom Analytics','HCIM','Comscore'),
(49,'Student ZTrainee','InfoSci','NASA'),(50,'UI/UX Intern','InfoSci','Reality
AI'),(51,'Project Coordinator Intern','HCIM','Vheda Health'),(52,'Digital Imaging
Specialist','MLIS','NARA: National Archives & Records Administration'),
(53,'Reporting & Analytics Lead','InfoSci','Helm Services'),(54,'Project Manager
Apprentice','HCIM','IBM'),(55,'Data Engineer - Cloud Pak for
Data','InfoSci','IBM'),(56,'UI/UX Designer','InfoSci','Capital One'),(57,'Contracts
& Administration Intern','InfoSci','ICF'),(58,'Health Sciences Business Analytics
Intern','MLIS','Nestle Purina'),(59,'Intern','MIM','Rstudio'),(60,'Summer Field
Operations Intern - Project Management','InfoSci','Spectrum'),(61,'UX
Researcher','InfoSci','Spectrum'),(62,'Technical Information Specialist - Library
Focus','MLS','Office of Naval Intelligence'),(63,'Web Developer / Software
Developer','InfoSci','ICF'),(64,'Business Intelligence Lead','HCIM','Nestle'),
(65,'Archives Technician','InfoSci','Library of Congress'),(66,'Librarian -
Geography and Maps Division','MLS','LIbrary of Congress'),
(67,'Archivist','InfoSci','U.S. Army Corps of Engineers'),(68,'Employee Experience
Strategist / Human Centered Design','InfoSci','ALTA IT Services'),(69,'Database
Analyst Associate','InfoSci','General Dynamics Information Technology'),(70,'Data
Scientist, Analytics & Infereence','InfoSci','CodeAcademy'),(71,'2021 Summer Games
Internship','MLIS','Booz Allen Hamilton'),(72,'Data Analytics Fello','MLS','U.S.
Department of Transportation'),(73,'Cyber Crime Threat Intelligence
Internship','HCIM','FireEye, Inc.'),(74,'Program Support
Assistant','InfoSciSG','LIbrary of Congress'),(75,'Customer Experience
Intern','InfoSci','Amtrak'),(76,'API Developer Intern','MLIS','Amtrak'),
(77,'Archives & Exhibits Internship','InfoSci','National Comedy Center'),
(78,'Project Assistant','InfoSci','Wilmerhale Law Firm'),(79,'Digital Media
Specialist','HiLS','Prince George\'s Arts & Humanities Council'),(80,'Data
Analytics Fello','InfoSci','U.S. Department of Transportation'),
(81,'Librarian','MIM','Library of Congress'),(82,'Multiple Librarian
Positions','InfoSci','George Washington University Libraries'),(83,'UI/UX
Lead','HCIM','Hungry Harvest'),(84,'Emerging Talent Chase Data and Analytics
Undergraduate Summer\n Intern','InfoSci','JP Morgan Chase'),(85,'Cyber Security
Operations Intern','MLIS','Alteryx'),(86,'Product Management
Intern','InfoSci','Zoom'),(87,'Data Science Intern','InfoSci','SoFi'),(88,'MATLAB
Live Editor Summer Intern','MLIS','MathWorks'),(89,'Customer Experience -
Operations','MLS','Robinhood'),(90,'Digital Asset LIbrarian','InfoSci','Under
Armour'),(91,'Product Analyst, Data Science','InfoSci','Google'),(92,'Jr. Data
Analyst','InfoSci','Centura Health'),(93,'Social Media
Specialist','InfoSci','Easterseals Southern California'),(94,'Library Media
Specialist','MLIS','Anne Arundel County Public School'),(95,'Front-End
Developer','MLS','Persado'),(96,'Document Archivist','HCIM','Catalent'),
(97,'Technical Program Manager','InfoSciSG','Varsity Tutors'),(98,'IT Programmer
Analyst II','MLS','Maryland Department of Health'),(99,'IT Programmer Analyst
II','InfoSci','Maryland Department of Juvenile Services'),(100,'Adjuct Faculty -
Information Systems Instructor','HCIM','Anne Arundel Community College'),(101,'IT
Specialist (Systems Analyst)','InfoSci','U.S. Census Bureau'),(102,'Engineering
Development Group','InfoSci','MathWorks'),(103,'User Experience
Researcher','InfoSci','Robinhood');
/*!40000 ALTER TABLE `job_title_info` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `jobs_view`
--
DROP TABLE IF EXISTS `jobs_view`;
/*!50001 DROP VIEW IF EXISTS `jobs_view`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `jobs_view` AS SELECT
 1 AS `Company`,
 1 AS `sector`,
 1 AS `program`,
 1 AS `Company Size`,
 1 AS `Company Type`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `newsletter`
--
DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
 `job_id` int unsigned NOT NULL AUTO_INCREMENT,
 `job_title` varchar(80) DEFAULT NULL,
 `company_name` varchar(80) DEFAULT NULL,
 `position_type` varchar(80) DEFAULT NULL,
 `sector` varchar(80) DEFAULT NULL,
 `program` varchar(80) DEFAULT NULL,
 `newsletter_date` date DEFAULT NULL,
 `job_title_id` int unsigned NOT NULL,
 PRIMARY KEY (`job_id`),
 KEY `fk_newsletter_job_title_info1_idx` (`job_title_id`),
 CONSTRAINT `fk_newsletter_job_title_info1` FOREIGN KEY (`job_title_id`)
REFERENCES `job_title_info` (`job_title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `newsletter`
--
LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (1,'Business Analytics Intern','CBS
Interactive','Internship','Entertainment','infosci','2021-01-31',1),(2,'Summer
Technology Intern','Geico','Internship','Insurance','infosci','2021-01-31',2),
(3,'Discovery, Data & Technology Associate','Ankura Consulting
Group','Job','Consulting','infosci','2021-01-31',3),(4,'Cybersecurity Consulting
Staff','Ernst & Young','Job','Consulting','infosci','2021-01-31',4),(5,'Web
Developer: Advocating for Social Justice Issues','Rad
Campain','Job','Non-Profit/Web Design','infosci','2021-01-31',5),
(6,'Archivist','Apple','Job','Technology','infosci','2021-01-31',6),(7,'User
Experience Intern','Vivet','Internship','Digital Services/Software
Development','infosci','2002-07-21',7),(8,'Customer Operations/Data Management
Intern','Collins Aerospace/Ratheon','Internship','Defense','infosci','2002-07-
21',8),(9,'Library Services
Intern','Evidera','Internship','Consulting','infosci','2002-07-21',9),(10,'TRUE
Certification Market Research and Development Intern','U.S. Green Builting
Council','Internship','Non-profit/Sustainability','infosci','2002-07-21',10),
(11,'UX Researcher - Part Time','Celerity','Job','Consulting','infosci','2002-07-
21',11),(12,'Metadata Librarian','University of Maryland Libraries','Job','Higher
Education','infosci','2002-07-21',12),(13,'Information Security Rotation
Program','Rapid7','Job','Computer & Network Security','infosci','2002-07-21',13),
(14,'Jr. Software Developer','Northrop Grumman','Job','Defense','infosci','2002-07-
21',14),(15,'Data Science/Analytics
Intern','ManTech','Internship','Defense','infosci','2021-02-14',15),(16,'Analytics
Intern (IT)','Conagra Brands','Internship','Food Manufacturing','infosci','2021-02-
14',16),(17,'Summer Associate, Demand
Generation','AlphaSights','Internship','Information Services','infosci','2021-02-
14',17),(18,'IT Operations Associate','General Dynamics Information
Technology','Internship','IT & Services','infosci','2021-02-14',18),(19,'IT
Specialist (Application Software) (Recent Graduate)','US Department of
Energy','Job','Federal Government','infosci','2021-02-14',19),(20,'Pricing Strategy
Analyst','Conagra Brands','Job','Food Manufacturing','infosci','2021-02-14',20),
(21,'IT Functional Analyst','Maryland State Board of Elections','Job','State
Government','infosci','2021-02-14',21),(22,'Clinical Data Analyst','Medstar
Health','Job','Healthcare','infosci','2021-02-14',22),(23,'Summer
Intern','Xometru','Internship','Manufacturing','infosci','2021-02-21',23),
(24,'Programming Internship - Warrington','Activision','Internship','Video
Games','infosci','2021-02-21',24),(25,'Summer Intern - Technology
Governance','Federal Reserve Board','Internship','Federal Government /
Banking','infosci','2021-02-21',25),(26,'IT Intern','Enterprise Resource
Performance, Inc.','Internship','Management Consulting','infosci','2021-02-21',26),
(27,'Wildlife Protection Intern','Humane Society of the United
States','Internship','Nonprofit/Animal Welfare','infosci','2021-02-21',27),
(28,'Technology Risk Consulting Summer 2022
Intern','RSM','Internship','Audit/Tax/Consulting','infosci','2021-02-21',28),
(29,'Digital Maryland Intern','Enoch Pratt Free Library','Internship','Public
Library','infosci','2021-02-21',29),(30,'Corporate Research Library Intern','Analog
Devices Inc.','Internship','Semiconductor Manufacturing','infosci','2021-02-
21',30),(31,'UX Designer','Xometry','Job','Manufacturing','infosci','2021-02-
21',31),(32,'Associate Technical Consultant','srcLogic','Job','Software/Technical
Consulting','infosci','2021-02-21',32),(33,'Gameplay UI Engineer','Raven Software
(Subsidiary of Activision)','Job','Video Games','infosci','2021-02-21',33),
(34,'Market Intelligence & Insights Analyst, Executive Practice','Activision
Blizzard','Job','Video Games','infosci','2021-02-21',34),(35,'Information Security
Engineer','Unifirst','Job','Industrial Uniforms','infosci','2021-02-21',35),
(36,'eCommerce Digital Marketing Analytics Consultant','Nestle Purina','Job','Food
Manufacturing','infosci','2021-02-21',36),(37,'Digitization Archivist','State of
North Carolina Department of Natural and Cultural Resources','Job','State
Government','infosci','2021-02-21',37),(38,'Cataloging Librarian II','Southern
Maryland Regional Library Association','Job','','infosci','2021-02-21',38),
(39,'Preservation Digital Technology Internship','Library of
Congress','Internship','Federal Government/Libraries','infosci','2021-02-28',39),
(40,'Portfolio and Impact Analysis Intern','Capital Impact
Partners','Internship','Nonprofit/Financial Services','infosci','2021-02-28',40),
(41,'Social Media Intern','Enterprise Resrouce Performance,
Inc.','Internship','Management Consulting','infosci','2021-02-28',41),(42,'Software
Engineer Intern','Appian','Internship','Computing','infosci','2021-02-28',42),
(43,'Digital & Information Services Intern','Polaris
Industries','Internship','Vehicle Manufacturing','infosci','2021-02-28',43),
(44,'Optimization Analyst','Kaplan','Job','Education','infosci','2021-02-28',44),
(45,'Product Admin','Adobe','Job','Software','infosci','2021-02-28',45),
(46,'Information Architect III','WiSC Enterprises','Job','IT Contractor: Federal
Government','infosci','2021-02-28',46),(47,'Baltimore Project
Coordinator','Libraries Without Borders','Job','Nonprofit / Information
Services','infosci','2021-02-28',47),(48,'Associate Data Analyst - Custom
Analytics','Comscore','Job','Media Analytics','infosci','2021-02-28',48),
(49,'Student ZTrainee','NASA','Internship','Federal Government /
Aerospace','infosci','2003-07-21',49),(50,'UI/UX Intern','Reality
AI','Internship','Software / Instrumentation','infosci','2003-07-21',50),
(51,'Project Coordinator Intern','Vheda Health','Internship','Healthcare
Technology','infosci','2003-07-21',51),(52,'Digital Imaging Specialist','NARA:
National Archives & Records Administration','Job','Federal Government /
Archives','infosci','2003-07-21',52),(53,'Reporting & Analytics Lead','Helm
Services','Job','Consulting / FInance Tech','infosci','2003-07-21',53),(54,'Project
Manager Apprentice','IBM ','Job','Computer Hardware/IT Services','infosci','2003-
07-21',54),(55,'Data Engineer - Cloud Pak for Data','IBM ','Job','Computer
Hardware/IT Services','infosci','2003-07-21',55),(56,'UI/UX Designer','Capital
One','Job','Financial Services','infosci','2003-07-21',56),(57,'Contracts &
Administration Intern','ICF','Internship','Management Consulting','infosci','2021-
03-21',57),(58,'Health Sciences Business Analytics Intern','Nestle
Purina','Internship','Food Manufacturing','infosci','2021-03-21',58),
(59,'Intern','Rstudio','Internship','Software','infosci','2021-03-21',59),
(60,'Summer Field Operations Intern - Project
Management','Spectrum','Internship','Telecommunications','infosci','2021-03-
21',60),(61,'UX
Researcher','Spectrum','Internship','Telecommunications','infosci','2021-03-
21',61),(62,'Technical Information Specialist - Library Focus','Office of Naval
Intelligence','Job','Libraries / Federal Government','infosci','2021-03-21',62),
(63,'Web Developer / Software Developer','ICF','Job','Management
Consulting','infosci','2021-03-21',63),(64,'Business Intelligence
Lead','Nestle','Job','Food Manufacturing','infosci','2021-03-21',64),(65,'Archives
Technician','Library of Congress','Job','Libraries / Federal
Government','infosci','2021-03-21',65),(66,'Librarian - Geography and Maps
Division','LIbrary of Congress','Job','Libraries / Federal
Government','infosci','2021-03-21',66),(67,'Archivist','U.S. Army Corps of
Engineers','Job','','infosci','2021-03-21',67),(68,'Employee Experience
Strategist / Human Centered Design','ALTA IT
Services','Job','Insurance','infosci','2021-03-21',68),(69,'Database Analyst
Associate','General Dynamics Information Technology','Job','IT
Consulting','infosci','2021-03-21',69),(70,'Data Scientist, Analytics &
Infereence','CodeAcademy','Job','Technology Education','infosci','2021-03-21',70),
(71,'2021 Summer Games Internship','Booz Allen Hamilton','Internship','IT
Consulting','infosci','2021-03-28',71),(72,'Data Analytics Fello','U.S. Department
of Transportation','Internship','Federal Government','infosci','2021-03-28',72),
(73,'Cyber Crime Threat Intelligence Internship','FireEye,
Inc.','Internship','Cybersecurity','infosci','2021-03-28',73),(74,'Program Support
Assistant','LIbrary of Congress','Internship','Federal Government','infosci','2021-
03-28',74),(75,'Customer Experience
Intern','Amtrak','Internship','Transportation','infosci','2021-03-28',75),(76,'API
Developer Intern','Amtrak','Internship','Transportation','infosci','2021-03-
28',76),(77,'Archives & Exhibits Internship','National Comedy
Center','Internship','Nonprofit / Cultural Institution','infosci','2021-03-28',77),
(78,'Project Assistant','Wilmerhale Law Firm','Job','Law','infosci','2021-03-
28',78),(79,'Digital Media Specialist','Prince George\'s Arts & Humanities
Council','Job','Arts / Nonprofit','infosci','2021-03-28',79),(80,'Data Analytics
Fello','U.S. Department of Transportation','Job','Federal
Government','infosci','2021-03-28',80),(81,'Librarian','Library of
Congress','Job','Federal Government','infosci','2021-03-28',81),(82,'Multiple
Librarian Positions','George Washington University Libraries','Job','Academic
Libraries','infosci','2021-03-28',82),(83,'UI/UX Lead','Hungry Harvest','Job','Food
Delivery','infosci','2021-03-28',83),(84,'Emerging Talent Chase Data and Analytics
Undergraduate Summer\nIntern','JP Morgan
Chase','Internship','Finance','infosci','2004-04-21',84),(85,'Cyber Security
Operations Intern','Alteryx','Internship','Software','infosci','2004-04-21',85),
(86,'Product Management Intern','Zoom','Internship','Communications
Software','infosci','2004-04-21',86),(87,'Data Science
Intern','SoFi','Internship','Personal Finance','infosci','2004-04-21',87),
(88,'MATLAB Live Editor Summer
Intern','MathWorks','Internship','Software','infosci','2004-04-21',88),
(89,'Customer
 Experience - Operations','Robinhood','Internship','Financial
Tech','infosci','2004-04-21',89),(90,'Digital Asset LIbrarian','Under
Armour','Job','Sports Apparel','infosci','2004-04-21',90),(91,'Product Analyst,
Data Science','Google','Job','Information Technology','infosci','2004-04-21',91),
(92,'Jr. Data Analyst','Centura Health','Job','Healthcare
Services','infosci','2004-04-21',92),(93,'Social Media Specialist','Easterseals
Southern California','Job','Nonporfit / Disability Services','infosci','2004-04-
21',93),(94,'Library Media Specialist','Anne Arundel County Public
School','Job','Education','infosci','2004-04-21',94),(95,'Front-End
Developer','Persado','Job','Software','infosci','2004-04-21',95),(96,'Document
Archivist','Catalent','Job','Pharmaceuticals','infosci','2004-04-21',96),
(97,'Technical Program Manager','Varsity Tutors','Job','Online
Education','infosci','2004-04-21',97),(98,'IT Programmer Analyst II','Maryland
Department of Health','Job','State Government','infosci','2004-04-21',98),(99,'IT
Programmer Analyst II','Maryland Department of Juvenile Services','Job','State
Government','infosci','2004-04-21',99),(100,'Adjuct Faculty - Information Systems
Instructor','Anne Arundel Community College','Job','Higher
Education','infosci','2004-04-21',100),(101,'IT Specialist (Systems Analyst)','U.S.
Census Bureau','Job','Federal Government','infosci','2004-04-21',101),
(102,'Engineering Development Group','MathWorks','Job','Software','infosci','2004-
04-21',102),(103,'User Experience Researcher','Robinhood','Job','Financial
Tech','infosci','2004-04-21',103);
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `newsletter_has_drop_in_advising`
--
DROP TABLE IF EXISTS `newsletter_has_drop_in_advising`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_has_drop_in_advising` (
 `newsletter_advisingcol_id` int unsigned NOT NULL,
 `job_id` int unsigned NOT NULL,
 `advicing_id` int unsigned NOT NULL,
 PRIMARY KEY (`newsletter_advisingcol_id`),
 KEY `fk_newsletter_has_drop_in_advising_drop_in_advising1_idx` (`advicing_id`),
 KEY `fk_newsletter_has_drop_in_advising_newsletter1_idx` (`job_id`),
 CONSTRAINT `fk_newsletter_has_drop_in_advising_drop_in_advising1` FOREIGN KEY
(`advicing_id`) REFERENCES `drop_in_advising` (`advicing_id`),
 CONSTRAINT `fk_newsletter_has_drop_in_advising_newsletter1` FOREIGN KEY
(`job_id`) REFERENCES `newsletter` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `newsletter_has_drop_in_advising`
--
LOCK TABLES `newsletter_has_drop_in_advising` WRITE;
/*!40000 ALTER TABLE `newsletter_has_drop_in_advising` DISABLE KEYS */;
INSERT INTO `newsletter_has_drop_in_advising` VALUES (1,1,1),(2,2,2),(3,3,3),
(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),
(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),
(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),
(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),
(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),
(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),
(48,48,48),(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),
(55,55,55),(56,56,56),(57,57,57),(58,58,58),(59,59,59),(60,60,60),(61,61,61),
(62,62,62),(63,63,63),(64,64,64),(65,65,65),(66,66,66),(67,67,67),(68,68,68),
(69,69,69),(70,70,70),(71,71,71),(72,72,72),(73,73,73),(74,74,74),(75,75,75),
(76,76,76),(77,77,77),(78,78,78),(79,79,79),(80,80,80),(81,81,81),(82,82,82),
(83,83,83),(84,84,84),(85,85,85),(86,86,86),(87,87,87),(88,88,88),(89,89,75),
(90,90,65),(91,91,55),(92,92,43),(93,93,11),(94,94,28),(95,95,3),(96,96,33),
(97,97,47),(98,98,67),(99,99,20),(100,100,44),(101,101,82),(102,102,38),
(103,103,66);
/*!40000 ALTER TABLE `newsletter_has_drop_in_advising` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `newsletter_has_students`
--
DROP TABLE IF EXISTS `newsletter_has_students`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_has_students` (
 `job_id` int unsigned NOT NULL,
 `student_id` int unsigned NOT NULL,
 KEY `fk_newsletter_has_students_students1_idx` (`student_id`),
 KEY `fk_newsletter_has_students_newsletter1_idx` (`job_id`),
 CONSTRAINT `fk_job_id` FOREIGN KEY (`job_id`) REFERENCES `newsletter` (`job_id`),
 CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `students`
(`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `newsletter_has_students`
--
LOCK TABLES `newsletter_has_students` WRITE;
/*!40000 ALTER TABLE `newsletter_has_students` DISABLE KEYS */;
INSERT INTO `newsletter_has_students` VALUES (4,114544821),(83,114544939),
(2,114544933),(53,114544762),(92,114544223),(48,114544864),(53,114544758),
(1,114544988),(22,114544465),(98,114566877),(32,114977394),(54,114855775),
(45,114533987),(32,114799388),(38,114774978),(53,114899483),(91,114859499),
(90,114722114),(74,114893720),(100,114332995),(84,114885330),(64,114799389),
(40,114311249),(28,114533211),(25,114223400),(84,114998222),(99,114003999),
(95,114992883),(76,114927992),(72,114882838),(52,114222399),(43,115939892),
(19,114939029),(15,114009228),(8,112340992),(27,114002488),(43,114993958),
(81,112400393),(67,114998350),(63,112444024),(38,112440550),(90,114824893),
(38,114922047),(31,112952447),(36,112441149),(63,112410230),(11,111294858),
(10,110992849),(5,110248295),(47,114939293),(63,114939402),(8,115393562),
(74,120442992),(72,112443709),(61,119883857),(49,118945932),(27,119358382),
(64,110284837),(66,118030402),(77,119395303),(33,110305938),(39,113959382),
(22,103958203),(11,193958827),(84,919285702),(35,192840129),(9,113503948),
(4,102048282),(78,110385832),(43,100351720),(34,192937502),(62,192858302),
(65,102858372),(88,192800288),(81,100838282),(63,918285730),(24,192884022),
(23,192411830),(19,910385711),(14,102488285),(7,918740120),(22,112395828),
(84,119384820),(77,103882949),(5,108204829),(2,193882030),(54,188830201),
(7,848102820);
/*!40000 ALTER TABLE `newsletter_has_students` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `student_information`
--
DROP TABLE IF EXISTS `student_information`;
/*!50001 DROP VIEW IF EXISTS `student_information`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_information` AS SELECT
 1 AS `Student id`,
 1 AS `graduation year`,
 1 AS `Status`,
 1 AS `Job interest`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `student_view`
--
DROP TABLE IF EXISTS `student_view`;
/*!50001 DROP VIEW IF EXISTS `student_view`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_view` AS SELECT
 1 AS `Job ID`,
 1 AS `Job Title`,
 1 AS `Company Name`,
 1 AS `position`,
 1 AS `Date`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `students`
--
DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
 `student_id` int unsigned NOT NULL,
 `first_name` varchar(45) NOT NULL,
 `last_name` varchar(45) NOT NULL,
 `grad_semester` varchar(45) DEFAULT NULL,
 `grad_year` int DEFAULT NULL,
 `status` varchar(45) NOT NULL,
 `infosci_concentration` varchar(45) DEFAULT NULL,
 PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `students`
--
LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (100351720,'Patsy','Cline','Spring
2021',2021,'Job','InfoSci'),(100838282,'Dean','Wormer','Spring
2022',2022,'Internship','InfoSci'),(102048282,'Buddy','Holly','Spring
2022',2022,'Internship','InfoSci'),(102488285,'Babs','Jansen','Spring
2022',2022,'N/A','InfoSci'),(102858372,'Eric','Stratton','Spring
2022',2022,'N/A','HCIM'),(103882949,'The','Dude','Spring
2021',2021,'Job','InfoSci'),(103958203,'Tyra','Banks','Spring
2022',2022,'N/A','InfoSci'),(108204829,'Walter','Sobchak','Spring
2021',2021,'N/A','MLIS'),(110248295,'Kima','Greggs','Fall
2022',2022,'Internship','InfoSci'),(110284837,'Terry','Crews','Summer
2022',2022,'N/A','MLIS'),(110305938,'Howie','Mandel','Spring
2021',2021,'N/A','InfoSci'),(110385832,'Carl','Perkins','Spring
2020',2020,'N/A','InfoSci'),(110992849,'Cedric','Daniels','May
2022',2022,'N/A','HCIM'),(111294858,'Bunk','Moreland','May
2022',2022,'Internship/Part time','MLIS'),(112340992,'Maggie','Matthison','Spring
2020',2020,'Job','InfoSci'),(112395828,'Boone','Schoenstein','Spring
2021',2021,'Job','InfoSci'),(112400393,'Otto','During','Spring
2021',2021,'Job','InfoSci'),(112410230,'James','McNulty','December
2020',2020,'Job','MLIS'),(112440550,'John','Redmond','Spring
2021',2021,'Job','HCIM'),(112441149,'Danny','Galvez','December
2021',2021,'Job','MLIS'),(112443709,'Jimmy','Buffett','Spring
2022',2022,'N/A','HCIM'),(112444024,'Dennis','Boyd','Spring
2020',2020,'Job','InfoSci'),(112952447,'Fara','Sherazi','Spring
2021',2021,'Job','MLIS'),(113503948,'Elvis','Presley','Spring
2022',2022,'Job','InfoSci'),(113959382,'Mel','B','Spring 2012',2012,'N/A','MLS'),
(114002488,'Frances','Matthison','Spring 2022',2022,'Internship','InfoSci'),
(114003999,'Dana','Brody','Fall 2021',2021,'Internship','InfoSci'),
(114009228,'Frank','Matthison','Fall 2022',2022,'Internship','InfoSci'),
(114222399,'Mira','Berenson','Spring 2019',2019,'Job','MLIS'),
(114223400,'Jessica','Brody','Spring 2021',2021,'Job','InfoSci'),
(114311249,'Nicholas','Brody','Spring 2020',2020,'Job','InfoSci'),
(114332995,'Saul','Berenson','Spring 2021',2021,'Job','InfoSci'),
(114533211,'Max','Piotrowski','Spring 2022',2022,'Internship','InfoSci'),
(114533987,'Steve','Harrington','Spring 2020',2020,'Full time','LBSC'),
(114544223,'Will','Byers','Spring 2021',2021,'Internship','InforSci'),
(114544465,'Lucas','Sinclair','Fall 2020',2020,'Internship/Full time','InforSci'),
(114544758,'Joyce','Byers','Spring 2020',2020,'Full time','HCI'),
(114544762,'Eleven','Experiment','Fall 2020',2020,'Internship','InforSci'),
(114544821,'Ziggy','Stardust','Fall 2020',2020,'Internship','Undecided'),
(114544864,'Jonathan','Byers','Spring 2021',2021,'Internship/Part time','MIM'),
(114544933,'Mike','Wheeler','Spring 2021',2021,'Internship','InforSci'),
(114544939,'David','Bowie','Fall 2020',2020,'Internship','InforSci'),
(114544988,'Jim','Hopper','Fall 2020',2020,'Internship','InforSci'),
(114566877,'Dustin','Henderson','Spring 2021',2021,'Internship','InforSci'),
(114722114,'Murray','Bauman','Spring 2022',2022,'Internship','InfoSci'),
(114774978,'Max','Mayfield','Spring 2021',2021,'Internship/Full time','InfoSci'),
(114799388,'Robin','Buckley','',2022,'Internship','InfoSci'),
(114799389,'Dar','Adal','Fall 2021',2021,'Internship','InfoSci'),
(114824893,'Sekou','Bah','December 2021',2021,'Job','MLIS'),
(114855775,'Erica','Sinclair','Fall 2020',2020,'Full time','LBS'),
(114859499,'Karen','Wheeler','Spring 2022',2022,'Internship','HCIM'),
(114882838,'Virgil','Piotrowski','Spring 2021',2021,'Job','InfoSci'),
(114885330,'Peter','Quinn','Spring 2021',2021,'Job','MLIS'),
(114893720,'Carrie','Matthison','Spring 2022',2022,'N/A','MLIS'),
(114899483,'Billy','Hargrove','Fall 2021',2021,'Field study','MLIS'),
(114922047,'Tom','Walker','Spring 2021',2021,'Job','MLIS'),
(114927992,'David','Estes','Spring 2020',2020,'Job','InfoSci'),
(114939029,'Issa','Nazir','Spring 2021',2021,'Job','InfoSci'),
(114939293,'Stringer','Bell','Spring 2022',2022,'Internship','InfoSci'),
(114939402,'Omar','Little','Spring 2021',2021,'Job','HCIM'),
(114977394,'Nancy','Wheeler','Spring 2022',2022,'Internship','PhD'),
(114992883,'Mike','Faber','Fall 2021',2021,'Internship','InfoSci'),
(114993958,'Majid','Javadi','',2022,'Internship','InfoSci'),
(114998222,'Chris','Brody','Spring 2020',2020,'job','InfoSci'),
(114998350,'Martha','Boyd','Spring 2022',2022,'Internship','InfoSci'),
(115393562,'Olivia','Benson','Spring 2022',2022,'N/A','MLIS'),
(115939892,'Abu','Nazir','Spring 2020',2020,'Job','InfoSci'),
(118030402,'Simon','Cowell','Fall 2021',2021,'N/A','MIM'),
(118945932,'Georgia','Hardstark','Spring 2022',2022,'N/A','InfoSci'),
(119358382,'Karen','Kilgariff','Spring 2021',2021,'Job','InfoSci'),
(119384820,'Otis','Day','Spring 2021',2021,'N/A','HCIM'),
(119395303,'Heidi','Klum','Spring 2022',2022,'Internship','InfoSci'),
(119883857,'Amy','Winehouse','Spring 2021',2021,'N/A','InfoSci'),
(120442992,'Elliott','Stabler','Spring 2022',2022,'Internship','InfoSci'),
(188830201,'Maude','Lebowski','Spring 2022',2022,'N/A','InfoSci'),
(192411830,'Doug','Neidermeyer','Spring 2021',2021,'Job','InfoSci'),
(192800288,'Robert','Hoover','Spring 2021',2021,'Job','InfoSciSG'),
(192840129,'Shin','Lim','Spring 2012',2012,'Job','MLS'),
(192858302,'Bluto','Blutarski','Spring 2001',2001,'Job','MLS'),
(192884022,'Kent','Dorfman','Spring 2021',2021,'Job','InfoSci'),
(192937502,'Gene','Vincent','Fall 2023',2023,'N/A','MLIS'),
(193882030,'Donny','Kerabatsos','Spring 2022',2022,'Internship','InfoSci'),
(193958827,'Grace','Vanderwal','Spring 2021',2021,'Job','HCIM'),
(848102820,'Jesus','Quintana','Spring 2020',2020,'N/A','MLIS'),
(910385711,'Mandy','Pepperidge','Spring 2021',2021,'N/A','HiLS'),
(918285730,'Larry','Kroger','Spring 2021',2021,'N/A','MLIS'),
(918740120,'D','Day','Spring 2021',2021,'N/A','MIM'),
(919285702,'Kodi','Lee','Spring 2022',2022,'Internship','InfoSci');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Final view structure for view `advisor_view`
--
/*!50001 DROP VIEW IF EXISTS `advisor_view`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `advisor_view` AS select `students`.`student_id` AS `Studnet
id`,`students`.`first_name` AS `Student First Name`,`students`.`last_name` AS
`Student Last Name`,`job_title_info`.`job_title` AS `Job
Title`,`job_title_info`.`employer` AS `employer` from (`students` join
`job_title_info`) where (`job_title_info`.`job_title` = 'Business Analytics
Intern') */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `appointment`
--
/*!50001 DROP VIEW IF EXISTS `appointment`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `appointment` AS select `drop_in_advising`.`advicing_id` AS `Advicing
ID`,`drop_in_advising`.`advisor_id` AS `Advisor id`,`drop_in_advising`.`format` AS
`Format`,`career_services`.`service_description` AS `Required service` from
(`drop_in_advising` join `career_services` on((`drop_in_advising`.`service_id` =
`career_services`.`service_id`))) where (`drop_in_advising`.`service_id` = 3) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `jobs_view`
--
/*!50001 DROP VIEW IF EXISTS `jobs_view`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `jobs_view` AS select count(`company`.`company_name`) AS
`Company`,`newsletter`.`sector` AS `sector`,`newsletter`.`program` AS
`program`,`company`.`size` AS `Company Size`,`company`.`type` AS `Company Type`
from ((`students` join `company`) join `newsletter`) group by
`company`.`company_name` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `student_information`
--
/*!50001 DROP VIEW IF EXISTS `student_information`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_information` AS select `students`.`student_id` AS `Student
id`,`students`.`grad_year` AS `graduation year`,`students`.`status` AS
`Status`,`newsletter`.`job_title` AS `Job interest` from (`students` join
`newsletter`) where `students`.`student_id` in (select
`newsletter_has_students`.`student_id` from `newsletter_has_students`) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `student_view`
--
/*!50001 DROP VIEW IF EXISTS `student_view`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_view` AS select `newsletter`.`job_id` AS `Job
ID`,`newsletter`.`job_title` AS `Job Title`,`newsletter`.`company_name` AS `Company
Name`,`newsletter`.`position_type` AS `position`,`newsletter`.`newsletter_date` AS
`Date` from `newsletter` group by `newsletter`.`company_name` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2021-08-19 21:24:05