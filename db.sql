/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - bingfangguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bingfangguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bingfangguanlixitong`;

/*Table structure for table `bingchuang` */

DROP TABLE IF EXISTS `bingchuang`;

CREATE TABLE `bingchuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingchuang_uuid_number` varchar(200) DEFAULT NULL COMMENT '病床编号 Search111 ',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间名 Search111 ',
  `fangjian_address` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `chuanghao` varchar(200) DEFAULT NULL COMMENT '床号 Search111 ',
  `shifoushiyong_types` int(11) DEFAULT NULL COMMENT '是否使用',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='病床';

/*Data for the table `bingchuang` */

insert  into `bingchuang`(`id`,`bingchuang_uuid_number`,`fangjian_name`,`fangjian_address`,`chuanghao`,`shifoushiyong_types`,`insert_time`,`create_time`) values (1,'16493833407591','房间名1','房间位置1','床号1',1,'2022-04-08 10:02:20','2022-04-08 10:02:20'),(2,'16493833407591','房间名2','房间位置2','床号2',1,'2022-04-08 10:02:20','2022-04-08 10:02:20'),(3,'164938334075920','房间名3','房间位置3','床号3',1,'2022-04-08 10:02:20','2022-04-08 10:02:20'),(4,'16493833407590','房间名4','房间位置4','床号4',1,'2022-04-08 10:02:20','2022-04-08 10:02:20'),(5,'164938334075918','房间名5','房间位置5','床号5',1,'2022-04-08 10:02:20','2022-04-08 10:02:20');

/*Table structure for table `bingchuang_shiyong` */

DROP TABLE IF EXISTS `bingchuang_shiyong`;

CREATE TABLE `bingchuang_shiyong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `bingchuang_id` int(11) DEFAULT NULL COMMENT '病床',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病房使用唯一编号 Search111 ',
  `ruzhu_time` timestamp NULL DEFAULT NULL COMMENT '入住时间',
  `likai_time` timestamp NULL DEFAULT NULL COMMENT '离开时间',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='病床使用';

/*Data for the table `bingchuang_shiyong` */

