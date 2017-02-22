# ************************************************************
# Sequel Pro SQL dump
# Versão 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 10.1.9-MariaDB)
# Base de Dados: olx
# Tempo de Geração: 2017-01-23 23:31:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump da tabela categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `category`)
VALUES
	(5,'Books and CDs'),
	(4,'Clothing and Accessories'),
	(2,'Electronics and Computer'),
	(6,'Home and Furniture'),
	(3,'Mobiles and Tablets'),
	(7,'Other'),
	(1,'Vehicles');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(12) unsigned NOT NULL,
  `pur_year` varchar(4) DEFAULT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `name` (`name`),
  KEY `category_id` (`category_id`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `price`, `pur_year`, `description`, `filename`)
VALUES
	(2,3,1,'Indica Vista',200000,'2011','Indica Vista purchased in 2011 travelled a total of 50,000 km. Price is negotiable.','indica vista.jpg'),
	(6,3,2,'HP Pavillion',37000,'2014','HP Laptop White in color, 6GB RAM, 2GB NVIDIA GeForce 740M, 1TB Hard Disk, Windows 8.1, 15.6 inches screen in excellent condition.','hp laptop.jpg'),
	(9,3,1,'Audi A4',1000000,'0','Audi A4 with meter reading about 40,000 km.','audi.jpg'),
	(10,3,4,'Shirt',1000,'2014','Designer Shirt size XL','shirt.jpg'),
	(11,3,5,'Inception DVD',200,'2010','Inception Bluray quality DVD','inception.jpg'),
	(12,3,6,'Sofa',5000,'0','Bed Room sofa in nice condition.','bed room sofa.jpg'),
	(13,3,7,'Cricket Bat',1000,'0','Nice Cricket Bat','bat.jpg'),
	(14,3,4,'Hoodie',999,'0','Hoodie of Size XL','hoodie.jpg'),
	(15,3,3,'Madagascar DVD',400,'0','Madagascar series in bluray quality','madagascar dvd.jpg'),
	(16,3,6,'Toshiba Refrigerator',20000,'0','Medium sized Toshiba Regfrigerator','toshiba_ref.jpg'),
	(17,3,7,'Football',300,'0','Reebok Football','football.jpg'),
	(18,3,7,'Basketball',500,'0','Basketball in nice condition','12-Wilson Basketball.jpg'),
	(19,3,5,'Kane And Abel',500,'0','It is an awesome novel written by Jeffrey Archer','kane and abel.jpg'),
	(20,3,3,'Nexus 5',15000,'2014','The google brand Nexus 5 in red color','3-Nexus 5-nexus.png'),
	(21,10,5,'Testing',200,'2015','Testing','10-Testing-Onhive Homescreen.png'),
	(23,3,1,'Ferrari',2000000,'2016','It could be yours.','3-Ferrari-Ferrari-488-GTB-04-UP1200.jpg');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump da tabela users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`)
VALUES
	(3,'George','Benson','9999999999','george@gmail.com','George','$2y$10$YzhmM2E4ODRkMmQ5M2UxZOpF7U84nBN2HXckv4Yoscmrigr.fm74a'),
	(10,'Paulo Henrique','Pereira','9999999923','paulo@onhive.net','MrHerickZ','$2y$10$YzhmM2E4ODRkMmQ5M2UxZOpF7U84nBN2HXckv4Yoscmrigr.fm74a');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
