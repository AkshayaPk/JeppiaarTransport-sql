/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.10 : Database - jeppiaartransport
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jeppiaartransport` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jeppiaartransport`;

/*Table structure for table `route_details` */

DROP TABLE IF EXISTS `route_details`;

CREATE TABLE `route_details` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROUTE_ID` bigint(20) NOT NULL,
  `IP_1` varchar(500) NOT NULL,
  `IP_2` varchar(500) NOT NULL,
  `IP_3` varchar(500) NOT NULL,
  `IP_4` varchar(500) NOT NULL,
  `IP_5` varchar(500) NOT NULL,
  `IP_6` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_route_id` (`ROUTE_ID`),
  CONSTRAINT `fk_route_id` FOREIGN KEY (`ROUTE_ID`) REFERENCES `seed_route_details` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `route_details` */

/*Table structure for table `route_intermediary_points` */

DROP TABLE IF EXISTS `route_intermediary_points`;

CREATE TABLE `route_intermediary_points` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IP_NAME` varchar(500) NOT NULL,
  `IP_CODE` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `route_intermediary_points` */

/*Table structure for table `seed_route` */

DROP TABLE IF EXISTS `seed_route`;

CREATE TABLE `seed_route` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROUTE_NAME` varchar(500) NOT NULL,
  `START_POINT` varchar(500) NOT NULL DEFAULT 'JEPPIAAR COLLEGE',
  `END_POINT` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `seed_route` */

/*Table structure for table `seed_route_details` */

DROP TABLE IF EXISTS `seed_route_details`;

CREATE TABLE `seed_route_details` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROUTE_ID` bigint(20) NOT NULL,
  `ROUTE_BUS_NO` bigint(20) NOT NULL,
  `DEPARTURE_DATE` date NOT NULL,
  `DEPARTURE_TIME` time DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_route` (`ROUTE_ID`),
  CONSTRAINT `fk_route` FOREIGN KEY (`ROUTE_ID`) REFERENCES `seed_route` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `seed_route_details` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