insert  into `bingchuang_shiyong`(`id`,`huanzhe_id`,`bingchuang_id`,`bingli_uuid_number`,`ruzhu_time`,`likai_time`,`zhuangtai_types`,`insert_time`,`create_time`) values (6,3,4,'1649384809750','2022-04-08 10:26:56','2022-04-08 10:43:39',2,'2022-04-08 10:26:58','2022-04-08 10:26:58'),(7,3,3,'1649385972006','2022-04-08 10:46:21','2022-04-08 10:48:02',2,'2022-04-08 10:46:22','2022-04-08 10:46:22');

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号 Search111 ',
  `zhuyuan_time` timestamp NULL DEFAULT NULL COMMENT '住院时间',
  `yichuan_text` text COMMENT '遗传史',
  `zhusu_text` text COMMENT '患者主诉 ',
  `zhenduan_text` text COMMENT '诊断结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='病例';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`huanzhe_id`,`bingli_uuid_number`,`zhuyuan_time`,`yichuan_text`,`zhusu_text`,`zhenduan_text`,`insert_time`,`create_time`) values (1,2,'164938334076815','2022-04-08 10:02:20','遗传史1','患者主诉1','诊断结果1','2022-04-08 10:02:20','2022-04-08 10:02:20'),(2,2,'16493833407687','2022-04-08 10:02:20','遗传史2','患者主诉2','诊断结果2','2022-04-08 10:02:20','2022-04-08 10:02:20'),(3,3,'16493833407685','2022-04-08 10:02:20','遗传史3','患者主诉3','诊断结果3','2022-04-08 10:02:20','2022-04-08 10:02:20'),(4,2,'16493833407684','2022-04-08 10:02:20','遗传史4','患者主诉4','诊断结果4','2022-04-08 10:02:20','2022-04-08 10:02:20'),(5,3,'16493833407688','2022-04-08 10:02:20','遗传史5','患者主诉5','诊断结果5','2022-04-08 10:02:20','2022-04-08 10:02:20'),(6,3,'1649385900814','2022-04-15 00:00:00','遗传史1111','主诉1111','诊断结果1211','2022-04-08 10:45:27','2022-04-08 10:45:27');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-08 10:02:08'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-08 10:02:08'),(3,'keshi_types','科室',1,'骨科 ',NULL,NULL,'2022-04-08 10:02:08'),(4,'keshi_types','科室',2,'眼科',NULL,NULL,'2022-04-08 10:02:08'),(5,'keshi_types','科室',3,'耳鼻喉科',NULL,NULL,'2022-04-08 10:02:08'),(6,'zhiwei_types','职位',1,'普通医生 ',NULL,NULL,'2022-04-08 10:02:08'),(7,'zhiwei_types','职位',2,'主治医生',NULL,NULL,'2022-04-08 10:02:08'),(8,'zhiwei_types','职位',3,'主任',NULL,NULL,'2022-04-08 10:02:08'),(9,'yihurenyuan_zhiwei_types','医护职位',1,'普通医护',NULL,NULL,'2022-04-08 10:02:08'),(10,'yihurenyuan_zhiwei_types','医护职位',2,'护士长',NULL,NULL,'2022-04-08 10:02:08'),(11,'hunyin_types','婚姻',1,'未婚',NULL,NULL,'2022-04-08 10:02:08'),(12,'hunyin_types','婚姻',2,'已婚',NULL,NULL,'2022-04-08 10:02:08'),(13,'hunyin_types','婚姻',3,'离异',NULL,NULL,'2022-04-08 10:02:08'),(14,'hunyin_types','婚姻',4,'丧偶',NULL,NULL,'2022-04-08 10:02:09'),(15,'shifoushiyong_types','是否使用',1,'未使用',NULL,NULL,'2022-04-08 10:02:09'),(16,'shifoushiyong_types','是否使用',2,'已使用',NULL,NULL,'2022-04-08 10:02:09'),(17,'zhuangtai_types','状态',1,'入住',NULL,NULL,'2022-04-08 10:02:09'),(18,'zhuangtai_types','状态',2,'离开',NULL,NULL,'2022-04-08 10:02:09'),(19,'yaopin_types','药品类型',1,'药品类型1',NULL,NULL,'2022-04-08 10:02:09'),(20,'yaopin_types','药品类型',2,'药品类型2',NULL,NULL,'2022-04-08 10:02:09'),(21,'yaopin_types','药品类型',3,'药品类型3',NULL,NULL,'2022-04-08 10:02:09'),(22,'yaopin_types','药品类型',4,'药品类型4',NULL,NULL,'2022-04-08 10:02:09'),(23,'kaifang_types','开方类型',1,'开方类型1',NULL,NULL,'2022-04-08 10:02:09'),(24,'kaifang_types','开方类型',2,'开方类型2',NULL,NULL,'2022-04-08 10:02:09'),(25,'kaifang_types','开方类型',3,'开方类型3',NULL,NULL,'2022-04-08 10:02:09'),(26,'kaifang_types','开方类型',4,'开方类型4',NULL,NULL,'2022-04-08 10:02:09'),(27,'kaifang_types','开方类型',5,'开方类型5',NULL,'','2022-04-08 10:44:24');

/*Table structure for table `huanzhe` */

DROP TABLE IF EXISTS `huanzhe`;

CREATE TABLE `huanzhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huanzhe_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `huanzhe_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号',
  `huanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号',
  `huanzhe_photo` varchar(200) DEFAULT NULL COMMENT '患者照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `huanzhe_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `hunyin_types` int(11) DEFAULT NULL COMMENT '婚姻',
  `xian_address` varchar(200) DEFAULT NULL COMMENT '现住址',
  `huji_address` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `huanzhe` */

