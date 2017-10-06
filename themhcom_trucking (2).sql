-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 06 Okt 2017 pada 20.38
-- Versi Server: 5.5.49-0ubuntu0.14.04.1
-- Versi PHP: 5.6.23-1+deprecated+dontuse+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `themhcom_trucking`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(36, '36.74.167.23', 'user@user.com', 1507190794),
(38, '36.74.167.23', 'user@user.com', 1507192765),
(39, '36.74.167.23', 'user@user.com', 1507192783),
(40, '36.74.167.23', 'user@user.com', 1507192820),
(43, '114.124.229.84', 'admin@gmail.com', 1507217184);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_category`
--

CREATE TABLE IF NOT EXISTS `service_category` (
  `id_service` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `price` int(9) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `service_category`
--

INSERT INTO `service_category` (`id_service`, `category`, `price`) VALUES
(1, 'BAN DEPAN', 200000),
(2, 'OLI SAMPING', 700000),
(3, 'BAN DALAM', 100000),
(4, 'LAMPU', 50000),
(6, 'BAN BELAKANG', 130000),
(13, 'KACA PECAH', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trucking_service_transaction`
--

CREATE TABLE IF NOT EXISTS `trucking_service_transaction` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `id_transaction` int(9) unsigned NOT NULL,
  `user_id` int(9) NOT NULL,
  `id_service` int(9) unsigned NOT NULL,
  `total_price` int(9) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `trucking_service_transaction`
--

