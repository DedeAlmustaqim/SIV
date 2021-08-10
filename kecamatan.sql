/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : dbsscpd_bartim

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 10/08/2021 14:43:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan`  (
  `kec_id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_kec` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kec_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES (1, ' DUSUN TIMUR');
INSERT INTO `kecamatan` VALUES (2, ' BANUA LIMA');
INSERT INTO `kecamatan` VALUES (3, ' PATANGKEP TUTUI');
INSERT INTO `kecamatan` VALUES (4, ' AWANG');
INSERT INTO `kecamatan` VALUES (5, ' DUSUN TENGAH');
INSERT INTO `kecamatan` VALUES (6, ' PEMATANG KARAU');
INSERT INTO `kecamatan` VALUES (7, ' PAJU EPAT');
INSERT INTO `kecamatan` VALUES (8, ' RAREN BATUAH');
INSERT INTO `kecamatan` VALUES (9, ' PAKU');
INSERT INTO `kecamatan` VALUES (10, ' KARUSEN JANANG');

SET FOREIGN_KEY_CHECKS = 1;
