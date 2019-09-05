/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : 127.0.0.1:3306
Source Database       : drugmanager

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-07-05 16:51:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log4
-- ----------------------------
DROP TABLE IF EXISTS `log4`;
CREATE TABLE `log4` (
  `date` varchar(50) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log4
-- ----------------------------

-- ----------------------------
-- Table structure for saledrug
-- ----------------------------
DROP TABLE IF EXISTS `saledrug`;
CREATE TABLE `saledrug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) DEFAULT NULL,
  `drug_id` varchar(255) DEFAULT NULL,
  `sale_number` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saledrug
-- ----------------------------
INSERT INTO `saledrug` VALUES ('1', '1', '2', '3', '4', '5');
INSERT INTO `saledrug` VALUES ('3', '4561111', '789', '7', '52222', '1152');
INSERT INTO `saledrug` VALUES ('4', '145', '2', '10', '36565', '1152');
INSERT INTO `saledrug` VALUES ('6', 'tom', 'drug01', '300', '2018-10-18', '1152');

-- ----------------------------
-- Table structure for stockdrug
-- ----------------------------
DROP TABLE IF EXISTS `stockdrug`;
CREATE TABLE `stockdrug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(255) DEFAULT NULL,
  `drug_id` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockdrug
-- ----------------------------
INSERT INTO `stockdrug` VALUES ('1', '1', '2', '3', '5', '5', '6');
INSERT INTO `stockdrug` VALUES ('23', '652', '10', '1222', '5', '125', '666');
INSERT INTO `stockdrug` VALUES ('24', '652', '5451252', '1152', '5', '5', '666');
INSERT INTO `stockdrug` VALUES ('25', '', '', null, null, '2018-10-02', '');
INSERT INTO `stockdrug` VALUES ('26', 'test1', 'drug01', '1152', '5000', '2018-10-04', '666');
INSERT INTO `stockdrug` VALUES ('36', '652', '54545454', null, '55555', '', '');
INSERT INTO `stockdrug` VALUES ('37', '652', '8544645', null, '55555', '', '');
INSERT INTO `stockdrug` VALUES ('38', '652', '45812121', null, '55555', '', '');
INSERT INTO `stockdrug` VALUES ('39', '652', '548555', null, '55555', '', '');
INSERT INTO `stockdrug` VALUES ('40', '652', '454848', null, '55555', '', '');
INSERT INTO `stockdrug` VALUES ('41', '652', '8546421', null, '55555', '', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '0');
INSERT INTO `user` VALUES ('11', 'sale', '123', '1');
INSERT INTO `user` VALUES ('25', 'abc', '123', '0');
INSERT INTO `user` VALUES ('26', 'ck', '123', '0');
INSERT INTO `user` VALUES ('27', 'cvvv', '123', '1');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` varchar(255) DEFAULT NULL,
  `stock_number` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1', '1', '123', '3', '4', '5');
INSERT INTO `warehouse` VALUES ('2', '2', '150', null, null, null);
INSERT INTO `warehouse` VALUES ('3', '3', '435', null, null, null);
INSERT INTO `warehouse` VALUES ('4', '5', '0', null, null, null);
INSERT INTO `warehouse` VALUES ('5', '88', '1000', null, null, null);
INSERT INTO `warehouse` VALUES ('6', '789', '337', null, null, null);
INSERT INTO `warehouse` VALUES ('10', '4', '65', null, null, null);
INSERT INTO `warehouse` VALUES ('24', '54545454', '55555', null, null, null);
INSERT INTO `warehouse` VALUES ('25', '8544645', '55555', null, null, null);
INSERT INTO `warehouse` VALUES ('26', '45812121', '55555', null, null, null);
INSERT INTO `warehouse` VALUES ('27', '548555', '55555', null, null, null);
INSERT INTO `warehouse` VALUES ('28', '454848', '55555', null, null, null);
INSERT INTO `warehouse` VALUES ('29', '8546421', '55555', null, null, null);
