/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB
 Source Server Type    : MySQL
 Source Server Version : 100129
 Source Host           : localhost:3306
 Source Schema         : db_siv

 Target Server Type    : MySQL
 Target Server Version : 100129
 File Encoding         : 65001

 Date: 10/08/2021 15:51:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ref_desa
-- ----------------------------
DROP TABLE IF EXISTS `ref_desa`;
CREATE TABLE `ref_desa`  (
  `desa_id` int NOT NULL AUTO_INCREMENT,
  `nm_desa` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kec` int NULL DEFAULT NULL,
  PRIMARY KEY (`desa_id`) USING BTREE,
  INDEX `subkategori_kategori_id`(`id_kec`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ref_desa
-- ----------------------------
INSERT INTO `ref_desa` VALUES (1, '-', 1);
INSERT INTO `ref_desa` VALUES (3, ' PULAU PATAI', 1);
INSERT INTO `ref_desa` VALUES (4, ' SARAPAT', 1);
INSERT INTO `ref_desa` VALUES (5, ' MAGANTIS', 1);
INSERT INTO `ref_desa` VALUES (6, ' JA\'AR', 1);
INSERT INTO `ref_desa` VALUES (7, ' MATABU', 1);
INSERT INTO `ref_desa` VALUES (8, ' DORONG', 1);
INSERT INTO `ref_desa` VALUES (9, ' DIDI', 1);
INSERT INTO `ref_desa` VALUES (10, ' KARANG LANGIT', 1);
INSERT INTO `ref_desa` VALUES (11, ' HARINGEN', 1);
INSERT INTO `ref_desa` VALUES (12, ' JAWETEN', 1);
INSERT INTO `ref_desa` VALUES (13, ' MATARAH', 1);
INSERT INTO `ref_desa` VALUES (15, ' MARAGUT', 1);
INSERT INTO `ref_desa` VALUES (16, ' MANGKARAP', 1);
INSERT INTO `ref_desa` VALUES (17, ' GUMPA', 1);
INSERT INTO `ref_desa` VALUES (18, ' SUMUR', 1);
INSERT INTO `ref_desa` VALUES (19, ' HARARA', 1);
INSERT INTO `ref_desa` VALUES (20, '-', 2);
INSERT INTO `ref_desa` VALUES (21, ' KANDRIS', 2);
INSERT INTO `ref_desa` VALUES (22, ' BANYU LANDAS', 2);
INSERT INTO `ref_desa` VALUES (23, ' BAGOK', 2);
INSERT INTO `ref_desa` VALUES (24, ' BAMBAN', 2);
INSERT INTO `ref_desa` VALUES (25, ' TEWAH PUPUH', 2);
INSERT INTO `ref_desa` VALUES (26, ' GUDANG SENG', 2);
INSERT INTO `ref_desa` VALUES (27, ' PULAU PANDANG', 3);
INSERT INTO `ref_desa` VALUES (28, ' KAMBINTIN', 3);
INSERT INTO `ref_desa` VALUES (29, ' RAMANIA', 3);
INSERT INTO `ref_desa` VALUES (30, ' BENTOT', 3);
INSERT INTO `ref_desa` VALUES (31, ' AMPARI BURA', 3);
INSERT INTO `ref_desa` VALUES (32, ' KOTAM', 3);
INSERT INTO `ref_desa` VALUES (33, ' TAMIANG', 3);
INSERT INTO `ref_desa` VALUES (34, ' BETANG NALONG', 3);
INSERT INTO `ref_desa` VALUES (35, ' MUANI', 3);
INSERT INTO `ref_desa` VALUES (36, ' JANGO', 3);
INSERT INTO `ref_desa` VALUES (38, ' LALAP', 3);
INSERT INTO `ref_desa` VALUES (39, ' JANAH JARI', 4);
INSERT INTO `ref_desa` VALUES (40, ' BANGKIRAYEN', 4);
INSERT INTO `ref_desa` VALUES (41, ' HAYAPING', 4);
INSERT INTO `ref_desa` VALUES (42, ' TANGKAN', 4);
INSERT INTO `ref_desa` VALUES (43, ' WUNGKUR NANAKAN', 4);
INSERT INTO `ref_desa` VALUES (44, ' AMPARI', 4);
INSERT INTO `ref_desa` VALUES (45, ' AMPAR BATU', 4);
INSERT INTO `ref_desa` VALUES (46, ' BIWAN', 4);
INSERT INTO `ref_desa` VALUES (47, ' JANAH MANSIWUI', 4);
INSERT INTO `ref_desa` VALUES (48, ' DANAU', 4);
INSERT INTO `ref_desa` VALUES (49, ' PIANGGU', 4);
INSERT INTO `ref_desa` VALUES (51, ' DAMBUNG', 5);
INSERT INTO `ref_desa` VALUES (52, ' SAING', 5);
INSERT INTO `ref_desa` VALUES (53, ' RODOK', 5);
INSERT INTO `ref_desa` VALUES (54, ' AMPAH DUA', 5);
INSERT INTO `ref_desa` VALUES (55, ' PUTAI', 5);
INSERT INTO `ref_desa` VALUES (56, ' NETAMPIN', 5);
INSERT INTO `ref_desa` VALUES (57, ' SUMBER GARONGGONG', 5);
INSERT INTO `ref_desa` VALUES (58, ' MUARA AWANG', 5);
INSERT INTO `ref_desa` VALUES (59, ' MUARA PALANTAU', 6);
INSERT INTO `ref_desa` VALUES (60, ' KETAB', 6);
INSERT INTO `ref_desa` VALUES (61, ' KUPANG BERSIH', 6);
INSERT INTO `ref_desa` VALUES (62, ' TUYAU', 6);
INSERT INTO `ref_desa` VALUES (63, ' PINANG TUNGGAL', 6);
INSERT INTO `ref_desa` VALUES (64, ' NAGA LEAH', 6);
INSERT INTO `ref_desa` VALUES (65, ' LAMPEONG', 6);
INSERT INTO `ref_desa` VALUES (66, ' BARARAWA', 6);
INSERT INTO `ref_desa` VALUES (67, ' BAMBULUNG', 6);
INSERT INTO `ref_desa` VALUES (68, ' LEBU', 6);
INSERT INTO `ref_desa` VALUES (69, ' MURU DUYUNG', 6);
INSERT INTO `ref_desa` VALUES (70, ' TUMPUNG ULUNG', 6);
INSERT INTO `ref_desa` VALUES (71, ' SUMBEREJO', 6);
INSERT INTO `ref_desa` VALUES (72, ' JURU BANU', 7);
INSERT INTO `ref_desa` VALUES (73, ' TELANG BARU', 7);
INSERT INTO `ref_desa` VALUES (74, ' TAMPULANGIT', 7);
INSERT INTO `ref_desa` VALUES (75, ' TELANG', 7);
INSERT INTO `ref_desa` VALUES (76, ' MAIPE', 7);
INSERT INTO `ref_desa` VALUES (77, ' MARUTUWU', 7);
INSERT INTO `ref_desa` VALUES (78, ' BALAWA', 7);
INSERT INTO `ref_desa` VALUES (79, ' KALI NAPU', 7);
INSERT INTO `ref_desa` VALUES (80, ' SIONG', 7);
INSERT INTO `ref_desa` VALUES (81, ' PURI', 8);
INSERT INTO `ref_desa` VALUES (82, ' LENGGANG', 8);
INSERT INTO `ref_desa` VALUES (83, ' BATUAH', 8);
INSERT INTO `ref_desa` VALUES (84, ' UNSUM', 8);
INSERT INTO `ref_desa` VALUES (85, ' BARUYAN', 8);
INSERT INTO `ref_desa` VALUES (86, ' TURAN AMIS', 8);
INSERT INTO `ref_desa` VALUES (87, ' MALINTOT', 8);
INSERT INTO `ref_desa` VALUES (88, ' TANGKUM', 8);
INSERT INTO `ref_desa` VALUES (89, ' SIBUNG', 8);
INSERT INTO `ref_desa` VALUES (90, ' TAMPA', 9);
INSERT INTO `ref_desa` VALUES (91, ' KALAMUS', 9);
INSERT INTO `ref_desa` VALUES (92, ' SIMPANG BINGKUANG', 9);
INSERT INTO `ref_desa` VALUES (93, ' PATUNG', 9);
INSERT INTO `ref_desa` VALUES (94, ' RUNGGU RAYA', 9);
INSERT INTO `ref_desa` VALUES (95, ' BANTAI NAPU', 9);
INSERT INTO `ref_desa` VALUES (96, ' TARINGSING', 9);
INSERT INTO `ref_desa` VALUES (97, ' PAKU BETO', 9);
INSERT INTO `ref_desa` VALUES (98, ' GANDRUNG', 9);
INSERT INTO `ref_desa` VALUES (99, ' PANGKAN', 9);
INSERT INTO `ref_desa` VALUES (100, ' KUPANG BARU', 9);
INSERT INTO `ref_desa` VALUES (101, ' LUAU JAWUK', 9);
INSERT INTO `ref_desa` VALUES (102, ' DAYU', 10);
INSERT INTO `ref_desa` VALUES (103, ' WURAN', 10);
INSERT INTO `ref_desa` VALUES (104, ' IPU MEA', 10);
INSERT INTO `ref_desa` VALUES (105, ' LAGAN', 10);
INSERT INTO `ref_desa` VALUES (106, ' PUTUT TAWULUH', 10);
INSERT INTO `ref_desa` VALUES (107, ' SIMPANG NANENG', 10);
INSERT INTO `ref_desa` VALUES (108, ' KANDRIS', 10);

-- ----------------------------
-- Table structure for ref_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `ref_kecamatan`;
CREATE TABLE `ref_kecamatan`  (
  `id_kec` int NOT NULL AUTO_INCREMENT,
  `nm_kec` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kec`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ref_kecamatan
-- ----------------------------
INSERT INTO `ref_kecamatan` VALUES (1, 'DUSUN TIMUR');
INSERT INTO `ref_kecamatan` VALUES (2, 'BANUA LIMA');
INSERT INTO `ref_kecamatan` VALUES (3, 'PATANGKEP TUTUI');
INSERT INTO `ref_kecamatan` VALUES (4, 'AWANG');
INSERT INTO `ref_kecamatan` VALUES (5, 'DUSUN TENGAH');
INSERT INTO `ref_kecamatan` VALUES (6, 'PEMATANG KARAU');
INSERT INTO `ref_kecamatan` VALUES (7, 'PAJU EPAT');
INSERT INTO `ref_kecamatan` VALUES (8, 'RAREN BATUAH');
INSERT INTO `ref_kecamatan` VALUES (14, 'matabu');

-- ----------------------------
-- Table structure for tbl_p
-- ----------------------------
DROP TABLE IF EXISTS `tbl_p`;
CREATE TABLE `tbl_p`  (
  `id_p` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `verifikasi_date` timestamp(0) NULL DEFAULT NULL,
  `id_kec` int NULL DEFAULT NULL,
  `desa_id` int NULL DEFAULT NULL,
  `vaksinasi_date` timestamp(0) NULL DEFAULT NULL,
  INDEX `id_kec`(`id_kec`) USING BTREE,
  INDEX `desa_id`(`desa_id`) USING BTREE,
  CONSTRAINT `tbl_p_ibfk_1` FOREIGN KEY (`id_kec`) REFERENCES `ref_kecamatan` (`id_kec`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_p
-- ----------------------------
INSERT INTO `tbl_p` VALUES ('D679H8qbiKY5ZCEJFmjxpor3u', 'qwqw', '1111111111111111', 'qwqw', '121212121211', 3, '2021-08-10 15:24:14', '2021-08-10 10:35:26', 1, 0, '2021-08-10 10:35:30');

SET FOREIGN_KEY_CHECKS = 1;
