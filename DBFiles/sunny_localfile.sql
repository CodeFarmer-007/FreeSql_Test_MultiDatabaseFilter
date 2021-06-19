/*
 Navicat Premium Data Transfer

 Source Server         : 服务器测试环境
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 10.10.10.66:3306
 Source Schema         : dingli_sunny_tianchang

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 19/06/2021 16:40:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sunny_localfile
-- ----------------------------
DROP TABLE IF EXISTS `sunny_localfile`;
CREATE TABLE `sunny_localfile`  (
  `Id` bigint(0) NOT NULL AUTO_INCREMENT,
  `FilePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `IsDelete` bit(1) NULL DEFAULT NULL COMMENT '是否删除',
  `CreatedUserId` bigint(0) NULL DEFAULT NULL COMMENT '创建人Id',
  `CreatedUserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CreatedTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sunny_localfile
-- ----------------------------
INSERT INTO `sunny_localfile` VALUES (1, '\\SunnyLocal\\20210603030134第一视角.png', b'1', 1, '管理员', '2021-06-03 15:01:35');
INSERT INTO `sunny_localfile` VALUES (2, '\\SunnyLocal\\20210603050728户333型.png', b'1', 1, '管理员', '2021-06-03 17:07:28');
INSERT INTO `sunny_localfile` VALUES (3, '\\SunnyLocal\\20210603050933t2.jpg', b'1', 1, '管理员', '2021-06-03 17:09:33');
INSERT INTO `sunny_localfile` VALUES (4, '\\SunnyLocal\\20210604110342t4.jpg', b'0', 1, '管理员', '2021-06-04 11:03:42');
INSERT INTO `sunny_localfile` VALUES (5, '\\SunnyLocal\\20210604110345t3.jpg', b'0', 1, '管理员', '2021-06-04 11:03:46');
INSERT INTO `sunny_localfile` VALUES (6, '\\SunnyLocal\\20210604110349t1.jpg', b'0', 1, '管理员', '2021-06-04 11:03:50');
INSERT INTO `sunny_localfile` VALUES (7, '\\SunnyLocal\\20210604012629t4.jpg', b'1', 1, '管理员', '2021-06-04 13:26:30');
INSERT INTO `sunny_localfile` VALUES (8, '\\SunnyLocal\\20210604012809t2.jpg', b'1', 1, '管理员', '2021-06-04 13:28:09');
INSERT INTO `sunny_localfile` VALUES (9, '\\SunnyLocal\\20210604012854t4.jpg', b'1', 1, '管理员', '2021-06-04 13:28:54');
INSERT INTO `sunny_localfile` VALUES (10, '\\SunnyLocal\\20210604012928QQ图片20200210204759.jpg', b'1', 1, '管理员', '2021-06-04 13:29:29');
INSERT INTO `sunny_localfile` VALUES (11, '\\SunnyLocal\\20210604013553t4.jpg', b'0', 1, '管理员', '2021-06-04 13:35:53');
INSERT INTO `sunny_localfile` VALUES (12, '\\SunnyLocal\\20210604013903t4.jpg', b'0', 1, '管理员', '2021-06-04 13:39:03');
INSERT INTO `sunny_localfile` VALUES (13, '\\SunnyLocal\\20210604013946t4.jpg', b'1', 1, '管理员', '2021-06-04 13:39:46');
INSERT INTO `sunny_localfile` VALUES (14, '\\SunnyLocal\\20210604014019t4.jpg', b'1', 1, '管理员', '2021-06-04 13:40:20');
INSERT INTO `sunny_localfile` VALUES (15, '\\SunnyLocal\\20210604014031t5.jpg', b'0', 1, '管理员', '2021-06-04 13:40:32');
INSERT INTO `sunny_localfile` VALUES (16, '\\SunnyLocal\\20210604014050t4.jpg', b'0', 1, '管理员', '2021-06-04 13:40:51');
INSERT INTO `sunny_localfile` VALUES (17, '\\SunnyLocal\\20210604014157t4.jpg', b'0', 1, '管理员', '2021-06-04 13:41:57');
INSERT INTO `sunny_localfile` VALUES (18, '\\SunnyLocal\\20210604014258t4.jpg', b'0', 1, '管理员', '2021-06-04 13:42:59');
INSERT INTO `sunny_localfile` VALUES (19, '\\SunnyLocal\\20210604014338t3.jpg', b'0', 1, '管理员', '2021-06-04 13:43:38');
INSERT INTO `sunny_localfile` VALUES (20, '\\SunnyLocal\\20210604014455t3.jpg', b'0', 1, '管理员', '2021-06-04 13:44:56');
INSERT INTO `sunny_localfile` VALUES (21, '\\SunnyLocal\\20210604014546t4.jpg', b'0', 1, '管理员', '2021-06-04 13:45:47');
INSERT INTO `sunny_localfile` VALUES (22, '\\SunnyLocal\\202106040146415.jpg', b'0', 1, '管理员', '2021-06-04 13:46:42');
INSERT INTO `sunny_localfile` VALUES (23, '\\SunnyLocal\\20210604014745t4.jpg', b'0', 1, '管理员', '2021-06-04 13:47:46');
INSERT INTO `sunny_localfile` VALUES (24, '\\SunnyLocal\\20210604014820t4.jpg', b'0', 1, '管理员', '2021-06-04 13:48:20');
INSERT INTO `sunny_localfile` VALUES (25, '\\SunnyLocal\\20210604014852t4.jpg', b'0', 1, '管理员', '2021-06-04 13:48:53');
INSERT INTO `sunny_localfile` VALUES (26, '\\SunnyLocal\\20210604014918t4.jpg', b'0', 1, '管理员', '2021-06-04 13:49:19');
INSERT INTO `sunny_localfile` VALUES (27, '\\SunnyLocal\\20210604015004t4.jpg', b'0', 1, '管理员', '2021-06-04 13:50:04');
INSERT INTO `sunny_localfile` VALUES (28, '\\SunnyLocal\\20210604015124t3.jpg', b'0', 1, '管理员', '2021-06-04 13:51:24');
INSERT INTO `sunny_localfile` VALUES (29, '\\SunnyLocal\\20210604015216t1.jpg', b'0', 1, '管理员', '2021-06-04 13:52:16');
INSERT INTO `sunny_localfile` VALUES (30, '\\SunnyLocal\\20210604015339t1.jpg', b'1', 1, '管理员', '2021-06-04 13:53:40');
INSERT INTO `sunny_localfile` VALUES (31, '\\SunnyLocal\\20210604015402t4.jpg', b'1', 1, '管理员', '2021-06-04 13:54:02');
INSERT INTO `sunny_localfile` VALUES (32, '\\SunnyLocal\\20210604015436t4.jpg', b'1', 1, '管理员', '2021-06-04 13:54:36');
INSERT INTO `sunny_localfile` VALUES (33, '\\SunnyLocal\\20210604015440t2.jpg', b'0', 1, '管理员', '2021-06-04 13:54:40');
INSERT INTO `sunny_localfile` VALUES (34, '\\SunnyLocal\\20210604015610t4.jpg', b'1', 1, '管理员', '2021-06-04 13:56:11');
INSERT INTO `sunny_localfile` VALUES (35, '\\SunnyLocal\\202106040156334.jpg', b'1', 1, '管理员', '2021-06-04 13:56:34');
INSERT INTO `sunny_localfile` VALUES (36, '\\SunnyLocal\\202106040435091.jpg', b'0', 1, '管理员', '2021-06-04 16:35:09');
INSERT INTO `sunny_localfile` VALUES (37, '\\SunnyLocal\\20210604043519t1.jpg', b'0', 1, '管理员', '2021-06-04 16:35:20');
INSERT INTO `sunny_localfile` VALUES (38, '\\SunnyLocal\\202106040435305.jpg', b'0', 1, '管理员', '2021-06-04 16:35:30');
INSERT INTO `sunny_localfile` VALUES (39, '\\SunnyLocal\\20210604043538t2.jpg', b'0', 1, '管理员', '2021-06-04 16:35:38');
INSERT INTO `sunny_localfile` VALUES (40, '\\SunnyLocal\\20210604043548t5.jpg', b'0', 1, '管理员', '2021-06-04 16:35:49');
INSERT INTO `sunny_localfile` VALUES (41, '\\SunnyLocal\\20210606104835ee532ea69f4db91f5560477f9ac191b.jpg', b'0', 1, '管理员', '2021-06-06 10:48:35');
INSERT INTO `sunny_localfile` VALUES (42, '\\SunnyLocal\\20210607012412t4.jpg', b'1', 1, '管理员', '2021-06-07 13:24:13');
INSERT INTO `sunny_localfile` VALUES (43, '\\SunnyLocal\\20210607012509t3.jpg', b'0', 1, '管理员', '2021-06-07 13:25:09');
INSERT INTO `sunny_localfile` VALUES (44, '\\SunnyLocal\\20210607012545t4.jpg', b'0', 1, '管理员', '2021-06-07 13:25:45');
INSERT INTO `sunny_localfile` VALUES (45, '\\SunnyLocal\\20210607012611t5.jpg', b'0', 1, '管理员', '2021-06-07 13:26:12');
INSERT INTO `sunny_localfile` VALUES (46, '\\SunnyLocal\\202106070126573.jpg', b'0', 1, '管理员', '2021-06-07 13:26:57');
INSERT INTO `sunny_localfile` VALUES (47, '\\SunnyLocal\\20210607012813t1.jpg', b'1', 1, '管理员', '2021-06-07 13:28:14');
INSERT INTO `sunny_localfile` VALUES (48, '\\SunnyLocal\\202106070128324.jpg', b'0', 1, '管理员', '2021-06-07 13:28:32');
INSERT INTO `sunny_localfile` VALUES (49, '\\SunnyLocal\\20210608093937u=3325580755,54851970&fm=11&gp=0.jpg', b'0', 1, '管理员', '2021-06-08 21:39:37');
INSERT INTO `sunny_localfile` VALUES (50, '\\SunnyLocal\\20210609103701t4.jpg', b'1', 1, '管理员', '2021-06-09 10:37:02');
INSERT INTO `sunny_localfile` VALUES (51, '\\SunnyLocal\\2021060910372420210608093937u=3325580755,54851970&fm=11&gp=0.jpg', b'0', 1, '管理员', '2021-06-09 10:37:24');

SET FOREIGN_KEY_CHECKS = 1;
