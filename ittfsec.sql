-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: ittfsec
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agreement`
--

DROP TABLE IF EXISTS `agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agreement` (
  `agreement_id` int(11) NOT NULL AUTO_INCREMENT,
  `effective_date` date DEFAULT NULL,
  `signer` varchar(20) DEFAULT NULL,
  `scope` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreement`
--

LOCK TABLES `agreement` WRITE;
/*!40000 ALTER TABLE `agreement` DISABLE KEYS */;
INSERT INTO `agreement` VALUES (99996,'2016-08-17','Meherg Inc.','230.6.13.255'),(99997,'2016-03-25','Farnbach LLC','23.96.23.255'),(99999,'2016-12-05','Fletcher Enterprise','123.236.123.255'),(100002,'2017-04-21','Moss Industries','10.23.43.20'),(100003,'2017-04-20','Moss Industries','192.168.0.0/32'),(100004,'2021-02-02','Moss Industries','10.20.32.3'),(100005,'3222-03-23','Fletcher Enterprise','localhost');
/*!40000 ALTER TABLE `agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `app_type` varchar(20) DEFAULT NULL,
  `app_name` varchar(20) DEFAULT NULL,
  `app_version` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES ('Web App','FantasticApp','12.0983.324'),('Windows App','GreatApp','0.0293.28384');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attack`
--

DROP TABLE IF EXISTS `attack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attack` (
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attack`
--

LOCK TABLES `attack` WRITE;
/*!40000 ALTER TABLE `attack` DISABLE KEYS */;
INSERT INTO `attack` VALUES ('MITM'),('Buffer Overflow');
/*!40000 ALTER TABLE `attack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buffer_overflow`
--

DROP TABLE IF EXISTS `buffer_overflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buffer_overflow` (
  `mem_space` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buffer_overflow`
--

LOCK TABLES `buffer_overflow` WRITE;
/*!40000 ALTER TABLE `buffer_overflow` DISABLE KEYS */;
INSERT INTO `buffer_overflow` VALUES ('0x889304'),('0xFFF000'),('0x237485');
/*!40000 ALTER TABLE `buffer_overflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` varchar(5) DEFAULT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('00001','Meherg Inc.','cm23','itrocks!'),('00002','Moss Industries','bmoss6','mostsecurepassword'),('00003','Fletcher Enterprise','kfletch4','mypassword'),('0005','Farnbach LLC','hansf','fdsmaojeq9e8qa89wqafw0');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain` (
  `domain_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` VALUES ('moss.com'),('meherg.net');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exploit`
--

DROP TABLE IF EXISTS `exploit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exploit` (
  `exploit_name` varchar(20) DEFAULT NULL,
  `behavior` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exploit`
--

LOCK TABLES `exploit` WRITE;
/*!40000 ALTER TABLE `exploit` DISABLE KEYS */;
INSERT INTO `exploit` VALUES ('Heartbleed','Vulnerability in the popular OpenSSL cryptographic software library'),('Shellshock','Security bugs in the Unix Bash shell');
/*!40000 ALTER TABLE `exploit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hacker`
--

DROP TABLE IF EXISTS `hacker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hacker` (
  `hacker_id` varchar(5) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hacker`
--

LOCK TABLES `hacker` WRITE;
/*!40000 ALTER TABLE `hacker` DISABLE KEYS */;
INSERT INTO `hacker` VALUES ('31337','31337'),('65489','Mr. Robot');
/*!40000 ALTER TABLE `hacker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kernel`
--

DROP TABLE IF EXISTS `kernel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kernel` (
  `kernel_type` varchar(15) DEFAULT NULL,
  `kernel_name` varchar(20) DEFAULT NULL,
  `kernel_version` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kernel`
--

LOCK TABLES `kernel` WRITE;
/*!40000 ALTER TABLE `kernel` DISABLE KEYS */;
INSERT INTO `kernel` VALUES ('Monolithic','Unix','6.4'),('Microkernel','Mac OS','8.9');
/*!40000 ALTER TABLE `kernel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitm`
--

DROP TABLE IF EXISTS `mitm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mitm` (
  `session` varchar(20) DEFAULT NULL,
  `client` varchar(20) DEFAULT NULL,
  `server` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitm`
--

LOCK TABLES `mitm` WRITE;
/*!40000 ALTER TABLE `mitm` DISABLE KEYS */;
INSERT INTO `mitm` VALUES ('123454gfd','Firefox','byu.edu'),('pphsessid29309432','Chrome','espn.com');
/*!40000 ALTER TABLE `mitm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network` (
  `cidr` varchar(15) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES ('123.236.123.255','Enterprise'),('23.96.23.255','Personal');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operating_system`
--

DROP TABLE IF EXISTS `operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operating_system` (
  `os_type` varchar(15) DEFAULT NULL,
  `os_name` varchar(15) DEFAULT NULL,
  `os_version` varchar(20) DEFAULT NULL,
  `os_architecture` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operating_system`
--

LOCK TABLES `operating_system` WRITE;
/*!40000 ALTER TABLE `operating_system` DISABLE KEYS */;
INSERT INTO `operating_system` VALUES ('DOS','Windows 10','10.2304.503','x86'),('MAC','OSX','304.304','x86'),('LINUX','Ubuntu','16.04','x86');
/*!40000 ALTER TABLE `operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege_escalation`
--

DROP TABLE IF EXISTS `privilege_escalation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege_escalation` (
  `escalation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege_escalation`
--

LOCK TABLES `privilege_escalation` WRITE;
/*!40000 ALTER TABLE `privilege_escalation` DISABLE KEYS */;
INSERT INTO `privilege_escalation` VALUES ('Dirty Cow');
/*!40000 ALTER TABLE `privilege_escalation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `agreement_id` varchar(120) DEFAULT NULL,
  `vulnerability` varchar(13) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES ('99999','CVE-2015-0089','Change all passwords','Open',1),('99996','CVE-2017-0321','remove heartbleed vulnerability','Remediated',2),('99996','CVE-2013-0072','Prevent XORS','Remediated',2),('99996','CVE-2013-0042','SSL Termination','Open',2),('99996','CVE-2013-0052','RDP vulnerability','Open',2),('99996','CVE-2013-0021','Change default SSH passwords','Open',2),('99996','CVE-2012-0152','XP server vulnerability','Remediated',2),('99996','CVE-2010-0132','Default apache credentials','Open',2),('99996','CVE-2010-232','SSH Encryption is weak','Remediated',2),('99996','CVE-2010-231','Passwords Weak','Remediated',2),('100003','test','test','Remediated',4),('100003','Hey','hey','Remediated',4),('99999','Hey','you','Open',1),('100005','test','test','Open',6);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_analyst`
--

DROP TABLE IF EXISTS `security_analyst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_analyst` (
  `sec_name` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_analyst`
--

LOCK TABLES `security_analyst` WRITE;
/*!40000 ALTER TABLE `security_analyst` DISABLE KEYS */;
INSERT INTO `security_analyst` VALUES ('Kyle','mypassword','kfletch',1),('Cameron','itrocks!','cm45',2),('Blake','mostsecurepassword','bmoss43',3),('Hans','fdsmaojeq9e8qa89wqafw0','hansf',4),('joe','1234','jm43',5),('frank','123456','f45',6);
/*!40000 ALTER TABLE `security_analyst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sql_injection`
--

DROP TABLE IF EXISTS `sql_injection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql_injection` (
  `statement` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sql_injection`
--

LOCK TABLES `sql_injection` WRITE;
/*!40000 ALTER TABLE `sql_injection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_injection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subnet`
--

DROP TABLE IF EXISTS `subnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subnet` (
  `subnet_cidr` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subnet`
--

LOCK TABLES `subnet` WRITE;
/*!40000 ALTER TABLE `subnet` DISABLE KEYS */;
INSERT INTO `subnet` VALUES ('/24'),('/30'),('/32');
/*!40000 ALTER TABLE `subnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system` (
  `mac` varchar(53) DEFAULT NULL,
  `function` varchar(20) DEFAULT NULL,
  `system_architecture` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES ('00:0a:95:9d:68:16','ethernet','x86'),('00:0a:99:dE:08:25','wifi','x86');
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `user_group` varchar(20) DEFAULT NULL,
  `privilege` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Kaylee','Basic user','User','thisisapassword'),('CJ','Admin','Root','thisisamuchmorcomplicatedpassword');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vulnerability`
--

DROP TABLE IF EXISTS `vulnerability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vulnerability` (
  `cve` varchar(13) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `discover_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vulnerability`
--

LOCK TABLES `vulnerability` WRITE;
/*!40000 ALTER TABLE `vulnerability` DISABLE KEYS */;
INSERT INTO `vulnerability` VALUES ('CVE-2015-0089','Windows','2015-12-05'),('CVE-2017-0399','Windows','2017-10-15'),('CVE-2016-0202','Windows','2016-02-25');
/*!40000 ALTER TABLE `vulnerability` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-06 13:01:29
