CREATE DATABASE  IF NOT EXISTS `edm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `edm`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: edm
-- ------------------------------------------------------
-- Server version	5.0.17-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `attacker`
--

DROP TABLE IF EXISTS `attacker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attacker` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `sk` text,
  `dt` text,
  `attacktype` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacker`
--

LOCK TABLES `attacker` WRITE;
/*!40000 ALTER TABLE `attacker` DISABLE KEYS */;
INSERT INTO `attacker` VALUES (1,'arun','cn.jsp','593fd0f53ab8e64da9fff0559c8b71e0875','04/10/2016   16:41:22','Trapdoor Missmatch'),(2,'arun','cn.jsp','ja95v7jt4m8k3p','04/10/2016   16:41:29','Content Key Attack'),(3,'arun','cn.jsp','[B@f65b','04/10/2016   16:41:35','Secret Key Attack'),(4,'arun','check.jsp','703cbae2a5a9e6066f78cb2a8c55bab602711da3','04/10/2016   18:30:37','Trapdoor Missmatch'),(5,'arun','check.jsp','703cbae2a5a9e6066f78cb2a8c55bab602711da3','04/10/2016   18:31:56','Trapdoor Missmatch'),(6,'arun','oauth.jsp','-33c51a89f37aeb79cd408f75d468286f33081','04/10/2016   18:49:03','Trapdoor Missmatch'),(7,'arun','oauth.jsp','-33c51a89f37aeb79cd408f75d468286f33081','04/10/2016   18:49:07','Trapdoor Missmatch'),(8,'arun','oauth.jsp','hz74o1ay0b6k0j','04/10/2016   18:49:13','Content Key Attack'),(9,'arun','oauth.jsp','[B@a22e','04/10/2016   18:49:20','Secret Key Attack'),(10,'Attacker','file.jsp','-4eedad183c088f87f9c0ebaabe81f24c0b2568a0','04/10/2016   18:56:54','Content Attack'),(11,'Attacker','co.jsp','7d40e781a2ddcbe74e217ac271ecb0d13f259013','13/10/2016   18:24:23','Content Attack'),(12,'Attacker','KeyGen.java','-247edf9fb698cf1f7dc10ae64dd950679ba3719e','14/10/2016   14:07:34','Content Attack');
/*!40000 ALTER TABLE `attacker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `owner` text,
  `trapdoor` text,
  `audit_status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (1,'cn.jsp','charan','703cbae2a5a9e6066f78cb2a8c55bab602711da3','Not Safe'),(2,'co.jsp','charan','7d40e781a2ddcbe74e217ac271ecb0d13f259013','Recovered'),(3,'KeyGen.java','Manjunath','-247edf9fb698cf1f7dc10ae64dd950679ba3719e','Recovered');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud`
--

DROP TABLE IF EXISTS `cloud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud`
--

LOCK TABLES `cloud` WRITE;
/*!40000 ALTER TABLE `cloud` DISABLE KEYS */;
INSERT INTO `cloud` VALUES ('cloud','cloud');
/*!40000 ALTER TABLE `cloud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloudserver`
--

DROP TABLE IF EXISTS `cloudserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloudserver` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ct` text,
  `trapdoor` text,
  `sk` text,
  `rank` int(11) default NULL,
  `dt` text,
  `downer` text,
  `enckey` text,
  `dupli_check` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloudserver`
--

LOCK TABLES `cloudserver` WRITE;
/*!40000 ALTER TABLE `cloudserver` DISABLE KEYS */;
INSERT INTO `cloudserver` VALUES (32,'co.jsp','PCVAIHBhZ2UgaW1wb3J0PSJqYXZhLnNxbC4qIiU+DQo8JUAgcGFnZSBpbXBvcnQ9ImphdmEudXRpbC4qIiAlPg0KPCUNCglDb25uZWN0aW9uIGNvbm5lY3Rpb24gPSBudWxsOw0KIAl0cnkgew0KICAgICANCg0KCSAgCUNsYXNzLmZvck5hbWUoImNvbS5teXNxbC5qZGJjLkRyaXZlciIpOwkNCgkJY29ubmVjdGlvbiA9IERyaXZlck1hbmFnZXIuZ2V0Q29ubmVjdGlvbigiamRiYzpteXNxbDovL2xvY2FsaG9zdDozMzA2L2VkbSIsInJvb3QiLCJyb290Iik7DQogICAgICAJU3RyaW5nIHNxbD0iIjsNCg0KCX0NCgljYXRjaChFeGNlcHRpb24gZSkNCgl7DQoJCVN5c3RlbS5vdXQucHJpbnRsbihlKTsNCgl9DQolPg==','593fd0f53ab8e64da9fff0559c8b71e0875c511','[B@1a8bd74',2,'MTMvMTAvMjAxNiAgIDE3OjE3OjQz','charan','cz20m6fl0w6a2y9j','Verified'),(34,'cc.jsp','Y28uanNw','Shared','[B@1a8bd74',0,'MTMvMTAvMjAxNiAgIDE4OjAxOjEz','kumar','cz20m6fl0w6a2y9j','Shared'),(36,'connect.jsp','Y28uanNw','Shared','[B@1a8bd74',5,'MTMvMTAvMjAxNiAgIDE4OjE4OjUw','kiran','cz20m6fl0w6a2y9j','Shared'),(37,'sat.jsp','PHRpdGxlPkF1dGhlbnRpY2F0aW9uIFBhZ2U8L3RpdGxlPg0KPCVAIHBhZ2UgbGFuZ3VhZ2U9ImphdmEiIGNvbnRlbnRUeXBlPSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9SVNPLTg4NTktMSIJcGFnZUVuY29kaW5nPSJJU08tODg1OS0xIiU+DQo8JUBwYWdlIGltcG9ydD0iamF2YS51dGlsLioiJT4NCjwlQCBpbmNsdWRlIGZpbGU9ImNvbm5lY3QuanNwIiU+DQo8JUBwYWdlCWltcG9ydD0iamF2YS51dGlsLiosamF2YS5zZWN1cml0eS5LZXksamF2YS51dGlsLlJhbmRvbSxqYXZheC5jcnlwdG8uQ2lwaGVyLGphdmF4LmNyeXB0by5zcGVjLlNlY3JldEtleVNwZWMsb3JnLmJvdW5jeWNhc3RsZS51dGlsLmVuY29kZXJzLkJhc2U2NCIlPiANCjwlQCBwYWdlIGltcG9ydD0iamF2YS5zcWwuKixqYXZhLnV0aWwuUmFuZG9tLGphdmEuaW8uUHJpbnRTdHJlYW0samF2YS5pby5GaWxlT3V0cHV0U3RyZWFtLGphdmEuaW8uRmlsZUlucHV0U3RyZWFtLGphdmEuc2VjdXJpdHkuRGlnZXN0SW5wdXRTdHJlYW0samF2YS5tYXRoLkJpZ0ludGVnZXIsamF2YS5zZWN1cml0eS5NZXNzYWdlRGlnZXN0LGphdmEuaW8uQnVmZmVyZWRJbnB1dFN0cmVhbSIlPg0KPCVAIHBhZ2UgaW1wb3J0PSJqYXZhLnNlY3VyaXR5LktleSxqYXZhLnNlY3VyaXR5LktleVBhaXIsamF2YS5zZWN1cml0eS5LZXlQYWlyR2VuZXJhdG9yLGphdmF4LmNyeXB0by5DaXBoZXIiJT4NCjwlQHBhZ2UJaW1wb3J0PSJqYXZhLnV0aWwuKixqYXZhLnRleHQuU2ltcGxlRGF0ZUZvcm1hdCxqYXZhLnV0aWwuRGF0ZSxqYXZhLmlvLkZpbGVJbnB1dFN0cmVhbSxqYXZhLmlvLkZpbGVPdXRwdXRTdHJlYW0samF2YS5pby5QcmludFN0cmVhbSIlPg0KDQo8JQ0KCVN0cmluZyBuYW1lID0gcmVxdWVzdC5nZXRQYXJhbWV0ZXIoInVzZXJpZCIpOw0KCVN0cmluZyBwYXNzID0gcmVxdWVzdC5nZXRQYXJhbWV0ZXIoInBhc3MiKTsNCg0KCXRyeSB7DQoNCgkJU3RyaW5nIHNxbCA9ICJTRUxFQ1QgKiBGUk9NIGNsb3VkIHdoZXJlIG5hbWU9JyIgKyBuYW1lKyAiJyBhbmQgcGFzcz0nIiArIHBhc3MgKyAiJyAiOw0KCQlTdGF0ZW1lbnQgc3RtdCA9IGNvbm5lY3Rpb24uY3JlYXRlU3RhdGVtZW50KCk7DQoJCVJlc3VsdFNldCBycyA9IHN0bXQuZXhlY3V0ZVF1ZXJ5KHNxbCk7DQoNCgkJaWYgKHJzLm5leHQoKT09dHJ1ZSkNCgkJew0KCQkJcmVzcG9uc2Uuc2VuZFJlZGlyZWN0KCJDX01haW4uanNwIik7DQoJCX0NCgkJIGVsc2UgDQoJCXsNCgkJCXJlc3BvbnNlLnNlbmRSZWRpcmVjdCgid3Jvbmdsb2dpbi5odG1sIik7DQoJCX0NCg0KCX0gDQoJY2F0Y2ggKEV4Y2VwdGlvbiBlKQ0KCXsNCgkJb3V0LnByaW50KGUpOw0KCQllLnByaW50U3RhY2tUcmFjZSgpOw0KCX0NCiU+DQoNCg==','-3263caaad99bc354e6c9dd57f85e43139296de83','[B@172aa3f',4,'MTMvMTAvMjAxNiAgIDE4OjE5OjI2','kiran','pa60p1uw5f0u2p5u','Verified'),(38,'aut.jsp','c2F0LmpzcA==','Shared','[B@172aa3f',0,'MTMvMTAvMjAxNiAgIDE4OjIwOjE1','kumar','pa60p1uw5f0u2p5u','Shared'),(40,'IPSpoof.java','aW1wb3J0IGphdmEuYXd0Lio7DQppbXBvcnQgamF2YS5hd3QuZXZlbnQuQWN0aW9uRXZlbnQ7DQppbXBvcnQgamF2YS5hd3QuZXZlbnQuQWN0aW9uTGlzdGVuZXI7DQppbXBvcnQgamF2YS5hd3QuZXZlbnQuSXRlbUxpc3RlbmVyOw0KaW1wb3J0IGphdmEuaW8uRGF0YUlucHV0U3RyZWFtOw0KaW1wb3J0IGphdmEuaW8uRGF0YU91dHB1dFN0cmVhbTsNCmltcG9ydCBqYXZhLm5ldC5JbmV0QWRkcmVzczsNCmltcG9ydCBqYXZhLm5ldC5TZXJ2ZXJTb2NrZXQ7DQppbXBvcnQgamF2YS5uZXQuU29ja2V0Ow0KaW1wb3J0IGphdmEuc3FsLkNvbm5lY3Rpb247DQppbXBvcnQgamF2YXguc3dpbmcuKjsNCg0KDQpwdWJsaWMgY2xhc3MgSVBTcG9vZmVyIGV4dGVuZHMgSkZyYW1lIGltcGxlbWVudHMgQWN0aW9uTGlzdGVuZXINCnsNCglKUGFuZWwgcDE7DQoJSkxhYmVsIGwxLGwyLGwzOw0KCUpUZXh0RmllbGQgdDEsdDI7DQoJSlRleHRBcmVhIHRhOw0KCUpTY3JvbGxQYW5lIHBhbmU7DQoJSkJ1dHRvbiBiMSxiMjsNCglTdHJpbmcga2V5V29yZCA9ICJlZjUwYTBlZjJjM2UzYTVmZGY4MDNhZTk3NTJjOGM2NiI7DQoJDQoJSkNvbWJvQm94IGMxLGMyOw0KCQ0KCXB1YmxpYyBGb250IGYxID0gbmV3IEZvbnQoIlRpbWVzIG5ldyByb21hbiIsIEZvbnQuQk9MRCwgMjUpOw0KCXB1YmxpYyBGb250IGYyID0gbmV3IEZvbnQoIlRpbWVzIG5ldyByb21hbiIsIEZvbnQuQk9MRCwgMTUpOw0KCQ0KCUlQU3Bvb2ZlcigpDQoJew0KCQlwMT1uZXcgSlBhbmVsKCk7DQoJCXAxLnNldExheW91dChudWxsKTsNCgkJcDEuc2V0QmFja2dyb3VuZChDb2xvci5yZWQpOw0KCQlzZXRUaXRsZSgiSVAgU1BPT0ZFUiA6OiBQYXNzaXZlIElQIFRyYWNlYmFjazogRGlzY2xvc2luZyB0aGUgTG9jYXRpb25zIG9mIElQIFNwb29mZXJzIEZyb20gUGF0aCBCYWNrc2NhdHRlciIpOw0KCQkNCgkgSW1hZ2VJY29uIGJhbm5lciA9IG5ldyBJbWFnZUljb24odGhpcy5nZXRDbGFzcygpLmdldFJlc291cmNlKCJBdHRhY2tlcjguZ2lmIikpOw0KCQkgSkxhYmVsIHRpdGxlID0gbmV3IEpMYWJlbCgpOw0KCQkgdGl0bGUuc2V0SWNvbihiYW5uZXIpOw0KCQkgdGl0bGUuc2V0Qm91bmRzKDE1MCwgMCwxMjAsMTIwKTsNCgkJDQoJCQ0KCQlsMT1uZXcgSkxhYmVsKCJTZWxlY3QgQ2x1c3RlciA6Iik7DQoJCWwxLnNldEZvbnQoZjIpOw0KCQlsMS5zZXRGb3JlZ3JvdW5kKENvbG9yLndoaXRlKTsNCgkJbDEuc2V0Qm91bmRzKDkwLDEwMCwxMTAsMzApOw0KCQkNCgkJDQoJCWwyPW5ldyBKTGFiZWwoIkRlc2l0IElQIik7DQoJCWwyLnNldEZvbnQoZjIpOw0KCQlsMi5zZXRGb3JlZ3JvdW5kKENvbG9yLndoaXRlKTsNCgkJbDIuc2V0Qm91bmRzKDkwLDE1MCwxMDAsMzApOw0KCQkNCgkJbDM9bmV3IEpMYWJlbCgiSVAgQWRkcmVzcyAiKTsNCgkJbDMuc2V0Rm9udChmMik7DQoJCWwzLnNldEZvcmVncm91bmQoQ29sb3Iud2hpdGUpOw0KCQlsMy5zZXRCb3VuZHMoOTAsMjAwLDEwMCwzMCk7DQoJCQ0KCQl0MT1uZXcgSlRleHRGaWVsZCgpOw0KCQl0MS5zZXRCb3VuZHMoMjEwLDIwMCwxMDAsMjUpOw0KLy8JCXQyPW5ldyBKVGV4dEZpZWxkKCk7DQovLwkJdDIuc2V0Qm91bmRzKDIxMCwxNTAsMTAwLDI1KTsNCgkJDQoJCWMxPW5ldyBKQ29tYm9Cb3goKTsNCgkJYzEuYWRkSXRlbSgiQ0hPT1NFIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXIxIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXIyIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXIzIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXI0Iik7DQoJCWMxLnNldEJvdW5kcygyMTAsMTAwLDEwMCwyNSk7DQoJCQ0KCQljMj1uZXcgSkNvbWJvQm94KCk7DQoJCWMyLmFkZEl0ZW0oIk5vZGU1Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU2Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU3Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU4Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU5Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGUxMCIpOw0KCQkNCgkJYzEuYWRkQWN0aW9uTGlzdGVuZXIodGhpcyk7DQoJCQ0KCQljMi5zZXRCb3VuZHMoMjEwLDE1MCwxMDAsMjUpOw0KCQkNCgkJYjE9bmV3IEpCdXR0b24oIkdldCBJUCBBZGRyZXNzIik7DQoJCWIxLnNldEJvdW5kcyg3MCwzMzUsMTMwLDI1KTsNCgkJDQoJCWIyPW5ldyBKQnV0dG9uKCJNb2RpZnkiKTsNCgkJYjIuc2V0Qm91bmRzKDIxMCwzMzUsMTAwLDI1KTsNCgkJDQoJCQ0KCQ0KCQkNCgkJYjEuYWRkQWN0aW9uTGlzdGVuZXIodGhpcyk7DQoJCWIyLmFkZEFjdGlvbkxpc3RlbmVyKHRoaXMpOw0KCQkNCgkJDQoJDQovLwkJcDEuYWRkKGwxKTsNCgkJcDEuYWRkKGwyKTsNCi8vCQlwMS5hZGQoYzEpOw0KCQlwMS5hZGQodDEpOw0KLy8JCXAxLmFkZCh0Mik7DQoJCXAxLmFkZChiMSk7cDEuYWRkKGwzKTsNCgkJcDEuYWRkKGMyKTsNCgkJcDEuYWRkKGIyKTsNCgkJcDEuYWRkKHRpdGxlKTsNCgkJYWRkKHAxKTsNCgkJc2V0U2l6ZSg0MTAsNDYwKTsNCgkJc2V0VmlzaWJsZSh0cnVlKTsNCgkJDQoJCQ0KCX0NCgkNCglwdWJsaWMgc3RhdGljIHZvaWQgbWFpbihTdHJpbmdbXSBhcmdzKSANCgl7DQoJCW5ldyBJUFNwb29mZXIoKTsNCgkJDQoJCXRyeQ0KCQl7DQoJCQlVSU1hbmFnZXIuc2V0TG9va0FuZEZlZWwoImNvbS5zdW4uamF2YS5zd2luZy5wbGFmLndpbmRvd3MuV2luZG93c0xvb2tBbmRGZWVsIik7DQoJCX1jYXRjaChFeGNlcHRpb24gZXMpe1N5c3RlbS5vdXQucHJpbnRsbihlcyk7fQ0KCQkNCgl9DQoJDQoJDQoJcHVibGljIHZvaWQgYWN0aW9uUGVyZm9ybWVkKEFjdGlvbkV2ZW50IGExKSANCgl7DQoJCQ0KCQlpZihhMS5nZXRTb3VyY2UoKT09YzIpDQoJCXsNCgkJCQ0KCQl9DQoJCWlmKGExLmdldFNvdXJjZSgpPT1iMSkNCgkJew0KLy8JCQlTdHJpbmcgY2x1c3Rlcj0oYzEuZ2V0U2VsZWN0ZWRJdGVtKCkpLnRvU3RyaW5nKCk7DQoJCQlTdHJpbmcgbm9kZT0oYzIuZ2V0U2VsZWN0ZWRJdGVtKCkpLnRvU3RyaW5nKCk7DQoJCQ0KCQkJDQoJCQl0cnkNCgkJCXsNCgkJCQkNCgkJCQlTdHJpbmcgaT1KT3B0aW9uUGFuZS5zaG93SW5wdXREaWFsb2cobnVsbCwiRW50ZXIgVGhlIFJvdXRlciBJUCBBZGRyZXNzIik7DQoJCQkJU29ja2V0IHMxPW5ldyBTb2NrZXQoaSw0NDQpOw0KCQkJCQlEYXRhT3V0cHV0U3RyZWFtIGRvczU9bmV3IERhdGFPdXRwdXRTdHJlYW0oczEuZ2V0T3V0cHV0U3RyZWFtKCkpOw0KLy8JCQkJCWRvczUud3JpdGVVVEYoY2x1c3Rlcik7DQoJCQkJCWRvczUud3JpdGVVVEYobm9kZSk7DQoJCQkJDQoJCQkJCURhdGFJbnB1dFN0cmVhbSBpbjU9bmV3IERhdGFJbnB1dFN0cmVhbShzMS5nZXRJbnB1dFN0cmVhbSgpKTsNCgkJCQkJU3RyaW5nIG1zZz1pbjUucmVhZFVURigpOw0KCQkJCQlTdHJpbmcgZW5lPWluNS5yZWFkVVRGKCk7DQoJCQkJCVN5c3RlbS5vdXQucHJpbnRsbihtc2cpOw0KCQkJCQl0MS5zZXRUZXh0KGVuZSk7DQoJCQkJCQ0KCQkJCQkNCgkJCQkNCgkJCX1jYXRjaChFeGNlcHRpb24gZXMpe1N5c3RlbS5vdXQucHJpbnRsbihlcyk7fQ0KCQl9DQoJCQ0KCQlpZihhMS5nZXRTb3VyY2UoKT09YjIpDQoJCXsNCgkJCVN0cmluZyBub2RlPShjMi5nZXRTZWxlY3RlZEl0ZW0oKSkudG9TdHJpbmcoKTsNCgkJCVN0cmluZyBtZW09dDEuZ2V0VGV4dCgpOw0KCQkJDQoJCQkNCgkJCXRyeQ0KCQkJew0KCQkJCQ0KCQkJCUluZXRBZGRyZXNzIGlhID0gSW5ldEFkZHJlc3MuZ2V0TG9jYWxIb3N0KCk7DQoJCQkJU3RyaW5nIGlwMSA9IGlhLmdldEhvc3RBZGRyZXNzKCk7DQoJCQkJDQoJCQkJU3RyaW5nIGk9Sk9wdGlvblBhbmUuc2hvd0lucHV0RGlhbG9nKG51bGwsIkVudGVyIFRoZSBSb3V0ZXIgSVAgQWRkcmVzcyIpOw0KCQkJCQlTb2NrZXQgczE9bmV3IFNvY2tldChpLDkwMSk7DQoJCQkJCURhdGFPdXRwdXRTdHJlYW0gZG9zNT1uZXcgRGF0YU91dHB1dFN0cmVhbShzMS5nZXRPdXRwdXRTdHJlYW0oKSk7DQoJCQkJCWRvczUud3JpdGVVVEYobm9kZSk7DQoJCQkJCWRvczUud3JpdGVVVEYobWVtKTsNCgkJCQkJZG9zNS53cml0ZVVURihpcDEpOw0KCQkJCQkNCgkJCQkJRGF0YUlucHV0U3RyZWFtIGluNT1uZXcgRGF0YUlucHV0U3RyZWFtKHMxLmdldElucHV0U3RyZWFtKCkpOw0KCQkJCQlTdHJpbmcgbXNnPWluNS5yZWFkVVRGKCk7DQoJCQkJCQ0KCQkJCQlpZihtc2cuZXF1YWxzSWdub3JlQ2FzZSgiYXR0YWNrIikpDQoJCQkJCXsNCgkJCQkJCUpPcHRpb25QYW5lLnNob3dNZXNzYWdlRGlhbG9nKG51bGwsIlN1Y2Nlc3NmdWxseSBBdHRhY2tlZCIpOw0KCQkJCQl9DQoJCQkJCWlmKG1zZy5lcXVhbHNJZ25vcmVDYXNlKCJibG9jayIpKQ0KCQkJCQl7DQoJCQkJCQlKT3B0aW9uUGFuZS5zaG93TWVzc2FnZURpYWxvZyhudWxsLCJZb3UgQXJlIEJsb2NrZWQiKTsNCgkJCQkJfQ0KCQkJCQkNCgkJCQkNCgkJCQkJDQoJCQkJDQoJCQl9Y2F0Y2goRXhjZXB0aW9uIGVzKXtTeXN0ZW0ub3V0LnByaW50bG4oZXMpO30NCgkJfQ0KCQkNCgkJDQoJfQ0KCQ0KDQp9DQo=','376b862d763bf803f01d7a145e1b9f13a582b2c7','[B@2b2af3',3,'MTQvMTAvMjAxNiAgIDEzOjU5OjUx','Manjunath','kz24c7bz4o4j9c9w','Verified'),(42,'KeyGen1.java','S2V5R2VuLmphdmE=','Shared','[B@114a947',0,'MTQvMTAvMjAxNiAgIDE0OjAxOjMw','kumar','nc39r4vr9x9j6b1t','Shared');
/*!40000 ALTER TABLE `cloudserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deduplication_log`
--

DROP TABLE IF EXISTS `deduplication_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deduplication_log` (
  `id` int(11) NOT NULL auto_increment,
  `current_file` text,
  `current_file_owner` text,
  `present_file` text,
  `present_file_owner` text,
  `trapdoor` text,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deduplication_log`
--

LOCK TABLES `deduplication_log` WRITE;
/*!40000 ALTER TABLE `deduplication_log` DISABLE KEYS */;
INSERT INTO `deduplication_log` VALUES (2,'cc.jsp','kumar','co.jsp','charan',NULL,'Shared'),(3,'connect.jsp','kiran','co.jsp','charan',NULL,'Shared'),(4,'KeyGen1.java','kumar','KeyGen.java','Manjunath',NULL,'Shared');
/*!40000 ALTER TABLE `deduplication_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downer`
--

DROP TABLE IF EXISTS `downer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downer` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downer`
--

LOCK TABLES `downer` WRITE;
/*!40000 ALTER TABLE `downer` DISABLE KEYS */;
INSERT INTO `downer` VALUES (1,'kumar','hi','kumar@gmail.com','9535866270','# 434','08/08/1992','Male','560019','Bangalore','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z-%&+.7-7+-5.--+-+-/5-7-57----+7-7------5-5+---+---8--ÿÀ\0\0è\0Ù\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0K\0	\0\0\0\0!1AQaq‘\"2BU¡±ÁÒ#Rr’Ñð3CST‚¢²ábs£ÂÃc³ñ$%ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0(\0\0\0\0\0\0\0\0\0!12\"a±Á#4AÑÿÚ\0\0\0?\0Þ%@@¥)@DD\0)DP¥(€ˆˆŠPJ‹(jô€ˆˆˆ€ „R€ˆˆˆ€¡J ‹©Qe(ˆ€¡J„\"«kˆhä_>\nábzÇ­t:8†É#Ÿ-®!	uŽ÷ƒGYê`siêí1#ã6š™–ÄÆ»ÆÂol@YÒmž+{v†ËÒšá£éÉlµLÄ2-Žò8¬Ý«âIÊžŽÀLîÀ?©À¯G t]8Î#3‡9¸ì¶mºÁëUgÒ­e4\rcØd”|¤hÇÎŒŸÚ±Àv¹ ÚVMGYÌC+$ió£ppïLVšin>lËÿ\0Ûnü–*×G5ôotðHèÞHÆ]‡\rìCÃ|¡skH8Nh7»Š¬7Qõî\Z×\Zy7;A „­2ÎÝ¼3íš \"\"\" ‹©Qe(ˆ€ˆˆ  (\nQ@(áë¶Ÿ42Tä^\0l@ì3?&ßˆQèi_uj/”m›GM¹ïžSÖÀÆ7Õ+Ðbz´WPyÙ¥%÷“;ž\"7¸íèµ—+§Ï²v<còo:3õº²_+DÑÔWÎ)iò»Ü|–F2.wFà7ŸVi¬¼›E\rä§Ç$ñay$Ÿ1åµ¬l7_Å²æmÙÔVg»áO¦IÞ¬¥Ò‡ŠÇYqµKåÈ:ùÌø+§,Ž‡KµŽ%÷ÜC†ÑkÜ\0A½ò¶p$*(çe{4lh&Àn6½…÷d¾!A™ÒekØöËË_k›´8f]#©š}µÔQÕ\0ˆ-‘£Í™¹<uo–ùÕ¶y\0Ò‡œª¤\'\'69š?Ä7!î1w ÜèŠ/¹¢\"\" \"(%¨Rˆ!J\"\" \"\"Rˆ€´wÊ!Ö¨£?öª;ñF·ŠÔ?(	<ì§žc­©2lB7sd8\röÀëÙDÎŒ½r;¢ÄT9#Ç¬ss·™a-`êÉÎþ%±&§ ·,úÀÕ(9º*X¾¤àôœ\r¹ïºÉyåŸµ¦rÑÞ±kMeäÎ–¥æh`{®Hh78í%›Q—’ZÀ|ZˆÒC›êÍo\'µ§hîÉR07‰Sµ¡\ZÖZEœ’Öï¨„ub?‚¨y\"ªýî/¸ï‰n±zS™gOzîiW9ë£×Q°Ë#\ZøÛµñì#‹š@ tæ¾ç!Ÿú½‡MPV(¸-ËSMØá‰® ì-;AZ¿‘]^š--Q74áOk ŽGZÎ{fc@móvMv{<S½wKç´¸½1ÞÕŠÄE%B	DD¥Èˆ€…yqRÔ\0¥ ”D@Xî°yG¨{D¾.±@pó€dGªæŒÕoâÏ™Kf†hh€Á^ó«åÃ&C¨*üâÍiš¯yÔçUŸ8œâœê¼çSV|âŽq65Q»±‚n-·mˆ±Ìú•ö¯4\0€.ÙÚ¬ß&õõ5f‡œ#-ƒ¤ï!M>+Á†’û¨ˆ¶1ˆ •\0 •(¡¢\"\"]ys”¥¡\05zD@DDR „\" Æ4í8d€µ 5âàaq‘Ë¸ö«\0õ’iê`øK¶îëž\0xÞ¯bÄñ,<ÕÖÍ¼SµWÓ\Z·Æ˜Õy[…Æ4Æ­ñ¦$É‡ÑÑPó’µ¤\\—_1aÇ¶ÃµehÀX\rÁ|}Y§3.÷’CZHöƒÜÙ[8kŠå‹šÙ¶¨qP\Z®TuìDD@Qu*,‚Q\0¥)E¢´‚³€Ãkï½úm±] \"\"\"ùºoORÒ3DÍfD†æç¸\r¸#mÜîÀ‚ãJ ’û9·íû%`T€·ÅpØ.Ëïµç;,o\\õîJ‡3Ä1S±ñ¿ppK0É®µ˜/bCŽ\"\0ncSÜXvÁâÛÜ»û/½gç¯‰hà·˜P™Âùî2à©â^ŒÝqùÚ¼ó£öyöûIkƒ§,‡ÉnÓ¿€â«67¿`°õ*¤µ˜ß)Ûý¤õ$Vd›D2½XÃóXÃMðãq7¥}\'-G¯Sèí%S€s´ï™Í|7±ŸE‰„äÙ,Î§clˆÜ\Z³®5í½4àº×tOñ%oQœûEÇJô«ˆ‡›iÌÌ¾ãZ½\")@ˆˆ­\'¬ÂHÃ{tô_‚»@DDD@DD¥(éÚÓp-n’ª¢·Ò±Áç™áŒ‰¥ÎqÜÑí=ÐWs€“`3$ä\0âV¬œ¬èúk²j¤Ê@ôÌr#ì‡-_¯ºñS¤Ys7™6Ä8ÌG–ïðù#+^ØŽ…y¤ùMÒÕ¯æ©ÞÊ`àHl6Æ[¼Ÿ×{´4ä¾O0µÓK/9$¼ÛùÜBG›‹Y¥÷.ßrrsM²\"ËåÐV˜®0â- oçrÂ\r·|³àAÍx”¹Æî¶#rmkI°Íì2Ì ñ]Pù“Z<V‹Ù¹[\"I\'´›ldº?E±µÑ:ö.Ž7µÜšh;Âçr{SŠ‚˜ßdLoÜñô¨˜Êbpú±°´àx³†íÄqiÞ?&Êä@ßªýC¢1—LZÀ\\\\ó„0\r®ÅæÛÖ6¾hÆÉÍŠ©K/c#as€ê}®GNÖW5éy/ì‰•Ÿ¯î}é†a­\'c[´ÿ\0nŠ«hù¶’ë»i\0ú££§pú2jwÄ%¦{^É?XÃ‹¸» ß-Ýæéê¬I%ÿ\0FÉØÖ“îQ^-g¿”[“nÑáÍºNLsJûå$³?ï<›úÕ°‡\\‡4‚6‚6·ôŒÕF3!Ô¶³òxô«²}Ê^•¥!†q;\0%Hç<^‰EŸ´ORÙ:»ËÖe\\n¥yóÒC¶\0-þ&€8­„ÜßÊßùáÁNwO;$`’7µìx»\\Â×!Ã\"EÌ:›­Uz>PèxÜo$/\'›xó¼Ç[Îì½ÆK£5{MC[NÊ¨‹ ÌbcÇ”Ç±Àþ\"à„¯§a7#3·2ª)DP¥yÆ•ç	Aì¨ \"\"Ó|¹ë/FÆï¡³Mmî\'è˜z¬\\GKå¸Ü@;±rv°icWW=Y7ùÄ¯sÊòcŒˆ(ƒqnþ>îå/`°#»§Š¥³UAAæ›‹yÄ	ámÃ€µ—«¯\0æGÖi»}^Åç\n·[“’éï£ZAý³±Ý\"_d‹Kb[O‘YÌ‘ÔÒy¡ðÌznþFÝÓå\"–¦¦™²1Îæav\'Â?XÍÒ8oÂs·jÃ£æy±klü•»+\0do{¼–1Î=@¹ÄÄç‚û‘Œ¹ØF@b7°à×½é<³4šã´~Y:Š÷‰l^M(êb2Õ1ÎI`\"ódpò¤s†Àwç|¬²=t©ôÚ©oâ˜‹\\¤Dó¯©ª	h)ä\0Q2àd€³…ºÁXÇ,h9¡äÕÏÇÀé	ê%­íë^GSÉ<œ¶´Æ;´Ò1X†œº]RÄªÒÄ^ðÑ|ö	ÂÝî n\n‡D„’|ÐH;ÁÜ:‰Ü 4a~ñÄôpÆ¢tx\Zlqaq ‚@€-»>Û_z¡t2~ÏÍ–{ÈÎ±šzßš=ßE[›RÑâ;£½\'¯¤wçÖ¼GPøÞÙ#6|NkØxHÂÓØ@A×è¬ô>mE<U,òj#ŽFõ=¡ÀzÕâ‚ŠP]¢\"…(ƒåHüßEUÊ\rˆ…ìiá$ŸFÂ:q<.Ya]ËÕ_7¢D¼T@ÎÆâ—þ1Þ¹í®At×*ÁÞõh×*ßžÄ^íãkMÇà¼¼ç–Ã˜ê;œKÍò·Õþ“øjAãŠÏ¹¯Á¥9¢r©†VÆFá”+°Iª±±p%Ñ€ÜEÙsM\05e€h’s$’Uîªé?›WSTÞÂ)¢.\'tdá“ùäÊÂ=RA±teƒ®BïZV*£ì[O•™ÿ\0üü^hs±µkÈ™ô}‹è½¿µ3óüCQ?còE(vŽæÉýÓ7±Çþ¥†òû\\9úZ`|ˆå•Ãí¸1‡ý9Ýäzk2ª>±Ýì·ûV\r¯¯mV–©{ñS˜àkc{°2ïÃžÐâ÷ZÙ€ë\\…ãu•×žñóû´ñÎiCGÒºGd.ÖùG0-·#y\0ûv{3£‰ÅeîÇ²Ï ¸—9§éƒm†À—\0Aó•-#\\Æ±±FÖÝ˜.Z`{mg5Ù´2Äàqeo–é	»‰$¼‘s™¹ò‰=^Õ™ÚâJ‚÷™ü€\0Á°¸mË¥Ar¢…Þä#•9åIÎAÒ‰éwDFÒni¤š#Ð±°v1ì;ZäíZL5tÿ\0³’ÏÖ5Í?ø½anD@DDPˆ%iÿ\0”mE©èâúóJÿ\0¸ËÈ´s\\·ÊMþ=x6°÷˜¦šäMrö­ÚåPÜmßc»aØ‚®$ÇlûúŽÕKbAíÙ/.Ì[ŠòN_gúwwlî^1 ÜºÓ¦þs¡¨&&î–Hšÿ\0óY“ù˜WË‰ßGØ±\r¥ïBÚGÐÕ¶V}‰\"‘®©Í¿ñ¬’9mé¥ôÞ“8àúËQîd¼˜éÄêç½À6C#‰ÈaRâNìšµn–Ón˜»!ô„â~.xÆdndq½­{/¡6˜æ©ëbiñªþi_³•òvXÿ\0\ZÅ±/Ô?“o§Ú\Zx½¬\n÷‹>¬‡¼÷û¢×oì{Ïg¼&%‰b¶$.÷*X‘÷\0¿1ÔöA.r¤ç#œ©¹È6×ÉÒ¦Õ•Q}x#wÜ}¿ä[ísŸÉîKig­I0ÿ\0Rî]€ˆ¢è%B”A	e(€¼I T¹|Êç Òß(º ùé\0óYQës?¨šåÐÚé¡\"«ŒÇ3/kápÉÌ<ZíÞÂ´®œÕJŠwÐdfç4xÀ‰¿…Ð|†¹{¸\\öªØ;r÷‰lI‰QÄ˜Vüô/.ËÝÔ©âR|»ºÐU‚[8•—E[ôv¿þÖ‰_ÅZD{veø/[Óz˜¤Z¶ñçýgæ¦q0ñ]6\'’¨´ß%G÷{“·«‚óyy\'’óyþ×Ö1U/õlêLJŽ$Ä«J¶%<á¶Äß·­PÄ˜{.TœårúºWj*HÂÜ,>{òèO³¥]È5@f–¹ßO0õ°û—JÅ0vÅ¨5Vâ£oÑ¶ïw•#¼·tt7 zÖÉÑî6Aö”YyŒä½ \"\"\" o4UÉ@ƒáVhÌ[–9¤ut;rØª› iÜƒHé­BŠBIŒ_ˆÈ÷…‡iN¥oèä=Oõ…ÒòhöÊÎmÃ¹+Ujk?U‹ìÆËæÍ£ªåA þnðº²m[aóUŒÚ¦Ãæ å¹£ÂÏ=·ÈâßaÀlº¥‰täÚ—ÚÁÜ¬fäþ¶¶ƒîAÎw¿_·û¨³¸âº\rÜ›S~ïÜoà¼ñ¥7îìû¡€Ù»‡¼¯8×A·“ZoÝãûüÌ<žÀ6@ÁÔÖr\r5#y–JÇâ¹\rx6œ ›1»\\\0çeÜ8¨\'w“†ü\Zïm—HÃ©1Œ¨+ØuIƒÍAÎtÚ­Zÿ\0ÔáéyÔ.WÜ äòg[œ}º=çð[þZ`óUô:\rƒr\rA¡¹>‰„näoŒ}{;i£µl7rÍãÑÍ•Äp7pAñ(´Pnåö`¦²¸\r€”DD@^\\åÍ^éoHKÝÂ¯Ý¬ZÀ\"çŒõ!Íi%€\\14áÁ|\'s¶•îºÕt-®½€¹ê‡OkÃSÔ¸a$5ƒÆ³Ý½¼\"~|E¶\r¯…ús/þÍNmsÇÑŒão”ñâfÑ¼ì	©—G¢çwë°‡™ª€/tbñ€yÆ´<·ù.gÔéu«NÈÒöUÎZÖ=ø°°4µ„5Ø\\[g\\2)©—E©\\×.»é†/­™¤nsXÓÜZ¼xy¥½!/s>ÔË¥’Ëš|<ÒÞ—º?…<<ÒÞ—º?…52él#‚Œ‚æ¯4·¤%îáO4·¤%îáMLºS››5øy¥½!/t\nxy¥½!/s>ÔË¥9±ÁNÁsW‡š[Ò÷Gð§‡š[Ò÷Gð¦¦]-„pK.iðóKzB^èþðóKzB^èþÔË¥•Í>ioHKÝÂžioHKÝÂš™t¥î½\0¹§ÃÍ-é	{™ð§‡š[Ò÷Gð¦¦].‹š<<ÒÞ—º?…\\Òkv›”l®ÃkÛš¾Í¡52èä\\ç>µiÆyu’‹›gÍm¶+là¼·[´Ùµ«e7È[šÛÜš™tjYs[õëKƒc_-Çù\nóáæ–ô„½Ñü)©–:?6Ë×¹fRò€òö½´ö-2¹ÅÒ‚e{ã–<Rsq1¦ÆPìš/€o%È‹·*qëÁi³iœˆ7ç÷sêÝ%ÜØ€ ŠÇâø¦6]lÕZ÷+˜Æ6\'3\0€bd­¼N§$´ˆ…3AÄ_¶û£(×k“Þ0²\'ÄËÍLŸ¢Ž)XHˆ5®w6ÒÆ·\rÝf›«š]{æž$ŠsmŒNþa±¹ìÃg€ì8ï|®0¢&#3q 	6v2|u†\"û¯ŠA¨ËAñšÐIö\" ¨$gì‡Þwâœã?d>ó”\"\nn\"ùtî¡ÿÙ','Authorized'),(2,'charan','hi','charan@gmail.com','9535866270','# 434','08/08/1992','Male','560019','Bangalore','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ì\0\0\0Ì\0\0\0ü¼À\0\0\0PLTEÿÿÿ\0\0\0\0õõõüüüïïïççç@BBùùùêêêÇÈÈ9;;«¬¬vww×××¸¸¸ ¡¡Š‹‹fggààà“””-//244ÏÏÏ™šš€oppFHH%\'\'²²²UVVTVV_``ƒ„„KLLŽŽ&((ÀÀÀ¬÷!\0\0zIDATxœÍ]Ù¢¢0Õ²‰ˆ.ˆnãÿà€Ò…Õ6-pÏãÌzh’&išŽFÀÐÍ©µs^2	OûqŽý)œ$ÞÃÝYSS7ºx¯r˜¾3?,\'[”Chøß¶“åaîøæÐcm…á»‹ãdÿð¸Ÿ?ØOŽ×ÿ«3ôöâÍø\"£ñ&öÞC»Ýrã²Pñà+xq`éC3À0vîRœG‘ÑÒÝý3]oÃ-ZMH°ñÜ¡\rÂ4šm˜ÛUFý¦6nM‡cb:I½¾yì7³ø’$Ë£÷Áq™$—x¶Ù71Êþ9q†™žéüR7¦‘0‰ÖÁÙñ-»øÛòs°Ž’°žPúãË¼ÿé±Ý¤:š‘Ém¾ó§vë§þn~‹ë¥HÜÖ«Ç<—Æñ!ròSçŠ­›ŽwªÒÐ8œw;zº—GjÎlXâÏ²‚ål\\Ò»ô»ÄNO+ïU_¾‰\\ü<7ÚT?Ž·S9æ˜ë°øâTN®g_JÌmÿ|-™E\r…ëÎ\rÛ{Vxi:)Úq¥@aíÕQ+NB³nÝ6Ë+ûô—ƒ²ïg.å§{\0-ä„qŽ¢YQ¥¢`fö¾ð†øÜ‘Ë¦{{Tøn÷·òõmú¾fí½NÌÚ.f¿\ZB¯y\'Í˜¿Šï‰Õ›5=(½\"èl™¶ƒÒgOŽž¿_¬Ô>¿ˆÕb_`)µ~Ârº®8GR†se>ž†ðŠ\\ÅûD¹¤‹[ÐCPhÌ*ª¡“ª%Çp™¯„ÆI§F±JÆÌk‘«äê–Ë3è-z2ƒ\'Ëæ Àè7n…Âû>+ÞÚMš~¤ó’º=µ¦Ç¾ý(ÉÆ¼2ßæéª¢Ü\'#W©oi-©Ý’{|‡Ì–Ž¹$ó¢¡{¯êBáß™A,Ás£_™ÇËiMÌ0®@½IuŸ*ß­çŒ	ûÆ˜˜Ðoäƒ ´P=@1,\rA,´q ëBëç%ƒ½&lv÷¨“.¾ŒOf8Â+Äûoq)²\\#RG‚ÊçoŒà¼ëÐC`$MÌ©²ªp^}1bÞ‹®ßö‚\Z¤D`ñÔ#ü»Ôxðÿ,È7`þ%‡U›ã7:ªˆß¤ôìØîó3í“Bß^ÖŽ¯xŽì#•—€PD:ï\"ãYÍØø¡Mò€g ë0½SMæÌÙè$Õ‡B¡±¤û˜E6Aáå¦O¼Ns	šA†„ž‚6Ð­l	~DîyóÍ©™BçÝ»iÄ›DÈãQÊ3NóhÂ«ÓûYa3&;µÿN³ûrá¾w+™ËÅêŒöçßmQ!óDß´º×‘«ðÝ·½õ¾Q¹‰ÛgúÇ\'ñ7›È5	=ãšã1OüûM ¸Î:ŒÐXäSµù¡Ò&¶®hÌmÉì¶ü¥\Zi\\›\0çÓÐ¬]vÖD¿ˆX[{~2)›»!c&ÄBµº;lÇ}µ³X9Ú€¶+VxQo]uªý!9/Á‚ tÍM@m@³™wˆ]!Ê9M¹dÒñßŒ+´æ—´—û`\"l`\"€uÅM2\'³·€LŒñBæ	zÕ‚µ¡2Å&Úƒ´ÿ\ràò{±¨ÇŠQXïî¹ã¯Æx02ÂNÓ8äÒÆµ$Q_ô‚ù¶1ŒL£Ô·ÂÆ†³Þ„Ì‰)Hm`d^°·Í‰A«®yÁTïÀè]t‘‘#c`]ª¾\n^c4˜FŽÀ3³¾îM\\]G’VäÁFf|Õñ¤ò_„\'x{¬g2$èÔPùóG-øGÉP-Jÿ‘D“H,÷M†„‚å¸ÆÍ£*¤Á£óÞÉ˜ù¦ÚTƒ¤—ÐüèþÉ”C1í´Û`)“¨%éŸÌ\nËY!ÈÃÙ;t•ÈÒõOÆÆq\rk‚u¼ÝÎð\'@&\rÓó‡,iÄiåAµ`nyx28÷ŒM)‹drÁ!ŒL(ñJ;ªÊYî¼7Äœ˜äÌh[™S8c	²ø€¥Ìvo0?33E‘N¥ûd±Çÿò&j}¦#sì,Û–×Ó…Ÿ@VLX¸üÉ‚Ï~¿+,6¢!}Xe°\0Ê¾g£-›×\n«Hüuü\\ÚÑ	ö¼Ñ\nª.™\'ÔõÈw8Ðæ«ïÄ\"Àò$é×æ’¾Z$ï-1N¨µ¤:ÛqVAº*8xôŸÂ+óˆUêýT\Z+Í1¾?É¥Žo3ºs…4(Ôñð\'™Òà$4¼Ø¯ºc s¾›Òo²gÓ ¹¿¬¢C°óÁŽß8`•ºYÁWÂå8*Üa¥9$–‘pÿ-X–¹@æ.\Z\"a@\ZÓ˜XÀÉ¿¬Lš<)„“hbŽ¦8/#ËÌå\\³L{áÕì8¦AÛiêÜäÏã­^¬ÁJVÎÐE¢.~XØAw˜¾ˆdÉÈÔMã}§Ô‚¹ØLŸ%ž·:I±A™šA\\†•zDìuB=³ë¨Tfá`¯ÿ½N‰ùƒ5¸W‹&[8CçÔëÇ†£z«\r†ÿ€MBÉGx™CÉ/3érÿ>·ÎYØ¼ÐàlWuûIÄ™TÚ,®ptÒ”‘YCÈH,o%2Úi”÷Rƒ§™( Þ3Ü½¥Àé¦ý?Tbcc5¯jš(8K*C	h6ƒ-îˆõ7Âë‚-:æ…ÄÞ6ƒnÈìDí™¤ß‘£2\\uÍ2\n4µ32‚Mm8:\"#X¦,Ï*£JFÉ„“ìçÄ¨i\\BM³ÂE3oýX®\Z¤\0ºh*tg2˜ü6à›PU\0êÎ(t4?°\Z”¹ÀÊZk@Mu!@ŽßF-ÚªâÂ„\0Š‚3\\{Oh£¬I\nœ)\n›Y8¿ËÐLÅÒÿ6ã„ÆKÝÓIŠ¡e^T¾íE\ZJRMeìÚóÜ§,¹À¤š”$+hu9ÑKi—/&	¨\"=[ƒ]³Þ Pm›&=«\"q^‡G3™‡Ò±‰sº¥¡¶™`óF§Z&Çý³-\r›MµhŒ:ÕD—ìf“‚mÀZàR‰*©B°*Øm@´µ87rT»”Æ/¿u^‹wÓ.z*ýjÅ­sRÔ0SÚ±ñ˜£R_c4Ò±3ó)j å&J»D4.›J]z\"#ŽH!ÒµÌoZ5Uº´#¦Œñ»“HJ´Ô¤r4nÚ*ÉÈR`¹Êm$)ž{ª|Ic¥ƒÂÈ)Ã³X<GË\ZU~²žÄlU*k”/8­±hö\0@çsP.8UP\n\\†Ìš#\Z„fj:|f¨”+(Òf¡ïÖûÖ½g\r¡W F¤«EÚ¤|^…hÎ½ýï}g„ÂµŠ{M\\T)Ÿ\'‚\'½õ£.T¾t6Ë³äÛ²YùÓ¨º“#\'/)93VÑ^ Œ>ýÓ—kJMsL}9=$!g¦#|¥Nª<û…/!\rä¬sˆþcõœ§Ùí@€‚„žÑúR;®›|€Z÷©¯ïå‹BDè\\€KÝ‹èèÑFÀRcXQ»)þM\'5Õ¢ÅŽZäÐ©p`øé+›2åÙŠ¯<Sl·Š‡N™¶F‚é3±‘-ÐÌ_Œâƒ Jfå6GÄ`5Î3¡|M3¥3ÒÒT¯|P›9BÏïmÚï:*ãï%:nAÐx„ž67à.d]•RÉéÜx_o‘ôÕM?ÚvâÌõ,û<S£,e:WÎèýL\\Í)ÐVž™¶#‘î_\"@ÏÏ\0Œ	¥\Z«N[µphÅéN‚ØpUcç¸¾Êƒ6Øxþò–ŒÆŸ\":¿³Qú“hL-sÚÞè×ZãvË%csþ1Ü\"¯)sMOýˆ8°SÌBlöíKI—45žbZ‚µn<ºS†M«Q¥5‡Íé~âQ·$7@ëKæpµÜ=Eú|·ÔEÑ6z“Æ©™w­/„Í«ñ‹ÚbÊš-Óà°ißqUÛ^¶#6Mšì—¶‰fZOÖS¶»×}†Í¶~”WëI¶)èµö³ÈžúdS{FhJ{5¶¯!$®Ñj/6¨ïaÜ™º†Ñ6ýà?Úµ2tÇUA#Žjolj–w‡\\åô{C‰Ú€j¯‡˜ÙTüD‹6`ÿ]#Ë4ŸNJ¦bÚ—UfÈœJS£“.ªhÂù0mÁKú9R\"Í¦2‘¶àlÃöRK˜>Ü˜\n­0ÚÜ†¯a;ÛJ¿`ú×˜ÏX­a”Ÿ·{sÉSIiômÊò!0>­þ(¿c®Ÿ 1éN¾‡	ˆLH†M\"{¡½„¹#)è\"ñtÜ:s•†ÈF{eKîËé¢ÇITÀƒ]ÙÂ^¦3F·ÙhÜ\nïœÌ7î5˜û°Do(¤×i_wÏFÊH!s•Žx]{U¶q¯¢SY\0m,˜áˆïæ®‹t£_ç¿@&2tzmèj0öÒ¶Ô\nôî03d.–Çv­&k¿P2Ì*óy÷†iÑ¾TSg/Ó„Gùåð‹WPþ	È\\AY¼ô@êrÐâµ­CCöÚÖâ…ºÃBþBÝâUÇCBÅUÇ¥K¨‡ã¢äêÒõàƒqQV<È^Ü>^ÜžÂO†d£¡Di]·\r\'j©Ÿ«öœÒH—êÆ$Ç%Pzââƒ]<HÞÅj)åÐ½®êZ¸ì¡vÁ8Ëw2ä·llÊ\"’ú3k\ZJcÂÎ¨dx·ÔÅ«B3µ‡Sk`®%ÛfóACáºÃK 	|¯ûÉI%¬#V…îÄªNVètdÄê0ÁuÌ¿©ŒCµGFÂv“Nf\'•ÄU{dœÓùE9”Ê¥«»ÒÀt$_ M=+qú0a\r˜F³­\Z:mgÑ0“BaºžÌÝdR6ž;à¤;Wøä‹ì~ê¥«âÐ–\Zè–®Ën£—!¬W>¼½x3æ·Ÿ¿ÜÄ^ç†ï.Ž“=úÅè{çùä¸p%ÛÎv\rÓwæ‡åd‹ïig\\Þ¾,sÇÿ\nÿ†nN­ûð’IxÚc.ûS8I¼‡»³¦¦ÞÉŒüZÏÃ9ãí\0\0\0\0IEND®B`‚','Authorized'),(3,'kiran','hi','kiran@gmail.com','9535866270','# 343','08/08/1992','Male','560016','Bengaluru','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ì\0\0\0Ì\0\0\0ü¼À\0\0\0PLTEÿÿÿ\0\0\0\0õõõüüüïïïççç@BBùùùêêêÇÈÈ9;;«¬¬vww×××¸¸¸ ¡¡Š‹‹fggààà“””-//244ÏÏÏ™šš€oppFHH%\'\'²²²UVVTVV_``ƒ„„KLLŽŽ&((ÀÀÀ¬÷!\0\0zIDATxœÍ]Ù¢¢0Õ²‰ˆ.ˆnãÿà€Ò…Õ6-pÏãÌzh’&išŽFÀÐÍ©µs^2	OûqŽý)œ$ÞÃÝYSS7ºx¯r˜¾3?,\'[”Chøß¶“åaîøæÐcm…á»‹ãdÿð¸Ÿ?ØOŽ×ÿ«3ôöâÍø\"£ñ&öÞC»Ýrã²Pñà+xq`éC3À0vîRœG‘ÑÒÝý3]oÃ-ZMH°ñÜ¡\rÂ4šm˜ÛUFý¦6nM‡cb:I½¾yì7³ø’$Ë£÷Áq™$—x¶Ù71Êþ9q†™žéüR7¦‘0‰ÖÁÙñ-»øÛòs°Ž’°žPúãË¼ÿé±Ý¤:š‘Ém¾ó§vë§þn~‹ë¥HÜÖ«Ç<—Æñ!ròSçŠ­›ŽwªÒÐ8œw;zº—GjÎlXâÏ²‚ål\\Ò»ô»ÄNO+ïU_¾‰\\ü<7ÚT?Ž·S9æ˜ë°øâTN®g_JÌmÿ|-™E\r…ëÎ\rÛ{Vxi:)Úq¥@aíÕQ+NB³nÝ6Ë+ûô—ƒ²ïg.å§{\0-ä„qŽ¢YQ¥¢`fö¾ð†øÜ‘Ë¦{{Tøn÷·òõmú¾fí½NÌÚ.f¿\ZB¯y\'Í˜¿Šï‰Õ›5=(½\"èl™¶ƒÒgOŽž¿_¬Ô>¿ˆÕb_`)µ~Ârº®8GR†se>ž†ðŠ\\ÅûD¹¤‹[ÐCPhÌ*ª¡“ª%Çp™¯„ÆI§F±JÆÌk‘«äê–Ë3è-z2ƒ\'Ëæ Àè7n…Âû>+ÞÚMš~¤ó’º=µ¦Ç¾ý(ÉÆ¼2ßæéª¢Ü\'#W©oi-©Ý’{|‡Ì–Ž¹$ó¢¡{¯êBáß™A,Ás£_™ÇËiMÌ0®@½IuŸ*ß­çŒ	ûÆ˜˜Ðoäƒ ´P=@1,\rA,´q ëBëç%ƒ½&lv÷¨“.¾ŒOf8Â+Äûoq)²\\#RG‚ÊçoŒà¼ëÐC`$MÌ©²ªp^}1bÞ‹®ßö‚\Z¤D`ñÔ#ü»Ôxðÿ,È7`þ%‡U›ã7:ªˆß¤ôìØîó3í“Bß^ÖŽ¯xŽì#•—€PD:ï\"ãYÍØø¡Mò€g ë0½SMæÌÙè$Õ‡B¡±¤û˜E6Aáå¦O¼Ns	šA†„ž‚6Ð­l	~DîyóÍ©™BçÝ»iÄ›DÈãQÊ3NóhÂ«ÓûYa3&;µÿN³ûrá¾w+™ËÅêŒöçßmQ!óDß´º×‘«ðÝ·½õ¾Q¹‰ÛgúÇ\'ñ7›È5	=ãšã1OüûM ¸Î:ŒÐXäSµù¡Ò&¶®hÌmÉì¶ü¥\Zi\\›\0çÓÐ¬]vÖD¿ˆX[{~2)›»!c&ÄBµº;lÇ}µ³X9Ú€¶+VxQo]uªý!9/Á‚ tÍM@m@³™wˆ]!Ê9M¹dÒñßŒ+´æ—´—û`\"l`\"€uÅM2\'³·€LŒñBæ	zÕ‚µ¡2Å&Úƒ´ÿ\ràò{±¨ÇŠQXïî¹ã¯Æx02ÂNÓ8äÒÆµ$Q_ô‚ù¶1ŒL£Ô·ÂÆ†³Þ„Ì‰)Hm`d^°·Í‰A«®yÁTïÀè]t‘‘#c`]ª¾\n^c4˜FŽÀ3³¾îM\\]G’VäÁFf|Õñ¤ò_„\'x{¬g2$èÔPùóG-øGÉP-Jÿ‘D“H,÷M†„‚å¸ÆÍ£*¤Á£óÞÉ˜ù¦ÚTƒ¤—ÐüèþÉ”C1í´Û`)“¨%éŸÌ\nËY!ÈÃÙ;t•ÈÒõOÆÆq\rk‚u¼ÝÎð\'@&\rÓó‡,iÄiåAµ`nyx28÷ŒM)‹drÁ!ŒL(ñJ;ªÊYî¼7Äœ˜äÌh[™S8c	²ø€¥Ìvo0?33E‘N¥ûd±Çÿò&j}¦#sì,Û–×Ó…Ÿ@VLX¸üÉ‚Ï~¿+,6¢!}Xe°\0Ê¾g£-›×\n«Hüuü\\ÚÑ	ö¼Ñ\nª.™\'ÔõÈw8Ðæ«ïÄ\"Àò$é×æ’¾Z$ï-1N¨µ¤:ÛqVAº*8xôŸÂ+óˆUêýT\Z+Í1¾?É¥Žo3ºs…4(Ôñð\'™Òà$4¼Ø¯ºc s¾›Òo²gÓ ¹¿¬¢C°óÁŽß8`•ºYÁWÂå8*Üa¥9$–‘pÿ-X–¹@æ.\Z\"a@\ZÓ˜XÀÉ¿¬Lš<)„“hbŽ¦8/#ËÌå\\³L{áÕì8¦AÛiêÜäÏã­^¬ÁJVÎÐE¢.~XØAw˜¾ˆdÉÈÔMã}§Ô‚¹ØLŸ%ž·:I±A™šA\\†•zDìuB=³ë¨Tfá`¯ÿ½N‰ùƒ5¸W‹&[8CçÔëÇ†£z«\r†ÿ€MBÉGx™CÉ/3érÿ>·ÎYØ¼ÐàlWuûIÄ™TÚ,®ptÒ”‘YCÈH,o%2Úi”÷Rƒ§™( Þ3Ü½¥Àé¦ý?Tbcc5¯jš(8K*C	h6ƒ-îˆõ7Âë‚-:æ…ÄÞ6ƒnÈìDí™¤ß‘£2\\uÍ2\n4µ32‚Mm8:\"#X¦,Ï*£JFÉ„“ìçÄ¨i\\BM³ÂE3oýX®\Z¤\0ºh*tg2˜ü6à›PU\0êÎ(t4?°\Z”¹ÀÊZk@Mu!@ŽßF-ÚªâÂ„\0Š‚3\\{Oh£¬I\nœ)\n›Y8¿ËÐLÅÒÿ6ã„ÆKÝÓIŠ¡e^T¾íE\ZJRMeìÚóÜ§,¹À¤š”$+hu9ÑKi—/&	¨\"=[ƒ]³Þ Pm›&=«\"q^‡G3™‡Ò±‰sº¥¡¶™`óF§Z&Çý³-\r›MµhŒ:ÕD—ìf“‚mÀZàR‰*©B°*Øm@´µ87rT»”Æ/¿u^‹wÓ.z*ýjÅ­sRÔ0SÚ±ñ˜£R_c4Ò±3ó)j å&J»D4.›J]z\"#ŽH!ÒµÌoZ5Uº´#¦Œñ»“HJ´Ô¤r4nÚ*ÉÈR`¹Êm$)ž{ª|Ic¥ƒÂÈ)Ã³X<GË\ZU~²žÄlU*k”/8­±hö\0@çsP.8UP\n\\†Ìš#\Z„fj:|f¨”+(Òf¡ïÖûÖ½g\r¡W F¤«EÚ¤|^…hÎ½ýï}g„ÂµŠ{M\\T)Ÿ\'‚\'½õ£.T¾t6Ë³äÛ²YùÓ¨º“#\'/)93VÑ^ Œ>ýÓ—kJMsL}9=$!g¦#|¥Nª<û…/!\rä¬sˆþcõœ§Ùí@€‚„žÑúR;®›|€Z÷©¯ïå‹BDè\\€KÝ‹èèÑFÀRcXQ»)þM\'5Õ¢ÅŽZäÐ©p`øé+›2åÙŠ¯<Sl·Š‡N™¶F‚é3±‘-ÐÌ_Œâƒ Jfå6GÄ`5Î3¡|M3¥3ÒÒT¯|P›9BÏïmÚï:*ãï%:nAÐx„ž67à.d]•RÉéÜx_o‘ôÕM?ÚvâÌõ,û<S£,e:WÎèýL\\Í)ÐVž™¶#‘î_\"@ÏÏ\0Œ	¥\Z«N[µphÅéN‚ØpUcç¸¾Êƒ6Øxþò–ŒÆŸ\":¿³Qú“hL-sÚÞè×ZãvË%csþ1Ü\"¯)sMOýˆ8°SÌBlöíKI—45žbZ‚µn<ºS†M«Q¥5‡Íé~âQ·$7@ëKæpµÜ=Eú|·ÔEÑ6z“Æ©™w­/„Í«ñ‹ÚbÊš-Óà°ißqUÛ^¶#6Mšì—¶‰fZOÖS¶»×}†Í¶~”WëI¶)èµö³ÈžúdS{FhJ{5¶¯!$®Ñj/6¨ïaÜ™º†Ñ6ýà?Úµ2tÇUA#Žjolj–w‡\\åô{C‰Ú€j¯‡˜ÙTüD‹6`ÿ]#Ë4ŸNJ¦bÚ—UfÈœJS£“.ªhÂù0mÁKú9R\"Í¦2‘¶àlÃöRK˜>Ü˜\n­0ÚÜ†¯a;ÛJ¿`ú×˜ÏX­a”Ÿ·{sÉSIiômÊò!0>­þ(¿c®Ÿ 1éN¾‡	ˆLH†M\"{¡½„¹#)è\"ñtÜ:s•†ÈF{eKîËé¢ÇITÀƒ]ÙÂ^¦3F·ÙhÜ\nïœÌ7î5˜û°Do(¤×i_wÏFÊH!s•Žx]{U¶q¯¢SY\0m,˜áˆïæ®‹t£_ç¿@&2tzmèj0öÒ¶Ô\nôî03d.–Çv­&k¿P2Ì*óy÷†iÑ¾TSg/Ó„Gùåð‹WPþ	È\\AY¼ô@êrÐâµ­CCöÚÖâ…ºÃBþBÝâUÇCBÅUÇ¥K¨‡ã¢äêÒõàƒqQV<È^Ü>^ÜžÂO†d£¡Di]·\r\'j©Ÿ«öœÒH—êÆ$Ç%Pzââƒ]<HÞÅj)åÐ½®êZ¸ì¡vÁ8Ëw2ä·llÊ\"’ú3k\ZJcÂÎ¨dx·ÔÅ«B3µ‡Sk`®%ÛfóACáºÃK 	|¯ûÉI%¬#V…îÄªNVètdÄê0ÁuÌ¿©ŒCµGFÂv“Nf\'•ÄU{dœÓùE9”Ê¥«»ÒÀt$_ M=+qú0a\r˜F³­\Z:mgÑ0“BaºžÌÝdR6ž;à¤;Wøä‹ì~ê¥«âÐ–\Zè–®Ën£—!¬W>¼½x3æ·Ÿ¿ÜÄ^ç†ï.Ž“=úÅè{çùä¸p%ÛÎv\rÓwæ‡åd‹ïig\\Þ¾,sÇÿ\nÿ†nN­ûð’IxÚc.ûS8I¼‡»³¦¦ÞÉŒüZÏÃ9ãí\0\0\0\0IEND®B`‚','Authorized'),(4,'Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','#8782,Rajaji Nagar,Bangalore-21','05/06/1987','Male','560021','Bangalore','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0â\0\0\0ß\0\0\0Ü*ÿ–\0\0kPLTEõîåÿÿÿòÎ¥#æ¤\"ÁÊÔÙŒ!Ô°Œ!mÙ$œò£p_»†`\0\0\0õïçÌ˜r&&&žiZå¿šÑ£}ÂiòÍ¢øóíüú÷óÐªåŸ\0\0\0øÓ©ÅÍÔúöñ6Žä\0\0Ò¬…ÞÂ¦çÔÀ\0–ñØˆÛ±‰×…\0ôêÙñíéîÀ~ë¶bå½•ðÇ‘é±QóÖµÌ¢„Ù¹™ïÓ¥ôàÊîðó!ìÝÎÁ÷ÈÅÃ¯¿Õ°€kN„Øã¦\\Ö×Ù6xØ}ŸÖIDCãçë534ë½p·°©èª9ÚÒÉcœÌ¯°²â­m\0¿ßûuni>¢î•Ëø_«é‡‰ŒPQU?AF«ÒôhedÙêøstwœ–‹„~ÀÀÂ·°§u­Ú”ŽˆµÚúhc^–œ¥UX^¡µÒ\0aÙ%oÙªÀéx™ÔW‚Ë˜±å?BIè¯BF•ãºß®¶Àáž7á¨cA<6XNDš„mßI{kYå¸ƒqcS¨‘u¿“yÃ£¤œ\0\0ÙIDATxœí‹wÓF‡eça–J5N-;~¬14‰Iâ8³áÙÄ$,aé¶Ð,	-K)¥íf^…?G’-ÏSš;s¶{öwzi¬ŒçÓ½sïÑHr2£W©T¯û¾Gäxùüàûõz½T:…/ÏdœQ6^ª0\'QvÔ¤£Bè’áXÐúè8GX‚ÐQœ#ÂÄF,ÕðòG@‰Šhh¾±äÛãÅ”h½Êà!Úù§(DEAD4à(KÈÄ†´F¬Š/”‡\0i‰8ZÀÒ:ôX!Ž0„´´¤âé\0ÚC\Z#–N\rÐÒqtQT%ÿ”G’Ód\ZwLOß„‘¼SCüMLÉÈ`ÄÓ\r3¼LÂñ74a$¸!aˆz£0m½ÆNà	BÔLö­`Ñ)Zn‰€Î\nAÔtRÿhzi¾½Òj9¾­-†fõò¿1ÌYõµS…¿0>>M4~´p»}ye}}½‰ü´²r™h…ü²â2‚ê\0mDýHêß5²²ÿÛÿÝî±´o¸Ú‰¬ºˆ€šÛoSPI\"¤GíuÏŒRŸQ’+¼MÄsérËR{@ê!Â²a€Pî¶“t«Ë¨…<ÉÞ1€¼lbHÍ £ƒ%ô×ˆr¡e`H=F\rD¡ç;ëm0\"ÑÊ¨Sae·ç·ÚGÓ°±80dÛ€Q§šKE„®/˜ñ…ŒóRÃŽiˆP@S¾>#Qƒ1pZýÖm+ÀqC_MeLF„^·%$Œ£ˆ9‰ˆú„žcç£1cË ?¦Ô\0IˆúgÔ_ßE!$ùÑ¤ÎI®Wõ+o…/d\\1©WÕˆ€Ù¤îNÓ’ÑbA£@¸ŽHHÌ˜¾YGTR	 DÔþ^‘&êå^qÝ	aU…¨OØ:B%œœœ™™9y¿…T‡U\" ÔX\'|Ž0ÔÌÌ+(¤r8Êñò(È¹=àü\n†¨þ€3|mÂ\0r²bT\rG)\" ç£ºé$§¹=PlUG¢¾›z¨ù‚\'$†<eI}Dý6Á«40Â€R´Ê³£P|c\ZQFH_Y»ªˆXÉðçñå„d<!1GÐ b8UF[WçÌKÎ‰ÓãGKK»6€ÄU÷ f”¸*Ypó—’øÚÅr¨b;-(%¦Ééˆ§p”FœÞÏ–³±ÊíDK¦Î¼‡˜Q,\08DÈ¦/õå™Ýù2B&2…pr–…Z•C„´¥Œ§·³`hH5áL Ð^Ñ?¼æÖAÝJFíÜSÅÝ¶0—dg„@¼Ú{ß.†jïÝ˜)gAµ*oFÒ’Ó’.¥„Šùr¯el^Î¶oð°˜*$Ö’¬´™^P†ýŸg!¤/·_rŒ/aë9¥DH;Ò™b2ah£…ÝpIyz|é¶ÒÞÅn0‚:Æ›‘F„Í@%Ñ&0¢,¶çççƒ¤©>¦Íú*,Þðf¤AÍ03ã00BHÀ‹xÅ0ÎW=\"p#´/¤º]=@YÄ,p¼¤@„®ëñ9cº‡XfF#0kpf\"‚w³óˆ\ZQ_ïgl3Á+Ð<b‘0[d¬ªRù2DøVÚ¥\Z1›=±Btdˆð‹^\"âHÌr1Õ\0±.Az,â®™Áh€è‰ˆð[g¸¤1ŒØ¶\n7tÀ \ZlaS?j°É²ñfš:à8¦Á†+à°ý”ÉŒÐê&h²Q‚Ùvzñ†y\ZªÄ!Â[`×50+›>âÞ0ÞÌµLúÇ\"šÜ_ÂÎ±	ÙjtýŸE4Ù	Â\\\0GŠâ‰A÷†©Ñ1õSrb©)<rih8g.lÄ¤Íîƒ¢—§°³b–Î\Z™?hvË,uù?Ú\r£MÙìN‡…hÖ½xƒø‰Êv9Ã‰³¿c:™¬±;RÄI“œáÄƒÑ1Šôµ·#|Âl9^j„-øS*Åˆ¦÷$ú±ŸÊÖ¥Š‹D©Ö­fÁq‹Ùj•GTp†•A4l€škðˆ‹SŸÆš]T.N}öI_ŸMÍ²çcˆh0ÏèwÐ1®R™´Hó%Q.N}ÂéSú¸qî¢é\rrÞ\0Ñøîàa¼¡Šð¢\0hJôX0„,ˆˆ°K¨Œˆæ··DÄE` ÖÕE` ÙÁ˜Œ§\Z\'æ,õÏÑ°„‹‹›Ù¡o’XC\"ÉllÔY\Zqv8ÃhCŽŒÊYÑ<ÚôËTÄa}3@\\”½ÁØ2Vû„S$Æ¿‹Çæ\"‹^\n§;ØG4n€Æþ®÷>bQæ“D…)–1òÒ©\"—\'ª‹‘%Ä¹æC1Š7ŽÕ³<\'ZÝè#†n:Åšb>a’QÈ8E!Î¬X=x-B´zlWcG%(²ž‡ô1ÓVX\r3Gˆ8³n÷¬„Rˆhù¼?¸e8—*¤=\'\\ñÅ0;È	³‹±÷Ic¶#UT=D´|À€×R,NU«k)Ç,SÂã\n¡z‹gnØ>ï\"B´l$¬qdˆoóÝî›5Iß?\r’ÅðÃën÷õñ8‚h:‹¢:‡‚ìÜ þç^>ŸïÞ“0!ejðëê‡J—WË\'6±/ÑŸ¯ñW?„¤ïoD+~Í@Ñqù¦0†Ë\'F+ÄœDûç×xëÄwÝ¨ëÝµDÄÁ©Èw3–_\ZÏÑWD|ÓG¼—†Øì[ñ­€8i¸*Åˆd\ráin~[˜Wßõ»ž“ƒ¸Ú·â½UÑ:Øà!zëâJñZÔõæ;E¸‰ÏE/4w·\'V6[— \"8ƒ×6È ëv»÷^=ç×ºÍn·ÙÌ‰Õ:)BBt¼y¤ºöîõIºã#j5ûöÍ›·²\"Áx=ƒÉý(OOò/KHHÙ\"+ZxDåqE„”‡è­CÖQyD…Ú†«§¬|$D§5Ä\"JÏ°½€PÑðB\'ßfÊOÉsF€ˆ2Ñríí‰èá#âÔ`ªn¼|DŒò\rÓŠ¿kD$+²Æ’û5Q2ÿÿ\Z\"NÏêH3\rXW Ò8üŒ¨§2J¿°fýA‘ú?è€ŠT-á7ˆˆÞïç9àèˆH%ªƒ³\ZT‡k!â7˜ˆ\"õ‘®i„MAŠÔSDô1®/F‚-Pé âÔouŒ«Ä‘~¯ˆ%ûký±Ðs¿Å>\rJ%ë±ÐË¤âÆzß\r-lD´€j·{Šn71\"e~Q•5\n)’oNAÊuëŒ”T!õÚ¹	—N#D¼€jµ•‘\"Þ|<›¬s«r+¢ô)ÞŠoäƒ±BxMî¨ˆÑQ1«¹s‰„R@ÌòÍn‡?+…§VWÕŒ*B2Ñ„ˆ4+V¤\r5ã¹\nBÄù°ÝÝ6œ”ejµpVyî¬¸…×O©»mp2cÒÌU€<wVJC!Uoô=SHžªžmT³«×Îž`’>æ²*âÍøé;ß°Þã–4õ¯\n«¯ú¸ZHà#ZAê}ÿ\"’§¦Í¨ú{Oä[U(#âT6ì]¨X/«C™c¹i|×»ùá2!¬Ra­.òw„cíjð.¨v¿kkÑø&0¾/\"–§^ÈY2Îc!òOg@òT‚hÇXÈ¡!f8D¬m\rÑ†±CCž”‚•ýÄ\\Î”0ø[,Dñy7Huj„hÈ˜CD”<µiy£hâ¬…&¢ìÙS8Ë©D¸!‡„˜‘ ¢q\"Ì….¢ô9p(Ç»pÞˆqHˆ„(š’)F]H\n0wþ\nB/TÏdD1£Ÿ¹’ƒ\Z’6ášr¦UOÖÄÈd”`†dLx§Êç£bäp˜_Éé32&ÄZHR?å¡õ(’ùº†dLx«	Ï*FƒŒ{‘fTBÒ€¹+ý?½dÝ‰¤\'NÛŸÁ¸¨ðÖÒ iÆý²FL|n¸½©º‰5$¡,ÄœäGö³Ø„ˆÉO·6#ý:\'ÇAªtþ]ŒØ\"¦<ÃßÚŒÌ;Øô¡&¼ÈtÁ1íM¶‰wƒm­•nÈ Ûc\"¦¾OÃnÂáùÛ|si†äLHtÓê¡\Z\ZoE1Ïÿžïl>¾àJc?Û3:8¸7a,ÉËí¬ÞPDáÕïì<ÍWÜïÅo¨¯)!ÙžÑ3·Ò»¿ãÔ0µÞPvUb=çÛÃ®[éŒuö%_!¤`NöZ¨ÞòX³Sq{O6Ã¦a’}½ä—vI\'î<yÚðB¹²ïàë€	¥oLÜv£–šwyê³šoÓvUÏ÷ïìì÷\Z•æX,wCÒ^FfÈóWäG>v‡­u*•­û;W´}Vûo:®Jðˆwö:•Å Šñ¦ÿ=lú8¿¦z±ç×¦Aâ³Í­\'›ž¥â«e¿LqÕÀ;Þ¸Îò¯Š$ÞôÅ¤!UÄzÖ\ZmVÜŠŽÏÞ¿˜T\0Óygç~Ï­ˆ=	{ó@Ù÷áz€í)•*Òv‰Ïº[‡;wüLÐ[4U®\Z¦¾­eÞ;iÄ¼\Z‘Ô³¡Ô&FYÛÆØƒ¥Ï*_M¬ýFÛÈ;…Á\'œí›	ýÏ|÷W¢o’Ž¸ÛHl¾Y©,“\0$Ã¾Ñ–ŽÞ·‡y•wÒRÆ›@ùüODŸ\'1rÑFzŸÝä1Áï%¦†cèˆùÄà\"Qåë4BÂøOõ1µ¾…$Í16\0¼]:\ZŽƒÂ,Å;é/–J˜È¨Š¼HÒìÅIÓèá!ãÎá˜«i¾¾–{ŠäO&0ÞÔG¾lPè™½é=“¹³Õh¤^.?Ÿ’ªS¢DÄg;O/%&!fî+rT2¢<Þü!$Œ“¦m$_y7‰01óÀà;ÒxÃªõ¢\rGø$‘0±´g”Æ‘PÎ¸k<J&LF$“78cGú2B)#,Ú„ªÜO!LAÌ\\ÊƒÅx#\'”1Â£ME:	‡ \Z06øÁÿ‚0þƒ;ôôË*	e¿.bfÊÈÇ›í‰/U„ßÕ¸$ú@»Äè>MJˆºˆ`;.?äk*Æ¯jã”p_ƒP1s	s˜õ›í‰‰‰ÚU)á—hF`´i¤CMDhîp©ùÔvˆ!eŒÆïAµ†›\ZKõ3¥§HGÅ›í>Fí	aM`E›´ŒC$µÀ…†ñf@Hå¯ÖâcÆ‡€±˜RµÁ3úŒq¼ÆïØÔñCú°ÏXÒÿŽ¦»©K¨˜ÙÑ˜ò÷•ßFšð×\ZóaôúÑ¦ÓK\\?1DÌÜÔ¬›\"!aü÷Ÿc}Uã>µ£»¯š”Ú!f.íkžå0ÞlLð:3Ô-1dÔ6ÚŒH-gí<’Ö~¡Ï\\N\0i^°ÓÐ†pÄÌfOÇ—š$6¬]§¿Ì8‘ÙÐòS÷Aâß\Z1S¤å¬7\0ÆOÏœ¹.~^{¬Øt€€`ÄàÊQúˆi‹\0ŒŸÊ<uBcQ£‰¤ÆˆAÔI‘¯SüTæ©µgi‹\Z`œ1F$†Ì§¸Ôò¾\0põGQŒ©½DwËÀ„†ˆ™Ò£dC.÷ÒüôÌsÁS“	;ÂT{¤ˆ¤ØJ„l¤ù©ÄSÓ½\r¤¶ˆ¤ ËWÔ§½ò=ï§<¡à©µ„Äß4õQ;ÄLé`LyÞùx#ø©$¦J.\0{¦>j‰Hbë“†rùYšŸŠžªŠ6Pgùb4ˆòPqÍ1Ïõÿ¹ˆÈyê±tÖÝl,[YÐ‘”;ù†²Ã\Zñ‘÷TY´é¸[Ö€öˆdLÞÝžod~Êyª$ÚtÜ}`Á-—=\"Ñæ>ï¯l¼ãi ¶Nåj›¦ëZDQZ(ˆdPä]úRróe\"Y<<•á«µ‹1”‰6{CÊå‡©~zæÌOÔi8vi¾$†ÂC$£r“ÚÕAM6ä~ÊÆÔ~´	vc<ÁäËà\"•nl¹\rbLª¾Qù)]§ÖÈLªÙqÝ§w×Ñ-„Œ¨~÷~¯ã>JõS:¦Öþå.o=A	 ‚F€èÒæAmâ8ÙO‡žz<Q;¸i\\f§iDˆ66¶×?þâùsIqCüôùóŽkµÍ\r´è)ÓC•J™í«/^üòÓÏ×oÝºõc òï­ë?ÿôË‹W7J#…‹ô_[†Ë1¥üöÍ\0\0\0\0IEND®B`‚','Authorized');
/*!40000 ALTER TABLE `downer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encryptkey`
--

DROP TABLE IF EXISTS `encryptkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encryptkey` (
  `id` int(11) NOT NULL auto_increment,
  `downer` text,
  `fname` text,
  `enkey` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encryptkey`
--

LOCK TABLES `encryptkey` WRITE;
/*!40000 ALTER TABLE `encryptkey` DISABLE KEYS */;
INSERT INTO `encryptkey` VALUES (1,'charan','cn.jsp','ja95v7jt4m8k3p8s','04/10/2016   13:19:11'),(2,'charan','cauth.jsp','qe64e6xb4p3y8m8a','04/10/2016   13:19:27'),(3,'charan','dauth.jsp','hz74o1ay0b6k0j4c','04/10/2016   13:20:35'),(4,'kumar','oauth.jsp','hy39q2yd4k5v5v8v','04/10/2016   13:21:19'),(5,'kumar','file.jsp','tc25c4or2r0o8y8m','04/10/2016   18:00:02'),(6,'charan','filea.jsp','iz73q6sy1x1t9d6j','04/10/2016   18:00:31'),(7,'charan','dcheck.jsp','wm26z7wm8u0f2m7b','04/10/2016   18:09:40'),(8,'kumar','check.jsp','yn15k2as5u3h9o4v','04/10/2016   18:10:27'),(9,'kumar','co.jsp','xj66y1fx9y9v9f4j','13/10/2016   12:31:10'),(10,'kumar','co.jsp','vu94t6ja8k7p4r4x','13/10/2016   12:31:32'),(11,'kumar','cc.jsp','ce09t6qz7f6h1g5s','13/10/2016   12:46:18'),(12,'charan','csr.jsp','kz17o4qz5u9c3a3z','13/10/2016   12:47:16'),(13,'kumar','vzc.jsp','vx26d6ji1w0p9q5b','13/10/2016   12:47:56'),(14,'kumar','abc.jsp','cz97y6nr4s7j4b7l','13/10/2016   12:59:51'),(15,'charan','abc.jsp','jp99d5sp0e1y8n4v','13/10/2016   13:00:16'),(16,'charan','abc.jsp','gp38b7sx1a0z6b1p','13/10/2016   13:08:18'),(17,'kumar','acb.jsp','iw55u6wn9x9z9c5q','13/10/2016   13:09:21'),(18,'kumar','av.jsp','nv20s9jw1p2e7l9j','13/10/2016   13:17:26'),(19,'kumar','cat.jsp','vk87a5jx3m3o8e6l','13/10/2016   15:09:20'),(20,'charan','caff.jsp','wh48j9cg3h9g8v3c','13/10/2016   15:10:00'),(21,'charan','trt.jsp','wk22c3uh8h4o4d0x','13/10/2016   16:23:57'),(22,'kumar','trtrt.jsp','vs36u8cm4m5d4k9d','13/10/2016   16:54:14'),(23,'kumar','co.jsp','so30z1of8z9v7j2e','13/10/2016   17:08:14'),(24,'charan','cc.jsp','mv40s9ii7s6h7m6g','13/10/2016   17:09:50'),(25,'charan','co.jsp','cz20m6fl0w6a2y9j','13/10/2016   17:17:43'),(26,'kumar','cc.jsp','fm59w8nc5a7s3e2a','13/10/2016   17:18:29'),(27,'kiran','connect.jsp','nq83b4je9g6c8e7k','13/10/2016   18:18:35'),(28,'kiran','sat.jsp','pa60p1uw5f0u2p5u','13/10/2016   18:19:26'),(29,'Manjunath','KeyGen.java','nc39r4vr9x9j6b1t','14/10/2016   13:59:17'),(30,'Manjunath','IPSpoof.java','kz24c7bz4o4j9c9w','14/10/2016   13:59:51'),(31,'kumar','KeyGen1.java','iz83q8km4d5h7w5n','14/10/2016   14:01:16');
/*!40000 ALTER TABLE `encryptkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownerfiles`
--

DROP TABLE IF EXISTS `ownerfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownerfiles` (
  `id` int(11) NOT NULL auto_increment,
  `fname` text,
  `ct` text,
  `trapdoor` text,
  `sk` text,
  `rank` int(11) default NULL,
  `dt` text,
  `downer` text,
  `enckey` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownerfiles`
--

LOCK TABLES `ownerfiles` WRITE;
/*!40000 ALTER TABLE `ownerfiles` DISABLE KEYS */;
INSERT INTO `ownerfiles` VALUES (25,'co.jsp','PCVAIHBhZ2UgaW1wb3J0PSJqYXZhLnNxbC4qIiU+DQo8JUAgcGFnZSBpbXBvcnQ9ImphdmEudXRpbC4qIiAlPg0KPCUNCglDb25uZWN0aW9uIGNvbm5lY3Rpb24gPSBudWxsOw0KIAl0cnkgew0KICAgICANCg0KCSAgCUNsYXNzLmZvck5hbWUoImNvbS5teXNxbC5qZGJjLkRyaXZlciIpOwkNCgkJY29ubmVjdGlvbiA9IERyaXZlck1hbmFnZXIuZ2V0Q29ubmVjdGlvbigiamRiYzpteXNxbDovL2xvY2FsaG9zdDozMzA2L2VkbSIsInJvb3QiLCJyb290Iik7DQogICAgICAJU3RyaW5nIHNxbD0iIjsNCg0KCX0NCgljYXRjaChFeGNlcHRpb24gZSkNCgl7DQoJCVN5c3RlbS5vdXQucHJpbnRsbihlKTsNCgl9DQolPg==','593fd0f53ab8e64da9fff0559c8b71e0875c511','[B@1a8bd74',0,'MTMvMTAvMjAxNiAgIDE3OjE3OjQz','charan','cz20m6fl0w6a2y9j'),(28,'sat.jsp','PHRpdGxlPkF1dGhlbnRpY2F0aW9uIFBhZ2U8L3RpdGxlPg0KPCVAIHBhZ2UgbGFuZ3VhZ2U9ImphdmEiIGNvbnRlbnRUeXBlPSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9SVNPLTg4NTktMSIJcGFnZUVuY29kaW5nPSJJU08tODg1OS0xIiU+DQo8JUBwYWdlIGltcG9ydD0iamF2YS51dGlsLioiJT4NCjwlQCBpbmNsdWRlIGZpbGU9ImNvbm5lY3QuanNwIiU+DQo8JUBwYWdlCWltcG9ydD0iamF2YS51dGlsLiosamF2YS5zZWN1cml0eS5LZXksamF2YS51dGlsLlJhbmRvbSxqYXZheC5jcnlwdG8uQ2lwaGVyLGphdmF4LmNyeXB0by5zcGVjLlNlY3JldEtleVNwZWMsb3JnLmJvdW5jeWNhc3RsZS51dGlsLmVuY29kZXJzLkJhc2U2NCIlPiANCjwlQCBwYWdlIGltcG9ydD0iamF2YS5zcWwuKixqYXZhLnV0aWwuUmFuZG9tLGphdmEuaW8uUHJpbnRTdHJlYW0samF2YS5pby5GaWxlT3V0cHV0U3RyZWFtLGphdmEuaW8uRmlsZUlucHV0U3RyZWFtLGphdmEuc2VjdXJpdHkuRGlnZXN0SW5wdXRTdHJlYW0samF2YS5tYXRoLkJpZ0ludGVnZXIsamF2YS5zZWN1cml0eS5NZXNzYWdlRGlnZXN0LGphdmEuaW8uQnVmZmVyZWRJbnB1dFN0cmVhbSIlPg0KPCVAIHBhZ2UgaW1wb3J0PSJqYXZhLnNlY3VyaXR5LktleSxqYXZhLnNlY3VyaXR5LktleVBhaXIsamF2YS5zZWN1cml0eS5LZXlQYWlyR2VuZXJhdG9yLGphdmF4LmNyeXB0by5DaXBoZXIiJT4NCjwlQHBhZ2UJaW1wb3J0PSJqYXZhLnV0aWwuKixqYXZhLnRleHQuU2ltcGxlRGF0ZUZvcm1hdCxqYXZhLnV0aWwuRGF0ZSxqYXZhLmlvLkZpbGVJbnB1dFN0cmVhbSxqYXZhLmlvLkZpbGVPdXRwdXRTdHJlYW0samF2YS5pby5QcmludFN0cmVhbSIlPg0KDQo8JQ0KCVN0cmluZyBuYW1lID0gcmVxdWVzdC5nZXRQYXJhbWV0ZXIoInVzZXJpZCIpOw0KCVN0cmluZyBwYXNzID0gcmVxdWVzdC5nZXRQYXJhbWV0ZXIoInBhc3MiKTsNCg0KCXRyeSB7DQoNCgkJU3RyaW5nIHNxbCA9ICJTRUxFQ1QgKiBGUk9NIGNsb3VkIHdoZXJlIG5hbWU9JyIgKyBuYW1lKyAiJyBhbmQgcGFzcz0nIiArIHBhc3MgKyAiJyAiOw0KCQlTdGF0ZW1lbnQgc3RtdCA9IGNvbm5lY3Rpb24uY3JlYXRlU3RhdGVtZW50KCk7DQoJCVJlc3VsdFNldCBycyA9IHN0bXQuZXhlY3V0ZVF1ZXJ5KHNxbCk7DQoNCgkJaWYgKHJzLm5leHQoKT09dHJ1ZSkNCgkJew0KCQkJcmVzcG9uc2Uuc2VuZFJlZGlyZWN0KCJDX01haW4uanNwIik7DQoJCX0NCgkJIGVsc2UgDQoJCXsNCgkJCXJlc3BvbnNlLnNlbmRSZWRpcmVjdCgid3Jvbmdsb2dpbi5odG1sIik7DQoJCX0NCg0KCX0gDQoJY2F0Y2ggKEV4Y2VwdGlvbiBlKQ0KCXsNCgkJb3V0LnByaW50KGUpOw0KCQllLnByaW50U3RhY2tUcmFjZSgpOw0KCX0NCiU+DQoNCg==','-3263caaad99bc354e6c9dd57f85e43139296de83','[B@172aa3f',0,'MTMvMTAvMjAxNiAgIDE4OjE5OjI2','kiran','pa60p1uw5f0u2p5u'),(29,'KeyGen.java','aW1wb3J0IGphdmEudXRpbC5BcnJheUxpc3Q7DQppbXBvcnQgamF2YS51dGlsLkNvbGxlY3Rpb25zOw0KaW1wb3J0IGphdmEudXRpbC5MaXN0Ow0KaW1wb3J0IGphdmEudXRpbC5SYW5kb207DQoNCnB1YmxpYyBjbGFzcyBHZW4yIHsNCg0KCVJhbmRvbSByciA9IG5ldyBSYW5kb20oKTsNCg0KCXB1YmxpYyBTdHJpbmcgcjEoKSB7DQoNCgkJU3RyaW5nIHN0ciA9ICIiOw0KCQlzdHIgPSBTdHJpbmcudmFsdWVPZihyci5uZXh0SW50KDIwKSk7DQoJCXJldHVybiAoc3RyKTsNCg0KCX0NCglwdWJsaWMgU3RyaW5nIHIyKCkgew0KDQoJCVN0cmluZyBzdHIyID0gIiI7DQoJCXN0cjIgPSBTdHJpbmcudmFsdWVPZihyci5uZXh0SW50KDIwKSk7DQoJCXJldHVybiAoc3RyMik7DQoNCgl9DQoNCgkNCg0KCXB1YmxpYyBzdGF0aWMgdm9pZCBtYWluKFN0cmluZyBhcmdzW10pIHsNCg0KCQlHZW4yIEdlbmVyYXRvciA9IG5ldyBHZW4yKCk7DQoNCgkJU3lzdGVtLm91dC5wcmludGxuKEdlbmVyYXRvci5yMSgpKTsNCgkJU3lzdGVtLm91dC5wcmludGxuKEdlbmVyYXRvci5yMigpKTsNCg0KCX0NCg0KfQ==','4411a28a763623b7f6aaae7e352ae43641cb4ac5','[B@114a947',0,'MTQvMTAvMjAxNiAgIDEzOjU5OjE3','Manjunath','nc39r4vr9x9j6b1t'),(30,'IPSpoof.java','aW1wb3J0IGphdmEuYXd0Lio7DQppbXBvcnQgamF2YS5hd3QuZXZlbnQuQWN0aW9uRXZlbnQ7DQppbXBvcnQgamF2YS5hd3QuZXZlbnQuQWN0aW9uTGlzdGVuZXI7DQppbXBvcnQgamF2YS5hd3QuZXZlbnQuSXRlbUxpc3RlbmVyOw0KaW1wb3J0IGphdmEuaW8uRGF0YUlucHV0U3RyZWFtOw0KaW1wb3J0IGphdmEuaW8uRGF0YU91dHB1dFN0cmVhbTsNCmltcG9ydCBqYXZhLm5ldC5JbmV0QWRkcmVzczsNCmltcG9ydCBqYXZhLm5ldC5TZXJ2ZXJTb2NrZXQ7DQppbXBvcnQgamF2YS5uZXQuU29ja2V0Ow0KaW1wb3J0IGphdmEuc3FsLkNvbm5lY3Rpb247DQppbXBvcnQgamF2YXguc3dpbmcuKjsNCg0KDQpwdWJsaWMgY2xhc3MgSVBTcG9vZmVyIGV4dGVuZHMgSkZyYW1lIGltcGxlbWVudHMgQWN0aW9uTGlzdGVuZXINCnsNCglKUGFuZWwgcDE7DQoJSkxhYmVsIGwxLGwyLGwzOw0KCUpUZXh0RmllbGQgdDEsdDI7DQoJSlRleHRBcmVhIHRhOw0KCUpTY3JvbGxQYW5lIHBhbmU7DQoJSkJ1dHRvbiBiMSxiMjsNCglTdHJpbmcga2V5V29yZCA9ICJlZjUwYTBlZjJjM2UzYTVmZGY4MDNhZTk3NTJjOGM2NiI7DQoJDQoJSkNvbWJvQm94IGMxLGMyOw0KCQ0KCXB1YmxpYyBGb250IGYxID0gbmV3IEZvbnQoIlRpbWVzIG5ldyByb21hbiIsIEZvbnQuQk9MRCwgMjUpOw0KCXB1YmxpYyBGb250IGYyID0gbmV3IEZvbnQoIlRpbWVzIG5ldyByb21hbiIsIEZvbnQuQk9MRCwgMTUpOw0KCQ0KCUlQU3Bvb2ZlcigpDQoJew0KCQlwMT1uZXcgSlBhbmVsKCk7DQoJCXAxLnNldExheW91dChudWxsKTsNCgkJcDEuc2V0QmFja2dyb3VuZChDb2xvci5yZWQpOw0KCQlzZXRUaXRsZSgiSVAgU1BPT0ZFUiA6OiBQYXNzaXZlIElQIFRyYWNlYmFjazogRGlzY2xvc2luZyB0aGUgTG9jYXRpb25zIG9mIElQIFNwb29mZXJzIEZyb20gUGF0aCBCYWNrc2NhdHRlciIpOw0KCQkNCgkgSW1hZ2VJY29uIGJhbm5lciA9IG5ldyBJbWFnZUljb24odGhpcy5nZXRDbGFzcygpLmdldFJlc291cmNlKCJBdHRhY2tlcjguZ2lmIikpOw0KCQkgSkxhYmVsIHRpdGxlID0gbmV3IEpMYWJlbCgpOw0KCQkgdGl0bGUuc2V0SWNvbihiYW5uZXIpOw0KCQkgdGl0bGUuc2V0Qm91bmRzKDE1MCwgMCwxMjAsMTIwKTsNCgkJDQoJCQ0KCQlsMT1uZXcgSkxhYmVsKCJTZWxlY3QgQ2x1c3RlciA6Iik7DQoJCWwxLnNldEZvbnQoZjIpOw0KCQlsMS5zZXRGb3JlZ3JvdW5kKENvbG9yLndoaXRlKTsNCgkJbDEuc2V0Qm91bmRzKDkwLDEwMCwxMTAsMzApOw0KCQkNCgkJDQoJCWwyPW5ldyBKTGFiZWwoIkRlc2l0IElQIik7DQoJCWwyLnNldEZvbnQoZjIpOw0KCQlsMi5zZXRGb3JlZ3JvdW5kKENvbG9yLndoaXRlKTsNCgkJbDIuc2V0Qm91bmRzKDkwLDE1MCwxMDAsMzApOw0KCQkNCgkJbDM9bmV3IEpMYWJlbCgiSVAgQWRkcmVzcyAiKTsNCgkJbDMuc2V0Rm9udChmMik7DQoJCWwzLnNldEZvcmVncm91bmQoQ29sb3Iud2hpdGUpOw0KCQlsMy5zZXRCb3VuZHMoOTAsMjAwLDEwMCwzMCk7DQoJCQ0KCQl0MT1uZXcgSlRleHRGaWVsZCgpOw0KCQl0MS5zZXRCb3VuZHMoMjEwLDIwMCwxMDAsMjUpOw0KLy8JCXQyPW5ldyBKVGV4dEZpZWxkKCk7DQovLwkJdDIuc2V0Qm91bmRzKDIxMCwxNTAsMTAwLDI1KTsNCgkJDQoJCWMxPW5ldyBKQ29tYm9Cb3goKTsNCgkJYzEuYWRkSXRlbSgiQ0hPT1NFIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXIxIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXIyIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXIzIik7DQoJCWMxLmFkZEl0ZW0oIkNsdXN0ZXI0Iik7DQoJCWMxLnNldEJvdW5kcygyMTAsMTAwLDEwMCwyNSk7DQoJCQ0KCQljMj1uZXcgSkNvbWJvQm94KCk7DQoJCWMyLmFkZEl0ZW0oIk5vZGU1Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU2Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU3Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU4Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGU5Iik7DQoJCWMyLmFkZEl0ZW0oIk5vZGUxMCIpOw0KCQkNCgkJYzEuYWRkQWN0aW9uTGlzdGVuZXIodGhpcyk7DQoJCQ0KCQljMi5zZXRCb3VuZHMoMjEwLDE1MCwxMDAsMjUpOw0KCQkNCgkJYjE9bmV3IEpCdXR0b24oIkdldCBJUCBBZGRyZXNzIik7DQoJCWIxLnNldEJvdW5kcyg3MCwzMzUsMTMwLDI1KTsNCgkJDQoJCWIyPW5ldyBKQnV0dG9uKCJNb2RpZnkiKTsNCgkJYjIuc2V0Qm91bmRzKDIxMCwzMzUsMTAwLDI1KTsNCgkJDQoJCQ0KCQ0KCQkNCgkJYjEuYWRkQWN0aW9uTGlzdGVuZXIodGhpcyk7DQoJCWIyLmFkZEFjdGlvbkxpc3RlbmVyKHRoaXMpOw0KCQkNCgkJDQoJDQovLwkJcDEuYWRkKGwxKTsNCgkJcDEuYWRkKGwyKTsNCi8vCQlwMS5hZGQoYzEpOw0KCQlwMS5hZGQodDEpOw0KLy8JCXAxLmFkZCh0Mik7DQoJCXAxLmFkZChiMSk7cDEuYWRkKGwzKTsNCgkJcDEuYWRkKGMyKTsNCgkJcDEuYWRkKGIyKTsNCgkJcDEuYWRkKHRpdGxlKTsNCgkJYWRkKHAxKTsNCgkJc2V0U2l6ZSg0MTAsNDYwKTsNCgkJc2V0VmlzaWJsZSh0cnVlKTsNCgkJDQoJCQ0KCX0NCgkNCglwdWJsaWMgc3RhdGljIHZvaWQgbWFpbihTdHJpbmdbXSBhcmdzKSANCgl7DQoJCW5ldyBJUFNwb29mZXIoKTsNCgkJDQoJCXRyeQ0KCQl7DQoJCQlVSU1hbmFnZXIuc2V0TG9va0FuZEZlZWwoImNvbS5zdW4uamF2YS5zd2luZy5wbGFmLndpbmRvd3MuV2luZG93c0xvb2tBbmRGZWVsIik7DQoJCX1jYXRjaChFeGNlcHRpb24gZXMpe1N5c3RlbS5vdXQucHJpbnRsbihlcyk7fQ0KCQkNCgl9DQoJDQoJDQoJcHVibGljIHZvaWQgYWN0aW9uUGVyZm9ybWVkKEFjdGlvbkV2ZW50IGExKSANCgl7DQoJCQ0KCQlpZihhMS5nZXRTb3VyY2UoKT09YzIpDQoJCXsNCgkJCQ0KCQl9DQoJCWlmKGExLmdldFNvdXJjZSgpPT1iMSkNCgkJew0KLy8JCQlTdHJpbmcgY2x1c3Rlcj0oYzEuZ2V0U2VsZWN0ZWRJdGVtKCkpLnRvU3RyaW5nKCk7DQoJCQlTdHJpbmcgbm9kZT0oYzIuZ2V0U2VsZWN0ZWRJdGVtKCkpLnRvU3RyaW5nKCk7DQoJCQ0KCQkJDQoJCQl0cnkNCgkJCXsNCgkJCQkNCgkJCQlTdHJpbmcgaT1KT3B0aW9uUGFuZS5zaG93SW5wdXREaWFsb2cobnVsbCwiRW50ZXIgVGhlIFJvdXRlciBJUCBBZGRyZXNzIik7DQoJCQkJU29ja2V0IHMxPW5ldyBTb2NrZXQoaSw0NDQpOw0KCQkJCQlEYXRhT3V0cHV0U3RyZWFtIGRvczU9bmV3IERhdGFPdXRwdXRTdHJlYW0oczEuZ2V0T3V0cHV0U3RyZWFtKCkpOw0KLy8JCQkJCWRvczUud3JpdGVVVEYoY2x1c3Rlcik7DQoJCQkJCWRvczUud3JpdGVVVEYobm9kZSk7DQoJCQkJDQoJCQkJCURhdGFJbnB1dFN0cmVhbSBpbjU9bmV3IERhdGFJbnB1dFN0cmVhbShzMS5nZXRJbnB1dFN0cmVhbSgpKTsNCgkJCQkJU3RyaW5nIG1zZz1pbjUucmVhZFVURigpOw0KCQkJCQlTdHJpbmcgZW5lPWluNS5yZWFkVVRGKCk7DQoJCQkJCVN5c3RlbS5vdXQucHJpbnRsbihtc2cpOw0KCQkJCQl0MS5zZXRUZXh0KGVuZSk7DQoJCQkJCQ0KCQkJCQkNCgkJCQkNCgkJCX1jYXRjaChFeGNlcHRpb24gZXMpe1N5c3RlbS5vdXQucHJpbnRsbihlcyk7fQ0KCQl9DQoJCQ0KCQlpZihhMS5nZXRTb3VyY2UoKT09YjIpDQoJCXsNCgkJCVN0cmluZyBub2RlPShjMi5nZXRTZWxlY3RlZEl0ZW0oKSkudG9TdHJpbmcoKTsNCgkJCVN0cmluZyBtZW09dDEuZ2V0VGV4dCgpOw0KCQkJDQoJCQkNCgkJCXRyeQ0KCQkJew0KCQkJCQ0KCQkJCUluZXRBZGRyZXNzIGlhID0gSW5ldEFkZHJlc3MuZ2V0TG9jYWxIb3N0KCk7DQoJCQkJU3RyaW5nIGlwMSA9IGlhLmdldEhvc3RBZGRyZXNzKCk7DQoJCQkJDQoJCQkJU3RyaW5nIGk9Sk9wdGlvblBhbmUuc2hvd0lucHV0RGlhbG9nKG51bGwsIkVudGVyIFRoZSBSb3V0ZXIgSVAgQWRkcmVzcyIpOw0KCQkJCQlTb2NrZXQgczE9bmV3IFNvY2tldChpLDkwMSk7DQoJCQkJCURhdGFPdXRwdXRTdHJlYW0gZG9zNT1uZXcgRGF0YU91dHB1dFN0cmVhbShzMS5nZXRPdXRwdXRTdHJlYW0oKSk7DQoJCQkJCWRvczUud3JpdGVVVEYobm9kZSk7DQoJCQkJCWRvczUud3JpdGVVVEYobWVtKTsNCgkJCQkJZG9zNS53cml0ZVVURihpcDEpOw0KCQkJCQkNCgkJCQkJRGF0YUlucHV0U3RyZWFtIGluNT1uZXcgRGF0YUlucHV0U3RyZWFtKHMxLmdldElucHV0U3RyZWFtKCkpOw0KCQkJCQlTdHJpbmcgbXNnPWluNS5yZWFkVVRGKCk7DQoJCQkJCQ0KCQkJCQlpZihtc2cuZXF1YWxzSWdub3JlQ2FzZSgiYXR0YWNrIikpDQoJCQkJCXsNCgkJCQkJCUpPcHRpb25QYW5lLnNob3dNZXNzYWdlRGlhbG9nKG51bGwsIlN1Y2Nlc3NmdWxseSBBdHRhY2tlZCIpOw0KCQkJCQl9DQoJCQkJCWlmKG1zZy5lcXVhbHNJZ25vcmVDYXNlKCJibG9jayIpKQ0KCQkJCQl7DQoJCQkJCQlKT3B0aW9uUGFuZS5zaG93TWVzc2FnZURpYWxvZyhudWxsLCJZb3UgQXJlIEJsb2NrZWQiKTsNCgkJCQkJfQ0KCQkJCQkNCgkJCQkNCgkJCQkJDQoJCQkJDQoJCQl9Y2F0Y2goRXhjZXB0aW9uIGVzKXtTeXN0ZW0ub3V0LnByaW50bG4oZXMpO30NCgkJfQ0KCQkNCgkJDQoJfQ0KCQ0KDQp9DQo=','376b862d763bf803f01d7a145e1b9f13a582b2c7','[B@2b2af3',0,'MTQvMTAvMjAxNiAgIDEzOjU5OjUx','Manjunath','kz24c7bz4o4j9c9w'),(31,'KeyGen1.java','aW1wb3J0IGphdmEudXRpbC5BcnJheUxpc3Q7DQppbXBvcnQgamF2YS51dGlsLkNvbGxlY3Rpb25zOw0KaW1wb3J0IGphdmEudXRpbC5MaXN0Ow0KaW1wb3J0IGphdmEudXRpbC5SYW5kb207DQoNCnB1YmxpYyBjbGFzcyBHZW4yIHsNCg0KCVJhbmRvbSByciA9IG5ldyBSYW5kb20oKTsNCg0KCXB1YmxpYyBTdHJpbmcgcjEoKSB7DQoNCgkJU3RyaW5nIHN0ciA9ICIiOw0KCQlzdHIgPSBTdHJpbmcudmFsdWVPZihyci5uZXh0SW50KDIwKSk7DQoJCXJldHVybiAoc3RyKTsNCg0KCX0NCglwdWJsaWMgU3RyaW5nIHIyKCkgew0KDQoJCVN0cmluZyBzdHIyID0gIiI7DQoJCXN0cjIgPSBTdHJpbmcudmFsdWVPZihyci5uZXh0SW50KDIwKSk7DQoJCXJldHVybiAoc3RyMik7DQoNCgl9DQoNCgkNCg0KCXB1YmxpYyBzdGF0aWMgdm9pZCBtYWluKFN0cmluZyBhcmdzW10pIHsNCg0KCQlHZW4yIEdlbmVyYXRvciA9IG5ldyBHZW4yKCk7DQoNCgkJU3lzdGVtLm91dC5wcmludGxuKEdlbmVyYXRvci5yMSgpKTsNCgkJU3lzdGVtLm91dC5wcmludGxuKEdlbmVyYXRvci5yMigpKTsNCg0KCX0NCg0KfQ==','4411a28a763623b7f6aaae7e352ae43641cb4ac5','[B@174cb21',0,'MTQvMTAvMjAxNiAgIDE0OjAxOjE2','kumar','iz83q8km4d5h7w5n');
/*!40000 ALTER TABLE `ownerfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `owner` text,
  `fname` text,
  `secretkey` text,
  `decryptkey` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,'arun','charan','cn.jsp','Permitted','Authorized'),(2,'arun','kumar','check.jsp','Permitted','Authorized'),(3,'arun','kumar','oauth.jsp','Permitted','Authorized'),(4,'arun','kumar','vzc.jsp','Permitted','Authorized'),(5,'arun','charan','csr.jsp','Permitted','Authorized'),(6,'ramesh','kiran','connect.jsp','Permitted','Authorized'),(7,'tmksmanju','Manjunath','IPSpoof.java','Permitted','Authorized');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `keyword` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES (1,'arun','con','04/10/2016   16:07:24'),(2,'arun','cn','04/10/2016   16:09:59'),(3,'arun','cn','04/10/2016   16:10:03'),(4,'arun','cn','04/10/2016   16:11:01'),(5,'arun','t','04/10/2016   16:50:28'),(6,'arun','t','04/10/2016   16:50:31'),(7,'arun','dauth','04/10/2016   16:50:41'),(8,'arun','dauth','04/10/2016   16:50:45'),(9,'arun','check.jsp','04/10/2016   18:15:09'),(10,'arun','check.jsp','04/10/2016   18:17:27'),(11,'arun','oauth.jsp','04/10/2016   18:48:16'),(12,'arun','oauth.jsp','04/10/2016   18:48:56'),(13,'arun','file','04/10/2016   19:01:59'),(14,'arun','file','04/10/2016   19:02:02'),(15,'arun','filea','04/10/2016   19:02:10'),(16,'arun','filea','04/10/2016   19:02:13'),(17,'arun','vzc','13/10/2016   12:54:49'),(18,'arun','vzc.jsp','13/10/2016   12:55:47'),(19,'arun','csr.jsp','13/10/2016   12:57:19'),(20,'ramesh','connect.jsp','13/10/2016   18:29:32'),(21,'ramesh','connect.jsp','13/10/2016   18:35:15'),(22,'tmksmanju','con','14/10/2016   14:04:04'),(23,'tmksmanju','con','14/10/2016   14:06:01');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shared_files`
--

DROP TABLE IF EXISTS `shared_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shared_files` (
  `id` int(11) NOT NULL auto_increment,
  `dupli_file` text,
  `dupli_file_owner` text,
  `shared_file` text,
  `shared_file_owner` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shared_files`
--

LOCK TABLES `shared_files` WRITE;
/*!40000 ALTER TABLE `shared_files` DISABLE KEYS */;
INSERT INTO `shared_files` VALUES (2,'check.jsp','kumar','dcheck.jsp','charan'),(3,'vzc.jsp','kumar','csr.jsp','charan'),(4,'abc.jsp','charan','acb.jsp','kumar'),(5,'cat.jsp','kumar','caff.jsp','charan'),(6,'ttr.jsp','kumar','trt.jsp','charan'),(7,'cc.jsp','kumar','co.jsp','charan'),(8,'connect.jsp','kiran','co.jsp','charan'),(9,'aut.jsp','kumar','sat.jsp','kiran'),(10,'KeyGen1.java','kumar','KeyGen.java','Manjunath');
/*!40000 ALTER TABLE `shared_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `fname` text,
  `task` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'charan','cn.jsp','Upload','04/10/2016   13:19:11'),(2,'charan','cauth.jsp','Upload','04/10/2016   13:19:27'),(3,'charan','dauth.jsp','Upload','04/10/2016   13:20:35'),(4,'kumar','oauth.jsp','Upload','04/10/2016   13:21:19'),(5,'kumar','oauth.jsp','Shared File','04/10/2016   13:22:00'),(6,'arun','con','Search','04/10/2016   16:07:24'),(7,'arun','cn','Search','04/10/2016   16:09:59'),(8,'arun','cn','Search','04/10/2016   16:10:03'),(9,'arun','cn','Search','04/10/2016   16:11:01'),(10,'arun','cn.jsp','Download','04/10/2016   16:40:54'),(11,'arun','t','Search','04/10/2016   16:50:28'),(12,'arun','t','Search','04/10/2016   16:50:31'),(13,'arun','dauth','Search','04/10/2016   16:50:41'),(14,'arun','dauth','Search','04/10/2016   16:50:45'),(15,'charan','cn.jsp','Update','04/10/2016   17:47:34'),(16,'kumar','oauth.jsp','Update','04/10/2016   17:48:41'),(17,'kumar','file.jsp','Upload','04/10/2016   18:00:02'),(18,'charan','filea.jsp','Upload','04/10/2016   18:00:31'),(19,'charan','filea.jsp','Shared File','04/10/2016   18:01:44'),(20,'charan','dcheck.jsp','Upload','04/10/2016   18:09:40'),(21,'kumar','check.jsp','Upload','04/10/2016   18:10:27'),(22,'kumar','check.jsp','Shared File','04/10/2016   18:11:42'),(23,'arun','check.jsp','Search','04/10/2016   18:15:09'),(24,'arun','check.jsp','Search','04/10/2016   18:17:27'),(25,'arun','check.jsp','Download','04/10/2016   18:33:25'),(26,'arun','check.jsp','Download','04/10/2016   18:47:25'),(27,'arun','oauth.jsp','Search','04/10/2016   18:48:16'),(28,'arun','oauth.jsp','Search','04/10/2016   18:48:56'),(29,'arun','oauth.jsp','Download','04/10/2016   18:49:26'),(30,'arun','file','Search','04/10/2016   19:01:59'),(31,'arun','file','Search','04/10/2016   19:02:02'),(32,'arun','filea','Search','04/10/2016   19:02:10'),(33,'arun','filea','Search','04/10/2016   19:02:13'),(34,'kumar','co.jsp','Upload','13/10/2016   12:31:10'),(35,'kumar','co.jsp','Upload','13/10/2016   12:31:32'),(36,'kumar','cc.jsp','Upload','13/10/2016   12:46:18'),(37,'charan','csr.jsp','Upload','13/10/2016   12:47:16'),(38,'kumar','vzc.jsp','Upload','13/10/2016   12:47:56'),(39,'charan','cauth.jsp','Delete','13/10/2016   12:53:36'),(40,'kumar','vzc.jsp','Shared File','13/10/2016   12:54:09'),(41,'arun','vzc','Search','13/10/2016   12:54:49'),(42,'arun','vzc.jsp','Search','13/10/2016   12:55:47'),(43,'arun','vzc.jsp','Download','13/10/2016   12:55:51'),(44,'arun','csr.jsp','Search','13/10/2016   12:57:19'),(45,'arun','csr.jsp','Download','13/10/2016   12:57:29'),(46,'kumar','abc.jsp','Upload','13/10/2016   12:59:51'),(47,'charan','abc.jsp','Upload','13/10/2016   13:00:16'),(48,'charan','abc.jsp','Upload','13/10/2016   13:08:18'),(49,'kumar','acb.jsp','Upload','13/10/2016   13:09:21'),(50,'charan','abc.jsp','Shared File','13/10/2016   13:12:23'),(51,'kumar','av.jsp','Upload','13/10/2016   13:17:26'),(52,'kumar','cat.jsp','Upload','13/10/2016   15:09:20'),(53,'charan','caff.jsp','Upload','13/10/2016   15:10:00'),(54,'charan','trt.jsp','Upload','13/10/2016   16:23:57'),(55,'kumar','cat.jsp','Shared File','13/10/2016   16:37:17'),(56,'kumar','ttr.jsp','Shared File','13/10/2016   16:51:55'),(57,'kumar','trtrt.jsp','Upload','13/10/2016   16:54:14'),(58,'kumar','co.jsp','Upload','13/10/2016   17:08:14'),(59,'charan','cc.jsp','Upload','13/10/2016   17:09:50'),(60,'charan','co.jsp','Upload','13/10/2016   17:17:43'),(61,'kumar','cc.jsp','Upload','13/10/2016   17:18:29'),(62,'kumar','cc.jsp','Shared File','13/10/2016   18:01:13'),(63,'kiran','connect.jsp','Upload','13/10/2016   18:18:35'),(64,'kiran','connect.jsp','Shared File','13/10/2016   18:18:50'),(65,'kiran','sat.jsp','Upload','13/10/2016   18:19:26'),(66,'kumar','aut.jsp','Shared File','13/10/2016   18:20:15'),(67,'ramesh','connect.jsp','Search','13/10/2016   18:29:32'),(68,'ramesh','connect.jsp','Search','13/10/2016   18:35:15'),(69,'ramesh','connect.jsp','Download','13/10/2016   18:35:21'),(70,'Manjunath','KeyGen.java','Upload','14/10/2016   13:59:17'),(71,'Manjunath','IPSpoof.java','Upload','14/10/2016   13:59:51'),(72,'kumar','KeyGen1.java','Upload','14/10/2016   14:01:16'),(73,'kumar','KeyGen1.java','Shared File','14/10/2016   14:01:30'),(74,'tmksmanju','con','Search','14/10/2016   14:04:04'),(75,'tmksmanju','con','Search','14/10/2016   14:06:01'),(76,'tmksmanju','IPSpoof.java','Download','14/10/2016   14:06:08'),(77,'Manjunath','KeyGen.java','Update','14/10/2016   14:08:29'),(78,'Manjunath','KeyGen.java','Delete','14/10/2016   14:08:47');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'arun','hi','arun@gmail.com','9535866270','# 4324','08/08/1992','Male','560019','Bangalore','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0â\0\0\0ß\0\0\0Ü*ÿ–\0\0kPLTEõîåÿÿÿòÎ¥#æ¤\"ÁÊÔÙŒ!Ô°Œ!mÙ$œò£p_»†`\0\0\0õïçÌ˜r&&&žiZå¿šÑ£}ÂiòÍ¢øóíüú÷óÐªåŸ\0\0\0øÓ©ÅÍÔúöñ6Žä\0\0Ò¬…ÞÂ¦çÔÀ\0–ñØˆÛ±‰×…\0ôêÙñíéîÀ~ë¶bå½•ðÇ‘é±QóÖµÌ¢„Ù¹™ïÓ¥ôàÊîðó!ìÝÎÁ÷ÈÅÃ¯¿Õ°€kN„Øã¦\\Ö×Ù6xØ}ŸÖIDCãçë534ë½p·°©èª9ÚÒÉcœÌ¯°²â­m\0¿ßûuni>¢î•Ëø_«é‡‰ŒPQU?AF«ÒôhedÙêøstwœ–‹„~ÀÀÂ·°§u­Ú”ŽˆµÚúhc^–œ¥UX^¡µÒ\0aÙ%oÙªÀéx™ÔW‚Ë˜±å?BIè¯BF•ãºß®¶Àáž7á¨cA<6XNDš„mßI{kYå¸ƒqcS¨‘u¿“yÃ£¤œ\0\0ÙIDATxœí‹wÓF‡eça–J5N-;~¬14‰Iâ8³áÙÄ$,aé¶Ð,	-K)¥íf^…?G’-ÏSš;s¶{öwzi¬ŒçÓ½sïÑHr2£W©T¯û¾Gäxùüàûõz½T:…/ÏdœQ6^ª0\'QvÔ¤£Bè’áXÐúè8GX‚ÐQœ#ÂÄF,ÕðòG@‰Šhh¾±äÛãÅ”h½Êà!Úù§(DEAD4à(KÈÄ†´F¬Š/”‡\0i‰8ZÀÒ:ôX!Ž0„´´¤âé\0ÚC\Z#–N\rÐÒqtQT%ÿ”G’Ód\ZwLOß„‘¼SCüMLÉÈ`ÄÓ\r3¼LÂñ74a$¸!aˆz£0m½ÆNà	BÔLö­`Ñ)Zn‰€Î\nAÔtRÿhzi¾½Òj9¾­-†fõò¿1ÌYõµS…¿0>>M4~´p»}ye}}½‰ü´²r™h…ü²â2‚ê\0mDýHêß5²²ÿÛÿÝî±´o¸Ú‰¬ºˆ€šÛoSPI\"¤GíuÏŒRŸQ’+¼MÄsérËR{@ê!Â²a€Pî¶“t«Ë¨…<ÉÞ1€¼lbHÍ £ƒ%ô×ˆr¡e`H=F\rD¡ç;ëm0\"ÑÊ¨Sae·ç·ÚGÓ°±80dÛ€Q§šKE„®/˜ñ…ŒóRÃŽiˆP@S¾>#Qƒ1pZýÖm+ÀqC_MeLF„^·%$Œ£ˆ9‰ˆú„žcç£1cË ?¦Ô\0IˆúgÔ_ßE!$ùÑ¤ÎI®Wõ+o…/d\\1©WÕˆ€Ù¤îNÓ’ÑbA£@¸ŽHHÌ˜¾YGTR	 DÔþ^‘&êå^qÝ	aU…¨OØ:B%œœœ™™9y¿…T‡U\" ÔX\'|Ž0ÔÌÌ+(¤r8Êñò(È¹=àü\n†¨þ€3|mÂ\0r²bT\rG)\" ç£ºé$§¹=PlUG¢¾›z¨ù‚\'$†<eI}Dý6Á«40Â€R´Ê³£P|c\ZQFH_Y»ªˆXÉðçñå„d<!1GÐ b8UF[WçÌKÎ‰ÓãGKK»6€ÄU÷ f”¸*Ypó—’øÚÅr¨b;-(%¦Ééˆ§p”FœÞÏ–³±ÊíDK¦Î¼‡˜Q,\08DÈ¦/õå™Ýù2B&2…pr–…Z•C„´¥Œ§·³`hH5áL Ð^Ñ?¼æÖAÝJFíÜSÅÝ¶0—dg„@¼Ú{ß.†jïÝ˜)gAµ*oFÒ’Ó’.¥„Šùr¯el^Î¶oð°˜*$Ö’¬´™^P†ýŸg!¤/·_rŒ/aë9¥DH;Ò™b2ah£…ÝpIyz|é¶ÒÞÅn0‚:Æ›‘F„Í@%Ñ&0¢,¶çççƒ¤©>¦Íú*,Þðf¤AÍ03ã00BHÀ‹xÅ0ÎW=\"p#´/¤º]=@YÄ,p¼¤@„®ëñ9cº‡XfF#0kpf\"‚w³óˆ\ZQ_ïgl3Á+Ð<b‘0[d¬ªRù2DøVÚ¥\Z1›=±Btdˆð‹^\"âHÌr1Õ\0±.Az,â®™Áh€è‰ˆð[g¸¤1ŒØ¶\n7tÀ \ZlaS?j°É²ñfš:à8¦Á†+à°ý”ÉŒÐê&h²Q‚Ùvzñ†y\ZªÄ!Â[`×50+›>âÞ0ÞÌµLúÇ\"šÜ_ÂÎ±	ÙjtýŸE4Ù	Â\\\0GŠâ‰A÷†©Ñ1õSrb©)<rih8g.lÄ¤Íîƒ¢—§°³b–Î\Z™?hvË,uù?Ú\r£MÙìN‡…hÖ½xƒø‰Êv9Ã‰³¿c:™¬±;RÄI“œáÄƒÑ1Šôµ·#|Âl9^j„-øS*Åˆ¦÷$ú±ŸÊÖ¥Š‹D©Ö­fÁq‹Ùj•GTp†•A4l€škðˆ‹SŸÆš]T.N}öI_ŸMÍ²çcˆh0ÏèwÐ1®R™´Hó%Q.N}ÂéSú¸qî¢é\rrÞ\0Ñøîàa¼¡Šð¢\0hJôX0„,ˆˆ°K¨Œˆæ··DÄE` ÖÕE` ÙÁ˜Œ§\Z\'æ,õÏÑ°„‹‹›Ù¡o’XC\"ÉllÔY\Zqv8ÃhCŽŒÊYÑ<ÚôËTÄa}3@\\”½ÁØ2Vû„S$Æ¿‹Çæ\"‹^\n§;ØG4n€Æþ®÷>bQæ“D…)–1òÒ©\"—\'ª‹‘%Ä¹æC1Š7ŽÕ³<\'ZÝè#†n:Åšb>a’QÈ8E!Î¬X=x-B´zlWcG%(²ž‡ô1ÓVX\r3Gˆ8³n÷¬„Rˆhù¼?¸e8—*¤=\'\\ñÅ0;È	³‹±÷Ic¶#UT=D´|À€×R,NU«k)Ç,SÂã\n¡z‹gnØ>ï\"B´l$¬qdˆoóÝî›5Iß?\r’ÅðÃën÷õñ8‚h:‹¢:‡‚ìÜ þç^>ŸïÞ“0!ejðëê‡J—WË\'6±/ÑŸ¯ñW?„¤ïoD+~Í@Ñqù¦0†Ë\'F+ÄœDûç×xëÄwÝ¨ëÝµDÄÁ©Èw3–_\ZÏÑWD|ÓG¼—†Øì[ñ­€8i¸*Åˆd\ráin~[˜Wßõ»ž“ƒ¸Ú·â½UÑ:Øà!zëâJñZÔõæ;E¸‰ÏE/4w·\'V6[— \"8ƒ×6È ëv»÷^=ç×ºÍn·ÙÌ‰Õ:)BBt¼y¤ºöîõIºã#j5ûöÍ›·²\"Áx=ƒÉý(OOò/KHHÙ\"+ZxDåqE„”‡è­CÖQyD…Ú†«§¬|$D§5Ä\"JÏ°½€PÑðB\'ßfÊOÉsF€ˆ2Ñríí‰èá#âÔ`ªn¼|DŒò\rÓŠ¿kD$+²Æ’û5Q2ÿÿ\Z\"NÏêH3\rXW Ò8üŒ¨§2J¿°fýA‘ú?è€ŠT-á7ˆˆÞïç9àèˆH%ªƒ³\ZT‡k!â7˜ˆ\"õ‘®i„MAŠÔSDô1®/F‚-Pé âÔouŒ«Ä‘~¯ˆ%ûký±Ðs¿Å>\rJ%ë±ÐË¤âÆzß\r-lD´€j·{Šn71\"e~Q•5\n)’oNAÊuëŒ”T!õÚ¹	—N#D¼€jµ•‘\"Þ|<›¬s«r+¢ô)ÞŠoäƒ±BxMî¨ˆÑQ1«¹s‰„R@ÌòÍn‡?+…§VWÕŒ*B2Ñ„ˆ4+V¤\r5ã¹\nBÄù°ÝÝ6œ”ejµpVyî¬¸…×O©»mp2cÒÌU€<wVJC!Uoô=SHžªžmT³«×Îž`’>æ²*âÍøé;ß°Þã–4õ¯\n«¯ú¸ZHà#ZAê}ÿ\"’§¦Í¨ú{Oä[U(#âT6ì]¨X/«C™c¹i|×»ùá2!¬Ra­.òw„cíjð.¨v¿kkÑø&0¾/\"–§^ÈY2Îc!òOg@òT‚hÇXÈ¡!f8D¬m\rÑ†±CCž”‚•ýÄ\\Î”0ø[,Dñy7Huj„hÈ˜CD”<µiy£hâ¬…&¢ìÙS8Ë©D¸!‡„˜‘ ¢q\"Ì….¢ô9p(Ç»pÞˆqHˆ„(š’)F]H\n0wþ\nB/TÏdD1£Ÿ¹’ƒ\Z’6ášr¦UOÖÄÈd”`†dLx§Êç£bäp˜_Éé32&ÄZHR?å¡õ(’ùº†dLx«	Ï*FƒŒ{‘fTBÒ€¹+ý?½dÝ‰¤\'NÛŸÁ¸¨ðÖÒ iÆý²FL|n¸½©º‰5$¡,ÄœäGö³Ø„ˆÉO·6#ý:\'ÇAªtþ]ŒØ\"¦<ÃßÚŒÌ;Øô¡&¼ÈtÁ1íM¶‰wƒm­•nÈ Ûc\"¦¾OÃnÂáùÛ|si†äLHtÓê¡\Z\ZoE1Ïÿžïl>¾àJc?Û3:8¸7a,ÉËí¬ÞPDáÕïì<ÍWÜïÅo¨¯)!ÙžÑ3·Ò»¿ãÔ0µÞPvUb=çÛÃ®[éŒuö%_!¤`NöZ¨ÞòX³Sq{O6Ã¦a’}½ä—vI\'î<yÚðB¹²ïàë€	¥oLÜv£–šwyê³šoÓvUÏ÷ïìì÷\Z•æX,wCÒ^FfÈóWäG>v‡­u*•­û;W´}Vûo:®Jðˆwö:•Å Šñ¦ÿ=lú8¿¦z±ç×¦Aâ³Í­\'›ž¥â«e¿LqÕÀ;Þ¸Îò¯Š$ÞôÅ¤!UÄzÖ\ZmVÜŠŽÏÞ¿˜T\0Óygç~Ï­ˆ=	{ó@Ù÷áz€í)•*Òv‰Ïº[‡;wüLÐ[4U®\Z¦¾­eÞ;iÄ¼\Z‘Ô³¡Ô&FYÛÆØƒ¥Ï*_M¬ýFÛÈ;…Á\'œí›	ýÏ|÷W¢o’Ž¸ÛHl¾Y©,“\0$Ã¾Ñ–ŽÞ·‡y•wÒRÆ›@ùüODŸ\'1rÑFzŸÝä1Áï%¦†cèˆùÄà\"Qåë4BÂøOõ1µ¾…$Í16\0¼]:\ZŽƒÂ,Å;é/–J˜È¨Š¼HÒìÅIÓèá!ãÎá˜«i¾¾–{ŠäO&0ÞÔG¾lPè™½é=“¹³Õh¤^.?Ÿ’ªS¢DÄg;O/%&!fî+rT2¢<Þü!$Œ“¦m$_y7‰01óÀà;ÒxÃªõ¢\rGø$‘0±´g”Æ‘PÎ¸k<J&LF$“78cGú2B)#,Ú„ªÜO!LAÌ\\ÊƒÅx#\'”1Â£ME:	‡ \Z06øÁÿ‚0þƒ;ôôË*	e¿.bfÊÈÇ›í‰/U„ßÕ¸$ú@»Äè>MJˆºˆ`;.?äk*Æ¯jã”p_ƒP1s	s˜õ›í‰‰‰ÚU)á—hF`´i¤CMDhîp©ùÔvˆ!eŒÆïAµ†›\ZKõ3¥§HGÅ›í>Fí	aM`E›´ŒC$µÀ…†ñf@Hå¯ÖâcÆ‡€±˜RµÁ3úŒq¼ÆïØÔñCú°ÏXÒÿŽ¦»©K¨˜ÙÑ˜ò÷•ßFšð×\ZóaôúÑ¦ÓK\\?1DÌÜÔ¬›\"!aü÷Ÿc}Uã>µ£»¯š”Ú!f.íkžå0ÞlLð:3Ô-1dÔ6ÚŒH-gí<’Ö~¡Ï\\N\0i^°ÓÐ†pÄÌfOÇ—š$6¬]§¿Ì8‘ÙÐòS÷Aâß\Z1S¤å¬7\0ÆOÏœ¹.~^{¬Øt€€`ÄàÊQúˆi‹\0ŒŸÊ<uBcQ£‰¤ÆˆAÔI‘¯SüTæ©µgi‹\Z`œ1F$†Ì§¸Ôò¾\0põGQŒ©½DwËÀ„†ˆ™Ò£dC.÷ÒüôÌsÁS“	;ÂT{¤ˆ¤ØJ„l¤ù©ÄSÓ½\r¤¶ˆ¤ ËWÔ§½ò=ï§<¡à©µ„Äß4õQ;ÄLé`LyÞùx#ø©$¦J.\0{¦>j‰Hbë“†rùYšŸŠžªŠ6Pgùb4ˆòPqÍ1Ïõÿ¹ˆÈyê±tÖÝl,[YÐ‘”;ù†²Ã\Zñ‘÷TY´é¸[Ö€öˆdLÞÝžod~Êyª$ÚtÜ}`Á-—=\"Ñæ>ï¯l¼ãi ¶Nåj›¦ëZDQZ(ˆdPä]úRróe\"Y<<•á«µ‹1”‰6{CÊå‡©~zæÌOÔi8vi¾$†ÂC$£r“ÚÕAM6ä~ÊÆÔ~´	vc<ÁäËà\"•nl¹\rbLª¾Qù)]§ÖÈLªÙqÝ§w×Ñ-„Œ¨~÷~¯ã>JõS:¦Öþå.o=A	 ‚F€èÒæAmâ8ÙO‡žz<Q;¸i\\f§iDˆ66¶×?þâùsIqCüôùóŽkµÍ\r´è)ÓC•J™í«/^üòÓÏ×oÝºõc òï­ë?ÿôË‹W7J#…‹ô_[†Ë1¥üöÍ\0\0\0\0IEND®B`‚','Authorized'),(2,'ramesh','hi','ramesh@gmail.com','9535866270','# 22','08/08/1992','Male','560019','Bangalore','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0x\0\0\0x\0\0\0ºÆà\0\0\0fPLTE\0\0\0ÿÿÿ¹¹¹ðððüüünnn\"\"\"éééóóó———ßßßööö³³³ÂÂÂeeeæææÊÊÊsssSSSYYY«««HHHÒÒÒ???ˆˆˆ\'\'\'NNN___666€€€J‘’\0\0\"IDAThí›Ûš¢0€#GTÀ¼ÿK®Ž²Ò’ôDÔ¹ð¿ÜOü·µ¤m’‰;IZ´5<¨Û\"M<¾?Ÿ-WGp\\-³WŠEzA¬÷%/‹¸¢¬wªØAm-ñT¯½1µWÛŠ—ä+3¾dïwvÚ»=Ÿ¸°×Þ(˜Ä‹7/ÀÏ‚C,k£2¯1£xo±˜‡L?´I¼÷ÑÞ0™\rbo¯Ñ¬¯y¾3ÕÿÎZñ¼ñ÷4soq4ÆùŠãq^€ØO<bauh˜FìŸ)v>âåx/\0½W‘âù‰C|\"W6).9¼\0¥«8äñ„ŽâÑ¯RõJb¶“C&Ä)Ÿ8u¯øÄ+±àóà».f	xÁÅ9§8·Û‡Uð}\'œ^\0ô‹Š×¼âµµ˜)Nw ñ\Z³®-bu¡bç;‹ž[q¸áo°p‰3–3À“–ÁÄ³ÇxŒéì+þŠ;¸_\'Ìñ§ÈçBæÇ6‰m‹;,œÞšnû[‡½Ïo?v ïç{ViàLÚ»¹B<œR7\\\ra/ÚNâIoªÈK=M?Qâß·½GíRî=ú‰ª­£¸3o,òÞ}Mïa×T„”‹ ®¸ýË5™Ü#Å°yCJŸ“E\'Ø¤\nˆmQg¢º.b›RDwigóJ)*ITju*l¥‡ü’¨Ê—´6ÞÖú?«M”Ë¹ŸÆX&N\ZéíË «ûr¬}¡J6ß‡­Ä“D)e6Dà½ÈÃ…£~‚åÕ‡ÝåD¡Z^cÁkxüª¢t&ÅÁp–FÃ2 iAK|Éyð×#z^b~EEŽÿÏÆ…h.j*KÕ\nó`UÆu.?E,eÜÉÇ\n×W’Ú¬ë¨íÚQl›¬m5\\ñD”¹ SÉÞŽqeV\Z2Ó»ú_Õé{«9_R­O“Q„5E¯m2z,·ùÿ‘ŸóíòmU=B!<.âq|Å_ñ/s§Õjû?ìÅY\\C¥9ä©Ô±9œÄ\"~l\r§­Õ¨çÝ÷dêÞÓŠ÷RÚ©ÝÜáZú|®½ÐkÄëAö¸jr\"hGÍæªGŠü¤UÕñ:‘Ce(’u\\ã}nÆ©-ú=šM”—÷ÄR™G›F÷Yjmàâ„¡Ý¦c‡\Z³f‰t&fÎ“ã™2DÌØÑÜ”‡bÆŸ÷É02¿`¼7cVÄ!sæIjÅl½ECb80?ïO@‹³Wz2J:Ü	}¨CBìx\rv§ÀÅ3Ë6yŽ3T<²áÕ†34žšÙ#bÖ²Åa(f® R¬âÅh••*f-êéÈqk~„‡V36€š%1c¨‰T¿!xtD}ñÛ–Ö\rÑ¿q¦»¹†wÏt7×¿bŸ?ðñçþ§Aÿ\0;;7‘p\0\0\0\0IEND®B`‚','Authorized'),(3,'tmksmanju','tmksmanju','tmksmanju13@gmail.com','9535866270','#87982,Vijayanagar,Bangalore-21','05/06/1987','Male','560021','Bangalore','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0x\0\0\0x\0\0\0ºÆà\0\0\0cPLTEÿÿÿ\0\0\0ñññûûûÍÍÍ÷÷÷ôôôééé888TTT»»»¶¶¶ÅÅÅ@@@JJJ‰‰‰àààƒƒƒ–––žžž\\\\\\ªªª222ddd&&&¤¤¤+++ÙÙÙ}}}oooe8È\0\0\0IDAThíZÙº¢0vXDYQTŽGßÿ)GiÓ$-Î|sá§¥\rÙÓ„Õêƒÿq4\"þw£¬<ìû®ÞŒ¨»~(³è·‰–MwþƒàÜ5å¯ÏÚ£©ÑµÙòTãÃ†§*°9,«ô¤¡*Ð\'‹‘Í	f‚í|²¥K¶¾7E’Eëuš®×Q–Í½vI—?&{³ÏÜ6I–NŸJ³¤ÙÚowûÙ¨±¨wÜÃ»£E»ù{%_úœsËR•´[ÃË¿Þ¶2ƒÝMº©0L¢y‹lTéwŸe¦¹–Sõ†¸Kµû1Û;\níg³Íû¨¶^ÞˆEñEm?ÎÛ©Ô{zÓ-n§·½‡]{šÝxEkfYŸN÷[n[Ž³|ß×ÕfSÕý>ÏêÅ ùžK—ó®u\"dM¸¸w Ï ß\Zõ<Qá))‚7ÒóèbÌ¶Ù¶XC,¸úé‚ÿn±Å†\"ûÂÛ/êõçøEÖ2G·Ã`ÿ®1¦a\'†Å2ÒVÈZb$€þ’D¯|%CçgLÓRÚ>IYn÷+ÕÕb-»ª¨> $/¬IˆÝ[Å¤H%f\'£æµt<$n€îÿ|¯Ñàû˜.±rBwŽ‚Æül„ŒùU0«Ü{„}£Í õ‹ü°.ÉR	gK.ïä¡l1“È‡ø)YBcÃ³r«XèHÝ›ºì%™Ÿñ’B8ÅtBëÞÂ7)—Xø\"€aŒ+#¾¼T$ª­Y*h–Ã\'då$hãxÌˆ¾(–ú•„IoütÁ|ÃNÕÐÓ§Yd6È©¨*7¸\ZbZœ;atÜ1°°ŠDªÁµÝÃøï;,\'AG»ˆçç_Z92ºÐàˆšÊŽ‘hW8Ñ%UfW-ýüê„<O\"#8°¥*Tƒ§áatW+kÐ¥ãÔXd¶E%¿C­sdª1 £™	#Ö²§mqAQK2f®éˆp6b1ã’aÙPrtæÎ^Êà­ÎZÉBë5ÒGza©\0ò¬FkÇ†ÅkÞ‰³–\n™OÜá±¯	^0#Ià~¹š\nO”,d¢Ÿ±w„ÈPú¢ÞsF­¢{@†)F³Ö9¹ãf‘ÒgDf›K\\OB™\r!‘‡WËë‡Ã‘šÕ•]yËzÌÛD¡Ë[‹pÈ‹$ÃÐ¬‚žfX\Z½ºÂ\"~¼\0W6|Áå‰éò¦™„á\n‚]¼]yqG[!á#¬®©¤´¥œi	a¯q­Ì‹9êÎ1w1wOQÆåu§@ÍhŸQu9¯&îä ª	òŒžNóE¯xz½N\0ñ…L l´µªCyËÒ4»•ÝÈG›6ÜéIê}í~âã|¶\'^hWÑ‚›$ø´hà@ÌÖÆ÷(Ü´È\nñ®å·;oþr¾ô²9Ù¹U²ÎyÒ“Ò‡/öŽ\'Ž$àÄÎ>&Å_Þ¾P22v$ÎDÕIy‹TÚv•uöÐ·EŠI£¤h{»}\\‘AdJ†­†¥ÑKÜ¯ˆF²ëÝ|†²ïi…Î]ÚÌöx}$ãjt4ŸCÍ¹´1×Ô\\k·OX£9	:D®©ôÅ\\‹y0•M´Ç!âÆ.æT+BO?\'›¹Ú0	„²áÐÀbe2÷àyl¤÷8+xŸm7©ì<¶~j·*ÅÛMXƒMú†ô&v_e¢Á†´a¼åc8‚lÌ,üˆ–\"íÚ»Ab÷w× h-AYü\"®!Â¢ê^@¥ãM–8€²ªIÈ¶18¸LFTõBJº!L£\\²<ÉJŸÞþX)>™jæF …ñIV‡| •Éœ5ºÄÅµ µVË–‘L(r­,~üc¼\nÄçã,^d<€ŸÔ3‚UžbßˆO\r5ïú…Ü:Žã¦t#;[¬¯Ù´Ú„>“Ï}A—u0l²Œ»°†ºÏÿ.	ƒþFÊ›ÐA:%è®VP±èMÞvƒ:ˆÁ§}\\%lvÆ‘†àX‡e¾é|\"øF…ì¶à—ÃÑí>þàƒ>øàƒ>ø Ën>Ô@(ïQ\0\0\0\0IEND®B`‚','Authorized');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-14 14:10:45
