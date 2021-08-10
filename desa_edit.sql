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

 Date: 10/08/2021 14:43:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for desa_edit
-- ----------------------------
DROP TABLE IF EXISTS `desa_edit`;
CREATE TABLE `desa_edit`  (
  `desa_id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_desa` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kec_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`desa_id`) USING BTREE,
  INDEX `subkategori_kategori_id`(`kec_id`) USING BTREE,
  CONSTRAINT `desa_edit_ibfk_1` FOREIGN KEY (`kec_id`) REFERENCES `kecamatan` (`kec_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of desa_edit
-- ----------------------------
INSERT INTO `desa_edit` VALUES (25, 'Desa Tewah Pupuh', 2);
INSERT INTO `desa_edit` VALUES (47, 'Desa Janah Mansiwui', 4);
INSERT INTO `desa_edit` VALUES (51, 'Desa Dambung', 5);
INSERT INTO `desa_edit` VALUES (53, 'Desa Rodok', 5);
INSERT INTO `desa_edit` VALUES (56, 'Desa Netampin', 5);
INSERT INTO `desa_edit` VALUES (58, 'Desa Muara Awang', 5);
INSERT INTO `desa_edit` VALUES (59, 'Desa Muara Palantau', 6);
INSERT INTO `desa_edit` VALUES (69, 'Desa Muru Duyung', 6);
INSERT INTO `desa_edit` VALUES (70, 'Desa Tumpung Ulung', 6);
INSERT INTO `desa_edit` VALUES (71, 'Desa Sumberejo', 6);
INSERT INTO `desa_edit` VALUES (74, 'Desa Tampulangit', 7);
INSERT INTO `desa_edit` VALUES (77, 'Desa Murutuwu', 7);
INSERT INTO `desa_edit` VALUES (79, 'Desa Kali Napu', 7);
INSERT INTO `desa_edit` VALUES (80, 'Desa Siong', 7);
INSERT INTO `desa_edit` VALUES (85, 'Desa Baruyan', 8);
INSERT INTO `desa_edit` VALUES (86, 'Desa Turan Amis', 8);
INSERT INTO `desa_edit` VALUES (95, 'Desa Bantai Napu', 9);
INSERT INTO `desa_edit` VALUES (96, 'Desa Taringsing', 9);
INSERT INTO `desa_edit` VALUES (98, 'Desa Gandrung', 9);
INSERT INTO `desa_edit` VALUES (99, 'Desa Pangkan', 9);
INSERT INTO `desa_edit` VALUES (104, 'Desa Ipu Mea', 10);
INSERT INTO `desa_edit` VALUES (108, 'Desa Kandris', 10);

SET FOREIGN_KEY_CHECKS = 1;
