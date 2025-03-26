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
INSERT INTO `downer` VALUES (1,'kumar','hi','kumar@gmail.com','9535866270','# 434','08/08/1992','Male','560019','Bangalore','����\0JFIF\0\0\0\0\0\0��\0�\0	( \Z%!1!%)+...383-7(-.+\n\n\n\r\Z-%&+.7-7+-5.--+-+-/5-7-57----+7-7------5-5+---+---8--��\0\0�\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0K\0	\0\0\0\0!1AQaq��\"2BU����#Rr���3CST����bs���c��$%��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0(\0\0\0\0\0\0\0\0\0!12\"a���#4A���\0\0\0?\0�%@@�)@DD\0)DP�(����PJ�(j􀈈����R������J ��Qe(���J�\"�k�h�_>\n�bzǭt:8��#�-�!�	u���GY�`si��1#�6����ƻ��ol@Y�m�+{v��Қ���l�L�2-��8�ݫ�Iʞ��L��?����G�t]8�#3��9�썶m���Ug��e4\rc�d�|�hǐΌ�ڱ�v����VMGY�C+$i�pp�LV�in>l��\0�n��*�G5�ot�H��H�]�\r�C�|�skH8Nh7���7Q��\Z�\Zy7;A ��2�ݼ3� \"\"\" ��Qe(������(\nQ@(�붟42T�^\0l@�3?&߈Q�i_uj/�m�GM��S���7�+�bz�WPy٥%��;�\"7������+�ϲv<c�o:3���_+D��W�)i���|�F2.wF�7�Vi���E\r��$�ay$�1嵬l7_Ų�m��Vg��O�Iެ�҇��Yq�K��:���+�,��K��%��C��k�\0A���p$*�(�e{4lh&�n6���d�!�A��ek����_k��8f]#��}��Q�\0�-��͙�<uo��նy\0҇���\'\'69�?�7!�1w ��/��\"\" \"(%�R�!J\"\" \"\"R���w�!֨�?��;�F���?(	<짞c��2�lB7sd8\r����D���r;��T9#Ǭs�s��a-`����%�&� �,���(9�*X�����\r���y埵�r�ޱkMe�Ζ��h`{�Hh78�%��Q��Z�|Z���C���o\'��h��R07�S��\Z�ZE���宅ub?��y\"���/��n�zS�gOz��iW9���Q��#\Z�۵��#��@ t��!�����MPV(��-�SM�ቮ �-;AZ��]^�--Q74�Ok �GZ�{fc@m�vMv{<S�wK紸�1����E%B	DD�����yqR�\0� �D@X�yG�{D�.�@p�d�G���o�ϙKf���hh��^���&C�*���i��y��U�8�❜��S�V|�q65Q���n-�m�������4\0�.�ڬ�&��5f��#-���!M>+�������1���\0��(��\"\"]ys���\05zD@DDR��\" �4�8d���5��aq�˸��\0��i�`�K���\0xޯb��,<��ͼS�W�\Z�Ƙ�y[��4ƭ�$ɇ��P󒵤\\�_1aǶõe�h�X\r�|}Y�3.��CZH����[8k�勚ٶ�qP\Z�Tu�DD@Qu*,�Q\0�)E������k��m�]�\"\"\"��oOR�3D�fD���\r�#m�����J ��9���%`T���p�.�����;,o\\��J�3�1S��ppK0ɮ��/bC�\"\0ncS�Xv������/�g築hෘP����2��^���q�ڼ��y��Ik��,��nӿ��67�`��*�����)����$Vd�D2�X��X�M��q7�}\'-G�S��%S�s���|7��E����,Χcl��\Z��5�4��tO�%oQ��E�J�����i�̾�Z�\")@���\'��H�{t�_��@DDD@DD�(���p-n��������ጉ��q���=�Ws��`3$�\0�V�����k�j��@��r#�-_���S�Ys7�6�8�G����#+^؎�y��M�կ���`�Hl6�[���{�4�O0��K/9$����BG��Y��.�rrsM�\"���V��0�- o�r�\r�|��A�x����#rmkI���2̠�]P��Z<V�ٹ[\"I\'��ld�?E���:�.�7���h;��r{S����dLo������bp�����x����qi�?&��@ߪ�C�1�LZ�\\\\�0\r���ۍ�6�h��͊�K/c#as��}�GN�W5�y/쉕���}�a�\'c[��\0n���h�����i\0����p�2jw�%�{^�?XË����-����I%�\0F��֓�Q^-g��[�n��ͺNLsJ��$�?�<��հ�\\�4�6�6���F3!����x���}�^��!�q;\0%H�<^�E��OR�:���e\\n�y��C�\0-�&�8���������NwO;$`�7��x�\\��!�\"E�:��Uz>P�x�o$/\'�x��[���K�5{MC[Nʨ� �bcǔǁ���\"����a7#3�2�)DP�y���	A��\"\"�|��/�F����Mm�\'�z�\\GK��@;�rv�icWW=Y7�įs��c��(�qn�>��/`�#�����UAA���y�	�mÀ����\0�G�i�}^��\n�[����ZA����\"_d�Kb[O�Y̑��y���zn�F���\"�����1��av\'�?X��8o�s�jã�y�kl���+\0do{��1�=@���������F@b7��׽�<�4��~Y:���l^M(�b2�1�I`\"�dp�s��w�|��=t��کo☋\\�D󯩪	h)�\0Q2�d�����X�,h9�������	�%���^GS�<����;��1X���]RĪ��^��|��	��� n\n�D��|�H;��:�ܠ4a~���pƐ�tx\Zlqaq �@�-�>�_z�t2~�͖{�α�zߚ=�E[��R��;��\'��w�ּGP���#6|Nk�xH���@A���>�mE<U,�j#�F�=��z����P]�\"�(��H��EU�\r���i�$�F�:q<.Ya]��_7�D�T@����1޹�At�*���h�*�ߞ�^��kM�༼�Ø�;�K������jA�Ϲ���9�r��V�F�+�I����p%р�E�sM\05�e�h�s$�U��?�WST��)�.\'td�����=RA�te��B�ZV*��[O���\0��^hs��kș�}����3��CQ?c�E(v�����7�������\\9�Z`|����1��9��zk2�>����V\r��mV��{�S��kc{�2�Þ���Zـ�\\��u�מ������iCGҺGd.��G0-�#y\0�v{3��ōe�ǲ� ��9��m���\0A�-#\\Ʊ�F�ݘ.Z`{mg5��2��qeo��	��$��s���=^ՙ��J�����\0���m˥Ar����#�9�I�A���wDF�ni��#���v1�;Z��ZL5t�\0����5�?��anD@DDP�%i�\0�mE�����J�\0��ȴs\\��M�=x6������Mr����P�m�c�a؂�$�l����KbA��/.�[��N_g�wwl�^1 ܺӦ�s��&&�H��\0�Y����Wˉ�Gر\r��B�G�նV}�\"���Ϳ�9m���ޓ8���Q�d�������6C#��aR�N욵n��n��!��~.x�dndq��{/�6���bi��i_���vX�\0\Zű/�?�o��\Zx���\n��>�������o�{�g�&%�b�$.�*X��\0�1��A.r��#����6��ҦՕQ}x#w�}��[�s���Kig��I0�\0R�]����%B�A	e(��I T�|�� ��(����\0�YQ�s?������\"���3/k�p��<Z��´���J�w�df�4x�����|��{�\\����;r��lI�QĘ�V��/.��ԩ�R|���U�[8��E[�v����_�ZD{ve�/[�z��Z����g�q0�]6\'����%G�{�����yy\'��y���1U/�l�LJ�$īJ�%<��߷�PĘ�{.T��r��Wj*H��,>{��O��]�5@f���O0����J�0vŨ5V�oѶ�w�#��tt7�z����6A��Yy�你\"\"\" o4U�@��Vh�[�9�ut;r����i܃H�B�BI�_�����iN�o��=O����h����mù+Uj�k?U�����ͣ��A �n�m[a�U�ڦ��幣��=����a�l���t�ڗ��ܬf������A�w�_������\rܛS~��o��7�����ٝ����8�A��Zo������<��6@��֏r\r5#y�J��\rx6� �1�\\\0�e�8�\'w���\Z�m�Hé1���+�uI��A�tڭZ�\0���y�.Wܠ��g[�}�=��[�Z`�U�:\r�r\rA��>��n�o�}{;i��l7r������p7pA�(�Pn��`���\r��DD@^\\��^�oHK�¯ݬZ�\"��!��i%�\\14��|\'s����t-�����Ok�SԸa$5�Ƴݽ�\"~|E��\r���s/��Nms�ь�o���fѼ�	��G��w������/tb�yƴ<��.g��u�N���U�Z�=���4��5�\\[g\\2)��E�\\�.��/���nsX��Z�xy��!/s>�˥�˚|<�ސ��?�<<�ސ��?�52�l#����4��%��O4��%��ML�S��5�y��!/t\nxy��!/s>�˥9��N�sW��[��G𧇚[��G�]-�pK.i��KzB^����KzB^���˥���>ioHK�ioHK��t��\0����-�	{�𧇚[��G�].��<<�ސ��?�\\�kv��l��kۚ�͡52��\\�>�i�yu���g�m�+l༷[�ٵ�e7�[��ܚ�tjYs[��K�c_-��\n������)��:?6�׹fR������-2��҂e{�<Rsq1��P�/�o%ȋ�*q��i�i��7��s��%�؀ �ǁ���6]l�Z�+��6\'3\0�bd��N�$����3A�_���(�k��0�\'�˝�L���)XH�5�w6�Ʒ\r�f���]{�$��sm�N�a����g��8�|�0�&#3�q 	6v2|�u�\"���A��A��I�\" �$g��w��?d>�\"\nn\"�t���','Authorized'),(2,'charan','hi','charan@gmail.com','9535866270','# 434','08/08/1992','Male','560019','Bangalore','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0���\0\0\0�PLTE���\0\0\0\0������������@BB���������9;;���vww��׸��������fgg������-//244���������oppFHH%\'\'���UVVTVV_``���KLL���&((�����!\0\0zIDATx��]٢�0ղ��.�n����҅�6-p���zh�&i��F��ͩ�s^2	O�q��)�$���YSS7�x�r��3?,\'[�Ch�߶��a����cm�ị�d���?�O����3������\"��&��C���r�P��+xq`�C3�0v�R�G������3]o�-ZMH��ܡ\r�4�m��UF��6nM�cb:I��y�7���$ˣ��q�$�x��71��9q�����R7��0�����-����s�����P��˼��ݤ:���m��v돧�n~����H����<���!r�S�����w���8�w;z��G�j�lX�ϲ��l\\һ���NO+��U_��\\�<7�T?��S9�����TN�g_J�m�|-�E\r���\r�{Vxi:)�q�@a��Q+NB�n�6�+������g.�{\0-�q���YQ��`f�����ܑ˦{{T�n����m��f�N��.f�\ZB�y\'͘���՛5=(�\"�l����gO���_��>���b_`)�~�r��8GR�se>����\\��D���[�CPh�*����%�p����I�F�J��k������3�-z2�\'����7��n���>+��M��~��=��Ǿ�(�Ƽ2�����\'#W�oi-���{|�����$�{��B�ߙA,�s�_���iM��0�@�Iu�*߭�	�Ƙ��o� �P=@1,\rA,�q �B��%��&l�v���.��Of8�+��oq)�\\#RG���o����C`$M̩��p^}1bޏ�����\Z�D`��#���x��,�7`�%�U��7:��ߤ�����3�B�^֎�x��#���PD:�\"�Y����M�g��0�SM����$ՇB�����E6A�妐�O�Ns	�A����6Эl	~D�y�ͩ�B�ݻiěD��Q�3N�h«��Ya3&;��N��r�w+�������mQ!�Dߴ�ב��ݷ����Q���g��\'�7��5	=���1O��M���:���X�S����&��h�m����\Zi\\��\0��Ь]v�D��X[{~2)��!c&�B���;l�}��X9ڀ�+VxQo]u��!9/�� t�M@m@��w��]!�9M�d��ߌ+�揁����`\"l`\"�u�M2\'���L��B�	zՂ��2�&����\r��{��ǊQX����x02�N�8��Ƶ$Q_���1�L�Է�Ɔ�ބ̉)Hm`d^��͉A��y�T���]t��#c`]��\n^c4�F��3���M\\]G�V��Ff|���_�\'x{�g2$��P��G-�G�P-�J���D�H,�M�����ͣ*�����ɘ���T�������ɐ�C1��`)��%��\n�Y!���;t����O��q\rk�u�ݏ��\'@&\r��,i�i�A�`nyx28��M)�dr�!�L(�J;��Y�7�����h[�S8c	�����vo0?33E�N��d����&j}�#s�,ۖ�Ӆ�@VLX�����~�+,6�!}Xe�\0ʾ�g�-��\n�H�u�\\��	���\n�.�\'���w8����\"��$�א撾Z$�-1N���:�qVA�*8x���+�U��T��\Z+�1�?ɥ�o3��s�4(���\'���$4�د�c s���o�gӠ����C�����8`��Y�W��8*�a�9$��p�-X��@�.\Z\"a@\ZӘX��ɿ�L�<)���hb��8/#���\\�L{���8�A�i�����^��JV��E�.~�X�Aw���d���M�}�Ԃ��L�%��:I�A��A\\��zD�uB=���Tf�`����N����5�W�&[8�C���ǆ��z�\r���MB�Gx�C�/3�r�>��Y����lWu�I�ęT�,�ptҔ�YC�H,o%2�i��R���( �3ܽ����?Tbcc5�j�(8�K*C	h6��-���7��-:���6�n��D홤ߑ�2\\u�2\n4�32��Mm�8:\"#X�,�*�JFɄ���Ĩi\\BM��E3o�X�\Z�\0�h*tg2��6��PU\0��(t4?�\Z������Zk@Mu!@��F-ڪ�\0��3\\{Oh��I\n�)\n�Y8���L���6��K��I��e^T��E\ZJRMe���ܧ,�����$+hu9�Ki�/&	�\"=[�]�ޠPm�&=�\"q^�G3�����s�����`�F�Z�&���-\r�M�h�:�D��f��m�Z�R�*�B�*�m@��87�rT���/�u^�w�.z*�jŭsR�0S���R_c4ұ3�)j��&J�D4.�J]z\"#��H!�ҵ�oZ5U��#���HJ�Ԥr4n�*��R`��m$)�{�|Ic����)óX<G�\ZU~���lU*k�/8���h�\0@�sP.8UP\n\\�̚#\Z�fj:|f��+(�f����ֽg\r�W�F��Eڤ|^�hν��}g�µ�{M\\T)�\'�\'���.T�t6˳�۲Y�Ө��#\'/)93V�^��>�ӗkJM��sL}9=$!g�#|�N�<��/!\r�s��c�����@������R;��|�Z�����BD�\\��K݋���F�RcXQ�)�M\'5Ր�ŎZ�Щp`��+�2�ي�<Sl���N��F��3��-��_�⃠Jf�6G�`5�3�|M3�3��T�|P�9B��m��:*��%:nA�x��67�.d]�R���x_o���M?�v���,�<S�,e:W���L\\�)�V���#��_\"@��\0�	�\Z�N[�ph���N��pUc績ʃ6�x����\":��Q��hL-s����Z�v�%cs�1�\"�)sMO��8�S�Bl��KI�45�bZ��n<�S�M�Q�5���~�Q�$7�@�K�p��=E�|��E�6z�Ʃ�w�/�ͫ��bʚ-��i�qU�^�#6M�엶�fZO�S���}�Ͷ~�W�I�)���Ȟ�dS{FhJ{5��!$��j/6��a�����6��?ڵ2�t�UA#�jolj�w�\\��{C�ڀj����T�D�6`�]#�4�NJ�bڗUfȜJS��.�h��0m�K�9R\"ͦ2���l��RK�>ܘ\n�0�܆�a;�J�`�ט�X�a���{s�SIi�m��!0>��(�c���1�N��	�LH�M\"{����#)�\"�t�:s���F{eK����IT���]��^�3F���h�\n��7�5���Do(��i_w�F�H!s��x]{U�q��SY\0m,������t�_�@&2tzm�j0�Ҷ�\n��03d.��v�&k�P2�*�y��i��TSg/��G����WP�	�\\AY��@�r�⵭CC���ⅺ�B�B��U�CB�UǥK���������qQV<�^�>^ܞ�O�d��Di]�\r\'j������H���$�%Pz��]<H��j)�н��Z��v�8�w2��ll�\"���3k\ZJc�Ψdx��ūB3��Sk`�%�f�AC��K�	|���I%�#V��ĝ�NV�td��0�u̿��C�GF�v�Nf\'���U{d���E9��ʥ����t$_�M�=+q�0a\r�F��\Z:mg�0�Ba����dR6�;�;W����~ꥫ�Ж\Z���n��!�W>��x3�����^���.��=���{���p%��v\r�w��d��ig�\\޾�,s��\n��nN����Ix�c.�S8I�������Ɍ�Z��9��\0\0\0\0IEND�B`�','Authorized'),(3,'kiran','hi','kiran@gmail.com','9535866270','# 343','08/08/1992','Male','560016','Bengaluru','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0���\0\0\0�PLTE���\0\0\0\0������������@BB���������9;;���vww��׸��������fgg������-//244���������oppFHH%\'\'���UVVTVV_``���KLL���&((�����!\0\0zIDATx��]٢�0ղ��.�n����҅�6-p���zh�&i��F��ͩ�s^2	O�q��)�$���YSS7�x�r��3?,\'[�Ch�߶��a����cm�ị�d���?�O����3������\"��&��C���r�P��+xq`�C3�0v�R�G������3]o�-ZMH��ܡ\r�4�m��UF��6nM�cb:I��y�7���$ˣ��q�$�x��71��9q�����R7��0�����-����s�����P��˼��ݤ:���m��v돧�n~����H����<���!r�S�����w���8�w;z��G�j�lX�ϲ��l\\һ���NO+��U_��\\�<7�T?��S9�����TN�g_J�m�|-�E\r���\r�{Vxi:)�q�@a��Q+NB�n�6�+������g.�{\0-�q���YQ��`f�����ܑ˦{{T�n����m��f�N��.f�\ZB�y\'͘���՛5=(�\"�l����gO���_��>���b_`)�~�r��8GR�se>����\\��D���[�CPh�*����%�p����I�F�J��k������3�-z2�\'����7��n���>+��M��~��=��Ǿ�(�Ƽ2�����\'#W�oi-���{|�����$�{��B�ߙA,�s�_���iM��0�@�Iu�*߭�	�Ƙ��o� �P=@1,\rA,�q �B��%��&l�v���.��Of8�+��oq)�\\#RG���o����C`$M̩��p^}1bޏ�����\Z�D`��#���x��,�7`�%�U��7:��ߤ�����3�B�^֎�x��#���PD:�\"�Y����M�g��0�SM����$ՇB�����E6A�妐�O�Ns	�A����6Эl	~D�y�ͩ�B�ݻiěD��Q�3N�h«��Ya3&;��N��r�w+�������mQ!�Dߴ�ב��ݷ����Q���g��\'�7��5	=���1O��M���:���X�S����&��h�m����\Zi\\��\0��Ь]v�D��X[{~2)��!c&�B���;l�}��X9ڀ�+VxQo]u��!9/�� t�M@m@��w��]!�9M�d��ߌ+�揁����`\"l`\"�u�M2\'���L��B�	zՂ��2�&����\r��{��ǊQX����x02�N�8��Ƶ$Q_���1�L�Է�Ɔ�ބ̉)Hm`d^��͉A��y�T���]t��#c`]��\n^c4�F��3���M\\]G�V��Ff|���_�\'x{�g2$��P��G-�G�P-�J���D�H,�M�����ͣ*�����ɘ���T�������ɐ�C1��`)��%��\n�Y!���;t����O��q\rk�u�ݏ��\'@&\r��,i�i�A�`nyx28��M)�dr�!�L(�J;��Y�7�����h[�S8c	�����vo0?33E�N��d����&j}�#s�,ۖ�Ӆ�@VLX�����~�+,6�!}Xe�\0ʾ�g�-��\n�H�u�\\��	���\n�.�\'���w8����\"��$�א撾Z$�-1N���:�qVA�*8x���+�U��T��\Z+�1�?ɥ�o3��s�4(���\'���$4�د�c s���o�gӠ����C�����8`��Y�W��8*�a�9$��p�-X��@�.\Z\"a@\ZӘX��ɿ�L�<)���hb��8/#���\\�L{���8�A�i�����^��JV��E�.~�X�Aw���d���M�}�Ԃ��L�%��:I�A��A\\��zD�uB=���Tf�`����N����5�W�&[8�C���ǆ��z�\r���MB�Gx�C�/3�r�>��Y����lWu�I�ęT�,�ptҔ�YC�H,o%2�i��R���( �3ܽ����?Tbcc5�j�(8�K*C	h6��-���7��-:���6�n��D홤ߑ�2\\u�2\n4�32��Mm�8:\"#X�,�*�JFɄ���Ĩi\\BM��E3o�X�\Z�\0�h*tg2��6��PU\0��(t4?�\Z������Zk@Mu!@��F-ڪ�\0��3\\{Oh��I\n�)\n�Y8���L���6��K��I��e^T��E\ZJRMe���ܧ,�����$+hu9�Ki�/&	�\"=[�]�ޠPm�&=�\"q^�G3�����s�����`�F�Z�&���-\r�M�h�:�D��f��m�Z�R�*�B�*�m@��87�rT���/�u^�w�.z*�jŭsR�0S���R_c4ұ3�)j��&J�D4.�J]z\"#��H!�ҵ�oZ5U��#���HJ�Ԥr4n�*��R`��m$)�{�|Ic����)óX<G�\ZU~���lU*k�/8���h�\0@�sP.8UP\n\\�̚#\Z�fj:|f��+(�f����ֽg\r�W�F��Eڤ|^�hν��}g�µ�{M\\T)�\'�\'���.T�t6˳�۲Y�Ө��#\'/)93V�^��>�ӗkJM��sL}9=$!g�#|�N�<��/!\r�s��c�����@������R;��|�Z�����BD�\\��K݋���F�RcXQ�)�M\'5Ր�ŎZ�Щp`��+�2�ي�<Sl���N��F��3��-��_�⃠Jf�6G�`5�3�|M3�3��T�|P�9B��m��:*��%:nA�x��67�.d]�R���x_o���M?�v���,�<S�,e:W���L\\�)�V���#��_\"@��\0�	�\Z�N[�ph���N��pUc績ʃ6�x����\":��Q��hL-s����Z�v�%cs�1�\"�)sMO��8�S�Bl��KI�45�bZ��n<�S�M�Q�5���~�Q�$7�@�K�p��=E�|��E�6z�Ʃ�w�/�ͫ��bʚ-��i�qU�^�#6M�엶�fZO�S���}�Ͷ~�W�I�)���Ȟ�dS{FhJ{5��!$��j/6��a�����6��?ڵ2�t�UA#�jolj�w�\\��{C�ڀj����T�D�6`�]#�4�NJ�bڗUfȜJS��.�h��0m�K�9R\"ͦ2���l��RK�>ܘ\n�0�܆�a;�J�`�ט�X�a���{s�SIi�m��!0>��(�c���1�N��	�LH�M\"{����#)�\"�t�:s���F{eK����IT���]��^�3F���h�\n��7�5���Do(��i_w�F�H!s��x]{U�q��SY\0m,������t�_�@&2tzm�j0�Ҷ�\n��03d.��v�&k�P2�*�y��i��TSg/��G����WP�	�\\AY��@�r�⵭CC���ⅺ�B�B��U�CB�UǥK���������qQV<�^�>^ܞ�O�d��Di]�\r\'j������H���$�%Pz��]<H��j)�н��Z��v�8�w2��ll�\"���3k\ZJc�Ψdx��ūB3��Sk`�%�f�AC��K�	|���I%�#V��ĝ�NV�td��0�u̿��C�GF�v�Nf\'���U{d���E9��ʥ����t$_�M�=+q�0a\r�F��\Z:mg�0�Ba����dR6�;�;W����~ꥫ�Ж\Z���n��!�W>��x3�����^���.��=���{���p%��v\r�w��d��ig�\\޾�,s��\n��nN����Ix�c.�S8I�������Ɍ�Z��9��\0\0\0\0IEND�B`�','Authorized'),(4,'Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','#8782,Rajaji Nagar,Bangalore-21','05/06/1987','Male','560021','Bangalore','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0�*��\0\0kPLTE�������Υ#�\"���ٌ!԰�!m�$��p_��`\0\0\0���̘r&&&�iZ忚ѣ}i�͢�������Ъ�\0\0\0�ө������6��\0\0Ҭ��¦���\0��؈۱�ׅ\0��������~�b录�Ǒ�Q�ֵ̢�ٹ��ӥ������!��΁����ï�հ�kN���\\���6x�}��IDC���534�p����9���c�̯���m\0���uni>����_�釉�PQU?AF���hed���stw�����~��·��u�ڔ�����hc^���UX^���\0a�%o٪��x��W�˘��?BI�BF�㏺߮���7�cA<6XND��mߝI{kY布qcS��u��yã��\0\0�IDATx�흋w�F�e�a�J5N-;~�14�I�8����$,a��,	-K)��f^��?G�-�S�;s��{�wzi���ӽs��Hr2�W�T���G�x������z�T:�/�d�Q6^�0\'QvԤ�B��X���8G�X��Q�#��F,Ս��G@��hh�����Ŕh���!���(D�EAD4�(K�Ć�F���/��\0i�8Z��:�X!�0������\0�C\Z#�N\r��qtQT%��G��d\ZwLO߄��SC�ML�Ȑ`��\r3�L��74a$�!a�z�0m��N�	B�L��`�)Zn���\nA�tR�hzi���j9��-�f���1�Y��S��0>>M4~�p�}ye}}�����r�h����2��\0mD�H���5���������o���������oSPI\"�G�uόR�Q�+�M�s�r�R{@�!²a�P��t�˨�<��1��lbH͠��%�ׁ�r�e`H=F\rD��;�m0\"�ʨSae���GӰ�80dۀQ��KE��/���RÎi�P@S�>#Q�1pZ��m+�qC_MeLF�^�%$���9�����c�1c� ?��\0I��g�_�E!$�Ѥ�I�W�+o�/d\\1�WՈ����NӒ�bA�@��HH̘�YGTR	�D��^�&��^q�	aU��O�:B%�����9y��T�U\" �X\'|�0���+(�r8���(ȹ=��\n����3|m�\0r�bT\rG)\" 磺�$��=PlUG���z���\'$�<eI}D�6��40R�ʳ�P|c\ZQFH_Y���X�����d<!1G� b8UF[W��KΉ��GKK�6��U� f��*�Yp����r�b;-(%�����p�F�ޝϖ����DK�μ��Q,\08DȦ/����2B&2�pr��Z�C�������`hH5�L��^�?���A�JF��S�ݶ0�dg�@���{�.�j�ݘ)gA�*oFҒӒ.����r��el^ζo𐰘*$֒���^P���g!�/�_r�/a�9�DH;ҙb2ah���pIyz|����n0�:ƛ�F��@%�&�0�,���烤�>���*,��f�A�03�0�0BH��x�0�W=\"p#�/��]=@Y�,p���@����9c���XfF#0kpf\"�w��\ZQ_�gl3�+�<b�0[d��R�2D�Vڥ\Z1�=�Btd���^\"�H�r1�\0�.Az,����h�艈�[g��1��ض\n7t� \ZlaS?j�ɲ�f�:�8���+���Ɍ��&�h�Q��vz�y�\Z��!�[`�50+�>��0�̵L��\"��_���	ِjt��E4�	�\\\0G��A����1�Srb�)<rih8g.l�������b��\Z�?�hv�,u�?�\r�M��N��h��x�����v9É��c:���;R�I���ă�1����#|�l9^j�-�S*ň��$����֥��D�֭f�q��j�GTp��A4l��k���S�ƚ]T.N}�I_�MͲ�c�h0��w�1�R��H�%Q.N}��S��q��\rr�\0����a����\0hJ�X0�,���K�����D�E` ֐�E`������\Z\'�,���Ѱ����١o�XC\"�ll�Y\Zqv8�hC���Y�<���T�a}3@\\�����2V��S$�ƿ���\"�^\n�;�G4n�����>bQ�D�)�1�ҩ\"�\'���%Ĺ�C1�7�ճ<\'Z��#�n:��b>a�Q�8E!άX=x-B�zl�WcG%(����1�VX\r3G�8�n���R�h��?�e8�*�=\'\\��0;�	����Ic�#UT=D�|���R,NU�k)�,S��\n�z�gn�>�\"B�l$�qd�o���5I�?\r�Ő���n���8�h:��:���ܐ ��^>��ޓ0!ej���J�W�\'6�/џ��W?���oD+~�@�q��0��\'F+ĜD���x��wݨ�ݵD����w3�_\Z��WD|�G�����[�8i�*ňd\r�in~[�W�������ڷ�U�:��!z��J�Z���;E���E/4w�\'V6[� \"8��6� �v��^=�׺�n��̉�:)BBt�y�����I��#j5��͛��\"�x=���(OO�/KHH�\"+ZxD�qE�����C�QyD�چ���|$D�5�\"Jϰ��P��B\'�f�O�sF��2�r�평��#��`��n�|D��\rӊ�kD$+����5Q2��\Z\"N��H3\rXW �8�����2J��f�A��?�耊T-�7�����9��H%���\ZT�k!�7���\"���i�MA��SD�1�/F�-P� ��ou��đ~��%�k���s��>\rJ%�������z�\r-lD��j�{�n71\"e~Q�5\n)�oNA�u띌�T!�ڹ	�N#D��j���\"�|<��s�r+��)ޏ�o䃱�BxM�Q1��s��R@���n�?+��VWՌ*B2���4+V�\r5㹏\nB�����6��ej�pVy��O��mp2c��U�<wVJC!Uo�=SH���mT���Ξ`�>�*����;߰��4��\n����ZH�#ZA�}�\"���ͨ�{O�[U(#�T6�]�X/�C�c�i|׻��2!�Ra�.�w�c�j�.�v�kk��&0�/\"��^�Y2�c!�Og@�T�h�Xȡ!f8D�m\rц��CC������\\Δ0�[,D�y7Huj�hȘCD�<�iy��h⬅&���S8˩D�!���� �q\"̐�.��9p(ǻpވqH��(��)F]H\n0w�\nB/T�dD1�����\Z�6ᚏr�UO���d�`�dLx���b�p�_��32&�ZHR?���(����dLx�	�*F���{�fTBҀ�+�?�d݉�\'N۟������ i���FL|n�����5$�,Ĝ�G��؄��O�6#�:\'�A�t�]��\"�<��ڌ�;���&��t�1�M��w�m��n� �c\"��O�n����|si��LHt��\Z\ZoE1����l>��Jc?�3:8�7a,����PD����<�W���o��)!ٞ�3�һ��ԍ0��PvUb=��î[錍u�%_!��`N�Z����X�Sq{O6æa�}�䗐vI\'�<y��B����뀁	�oL�v���wy곚o�vU������\Z��X,wC�^Ff��W�G>v��u*���;W�}V��o:�J��w�:�� ���=l�8��z����A�ͭ\'����e�Lq��;޸�����$��Ť!U�z�\ZmV܊��޿�T\0��yg�~ϭ�=	{�@���z���)�*�v�Ϻ[�;w�L�[4U�\Z���e�;iļ\Z�����&FY۝�؃��*_M��F��;��\'��	��|�W�o����Hl�Y�,�\0$��і�޷�y�w�Rƛ@��OD�\'1r�Fz���1��%��c�����\"Q��4B��O�1���$�16\0�]:\Z���,�;�/�J�Ȩ��H���I���!��ᘫi���{��O&0��G�lP虽�=����h��^.?���S��D�g;O/%&!f�+rT2�<���!$���m$_y7�01���;�x����\rG�$�0��g���Pθk<J&LF$�78cG�2B)#,ڄ��O!LA�\\ʃ�x#\'�1£ME:	� \Z06������0��;���*	e�.bf��Ǜ�/U��ո$�@���>MJ���`;.?�k*Ưj��p_�P1s	s���퉉��U)��hF`�i��CMDh�p���v�!e���A���\ZK�3���HGś�>F�	aM`E���C$�����f@H����cƇ���R��3��q������C����X������K����ј����F���\Z�a��Ѧ�K\\?1D������\"!a���c}U�>��������!f.�k��0�lL�:3�-1dԍ6ځ�H-g�<��~��\\N\0i^����p��fOǗ�$6�]���8����S�A��\Z1S��7\0�OϜ�.~^{���t��`���Q��i�\0���<uBcQ���ƈA�I���S�T橵gi�\Z`�1F$�̧���\0p�GQ���Dw������ңdC.�����s�S��	;�T{����J�l����Sӽ\r������Wԧ��=�<�ੵ���4�Q;�L�`Ly��x#��$�J.\0{�>j�Hb듆r�Y������6Pg�b4��Pq�1������y�t��l,[Y���;����\Z����TY��[ր��dL���od~�y�$�t�}`�-�=\"��>�l��i �N�j���ZDQZ(�dP�]�Rr�e\"Y<<����1���6{C�凩~z��O�i8vi�$��C$�r���AM6�~���~�	vc<����\"�nl�\rbL��Q�)]���L��qݧw��-���~�~��>J�S:����.o=A	��F����Am�8�O��z<Q;�i\\f�iD��66��?���sIqC������k�͍\r��)�C�J��/^�����oݺ�c ���?��ˋW7J#���_[��1����\0\0\0\0IEND�B`�','Authorized');
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
INSERT INTO `user` VALUES (1,'arun','hi','arun@gmail.com','9535866270','# 4324','08/08/1992','Male','560019','Bangalore','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0�*��\0\0kPLTE�������Υ#�\"���ٌ!԰�!m�$��p_��`\0\0\0���̘r&&&�iZ忚ѣ}i�͢�������Ъ�\0\0\0�ө������6��\0\0Ҭ��¦���\0��؈۱�ׅ\0��������~�b录�Ǒ�Q�ֵ̢�ٹ��ӥ������!��΁����ï�հ�kN���\\���6x�}��IDC���534�p����9���c�̯���m\0���uni>����_�釉�PQU?AF���hed���stw�����~��·��u�ڔ�����hc^���UX^���\0a�%o٪��x��W�˘��?BI�BF�㏺߮���7�cA<6XND��mߝI{kY布qcS��u��yã��\0\0�IDATx�흋w�F�e�a�J5N-;~�14�I�8����$,a��,	-K)��f^��?G�-�S�;s��{�wzi���ӽs��Hr2�W�T���G�x������z�T:�/�d�Q6^�0\'QvԤ�B��X���8G�X��Q�#��F,Ս��G@��hh�����Ŕh���!���(D�EAD4�(K�Ć�F���/��\0i�8Z��:�X!�0������\0�C\Z#�N\r��qtQT%��G��d\ZwLO߄��SC�ML�Ȑ`��\r3�L��74a$�!a�z�0m��N�	B�L��`�)Zn���\nA�tR�hzi���j9��-�f���1�Y��S��0>>M4~�p�}ye}}�����r�h����2��\0mD�H���5���������o���������oSPI\"�G�uόR�Q�+�M�s�r�R{@�!²a�P��t�˨�<��1��lbH͠��%�ׁ�r�e`H=F\rD��;�m0\"�ʨSae���GӰ�80dۀQ��KE��/���RÎi�P@S�>#Q�1pZ��m+�qC_MeLF�^�%$���9�����c�1c� ?��\0I��g�_�E!$�Ѥ�I�W�+o�/d\\1�WՈ����NӒ�bA�@��HH̘�YGTR	�D��^�&��^q�	aU��O�:B%�����9y��T�U\" �X\'|�0���+(�r8���(ȹ=��\n����3|m�\0r�bT\rG)\" 磺�$��=PlUG���z���\'$�<eI}D�6��40R�ʳ�P|c\ZQFH_Y���X�����d<!1G� b8UF[W��KΉ��GKK�6��U� f��*�Yp����r�b;-(%�����p�F�ޝϖ����DK�μ��Q,\08DȦ/����2B&2�pr��Z�C�������`hH5�L��^�?���A�JF��S�ݶ0�dg�@���{�.�j�ݘ)gA�*oFҒӒ.����r��el^ζo𐰘*$֒���^P���g!�/�_r�/a�9�DH;ҙb2ah���pIyz|����n0�:ƛ�F��@%�&�0�,���烤�>���*,��f�A�03�0�0BH��x�0�W=\"p#�/��]=@Y�,p���@����9c���XfF#0kpf\"�w��\ZQ_�gl3�+�<b�0[d��R�2D�Vڥ\Z1�=�Btd���^\"�H�r1�\0�.Az,����h�艈�[g��1��ض\n7t� \ZlaS?j�ɲ�f�:�8���+���Ɍ��&�h�Q��vz�y�\Z��!�[`�50+�>��0�̵L��\"��_���	ِjt��E4�	�\\\0G��A����1�Srb�)<rih8g.l�������b��\Z�?�hv�,u�?�\r�M��N��h��x�����v9É��c:���;R�I���ă�1����#|�l9^j�-�S*ň��$����֥��D�֭f�q��j�GTp��A4l��k���S�ƚ]T.N}�I_�MͲ�c�h0��w�1�R��H�%Q.N}��S��q��\rr�\0����a����\0hJ�X0�,���K�����D�E` ֐�E`������\Z\'�,���Ѱ����١o�XC\"�ll�Y\Zqv8�hC���Y�<���T�a}3@\\�����2V��S$�ƿ���\"�^\n�;�G4n�����>bQ�D�)�1�ҩ\"�\'���%Ĺ�C1�7�ճ<\'Z��#�n:��b>a�Q�8E!άX=x-B�zl�WcG%(����1�VX\r3G�8�n���R�h��?�e8�*�=\'\\��0;�	����Ic�#UT=D�|���R,NU�k)�,S��\n�z�gn�>�\"B�l$�qd�o���5I�?\r�Ő���n���8�h:��:���ܐ ��^>��ޓ0!ej���J�W�\'6�/џ��W?���oD+~�@�q��0��\'F+ĜD���x��wݨ�ݵD����w3�_\Z��WD|�G�����[�8i�*ňd\r�in~[�W�������ڷ�U�:��!z��J�Z���;E���E/4w�\'V6[� \"8��6� �v��^=�׺�n��̉�:)BBt�y�����I��#j5��͛��\"�x=���(OO�/KHH�\"+ZxD�qE�����C�QyD�چ���|$D�5�\"Jϰ��P��B\'�f�O�sF��2�r�평��#��`��n�|D��\rӊ�kD$+����5Q2��\Z\"N��H3\rXW �8�����2J��f�A��?�耊T-�7�����9��H%���\ZT�k!�7���\"���i�MA��SD�1�/F�-P� ��ou��đ~��%�k���s��>\rJ%�������z�\r-lD��j�{�n71\"e~Q�5\n)�oNA�u띌�T!�ڹ	�N#D��j���\"�|<��s�r+��)ޏ�o䃱�BxM�Q1��s��R@���n�?+��VWՌ*B2���4+V�\r5㹏\nB�����6��ej�pVy��O��mp2c��U�<wVJC!Uo�=SH���mT���Ξ`�>�*����;߰��4��\n����ZH�#ZA�}�\"���ͨ�{O�[U(#�T6�]�X/�C�c�i|׻��2!�Ra�.�w�c�j�.�v�kk��&0�/\"��^�Y2�c!�Og@�T�h�Xȡ!f8D�m\rц��CC������\\Δ0�[,D�y7Huj�hȘCD�<�iy��h⬅&���S8˩D�!���� �q\"̐�.��9p(ǻpވqH��(��)F]H\n0w�\nB/T�dD1�����\Z�6ᚏr�UO���d�`�dLx���b�p�_��32&�ZHR?���(����dLx�	�*F���{�fTBҀ�+�?�d݉�\'N۟������ i���FL|n�����5$�,Ĝ�G��؄��O�6#�:\'�A�t�]��\"�<��ڌ�;���&��t�1�M��w�m��n� �c\"��O�n����|si��LHt��\Z\ZoE1����l>��Jc?�3:8�7a,����PD����<�W���o��)!ٞ�3�һ��ԍ0��PvUb=��î[錍u�%_!��`N�Z����X�Sq{O6æa�}�䗐vI\'�<y��B����뀁	�oL�v���wy곚o�vU������\Z��X,wC�^Ff��W�G>v��u*���;W�}V��o:�J��w�:�� ���=l�8��z����A�ͭ\'����e�Lq��;޸�����$��Ť!U�z�\ZmV܊��޿�T\0��yg�~ϭ�=	{�@���z���)�*�v�Ϻ[�;w�L�[4U�\Z���e�;iļ\Z�����&FY۝�؃��*_M��F��;��\'��	��|�W�o����Hl�Y�,�\0$��і�޷�y�w�Rƛ@��OD�\'1r�Fz���1��%��c�����\"Q��4B��O�1���$�16\0�]:\Z���,�;�/�J�Ȩ��H���I���!��ᘫi���{��O&0��G�lP虽�=����h��^.?���S��D�g;O/%&!f�+rT2�<���!$���m$_y7�01���;�x����\rG�$�0��g���Pθk<J&LF$�78cG�2B)#,ڄ��O!LA�\\ʃ�x#\'�1£ME:	� \Z06������0��;���*	e�.bf��Ǜ�/U��ո$�@���>MJ���`;.?�k*Ưj��p_�P1s	s���퉉��U)��hF`�i��CMDh�p���v�!e���A���\ZK�3���HGś�>F�	aM`E���C$�����f@H����cƇ���R��3��q������C����X������K����ј����F���\Z�a��Ѧ�K\\?1D������\"!a���c}U�>��������!f.�k��0�lL�:3�-1dԍ6ځ�H-g�<��~��\\N\0i^����p��fOǗ�$6�]���8����S�A��\Z1S��7\0�OϜ�.~^{���t��`���Q��i�\0���<uBcQ���ƈA�I���S�T橵gi�\Z`�1F$�̧���\0p�GQ���Dw������ңdC.�����s�S��	;�T{����J�l����Sӽ\r������Wԧ��=�<�ੵ���4�Q;�L�`Ly��x#��$�J.\0{�>j�Hb듆r�Y������6Pg�b4��Pq�1������y�t��l,[Y���;����\Z����TY��[ր��dL���od~�y�$�t�}`�-�=\"��>�l��i �N�j���ZDQZ(�dP�]�Rr�e\"Y<<����1���6{C�凩~z��O�i8vi�$��C$�r���AM6�~���~�	vc<����\"�nl�\rbL��Q�)]���L��qݧw��-���~�~��>J�S:����.o=A	��F����Am�8�O��z<Q;�i\\f�iD��66��?���sIqC������k�͍\r��)�C�J��/^�����oݺ�c ���?��ˋW7J#���_[��1����\0\0\0\0IEND�B`�','Authorized'),(2,'ramesh','hi','ramesh@gmail.com','9535866270','# 22','08/08/1992','Male','560019','Bangalore','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0x\0\0\0x\0\0\0���\0\0\0fPLTE\0\0\0������������nnn\"\"\"�����󗗗������������eee������sssSSSYYY������HHH���???���\'\'\'NNN___666���J���\0\0\"IDATh��ۚ�0�#GT���K���Ғ�DԹ��O����m���;IZ�5<��\"M<�?�-WGp\\-�W�EzA��%/����w��Am-�T��1�Wۊ��+3�d�wv��=�����(�ċ7/�ςC,k�2�1�xo���L�?�I����0�\rbo�Ѭ�y�3���Z���4soq4����q^��O<bauh�F��)v>��x/\0�W����C|\"W6).9�\0��8�����ѯR�Jb��C&�)�8u���+����.f	x��9�8��ۇU�}\'�^\0���׼⵵�)Nw��\Z��-bu�b�;��[q��o�p��3�3����ĳ�x���+��;�_\'����B��6��m�;,���n�[���o?v���{Vi�Lڻ�B<�R7\\\ra/�N�Io��K=M?Q�߷�G�R�=������3o,��}M�a�T��� ����5��#��yCJ���E\'ؤ\n�mQg��.b�RDwig�J)*ITju*l�����ʗ�6���?�M�˹��X&N\Z��ˠ��r�}�J6߇�ēD)e6D��Å�~������D�Z^c�kx���t&��p�F�2�iAK|�y��#z^b~EE���ƅh.j*K�\n�`U�u.?E,e���\n�W�ڬ���Ql��m5\\�D���S�ގqeV\Z2����_��{�9_R�O�Q�5E�m2z�,��������mU=B!<.�q|�_�/s��j�?��Y\\C�9�Ա9��\"~l\r��ը���d��ӊ�Rک���Z�|���k��A��jr\"hG͍�G���U��:�Ce(�u\\�}nƩ�-�=�M����R�G�F�Yjm�℡ݦc�\Z�f�t&fΓ�2D��сܔ�bƟ��02�`�7cV�!s�Ij�l�ECb�80?�O@��Wz2J:�	}�CB�x\rv���3�6y�3T<��Ն34���#bֲ�a(f��R���h��*f-���qk~��V36��%1c��T�!xtD}�ۖ�\r��q����w�t7׿b�?�����A�\0;;7�p�\0\0\0\0IEND�B`�','Authorized'),(3,'tmksmanju','tmksmanju','tmksmanju13@gmail.com','9535866270','#87982,Vijayanagar,Bangalore-21','05/06/1987','Male','560021','Bangalore','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0x\0\0\0x\0\0\0���\0\0\0cPLTE���\0\0\0������������������888TTT���������@@@JJJ���������������\\\\\\���222ddd&&&������+++���}}}oooe8�\0\0\0IDATh��Zٺ�0vXDYQT�G��)GiӍ$-�|s���\r�ӄ���q4\"�w��<���ތ��~(�跉�Mw����5�����ѵ��T�Æ�*�9,����*�\'���	f��|��K��7E�E�u���Q�ͽvI�?&{���6I�N�J����ow�٨��w�û�E���{%_��s�R��[�˿޶2��M��0L�y�lT�w�e���S���K��1�;\n�g�����^ވE�Em?�۩�{z�-n����]{��xEkfY�N�[n[��|���fS��>��� ���K��u\"dM��w Ϡ�\Z�<Q�))�7���b̶��XC,����n�ņ\"���/����E�2G��`��1�a�\'��2�V�Zb$���D�|%C�gL�R�>IYn��+��b-���> �$/��I��[ŤH%f\'��t<$n���|�ѝ���.�rBw�����l����U0��{�}�͠�����.��R	gK.��l1�ȇ��)YBcór�X�Hݛ���%���B8�tB���7)�X�\"�a�+#��T$��Y*h��\'d�$h�ẍ�(����Io�t�|��N��ӧYd6ȩ�*7�\ZbZ�;at�1���D�������;,\'�AG�����_Z92������ʎ�h�W8�%UfW-���<O\"#�8��*T���atW+kХ��Xd�E%�C�sd�1 ��	#ֲ�mqAQK2f��p6b1�a�Prt��^ʝ��Z�B�5�Gza�\0�Fkǆ�kމ��\n�O�ᱯ	^0#I�~��\nO�,d����w��P���sF��{@�)F��9��f��gDf�K\\OB�\r!��W��Ñ�Օ]y�z��D��[�pȋ$�Ь��fX\Z���\"~�\0W6|���򦏙��\n�]�]yqG[!�#�������i	a�q�̋9��1w1wOQ��u�@�h�Qu9�&�� �	�N�E�xz�N\0�L�l���Cy��4����G�6ܐ�I�}�~��|�\'^hWт�$��h�@����(ܴ�\n���;o�r���9ٹU��yғ҇/��\'�$���>&�_޾P22v$�D�Iy�T�v�u�зE��I��h{�}\\�AdJ�����Kܯ�F���|���i��]���x}$�jt4�C���1��\\k�OX���9	:D����\\�y0�M��!��.�T+BO?\'���0	�����be2��yl��8+x�m7��<�~j�*��MX�M����&v_e����a��c8�l�,���\"�ڻAb�wנh-AY�\"�!¢�^@��M�8���Iȶ18��LFT�BJ�!L�\\�<�J���X)>�j�F���IV�|��ɜ5��ŵ �V˖�L(r�,~�c�\n���,^d<���3�U�b߈O\r5����:���t#;[��ٴڄ>��}A�u0l��������.	��Fʛ�A:�%�VP��M�v�:���}\\%lvƑ��X�e��|\"�F��������>���>���>� �n>�@(�Q\0\0\0\0IEND�B`�','Authorized');
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
