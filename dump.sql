-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_1
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (7,'2018_05_19_190403_add_votes_to_posts_table',2),(63,'2014_10_12_000000_create_users_table',3),(64,'2014_10_12_100000_create_password_resets_table',3),(65,'2018_05_19_204146_create_posts_table',3),(66,'2018_05_19_204431_add_user_id_to_posts',3),(67,'2018_05_21_111446_create_test_table',4),(68,'2018_05_24_200210_create_jobs_table',4),(69,'2018_05_31_204338_create_tasks_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hello',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'2018-06-01 15:05:02',NULL,'function test($received, $expected) {\r\n     echo $expected === $received ? \"<br>\".\"OK\"\r\n         : \"<br>\".\"Fail\";\r\n }\r\n \r\nfunction test_my_sum(){\r\n    echo \"We are testing my_sum!\" . PHP_EOL;\r\n    test(12, my_sum(array(10, 2, 0)));\r\n    test(144, my_sum(array(10, 20, 100, 14)));\r\n    test(12, my_sum(array(-50, 200, -100, -50, 12)));\r\n}\r\ntest_my_sum();','* Функция получает на вход массив чисел, должна вернуть сумму этих чисел.\r\n * Не использовать встроенные функции суммирования php.\r\n *\r\n * @param array $ arr\r\n * @return integer','function my_sum($arr) {}'),(2,'2018-06-04 21:00:03',NULL,'function test($received, $expected) {\r\n    echo $expected === $received ? cli_color(\"OK\", 0, 1)\r\n        : cli_color(\"Fail\", 0, 1, \'r\');\r\n}\r\n\r\nfunction test_shortener(){\r\n    echo \"We are testing shortener!\" . PHP_EOL;\r\n    $sourceStrings = array(\r\n        \'A very looooooong wooooord\',\r\n        \'Loremia ipsumia dolaria sitia ameti\',\r\n        \'Have you ever been to Lituania ?\',\r\n        \'Anyone who reads Old and Middle\',\r\n        \'English literary texts will be familiar\',\r\n        \'with the mid-brown volumes of the EETS,\',\r\n        \'with the symbol of Alfreds jewel embossed on the front cover.\'\r\n    );\r\n    $testStrings = array(\r\n        \'A very looooo* wooooo*\',\r\n        \'Loremi* ipsumi* dolari* sitia ameti\',\r\n        \'Have you ever been to Lituan* ?\',\r\n        \'Anyone who reads Old and Middle\',\r\n        \'Englis* litera* texts will be famili*\',\r\n        \'with the mid-br* volume* of the EETS,\',\r\n        \'with the symbol of Alfred* jewel emboss* on the front cover.\'\r\n    );\r\n    for ($i=0; $i < count($sourceStrings); $i++) {\r\n        test($testStrings[$i], shortener($sourceStrings[$i]));\r\n    }\r\n}\r\n\r\ntest_shortener();',' * Функция получает на вход длинную строку с множеством слов.\r\n * Она должна вернуть ту же строку, но в словах, которые длиннее 6 символов,\r\n * функция должна вместо всех символов после шестого поставить одну звездочку.\r\n * Пример: Из слова \'verwijdering\' должно получиться \'verwij*\'\r\n *\r\n * @param string $shortMe\r\n * @return string','function test_shortener(){\r\n}'),(3,'2018-06-03 08:14:12',NULL,'function test($received, $expected) {\r\n    echo $expected === $received ? \"<br>\".\"OK\"\r\n        : \"<br>\".\"Fail\";\r\n}function test_compare_ends() {\r\n     echo \"We are testing compare_ends!\" . PHP_EOL;\r\n     test(compare_ends(array(\'aba\', \'xyz\', \'aa\', \'x\', \'bbb\')), 3);\r\n     test(compare_ends(array(\'\', \'x\', \'xy\', \'xyx\', \'xx\')), 2);\r\n     test(compare_ends(array(\'aaa\', \'be\', \'abc\', \'hello\')), 1);\r\n }test_compare_ends();','* Функция получает на вход массив строк. Вернуть надо количество строк,\r\n * которые не короче двух символов и у которых первый и последний\r\n * символ совпадают.\r\n *\r\n * @param array $arr\r\n * @return number','function compare_ends($arr) {}'),(4,'2018-06-03 08:14:21',NULL,'function test($received, $expected) {\r\n     echo $expected === $received ? \"<br>\".\"OK\"\r\n         : \"<br>\".\"Fail\";\r\n }\r\nfunction test_reverse_string() {\r\n    echo \"We are testing reverse_string\" . PHP_EOL;\r\n    test(reverse_string(\'asdfcvbn\'), \'nbvcfdsa\');\r\n    test(reverse_string(\'Welcome friend\'), \'dneirf emocleW\');\r\n    test(reverse_string(\'nehzitsepmur\'), \'rumpestizhen\');\r\n}\r\ntest_reverse_string();','* Функция получает на вход строку, должна вернуть ее перевернутой.\r\n *\r\n * @param string $str\r\n * @return string','function reverse_string($str) {}');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Taras','tar_rudenko@ukr.net','$2y$10$8RalPPCSBmSo2UIyIRPyr.u60GwjzEutziS3LCE0.4WQzGUSknWn6','swjbJjCv2uHBDzVQqH7DE59ZSeUib3C3mwqmTnQPgSqfRHLXTv14nJRoFGau','2018-06-02 13:13:48','2018-06-02 13:13:48');
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

-- Dump completed on 2018-06-05  0:23:05