insert  into `huanzhe`(`id`,`username`,`password`,`huanzhe_name`,`huanzhe_phone`,`huanzhe_id_number`,`huanzhe_photo`,`sex_types`,`age`,`huanzhe_email`,`hunyin_types`,`xian_address`,`huji_address`,`create_time`) values (1,'a1','123456','患者姓名1','17703786901','410224199610232001','http://localhost:8080/bingfangguanlixitong/upload/huanzhe1.jpg',2,203,'1@qq.com',2,'现住址1','户籍地址1','2022-04-08 10:02:20'),(2,'a2','123456','患者姓名2','17703786902','410224199610232002','http://localhost:8080/bingfangguanlixitong/upload/huanzhe2.jpg',1,306,'2@qq.com',4,'现住址2','户籍地址2','2022-04-08 10:02:20'),(3,'a3','123456','患者姓名3','17703786903','410224199610232003','http://localhost:8080/bingfangguanlixitong/upload/huanzhe3.jpg',2,75,'3@qq.com',2,'现住址3','户籍地址3','2022-04-08 10:02:20');

/*Table structure for table `kaifang` */

DROP TABLE IF EXISTS `kaifang`;

CREATE TABLE `kaifang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `kaifang_uuid_number` varchar(200) DEFAULT NULL COMMENT '开方编号  Search111 ',
  `kaifang_name` varchar(200) DEFAULT NULL COMMENT '药方名称  Search111 ',
  `kaifang_types` int(11) DEFAULT NULL COMMENT '开方类型 Search111',
  `kaifang_content` text COMMENT '开方内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '开方时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='开方';

/*Data for the table `kaifang` */

insert  into `kaifang`(`id`,`huanzhe_id`,`kaifang_uuid_number`,`kaifang_name`,`kaifang_types`,`kaifang_content`,`insert_time`,`create_time`) values (1,2,'16493833407726','药方名称1',2,'开方内容1','2022-04-08 10:02:20','2022-04-08 10:02:20'),(2,2,'16493833407721','药方名称2',3,'开方内容2','2022-04-08 10:02:20','2022-04-08 10:02:20'),(3,3,'16493833407722','药方名称3',3,'开方内容3','2022-04-08 10:02:20','2022-04-08 10:02:20'),(4,2,'16493833407730','药方名称4',3,'开方内容4','2022-04-08 10:02:20','2022-04-08 10:02:20'),(5,3,'16493833407738','药方名称5',4,'开方内容5','2022-04-08 10:02:20','2022-04-08 10:02:20'),(6,3,'1649385931222','药方名称111',5,'<p>药方内容 www</p>','2022-04-08 10:45:50','2022-04-08 10:45:50');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','pj9m7q9ln8qfzojn3eykprmjs2xeqpgj','2022-04-08 10:05:42','2022-04-08 11:44:09'),(2,1,'a1','yihurenyuan','医护人员','1j64exak3rmoajljiy5k5mur8xbbos8j','2022-04-08 10:22:20','2022-04-08 11:46:05'),(3,1,'a1','yisheng','医生','uw93hsjmnv6lr5fkhpa3eb62vzyy5osb','2022-04-08 10:44:52','2022-04-08 11:44:52'),(4,1,'a1','huanzhe','患者','stmnyd3tbwdclxhdryejxhpu44ksvh1i','2022-04-08 10:48:18','2022-04-08 11:48:19'),(5,2,'a2','huanzhe','患者','j2ms9jo6gkn12203f2zhvptz11xpz66z','2022-04-08 10:48:34','2022-04-08 11:48:35'),(6,3,'a3','huanzhe','患者','8u2xsdxgwfjzps7h0g5evlfi5xdp8fff','2022-04-08 10:48:42','2022-04-08 11:48:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yaopin` */

DROP TABLE IF EXISTS `yaopin`;

CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_uuid_number` varchar(200) DEFAULT NULL COMMENT '药品编号  Search111 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int(11) DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int(11) DEFAULT NULL COMMENT '库存数量',
  `yaopin_content` text COMMENT '药品详细介绍 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='药品';

/*Data for the table `yaopin` */

insert  into `yaopin`(`id`,`yaopin_uuid_number`,`yaopin_name`,`yaopin_photo`,`yaopin_types`,`yaopin_kucun_number`,`yaopin_content`,`create_time`) values (1,'16493833407769','药品名称1','http://localhost:8080/bingfangguanlixitong/upload/yaopin1.jpg',4,101,'药品详细介绍1','2022-04-08 10:02:20'),(2,'164938334077615','药品名称2','http://localhost:8080/bingfangguanlixitong/upload/yaopin2.jpg',4,102,'药品详细介绍2','2022-04-08 10:02:20'),(3,'16493833407765','药品名称3','http://localhost:8080/bingfangguanlixitong/upload/yaopin3.jpg',4,103,'药品详细介绍3','2022-04-08 10:02:20'),(4,'164938334077618','药品名称4','http://localhost:8080/bingfangguanlixitong/upload/yaopin4.jpg',1,104,'药品详细介绍4','2022-04-08 10:02:20'),(5,'164938334077611','药品名称5','http://localhost:8080/bingfangguanlixitong/upload/yaopin5.jpg',4,106,'药品详细介绍5','2022-04-08 10:02:20');

/*Table structure for table `yihurenyuan` */

DROP TABLE IF EXISTS `yihurenyuan`;

CREATE TABLE `yihurenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yihurenyuan_name` varchar(200) DEFAULT NULL COMMENT '医护人员姓名 Search111 ',
  `yihurenyuan_phone` varchar(200) DEFAULT NULL COMMENT '医护人员手机号',
  `yihurenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '医护人员身份证号',
  `yihurenyuan_photo` varchar(200) DEFAULT NULL COMMENT '医护人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yihurenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yihurenyuan_zhiwei_types` int(11) DEFAULT NULL COMMENT '医护职位',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医护人员';

/*Data for the table `yihurenyuan` */

insert  into `yihurenyuan`(`id`,`username`,`password`,`yihurenyuan_name`,`yihurenyuan_phone`,`yihurenyuan_id_number`,`yihurenyuan_photo`,`sex_types`,`yihurenyuan_email`,`yihurenyuan_zhiwei_types`,`create_time`) values (1,'a1','123456','医护人员姓名1','17703786901','410224199610232001','http://localhost:8080/bingfangguanlixitong/upload/yihurenyuan1.jpg',1,'1@qq.com',1,'2022-04-08 10:02:20'),(2,'a2','123456','医护人员姓名2','17703786902','410224199610232002','http://localhost:8080/bingfangguanlixitong/upload/yihurenyuan2.jpg',2,'2@qq.com',2,'2022-04-08 10:02:20'),(3,'a3','123456','医护人员姓名3','17703786903','410224199610232003','http://localhost:8080/bingfangguanlixitong/upload/yihurenyuan3.jpg',1,'3@qq.com',1,'2022-04-08 10:02:20');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `keshi_types` int(11) DEFAULT NULL COMMENT '科室',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位',
  `yisheng_shanchang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `yisheng_rongyu` varchar(200) DEFAULT NULL COMMENT '所获荣誉',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_phone`,`yisheng_id_number`,`yisheng_photo`,`sex_types`,`yisheng_email`,`keshi_types`,`zhiwei_types`,`yisheng_shanchang`,`yisheng_rongyu`,`create_time`) values (1,'a1','123456','医生姓名1','17703786901','410224199610232001','http://localhost:8080/bingfangguanlixitong/upload/yisheng1.jpg',1,'1@qq.com',1,2,'擅长1','所获荣誉1','2022-04-08 10:02:20'),(2,'a2','123456','医生姓名2','17703786902','410224199610232002','http://localhost:8080/bingfangguanlixitong/upload/yisheng2.jpg',1,'2@qq.com',1,1,'擅长2','所获荣誉2','2022-04-08 10:02:20'),(3,'a3','123456','医生姓名3','17703786903','410224199610232003','http://localhost:8080/bingfangguanlixitong/upload/yisheng3.jpg',1,'3@qq.com',1,1,'擅长3','所获荣誉3','2022-04-08 10:02:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
