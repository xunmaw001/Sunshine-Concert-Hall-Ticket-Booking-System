-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot9z622
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot9z622`
--

/*!40000 DROP DATABASE IF EXISTS `springboot9z622`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot9z622` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot9z622`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiemuxinxi`
--

DROP TABLE IF EXISTS `discussjiemuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiemuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='节目信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiemuxinxi`
--

LOCK TABLES `discussjiemuxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiemuxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjiemuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyinlehui`
--

DROP TABLE IF EXISTS `discussyinlehui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyinlehui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='音乐会评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyinlehui`
--

LOCK TABLES `discussyinlehui` WRITE;
/*!40000 ALTER TABLE `discussyinlehui` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussyinlehui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiemuxinxi`
--

DROP TABLE IF EXISTS `jiemuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiemuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiemumingcheng` varchar(200) NOT NULL COMMENT '节目名称',
  `fengmian` longtext COMMENT '封面',
  `biaoyanshijian` datetime NOT NULL COMMENT '表演时间',
  `geshou` varchar(200) NOT NULL COMMENT '歌手',
  `yinlehuimingcheng` varchar(200) NOT NULL COMMENT '音乐会名称',
  `jiemuxiangqing` longtext COMMENT '节目详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='节目信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiemuxinxi`
--

LOCK TABLES `jiemuxinxi` WRITE;
/*!40000 ALTER TABLE `jiemuxinxi` DISABLE KEYS */;
INSERT INTO `jiemuxinxi` VALUES (41,'2023-04-28 12:29:24','节目名称1','upload/jiemuxinxi_fengmian1.jpg,upload/jiemuxinxi_fengmian2.jpg,upload/jiemuxinxi_fengmian3.jpg','2023-04-28 20:29:24','歌手1','音乐会名称1','节目详情1'),(42,'2023-04-28 12:29:24','节目名称2','upload/jiemuxinxi_fengmian2.jpg,upload/jiemuxinxi_fengmian3.jpg,upload/jiemuxinxi_fengmian4.jpg','2023-04-28 20:29:24','歌手2','音乐会名称2','节目详情2'),(43,'2023-04-28 12:29:24','节目名称3','upload/jiemuxinxi_fengmian3.jpg,upload/jiemuxinxi_fengmian4.jpg,upload/jiemuxinxi_fengmian5.jpg','2023-04-28 20:29:24','歌手3','音乐会名称3','节目详情3'),(44,'2023-04-28 12:29:24','节目名称4','upload/jiemuxinxi_fengmian4.jpg,upload/jiemuxinxi_fengmian5.jpg,upload/jiemuxinxi_fengmian6.jpg','2023-04-28 20:29:24','歌手4','音乐会名称4','节目详情4'),(45,'2023-04-28 12:29:24','节目名称5','upload/jiemuxinxi_fengmian5.jpg,upload/jiemuxinxi_fengmian6.jpg,upload/jiemuxinxi_fengmian7.jpg','2023-04-28 20:29:24','歌手5','音乐会名称5','节目详情5'),(46,'2023-04-28 12:29:24','节目名称6','upload/jiemuxinxi_fengmian6.jpg,upload/jiemuxinxi_fengmian7.jpg,upload/jiemuxinxi_fengmian8.jpg','2023-04-28 20:29:24','歌手6','音乐会名称6','节目详情6'),(47,'2023-04-28 12:29:24','节目名称7','upload/jiemuxinxi_fengmian7.jpg,upload/jiemuxinxi_fengmian8.jpg,upload/jiemuxinxi_fengmian9.jpg','2023-04-28 20:29:24','歌手7','音乐会名称7','节目详情7'),(48,'2023-04-28 12:29:24','节目名称8','upload/jiemuxinxi_fengmian8.jpg,upload/jiemuxinxi_fengmian9.jpg,upload/jiemuxinxi_fengmian10.jpg','2023-04-28 20:29:24','歌手8','音乐会名称8','节目详情8');
/*!40000 ALTER TABLE `jiemuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yinlehui' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-28 12:29:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinlehui`
--

DROP TABLE IF EXISTS `yinlehui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinlehui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yinlehuimingcheng` varchar(200) NOT NULL COMMENT '音乐会名称',
  `fengmian` longtext COMMENT '封面',
  `yanchushijian` datetime NOT NULL COMMENT '演出时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `yinleting` varchar(200) NOT NULL COMMENT '音乐厅',
  `yanchuxinxi` longtext COMMENT '演出信息',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) DEFAULT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='音乐会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinlehui`
--

LOCK TABLES `yinlehui` WRITE;
/*!40000 ALTER TABLE `yinlehui` DISABLE KEYS */;
INSERT INTO `yinlehui` VALUES (21,'2023-04-28 12:29:24','音乐会名称1','upload/yinlehui_fengmian1.jpg,upload/yinlehui_fengmian2.jpg,upload/yinlehui_fengmian3.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅1','演出信息1',1,1,'2023-04-28 20:29:24','2023-04-29 00:00:00',1,99.9,20,'1,3,5,7,9'),(22,'2023-04-28 12:29:24','音乐会名称2','upload/yinlehui_fengmian2.jpg,upload/yinlehui_fengmian3.jpg,upload/yinlehui_fengmian4.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅2','演出信息2',2,2,'2023-04-28 20:30:58','2023-04-29 00:00:00',3,99.9,20,'1,3,5,7,9'),(23,'2023-04-28 12:29:24','音乐会名称3','upload/yinlehui_fengmian3.jpg,upload/yinlehui_fengmian4.jpg,upload/yinlehui_fengmian5.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅3','演出信息3',3,3,'2023-04-28 20:29:24','2023-04-29 00:00:00',3,99.9,20,'1,3,5,7,9'),(24,'2023-04-28 12:29:24','音乐会名称4','upload/yinlehui_fengmian4.jpg,upload/yinlehui_fengmian5.jpg,upload/yinlehui_fengmian6.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅4','演出信息4',4,4,'2023-04-28 20:29:24','2023-04-29 00:00:00',4,99.9,20,'1,3,5,7,9'),(25,'2023-04-28 12:29:24','音乐会名称5','upload/yinlehui_fengmian5.jpg,upload/yinlehui_fengmian6.jpg,upload/yinlehui_fengmian7.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅5','演出信息5',5,5,'2023-04-28 20:29:24','2023-04-29 00:00:00',5,99.9,20,'1,3,5,7,9'),(26,'2023-04-28 12:29:24','音乐会名称6','upload/yinlehui_fengmian6.jpg,upload/yinlehui_fengmian7.jpg,upload/yinlehui_fengmian8.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅6','演出信息6',6,6,'2023-04-28 20:29:24','2023-04-29 00:00:00',6,99.9,20,'1,3,5,7,9'),(27,'2023-04-28 12:29:24','音乐会名称7','upload/yinlehui_fengmian7.jpg,upload/yinlehui_fengmian8.jpg,upload/yinlehui_fengmian9.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅7','演出信息7',7,7,'2023-04-28 20:29:24','2023-04-29 00:00:00',7,99.9,20,'1,3,5,7,9'),(28,'2023-04-28 12:29:24','音乐会名称8','upload/yinlehui_fengmian8.jpg,upload/yinlehui_fengmian9.jpg,upload/yinlehui_fengmian10.jpg','2023-04-28 20:29:24','2023-04-28 20:29:24','音乐厅8','演出信息8',8,8,'2023-04-28 20:29:24','2023-04-29 00:00:00',8,99.9,20,'1,3,5,7,9');
/*!40000 ALTER TABLE `yinlehui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinleting`
--

DROP TABLE IF EXISTS `yinleting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinleting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yinletingmingcheng` varchar(200) DEFAULT NULL COMMENT '音乐厅名称',
  `zuoweishu` int(11) DEFAULT NULL COMMENT '座位数',
  `yinletingzhuangtai` varchar(200) DEFAULT NULL COMMENT '音乐厅状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='音乐厅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinleting`
--

LOCK TABLES `yinleting` WRITE;
/*!40000 ALTER TABLE `yinleting` DISABLE KEYS */;
INSERT INTO `yinleting` VALUES (31,'2023-04-28 12:29:24','音乐厅名称1',1,'空闲'),(32,'2023-04-28 12:29:24','音乐厅名称2',2,'空闲'),(33,'2023-04-28 12:29:24','音乐厅名称3',3,'空闲'),(34,'2023-04-28 12:29:24','音乐厅名称4',4,'空闲'),(35,'2023-04-28 12:29:24','音乐厅名称5',5,'空闲'),(36,'2023-04-28 12:29:24','音乐厅名称6',6,'空闲'),(37,'2023-04-28 12:29:24','音乐厅名称7',7,'空闲'),(38,'2023-04-28 12:29:24','音乐厅名称8',8,'空闲');
/*!40000 ALTER TABLE `yinleting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-04-28 12:29:24','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男','13823888881',200),(12,'2023-04-28 12:29:24','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男','13823888882',200),(13,'2023-04-28 12:29:24','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男','13823888883',200),(14,'2023-04-28 12:29:24','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男','13823888884',200),(15,'2023-04-28 12:29:24','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男','13823888885',200),(16,'2023-04-28 12:29:24','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男','13823888886',200),(17,'2023-04-28 12:29:24','用户账号7','123456','用户姓名7','upload/yonghu_touxiang7.jpg','男','13823888887',200),(18,'2023-04-28 12:29:24','用户账号8','123456','用户姓名8','upload/yonghu_touxiang8.jpg','男','13823888888',200);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03 14:46:42
