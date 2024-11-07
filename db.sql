/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmpulc7
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmpulc7` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmpulc7`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (41,'2021-04-21 17:41:28','班级1');
insert  into `banji`(`id`,`addtime`,`banji`) values (42,'2021-04-21 17:41:28','班级2');
insert  into `banji`(`id`,`addtime`,`banji`) values (43,'2021-04-21 17:41:28','班级3');
insert  into `banji`(`id`,`addtime`,`banji`) values (44,'2021-04-21 17:41:28','班级4');
insert  into `banji`(`id`,`addtime`,`banji`) values (45,'2021-04-21 17:41:28','班级5');
insert  into `banji`(`id`,`addtime`,`banji`) values (46,'2021-04-21 17:41:28','班级6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmpulc7/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmpulc7/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmpulc7/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (71,'2021-04-21 17:41:28','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (72,'2021-04-21 17:41:28','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (73,'2021-04-21 17:41:28','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (74,'2021-04-21 17:41:28','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (75,'2021-04-21 17:41:28','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (76,'2021-04-21 17:41:28','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jieshu` */

DROP TABLE IF EXISTS `jieshu`;

CREATE TABLE `jieshu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieshu` varchar(200) DEFAULT NULL COMMENT '届数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='届数';

/*Data for the table `jieshu` */

insert  into `jieshu`(`id`,`addtime`,`jieshu`) values (51,'2021-04-21 17:41:28','届数1');
insert  into `jieshu`(`id`,`addtime`,`jieshu`) values (52,'2021-04-21 17:41:28','届数2');
insert  into `jieshu`(`id`,`addtime`,`jieshu`) values (53,'2021-04-21 17:41:28','届数3');
insert  into `jieshu`(`id`,`addtime`,`jieshu`) values (54,'2021-04-21 17:41:28','届数4');
insert  into `jieshu`(`id`,`addtime`,`jieshu`) values (55,'2021-04-21 17:41:28','届数5');
insert  into `jieshu`(`id`,`addtime`,`jieshu`) values (56,'2021-04-21 17:41:28','届数6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-04-21 17:41:29',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2021-04-21 17:41:29',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (93,'2021-04-21 17:41:29',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2021-04-21 17:41:29',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2021-04-21 17:41:29',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2021-04-21 17:41:29',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-21 17:41:29','标题1','简介1','http://localhost:8080/ssmpulc7/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-21 17:41:29','标题2','简介2','http://localhost:8080/ssmpulc7/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-21 17:41:29','标题3','简介3','http://localhost:8080/ssmpulc7/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-04-21 17:41:29','标题4','简介4','http://localhost:8080/ssmpulc7/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-21 17:41:29','标题5','简介5','http://localhost:8080/ssmpulc7/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-21 17:41:29','标题6','简介6','http://localhost:8080/ssmpulc7/upload/news_picture6.jpg','内容6');

/*Table structure for table `suozaichengshi` */

DROP TABLE IF EXISTS `suozaichengshi`;

CREATE TABLE `suozaichengshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='所在城市';

/*Data for the table `suozaichengshi` */

insert  into `suozaichengshi`(`id`,`addtime`,`suozaichengshi`) values (21,'2021-04-21 17:41:28','所在城市1');
insert  into `suozaichengshi`(`id`,`addtime`,`suozaichengshi`) values (22,'2021-04-21 17:41:28','所在城市2');
insert  into `suozaichengshi`(`id`,`addtime`,`suozaichengshi`) values (23,'2021-04-21 17:41:28','所在城市3');
insert  into `suozaichengshi`(`id`,`addtime`,`suozaichengshi`) values (24,'2021-04-21 17:41:28','所在城市4');
insert  into `suozaichengshi`(`id`,`addtime`,`suozaichengshi`) values (25,'2021-04-21 17:41:28','所在城市5');
insert  into `suozaichengshi`(`id`,`addtime`,`suozaichengshi`) values (26,'2021-04-21 17:41:28','所在城市6');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','nojd1ax4who3y09wg96ilm66ybavi80g','2021-04-21 17:43:06','2021-04-21 18:43:06');

/*Table structure for table `tongxuelu` */

DROP TABLE IF EXISTS `tongxuelu`;

CREATE TABLE `tongxuelu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongxuelumingcheng` varchar(200) DEFAULT NULL COMMENT '同学录名称',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `jieshu` varchar(200) DEFAULT NULL COMMENT '届数',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tongxueliebiao` longtext COMMENT '同学列表',
  `banjixiangce` longtext COMMENT '班级相册',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `chuangjianshijian` date DEFAULT NULL COMMENT '创建时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='同学录';

/*Data for the table `tongxuelu` */

insert  into `tongxuelu`(`id`,`addtime`,`tongxuelumingcheng`,`xuexiaomingcheng`,`suozaichengshi`,`jieshu`,`banji`,`tongxueliebiao`,`banjixiangce`,`fujian`,`chuangjianshijian`,`tupian`,`zhanghao`,`xingming`,`userid`) values (61,'2021-04-21 17:41:28','同学录名称1','学校名称1','所在城市1','届数1','班级1','同学列表1','班级相册1','','2021-04-21','http://localhost:8080/ssmpulc7/upload/tongxuelu_tupian1.jpg','账号1','姓名1',1);
insert  into `tongxuelu`(`id`,`addtime`,`tongxuelumingcheng`,`xuexiaomingcheng`,`suozaichengshi`,`jieshu`,`banji`,`tongxueliebiao`,`banjixiangce`,`fujian`,`chuangjianshijian`,`tupian`,`zhanghao`,`xingming`,`userid`) values (62,'2021-04-21 17:41:28','同学录名称2','学校名称2','所在城市2','届数2','班级2','同学列表2','班级相册2','','2021-04-21','http://localhost:8080/ssmpulc7/upload/tongxuelu_tupian2.jpg','账号2','姓名2',2);
insert  into `tongxuelu`(`id`,`addtime`,`tongxuelumingcheng`,`xuexiaomingcheng`,`suozaichengshi`,`jieshu`,`banji`,`tongxueliebiao`,`banjixiangce`,`fujian`,`chuangjianshijian`,`tupian`,`zhanghao`,`xingming`,`userid`) values (63,'2021-04-21 17:41:28','同学录名称3','学校名称3','所在城市3','届数3','班级3','同学列表3','班级相册3','','2021-04-21','http://localhost:8080/ssmpulc7/upload/tongxuelu_tupian3.jpg','账号3','姓名3',3);
insert  into `tongxuelu`(`id`,`addtime`,`tongxuelumingcheng`,`xuexiaomingcheng`,`suozaichengshi`,`jieshu`,`banji`,`tongxueliebiao`,`banjixiangce`,`fujian`,`chuangjianshijian`,`tupian`,`zhanghao`,`xingming`,`userid`) values (64,'2021-04-21 17:41:28','同学录名称4','学校名称4','所在城市4','届数4','班级4','同学列表4','班级相册4','','2021-04-21','http://localhost:8080/ssmpulc7/upload/tongxuelu_tupian4.jpg','账号4','姓名4',4);
insert  into `tongxuelu`(`id`,`addtime`,`tongxuelumingcheng`,`xuexiaomingcheng`,`suozaichengshi`,`jieshu`,`banji`,`tongxueliebiao`,`banjixiangce`,`fujian`,`chuangjianshijian`,`tupian`,`zhanghao`,`xingming`,`userid`) values (65,'2021-04-21 17:41:28','同学录名称5','学校名称5','所在城市5','届数5','班级5','同学列表5','班级相册5','','2021-04-21','http://localhost:8080/ssmpulc7/upload/tongxuelu_tupian5.jpg','账号5','姓名5',5);
insert  into `tongxuelu`(`id`,`addtime`,`tongxuelumingcheng`,`xuexiaomingcheng`,`suozaichengshi`,`jieshu`,`banji`,`tongxueliebiao`,`banjixiangce`,`fujian`,`chuangjianshijian`,`tupian`,`zhanghao`,`xingming`,`userid`) values (66,'2021-04-21 17:41:28','同学录名称6','学校名称6','所在城市6','届数6','班级6','同学列表6','班级相册6','','2021-04-21','http://localhost:8080/ssmpulc7/upload/tongxuelu_tupian6.jpg','账号6','姓名6',6);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 17:41:29');

/*Table structure for table `xuexiaomingcheng` */

DROP TABLE IF EXISTS `xuexiaomingcheng`;

CREATE TABLE `xuexiaomingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学校名称';

/*Data for the table `xuexiaomingcheng` */

insert  into `xuexiaomingcheng`(`id`,`addtime`,`xuexiaomingcheng`) values (31,'2021-04-21 17:41:28','学校名称1');
insert  into `xuexiaomingcheng`(`id`,`addtime`,`xuexiaomingcheng`) values (32,'2021-04-21 17:41:28','学校名称2');
insert  into `xuexiaomingcheng`(`id`,`addtime`,`xuexiaomingcheng`) values (33,'2021-04-21 17:41:28','学校名称3');
insert  into `xuexiaomingcheng`(`id`,`addtime`,`xuexiaomingcheng`) values (34,'2021-04-21 17:41:28','学校名称4');
insert  into `xuexiaomingcheng`(`id`,`addtime`,`xuexiaomingcheng`) values (35,'2021-04-21 17:41:28','学校名称5');
insert  into `xuexiaomingcheng`(`id`,`addtime`,`xuexiaomingcheng`) values (36,'2021-04-21 17:41:28','学校名称6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `jieshu` varchar(200) DEFAULT NULL COMMENT '届数',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`suozaichengshi`,`xuexiaomingcheng`,`jieshu`,`banji`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-21 17:41:28','用户1','123456','姓名1','男',1,'所在城市1','学校名称1','届数1','班级1','13823888881','773890001@qq.com','http://localhost:8080/ssmpulc7/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`suozaichengshi`,`xuexiaomingcheng`,`jieshu`,`banji`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-21 17:41:28','用户2','123456','姓名2','男',2,'所在城市2','学校名称2','届数2','班级2','13823888882','773890002@qq.com','http://localhost:8080/ssmpulc7/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`suozaichengshi`,`xuexiaomingcheng`,`jieshu`,`banji`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-21 17:41:28','用户3','123456','姓名3','男',3,'所在城市3','学校名称3','届数3','班级3','13823888883','773890003@qq.com','http://localhost:8080/ssmpulc7/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`suozaichengshi`,`xuexiaomingcheng`,`jieshu`,`banji`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-21 17:41:28','用户4','123456','姓名4','男',4,'所在城市4','学校名称4','届数4','班级4','13823888884','773890004@qq.com','http://localhost:8080/ssmpulc7/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`suozaichengshi`,`xuexiaomingcheng`,`jieshu`,`banji`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-21 17:41:28','用户5','123456','姓名5','男',5,'所在城市5','学校名称5','届数5','班级5','13823888885','773890005@qq.com','http://localhost:8080/ssmpulc7/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`suozaichengshi`,`xuexiaomingcheng`,`jieshu`,`banji`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-21 17:41:28','用户6','123456','姓名6','男',6,'所在城市6','学校名称6','届数6','班级6','13823888886','773890006@qq.com','http://localhost:8080/ssmpulc7/upload/yonghu_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
