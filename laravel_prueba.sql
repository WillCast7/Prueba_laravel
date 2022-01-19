-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel_prueba
CREATE DATABASE IF NOT EXISTS `laravel_prueba` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `laravel_prueba`;

-- Dumping structure for table laravel_prueba.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL DEFAULT '',
  `product_price` varchar(50) NOT NULL DEFAULT '',
  `product_variations` varchar(50) NOT NULL DEFAULT '',
  `product_category` int(11) NOT NULL DEFAULT 0,
  `fcreation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table laravel_prueba.products: ~5 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_variations`, `product_category`, `fcreation`) VALUES
	(1, 'PRODUCT1', '1000', '1', 1, '2022-01-19 15:50:12'),
	(2, 'PRODUCT2', '1510', '2', 2, '2022-01-19 15:50:12'),
	(3, 'PRODUCT3', '1530', '3', 3, '2022-01-19 15:50:12'),
	(4, 'PRODUCT4', '2865', '4', 3, '2022-01-19 15:50:12'),
	(5, 'PRODUCT5', '3520', '5', 1, '2022-01-19 15:50:12');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table laravel_prueba.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name_user` varchar(250) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `pass_user` varchar(250) NOT NULL,
  `fcreacion` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table laravel_prueba.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_user`, `name_user`, `email_user`, `pass_user`, `fcreacion`) VALUES
	(1, 'William Castaño', 'williamisrael210@gmail.com', '12345678', '2022-01-07 10:36:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
