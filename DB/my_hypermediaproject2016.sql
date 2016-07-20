-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 17, 2016 alle 17:02
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hypermediaproject2016`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `smartphone`
--

CREATE TABLE IF NOT EXISTS `smartphone` (
  `ID` int(10) NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `tecnology` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `connection` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `display` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `photocamera` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `memory` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `processor` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `sim` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `prev` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  `next` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  `services` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `assistance` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `promotions` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dump dei dati per la tabella `smartphone`
--

INSERT INTO `smartphone` (`ID`, `img`, `name`, `tecnology`, `connection`, `display`, `photocamera`, `memory`, `processor`, `sim`, `prev`, `next`, `services`, `assistance`, `promotions`, `brand`, `price`) VALUES
(0, '<img class="smartphonepageimg" src="img/iphone6s-2.png" alt="">', 'iPhone 6S', '4G LTE Advanced e Wi-Fi 802.11a/b/g/n/ac', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Display Retina HD da 4,7" (diagonal)', 'Camera iSight of 12 megapixel con Focus Pixels', '16GB', 'Chip A9 with co-processor of movement M9', 'Nano', '', '<a href="device.html?id=1"><div class="moreinfobuttonsmartphone">Samsung Galaxy S7 ></div></a>', '           	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>\r\n           ', '\r\n            	<div class="middletitle">Assistance Services</div>\r\n                <a href="sossmartphone.html"><div class="smartphonetablestext">SOS Smartphone</div></a>\r\n                <div class="smartphonetablestextnolink">Mail configuration on iPhone</div>\r\n                <div class="smartphonetablestextnolink">Connecting to internet</div>\r\n            ', '\r\n            	<div class="middletitle">Promotions</div>\r\n                <a href="timnext.html"><div class="smartphonetablestext">TIM Next</div></a>\r\n                <div class="smartphonetablestextnolink">4G Promo</div>\r\n           ', 'Apple', '789,90'),
(1, '<img class="smartphonepageimg" src="img/galaxys7-2.png" alt="">', 'Samsung Galaxy S7', '4G cat.9/HSDPA42UMTS/EDGE/GPRS', 'Wi-Fi - Bluetooth - Micro USB - NFC', '5.5” 16 Milioni colori Touch', '12 Mpixel/Flash', '32GB', 'OctaCore: (QuadCore 2.3 Ghz+QuadCore 1.6 Ghz)', 'Nano', '<a href="device.html?id=0"><div class="moreinfobuttonsmartphone">< iPhone 6S</div></a>', '<a href="device.html?id=2"><div class="moreinfobuttonsmartphone">Huawei P9 ></div></a>', '\r\n            	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>\r\n            ', '\r\n            	<div class="middletitle">Assistance Services</div>\r\n                <a href="sossmartphone.html"><div class="smartphonetablestext">SOS Smartphone</div></a>\r\n                <div class="smartphonetablestextnolink">TIM Mail Configuration</div>\r\n                <div class="smartphonetablestextnolink">Connecting to internet</div>\r\n           ', ' \r\n            	<div class="middletitle">Promotions</div>\r\n                <a href="timnext.html"><div class="smartphonetablestext">TIM Next</div></a>\r\n                <div class="smartphonetablestextnolink">4G Promo</div>\r\n           ', 'Samsung', '829'),
(2, '<img class="smartphonepageimg" src="img/huaweip9.png" alt="">', 'Huawei P9', '4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequences850/900/1800/1900MHz', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequences 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac', 'Display IPS Full HD da 5.2’’', 'Main 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontal 8MP, f/2.4', '32GB', 'Processor Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'Nano', '<a href="device.html?id=1"><div class="moreinfobuttonsmartphone">< Samsung Galaxy S7</div></a>', '', '\r\n            	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>\r\n            ', '\r\n            	<div class="middletitle">Assistance Services</div>\r\n                <a href="sossmartphone.html"><div class="smartphonetablestext">SOS Smartphone</div></a>\r\n                <div class="smartphonetablestextnolink">TIM Mail Configuration</div>\r\n                <div class="smartphonetablestextnolink">Connecting to internet</div>\r\n            ', '           \r\n            	<div class="middletitle">Promotions</div>\r\n                <div class="smartphonetablestextnolink">4G Promo</div>\r\n            ', 'Huawei', '599,90');

-- --------------------------------------------------------

--
-- Struttura della tabella `tablet`
--

CREATE TABLE IF NOT EXISTS `tablet` (
  `ID` int(10) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `tecnology` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `connection` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `display` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `photocamera` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `memory` varchar(10) COLLATE utf8mb4_bin NOT NULL,
  `processor` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `sim` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `prev` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  `next` varchar(300) COLLATE utf8mb4_bin NOT NULL,
  `services` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `assistance` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `promotions` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dump dei dati per la tabella `tablet`
--

INSERT INTO `tablet` (`ID`, `img`, `name`, `tecnology`, `connection`, `display`, `photocamera`, `memory`, `processor`, `sim`, `prev`, `next`, `services`, `assistance`, `promotions`, `brand`, `price`) VALUES
(0, '<img class="smartphonepageimg" src="img/ipadpro.png" alt="">', 'iPad Pro 128GB', 'A9X with architecture 64bit at 1.6GHz', 'LTE /HSDPA-DC 42.2/HSUPA 5.76/, Wi-Fi 802.11a/b/g/n/ac e MIMO, Bluetooth 4.2', 'Retina Display 12.9”', 'iSight da 8MP', '128GB', 'co-processor M9', 'Nano', '', '<a href="devicetablet.html?id=1"><div class="moreinfobuttonsmartphone">Samsung Galaxy Tab S2 ></div></a>', '\r\n            	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>', '\r\n            	<div class="middletitle">Assistance Services</div>\r\n                <div class="smartphonetablestextnolink">Mail Configuration on iPad</div>\r\n                <div class="smartphonetablestextnolink">Connecting to internet</div>', '\r\n            	<div class="middletitle">Promotions</div>\r\n                <a href="timsmart.html"><div class="smartphonetablestext">TIM Smart</div></a>\r\n', 'Apple', '1249,90'),
(2, '<img class="smartphonepageimg" src="img/alcatelpixi310.png" alt="">', 'Alcatel Pixi3 10', 'Wi-Fi', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Display 10,1” ,1280x800', 'Front: 0.3 Mpxl Back: 2 Mpxl', '8GB', 'MediateKMT8321 Quad-Core da 1.3 GHz', 'Normal', '<a href="devicetablet.html?id=1"><div class="moreinfobuttonsmartphone">< Samsung Galaxy Tab S2</div></a>', '', '\r\n            	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>\r\n', '\r\n            	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>\r\n', '\r\n            	<div class="middletitle">Assistance Services</div>\r\n                <div class="smartphonetablestextnolink">Assistance for TIM Mail</div>\r\n                <div class="smartphonetablestextnolink">Connecting to internet</div>\r\n', 'Alcatel', '139,90'),
(1, '<img class="smartphonepageimg" src="img/galaxytabs2.png" alt="">', 'Samsung Galaxy Tab S2', 'LTE cat.6/HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 4.1, micro USB', 'LTE cat.6/HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 4.1, micro USB', 'Display 9.7” TFT, 2048x1536 QXGA (4:3', 'Front: 2.1 MP Back: 8 MP', '32GB', 'Processor Octa-core,1.9 GHz, 1.3 GHz', 'Nano', '<a href="devicetablet.html?id=0"><div class="moreinfobuttonsmartphone">< iPad Pro 128GB</div></a>', '<a href="devicetablet.html?id=2"><div class="moreinfobuttonsmartphone">Alcatel Pixi3 10 ></div></a>', '\r\n            	<div class="middletitle">Services</div>\r\n                <a href="timmusic.html"><div class="smartphonetablestext">TIM Music</div></a>\r\n                <a href="timvision.html"><div class="smartphonetablestext">TIM Vision</div></a>\r\n', '\r\n            	<div class="middletitle">Assistance Services</div>\r\n                <div class="smartphonetablestextnolink">Assistance for TIM Mail</div>\r\n                <div class="smartphonetablestextnolink">Connecting to internet</div>\r\n', '           \r\n            	<div class="middletitle">Promotions</div>\r\n                <a href="timsmart.html"><div class="smartphonetablestext">TIM Smart</div></a>\r\n', 'Samsung', '589,90');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
