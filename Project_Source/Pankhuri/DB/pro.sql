/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - pro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pro`;

/*Table structure for table `chcmt` */

DROP TABLE IF EXISTS `chcmt`;

CREATE TABLE `chcmt` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `sn` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  `vie` int(200) DEFAULT NULL,
  `don` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `chcmt` */

insert  into `chcmt`(`id`,`sn`,`loc`,`vie`,`don`) values (4,'Dominos','vadapalani',1,'moni');

/*Table structure for table `cmt` */

DROP TABLE IF EXISTS `cmt`;

CREATE TABLE `cmt` (
  `uname` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `cmts` varchar(200) DEFAULT NULL,
  `id` varchar(200) DEFAULT NULL,
  `cid` int(200) NOT NULL AUTO_INCREMENT,
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `cmt` */

insert  into `cmt`(`uname`,`name`,`loc`,`rate`,`cmts`,`id`,`cid`) values ('david','Dominos','vadapalani','9','Pizza is very tasty and yummy...Thank you ','14',7);

/*Table structure for table `cmtch` */

DROP TABLE IF EXISTS `cmtch`;

CREATE TABLE `cmtch` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `sn` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `cmtch` */

insert  into `cmtch`(`id`,`sn`,`loc`) values (7,'Dominos','vadapalani'),(8,'Dominos','vadapalani');

/*Table structure for table `do` */

DROP TABLE IF EXISTS `do`;

CREATE TABLE `do` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `do` */

insert  into `do`(`id`,`fname`,`sname`,`name`,`pwd`,`email`,`mobile`,`country`) values (6,'moni','moni','moni','moni','moni.dlk27@gmail.com','7344222213','india');

/*Table structure for table `eureq` */

DROP TABLE IF EXISTS `eureq`;

CREATE TABLE `eureq` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `uid` int(200) DEFAULT NULL,
  `un` varchar(200) DEFAULT NULL,
  `lat` varchar(200) DEFAULT NULL,
  `lon` varchar(200) DEFAULT NULL,
  `cat` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `eureq` */

insert  into `eureq`(`id`,`uid`,`un`,`lat`,`lon`,`cat`,`email`) values (8,6,'cÖë[È?æŽP…aÍ','D„;ÕUŸ:','D„;ÕUŸ:','D„;ÕUŸ:','ÉIv$Úª*¾!'),(9,5,'cÖë[È?æŽP…aÍ','D„;ÕUŸ:','D„;ÕUŸ:','D„;ÕUŸ:','ÉIv$Úª*¾!'),(10,6,'cÖë[È?æŽP…aÍ','D„;ÕUŸ:','D„;ÕUŸ:','D„;ÕUŸ:','ÉIv$Úª*¾!'),(11,5,'cÖë[È?æŽP…aÍ','D„;ÕUŸ:','D„;ÕUŸ:','D„;ÕUŸ:','ÉIv$Úª*¾!'),(12,7,'cÖë[È?æŽP…aÍ','D„;ÕUŸ:','D„;ÕUŸ:','D„;ÕUŸ:','ÉIv$Úª*¾!');

/*Table structure for table `filestore` */

DROP TABLE IF EXISTS `filestore`;

CREATE TABLE `filestore` (
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fid` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fsize` varchar(255) NOT NULL,
  `b1` longblob NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filestore` */

/*Table structure for table `htls` */

DROP TABLE IF EXISTS `htls`;

CREATE TABLE `htls` (
  `don` varchar(200) DEFAULT NULL,
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `abt` text,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  `sta` varchar(200) DEFAULT NULL,
  `catg` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  `lm` varchar(200) DEFAULT NULL,
  `imgn` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `htls` */

/*Table structure for table `htls1` */

DROP TABLE IF EXISTS `htls1`;

CREATE TABLE `htls1` (
  `don` varbinary(200) DEFAULT NULL,
  `id` int(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `abt` text,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  `sta` varchar(200) DEFAULT NULL,
  `catg` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  `lm` varchar(200) DEFAULT NULL,
  `imgn` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `htls1` */

insert  into `htls1`(`don`,`id`,`name`,`abt`,`lat`,`lon`,`sta`,`catg`,`loc`,`lm`,`imgn`) values ('moni',14,'Dominos','Delicious pizaas and yummy','13.040719',' 80.2071043','verified','Pizza','vadapalani','Forum Mall','cheese.jpg');

/*Table structure for table `ocmt` */

DROP TABLE IF EXISTS `ocmt`;

CREATE TABLE `ocmt` (
  `id` int(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  `rate` int(200) DEFAULT NULL,
  `cmts` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ocmt` */

insert  into `ocmt`(`id`,`uname`,`name`,`loc`,`rate`,`cmts`) values (14,'david','Dominos','vadapalani',9,'Pizza is very tasty and yummy...Thank you ');

/*Table structure for table `ra` */

DROP TABLE IF EXISTS `ra`;

CREATE TABLE `ra` (
  `name` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  `r` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ra` */

insert  into `ra`(`name`,`loc`,`r`) values ('Dominos','vadapalani',1);

/*Table structure for table `ulog` */

DROP TABLE IF EXISTS `ulog`;

CREATE TABLE `ulog` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ulog` */

insert  into `ulog`(`id`,`fname`,`sname`,`name`,`pwd`,`email`,`mobile`,`country`) values (7,'david','david','david','david','dineshdlk33@gmail.com','53437645734','india');

/*Table structure for table `ureq` */

DROP TABLE IF EXISTS `ureq`;

CREATE TABLE `ureq` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `uid` int(200) DEFAULT NULL,
  `un` varchar(200) DEFAULT NULL,
  `lat` decimal(10,4) DEFAULT NULL,
  `lon` decimal(10,4) DEFAULT NULL,
  `cat` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `ureq` */

/*Table structure for table `uvp` */

DROP TABLE IF EXISTS `uvp`;

CREATE TABLE `uvp` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `un` varchar(200) DEFAULT NULL,
  `sn` varchar(200) DEFAULT NULL,
  `loc` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `uvp` */

insert  into `uvp`(`id`,`un`,`sn`,`loc`) values (7,'david','Dominos','vadapalani');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
