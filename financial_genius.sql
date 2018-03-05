/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.34-log : Database - financial_genius
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_admin_res` */

DROP TABLE IF EXISTS `t_admin_res`;

CREATE TABLE `t_admin_res` (
  `res_id` bigint(20) NOT NULL,
  `admin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`admin_id`,`res_id`),
  KEY `FK_m87oqsik7yotus8erlub0ha4r` (`res_id`),
  CONSTRAINT `FK_c75rve6x95i6gfkk1s864ujj9` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`id`),
  CONSTRAINT `FK_m87oqsik7yotus8erlub0ha4r` FOREIGN KEY (`res_id`) REFERENCES `tb_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_admin_res` */

LOCK TABLES `t_admin_res` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_pub_user` */

DROP TABLE IF EXISTS `t_pub_user`;

CREATE TABLE `t_pub_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL COMMENT '最近一次登录时间',
  `mobile` varchar(11) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0:可用账户;1:不可用',
  `username` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT '/assets/images/ava/default.png' COMMENT '头像地址',
  `updated` datetime DEFAULT NULL,
  `gender` int(11) unsigned NOT NULL COMMENT '0:male;1-female;',
  `is_admin` int(11) DEFAULT NULL COMMENT '0:非管理员;1:管理员',
  `active_email` int(11) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  `user_ip` char(30) DEFAULT NULL COMMENT '用户Ip地址，用来判断是否异地登录',
  `user_macaddress` char(30) DEFAULT NULL COMMENT '用户的mac地址用来判断三端的信息',
  PRIMARY KEY (`id`),
  KEY `FKt8hscmfieqpuciso43ksim64v` (`user_group_id`),
  CONSTRAINT `FKt8hscmfieqpuciso43ksim64v` FOREIGN KEY (`user_group_id`) REFERENCES `t_pub_user_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `t_pub_user` */

LOCK TABLES `t_pub_user` WRITE;

insert  into `t_pub_user`(`id`,`created`,`email`,`last_login`,`mobile`,`password`,`status`,`username`,`nickname`,`avatar`,`updated`,`gender`,`is_admin`,`active_email`,`signature`,`user_group_id`,`user_ip`,`user_macaddress`) values (1,'2015-08-06 17:52:41','admin@smartlamp.com','2018-02-27 13:45:55','18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'admin','admin','/assets/images/ava/default.png','2015-07-26 11:08:36',0,1,1,'巴拉巴拉巴巴爸爸变',37,NULL,NULL),(2,'2018-01-11 17:08:40','gabriel_arg@163.com','2018-02-07 15:20:45','18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'qinyl',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,1,NULL,NULL),(3,'2018-01-11 17:08:40','gabriel_arg@163.com','2018-02-01 12:45:47','18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'qinyl-mt',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,2,NULL,NULL),(4,'2018-01-29 14:36:54','123@123.123',NULL,'18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'custom1',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,2,NULL,NULL),(5,'2018-01-29 14:40:26','123@123.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom2',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,2,NULL,NULL),(6,'2018-01-29 14:40:40','123@1234.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom3',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,1,NULL,NULL),(7,'2018-01-29 14:40:51','123@1235.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom4',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,1,NULL,NULL),(8,'2018-01-29 14:40:59','123@1236.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom5',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,1,NULL,NULL),(9,'2018-01-29 14:41:09','123@1237.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom6',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,2,NULL,NULL),(10,'2018-01-29 14:41:19','123@1238.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom7',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,3,NULL,NULL),(11,'2018-01-29 14:41:29','123@1239.com',NULL,'18716333516','601f1889667efaebb33b8c12572835da3f027f78',0,'custom8',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,3,NULL,NULL),(12,'2018-01-29 15:33:28','90@qq.com',NULL,'18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'custom09',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,1,NULL,NULL),(13,'2018-01-29 15:33:45','11@qq.com',NULL,'18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'custom10',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,3,NULL,NULL),(14,'2018-01-29 15:34:02','1111@qq.com','2018-01-29 16:41:25','18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'custom11',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,3,NULL,NULL),(15,'2018-01-30 08:43:37','90111@qq.com',NULL,'18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'rockdong','rockdong','/assets/images/ava/default.png',NULL,0,0,0,NULL,2,NULL,NULL),(30,'2018-02-05 13:31:52','931665217@qq.com',NULL,'18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'yinhuaiwei',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,1,NULL,NULL),(33,'2018-02-05 18:16:18','906483365@qq.com',NULL,'18716333516','40bd001563085fc35165329ea1ff5c5ecbdbbeef',0,'rock030995',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,37,NULL,NULL),(34,'2018-02-07 11:29:22','314977908@qq.com','2018-02-07 15:21:29','18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'rock001',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,37,NULL,NULL),(69,'2018-02-25 09:59:30',NULL,'2018-02-25 13:31:01','18716333516','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'user001','滑板鞋','http://qzapp.qlogo.cn/qzapp/101457339/3470395B762F3A6E870A65D3F6A7884B/100',NULL,0,0,0,NULL,38,NULL,NULL),(70,'2018-02-25 10:00:09',NULL,'2018-02-25 10:00:16','15613262230','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'user002','冉小东0','http://tva3.sinaimg.cn/crop.0.0.1080.1080.50/855142d7jw8exfslwzxioj20u00u0n0i.jpg',NULL,0,0,0,NULL,1,NULL,NULL),(71,'2018-02-25 14:50:58','653497294@qq.com','2018-02-25 14:51:26','15645644444','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'user005',NULL,'/assets/images/ava/default.png',NULL,0,0,0,NULL,3,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `t_pub_user_group` */

DROP TABLE IF EXISTS `t_pub_user_group`;

CREATE TABLE `t_pub_user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '0:群成员 1：管理员 2：群主',
  `user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_pub_user_group` */

