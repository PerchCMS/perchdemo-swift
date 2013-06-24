-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: swift_demo
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

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
-- Table structure for table `perch2_blog_authors`
--

DROP TABLE IF EXISTS `perch2_blog_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_authors` (
  `authorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authorGivenName` varchar(255) NOT NULL DEFAULT '',
  `authorFamilyName` varchar(255) NOT NULL DEFAULT '',
  `authorEmail` varchar(255) NOT NULL DEFAULT '',
  `authorSlug` varchar(255) NOT NULL DEFAULT '',
  `authorImportRef` varchar(64) DEFAULT NULL,
  `authorDynamicFields` text,
  PRIMARY KEY (`authorID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_authors`
--

LOCK TABLES `perch2_blog_authors` WRITE;
/*!40000 ALTER TABLE `perch2_blog_authors` DISABLE KEYS */;
INSERT INTO `perch2_blog_authors` VALUES (1,'Rachel','Andrew','rachel@edgeofmyseat.com','rachel-andrew',NULL,NULL);
/*!40000 ALTER TABLE `perch2_blog_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_blog_categories`
--

DROP TABLE IF EXISTS `perch2_blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_categories` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryTitle` varchar(255) NOT NULL DEFAULT '',
  `categorySlug` varchar(255) NOT NULL DEFAULT '',
  `categoryPostCount` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryDynamicFields` text,
  PRIMARY KEY (`categoryID`),
  KEY `idx_slug` (`categorySlug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_categories`
--

LOCK TABLES `perch2_blog_categories` WRITE;
/*!40000 ALTER TABLE `perch2_blog_categories` DISABLE KEYS */;
INSERT INTO `perch2_blog_categories` VALUES (1,'Relocation','relocation',2,'{\"categoryTitle\":\"Relocation\",\"categorySlug\":\"relocation\"}'),(2,'Immigration','immigration',0,'{\"categoryTitle\":\"Immigration\",\"categorySlug\":\"immigration\"}'),(3,'Employees','employees',1,'{\"categoryTitle\":\"Employees\",\"categorySlug\":\"employees\"}'),(4,'Business','business',2,'{\"categoryTitle\":\"Business\",\"categorySlug\":\"business\"}'),(5,'Really big business','really-big-business',0,'{\"categoryTitle\":\"Really big business\",\"categorySlug\":\"really-big-business\"}');
/*!40000 ALTER TABLE `perch2_blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_blog_comments`
--

DROP TABLE IF EXISTS `perch2_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_comments` (
  `commentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `postID` int(10) unsigned NOT NULL,
  `commentName` varchar(255) NOT NULL DEFAULT '',
  `commentEmail` varchar(255) NOT NULL DEFAULT '',
  `commentURL` varchar(255) NOT NULL DEFAULT '',
  `commentIP` int(10) unsigned NOT NULL DEFAULT '0',
  `commentDateTime` datetime NOT NULL,
  `commentHTML` text NOT NULL,
  `commentStatus` enum('LIVE','PENDING','SPAM','REJECTED') NOT NULL DEFAULT 'PENDING',
  `commentSpamData` text NOT NULL,
  `commentDynamicFields` text NOT NULL,
  PRIMARY KEY (`commentID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_comments`
--

LOCK TABLES `perch2_blog_comments` WRITE;
/*!40000 ALTER TABLE `perch2_blog_comments` DISABLE KEYS */;
INSERT INTO `perch2_blog_comments` VALUES (1,2,'Joe Bloggs','joe@example.com','http://example.com',167772171,'2013-05-06 08:48:41','<p>First!</p>','LIVE','{\"fields\":{\"name\":\"Joe Bloggs\",\"email\":\"joe@example.com\",\"url\":\"http:\\/\\/example.com\",\"body\":\"First!\"},\"environment\":{\"HTTP_HOST\":\"swift_demo.perchtutorial.eoms\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit\\/536.29.13 (KHTML, like Gecko) Version\\/6.0.4 Safari\\/536.29.13\",\"CONTENT_LENGTH\":\"226\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\",\"HTTP_ORIGIN\":\"http:\\/\\/swift_demo.perchtutorial.eoms\",\"CONTENT_TYPE\":\"application\\/x-www-form-urlencoded\",\"HTTP_REFERER\":\"http:\\/\\/swift_demo.perchtutorial.eoms\\/blog\\/post.php?s=2013-05-05-leaving-the-nest\",\"HTTP_ACCEPT_LANGUAGE\":\"en-us\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_COOKIE\":\"PHPSESSID=2idij181ihi94vbn20lpn1blh1\",\"HTTP_CONNECTION\":\"keep-alive\",\"PATH\":\"\\/usr\\/local\\/bin:\\/usr\\/bin:\\/bin\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\\/2.2.16 (Debian)\",\"SERVER_NAME\":\"swift_demo.perchtutorial.eoms\",\"SERVER_ADDR\":\"10.0.0.52\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"10.0.0.11\",\"DOCUMENT_ROOT\":\"\\/home\\/www\\/swift_demo\\/public_html\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"\\/home\\/www\\/swift_demo\\/public_html\\/blog\\/post.php\",\"REMOTE_PORT\":\"61858\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"s=2013-05-05-leaving-the-nest\",\"REQUEST_URI\":\"\\/blog\\/post.php?s=2013-05-05-leaving-the-nest\",\"SCRIPT_NAME\":\"\\/blog\\/post.php\",\"PHP_SELF\":\"\\/blog\\/post.php\",\"REQUEST_TIME\":1367830121}}','{\"submitComment\":\"Submit\"}'),(2,2,'A.N.Other','other@example.com','',167772171,'2013-05-06 08:49:48','<p>There is always someone who has to post first. I prefer to have the last word.</p>','LIVE','{\"fields\":{\"name\":\"A.N.Other\",\"email\":\"other@example.com\",\"url\":\"\",\"body\":\"There is always someone who has to post first. I prefer to have the last word.\"},\"environment\":{\"HTTP_HOST\":\"swift_demo.perchtutorial.eoms\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit\\/536.29.13 (KHTML, like Gecko) Version\\/6.0.4 Safari\\/536.29.13\",\"CONTENT_LENGTH\":\"273\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\",\"HTTP_ORIGIN\":\"http:\\/\\/swift_demo.perchtutorial.eoms\",\"CONTENT_TYPE\":\"application\\/x-www-form-urlencoded\",\"HTTP_REFERER\":\"http:\\/\\/swift_demo.perchtutorial.eoms\\/blog\\/post.php?s=2013-05-05-leaving-the-nest\",\"HTTP_ACCEPT_LANGUAGE\":\"en-us\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_COOKIE\":\"PHPSESSID=2idij181ihi94vbn20lpn1blh1\",\"HTTP_CONNECTION\":\"keep-alive\",\"PATH\":\"\\/usr\\/local\\/bin:\\/usr\\/bin:\\/bin\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\\/2.2.16 (Debian)\",\"SERVER_NAME\":\"swift_demo.perchtutorial.eoms\",\"SERVER_ADDR\":\"10.0.0.52\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"10.0.0.11\",\"DOCUMENT_ROOT\":\"\\/home\\/www\\/swift_demo\\/public_html\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"\\/home\\/www\\/swift_demo\\/public_html\\/blog\\/post.php\",\"REMOTE_PORT\":\"61872\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"s=2013-05-05-leaving-the-nest\",\"REQUEST_URI\":\"\\/blog\\/post.php?s=2013-05-05-leaving-the-nest\",\"SCRIPT_NAME\":\"\\/blog\\/post.php\",\"PHP_SELF\":\"\\/blog\\/post.php\",\"REQUEST_TIME\":1367830188}}','{\"commentURL\":\"\",\"submitComment\":\"Submit\"}');
/*!40000 ALTER TABLE `perch2_blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_blog_posts`
--

DROP TABLE IF EXISTS `perch2_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_posts` (
  `postID` int(11) NOT NULL AUTO_INCREMENT,
  `postTitle` varchar(255) NOT NULL DEFAULT '',
  `postSlug` varchar(255) NOT NULL DEFAULT '',
  `postDateTime` datetime DEFAULT NULL,
  `postDescRaw` text,
  `postDescHTML` text,
  `postDynamicFields` text,
  `postTags` varchar(255) NOT NULL DEFAULT '',
  `postStatus` enum('Published','Draft') NOT NULL DEFAULT 'Published',
  `authorID` int(10) unsigned NOT NULL DEFAULT '0',
  `postCommentCount` int(10) unsigned NOT NULL DEFAULT '0',
  `postImportID` varchar(64) DEFAULT NULL,
  `postLegacyURL` varchar(255) DEFAULT NULL,
  `postAllowComments` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `postTemplate` varchar(255) NOT NULL DEFAULT 'post.html',
  PRIMARY KEY (`postID`),
  KEY `idx_date` (`postDateTime`),
  FULLTEXT KEY `idx_search` (`postTitle`,`postDescRaw`,`postTags`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_posts`
--

LOCK TABLES `perch2_blog_posts` WRITE;
/*!40000 ALTER TABLE `perch2_blog_posts` DISABLE KEYS */;
INSERT INTO `perch2_blog_posts` VALUES (1,'Learning to fly','2013-05-05-learning-to-fly','2013-05-05 14:50:00','Nullam consectetur suscipit viverra. Nam molestie urna nec mi dictum id mollis eros porttitor. Nam vel ornare turpis. Mauris eget turpis eu nulla volutpat fringilla id ut lacus. Aenean ante mi, ornare eu feugiat eu, tincidunt pellentesque sapien. Duis auctor leo ut turpis posuere faucibus. Nulla facilisi. Nullam blandit commodo sem, quis consectetur sapien sagittis at. Phasellus eleifend scelerisque eleifend. Nunc commodo eros eu erat posuere venenatis et id tellus. Etiam quis sapien nec dui viverra bibendum. Suspendisse vel dui metus. Nam aliquet eros felis, at dapibus leo. Phasellus bibendum neque eget justo luctus vehicula.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce suscipit mattis nibh, non rutrum diam ullamcorper ac. Morbi elementum sapien in magna faucibus pulvinar. Mauris bibendum enim eu leo dictum ut porttitor turpis aliquam. Morbi ultrices turpis sit amet mauris venenatis venenatis. Sed lacinia tincidunt dui vel mattis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc dolor risus, luctus nec tempor vitae, vestibulum sit amet lorem.\r\n\r\nSed id ante lorem. Suspendisse commodo convallis ipsum sit amet malesuada. Nulla facilisi. Phasellus hendrerit fringilla purus nec molestie. Nunc elit lorem, semper at fermentum vel, pulvinar non dolor. Donec et turpis non urna semper adipiscing. Suspendisse potenti. Aenean ullamcorper fringilla augue, a scelerisque tortor sodales ac. Morbi ut nisl ac est tempor interdum. Phasellus non arcu nibh. Cras libero sem, mollis eget lacinia a, aliquet vel sem. Mauris felis quam, condimentum in lacinia id, bibendum id dui. Suspendisse potenti.\r\n\r\nSed egestas risus eget erat rutrum et tincidunt eros suscipit. Donec nisl neque, fringilla quis laoreet vel, consequat at nunc. Mauris dictum adipiscing porttitor. Vivamus leo nunc, facilisis dictum convallis sit amet, vehicula sed urna. Pellentesque tincidunt quam eu odio suscipit eget accumsan libero fermentum. Sed at rhoncus enim. Vivamus non nulla lorem.\r\n\r\nVivamus pellentesque ligula sit amet sapien pharetra aliquet. Pellentesque fermentum consequat urna, at rutrum leo dictum sit amet. Nullam pulvinar, arcu in venenatis facilisis, ante massa facilisis justo, vulputate sodales risus odio a libero. Aenean vel tortor urna, non posuere augue. Quisque erat metus, volutpat placerat cursus a, mollis eu dolor.\r\n\r\nNulla commodo enim non leo pharetra laoreet. Duis in velit et nunc imperdiet iaculis a eu tellus. Pellentesque ac mi urna, eu molestie elit. Nam dolor nisi, rhoncus eu auctor vitae, auctor facilisis odio.\r\n\r\nMorbi suscipit commodo est, quis pretium nunc sollicitudin pretium. Donec sem leo, vehicula sed rutrum id, pulvinar at lectus. Cras in leo purus, in tincidunt orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nulla eros, congue vel iaculis eget, fermentum sit amet magna. Fusce eget erat ac arcu aliquam tristique sit amet a erat.','<p>Nullam consectetur suscipit viverra. Nam molestie urna nec mi dictum id mollis eros porttitor. Nam vel ornare turpis. Mauris eget turpis eu nulla volutpat fringilla id ut lacus. Aenean ante mi, ornare eu feugiat eu, tincidunt pellentesque sapien. Duis auctor leo ut turpis posuere faucibus. Nulla facilisi. Nullam blandit commodo sem, quis consectetur sapien sagittis at. Phasellus eleifend scelerisque eleifend. Nunc commodo eros eu erat posuere venenatis et id tellus. Etiam quis sapien nec dui viverra bibendum. Suspendisse vel dui metus. Nam aliquet eros felis, at dapibus leo. Phasellus bibendum neque eget justo luctus vehicula.</p>\n\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce suscipit mattis nibh, non rutrum diam ullamcorper ac. Morbi elementum sapien in magna faucibus pulvinar. Mauris bibendum enim eu leo dictum ut porttitor turpis aliquam. Morbi ultrices turpis sit amet mauris venenatis venenatis. Sed lacinia tincidunt dui vel mattis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc dolor risus, luctus nec tempor vitae, vestibulum sit amet lorem.</p>\n\n<p>Sed id ante lorem. Suspendisse commodo convallis ipsum sit amet malesuada. Nulla facilisi. Phasellus hendrerit fringilla purus nec molestie. Nunc elit lorem, semper at fermentum vel, pulvinar non dolor. Donec et turpis non urna semper adipiscing. Suspendisse potenti. Aenean ullamcorper fringilla augue, a scelerisque tortor sodales ac. Morbi ut nisl ac est tempor interdum. Phasellus non arcu nibh. Cras libero sem, mollis eget lacinia a, aliquet vel sem. Mauris felis quam, condimentum in lacinia id, bibendum id dui. Suspendisse potenti.</p>\n\n<p>Sed egestas risus eget erat rutrum et tincidunt eros suscipit. Donec nisl neque, fringilla quis laoreet vel, consequat at nunc. Mauris dictum adipiscing porttitor. Vivamus leo nunc, facilisis dictum convallis sit amet, vehicula sed urna. Pellentesque tincidunt quam eu odio suscipit eget accumsan libero fermentum. Sed at rhoncus enim. Vivamus non nulla lorem.</p>\n\n<p>Vivamus pellentesque ligula sit amet sapien pharetra aliquet. Pellentesque fermentum consequat urna, at rutrum leo dictum sit amet. Nullam pulvinar, arcu in venenatis facilisis, ante massa facilisis justo, vulputate sodales risus odio a libero. Aenean vel tortor urna, non posuere augue. Quisque erat metus, volutpat placerat cursus a, mollis eu dolor.</p>\n\n<p>Nulla commodo enim non leo pharetra laoreet. Duis in velit et nunc imperdiet iaculis a eu tellus. Pellentesque ac mi urna, eu molestie elit. Nam dolor nisi, rhoncus eu auctor vitae, auctor facilisis odio.</p>\n\n<p>Morbi suscipit commodo est, quis pretium nunc sollicitudin pretium. Donec sem leo, vehicula sed rutrum id, pulvinar at lectus. Cras in leo purus, in tincidunt orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nulla eros, congue vel iaculis eget, fermentum sit amet magna. Fusce eget erat ac arcu aliquam tristique sit amet a erat.</p>','{\"excerpt\":{\"raw\":\"Our relationship manager talks about how she used her fear of flying to better serve our clients\' needs.\",\"processed\":\"<p>Our relationship manager talks about how she used her fear of flying to better serve our clients&#8217; needs.<\\/p>\"},\"postTitle\":\"Learning to fly\"}','flying,fear','Published',1,0,NULL,NULL,1,'post.html'),(2,'Leaving the nest','2013-05-05-leaving-the-nest','2013-05-05 14:53:00','Nullam consectetur suscipit viverra. Nam molestie urna nec mi dictum id mollis eros porttitor. Nam vel ornare turpis. Mauris eget turpis eu nulla volutpat fringilla id ut lacus. Aenean ante mi, ornare eu feugiat eu, tincidunt pellentesque sapien. Duis auctor leo ut turpis posuere faucibus. Nulla facilisi. Nullam blandit commodo sem, quis consectetur sapien sagittis at. Phasellus eleifend scelerisque eleifend. Nunc commodo eros eu erat posuere venenatis et id tellus. Etiam quis sapien nec dui viverra bibendum. Suspendisse vel dui metus. Nam aliquet eros felis, at dapibus leo. Phasellus bibendum neque eget justo luctus vehicula.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce suscipit mattis nibh, non rutrum diam ullamcorper ac. Morbi elementum sapien in magna faucibus pulvinar. Mauris bibendum enim eu leo dictum ut porttitor turpis aliquam. Morbi ultrices turpis sit amet mauris venenatis venenatis. Sed lacinia tincidunt dui vel mattis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc dolor risus, luctus nec tempor vitae, vestibulum sit amet lorem.\r\n\r\nSed id ante lorem. Suspendisse commodo convallis ipsum sit amet malesuada. Nulla facilisi. Phasellus hendrerit fringilla purus nec molestie. Nunc elit lorem, semper at fermentum vel, pulvinar non dolor. Donec et turpis non urna semper adipiscing. Suspendisse potenti. Aenean ullamcorper fringilla augue, a scelerisque tortor sodales ac. Morbi ut nisl ac est tempor interdum. Phasellus non arcu nibh. Cras libero sem, mollis eget lacinia a, aliquet vel sem. Mauris felis quam, condimentum in lacinia id, bibendum id dui. Suspendisse potenti.\r\n\r\nSed egestas risus eget erat rutrum et tincidunt eros suscipit. Donec nisl neque, fringilla quis laoreet vel, consequat at nunc. Mauris dictum adipiscing porttitor. Vivamus leo nunc, facilisis dictum convallis sit amet, vehicula sed urna. Pellentesque tincidunt quam eu odio suscipit eget accumsan libero fermentum. Sed at rhoncus enim. Vivamus non nulla lorem.\r\n\r\nVivamus pellentesque ligula sit amet sapien pharetra aliquet. Pellentesque fermentum consequat urna, at rutrum leo dictum sit amet. Nullam pulvinar, arcu in venenatis facilisis, ante massa facilisis justo, vulputate sodales risus odio a libero. Aenean vel tortor urna, non posuere augue. Quisque erat metus, volutpat placerat cursus a, mollis eu dolor.\r\n\r\nNulla commodo enim non leo pharetra laoreet. Duis in velit et nunc imperdiet iaculis a eu tellus. Pellentesque ac mi urna, eu molestie elit. Nam dolor nisi, rhoncus eu auctor vitae, auctor facilisis odio.\r\n\r\nMorbi suscipit commodo est, quis pretium nunc sollicitudin pretium. Donec sem leo, vehicula sed rutrum id, pulvinar at lectus. Cras in leo purus, in tincidunt orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nulla eros, congue vel iaculis eget, fermentum sit amet magna. Fusce eget erat ac arcu aliquam tristique sit amet a erat.','<p>Nullam consectetur suscipit viverra. Nam molestie urna nec mi dictum id mollis eros porttitor. Nam vel ornare turpis. Mauris eget turpis eu nulla volutpat fringilla id ut lacus. Aenean ante mi, ornare eu feugiat eu, tincidunt pellentesque sapien. Duis auctor leo ut turpis posuere faucibus. Nulla facilisi. Nullam blandit commodo sem, quis consectetur sapien sagittis at. Phasellus eleifend scelerisque eleifend. Nunc commodo eros eu erat posuere venenatis et id tellus. Etiam quis sapien nec dui viverra bibendum. Suspendisse vel dui metus. Nam aliquet eros felis, at dapibus leo. Phasellus bibendum neque eget justo luctus vehicula.</p>\n\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce suscipit mattis nibh, non rutrum diam ullamcorper ac. Morbi elementum sapien in magna faucibus pulvinar. Mauris bibendum enim eu leo dictum ut porttitor turpis aliquam. Morbi ultrices turpis sit amet mauris venenatis venenatis. Sed lacinia tincidunt dui vel mattis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc dolor risus, luctus nec tempor vitae, vestibulum sit amet lorem.</p>\n\n<p>Sed id ante lorem. Suspendisse commodo convallis ipsum sit amet malesuada. Nulla facilisi. Phasellus hendrerit fringilla purus nec molestie. Nunc elit lorem, semper at fermentum vel, pulvinar non dolor. Donec et turpis non urna semper adipiscing. Suspendisse potenti. Aenean ullamcorper fringilla augue, a scelerisque tortor sodales ac. Morbi ut nisl ac est tempor interdum. Phasellus non arcu nibh. Cras libero sem, mollis eget lacinia a, aliquet vel sem. Mauris felis quam, condimentum in lacinia id, bibendum id dui. Suspendisse potenti.</p>\n\n<p>Sed egestas risus eget erat rutrum et tincidunt eros suscipit. Donec nisl neque, fringilla quis laoreet vel, consequat at nunc. Mauris dictum adipiscing porttitor. Vivamus leo nunc, facilisis dictum convallis sit amet, vehicula sed urna. Pellentesque tincidunt quam eu odio suscipit eget accumsan libero fermentum. Sed at rhoncus enim. Vivamus non nulla lorem.</p>\n\n<p>Vivamus pellentesque ligula sit amet sapien pharetra aliquet. Pellentesque fermentum consequat urna, at rutrum leo dictum sit amet. Nullam pulvinar, arcu in venenatis facilisis, ante massa facilisis justo, vulputate sodales risus odio a libero. Aenean vel tortor urna, non posuere augue. Quisque erat metus, volutpat placerat cursus a, mollis eu dolor.</p>\n\n<p>Nulla commodo enim non leo pharetra laoreet. Duis in velit et nunc imperdiet iaculis a eu tellus. Pellentesque ac mi urna, eu molestie elit. Nam dolor nisi, rhoncus eu auctor vitae, auctor facilisis odio.</p>\n\n<p>Morbi suscipit commodo est, quis pretium nunc sollicitudin pretium. Donec sem leo, vehicula sed rutrum id, pulvinar at lectus. Cras in leo purus, in tincidunt orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nulla eros, congue vel iaculis eget, fermentum sit amet magna. Fusce eget erat ac arcu aliquam tristique sit amet a erat.</p>','{\"excerpt\":{\"raw\":\"For companies who relocate young employees - who may be taking up their first job after university - we have an advice service to help them settle in.\",\"processed\":\"<p>For companies who relocate young employees &#8211; who may be taking up their first job after university &#8211; we have an advice service to help them settle in.<\\/p>\"},\"postTitle\":\"Leaving the nest\"}','young people, relocation','Published',1,2,NULL,NULL,1,'post.html');
/*!40000 ALTER TABLE `perch2_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_blog_posts_to_categories`
--

DROP TABLE IF EXISTS `perch2_blog_posts_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_posts_to_categories` (
  `postID` int(11) NOT NULL DEFAULT '0',
  `categoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postID`,`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_posts_to_categories`
--

LOCK TABLES `perch2_blog_posts_to_categories` WRITE;
/*!40000 ALTER TABLE `perch2_blog_posts_to_categories` DISABLE KEYS */;
INSERT INTO `perch2_blog_posts_to_categories` VALUES (1,1),(1,4),(2,1),(2,3),(2,4);
/*!40000 ALTER TABLE `perch2_blog_posts_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_blog_posts_to_tags`
--

DROP TABLE IF EXISTS `perch2_blog_posts_to_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_posts_to_tags` (
  `postID` int(11) NOT NULL DEFAULT '0',
  `tagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postID`,`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_posts_to_tags`
--

LOCK TABLES `perch2_blog_posts_to_tags` WRITE;
/*!40000 ALTER TABLE `perch2_blog_posts_to_tags` DISABLE KEYS */;
INSERT INTO `perch2_blog_posts_to_tags` VALUES (1,1),(1,2),(2,3),(2,4);
/*!40000 ALTER TABLE `perch2_blog_posts_to_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_blog_tags`
--

DROP TABLE IF EXISTS `perch2_blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_blog_tags` (
  `tagID` int(11) NOT NULL AUTO_INCREMENT,
  `tagTitle` varchar(255) NOT NULL DEFAULT '',
  `tagSlug` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tagID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_blog_tags`
--

LOCK TABLES `perch2_blog_tags` WRITE;
/*!40000 ALTER TABLE `perch2_blog_tags` DISABLE KEYS */;
INSERT INTO `perch2_blog_tags` VALUES (1,'flying','flying'),(2,'fear','fear'),(3,'young people','young-people'),(4,'relocation','relocation');
/*!40000 ALTER TABLE `perch2_blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_content_index`
--

DROP TABLE IF EXISTS `perch2_content_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_content_index` (
  `indexID` int(10) NOT NULL AUTO_INCREMENT,
  `itemID` int(10) NOT NULL DEFAULT '0',
  `regionID` int(10) NOT NULL DEFAULT '0',
  `pageID` int(10) NOT NULL DEFAULT '0',
  `itemRev` int(10) NOT NULL DEFAULT '0',
  `indexKey` char(64) NOT NULL DEFAULT '-',
  `indexValue` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`indexID`),
  KEY `idx_key` (`indexKey`),
  KEY `idx_val` (`indexValue`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_item` (`itemID`),
  KEY `idx_keyval` (`indexKey`,`indexValue`),
  KEY `idx_regrev` (`regionID`,`itemRev`)
) ENGINE=MyISAM AUTO_INCREMENT=1193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_content_index`
--

LOCK TABLES `perch2_content_index` WRITE;
/*!40000 ALTER TABLE `perch2_content_index` DISABLE KEYS */;
INSERT INTO `perch2_content_index` VALUES (1036,1,1,1,4,'_order','1000'),(1035,1,1,1,4,'_id','1'),(1034,1,1,1,4,'text_processed','<p><strong>Swift Migrations</strong> is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.</p>\n\n<p>We&#8217;re really glad you stopped by. Now why not have a look around, take a peek at the sour'),(1033,1,1,1,4,'text_raw','*Swift Migrations* is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.\r\n\r\nWe\'re really glad you stopped by. Now why not have a look around, take a peek at the source code and see how easy it i'),(1032,1,1,1,4,'text','<p><strong>Swift Migrations</strong> is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.</p>\n\n<p>We&#8217;re really glad you stopped by. Now why not have a look around, take a peek at the sour'),(1001,2,2,1,5,'_order','1000'),(1000,2,2,1,5,'_id','2'),(999,2,2,1,5,'body_processed','<p>This fictional company site has been created to show you the capabilities of Perch.</p>'),(998,2,2,1,5,'body_raw','This fictional company site has been created to show you the capabilities of Perch.'),(997,2,2,1,5,'body','<p>This fictional company site has been created to show you the capabilities of Perch.</p>'),(996,2,2,1,5,'alt','Nesting bird'),(995,2,2,1,5,'image_h','520'),(994,2,2,1,5,'image_w','520'),(993,2,2,1,5,'image_bucket','default'),(992,2,2,1,5,'image_size','24530'),(991,2,2,1,5,'image_path','nesting-bird.jpg'),(990,2,2,1,5,'image__default','/perch/resources/nesting-bird.jpg'),(989,2,2,1,5,'image','/perch/resources/nesting-bird.jpg'),(988,2,2,1,5,'subheading','How can we help you?'),(987,2,2,1,5,'heading','Welcome to Swift'),(1016,3,3,1,3,'_order','1000'),(1015,3,3,1,3,'_id','3'),(1014,3,3,1,3,'body_processed','<p>This example shows how Perch can be added to an existing set of <span class=\"caps\">HTML</span> files &#8211; you don&#8217;t need to create a theme or change the way you work.</p>'),(1013,3,3,1,3,'body_raw','This example shows how Perch can be added to an existing set of HTML files - you don\'t need to create a theme or change the way you work.'),(1012,3,3,1,3,'body','<p>This example shows how Perch can be added to an existing set of <span class=\"caps\">HTML</span> files &#8211; you don&#8217;t need to create a theme or change the way you work.</p>'),(1011,3,3,1,3,'alt','Sunset'),(1010,3,3,1,3,'image_h','520'),(1009,3,3,1,3,'image_w','520'),(1008,3,3,1,3,'image_bucket','default'),(1007,3,3,1,3,'image_size','10125'),(1006,3,3,1,3,'image_path','sunset-birds.jpg'),(1005,3,3,1,3,'image__default','/perch/resources/sunset-birds.jpg'),(1004,3,3,1,3,'image','/perch/resources/sunset-birds.jpg'),(1003,3,3,1,3,'subheading','Retrofit an existing site'),(1002,3,3,1,3,'heading','Simple to install'),(1031,4,4,1,5,'_order','1000'),(1030,4,4,1,5,'_id','4'),(1029,4,4,1,5,'body_processed','<p>Once you start to use Perch you&#8217;ll discover it is far more capable than a simple content editor. Dive into our <a href=\"http://docs.grabaperch.com\">documentation</a> and <a href=\"http://docs.grabaperch.com/video\">video tutorial</a> for more.</p>'),(1028,4,4,1,5,'body_raw','Once you start to use Perch you\'ll discover it is far more capable than a simple content editor. Dive into our \"documentation\":http://docs.grabaperch.com and \"video tutorial\":http://docs.grabaperch.com/video for more.'),(1027,4,4,1,5,'body','<p>Once you start to use Perch you&#8217;ll discover it is far more capable than a simple content editor. Dive into our <a href=\"http://docs.grabaperch.com\">documentation</a> and <a href=\"http://docs.grabaperch.com/video\">video tutorial</a> for more.</p>'),(1026,4,4,1,5,'alt','Bird house'),(1025,4,4,1,5,'image_h','520'),(1024,4,4,1,5,'image_w','520'),(1023,4,4,1,5,'image_bucket','default'),(1022,4,4,1,5,'image_size','24066'),(1021,4,4,1,5,'image_path','birdhouse.jpg'),(1020,4,4,1,5,'image__default','/perch/resources/birdhouse.jpg'),(1019,4,4,1,5,'image','/perch/resources/birdhouse.jpg'),(1018,4,4,1,5,'subheading','Perch can be powerful'),(1042,5,5,2,2,'_order','1000'),(1041,5,5,2,2,'_id','5'),(1040,5,5,2,2,'body_processed','<p>Here we can add some content to give the visitor a taste of what is on this page.</p>'),(1039,5,5,2,2,'body_raw','Here we can add some content to give the visitor a taste of what is on this page.'),(1038,5,5,2,2,'body','<p>Here we can add some content to give the visitor a taste of what is on this page.</p>'),(1037,5,5,2,2,'heading','All about Swift Migrations'),(1047,6,6,2,2,'_order','1000'),(1046,6,6,2,2,'_id','6'),(1045,6,6,2,2,'text_processed','<h2>About Swift Migrations</h2>\n\n<p>This is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\"caps\">WYSIWYG</span> editors –'),(1044,6,6,2,2,'text_raw','h2. About Swift Migrations\r\n\r\nThis is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many WYSIWYG editors – we have TinyMCE and CKEditor av'),(1043,6,6,2,2,'text','<h2>About Swift Migrations</h2>\n\n<p>This is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\"caps\">WYSIWYG</span> editors –'),(1053,7,7,3,2,'_order','1000'),(1052,7,7,3,2,'_id','7'),(1051,7,7,3,2,'body_processed','<p>Moving flocks for the last 80 years.</p>'),(1050,7,7,3,2,'body_raw','Moving flocks for the last 80 years.'),(1049,7,7,3,2,'body','<p>Moving flocks for the last 80 years.</p>'),(1048,7,7,3,2,'heading','Our History'),(1058,8,8,3,2,'_order','1000'),(1057,8,8,3,2,'_id','8'),(1056,8,8,3,2,'text_processed','<h2>Our History</h2>\n\n<p>This is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\"caps\">WYSIWYG</span> editors – we have Ti'),(1055,8,8,3,2,'text_raw','h2. Our History\r\n\r\nThis is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many WYSIWYG editors – we have TinyMCE and CKEditor available as'),(1054,8,8,3,2,'text','<h2>Our History</h2>\n\n<p>This is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\"caps\">WYSIWYG</span> editors – we have Ti'),(787,9,9,4,2,'_order','1000'),(786,9,9,4,2,'_id','9'),(785,9,9,4,2,'phone','123 45678'),(784,9,9,4,2,'email','madeup@example.com'),(783,9,9,4,2,'country','United Kingdom'),(782,9,9,4,2,'postcode','NE1 4TV'),(781,9,9,4,2,'locality','Smalltown'),(780,9,9,4,2,'address2','123 Letsbe Avenue'),(779,9,9,4,2,'address1','The Old Church'),(778,9,9,4,2,'company','Swift Migrations'),(1078,10,10,4,4,'_order','1000'),(1077,10,10,4,4,'_id','10'),(1076,10,10,4,4,'map_html','<img id=\"cmsmap98-1\" src=\"http://maps.google.com/maps/api/staticmap?center=51.483224348017366,-0.6048382767212379&amp;sensor=false&amp;size=560x300&amp;zoom=15&amp;maptype=map&amp;markers=color:red|color:red|51.4838123,-0.6046237000000474\"  width=\"560\" he'),(1075,10,10,4,4,'map_admin_html','<img id=\"cmsmap98-1\" src=\"http://maps.google.com/maps/api/staticmap?center=51.483224348017366,-0.6048382767212379&amp;sensor=false&amp;size=560x300&amp;zoom=15&amp;maptype=map&amp;markers=color:red|color:red|51.4838123,-0.6046237000000474\"  width=\"560\" he'),(1074,10,10,4,4,'map_type','map'),(1073,10,10,4,4,'map_zoom','15'),(1072,10,10,4,4,'map_clng','-0.6048382767212379'),(1071,10,10,4,4,'map_clat','51.483224348017366'),(1070,10,10,4,4,'map_lng','-0.6046237000000474'),(1069,10,10,4,4,'map_lat','51.4838123'),(1068,10,10,4,4,'map__default','Windsor Castle, Windsor'),(1067,10,10,4,4,'map__title','Windsor Castle, Windsor'),(1066,10,10,4,4,'map_adr','Windsor Castle, Windsor'),(1065,10,10,4,4,'map','Windsor Castle, Windsor'),(1064,11,11,4,7,'_order','1000'),(1063,11,11,4,7,'_id','11'),(1062,11,11,4,7,'success_processed','<p>Thank you for submitting our form. We will be in touch soon!</p>'),(1061,11,11,4,7,'success_raw','Thank you for submitting our form. We will be in touch soon!'),(1060,11,11,4,7,'success','<p>Thank you for submitting our form. We will be in touch soon!</p>'),(1059,11,11,4,7,'heading','Contact us swiftly using this form'),(1084,12,12,5,2,'_order','1000'),(1083,12,12,5,2,'_id','12'),(1082,12,12,5,2,'body_processed','<p>Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations.</p>'),(1081,12,12,5,2,'body_raw','Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations.'),(1080,12,12,5,2,'body','<p>Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations.</p>'),(1079,12,12,5,2,'heading','The Team'),(1144,22,13,5,10,'_order','1003'),(1143,22,13,5,10,'_id','22'),(1142,22,13,5,10,'bio_processed','<p>You’re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just <a href=\"mailto:hello@grabaperch.com\">drop us a line!</a></p>'),(1141,22,13,5,10,'bio_raw','You’re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just \"drop us a line!\":mailto:hello@grabaperch.com'),(1140,22,13,5,10,'bio','<p>You’re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just <a href=\"mailto:hello@grabaperch.com\">drop us a line!</a></p>'),(1139,22,13,5,10,'image_h','400'),(1138,22,13,5,10,'image_w','400'),(1137,22,13,5,10,'image_bucket','default'),(1136,22,13,5,10,'image_size','13365'),(1135,22,13,5,10,'image_path','bird-4.jpg'),(1134,22,13,5,10,'image__default','/perch/resources/bird-4.jpg'),(1133,22,13,5,10,'image','/perch/resources/bird-4.jpg'),(1132,22,13,5,10,'role','That\'s you!'),(1131,22,13,5,10,'familyname','User'),(1130,22,13,5,10,'givenname','Demo'),(1129,21,13,5,10,'_order','1002'),(1128,21,13,5,10,'_id','21'),(1127,21,13,5,10,'bio_processed','<p>This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that’s how we roll at Swift Migrations.</p>'),(1126,21,13,5,10,'bio_raw','This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that’s how we roll at Swift Migrations.'),(1125,21,13,5,10,'bio','<p>This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that’s how we roll at Swift Migrations.</p>'),(1124,21,13,5,10,'image_h','400'),(1123,21,13,5,10,'image_w','400'),(1122,21,13,5,10,'image_bucket','default'),(1121,21,13,5,10,'image_size','26442'),(1120,21,13,5,10,'image_path','bird-3.jpg'),(1119,21,13,5,10,'image__default','/perch/resources/bird-3.jpg'),(1118,21,13,5,10,'image','/perch/resources/bird-3.jpg'),(1117,21,13,5,10,'role','Web Developer'),(1116,21,13,5,10,'familyname','Bloggs'),(1115,21,13,5,10,'givenname','Joe'),(451,15,14,6,1,'text','Testimonials'),(452,15,14,6,1,'_id','15'),(453,15,14,6,1,'_order','1000'),(454,16,15,6,1,'text','<p>People say some lovely things.</p>'),(455,16,15,6,1,'text_raw','People say some lovely things.'),(456,16,15,6,1,'text_processed','<p>People say some lovely things.</p>'),(457,16,15,6,1,'_id','16'),(458,16,15,6,1,'_order','1000'),(1150,17,16,6,2,'_order','1000'),(1149,17,16,6,2,'_id','17'),(1148,17,16,6,2,'body_processed','<p>People say some lovely things.</p>'),(1147,17,16,6,2,'body_raw','People say some lovely things.'),(1146,17,16,6,2,'body','<p>People say some lovely things.</p>'),(1145,17,16,6,2,'heading','Testimonials'),(1174,20,17,6,4,'_order','1002'),(1173,20,17,6,4,'_id','20'),(1172,20,17,6,4,'quote_processed','<p>Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill!</p>'),(1171,20,17,6,4,'quote_raw','Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill!'),(1170,20,17,6,4,'quote','<p>Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill!</p>'),(1169,20,17,6,4,'role','Swan and Co'),(1168,20,17,6,4,'familyname','Customer'),(1167,20,17,6,4,'givenname','C'),(1166,19,17,6,4,'_order','1001'),(1165,19,17,6,4,'_id','19'),(1164,19,17,6,4,'quote_processed','<p>Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless.</p>'),(1163,19,17,6,4,'quote_raw','Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless.'),(1162,19,17,6,4,'quote','<p>Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless.</p>'),(1161,19,17,6,4,'role','Robin International'),(1160,19,17,6,4,'familyname','Customer'),(1159,19,17,6,4,'givenname','B'),(1158,18,17,6,4,'_order','1000'),(1157,18,17,6,4,'_id','18'),(1156,18,17,6,4,'quote_processed','<p>Swift Migrations got me settled into my new nest very quickly. I don&#8217;t know what I&#8217;d have done without them.</p>'),(1155,18,17,6,4,'quote_raw','Swift Migrations got me settled into my new nest very quickly. I don\'t know what I\'d have done without them.'),(1154,18,17,6,4,'quote','<p>Swift Migrations got me settled into my new nest very quickly. I don&#8217;t know what I&#8217;d have done without them.</p>'),(1153,18,17,6,4,'role','Mallard Industries'),(1152,18,17,6,4,'familyname','Customer'),(1151,18,17,6,4,'givenname','A'),(1114,14,13,5,10,'_order','1001'),(1113,14,13,5,10,'_id','14'),(1112,14,13,5,10,'bio_processed','<p>Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He’s the lead developer on Perch.</p>'),(1111,14,13,5,10,'bio_raw','Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He’s the lead developer on Perch.'),(1110,14,13,5,10,'bio','<p>Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He’s the lead developer on Perch.</p>'),(1109,14,13,5,10,'image_h','400'),(1108,14,13,5,10,'image_w','400'),(1107,14,13,5,10,'image_bucket','default'),(1106,14,13,5,10,'image_size','14768'),(1105,14,13,5,10,'image_path','bird-2.jpg'),(1104,14,13,5,10,'image__default','/perch/resources/bird-2.jpg'),(1103,14,13,5,10,'image','/perch/resources/bird-2.jpg'),(1102,14,13,5,10,'role','Company Director'),(1101,14,13,5,10,'familyname','McLellan'),(1100,14,13,5,10,'givenname','Drew'),(1099,13,13,5,10,'_order','1000'),(1098,13,13,5,10,'_id','13'),(1097,13,13,5,10,'bio_processed','<p>Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer.</p>'),(1096,13,13,5,10,'bio_raw','Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer.'),(1095,13,13,5,10,'bio','<p>Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer.</p>'),(1094,13,13,5,10,'image_h','400'),(1093,13,13,5,10,'image_w','400'),(1092,13,13,5,10,'image_bucket','default'),(1091,13,13,5,10,'image_size','16138'),(1090,13,13,5,10,'image_path','bird-1.jpg'),(1089,13,13,5,10,'image__default','/perch/resources/bird-1.jpg'),(1088,13,13,5,10,'image','/perch/resources/bird-1.jpg'),(1087,13,13,5,10,'role','Company Director & Founder'),(1086,13,13,5,10,'familyname','Andrew'),(1085,13,13,5,10,'givenname','Rachel'),(1180,23,18,7,2,'_order','1000'),(1179,23,18,7,2,'_id','23'),(1178,23,18,7,2,'body_processed','<p>Read the latest news and relocation tips from Swift Migrations.</p>'),(1177,23,18,7,2,'body_raw','Read the latest news and relocation tips from Swift Migrations.'),(1176,23,18,7,2,'body','<p>Read the latest news and relocation tips from Swift Migrations.</p>'),(1175,23,18,7,2,'heading','Our Blog'),(1186,24,19,8,2,'_order','1000'),(1185,24,19,8,2,'_id','24'),(1184,24,19,8,2,'body_processed','<p>We were founded in the year 2009 after an accident involving a walrus.</p>'),(1183,24,19,8,2,'body_raw','We were founded in the year 2009 after an accident involving a walrus.'),(1182,24,19,8,2,'body','<p>We were founded in the year 2009 after an accident involving a walrus.</p>'),(1181,24,19,8,2,'heading','Did you know?'),(1192,25,20,9,2,'_order','1000'),(1191,25,20,9,2,'_id','25'),(1190,25,20,9,2,'body_processed','<p>All of the posts can be found here.</p>'),(1189,25,20,9,2,'body_raw','All of the posts can be found here.'),(1188,25,20,9,2,'body','<p>All of the posts can be found here.</p>'),(1187,25,20,9,2,'heading','Blog Archive'),(1017,4,4,1,5,'heading','More than you might think');
/*!40000 ALTER TABLE `perch2_content_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_content_items`
--

DROP TABLE IF EXISTS `perch2_content_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_content_items` (
  `itemRowID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `regionID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemRev` int(10) unsigned NOT NULL DEFAULT '0',
  `itemOrder` int(10) unsigned NOT NULL DEFAULT '1000',
  `itemJSON` mediumtext NOT NULL,
  `itemSearch` mediumtext NOT NULL,
  PRIMARY KEY (`itemRowID`),
  KEY `idx_item` (`itemID`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_region` (`regionID`),
  KEY `idx_regrev` (`itemID`,`regionID`,`itemRev`),
  KEY `idx_order` (`itemOrder`),
  FULLTEXT KEY `idx_search` (`itemSearch`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_content_items`
--

LOCK TABLES `perch2_content_items` WRITE;
/*!40000 ALTER TABLE `perch2_content_items` DISABLE KEYS */;
INSERT INTO `perch2_content_items` VALUES (94,6,6,2,2,1000,'{\"_id\":\"6\",\"text\":{\"raw\":\"h2. About Swift Migrations\\r\\n\\r\\nThis is a straightforward text block. It\\u2019s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many WYSIWYG editors \\u2013 we have TinyMCE and CKEditor available as pre-built plug-ins. You can also add your own.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.\\r\\n\\r\\nh3. Class aptent taciti\\r\\n\\r\\nSociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.\\r\\n\\r\\nPhasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.\\r\\n\\r\\nh3. Fringilla Tellus\\r\\n\\r\\nRutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.\\r\\n\\r\\nh3. Cras volutpat\\r\\n\\r\\nErat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.\",\"processed\":\"<h2>About Swift Migrations<\\/h2>\\n\\n<p>This is a straightforward text block. It\\u2019s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\\\"caps\\\">WYSIWYG<\\/span> editors \\u2013 we have TinyMCE and <span class=\\\"caps\\\">CKE<\\/span>ditor available as pre-built plug-ins. You can also add your own.<\\/p>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.<\\/p>\\n\\n<h3>Class aptent taciti<\\/h3>\\n\\n<p>Sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.<\\/p>\\n\\n<p>Phasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.<\\/p>\\n\\n<h3>Fringilla Tellus<\\/h3>\\n\\n<p>Rutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.<\\/p>\\n\\n<h3>Cras volutpat<\\/h3>\\n\\n<p>Erat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.<\\/p>\"}}',' About Swift Migrations\n\nThis is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many WYSIWYG editors – we have TinyMCE and CKEditor available as pre-built plug-ins. You can also add your own.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.\n\nClass aptent taciti\n\nSociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.\n\nPhasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.\n\nFringilla Tellus\n\nRutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.\n\nCras volutpat\n\nErat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae. '),(95,7,7,3,2,1000,'{\"_id\":\"7\",\"heading\":\"Our History\",\"_title\":\"Our History\",\"body\":{\"raw\":\"Moving flocks for the last 80 years.\",\"processed\":\"<p>Moving flocks for the last 80 years.<\\/p>\"}}',' Our History Moving flocks for the last 80 years. '),(96,8,8,3,2,1000,'{\"_id\":\"8\",\"text\":{\"raw\":\"h2. Our History\\r\\n\\r\\nThis is a straightforward text block. It\\u2019s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many WYSIWYG editors \\u2013 we have TinyMCE and CKEditor available as pre-built plug-ins. You can also add your own.\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.\\r\\n\\r\\nh3. Class aptent taciti\\r\\n\\r\\nSociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.\\r\\n\\r\\nPhasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.\\r\\n\\r\\nh3. Fringilla Tellus\\r\\n\\r\\nRutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.\\r\\n\\r\\nh3. Cras volutpat\\r\\n\\r\\nErat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.\",\"processed\":\"<h2>Our History<\\/h2>\\n\\n<p>This is a straightforward text block. It\\u2019s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\\\"caps\\\">WYSIWYG<\\/span> editors \\u2013 we have TinyMCE and <span class=\\\"caps\\\">CKE<\\/span>ditor available as pre-built plug-ins. You can also add your own.<\\/p>\\n\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.<\\/p>\\n\\n<h3>Class aptent taciti<\\/h3>\\n\\n<p>Sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.<\\/p>\\n\\n<p>Phasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.<\\/p>\\n\\n<h3>Fringilla Tellus<\\/h3>\\n\\n<p>Rutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.<\\/p>\\n\\n<h3>Cras volutpat<\\/h3>\\n\\n<p>Erat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.<\\/p>\"}}',' Our History\n\nThis is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many WYSIWYG editors – we have TinyMCE and CKEditor available as pre-built plug-ins. You can also add your own.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.\n\nClass aptent taciti\n\nSociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.\n\nPhasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.\n\nFringilla Tellus\n\nRutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.\n\nCras volutpat\n\nErat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae. '),(97,11,11,4,7,1000,'{\"_id\":\"11\",\"heading\":\"Contact us swiftly using this form\",\"success\":{\"raw\":\"Thank you for submitting our form. We will be in touch soon!\",\"processed\":\"<p>Thank you for submitting our form. We will be in touch soon!<\\/p>\"}}',' Contact us swiftly using this form Thank you for submitting our form. We will be in touch soon! '),(19,9,9,4,0,1000,'',''),(20,9,9,4,1,1000,'{\"_id\":\"9\",\"company\":\"Swift Migrations\",\"_title\":\"Swift Migrations\",\"address1\":\"The Old Church\",\"address2\":\"123 Letsbe Avenue\",\"locality\":\"Smalltown\",\"postcode\":\"NE1 4TV\",\"country\":\"United Kingdom\",\"email\":\"madeup@example.com\",\"phone\":\"123 45678\"}',' Swift Migrations The Old Church 123 Letsbe Avenue Smalltown NE1 4TV United Kingdom madeup@example.com 123 45678 '),(23,9,9,4,2,1000,'{\"_id\":\"9\",\"company\":\"Swift Migrations\",\"_title\":\"Swift Migrations\",\"address1\":\"The Old Church\",\"address2\":\"123 Letsbe Avenue\",\"locality\":\"Smalltown\",\"postcode\":\"NE1 4TV\",\"country\":\"United Kingdom\",\"email\":\"madeup@example.com\",\"phone\":\"123 45678\"}',' Swift Migrations The Old Church 123 Letsbe Avenue Smalltown NE1 4TV United Kingdom madeup@example.com 123 45678 '),(102,21,13,5,10,1002,'{\"_id\":\"21\",\"givenname\":\"Joe\",\"_title\":\"Joe Bloggs\",\"familyname\":\"Bloggs\",\"role\":\"Web Developer\",\"image\":{\"_default\":\"\\/perch\\/resources\\/bird-3.jpg\",\"path\":\"bird-3.jpg\",\"size\":26442,\"bucket\":\"default\",\"w\":400,\"h\":400,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"bird-3-thumb.jpg\",\"size\":11508,\"mime\":\"image\\/jpeg\"},\"w400h400c0\":{\"w\":400,\"h\":400,\"density\":\"1\",\"path\":\"bird-3-w400h400.jpg\",\"size\":26442,\"mime\":\"\"}}},\"bio\":{\"raw\":\"This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that\\u2019s how we roll at Swift Migrations.\",\"processed\":\"<p>This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that\\u2019s how we roll at Swift Migrations.<\\/p>\"}}',' Joe Bloggs Web Developer  This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that’s how we roll at Swift Migrations. '),(103,22,13,5,10,1003,'{\"_id\":\"22\",\"givenname\":\"Demo\",\"_title\":\"Demo User\",\"familyname\":\"User\",\"role\":\"That\'s you!\",\"image\":{\"_default\":\"\\/perch\\/resources\\/bird-4.jpg\",\"path\":\"bird-4.jpg\",\"size\":13365,\"bucket\":\"default\",\"w\":400,\"h\":400,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"bird-4-thumb.jpg\",\"size\":6454,\"mime\":\"image\\/jpeg\"},\"w400h400c0\":{\"w\":400,\"h\":400,\"density\":\"1\",\"path\":\"bird-4-w400h400.jpg\",\"size\":13365,\"mime\":\"\"}}},\"bio\":{\"raw\":\"You\\u2019re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just \\\"drop us a line!\\\":mailto:hello@grabaperch.com\",\"processed\":\"<p>You\\u2019re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just <a href=\\\"mailto:hello@grabaperch.com\\\">drop us a line!<\\/a><\\/p>\"}}',' Demo User That\'s you!  You’re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just drop us a line! '),(99,12,12,5,2,1000,'{\"_id\":\"12\",\"heading\":\"The Team\",\"_title\":\"The Team\",\"body\":{\"raw\":\"Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations.\",\"processed\":\"<p>Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations.<\\/p>\"}}',' The Team Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations. '),(101,14,13,5,10,1001,'{\"_id\":\"14\",\"givenname\":\"Drew\",\"_title\":\"Drew McLellan\",\"familyname\":\"McLellan\",\"role\":\"Company Director\",\"image\":{\"_default\":\"\\/perch\\/resources\\/bird-2.jpg\",\"path\":\"bird-2.jpg\",\"size\":14768,\"bucket\":\"default\",\"w\":400,\"h\":400,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"bird-2-thumb.jpg\",\"size\":7385,\"mime\":\"image\\/jpeg\"},\"w400h400c0\":{\"w\":400,\"h\":400,\"density\":\"1\",\"path\":\"bird-2-w400h400.jpg\",\"size\":14768,\"mime\":\"\"}}},\"bio\":{\"raw\":\"Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He\\u2019s the lead developer on Perch.\",\"processed\":\"<p>Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He\\u2019s the lead developer on Perch.<\\/p>\"}}',' Drew McLellan Company Director  Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He’s the lead developer on Perch. '),(98,10,10,4,4,1000,'{\"_id\":\"10\",\"map\":{\"adr\":\"Windsor Castle, Windsor\",\"_title\":\"Windsor Castle, Windsor\",\"_default\":\"Windsor Castle, Windsor\",\"lat\":\"51.4838123\",\"lng\":\"-0.6046237000000474\",\"clat\":\"51.483224348017366\",\"clng\":\"-0.6048382767212379\",\"zoom\":\"15\",\"type\":\"map\",\"admin_html\":\"<img id=\\\"cmsmap98-1\\\" src=\\\"http:\\/\\/maps.google.com\\/maps\\/api\\/staticmap?center=51.483224348017366,-0.6048382767212379&amp;sensor=false&amp;size=560x300&amp;zoom=15&amp;maptype=map&amp;markers=color:red|color:red|51.4838123,-0.6046237000000474\\\"  width=\\\"560\\\" height=\\\"300\\\" alt=\\\"Windsor Castle, Windsor\\\" \\/>\",\"html\":\"<img id=\\\"cmsmap98-1\\\" src=\\\"http:\\/\\/maps.google.com\\/maps\\/api\\/staticmap?center=51.483224348017366,-0.6048382767212379&amp;sensor=false&amp;size=560x300&amp;zoom=15&amp;maptype=map&amp;markers=color:red|color:red|51.4838123,-0.6046237000000474\\\"  width=\\\"560\\\" height=\\\"300\\\" alt=\\\"Windsor Castle, Windsor\\\" \\/><script type=\\\"text\\/javascript\\\">\\/* <![CDATA[ *\\/ if(typeof(CMSMap)==\'undefined\'){var CMSMap={};CMSMap.maps=[];document.write(\'<scr\'+\'ipt type=\\\"text\\\\\\/javascript\\\" src=\\\"\\/perch\\/core\\/assets\\/js\\/public_maps.js\\\"><\'+\'\\\\\\/sc\'+\'ript>\');}CMSMap.maps.push({\'mapid\':\'cmsmap98-1\',\'width\':\'560\',\'height\':\'300\',\'type\':\'map\',\'zoom\':\'15\',\'adr\':\'Windsor Castle, Windsor\',\'lat\':\'51.4838123\',\'lng\':\'-0.6046237000000474\',\'clat\':\'51.483224348017366\',\'clng\':\'-0.6048382767212379\'});\\/* ]]> *\\/<\\/script>\"}}',' Windsor Castle, Windsor '),(100,13,13,5,10,1000,'{\"_id\":\"13\",\"givenname\":\"Rachel\",\"_title\":\"Rachel Andrew\",\"familyname\":\"Andrew\",\"role\":\"Company Director & Founder\",\"image\":{\"_default\":\"\\/perch\\/resources\\/bird-1.jpg\",\"path\":\"bird-1.jpg\",\"size\":16138,\"bucket\":\"default\",\"w\":400,\"h\":400,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"bird-1-thumb.jpg\",\"size\":7556,\"mime\":\"image\\/jpeg\"},\"w400h400c0\":{\"w\":400,\"h\":400,\"density\":\"1\",\"path\":\"bird-1-w400h400.jpg\",\"size\":16138,\"mime\":\"\"}}},\"bio\":{\"raw\":\"Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer.\",\"processed\":\"<p>Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer.<\\/p>\"}}',' Rachel Andrew Company Director & Founder  Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer. '),(50,15,14,6,0,1000,'',''),(51,15,14,6,1,1000,'{\"_id\":\"15\",\"text\":\"Testimonials\",\"_title\":\"Testimonials\"}',' Testimonials '),(52,16,15,6,0,1000,'',''),(53,16,15,6,1,1000,'{\"_id\":\"16\",\"text\":{\"raw\":\"People say some lovely things.\",\"processed\":\"<p>People say some lovely things.<\\/p>\"}}',' People say some lovely things. '),(105,18,17,6,4,1000,'{\"_id\":\"18\",\"givenname\":\"A\",\"_title\":\"A Customer\",\"familyname\":\"Customer\",\"role\":\"Mallard Industries\",\"quote\":{\"raw\":\"Swift Migrations got me settled into my new nest very quickly. I don\'t know what I\'d have done without them.\",\"processed\":\"<p>Swift Migrations got me settled into my new nest very quickly. I don&#8217;t know what I&#8217;d have done without them.<\\/p>\"}}',' A Customer Mallard Industries Swift Migrations got me settled into my new nest very quickly. I don&#8217;t know what I&#8217;d have done without them. '),(108,23,18,7,2,1000,'{\"_id\":\"23\",\"heading\":\"Our Blog\",\"_title\":\"Our Blog\",\"body\":{\"raw\":\"Read the latest news and relocation tips from Swift Migrations.\",\"processed\":\"<p>Read the latest news and relocation tips from Swift Migrations.<\\/p>\"}}',' Our Blog Read the latest news and relocation tips from Swift Migrations. '),(104,17,16,6,2,1000,'{\"_id\":\"17\",\"heading\":\"Testimonials\",\"_title\":\"Testimonials\",\"body\":{\"raw\":\"People say some lovely things.\",\"processed\":\"<p>People say some lovely things.<\\/p>\"}}',' Testimonials People say some lovely things. '),(106,19,17,6,4,1001,'{\"_id\":\"19\",\"givenname\":\"B\",\"_title\":\"B Customer\",\"familyname\":\"Customer\",\"role\":\"Robin International\",\"quote\":{\"raw\":\"Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless.\",\"processed\":\"<p>Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless.<\\/p>\"}}',' B Customer Robin International Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless. '),(107,20,17,6,4,1002,'{\"_id\":\"20\",\"givenname\":\"C\",\"_title\":\"C Customer\",\"familyname\":\"Customer\",\"role\":\"Swan and Co\",\"quote\":{\"raw\":\"Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill!\",\"processed\":\"<p>Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill!<\\/p>\"}}',' C Customer Swan and Co Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill! '),(109,24,19,8,2,1000,'{\"_id\":\"24\",\"heading\":\"Did you know?\",\"_title\":\"Did you know?\",\"body\":{\"raw\":\"We were founded in the year 2009 after an accident involving a walrus.\",\"processed\":\"<p>We were founded in the year 2009 after an accident involving a walrus.<\\/p>\"}}',' Did you know? We were founded in the year 2009 after an accident involving a walrus. '),(110,25,20,9,2,1000,'{\"_id\":\"25\",\"heading\":\"Blog Archive\",\"_title\":\"Blog Archive\",\"body\":{\"raw\":\"All of the posts can be found here.\",\"processed\":\"<p>All of the posts can be found here.<\\/p>\"}}',' Blog Archive All of the posts can be found here. '),(89,2,2,1,5,1000,'{\"_id\":\"2\",\"heading\":\"Welcome to Swift\",\"_title\":\"Welcome to Swift\",\"subheading\":\"How can we help you?\",\"image\":{\"_default\":\"\\/perch\\/resources\\/nesting-bird.jpg\",\"path\":\"nesting-bird.jpg\",\"size\":24530,\"bucket\":\"default\",\"w\":520,\"h\":520,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"nesting-bird-thumb.jpg\",\"size\":7206,\"mime\":\"image\\/jpeg\"},\"w520h520c1\":{\"w\":520,\"h\":520,\"density\":\"1\",\"path\":\"nesting-bird-w520h520.jpg\",\"size\":24530,\"mime\":\"\"}}},\"alt\":\"Nesting bird\",\"body\":{\"raw\":\"This fictional company site has been created to show you the capabilities of Perch.\",\"processed\":\"<p>This fictional company site has been created to show you the capabilities of Perch.<\\/p>\"}}',' Welcome to Swift How can we help you?  Nesting bird This fictional company site has been created to show you the capabilities of Perch. '),(91,4,4,1,5,1000,'{\"_id\":\"4\",\"heading\":\"More than you might think\",\"_title\":\"More than you might think\",\"subheading\":\"Perch can be powerful\",\"image\":{\"_default\":\"\\/perch\\/resources\\/birdhouse.jpg\",\"path\":\"birdhouse.jpg\",\"size\":24066,\"bucket\":\"default\",\"w\":520,\"h\":520,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"birdhouse-thumb.jpg\",\"size\":7213,\"mime\":\"image\\/jpeg\"},\"w520h520c1\":{\"w\":520,\"h\":520,\"density\":\"1\",\"path\":\"birdhouse-w520h520.jpg\",\"size\":24066,\"mime\":\"\"}}},\"alt\":\"Bird house\",\"body\":{\"raw\":\"Once you start to use Perch you\'ll discover it is far more capable than a simple content editor. Dive into our \\\"documentation\\\":http:\\/\\/docs.grabaperch.com and \\\"video tutorial\\\":http:\\/\\/docs.grabaperch.com\\/video for more.\",\"processed\":\"<p>Once you start to use Perch you&#8217;ll discover it is far more capable than a simple content editor. Dive into our <a href=\\\"http:\\/\\/docs.grabaperch.com\\\">documentation<\\/a> and <a href=\\\"http:\\/\\/docs.grabaperch.com\\/video\\\">video tutorial<\\/a> for more.<\\/p>\"}}',' More than you might think Perch can be powerful  Bird house Once you start to use Perch you&#8217;ll discover it is far more capable than a simple content editor. Dive into our documentation and video tutorial for more. '),(92,1,1,1,4,1000,'{\"_id\":\"1\",\"text\":{\"raw\":\"*Swift Migrations* is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.\\r\\n\\r\\nWe\'re really glad you stopped by. Now why not have a look around, take a peek at the source code and see how easy it is to get Perch up and running for your next project.\\r\\n\\r\\n* \\\"The Source Code for the site is available on GitHub\\\":https:\\/\\/github.com\\/PerchCMS\\/perchdemo-swift\\r\\n* \\\"The video tutorial demonstrates how this site was developed\\\":http:\\/\\/docs.grabaperch.com\\/video\",\"processed\":\"<p><strong>Swift Migrations<\\/strong> is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.<\\/p>\\n\\n<p>We&#8217;re really glad you stopped by. Now why not have a look around, take a peek at the source code and see how easy it is to get Perch up and running for your next project.<\\/p>\\n\\n\\t<ul>\\n\\t\\t<li><a href=\\\"https:\\/\\/github.com\\/PerchCMS\\/perchdemo-swift\\\">The Source Code for the site is available on GitHub<\\/a><\\/li>\\n\\t\\t<li><a href=\\\"http:\\/\\/docs.grabaperch.com\\/video\\\">The video tutorial demonstrates how this site was developed<\\/a><\\/li>\\n\\t<\\/ul>\"}}',' Swift Migrations is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.\n\nWe&#8217;re really glad you stopped by. Now why not have a look around, take a peek at the source code and see how easy it is to get Perch up and running for your next project.\n\n	\n		The Source Code for the site is available on GitHub\n		The video tutorial demonstrates how this site was developed\n	 '),(93,5,5,2,2,1000,'{\"_id\":\"5\",\"heading\":\"All about Swift Migrations\",\"_title\":\"All about Swift Migrations\",\"body\":{\"raw\":\"Here we can add some content to give the visitor a taste of what is on this page.\",\"processed\":\"<p>Here we can add some content to give the visitor a taste of what is on this page.<\\/p>\"}}',' All about Swift Migrations Here we can add some content to give the visitor a taste of what is on this page. '),(90,3,3,1,3,1000,'{\"_id\":\"3\",\"heading\":\"Simple to install\",\"_title\":\"Simple to install\",\"subheading\":\"Retrofit an existing site\",\"image\":{\"_default\":\"\\/perch\\/resources\\/sunset-birds.jpg\",\"path\":\"sunset-birds.jpg\",\"size\":10125,\"bucket\":\"default\",\"w\":520,\"h\":520,\"sizes\":{\"thumb\":{\"w\":150,\"h\":150,\"path\":\"sunset-birds-thumb.jpg\",\"size\":5552,\"mime\":\"image\\/jpeg\"},\"w520h520c1\":{\"w\":520,\"h\":520,\"density\":\"1\",\"path\":\"sunset-birds-w520h520.jpg\",\"size\":10125,\"mime\":\"\"}}},\"alt\":\"Sunset\",\"body\":{\"raw\":\"This example shows how Perch can be added to an existing set of HTML files - you don\'t need to create a theme or change the way you work.\",\"processed\":\"<p>This example shows how Perch can be added to an existing set of <span class=\\\"caps\\\">HTML<\\/span> files &#8211; you don&#8217;t need to create a theme or change the way you work.<\\/p>\"}}',' Simple to install Retrofit an existing site  Sunset This example shows how Perch can be added to an existing set of HTML files &#8211; you don&#8217;t need to create a theme or change the way you work. ');
/*!40000 ALTER TABLE `perch2_content_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_content_regions`
--

DROP TABLE IF EXISTS `perch2_content_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_content_regions` (
  `regionID` int(10) NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL,
  `regionKey` varchar(255) NOT NULL DEFAULT '',
  `regionPage` varchar(255) NOT NULL DEFAULT '',
  `regionHTML` longtext NOT NULL,
  `regionNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionOrder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `regionTemplate` varchar(255) NOT NULL DEFAULT '',
  `regionMultiple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `regionOptions` text NOT NULL,
  `regionSearchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionLatestRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionEditRoles` varchar(255) NOT NULL DEFAULT '*',
  PRIMARY KEY (`regionID`),
  KEY `idx_key` (`regionKey`) USING BTREE,
  KEY `idx_path` (`regionPage`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_content_regions`
--

LOCK TABLES `perch2_content_regions` WRITE;
/*!40000 ALTER TABLE `perch2_content_regions` DISABLE KEYS */;
INSERT INTO `perch2_content_regions` VALUES (1,1,'Intro','/index.php','<p><strong>Swift Migrations</strong> is an entirely fictitious company invented to demonstrate the capabilities of the Perch content management system.</p>\n\n<p>We&#8217;re really glad you stopped by. Now why not have a look around, take a peek at the source code and see how easy it is to get Perch up and running for your next project.</p>\n\n	<ul>\n		<li><a href=\"https://github.com/PerchCMS/perchdemo-swift\">The Source Code for the site is available on GitHub</a></li>\n		<li><a href=\"http://docs.grabaperch.com/video\">The video tutorial demonstrates how this site was developed</a></li>\n	</ul>',0,3,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*'),(2,1,'Slide 1','/index.php','<h3>Welcome to Swift</h3>\n<h4>How can we help you?</h4>\n<img class=\"border\" src=\"/perch/resources/nesting-bird-w520h520.jpg\" alt=\"Nesting bird\"/>\n<p>This fictional company site has been created to show you the capabilities of Perch.</p>',0,0,'home-slide.html',0,'{\"edit_mode\":\"singlepage\"}',1,5,5,'*'),(3,1,'Slide 2','/index.php','<h3>Simple to install</h3>\n<h4>Retrofit an existing site</h4>\n<img class=\"border\" src=\"/perch/resources/sunset-birds-w520h520.jpg\" alt=\"Sunset\"/>\n<p>This example shows how Perch can be added to an existing set of <span class=\"caps\">HTML</span> files &#8211; you don&#8217;t need to create a theme or change the way you work.</p>',0,1,'home-slide.html',0,'{\"edit_mode\":\"singlepage\"}',1,3,3,'*'),(4,1,'Slide 3','/index.php','<h3>More than you might think</h3>\n<h4>Perch can be powerful</h4>\n<img class=\"border\" src=\"/perch/resources/birdhouse-w520h520.jpg\" alt=\"Bird house\"/>\n<p>Once you start to use Perch you&#8217;ll discover it is far more capable than a simple content editor. Dive into our <a href=\"http://docs.grabaperch.com\">documentation</a> and <a href=\"http://docs.grabaperch.com/video\">video tutorial</a> for more.</p>',0,2,'home-slide.html',0,'{\"edit_mode\":\"singlepage\"}',1,5,5,'*'),(5,2,'Masthead','/about/index.php','<h2>All about Swift Migrations</h2>\n<p>Here we can add some content to give the visitor a taste of what is on this page.</p>',0,0,'masthead.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*'),(6,2,'Content','/about/index.php','<h2>About Swift Migrations</h2>\n\n<p>This is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\"caps\">WYSIWYG</span> editors – we have TinyMCE and <span class=\"caps\">CKE</span>ditor available as pre-built plug-ins. You can also add your own.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.</p>\n\n<h3>Class aptent taciti</h3>\n\n<p>Sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.</p>\n\n<p>Phasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.</p>\n\n<h3>Fringilla Tellus</h3>\n\n<p>Rutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.</p>\n\n<h3>Cras volutpat</h3>\n\n<p>Erat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>',0,1,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*'),(7,3,'Masthead','/about/history.php','<h2>Our History</h2>\n<p>Moving flocks for the last 80 years.</p>',0,0,'masthead.html',0,'{\"resources\":[]}',1,2,2,'*'),(8,3,'Content','/about/history.php','<h2>Our History</h2>\n\n<p>This is a straightforward text block. It’s formatted using the Textile formatting language, although Markdown is an available alternative. You can also install one of many <span class=\"caps\">WYSIWYG</span> editors – we have TinyMCE and <span class=\"caps\">CKE</span>ditor available as pre-built plug-ins. You can also add your own.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet risus purus, porttitor sagittis risus. Sed metus est, tincidunt non vulputate eget, vehicula a mi. Donec mi ligula, fringilla sed porta ut, varius sed nunc. Proin sit amet dui et elit imperdiet commodo sit amet quis purus.</p>\n\n<h3>Class aptent taciti</h3>\n\n<p>Sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam molestie mollis purus, quis tempor lectus ultrices imperdiet. Nam scelerisque mi quis sapien scelerisque eu pharetra tellus elementum. Aliquam quis purus in est sollicitudin ultricies eu sed nisi. Sed molestie turpis at sem tristique vitae commodo est semper. Duis augue enim, tristique sit amet consectetur at, iaculis dapibus enim. Nulla convallis dui et eros vehicula hendrerit feugiat mi volutpat. Mauris ultricies neque sit amet magna viverra fermentum nec at orci.</p>\n\n<p>Phasellus vel est et sapien faucibus pulvinar ac vel lacus. Fusce gravida hendrerit rutrum. Proin accumsan aliquam leo, sit amet pharetra massa sodales at. Phasellus et orci sem. Nunc nec mauris lectus, ac imperdiet lorem. Quisque nec lorem nibh. Praesent mollis, metus sit amet dignissim sodales, turpis velit.</p>\n\n<h3>Fringilla Tellus</h3>\n\n<p>Rutrum tellus nunc a felis. Suspendisse commodo, odio eu imperdiet accumsan, diam mauris porta urna, et placerat arcu magna in magna. Fusce pulvinar pretium tellus, sed malesuada justo interdum at. Pellentesque nec lacus tortor. Donec sagittis libero et tellus varius tristique. Integer bibendum mauris sit amet leo venenatis ultricies. Sed congue suscipit erat quis mattis.</p>\n\n<h3>Cras volutpat</h3>\n\n<p>Erat non sagittis fringilla, arcu sapien pellentesque tellus, sed ultrices risus lorem non magna. In risus nunc, facilisis a auctor eu, pharetra id mauris. Morbi tempor tellus a ante fermentum egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>',0,1,'text_block.html',0,'{\"resources\":[]}',1,2,2,'*'),(9,4,'Contact','*','<div class=\"vcard\">\n	<h2>Contact Swift Migrations</h2>\n	<p class=\"fn org\"><a href=\"/\" rel=\"me\">Swift Migrations</a></p>\n	<div class=\"adr\">\n		<p class=\"street-address\">The Old Church</p>\n		<p class=\"street-address\">123 Letsbe Avenue</p>\n		<p class=\"locality\">Smalltown</p>\n		<p class=\"postal-code\">NE1 4TV</p>\n		<p class=\"country-name\">United Kingdom</p>\n		<p class=\"email\"><a href=\"mailto:madeup@example.com\">madeup@example.com</a></p>\n		<p class=\"tel value\">123 45678</p>\n	</div>\n</div>\n\n',0,0,'contact.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,2,2,'*'),(10,4,'Map','/contact.php','<div class=\"frame\">\n    \n    <img id=\"cmsmap98-1\" src=\"http://maps.google.com/maps/api/staticmap?center=51.483224348017366,-0.6048382767212379&amp;sensor=false&amp;size=560x300&amp;zoom=15&amp;maptype=map&amp;markers=color:red|color:red|51.4838123,-0.6046237000000474\"  width=\"560\" height=\"300\" alt=\"Windsor Castle, Windsor\" /><script type=\"text/javascript\">/* <![CDATA[ */ if(typeof(CMSMap)==\'undefined\'){var CMSMap={};CMSMap.maps=[];document.write(\'<scr\'+\'ipt type=\"text\\/javascript\" src=\"/perch/core/assets/js/public_maps.js\"><\'+\'\\/sc\'+\'ript>\');}CMSMap.maps.push({\'mapid\':\'cmsmap98-1\',\'width\':\'560\',\'height\':\'300\',\'type\':\'map\',\'zoom\':\'15\',\'adr\':\'Windsor Castle, Windsor\',\'lat\':\'51.4838123\',\'lng\':\'-0.6046237000000474\',\'clat\':\'51.483224348017366\',\'clng\':\'-0.6048382767212379\'});/* ]]> */</script>\n</div>',0,2,'map.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*'),(11,4,'Contact Form','/contact.php','<h2>Contact us swiftly using this form</h2>\n\n<perch:form template=\"/templates/content/contactform.html\" id=\"form-contact\" method=\"post\" app=\"perch_forms\" role=\"form\">\n    <div class=\"input<perch:error for=\"name\" type=\"required\"> error</perch:error>\">\n		<perch:label for=\"name\">Your name:</perch:label>\n		<perch:input id=\"name\" type=\"text\" required=\"true\" label=\"Name\" />\n		<perch:error for=\"name\" type=\"required\"><p class=\"about-error\">Please enter your name</p></perch:error>\n	</div>\n	<div class=\"input<perch:error for=\"email\" type=\"required\"> error</perch:error><perch:error for=\"email\" type=\"format\"> error</perch:error>\">\n		<perch:label for=\"email\">Your email:</perch:label>\n		<perch:input id=\"email\" type=\"email\" required=\"true\" label=\"Email\" />\n		<perch:error for=\"email\" type=\"required\"><p class=\"about-error\">Please enter an email address</p></perch:error>\n		<perch:error for=\"email\" type=\"format\"><p class=\"about-error\">Please enter a valid email address</p></perch:error>\n	</div>\n	<div class=\"input<perch:error for=\"message\" type=\"required\"> error</perch:error>\">\n		<perch:label for=\"message\">Your message:</perch:label>\n		<perch:input type=\"textarea\" id=\"message\" required=\"true\" label=\"Message\"></textarea>\n		<perch:error for=\"message\" type=\"required\"><p class=\"about-error\">Please enter a message</p></perch:error>\n	</div>\n	<perch:input type=\"submit\" id=\"submit\" value=\"Send\" />\n\n	<perch:success>\n		<div class=\"alert success\">\n		<p>Thank you for submitting our form. We will be in touch soon!</p>\n		</div>\n	</perch:success>\n</perch:form>',0,0,'contactform.html',0,'{\"edit_mode\":\"singlepage\"}',1,7,7,'*'),(12,5,'Masthead','/team.php','<h2>The Team</h2>\n<p>Our team are based in locations around the world. Some migrate mid-year to better serve seasonal locations.</p>',0,0,'masthead.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*'),(13,5,'Team','/team.php','<div class=\"article vcard\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">Rachel</span>\n		<span class=\"family-name\">Andrew</span>\n	</h3>\n	<p class=\"meta role\">Company Director & Founder</p>\n				\n	<div class=\"img\">\n		<img class=\"border\" src=\"/perch/resources/bird-1-w400h400.jpg\" alt=\"Rachel Andrew\"/>\n	</div>\n				\n	<div class=\"description\">\n		<p>Rachel Andrew founded edgeofmyseat.com in September 2001 and is an experienced front and back-end web developer.</p>\n	</div>\n</div><div class=\"article vcard\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">Drew</span>\n		<span class=\"family-name\">McLellan</span>\n	</h3>\n	<p class=\"meta role\">Company Director</p>\n				\n	<div class=\"img\">\n		<img class=\"border\" src=\"/perch/resources/bird-2-w400h400.jpg\" alt=\"Drew McLellan\"/>\n	</div>\n				\n	<div class=\"description\">\n		<p>Drew McLellan joined edgeofmyseat.com as a Director and web developer in September 2007. He’s the lead developer on Perch.</p>\n	</div>\n</div><div class=\"article vcard\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">Joe</span>\n		<span class=\"family-name\">Bloggs</span>\n	</h3>\n	<p class=\"meta role\">Web Developer</p>\n				\n	<div class=\"img\">\n		<img class=\"border\" src=\"/perch/resources/bird-3-w400h400.jpg\" alt=\"Joe Bloggs\"/>\n	</div>\n				\n	<div class=\"description\">\n		<p>This person was only employed to demonstrate how additional list items will stack up. That may seem a little extravagant, but that’s how we roll at Swift Migrations.</p>\n	</div>\n</div><div class=\"article vcard\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">Demo</span>\n		<span class=\"family-name\">User</span>\n	</h3>\n	<p class=\"meta role\">That\'s you!</p>\n				\n	<div class=\"img\">\n		<img class=\"border\" src=\"/perch/resources/bird-4-w400h400.jpg\" alt=\"Demo User\"/>\n	</div>\n				\n	<div class=\"description\">\n		<p>You’re just another wise person giving the Perch demo a quick try. We thank you for your interest. If you have any questions, just <a href=\"mailto:hello@grabaperch.com\">drop us a line!</a></p>\n	</div>\n</div>',0,1,'employee.html',1,'{\"edit_mode\":\"listdetail\",\"sortOrder\":\"ASC\",\"sortField\":\"\",\"limit\":\"\",\"searchURL\":\"\",\"addToTop\":\"\",\"column_ids\":\"\",\"title_delimit\":\" \",\"adminOnly\":0}',1,10,10,'*'),(17,6,'Testimonials','/testimonials.php','<div class=\"article\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">A</span>\n		<span class=\"family-name\">Customer</span>\n	</h3>\n	<p class=\"meta role\">Mallard Industries</p>\n				\n				\n	<blockquote class=\"description\">\n		<p>Swift Migrations got me settled into my new nest very quickly. I don&#8217;t know what I&#8217;d have done without them.</p>\n	</blockquote>\n</div><div class=\"article\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">B</span>\n		<span class=\"family-name\">Customer</span>\n	</h3>\n	<p class=\"meta role\">Robin International</p>\n				\n				\n	<blockquote class=\"description\">\n		<p>Our company were looking at expanding into warmer climates for the winter. Swift Migrations made the move effortless.</p>\n	</blockquote>\n</div><div class=\"article\">\n	<h3 class=\"fn n\">\n		<span class=\"given-name\">C</span>\n		<span class=\"family-name\">Customer</span>\n	</h3>\n	<p class=\"meta role\">Swan and Co</p>\n				\n				\n	<blockquote class=\"description\">\n		<p>Swift Migrations moved our whole flock quickly and without fuss. We were also very happy with the bill!</p>\n	</blockquote>\n</div>',0,1,'testimonial.html',1,'{\"edit_mode\":\"listdetail\",\"sortOrder\":\"ASC\",\"sortField\":\"\",\"limit\":\"\",\"searchURL\":\"\",\"addToTop\":\"\",\"column_ids\":\"\",\"title_delimit\":\" \",\"adminOnly\":0}',1,4,4,'*'),(16,6,'Masthead','/testimonials.php','<h2>Testimonials</h2>\n<p>People say some lovely things.</p>',0,0,'masthead.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*'),(18,7,'Masthead','/blog/index.php','<h2>Our Blog</h2>\n<p>Read the latest news and relocation tips from Swift Migrations.</p>',0,0,'masthead.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*'),(19,8,'Masthead','/blog/post.php','<h2>Did you know?</h2>\n<p>We were founded in the year 2009 after an accident involving a walrus.</p>',0,0,'masthead.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*'),(20,9,'Masthead','/blog/archive.php','<h2>Blog Archive</h2>\n<p>All of the posts can be found here.</p>',0,0,'masthead.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*');
/*!40000 ALTER TABLE `perch2_content_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_content_resources`
--

DROP TABLE IF EXISTS `perch2_content_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_content_resources` (
  `itemRowID` int(10) unsigned NOT NULL,
  `resourceID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`itemRowID`,`resourceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_content_resources`
--

LOCK TABLES `perch2_content_resources` WRITE;
/*!40000 ALTER TABLE `perch2_content_resources` DISABLE KEYS */;
INSERT INTO `perch2_content_resources` VALUES (89,1),(89,2),(89,3),(90,4),(90,5),(90,6),(91,7),(91,8),(91,9),(100,10),(100,11),(100,12),(101,13),(101,14),(101,15),(102,19),(102,20),(102,21),(103,16),(103,17),(103,18);
/*!40000 ALTER TABLE `perch2_content_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_forms`
--

DROP TABLE IF EXISTS `perch2_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_forms` (
  `formID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formKey` varchar(64) NOT NULL DEFAULT '',
  `formTitle` varchar(255) NOT NULL DEFAULT '',
  `formTemplate` varchar(255) NOT NULL DEFAULT '',
  `formOptions` text,
  PRIMARY KEY (`formID`),
  KEY `idx_formKey` (`formKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_forms`
--

LOCK TABLES `perch2_forms` WRITE;
/*!40000 ALTER TABLE `perch2_forms` DISABLE KEYS */;
INSERT INTO `perch2_forms` VALUES (1,'form-contact','Form contact','/templates/content/contactform.html','{\"store\":true}');
/*!40000 ALTER TABLE `perch2_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_forms_responses`
--

DROP TABLE IF EXISTS `perch2_forms_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_forms_responses` (
  `responseID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formID` int(10) unsigned NOT NULL,
  `responseCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responseJSON` mediumtext,
  `responseIP` varchar(16) NOT NULL DEFAULT '',
  `responseSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `responseSpamData` text,
  PRIMARY KEY (`responseID`),
  KEY `idx_formID` (`formID`),
  KEY `idx_spam` (`responseSpam`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_forms_responses`
--

LOCK TABLES `perch2_forms_responses` WRITE;
/*!40000 ALTER TABLE `perch2_forms_responses` DISABLE KEYS */;
INSERT INTO `perch2_forms_responses` VALUES (1,1,'2013-05-04 08:39:38','{\"fields\":{\"name\":{\"attributes\":{\"id\":\"name\",\"type\":\"text\",\"required\":\"true\",\"label\":\"Name\"},\"value\":\"Rachel\"},\"email\":{\"attributes\":{\"id\":\"email\",\"type\":\"email\",\"required\":\"true\",\"label\":\"Email\"},\"value\":\"hello@grabaperch.com\"},\"message\":{\"attributes\":{\"type\":\"textarea\",\"id\":\"message\",\"required\":\"true\",\"label\":\"Message\"},\"value\":\"Hello!\"},\"submit\":{\"attributes\":{\"type\":\"submit\",\"id\":\"submit\",\"value\":\"Send\"},\"value\":\"Send\"}},\"files\":[]}','10.0.0.11',0,'{\"fields\":[],\"environment\":{\"HTTP_HOST\":\"swift_demo.perchtutorial.eoms\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit\\/536.29.13 (KHTML, like Gecko) Version\\/6.0.4 Safari\\/536.29.13\",\"CONTENT_LENGTH\":\"159\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\",\"HTTP_ORIGIN\":\"http:\\/\\/swift_demo.perchtutorial.eoms\",\"CONTENT_TYPE\":\"application\\/x-www-form-urlencoded\",\"HTTP_CACHE_CONTROL\":\"max-age=0\",\"HTTP_REFERER\":\"http:\\/\\/swift_demo.perchtutorial.eoms\\/contact.php\",\"HTTP_ACCEPT_LANGUAGE\":\"en-us\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_COOKIE\":\"PHPSESSID=0to7oisv77lq7iun03gejn0nd4\",\"HTTP_CONNECTION\":\"keep-alive\",\"PATH\":\"\\/usr\\/local\\/bin:\\/usr\\/bin:\\/bin\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\\/2.2.16 (Debian)\",\"SERVER_NAME\":\"swift_demo.perchtutorial.eoms\",\"SERVER_ADDR\":\"10.0.0.52\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"10.0.0.11\",\"DOCUMENT_ROOT\":\"\\/home\\/www\\/swift_demo\\/public_html\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"\\/home\\/www\\/swift_demo\\/public_html\\/contact.php\",\"REMOTE_PORT\":\"54308\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/contact.php\",\"SCRIPT_NAME\":\"\\/contact.php\",\"PHP_SELF\":\"\\/contact.php\",\"REQUEST_TIME\":1367656778}}'),(2,1,'2013-05-05 08:28:31','{\"fields\":{\"name\":{\"attributes\":{\"id\":\"name\",\"type\":\"text\",\"required\":\"true\",\"label\":\"Name\"},\"value\":\"k;\"},\"email\":{\"attributes\":{\"id\":\"email\",\"type\":\"email\",\"required\":\"true\",\"label\":\"Email\"},\"value\":\"test@example.com\"},\"message\":{\"attributes\":{\"type\":\"textarea\",\"id\":\"message\",\"required\":\"true\",\"label\":\"Message\"},\"value\":\"k;kk\"},\"submit\":{\"attributes\":{\"type\":\"submit\",\"id\":\"submit\",\"value\":\"Send\"},\"value\":\"Send\"}},\"files\":[]}','10.0.0.11',0,'{\"fields\":[],\"environment\":{\"HTTP_HOST\":\"swift_demo.perchtutorial.eoms\",\"HTTP_USER_AGENT\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit\\/536.29.13 (KHTML, like Gecko) Version\\/6.0.4 Safari\\/536.29.13\",\"CONTENT_LENGTH\":\"151\",\"HTTP_ACCEPT\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,*\\/*;q=0.8\",\"HTTP_ORIGIN\":\"http:\\/\\/swift_demo.perchtutorial.eoms\",\"CONTENT_TYPE\":\"application\\/x-www-form-urlencoded\",\"HTTP_REFERER\":\"http:\\/\\/swift_demo.perchtutorial.eoms\\/contact.php\",\"HTTP_ACCEPT_LANGUAGE\":\"en-us\",\"HTTP_ACCEPT_ENCODING\":\"gzip, deflate\",\"HTTP_COOKIE\":\"PHPSESSID=ksl3uqcstoq81kkm474ldk5n91\",\"HTTP_CONNECTION\":\"keep-alive\",\"PATH\":\"\\/usr\\/local\\/bin:\\/usr\\/bin:\\/bin\",\"SERVER_SIGNATURE\":\"\",\"SERVER_SOFTWARE\":\"Apache\\/2.2.16 (Debian)\",\"SERVER_NAME\":\"swift_demo.perchtutorial.eoms\",\"SERVER_ADDR\":\"10.0.0.52\",\"SERVER_PORT\":\"80\",\"REMOTE_ADDR\":\"10.0.0.11\",\"DOCUMENT_ROOT\":\"\\/home\\/www\\/swift_demo\\/public_html\",\"SERVER_ADMIN\":\"[no address given]\",\"SCRIPT_FILENAME\":\"\\/home\\/www\\/swift_demo\\/public_html\\/contact.php\",\"REMOTE_PORT\":\"49922\",\"GATEWAY_INTERFACE\":\"CGI\\/1.1\",\"SERVER_PROTOCOL\":\"HTTP\\/1.1\",\"REQUEST_METHOD\":\"POST\",\"QUERY_STRING\":\"\",\"REQUEST_URI\":\"\\/contact.php\",\"SCRIPT_NAME\":\"\\/contact.php\",\"PHP_SELF\":\"\\/contact.php\",\"REQUEST_TIME\":1367742510}}');
/*!40000 ALTER TABLE `perch2_forms_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_navigation`
--

DROP TABLE IF EXISTS `perch2_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_navigation` (
  `groupID` int(10) NOT NULL AUTO_INCREMENT,
  `groupTitle` varchar(255) NOT NULL DEFAULT '',
  `groupSlug` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_navigation`
--

LOCK TABLES `perch2_navigation` WRITE;
/*!40000 ALTER TABLE `perch2_navigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `perch2_navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_navigation_pages`
--

DROP TABLE IF EXISTS `perch2_navigation_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_navigation_pages` (
  `navpageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `groupID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL,
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`navpageID`),
  KEY `idx_group` (`groupID`),
  KEY `idx_page_group` (`pageID`,`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_navigation_pages`
--

LOCK TABLES `perch2_navigation_pages` WRITE;
/*!40000 ALTER TABLE `perch2_navigation_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `perch2_navigation_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_page_templates`
--

DROP TABLE IF EXISTS `perch2_page_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_page_templates` (
  `templateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templateTitle` varchar(255) NOT NULL DEFAULT '',
  `templatePath` varchar(255) NOT NULL DEFAULT '',
  `optionsPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `templateReference` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `templateNavGroups` varchar(255) DEFAULT '',
  PRIMARY KEY (`templateID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_page_templates`
--

LOCK TABLES `perch2_page_templates` WRITE;
/*!40000 ALTER TABLE `perch2_page_templates` DISABLE KEYS */;
INSERT INTO `perch2_page_templates` VALUES (1,'About','about.php',2,1,''),(2,'Default','default.php',0,1,'');
/*!40000 ALTER TABLE `perch2_page_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_pages`
--

DROP TABLE IF EXISTS `perch2_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_pages` (
  `pageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pagePath` varchar(255) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `pageNavText` varchar(255) NOT NULL DEFAULT '',
  `pageNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `pageSortPath` varchar(255) NOT NULL DEFAULT '',
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  `pageSubpageRoles` varchar(255) NOT NULL DEFAULT '',
  `pageSubpagePath` varchar(255) NOT NULL DEFAULT '',
  `pageHidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageNavOnly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageAccessTags` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pageID`),
  KEY `idx_parent` (`pageParentID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_pages`
--

LOCK TABLES `perch2_pages` WRITE;
/*!40000 ALTER TABLE `perch2_pages` DISABLE KEYS */;
INSERT INTO `perch2_pages` VALUES (1,0,'/index.php','Home page','Home page',0,1,1,'','000-001','','',0,0,''),(2,0,'/about/index.php','About','About',0,2,1,'/about','000-002','','',0,0,''),(3,2,'/about/history.php','History','History',0,1,2,'/about/history','000-002-001','','',0,0,''),(4,0,'/contact.php','Contact','Contact',0,3,1,'/contact','000-003','','',0,0,''),(5,0,'/team.php','Team','Team',0,4,1,'/team','000-004','','',0,0,''),(6,0,'/testimonials.php','Testimonials','Testimonials',0,5,1,'/testimonials','000-005','','',0,0,''),(7,0,'/blog/index.php','Blog','Blog',0,6,1,'/blog','000-006','','',0,0,''),(8,7,'/blog/post.php','Post','Post',0,1,2,'/blog/post','000-006-001','','',0,0,''),(9,7,'/blog/archive.php','Archive','Archive',0,2,2,'/blog/archive','000-006-002','','',0,0,'');
/*!40000 ALTER TABLE `perch2_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_resources`
--

DROP TABLE IF EXISTS `perch2_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_resources` (
  `resourceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceApp` char(32) NOT NULL DEFAULT 'content',
  `resourceBucket` char(16) NOT NULL DEFAULT 'default',
  `resourceFile` char(255) NOT NULL DEFAULT '',
  `resourceKey` enum('orig','thumb') DEFAULT NULL,
  `resourceParentID` int(10) NOT NULL DEFAULT '0',
  `resourceType` char(4) NOT NULL DEFAULT '',
  PRIMARY KEY (`resourceID`),
  UNIQUE KEY `idx_file` (`resourceBucket`,`resourceFile`),
  KEY `idx_app` (`resourceApp`),
  KEY `idx_key` (`resourceKey`),
  KEY `idx_type` (`resourceType`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_resources`
--

LOCK TABLES `perch2_resources` WRITE;
/*!40000 ALTER TABLE `perch2_resources` DISABLE KEYS */;
INSERT INTO `perch2_resources` VALUES (1,'content','default','nesting-bird.jpg','orig',0,'jpg'),(2,'content','default','nesting-bird-thumb.jpg','thumb',1,'jpg'),(3,'content','default','nesting-bird-w520h520.jpg','',1,'jpg'),(4,'content','default','sunset-birds.jpg','orig',0,'jpg'),(5,'content','default','sunset-birds-thumb.jpg','thumb',4,'jpg'),(6,'content','default','sunset-birds-w520h520.jpg','',4,'jpg'),(7,'content','default','birdhouse.jpg','orig',0,'jpg'),(8,'content','default','birdhouse-thumb.jpg','thumb',7,'jpg'),(9,'content','default','birdhouse-w520h520.jpg','',7,'jpg'),(10,'content','default','bird-1.jpg','orig',0,'jpg'),(11,'content','default','bird-1-thumb.jpg','thumb',10,'jpg'),(12,'content','default','bird-1-w400h400.jpg','',10,'jpg'),(13,'content','default','bird-2.jpg','orig',0,'jpg'),(14,'content','default','bird-2-thumb.jpg','thumb',13,'jpg'),(15,'content','default','bird-2-w400h400.jpg','',13,'jpg'),(16,'content','default','bird-4.jpg','orig',0,'jpg'),(17,'content','default','bird-4-thumb.jpg','thumb',16,'jpg'),(18,'content','default','bird-4-w400h400.jpg','',16,'jpg'),(19,'content','default','bird-3.jpg','orig',0,'jpg'),(20,'content','default','bird-3-thumb.jpg','thumb',19,'jpg'),(21,'content','default','bird-3-w400h400.jpg','',19,'jpg');
/*!40000 ALTER TABLE `perch2_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_settings`
--

DROP TABLE IF EXISTS `perch2_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_settings` (
  `settingID` varchar(60) NOT NULL DEFAULT '',
  `userID` int(10) unsigned NOT NULL DEFAULT '0',
  `settingValue` text NOT NULL,
  PRIMARY KEY (`settingID`,`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_settings`
--

LOCK TABLES `perch2_settings` WRITE;
/*!40000 ALTER TABLE `perch2_settings` DISABLE KEYS */;
INSERT INTO `perch2_settings` VALUES ('headerColour',0,'#ffffff'),('content_singlePageEdit',0,'1'),('helpURL',0,'http://docs.grabaperch.com/demo/swift'),('siteURL',0,'/'),('hideBranding',0,'0'),('content_collapseList',0,'1'),('lang',0,'en-gb'),('update_2.2.7',0,'done'),('latest_version',0,'2.0.8'),('perch_blog_post_url',0,'/blog/{postSlug}'),('perch_blog_update',0,'3.7.5'),('headerScheme',0,'light'),('perch_blog_slug_format',0,'%Y-%m-%d-{postTitle}'),('perch_blog_akismet_key',0,''),('dashboard',0,'0'),('content_hideNonEditableRegions',0,'0'),('perch_blog_comment_notify',0,'0'),('update_2.2.9',0,'done');
/*!40000 ALTER TABLE `perch2_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_user_privileges`
--

DROP TABLE IF EXISTS `perch2_user_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_user_privileges` (
  `privID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `privKey` varchar(255) NOT NULL DEFAULT '',
  `privTitle` varchar(255) NOT NULL DEFAULT '',
  `privOrder` int(10) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`privID`),
  UNIQUE KEY `idx_key` (`privKey`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_user_privileges`
--

LOCK TABLES `perch2_user_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_privileges` DISABLE KEYS */;
INSERT INTO `perch2_user_privileges` VALUES (1,'perch.login','Log in',1),(2,'perch.settings','Change settings',2),(3,'perch.users.manage','Manage users',3),(4,'perch.updatenotices','View update notices',4),(5,'content.regions.delete','Delete regions',1),(6,'content.regions.options','Edit region options',2),(7,'content.pages.edit','Edit page details',1),(8,'content.pages.reorder','Reorder pages',2),(9,'content.pages.create','Add new pages',3),(10,'content.pages.configure','Configure page settings',5),(11,'content.pages.delete','Delete pages',4),(12,'content.templates.delete','Delete master pages',6),(13,'content.navgroups.configure','Configure navigation groups',7),(14,'content.navgroups.create','Create navigation groups',8),(15,'content.navgroups.delete','Delete navigation groups',9),(16,'perch_forms','Access forms',1),(17,'perch_forms.configure','Configure forms',1),(18,'perch_forms.delete','Delete forms',1),(19,'perch_blog','Access the blog',1),(20,'perch_blog.post.create','Create posts',1),(21,'perch_blog.post.delete','Delete posts',1),(22,'perch_blog.post.publish','Publish posts',1),(23,'perch_blog.comments.moderate','Moderate comments',1),(24,'perch_blog.comments.enable','Enable comments on a post',1),(25,'perch_blog.categories.manage','Manage categories',1),(26,'perch_blog.import','Import data',1),(27,'perch_blog.authors.manage','Manage authors',1),(28,'content.pages.republish','Republish pages',12);
/*!40000 ALTER TABLE `perch2_user_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_user_role_privileges`
--

DROP TABLE IF EXISTS `perch2_user_role_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_user_role_privileges` (
  `roleID` int(10) unsigned NOT NULL,
  `privID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`roleID`,`privID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_user_role_privileges`
--

LOCK TABLES `perch2_user_role_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_role_privileges` DISABLE KEYS */;
INSERT INTO `perch2_user_role_privileges` VALUES (1,1),(1,7),(1,8),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12);
/*!40000 ALTER TABLE `perch2_user_role_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_user_roles`
--

DROP TABLE IF EXISTS `perch2_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_user_roles` (
  `roleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleTitle` varchar(255) NOT NULL DEFAULT '',
  `roleSlug` varchar(255) NOT NULL DEFAULT '',
  `roleMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_user_roles`
--

LOCK TABLES `perch2_user_roles` WRITE;
/*!40000 ALTER TABLE `perch2_user_roles` DISABLE KEYS */;
INSERT INTO `perch2_user_roles` VALUES (1,'Editor','editor',0),(2,'Admin','admin',1);
/*!40000 ALTER TABLE `perch2_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perch2_users`
--

DROP TABLE IF EXISTS `perch2_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perch2_users` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userUsername` varchar(255) NOT NULL DEFAULT '',
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `userCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userLastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userGivenName` varchar(255) NOT NULL DEFAULT '',
  `userFamilyName` varchar(255) NOT NULL DEFAULT '',
  `userEmail` varchar(255) NOT NULL DEFAULT '',
  `userEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userHash` char(32) NOT NULL DEFAULT '',
  `roleID` int(10) unsigned NOT NULL DEFAULT '1',
  `userMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  KEY `idx_enabled` (`userEnabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perch2_users`
--

LOCK TABLES `perch2_users` WRITE;
/*!40000 ALTER TABLE `perch2_users` DISABLE KEYS */;
INSERT INTO `perch2_users` VALUES (1,'rachel','$P$BNrLCKcXPYW8YROVp78NoD1JP62jSS/','2013-05-02 12:55:56','2013-05-18 01:53:53','2013-05-18 01:53:15','Rachel','Andrew','rachel@edgeofmyseat.com',1,'6f6403c81b1107516b2d387206e35731',2,1);
/*!40000 ALTER TABLE `perch2_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-18  2:57:37
