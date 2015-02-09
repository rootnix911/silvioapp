-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: play
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

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
-- Table structure for table `tbl_playlist`
--

DROP TABLE IF EXISTS `tbl_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `app` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `http` varchar(255) DEFAULT NULL,
  `rtmp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_playlist`
--

LOCK TABLES `tbl_playlist` WRITE;
/*!40000 ALTER TABLE `tbl_playlist` DISABLE KEYS */;
INSERT INTO `tbl_playlist` VALUES (1,'nexcast','origin.hd-livestream.de',80,'redirect/live','nexcast','2','',''),(2,'enjoy_iframe','origin.hd-livestream.de',80,'redirect/live','Enjoy','1','',''),(3,'TirolTV_iframe','edge8.hd-livestream.de',1935,'live','TirolTV','1','','');
/*!40000 ALTER TABLE `tbl_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_port`
--

DROP TABLE IF EXISTS `tbl_port`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_port` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `port` int(11) NOT NULL DEFAULT '1935',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_port`
--

LOCK TABLES `tbl_port` WRITE;
/*!40000 ALTER TABLE `tbl_port` DISABLE KEYS */;
INSERT INTO `tbl_port` VALUES (1,80,'Default port for streaming'),(3,1935,'');
/*!40000 ALTER TABLE `tbl_port` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_server`
--

DROP TABLE IF EXISTS `tbl_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_server`
--