LOCK TABLES `t_pub_user_group` WRITE;

insert  into `t_pub_user_group`(`id`,`create_time`,`delete_time`,`name`,`update_time`,`status`,`user_id`) values (1,'2018-01-01 14:53:20','2018-01-03 14:53:24','西南片区','2018-01-03 14:53:28',NULL,'70'),(2,NULL,NULL,'东北片区',NULL,'','9'),(3,NULL,NULL,'sdaf',NULL,NULL,'71'),(37,'2018-02-25 20:22:11',NULL,'西南片区',NULL,NULL,'1'),(38,'2018-02-25 20:29:31',NULL,'西北片区',NULL,NULL,'69');

UNLOCK TABLES;

/*Table structure for table `t_user_invest` */

DROP TABLE IF EXISTS `t_user_invest`;

CREATE TABLE `t_user_invest` (
  `user_id` bigint(20) NOT NULL,
  `investment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`investment_id`,`user_id`),
  KEY `FK_a9mermge9lce75q594q13vp3p` (`user_id`),
  CONSTRAINT `FK_a9mermge9lce75q594q13vp3p` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FK_m175biya8o3k1bn9hrycvv10p` FOREIGN KEY (`investment_id`) REFERENCES `tb_investment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_invest` */

LOCK TABLES `t_user_invest` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin` */

LOCK TABLES `tb_admin` WRITE;

insert  into `tb_admin`(`id`,`password`,`username`) values (1,'admin','admin');

UNLOCK TABLES;

/*Table structure for table `tb_bankcarding` */

DROP TABLE IF EXISTS `tb_bankcarding`;

CREATE TABLE `tb_bankcarding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bankAccount` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n4ob3ccbehg4gvf8sshsvvrwm` (`user_id`),
  CONSTRAINT `FK_n4ob3ccbehg4gvf8sshsvvrwm` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bankcarding` */

LOCK TABLES `tb_bankcarding` WRITE;

insert  into `tb_bankcarding`(`id`,`bankAccount`,`bankName`,`count`,`password`,`user_id`) values (1,'6217003773211234567','中国工商银行',900,'123456',NULL),(2,'7327675412340987654','中国建设银行',1000,'123456',NULL),(3,'8237009835741234567','中国银行',1100,'123456',NULL),(4,'6217006545654565456','中国工商银行',1000,'123456',10),(5,'6217222354698754654','中国建设银行',1000,'123456',10),(6,'9876543210987654321','中国交通银行',1000,'123456',NULL),(7,'1254896325478965325','中国建设银行',1100,'123456',6),(8,'6217003773211234567','中国建设银行',500,'123456',NULL),(9,'1234567890123456789','中国工商银行',1000,'123456',19),(10,'1234567890123456789','中国工商银行',1000,'123456',19),(11,'1234567890123456789','中国工商银行',800,'123456',19),(15,'6217003760027180777','中国工商银行',789,'123456',7),(16,'6217006545654565456','中国建设银行',1000,'123456',7),(17,'6217009860028190666','中国银行',1000,'123456',7);

UNLOCK TABLES;

/*Table structure for table `tb_deposit` */

DROP TABLE IF EXISTS `tb_deposit`;

CREATE TABLE `tb_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `depositCount` int(11) NOT NULL,
  `depositName` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k638uiftmdalwgvjl7r15tri7` (`user_id`),
  CONSTRAINT `FK_k638uiftmdalwgvjl7r15tri7` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `tb_deposit` */

LOCK TABLES `tb_deposit` WRITE;

insert  into `tb_deposit`(`id`,`createDate`,`depositCount`,`depositName`,`user_id`) values (5,'2017-10-26',1000,'中国银行',NULL),(6,'2017-11-07',1000,'统一财富',6),(7,'2017-11-07',1000,'统一财富',19),(11,'2017-11-08',500,'农业银行',7),(12,'2017-11-08',1100,'中国银行',7),(13,'2017-11-08',800,'中国建设银行',7),(14,'2017-11-08',200,'农业银行',7),(15,'2017-11-08',100,'农业银行',7),(16,'2017-11-08',100,'中国银行',7),(17,'2017-11-08',100,'中国银行',7),(18,'2017-11-08',2000,'中国银行',7);

UNLOCK TABLES;

/*Table structure for table `tb_investment` */

DROP TABLE IF EXISTS `tb_investment`;

CREATE TABLE `tb_investment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `investCount` int(11) NOT NULL,
  `investName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_investment` */

LOCK TABLES `tb_investment` WRITE;

insert  into `tb_investment`(`id`,`description`,`investCount`,`investName`) values (3,'年利率7%',1000,'统一财富'),(7,'年利率7%',1000,'中国银行'),(8,'年利率5%',200,'农业银行'),(9,'10%',500,'中国建设银行');

UNLOCK TABLES;

/*Table structure for table `tb_recharge` */

DROP TABLE IF EXISTS `tb_recharge`;

CREATE TABLE `tb_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `rechargeBank` varchar(255) DEFAULT NULL,
  `rechargeCount` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6w46tmnrhuas846xa4uvkjbpv` (`user_id`),
  CONSTRAINT `FK_6w46tmnrhuas846xa4uvkjbpv` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `tb_recharge` */

LOCK TABLES `tb_recharge` WRITE;

insert  into `tb_recharge`(`id`,`createDate`,`rechargeBank`,`rechargeCount`,`user_id`) values (1,'2017-10-25','6217003773211234567',100,NULL),(2,'2017-10-26','6217006545654565456',100,NULL),(3,'2017-10-26','1234567890123456789',100,NULL),(4,'2017-11-07','1254896325478965325',100,6),(5,'2017-11-07','6217003773211234567',500,NULL),(6,'2017-11-07','1234567890123456789',100,19),(7,'2017-11-07','1234567890123456789',100,19),(8,'2017-11-07','1234567890123456789',100,19),(9,'2017-11-08','1234567890123456789',100,7),(10,'2017-11-08','1234567890123456789',100,7),(11,'2017-11-08','1234567890123456789',100,7),(12,'2017-11-08','1234567890123456789',100,7),(13,'2017-11-08','1234567890123456789',100,7),(14,'2017-11-08','1234567890123456789',100,7),(15,'2017-11-08','1236549876541236589',1000,7),(16,'2017-11-08','6217003760027180777',100,7),(17,'2017-11-08','6217003760027180777',111,7),(18,'2017-11-08','6217003773211234568',500,7);

UNLOCK TABLES;

/*Table structure for table `tb_resource` */

DROP TABLE IF EXISTS `tb_resource`;

CREATE TABLE `tb_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_resource` */

LOCK TABLES `tb_resource` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_role` */

LOCK TABLES `tb_role` WRITE;

insert  into `tb_role`(`id`,`description`,`permission`,`roleName`) values (1,'一般人都这样','浏览','普通用户'),(2,'就一个','啥都能干','管理员');

UNLOCK TABLES;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `payPassword` varchar(255) DEFAULT NULL,
  `personID` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1sfby1b8i8xi58er483adw21f` (`role_id`),
  CONSTRAINT `FK_1sfby1b8i8xi58er483adw21f` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

LOCK TABLES `tb_user` WRITE;

insert  into `tb_user`(`id`,`count`,`email`,`password`,`payPassword`,`personID`,`realName`,`sex`,`status`,`userName`,`role_id`) values (6,12788,'1044450759@qq.com','000000','000000','500231199608744598','xiaohong','女','冻结','xiaoyang',NULL),(7,1520,'314977908@qq.com','000000','000000','500231199802231254','xiaoyang','男','dongjie','xiyangyang',NULL),(8,13888,'1044450759@qq.com','123456','123456','500231199412215698','zhangsan','男','冻结','zhangsan',NULL),(9,13888,'1044450759@qq.com','123456','123456','500123199802155642','xiaolan','男','已激活','xiaolan',NULL),(10,13888,'1234@qq.com','123456','123456','500221199909092345','王五','女','已激活','wangwu',NULL),(12,13888,'1044450759@qq.com','123456','123466','123456789012345678','qwe','男','已激活','xiohong',NULL),(13,13888,'535774281@qq.com','111111','123456','500231199412215698','zhangsan','男','已激活','66666666',NULL),(18,0,'314977908@qq.com','000000',NULL,NULL,NULL,'男','已激活','xiaomingtest',NULL),(19,14088,'314977908@qq.com','000000','000000','500221199909092345','周发明','男','已激活','tough123',NULL),(20,0,'1044450759@qq.com','123456',NULL,NULL,NULL,'男','已激活','xiaolll',NULL),(22,13888,'122277908@qq.com','123123','123123','500240199409152599','周发明','男','已激活','choutou',NULL);

UNLOCK TABLES;

/*Table structure for table `tb_withdraw` */

DROP TABLE IF EXISTS `tb_withdraw`;

CREATE TABLE `tb_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createDate` date DEFAULT NULL,
  `withdrawBank` varchar(255) DEFAULT NULL,
  `withdrawCount` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3on5t5w210lcwivplwnh0gr4y` (`user_id`),
  CONSTRAINT `FK_3on5t5w210lcwivplwnh0gr4y` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_withdraw` */

LOCK TABLES `tb_withdraw` WRITE;

insert  into `tb_withdraw`(`id`,`createDate`,`withdrawBank`,`withdrawCount`,`user_id`) values (1,'2017-10-25','8237009835741234567',100,NULL),(2,'2017-10-26','6217006545654565456',100,NULL),(3,'2017-10-26','1234567890123456789',100,NULL),(4,'2017-11-07','1254896325478965325',200,6),(5,'2017-11-07','1234567890123456789',100,19),(6,'2017-11-07','1236549876541236589',123,7),(7,'2017-11-07','1236549876541236589',456,7),(8,'2017-11-08','1234567890123456789',100,7),(9,'2017-11-08','1234567890123456789',100,7);

UNLOCK TABLES;

/*Table structure for table `tes_chart` */

DROP TABLE IF EXISTS `tes_chart`;

CREATE TABLE `tes_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tes_chart` */

LOCK TABLES `tes_chart` WRITE;

insert  into `tes_chart`(`id`,`name`,`count`,`time`) values (1,'资金1',200,'2017-01-01 10:47:53'),(2,'资金2',500,'2017-02-01 10:48:26'),(3,'资金3',800,'2017-03-01 10:48:46'),(4,'资金4',700,'2017-04-01 10:49:06'),(5,'资金5',200,'2017-05-27 10:49:29'),(6,'资金6',300,'2017-06-01 10:49:46'),(7,'资金7',900,'2017-07-01 10:50:05'),(8,'资金8',600,'2017-08-01 10:50:29'),(9,'资金9',800,'2017-09-01 10:50:47'),(10,'资金10',1000,'2017-10-01 10:51:08');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