INSERT INTO `trucking_service_transaction` (`id`, `id_transaction`, `user_id`, `id_service`, `total_price`) VALUES
(11, 6, 0, 2, 300000),
(12, 7, 0, 2, 450000),
(13, 7, 0, 3, 450000),
(14, 7, 0, 4, 450000),
(15, 8, 0, 2, 350000),
(16, 8, 0, 4, 350000),
(17, 9, 0, 2, 350000),
(18, 9, 0, 4, 350000),
(23, 12, 2, 3, 100000),
(24, 13, 4, 2, 450000),
(25, 13, 4, 3, 450000),
(26, 13, 4, 4, 450000),
(27, 14, 3, 2, 550000),
(28, 14, 3, 4, 550000),
(29, 14, 3, 1, 550000),
(30, 15, 4, 2, 930000),
(31, 15, 4, 4, 930000),
(32, 15, 4, 4, 930000),
(33, 15, 4, 6, 930000),
(34, 16, 9, 2, 900000),
(35, 16, 9, 1, 900000),
(36, 17, 9, 13, 350000),
(37, 17, 9, 1, 350000),
(38, 17, 9, 4, 350000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trucking_transaction`
--

CREATE TABLE IF NOT EXISTS `trucking_transaction` (
  `id_transaction` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `car_number` varchar(10) NOT NULL,
  `nama_driver` varchar(150) NOT NULL,
  `tempat_service` text NOT NULL,
  `stnk_date` datetime NOT NULL,
  `pkb_date` datetime NOT NULL,
  `service_date` datetime NOT NULL,
  `kir_date` datetime NOT NULL,
  `sipa_date` datetime NOT NULL,
  `ibm_date` datetime NOT NULL,
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `trucking_transaction`
--

INSERT INTO `trucking_transaction` (`id_transaction`, `user_id`, `car_number`, `nama_driver`, `tempat_service`, `stnk_date`, `pkb_date`, `service_date`, `kir_date`, `sipa_date`, `ibm_date`) VALUES
(1, 0, 'W 400 PX', '', '', '2017-10-11 00:00:00', '2017-10-11 00:00:00', '2017-10-11 00:00:00', '2017-10-26 00:00:00', '2017-10-12 00:00:00', '2017-10-25 00:00:00'),
(2, 0, 'W 400 PX', '', '', '2017-10-11 00:00:00', '2017-10-27 00:00:00', '2017-10-11 00:00:00', '2017-10-18 00:00:00', '2017-10-19 00:00:00', '2017-10-18 00:00:00'),
(4, 0, 'now', '', '', '2017-10-17 00:00:00', '2017-10-18 00:00:00', '2017-10-13 00:00:00', '2017-10-26 00:00:00', '2017-10-05 00:00:00', '2017-10-26 00:00:00'),
(5, 0, 'now', '', '', '2017-10-17 00:00:00', '2017-10-18 00:00:00', '2017-10-13 00:00:00', '2017-10-26 00:00:00', '2017-10-05 00:00:00', '2017-10-26 00:00:00'),
(6, 0, 'DDD', 'Ahmad', 'Jakarta', '2017-10-04 00:00:00', '2017-10-10 00:00:00', '2017-10-18 00:00:00', '2017-10-26 00:00:00', '2017-10-24 00:00:00', '2017-10-18 00:00:00'),
(9, 0, 'AA 563 QR', 'Tester', 'Tester', '2017-10-06 00:00:00', '2017-10-13 00:00:00', '2017-10-20 00:00:00', '2017-10-19 00:00:00', '2017-10-25 00:00:00', '2017-10-24 00:00:00'),
(12, 2, 'P 3002 GG', 'Irwan t', 'Jember Service', '2017-10-11 00:00:00', '2017-10-18 00:00:00', '2017-10-13 00:00:00', '2017-10-27 00:00:00', '2017-10-26 00:00:00', '2017-10-18 00:00:00'),
(14, 3, '1717AS', 'Kalvian', 'Medit bengkel ', '2017-10-11 00:00:00', '2017-10-04 00:00:00', '2017-10-04 00:00:00', '2017-10-04 00:00:00', '2017-10-04 00:00:00', '2017-10-04 00:00:00'),
(15, 4, 'B 9229  EK', 'SUYADI', 'PT CIWANGI BERLIAN MOTORS', '2017-11-30 00:00:00', '2017-10-11 00:00:00', '2017-10-10 00:00:00', '2017-10-13 00:00:00', '2017-10-12 00:00:00', '2017-10-31 00:00:00'),
(17, 9, 'ABD123', 'Ahmad', 'jakarta', '2017-10-05 00:00:00', '2017-10-05 00:00:00', '2017-10-05 00:00:00', '2017-10-05 00:00:00', '2017-10-05 00:00:00', '2017-10-05 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1507219059, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '115.178.237.227', 'user@user.com', '$2y$08$bno1r5VblOiIsy3R8xeXtO7ivrwZ3b/c0Bg02F515mFbHDkWpO0m2', NULL, 'user@user.com', NULL, NULL, NULL, NULL, 1507039507, 1507186838, 1, NULL, NULL, NULL, NULL),
(4, '202.159.40.83', 'adfha021@gmail.com', '$2y$08$hKLtYfaI5euLKqnFTWvGQ.p46CeWX2HVFHiDY.eI6TC9UvhhrHyZe', NULL, 'adfha021@gmail.com', NULL, NULL, NULL, NULL, 1507055810, 1507201561, 1, NULL, NULL, NULL, NULL),
(5, '202.159.40.83', 'cro@ptsolidlogistics.com', '$2y$08$5iWTWBw3Pl97KZIHLOfpt.jv8mSa5XcrwOewPO4tlaOjqo1N/F.9e', NULL, 'cro@ptsolidlogistics.com', NULL, NULL, NULL, NULL, 1507104611, NULL, 1, NULL, NULL, NULL, NULL),
(7, '115.178.239.114', 'andriawan2014', '$2y$08$Y/17hnqFMaj8rkeAwMXaouO8wsHsFHagN8Ml.Cbfva5jxnNoW9lK6', NULL, 'andriawan2014@gmail.com', NULL, NULL, NULL, NULL, 1507187897, NULL, 1, NULL, NULL, NULL, NULL),
(9, '36.74.167.23', 'kalvian', '$2y$08$auFvmZ9kOXZ1rUuyS9d6euHUqmJ/8dvkuK8fMcyTryqiTEH8Lp5vq', NULL, 'kalvianhajar@gmail.com', NULL, NULL, NULL, NULL, 1507201348, 1507209207, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(5, 4, 2),
(9, 5, 2),
(11, 7, 2),
(13, 9, 2);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