LOCK TABLES `tbl_server` WRITE;
/*!40000 ALTER TABLE `tbl_server` DISABLE KEYS */;
INSERT INTO `tbl_server` VALUES (1,'origin.hd-livestream.de','This is Origin/LB node'),(4,'edge8.hd-livestream.de','Origin2 server for transcoder streams');
/*!40000 ALTER TABLE `tbl_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_template`
--

DROP TABLE IF EXISTS `tbl_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `code` varchar(60000) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_template`
--

LOCK TABLES `tbl_template` WRITE;
/*!40000 ALTER TABLE `tbl_template` DISABLE KEYS */;
INSERT INTO `tbl_template` VALUES (1,'Player v. 2.0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head id=\"hdInformationen\"><title>hd-livestream.de_v.1.2\r\n</title>\r\n</head>\r\n<body style=\"margin:0; padding:0;\">\r\n<script type=\"text/javascript\" src=\"/js/jquery.min.js\" ></script>\r\n<script type=\"text/javascript\" src=\"/swfobject.js\">\r\n</script>\r\n<div id=\"videodiv-live\">\r\n    <noscript><a href=\"http://hd-livestream.de/\">Video Livestream Hosting</a>. Bitte aktivieren Sie JavaScript in Ihrem Browser (Please enable javascript).</noscript>\r\n</div>\r\n<script type=\"text/javascript\" src=\"http://www.hd-livestream.de/Player6/jwplayer.js\" ></script>\r\n         <script type=\"text/javascript\" src=\"jwplayer.js\" ></script>\r\n		<script type=\"text/javascript\">jwplayer.key=\"L4LIIFqJjUQeHkLMG9m/o2hGMKWNlyCL/zEn8LP+8eY=\";</script>\r\n		<div id=\'hd-livestream\'></div>\r\n		<script type=\'text/javascript\'>\r\n	width = \"100%\";\r\n        height = \"100%\";\r\n        image = \"http://www.hd-livestream.de/media_lib/21580404-83b2-44ae-92af-28b33d01188e/image/vito.jpg\"\r\n        rtsp = \'js_rtsp\';\r\n        http = \'js_http\';\r\n        rtmp = \'js_rtmp\';\r\n        \r\n  if (navigator.userAgent.indexOf(\"Android 4.\") == -1 && navigator.userAgent.indexOf(\"iPhone\") == -1 && navigator.userAgent.indexOf(\"iPad\") == -1 && navigator.userAgent.indexOf(\"BB10\") == -1 && swfobject.hasFlashPlayerVersion(\"9.0.115\")) {\r\n    		jwplayer(\'hd-livestream\').setup({file: js_rtmp, \r\n                width: (width), height: (height), \r\n            image: (image), \r\n            rtmp: {\r\n        securetoken: \"232612b37dd616a1\"\r\n             },\r\n            autostart: \'true\'});\r\n    }\r\n    else {\r\n        //+++ iOS iPhone Code +++\r\n        if ( (navigator.userAgent.indexOf(\"iPhone\") >= 0) || (navigator.userAgent.indexOf(\"iPod\") >= 0) ) {\r\n                c = \'<video width=\"\'+width+\'\" height=\"\'+height+\'\" controls autobuffer poster=\"\'+image+\'\" source src=\"\'+http+\'?scheme=m3u8\" type=\"video/mp4\" />\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }\r\n\r\n        //+++ iOS iPad Code +++\r\n        if (navigator.userAgent.indexOf(\"iPad\") >= 0 ) {\r\n                c = \'<video width=\"\'+width+\'\" height=\"\'+height+\'\" controls autobuffer poster=\"\'+image+\'\" source src=\"\'+http+\'?scheme=m3u8\" type=\"video/mp4\" />\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }\r\n\r\n         //+++ RIM Blackberry Code +++\r\n        if (navigator.userAgent.indexOf(\"BlackBerry\") >= 0 ) {\r\n                c = \'<a href=\"\'+rtsp+\'\"><img width=\"\'+width+\'\" height=\"\'+(parseInt(width)/16*9)+\'\" src=\"/images/play.png\" alt=\"Video abspielen (RTP/RTSP)\"/> <\\/a>\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }\r\n                \r\n         //+++ Android Code +++\r\n        if (navigator.userAgent.indexOf(\"Android\") >= 0 ) {\r\n                c = \'<a href=\"\'+rtsp+\'\"><img width=\"\'+width+\'\" height=\"\'+(parseInt(width)/16*9)+\'\" src=\"/images//play.png\" alt=\"Video abspielen (RTP/RTSP)\"/> <\\/a>\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n          }                      \r\n        \r\n        //Android 4 und Blackberry BB10 unterst?tzen HLS-Streaming (wie iOS)\r\n        //KFOT= Kindle Fire 7inch, KFTT = Kindle Fire HD 7\", KFJWI & KFJWA = Kindle Fire HD 8.9\", BB10 = BlackBerry z.B. Z10\r\n        if (navigator.userAgent.indexOf(\"Android 4.\") >= 0 || navigator.userAgent.indexOf(\"Android 5.\") >= 0 || navigator.userAgent.indexOf(\"KFOT\") >= 0 || navigator.userAgent.indexOf(\"KFTT\") >= 0 || navigator.userAgent.indexOf(\"KFJWI\") >= 0 || navigator.userAgent.indexOf(\"KFJWA\") >= 0 || navigator.userAgent.indexOf(\"BB10\") >= 0 ) {              \r\n                c = \'<video controls width=\"\'+width+\'\" height=\"\'+height+\'\" poster=\"\'+image+\'\" src=\"\'+http+\'?scheme=m3u8\" />\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }                \r\n\r\n     }  \r\n		</script>\r\n        \r\n\r\n</body>','100% width and height'),(2,'Radio v1','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head id=\"hdInformationen\"><title>hd-livestream.de_v.1.2\r\n</title>\r\n</head>\r\n<body style=\"margin:0; padding:0;\">\r\n<script type=\"text/javascript\" src=\"/js/jquery.min.js\" ></script>\r\n<script type=\"text/javascript\" src=\"/swfobject.js\">\r\n</script>\r\n<div id=\"videodiv-live\">\r\n    <noscript><a href=\"http://hd-livestream.de/\">Video Livestream Hosting</a>. Bitte aktivieren Sie JavaScript in Ihrem Browser (Please enable javascript).</noscript>\r\n</div>\r\n<script type=\"text/javascript\" src=\"http://www.hd-livestream.de/Player6/jwplayer.js\" ></script>\r\n         <script type=\"text/javascript\" src=\"jwplayer.js\" ></script>\r\n		<script type=\"text/javascript\">jwplayer.key=\"L4LIIFqJjUQeHkLMG9m/o2hGMKWNlyCL/zEn8LP+8eY=\";</script>\r\n		<div id=\'hd-livestream\'></div>\r\n		<script type=\'text/javascript\'>\r\n        width = \"\";\r\n        height = \"\";\r\n        image = \"\"\r\n        rtsp = \"rtsp://origin.hd-livestream.de:1935/redirect/live/nexcast\";\r\n        http = \"http://origin.hd-livestream.de/redirect/live/nexcast\";\r\n        rtmp = \"rtmp://origin.hd-livestream.de/redirect/live/nexcast\";\r\n        \r\n  if (navigator.userAgent.indexOf(\"Android 4.\") == -1 && navigator.userAgent.indexOf(\"iPhone\") == -1 && navigator.userAgent.indexOf(\"iPad\") == -1 && navigator.userAgent.indexOf(\"BB10\") == -1 && swfobject.hasFlashPlayerVersion(\"9.0.115\")) {\r\n    		jwplayer(\'hd-livestream\').setup({file: (rtmp), \r\n //           width: $( document).width(), height: $( document).height(), \r\n            height: 30,\r\n            image: (image), \r\n            rtmp: {\r\n        securetoken: \"232612b37dd616a1\"\r\n             },\r\n            autostart: \'true\'});\r\n    }\r\n    else {\r\n        //+++ iOS iPhone Code +++\r\n        if ( (navigator.userAgent.indexOf(\"iPhone\") >= 0) || (navigator.userAgent.indexOf(\"iPod\") >= 0) ) {\r\n                c = \'<audio width=\"\'+width+\'\" height=\"\'+height+\'\" controls autobuffer poster=\"\'+image+\'\" source src=\"\'+http+\'?scheme=m3u8\" type=\"video/mp4\" />\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }\r\n\r\n        //+++ iOS iPad Code +++\r\n        if (navigator.userAgent.indexOf(\"iPad\") >= 0 ) {\r\n                c = \'<audio width=\"\'+width+\'\" height=\"\'+height+\'\" controls autobuffer poster=\"\'+image+\'\" source src=\"\'+http+\'?scheme=m3u8\" type=\"video/mp4\" />\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }\r\n\r\n         //+++ RIM Blackberry Code +++\r\n        if (navigator.userAgent.indexOf(\"BlackBerry\") >= 0 ) {\r\n                c = \'<a href=\"\'+rtsp+\'\"><img width=\"\'+width+\'\" height=\"\'+(parseInt(width)/16*9)+\'\" src=\"/images/play.png\" alt=\"Video abspielen (RTP/RTSP)\"/> <\\/a>\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }\r\n                \r\n         //+++ Android Code +++\r\n        if (navigator.userAgent.indexOf(\"Android\") >= 0 ) {\r\n                c = \'<a href=\"\'+rtsp+\'\"><img width=\"\'+width+\'\" height=\"\'+(parseInt(width)/16*9)+\'\" src=\"/images//play.png\" alt=\"Video abspielen (RTP/RTSP)\"/> <\\/a>\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n          }                      \r\n        \r\n        //Android 4 und Blackberry BB10 unterst?tzen HLS-Streaming (wie iOS)\r\n        //KFOT= Kindle Fire 7inch, KFTT = Kindle Fire HD 7\", KFJWI & KFJWA = Kindle Fire HD 8.9\", BB10 = BlackBerry z.B. Z10\r\n        if (navigator.userAgent.indexOf(\"Android 4.\") >= 0 || navigator.userAgent.indexOf(\"Android 5.\") >= 0 || navigator.userAgent.indexOf(\"KFOT\") >= 0 || navigator.userAgent.indexOf(\"KFTT\") >= 0 || navigator.userAgent.indexOf(\"KFJWI\") >= 0 || navigator.userAgent.indexOf(\"KFJWA\") >= 0 || navigator.userAgent.indexOf(\"BB10\") >= 0 ) {              \r\n                c = \'<audio controls width=\"\'+width+\'\" height=\"\'+height+\'\" poster=\"\'+image+\'\" src=\"\'+http+\'?scheme=m3u8\" />\';\r\n                document.getElementById(\'hd-livestream\').innerHTML=c;\r\n        }                \r\n\r\n     }  \r\n		</script>\r\n        \r\n\r\n</body>\r\n','');
/*!40000 ALTER TABLE `tbl_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'admin','Wy9g3H7U','administrator','admin@mx.kh.ua'),(2,'test2','pass2','user','test2@example.com'),(3,'test3','pass3','0','test3@example.com'),(4,'test4','pass4','0','test4@example.com'),(5,'test5','pass5','0','test5@example.com'),(6,'test6','pass6','0','test6@example.com'),(7,'test7','pass7','0','test7@example.com'),(8,'test8','pass8','0','test8@example.com'),(9,'test9','pass9','0','test9@example.com'),(10,'test10','pass10','0','test10@example.com');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-06 14:16:30
