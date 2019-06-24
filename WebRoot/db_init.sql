/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.21-log : Database - goods
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`goods` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `goods`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `adminId` char(32) NOT NULL,
  `adminname` varchar(50) DEFAULT NULL,
  `adminpwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`adminId`,`adminname`,`adminpwd`) values ('a1','admin','admin'),('a2','zsp','cmj'),('a3','cmj','123');

/*Table structure for table `t_book` */

DROP TABLE IF EXISTS `t_book`;

CREATE TABLE `t_book` (
  `bid` char(32) NOT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `discount` decimal(3,1) DEFAULT NULL,
  `press` varchar(100) DEFAULT NULL,
  `publishtime` char(10) DEFAULT NULL,
  `edition` int(11) DEFAULT NULL,
  `pageNum` int(11) DEFAULT NULL,
  `wordNum` int(11) DEFAULT NULL,
  `printtime` char(10) DEFAULT NULL,
  `booksize` int(11) DEFAULT NULL,
  `paper` varchar(50) DEFAULT NULL,
  `cid` char(32) DEFAULT NULL,
  `image_w` varchar(100) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bid`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_book_t_category` (`cid`),
  CONSTRAINT `FK_t_book_t_category` FOREIGN KEY (`cid`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

/*Data for the table `t_book` */

insert  into `t_book`(`bid`,`bname`,`author`,`price`,`currPrice`,`discount`,`press`,`publishtime`,`edition`,`pageNum`,`wordNum`,`printtime`,`booksize`,`paper`,`cid`,`image_w`,`image_b`,`orderBy`) values ('000A18FDB38F470DBE9CD0972BADB23F','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','79.80','59.80','7.5','机械工业出版社','2019-06-01',1,640,1000,'2019-06-01',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',1),('113D0D1BB9174DD19A7DE7E2B37F677F','2020考研英语一黄皮书张剑历年考研英语真题解析及复习思路试卷版2005-2014世纪高教搭朱伟恋练有词高分写作','张剑','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/1_w.jpg','book_img/1_w.jpg',3),('1286B13F0EA54E4CB75434762121486A','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',35),('13EBF9B1FDE346A683A1C45BD6773ECB','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',5),('210A3DCA429049C78B623C3986BEB136','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',12),('33ACF97A9A374352AE9F5E89BB791262','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',16),('3AE5C8B976B6448A9D3A155C1BDE12BC','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',13),('3E1990E19989422E9DA735978CB1E4CE','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',14),('4A9574F03A6B40C1B2A437237C17DEEC','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',18),('4D20D2450B084113A331D909FF4975EB','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,1124,1918000,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/4_w.jpg','book_img/4_b.jpg',6),('6818BA5BA2FC441FA1950F962BED2AB6','2020考研英语一黄皮书张剑历年考研英语真题解析及复习思路试卷版2005-2014世纪高教搭朱伟恋练有词高分写作','张剑','157.00','139.80','8.9','世界图书出版社','2019-06-02',1,66,3900,'2019-06-02',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/1_w.jpg','book_img/1_b.jpg',8),('B05D5BC8357440DEABF8F864231303BC','红宝书2020版考研英语词汇英语一英语二通用 考研英语单词书红宝书必考词基础词超纲词历年真题搭配英语二','考研英语命题组','66.00','52.10','7.9','西北大学出版社','2019-06-16',1,3900,0,'2019-06-09',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/2_w.jpg','book_img/2_b.jpg',9),('BB5D0316232544C1A1D5D5DE1F748AF0','新东方考研英语2020 考研英语词汇词根加联想记忆法乱序版 绿宝书 俞敏洪 考研英语一二 单词书搭2020恋练有词肖秀荣','俞敏洪','66.00','52.10','7.9',' 群言出版社','2019-06-01',1,666,36000,'2019-06-01',16,'胶版纸','C3F9FAAF4EA64857ACFAB0D9C8D0E446','book_img/3_w.jpg','book_img/3_b.jpg',10),('CE01F15D435A4C51B0AD8202A318DCA7','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','张宇','79.80','59.80','6.9','机械工业出版社','2019-06-01',1,880,6000,'2019-06-01',16,'胶版纸','5F79D0D246AD4216AC04E9C5FAB3199E','book_img/4_w.jpg','book_img/4_b.jpg',2);

/*Table structure for table `t_cartitem` */

DROP TABLE IF EXISTS `t_cartitem`;

CREATE TABLE `t_cartitem` (
  `cartItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cartItemId`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_cartitem_t_user` (`uid`),
  KEY `FK_t_cartitem_t_book` (`bid`),
  CONSTRAINT `FK_t_cartitem_t_book` FOREIGN KEY (`bid`) REFERENCES `t_book` (`bid`),
  CONSTRAINT `FK_t_cartitem_t_user` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `t_cartitem` */

insert  into `t_cartitem`(`cartItemId`,`quantity`,`bid`,`uid`,`orderBy`) values ('B8939FC55131469CAB11E3924D40185B',1,'CE01F15D435A4C51B0AD8202A318DCA7','xxx',11);

/*Table structure for table `t_category` */

DROP TABLE IF EXISTS `t_category`;

