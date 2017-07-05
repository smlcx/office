/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : db_office

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-07-05 18:36:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oa_admin
-- ----------------------------
DROP TABLE IF EXISTS `oa_admin`;
CREATE TABLE `oa_admin` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_loginname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ad_type` int(11) NOT NULL,
  `ad_state` int(11) NOT NULL,
  `ad_lastlogindate` datetime DEFAULT NULL,
  `ad_lastloginip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_adddate` datetime NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_admin
-- ----------------------------
INSERT INTO `oa_admin` VALUES ('1', 'admin', '40f5888b67c748df7efba008e7c2f9d2', 'admin', '1', '1', '2017-06-29 19:27:23', '192.168.3.27', '2017-06-29 19:27:33');

-- ----------------------------
-- Table structure for oa_appversion
-- ----------------------------
DROP TABLE IF EXISTS `oa_appversion`;
CREATE TABLE `oa_appversion` (
  `av_id` int(11) NOT NULL AUTO_INCREMENT,
  `av_code` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `av_forceupdate` int(2) NOT NULL,
  `av_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `av_pushdate` bigint(20) NOT NULL,
  PRIMARY KEY (`av_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_appversion
-- ----------------------------

-- ----------------------------
-- Table structure for oa_notepad
-- ----------------------------
DROP TABLE IF EXISTS `oa_notepad`;
CREATE TABLE `oa_notepad` (
  `np_id` int(11) NOT NULL,
  `np_title` longtext COLLATE utf8_unicode_ci,
  `np_content` longtext COLLATE utf8_unicode_ci,
  `np_adddate` bigint(20) NOT NULL,
  `np_updatedate` bigint(20) DEFAULT NULL,
  `np_state` int(1) NOT NULL DEFAULT '0' COMMENT '0:正常\r\n1:置顶',
  PRIMARY KEY (`np_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_notepad
-- ----------------------------
INSERT INTO `oa_notepad` VALUES ('1', '这是标题啊bb', 'lingcx', '1499047735000', '1499249934931', '0');
INSERT INTO `oa_notepad` VALUES ('2', '这是标题啊nn', 'lingcxhh', '1499047735000', '0', '0');
INSERT INTO `oa_notepad` VALUES ('3', '1829', 'lingcx', '1499047735000', '1499250618235', '0');
INSERT INTO `oa_notepad` VALUES ('4', '1828', 'lingcx', '1499047735000', '1499250538267', '0');
INSERT INTO `oa_notepad` VALUES ('5', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('6', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('7', '1821', 'lingcx', '1499047735000', '1499250121056', '0');
INSERT INTO `oa_notepad` VALUES ('8', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('9', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('10', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('11', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('12', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('13', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('14', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('15', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('16', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('17', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('18', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('19', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('20', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('21', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('22', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('23', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('24', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');
INSERT INTO `oa_notepad` VALUES ('25', '这是标题啊', 'lingcx', '1499047735000', '1499047735000', '0');

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_loginname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_head` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_sex` int(11) NOT NULL COMMENT '0：男\r\n1：女',
  `us_phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `us_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `us_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `us_state` int(11) NOT NULL COMMENT '0：正常\r\n1：禁用',
  `us_registdate` datetime DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('1', 'fjlcx', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('2', 'fjlcx1', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('3', 'fjlcx2', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('4', 'fjlcx3', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('5', 'fjlcx5', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('6', 'fjlcx6', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('7', 'fjlcx7', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('8', 'fjlcx8', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('9', 'fjlcx9', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('10', 'fjlcx10', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('11', 'fjlcx11', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('12', 'fjlcx12', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('13', 'fjlcx13', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('14', 'fjlcx14', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('15', 'fjlcx15', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('16', 'fjlcx16', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('17', 'fjlcx17', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('18', 'fjlcx18', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('19', 'fjlcx19', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
INSERT INTO `oa_user` VALUES ('20', 'fjlcx20', '123456', '1', '凌传锨', '0', '18950998802', 'fj.lcx@foxmail.com', '福建省福州市晋安区', '0', '2017-05-30 21:59:00');
