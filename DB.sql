/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - automaticdomainmodule
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `automaticdomainmodule`;

USE `automaticdomainmodule`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(20) default NULL,
  `username` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert into `admin` (`id`,`username`,`password`) values (1,'admin','admin');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) default NULL,
  `email` varchar(25) default NULL,
  `mobile` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (0,'test','test','test@gmail.com','1234567890');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (4,'java','jaav','java@pantechmail.com','1234567890');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (5,'java123','rwer','erwe@sdfd.com','8124002888');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (6,'hh','gg','dsfdsf@sdfdsf.com','1234567890');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (7,'ff','ff','sdfds@sdfd.com','8124002888');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (8,'ery','tytrytr','erter@hjhdfg.com','9600066689');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (9,'dfgdfgdfg','dgdfgf','fgdfgdfg@dsfsd.com','0123456789');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (10,'ghjgh','hjgh','ghjgh@gfsdg.com','1234678900');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`) values (11,'java1','java','su@f.com','1234567890');

SET SQL_MODE=@OLD_SQL_MODE;