CREATE TABLE `t_category` (
  `cid` char(32) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `pid` char(32) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cname` (`cname`),
  KEY `FK_t_category_t_category` (`pid`),
  KEY `orderBy` (`orderBy`),
  CONSTRAINT `FK_t_category_t_category` FOREIGN KEY (`pid`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `t_category` */

insert  into `t_category`(`cid`,`cname`,`pid`,`desc`,`orderBy`) values ('1','教育科技',NULL,'教育科技',1),('2','人文社科',NULL,'人文社科',2),('3','时尚生活',NULL,'时尚生活',3),('4','经管/励志',NULL,'经管/励志',4),('4D01FFF0CB94468EA907EF42780668AB','哲学','2','哲学分类',18),('5','儿童专区',NULL,'儿童专区',5),('56AD72718C524147A2485E5F4A95A062','居家','3','居家分类',21),('5F79D0D246AD4216AC04E9C5FAB3199E','计算机/网络','1','计算机分类',10),('6','科技专区',NULL,'科技专区',6),('715C8D7546334F8994BE4A5BDCF5E304','童话故事','5','童话故事分类',37),('757BDAB506A445EC8DEDA4CE04303B9F','美食','3','美食分类',22),('84ECE401C2904DBEA560D04A581A66D9','工业技术','1','工业技术分类',13),('87D4092689CA4C2BA8B6D93FF05B38DE','武侠小说','AAE33B89B03C408FBBA00C506E20E4C5','武侠小说分类',39),('922E6E2DB04143D39C9DDB26365B3EE8','自然科学','1','自然科学分类',12),('AAE33B89B03C408FBBA00C506E20E4C5','小说专区',NULL,'小说专区',36),('AF6CE2DD05CD4FF9BBA90BF1A9ADC666','航空','6','航空分类',38),('B92ED191DBE647BE8F75721FB231E207','法律','2','法律分类',19),('C3F9FAAF4EA64857ACFAB0D9C8D0E446','考研','1','考研分类',14),('C4DD8CA232864B31A367EE135D86382C','历史军事','2','历史军事分类',17),('D45D96DA359A4FEAB3AB4DCF2157FC06','外语','1','外语分类',11),('F5C091B3967442A2B35EFEFC4EF8746F','文学小说','2','文学小说',16),('FAB7B7F7084F4D57A0808ADC61117683','投资理财','4','投资理财',26);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `oid` char(32) NOT NULL,
  `ordertime` char(19) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK_t_order_t_user` (`uid`),
  CONSTRAINT `FK_t_order_t_user` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`oid`,`ordertime`,`total`,`status`,`address`,`uid`) values ('86C01A7D9B834318B3D921089B79D1EC','2019-06-23 17:26:39','139.80',1,'重庆市 北碚区 zzz','319AA7C44C3A4FC287FB4426B638B983'),('D59C822839884585A807C967E2C27CB8','2019-06-23 17:22:27','59.80',5,'重庆市 北碚区 zzz ','319AA7C44C3A4FC287FB4426B638B983'),('F4787A388AD549088D8EA6DE4C421203','2019-06-23 17:32:40','52.10',5,'重庆市 北碚区 zzz','319AA7C44C3A4FC287FB4426B638B983'),('F47951C27B894C66AF5C88B96FA19EE3','2019-06-23 17:34:31','119.60',5,'北京市 海淀区','319AA7C44C3A4FC287FB4426B638B983');

/*Table structure for table `t_orderitem` */

DROP TABLE IF EXISTS `t_orderitem`;

CREATE TABLE `t_orderitem` (
  `orderItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `oid` char(32) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `FK_t_orderitem_t_order` (`oid`),
  CONSTRAINT `FK_t_orderitem_t_order` FOREIGN KEY (`oid`) REFERENCES `t_order` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_orderitem` */

insert  into `t_orderitem`(`orderItemId`,`quantity`,`subtotal`,`bid`,`bname`,`currPrice`,`image_b`,`oid`) values ('190D55C9DE4640F5B681DFA36AA6421B',2,'119.60','CE01F15D435A4C51B0AD8202A318DCA7','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','59.80','book_img/4_b.jpg','F47951C27B894C66AF5C88B96FA19EE3'),('69B22CF3AE4A4D36BCB974080049A38F',1,'59.80','000A18FDB38F470DBE9CD0972BADB23F','2020考研数学一张宇 高数18讲+线代9讲+概率论9讲+1000题(5册)张宇高数十八讲1000题数学一张宇36讲','59.80','book_img/4_b.jpg','D59C822839884585A807C967E2C27CB8'),('E840E4EA26DB44FCBC3CC13A4685ABA6',1,'139.80','113D0D1BB9174DD19A7DE7E2B37F677F','2020考研英语一黄皮书张剑历年考研英语真题解析及复习思路试卷版2005-2014世纪高教搭朱伟恋练有词高分写作','139.80','book_img/1_w.jpg','86C01A7D9B834318B3D921089B79D1EC'),('FDE6214E96B14CAF94D7292F1CC0853A',1,'52.10','B05D5BC8357440DEABF8F864231303BC','红宝书2020版考研英语词汇英语一英语二通用 考研英语单词书红宝书必考词基础词超纲词历年真题搭配英语二','52.10','book_img/2_b.jpg','F4787A388AD549088D8EA6DE4C421203');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `uid` char(32) NOT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `loginpass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `activationCode` char(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `loginname` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`uid`,`loginname`,`loginpass`,`email`,`status`,`activationCode`) values ('319AA7C44C3A4FC287FB4426B638B983','zzz','011','2546241386@qq.com',1,'92BBD766C092418381EAA82405765F48CA75F77070DC43A9B9CDB9951805980E'),('3E311615260C47B1A7E7AFA18E395C0C','cmj','011','2983149151@qq.com',1,'0A0222EB65A14B5EAC00196A910D55E1356FE7E16EE649DAAA0794FFBAB001C9'),('69A970EE10814E7D9C036136E7068455','zzzsss','011','itcast_cx@163.com',0,'AC2B82D9C5DE4B298D12CEC344358C6537934350B1404248A4F670538AC05DAB'),('xxx','张三','123','zhangFei@163.com',1,'xxx');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
