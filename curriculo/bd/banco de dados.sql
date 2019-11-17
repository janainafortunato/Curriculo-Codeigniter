/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 10.4.6-MariaDB : Database - curriculo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`curriculo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `curriculo`;

/*Table structure for table `dados_pessoas` */

DROP TABLE IF EXISTS `dados_pessoas`;

CREATE TABLE `dados_pessoas` (
  `id_dados` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `telefone` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dados`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `dados_pessoas` */

insert  into `dados_pessoas`(`id_dados`,`nome`,`email`,`link`,`telefone`,`endereco`) values 
(1,'janaia Fortunato da Silva','janaina.projetos@live.com / fortunato.projetos@gma',' https://www.linkedin.com/in/janaina-fortunato-746',2147483647,'Rua Helio Rodrigues Cardoso Casa Caiada-Olinda');

/*Table structure for table `experiencia` */

DROP TABLE IF EXISTS `experiencia`;

CREATE TABLE `experiencia` (
  `id_exper` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(100) NOT NULL,
  `funcao` varchar(50) NOT NULL,
  `periodo` date DEFAULT NULL,
  `id_dados` int(11) NOT NULL,
  PRIMARY KEY (`id_exper`),
  KEY `id_dados` (`id_dados`),
  CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`id_dados`) REFERENCES `dados_pessoas` (`id_dados`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `experiencia` */

insert  into `experiencia`(`id_exper`,`empresa`,`funcao`,`periodo`,`id_dados`) values 
(2,'Red Sauce','Freelance','0000-00-00',1);

/*Table structure for table `formacaoacademica` */

DROP TABLE IF EXISTS `formacaoacademica`;

CREATE TABLE `formacaoacademica` (
  `id_for` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(100) NOT NULL,
  `periodo` date DEFAULT NULL,
  `inst` varchar(100) NOT NULL,
  `dados_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_for`),
  KEY `dados_id` (`dados_id`),
  CONSTRAINT `formacaoacademica_ibfk_1` FOREIGN KEY (`dados_id`) REFERENCES `dados_pessoas` (`id_dados`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `formacaoacademica` */

insert  into `formacaoacademica`(`id_for`,`curso`,`periodo`,`inst`,`dados_id`) values 
(1,'Téc. em Informática para Internet','2019-11-17',' Instituto Federal de Pernambuco – IFPE  Campus Igarassu',NULL);

/*Table structure for table `objetivo` */

DROP TABLE IF EXISTS `objetivo`;

CREATE TABLE `objetivo` (
  `id_obj` int(11) NOT NULL AUTO_INCREMENT,
  `texto` varchar(200) NOT NULL,
  `id_dados` int(11) NOT NULL,
  PRIMARY KEY (`id_obj`),
  KEY `id_dados` (`id_dados`),
  CONSTRAINT `objetivo_ibfk_1` FOREIGN KEY (`id_dados`) REFERENCES `dados_pessoas` (`id_dados`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `objetivo` */

insert  into `objetivo`(`id_obj`,`texto`,`id_dados`) values 
(7,'Atuar na área de desenvolvimento para internet, com Front-End,Teste de software e back-end.',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
