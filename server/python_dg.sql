/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_dg

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 20/06/2024 21:53:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1718890795629.jpeg', 'http://www.baidu.com', '2024-06-20 21:39:58.373306');
INSERT INTO `b_ad` VALUES (2, 'ad/1718890805272.jpeg', 'https://fangdaijisuanqi.vip', '2024-06-20 21:40:17.254209');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '巧克力类', '2024-06-19 21:04:12.968890');
INSERT INTO `b_classification` VALUES (2, '奶酪类', '2024-06-19 21:04:26.717349');
INSERT INTO `b_classification` VALUES (3, '水果类', '2024-06-19 21:07:20.368495');
INSERT INTO `b_classification` VALUES (4, '奶油类', '2024-06-19 21:07:34.877917');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '33333', '2024-06-20 21:37:36.124526', 0, 4, 3);
INSERT INTO `b_comment` VALUES (2, '45555', '2024-06-20 21:37:38.657896', 0, 4, 3);
INSERT INTO `b_comment` VALUES (3, '332', '2024-06-20 21:38:53.060048', 0, 6, 3);
INSERT INTO `b_comment` VALUES (4, '211111', '2024-06-20 21:38:55.202788', 0, 6, 3);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2024-06-19 20:58:17.178663');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2024-06-19 20:58:17.199572');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '1222222', '张三', '111ww2011@gmail.com', '14381651534', '2024-06-20 21:41:28.950748');
INSERT INTO `b_feedback` VALUES (2, '测试反馈5555', '哈哈哈哈333', '王宝强', '11111@gmail.com', '222581651534', '2024-06-20 21:41:49.770612');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 21:03:00.768428');
INSERT INTO `b_login_log` VALUES (2, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 21:03:20.624867');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 21:03:33.386547');
INSERT INTO `b_login_log` VALUES (4, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-19 21:37:10.647174');
INSERT INTO `b_login_log` VALUES (5, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-20 21:50:51.428454');
INSERT INTO `b_login_log` VALUES (6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-20 21:50:59.003109');
INSERT INTO `b_login_log` VALUES (7, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-20 21:51:44.104592');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', 'aaaaaaaaa', '2024-06-20 21:40:29.104419');
INSERT INTO `b_notice` VALUES (2, '测试哈哈888', '来自你的瓶子哈哈', '2024-06-20 21:40:55.431685');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 905 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-19 20:58:16.799433', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-19 20:58:16.823636', '/myapp/index/notice/list_api', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-19 20:58:16.844371', '/myapp/index/notice/list_api', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-19 20:58:17.140825', '/myapp/admin/overview/sysInfo', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-19 20:58:17.168484', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-19 20:58:17.182572', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-19 20:58:17.185572', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-19 20:58:17.201587', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-19 20:58:20.309630', '/myapp/index/order/list', 'GET', NULL, '3136');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-19 20:58:20.360544', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-19 20:58:20.407981', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-19 21:02:48.908969', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-19 21:02:48.912976', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-19 21:02:48.913970', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-19 21:02:48.971010', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-19 21:02:52.111979', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-19 21:02:52.112978', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-19 21:03:00.774426', '/myapp/admin/adminLogin', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-19 21:03:00.877812', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-19 21:03:00.904347', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-19 21:03:02.920593', '/myapp/admin/order/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-19 21:03:03.986339', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-19 21:03:15.641355', '/myapp/admin/user/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-19 21:03:15.666504', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-19 21:03:20.632846', '/myapp/admin/adminLogin', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-19 21:03:20.758507', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-19 21:03:20.767731', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-19 21:03:23.357827', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-19 21:03:24.194141', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-19 21:03:27.202197', '/myapp/admin/user/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-19 21:03:33.394533', '/myapp/admin/adminLogin', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-19 21:03:33.484536', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-19 21:03:33.487535', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-19 21:03:36.685814', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-19 21:03:38.057737', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-19 21:03:38.060736', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-19 21:03:40.932025', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-19 21:03:59.856769', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-19 21:03:59.861130', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-19 21:04:00.926402', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-19 21:04:12.973877', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-19 21:04:13.013227', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-19 21:04:26.722078', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-19 21:04:26.745045', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-19 21:07:20.374499', '/myapp/admin/classification/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-19 21:07:20.396493', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-19 21:07:34.881955', '/myapp/admin/classification/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-19 21:07:34.903000', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-19 21:08:09.017291', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-19 21:08:09.021279', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-19 21:12:42.261276', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-19 21:12:42.266279', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-19 21:13:07.557873', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-19 21:13:07.567924', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-19 21:15:16.520630', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-19 21:15:16.524638', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-19 21:15:20.304902', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-19 21:15:20.306891', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-19 21:16:25.562567', '/myapp/admin/thing/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-19 21:16:25.636946', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-19 21:19:21.659435', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-19 21:19:22.549184', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-19 21:19:22.659225', '/myapp/admin/classification/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-19 21:19:31.520163', '/myapp/admin/thing/update', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-19 21:19:31.685588', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-19 21:19:35.090556', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-19 21:19:35.229204', '/myapp/admin/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-19 21:19:39.238577', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-19 21:19:39.415011', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-19 21:19:42.900655', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-19 21:19:43.091431', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-19 21:19:47.312803', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-19 21:19:47.483088', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-19 21:19:51.025375', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-19 21:19:51.171994', '/myapp/admin/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-19 21:19:55.847396', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-19 21:19:55.966165', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-19 21:19:59.397560', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-19 21:19:59.537690', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-19 21:20:19.050469', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-19 21:20:19.199129', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-19 21:20:27.284581', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-19 21:20:27.444952', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-19 21:20:41.337525', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-19 21:20:41.510362', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-19 21:20:48.997144', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-19 21:20:49.135130', '/myapp/admin/thing/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-19 21:20:59.725895', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-19 21:20:59.852664', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-19 21:21:07.661087', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-19 21:21:07.802570', '/myapp/admin/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-19 21:21:15.173186', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-19 21:21:15.296139', '/myapp/admin/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-19 21:21:23.512991', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-19 21:21:23.634345', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-19 21:21:27.659946', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-19 21:21:27.769513', '/myapp/admin/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-19 21:21:34.355056', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-19 21:21:34.520367', '/myapp/admin/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-19 21:21:38.900117', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-19 21:21:39.063189', '/myapp/admin/thing/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-19 21:21:43.588562', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-19 21:21:43.746105', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-19 21:21:49.047335', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-19 21:21:49.194245', '/myapp/admin/thing/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-19 21:21:54.186456', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-19 21:21:54.327120', '/myapp/admin/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-19 21:22:06.176807', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-19 21:22:06.303701', '/myapp/admin/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-19 21:22:15.200371', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-19 21:22:15.368513', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-19 21:22:21.407859', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-19 21:22:21.587320', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-19 21:22:34.382055', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-19 21:22:34.519030', '/myapp/admin/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-19 21:22:40.253589', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-19 21:22:40.405032', '/myapp/admin/thing/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-19 21:22:47.999345', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-19 21:22:48.129561', '/myapp/admin/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-19 21:22:51.462793', '/myapp/admin/thing/update', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-19 21:22:51.621554', '/myapp/admin/thing/list', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-19 21:22:56.317422', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-19 21:22:56.460339', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-19 21:23:10.940198', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-19 21:23:11.053341', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-19 21:23:47.067134', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-19 21:23:47.360383', '/myapp/admin/thing/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-19 21:23:52.934998', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-19 21:23:53.063926', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-19 21:23:56.843865', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-19 21:23:57.003592', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-19 21:24:00.584559', '/myapp/admin/thing/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-19 21:24:00.753138', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-19 21:24:03.202894', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-19 21:24:03.339725', '/myapp/admin/thing/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-19 21:24:07.986235', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-19 21:24:08.113955', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-19 21:24:11.342183', '/myapp/admin/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-19 21:24:11.495352', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-19 21:24:16.213270', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-19 21:24:16.355729', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-19 21:24:19.746678', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-19 21:24:19.875589', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-19 21:24:59.214478', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-19 21:24:59.351517', '/myapp/admin/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-19 21:25:02.655887', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-19 21:25:02.827223', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-19 21:25:05.369193', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-19 21:25:05.513015', '/myapp/admin/thing/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-19 21:25:08.321745', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-19 21:25:08.462243', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-19 21:25:11.122373', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-19 21:25:11.297160', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-19 21:25:14.043756', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-19 21:25:14.192014', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-19 21:25:16.807484', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-19 21:25:16.964641', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-19 21:25:19.766911', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-19 21:25:19.947133', '/myapp/admin/thing/list', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-19 21:25:22.206656', '/myapp/admin/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-19 21:25:22.362131', '/myapp/admin/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-19 21:25:24.840220', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-19 21:25:24.966176', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-19 21:25:29.186369', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-19 21:25:29.304063', '/myapp/admin/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-19 21:25:32.353915', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-19 21:25:32.511424', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-19 21:25:49.472351', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-19 21:25:50.806251', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-19 21:25:50.904912', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-19 21:25:51.005313', '/myapp/admin/classification/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-19 21:25:57.173232', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-19 21:25:57.313218', '/myapp/admin/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-19 21:25:59.346113', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-19 21:26:00.053673', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-19 21:26:00.179291', '/myapp/admin/classification/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-19 21:26:10.502948', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-19 21:26:10.658808', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-19 21:26:14.331071', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-19 21:26:14.528252', '/myapp/admin/thing/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-19 21:26:19.802633', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-19 21:26:19.950968', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-19 21:26:25.351281', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-19 21:26:25.502791', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-19 21:26:27.858679', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-19 21:26:28.277201', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-19 21:26:28.386689', '/myapp/admin/classification/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-19 21:26:31.889820', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-19 21:26:31.941148', '/myapp/index/user/info', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-19 21:26:31.993733', '/myapp/index/user/info', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-19 21:26:32.306986', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-19 21:26:32.308986', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-19 21:26:32.382271', '/myapp/index/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-19 21:26:32.427393', '/myapp/index/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-19 21:26:41.682702', '/myapp/admin/thing/update', 'POST', NULL, '313');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-19 21:26:41.847292', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-19 21:26:46.106661', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-19 21:26:46.250944', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-19 21:26:50.895453', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-19 21:26:51.081300', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-19 21:26:55.152840', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-19 21:26:55.343276', '/myapp/admin/thing/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-19 21:27:00.335392', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-19 21:27:00.557790', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-19 21:27:05.834974', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-19 21:27:06.108200', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-19 21:27:11.113610', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-19 21:27:11.299206', '/myapp/admin/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-19 21:27:16.135053', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-19 21:27:16.318059', '/myapp/admin/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-19 21:27:24.692706', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-19 21:27:24.900976', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-19 21:27:30.121024', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-19 21:27:30.317831', '/myapp/admin/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-19 21:27:35.829444', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-19 21:27:36.007762', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-19 21:27:40.289494', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-19 21:27:40.471021', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-19 21:27:42.564182', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-19 21:27:42.629113', '/myapp/index/thing/getRecommend', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-19 21:27:42.700939', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-19 21:27:42.713365', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-19 21:27:42.722373', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-19 21:27:42.721372', '/upload/cover/1718803619002.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-19 21:27:42.723371', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-19 21:27:42.726371', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-19 21:27:42.728385', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-19 21:27:42.757024', '/upload/cover/1718803648981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-19 21:27:42.757024', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-19 21:27:42.757024', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-19 21:27:42.758528', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-19 21:27:42.760559', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-19 21:27:42.763550', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-19 21:27:43.104479', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-19 21:27:43.114478', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-19 21:27:43.170278', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-19 21:27:43.219839', '/myapp/index/user/info', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-19 21:30:40.851373', '/upload/cover/1718803599830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-19 21:30:44.680582', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-19 21:30:44.843940', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-19 21:30:45.763563', '/upload/cover/1718803604699.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-19 21:30:49.175881', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-19 21:30:49.356169', '/myapp/admin/thing/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-19 21:30:50.289125', '/upload/cover/1718803609706.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-19 21:30:53.724791', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-19 21:30:53.858897', '/myapp/admin/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-19 21:30:55.798329', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-19 21:30:55.859734', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-19 21:30:55.946014', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-19 21:30:55.958491', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-19 21:30:55.959489', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-19 21:30:55.960837', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-19 21:30:55.963877', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-19 21:30:55.967302', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-19 21:30:55.967302', '/upload/cover/1718803613922.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-19 21:30:55.980189', '/upload/cover/1718803654690.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-19 21:30:55.981685', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-19 21:30:55.986943', '/upload/cover/1718803648981.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-19 21:30:56.001478', '/upload/cover/1718803643523.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-19 21:30:56.005514', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-19 21:30:56.008515', '/upload/cover/1718803629910.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-19 21:30:56.461448', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-19 21:30:56.467772', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-19 21:30:56.526753', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-19 21:30:56.597695', '/myapp/index/thing/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-19 21:31:03.187542', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-19 21:31:03.322099', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-19 21:31:07.878570', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-19 21:31:08.106955', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-19 21:31:14.248552', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-19 21:31:14.485785', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-19 21:31:18.548052', '/upload/cover/1718803629910.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-19 21:31:22.342441', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-19 21:31:22.472756', '/myapp/admin/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-19 21:31:23.819394', '/upload/cover/1718803635005.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-19 21:31:28.076361', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-19 21:31:28.214837', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-19 21:31:29.332952', '/upload/cover/1718803643523.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-19 21:31:36.995030', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-19 21:31:37.243570', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-19 21:31:38.284126', '/upload/cover/1718803648981.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-19 21:31:41.995390', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-19 21:31:42.239694', '/myapp/admin/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-19 21:31:43.978172', '/upload/cover/1718803654690.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-19 21:31:48.127472', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-19 21:31:48.294774', '/myapp/admin/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-19 21:31:49.128747', '/upload/cover/1718803659253.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-19 21:31:52.996428', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-19 21:31:53.142239', '/myapp/admin/thing/list', 'GET', NULL, '118');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-19 21:31:57.569060', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-19 21:31:57.652850', '/myapp/index/thing/getRecommend', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-19 21:31:57.736803', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-19 21:31:57.778247', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-19 21:31:57.786331', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-19 21:31:57.786331', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-19 21:31:57.788340', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-19 21:31:57.790340', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-19 21:31:57.790340', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-19 21:31:57.841539', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-19 21:31:57.842540', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-19 21:31:57.842540', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-19 21:31:58.300534', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-19 21:31:58.303518', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-19 21:31:58.372625', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-19 21:31:58.422105', '/myapp/index/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-19 21:32:02.559943', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-19 21:32:03.116491', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-19 21:32:03.835089', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-19 21:32:04.300866', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-19 21:32:05.181575', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-19 21:32:54.985632', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-19 21:32:54.995099', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-19 21:32:55.027786', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-19 21:32:55.079824', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-19 21:32:55.784079', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-19 21:32:55.851952', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-19 21:32:55.908458', '/myapp/index/thing/getRecommend', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-19 21:32:56.849744', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-19 21:32:56.853312', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-19 21:32:56.911678', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-19 21:32:56.970773', '/myapp/index/thing/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-19 21:32:57.777711', '/myapp/index/thing/list', 'GET', NULL, '176');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-19 21:32:58.251368', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-19 21:33:15.922354', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-19 21:33:15.948065', '/myapp/index/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-19 21:33:15.951064', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-19 21:33:15.957064', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-19 21:33:15.968070', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-19 21:33:16.930301', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-19 21:33:17.924376', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-19 21:33:18.156467', '/myapp/index/thing/list', 'GET', NULL, '268');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-19 21:33:18.176524', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-19 21:33:18.406830', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-19 21:33:18.939260', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-19 21:33:19.484271', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-19 21:33:20.985965', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-19 21:33:21.573109', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-19 21:33:22.655976', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-19 21:33:23.299962', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-19 21:33:24.504293', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-19 21:33:25.099480', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-19 21:33:29.591204', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-19 21:33:30.215889', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-19 21:33:31.384457', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-19 21:33:32.073252', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-19 21:33:42.544736', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-19 21:33:42.586539', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-19 21:33:42.593554', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-19 21:33:42.635019', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-19 21:33:42.663520', '/myapp/index/comment/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-19 21:33:42.709498', '/myapp/index/comment/list', 'GET', NULL, '176');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-19 21:33:59.111717', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-19 21:33:59.126910', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-19 21:33:59.166437', '/myapp/index/user/info', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-19 21:33:59.212504', '/myapp/index/user/info', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-19 21:35:22.442324', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-19 21:35:22.447314', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-19 21:35:22.473321', '/myapp/index/thing/getRecommend', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-19 21:35:22.503356', '/myapp/index/thing/getRecommend', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-19 21:35:22.518931', '/myapp/index/thing/getRecommend', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-19 21:35:22.572935', '/myapp/index/thing/getRecommend', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-19 21:36:06.020717', '/myapp/index/thing/rate', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-19 21:36:07.409489', '/myapp/index/thing/addWishUser', 'POST', NULL, '105');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-19 21:36:08.837999', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-19 21:36:08.844624', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-19 21:36:08.895218', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-19 21:36:08.948959', '/upload/cover/1718803866549.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-19 21:36:09.006592', '/upload/cover/1718803886920.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-19 21:36:09.014837', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-19 21:36:09.016324', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-19 21:36:09.025468', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-19 21:36:09.026485', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-19 21:36:09.029810', '/upload/cover/1718803906937.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-19 21:36:09.029810', '/upload/cover/1718803911723.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-19 21:36:09.905491', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-19 21:36:09.911491', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-19 21:36:09.932030', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-19 21:36:09.958077', '/myapp/admin/ad/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-19 21:36:09.971625', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-19 21:36:55.917053', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-19 21:36:55.963564', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-19 21:36:56.008105', '/upload/cover/1718803895812.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-19 21:36:56.009102', '/upload/cover/1718803895812.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-19 21:36:56.010387', '/upload/cover/1718803895812.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-19 21:36:56.010387', '/upload/cover/1718803895812.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-19 21:36:56.014874', '/upload/cover/1718803895812.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-19 21:36:56.020018', '/upload/cover/1718803895812.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-19 21:36:56.027352', '/upload/cover/1718803911723.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-19 21:36:56.043685', '/upload/cover/1718803911723.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-19 21:36:59.435788', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-19 21:36:59.454277', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-19 21:37:08.126912', '/myapp/index/user/register', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-19 21:37:10.652157', '/myapp/index/user/login', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-19 21:37:10.696547', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-19 21:37:10.705091', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-19 21:37:10.710109', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-19 21:37:10.766721', '/myapp/index/user/info', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-19 21:37:10.800859', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-19 21:37:10.801867', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-19 21:37:10.801867', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-19 21:37:10.801867', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-19 21:37:12.635497', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-19 21:37:12.642491', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-19 21:37:12.649053', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-19 21:37:12.659241', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-19 21:37:12.697280', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-19 21:37:12.731592', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-19 21:37:14.109697', '/myapp/index/thing/listUserThing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-19 21:37:14.114698', '/myapp/index/thing/listUserThing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-19 21:37:14.492951', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-19 21:37:17.642755', '/myapp/index/user/info', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-19 21:37:17.654992', '/myapp/index/user/info', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-19 21:37:17.659315', '/myapp/index/user/info', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-19 21:37:17.680068', '/myapp/index/user/info', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-19 21:37:18.354220', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-19 21:37:18.382308', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-19 21:37:18.387296', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-19 21:37:18.432875', '/myapp/index/comment/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-19 21:37:18.437887', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-19 21:37:18.460330', '/myapp/index/comment/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-19 21:37:19.336044', '/myapp/index/thing/addWishUser', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-19 21:37:19.372690', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-19 21:37:19.781082', '/myapp/index/thing/addCollectUser', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-19 21:37:19.834127', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-19 21:37:20.849306', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-19 21:37:20.882310', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-19 21:37:20.912484', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-19 21:37:20.931620', '/myapp/admin/ad/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-19 21:37:21.689547', '/myapp/index/thing/addWishUser', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-19 21:37:21.738603', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-19 21:37:22.158184', '/myapp/index/thing/addCollectUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-19 21:37:22.225896', '/myapp/index/thing/detail', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-19 21:37:22.984547', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-19 21:37:23.012794', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-19 21:37:23.024880', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-19 21:37:23.041365', '/myapp/admin/ad/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-19 21:37:24.981543', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-19 21:37:24.997241', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-19 21:37:25.060879', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-19 21:37:25.070089', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-19 21:37:26.275548', '/myapp/index/thing/addWishUser', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-19 21:37:26.323086', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-19 21:37:26.653100', '/myapp/index/thing/addCollectUser', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-19 21:37:26.696780', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-19 21:37:27.636363', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-19 21:37:27.640360', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-19 21:37:27.661126', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-19 21:37:27.680130', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-19 21:37:27.707122', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-19 21:37:27.721195', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-19 21:37:28.720261', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-19 21:37:30.071839', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-19 21:37:55.690022', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-19 21:37:58.991985', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-19 21:37:58.997989', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-19 21:37:59.002460', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-19 21:37:59.037044', '/myapp/admin/ad/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-19 21:37:59.058468', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-19 21:37:59.101898', '/upload/cover/1718803847938.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-19 21:37:59.103884', '/upload/cover/1718803847938.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-19 21:37:59.147314', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-19 21:37:59.147314', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-19 21:37:59.148322', '/upload/cover/1718803843367.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-19 21:38:00.317410', '/myapp/index/thing/removeWishUser', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-19 21:38:00.367815', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-19 21:38:01.440727', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-19 21:38:02.003643', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-19 21:38:04.456284', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-19 21:38:04.470286', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-19 21:38:04.490876', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-19 21:38:04.509507', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-19 21:38:04.518509', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-19 21:38:04.535899', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-19 21:38:15.816700', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-19 21:38:15.839716', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-19 21:38:15.846716', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-19 21:38:15.864717', '/myapp/index/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-19 21:38:15.910814', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-19 21:38:15.915812', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-19 21:38:15.912818', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-19 21:38:15.919814', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-19 21:38:15.918811', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-19 21:38:15.921820', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-19 21:38:15.931260', '/upload/cover/1718803906937.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-19 21:38:15.932253', '/upload/cover/1718803911723.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-19 21:38:23.494545', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-19 21:38:23.500562', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-19 21:38:23.513904', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-19 21:38:23.520904', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-19 21:38:23.565905', '/myapp/admin/ad/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-19 21:38:23.589920', '/myapp/admin/ad/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-19 21:39:03.362090', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-19 21:39:03.382106', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-19 21:39:03.385139', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-19 21:39:03.402979', '/myapp/index/user/info', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-19 21:39:03.411858', '/myapp/index/user/info', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-19 21:39:03.427106', '/myapp/index/user/info', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-19 21:39:03.445241', '/myapp/index/user/info', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-19 21:39:53.312402', '/myapp/index/order/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-19 21:39:53.439940', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-19 21:39:53.441944', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-19 21:40:03.351492', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-19 21:40:03.378833', '/myapp/index/thing/getWishThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-19 21:40:03.386870', '/myapp/index/thing/getWishThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-19 21:40:03.414503', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-19 21:40:03.422252', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-19 21:40:03.433259', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-19 21:40:55.024473', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-19 21:40:55.030477', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-19 21:40:55.042457', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-19 21:40:55.057222', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-19 21:40:55.089280', '/myapp/index/comment/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-19 21:40:55.109852', '/upload/cover/1718803852561.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-19 21:40:55.115317', '/upload/cover/1718803852561.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-19 21:40:55.133979', '/upload/cover/1718803843367.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-19 21:40:55.135080', '/upload/cover/1718803843367.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-19 21:40:55.137086', '/upload/cover/1718803843367.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-19 21:40:57.635008', '/myapp/index/order/cancel_order', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-19 21:40:57.674639', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-19 21:41:07.940356', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-19 21:41:08.714741', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-19 21:41:12.047157', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-19 21:41:40.063120', '/myapp/admin/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-19 21:41:45.392823', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-19 21:41:45.866157', '/myapp/admin/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-19 21:41:58.108434', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-19 21:41:58.125600', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-19 21:41:58.127598', '/upload/cover/1718803862000.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-19 21:41:58.591843', '/myapp/index/thing/getWishThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-19 21:42:00.924378', '/myapp/index/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-19 21:42:01.887166', '/myapp/index/comment/listMyComments', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-19 21:42:02.454085', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-20 21:36:31.482588', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-20 21:36:31.629518', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-20 21:36:31.642412', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-20 21:36:31.647584', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-20 21:36:31.670017', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-20 21:36:31.675292', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-20 21:36:31.681517', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-20 21:36:31.705992', '/upload/cover/1718803852561.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-20 21:36:43.444150', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-20 21:36:57.425861', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-20 21:36:57.467894', '/myapp/admin/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-20 21:37:01.814825', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-20 21:37:16.414563', '/myapp/admin/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-20 21:37:20.273156', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-20 21:37:20.278157', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-20 21:37:20.288157', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-20 21:37:20.308155', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-20 21:37:20.308155', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-20 21:37:20.316158', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-20 21:37:20.316158', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-20 21:37:20.316158', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-20 21:37:20.316158', '/upload/cover/1718803872862.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-20 21:37:20.317156', '/upload/cover/1718803886920.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-20 21:37:20.319157', '/upload/cover/1718803900861.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-20 21:37:20.325155', '/upload/cover/1718803906937.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-20 21:37:20.325155', '/upload/cover/1718803911723.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-20 21:37:20.325155', '/upload/cover/1718803911723.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-20 21:37:31.754243', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-20 21:37:31.755269', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-20 21:37:31.756866', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-20 21:37:31.762390', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-20 21:37:31.773056', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-20 21:37:31.782686', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-20 21:37:36.136223', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-20 21:37:36.169629', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-20 21:37:38.668161', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-20 21:37:38.690898', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-20 21:37:41.053268', '/myapp/index/comment/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-20 21:37:43.153478', '/myapp/index/comment/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-20 21:37:44.712527', '/myapp/index/comment/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-20 21:37:52.033063', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-20 21:37:53.011588', '/myapp/admin/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-20 21:37:53.948432', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-20 21:38:04.647368', '/myapp/admin/user/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-20 21:38:04.680709', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-20 21:38:07.530011', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-20 21:38:11.985920', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-20 21:38:11.993220', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-20 21:38:12.000411', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-20 21:38:12.012836', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-20 21:38:12.014354', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-20 21:38:12.023009', '/myapp/index/user/info', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-20 21:38:37.342538', '/myapp/index/order/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-20 21:38:37.763081', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-20 21:38:37.789403', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-20 21:38:40.995221', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-20 21:38:41.731695', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-20 21:38:42.674892', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-20 21:38:47.560653', '/myapp/index/thing/getRecommend', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-20 21:38:47.575526', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-20 21:38:47.583522', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-20 21:38:47.596229', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-20 21:38:47.602820', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-20 21:38:47.617236', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-20 21:38:49.323078', '/myapp/index/thing/addCollectUser', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-20 21:38:49.391089', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-20 21:38:49.693526', '/myapp/index/thing/addWishUser', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-20 21:38:49.728623', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-20 21:38:53.062051', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-20 21:38:53.092734', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-20 21:38:55.207717', '/myapp/index/comment/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-20 21:38:55.238713', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-20 21:39:01.304929', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-20 21:39:01.308904', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-20 21:39:01.310290', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-20 21:39:01.317554', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-20 21:39:01.339085', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-20 21:39:01.343085', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-20 21:39:02.276071', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-20 21:39:02.280069', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-20 21:39:02.279069', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-20 21:39:02.290639', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-20 21:39:02.306019', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-20 21:39:02.309021', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-20 21:39:26.816503', '/myapp/index/order/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-20 21:39:26.870197', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-20 21:39:26.879108', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-20 21:39:29.924810', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-20 21:39:29.929834', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-20 21:39:29.936487', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-20 21:39:29.953929', '/myapp/index/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-20 21:39:30.569021', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-20 21:39:30.576455', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-20 21:39:30.600312', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-20 21:39:33.853582', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-20 21:39:33.855595', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-20 21:39:33.875068', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-20 21:39:33.880063', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-20 21:39:33.883145', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-20 21:39:33.897151', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-20 21:39:40.023701', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-20 21:39:40.606576', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-20 21:39:42.499804', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-20 21:39:58.377654', '/myapp/admin/ad/create', 'POST', NULL, '170');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-20 21:39:58.409732', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-20 21:39:58.464979', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-20 21:40:17.262218', '/myapp/admin/ad/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-20 21:40:17.296760', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-20 21:40:17.345571', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-20 21:40:19.077977', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-20 21:40:29.112349', '/myapp/admin/notice/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-20 21:40:29.144430', '/myapp/admin/notice/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-20 21:40:55.448934', '/myapp/admin/notice/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-20 21:40:55.486496', '/myapp/admin/notice/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-20 21:41:00.250696', '/myapp/admin/loginLog/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-20 21:41:00.995266', '/myapp/admin/opLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-20 21:41:02.479478', '/myapp/admin/errorLog/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-20 21:41:03.985919', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-20 21:41:05.286172', '/myapp/admin/feedback/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-20 21:41:10.135579', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-20 21:41:10.138112', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-20 21:41:10.141117', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-20 21:41:10.160133', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-20 21:41:13.092991', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-20 21:41:13.096995', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-20 21:41:28.955753', '/myapp/index/feedback/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-20 21:41:30.848076', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-20 21:41:30.851083', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-20 21:41:49.777161', '/myapp/index/feedback/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-20 21:41:51.782993', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-20 21:41:51.786541', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-20 21:41:53.939882', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-20 21:42:03.318411', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-20 21:42:03.329414', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-20 21:42:03.339440', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-20 21:42:03.357920', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-20 21:42:03.376242', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-20 21:42:03.377264', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-20 21:42:03.388293', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-20 21:42:03.393263', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-20 21:42:07.046380', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-20 21:42:07.043381', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-20 21:42:07.051798', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-20 21:42:07.055145', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-20 21:42:07.086029', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-20 21:42:07.114557', '/myapp/admin/ad/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-20 21:42:13.425831', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-20 21:42:13.429844', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-20 21:42:13.436838', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-20 21:42:13.450807', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-20 21:42:16.765208', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-20 21:42:16.773220', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-20 21:42:16.794220', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-20 21:42:16.801275', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-20 21:42:16.846855', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-20 21:42:16.866995', '/myapp/index/comment/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-20 21:42:20.130014', '/myapp/admin/feedback/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-20 21:42:20.660115', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-20 21:42:27.662112', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-20 21:42:27.663121', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-20 21:42:27.669626', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-20 21:42:27.685974', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-20 21:42:32.894683', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-20 21:42:32.903967', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-20 21:42:32.915185', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-20 21:42:32.924303', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-20 21:42:32.955186', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-20 21:42:32.957188', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-20 21:42:35.595394', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-20 21:42:35.599502', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-20 21:42:35.605499', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-20 21:42:35.616497', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-20 21:42:35.631541', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-20 21:42:35.634536', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-20 21:42:35.639722', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-20 21:42:35.647723', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-20 21:42:36.678536', '/myapp/admin/feedback/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-20 21:42:37.134459', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-20 21:42:42.024887', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-20 21:42:42.029128', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-20 21:42:42.032133', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-20 21:42:42.047600', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-20 21:42:44.756354', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-20 21:42:44.759599', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-20 21:42:44.769320', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-20 21:42:44.774319', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-20 21:42:44.794060', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-20 21:42:44.800057', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-20 21:42:48.741086', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-20 21:42:48.742429', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-20 21:42:48.748440', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-20 21:42:48.754096', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-20 21:42:48.780669', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-20 21:42:48.781704', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-20 21:42:49.762791', '/myapp/admin/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-20 21:42:50.286700', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-20 21:43:03.904685', '/myapp/admin/feedback/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-20 21:43:05.606953', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1071');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-20 21:43:10.317757', '/myapp/admin/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-20 21:43:10.954947', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-20 21:43:11.771798', '/myapp/admin/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-20 21:43:12.390332', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-20 21:43:12.946540', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-20 21:43:13.001522', '/myapp/admin/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-20 21:44:31.724906', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-20 21:44:31.727889', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-20 21:44:32.119198', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-20 21:44:32.177769', '/myapp/admin/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-20 21:44:32.363461', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-20 21:44:32.370412', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-20 21:44:32.372411', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-20 21:44:32.382051', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-20 21:44:32.406081', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-20 21:44:32.410032', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-20 21:44:32.426066', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-20 21:44:32.432068', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-20 21:44:52.115859', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-20 21:44:52.187564', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-20 21:44:52.196177', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-20 21:44:52.207794', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-20 21:46:53.195599', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-20 21:46:53.198585', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-20 21:46:53.200583', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-20 21:46:53.202590', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-20 21:46:53.215919', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-20 21:46:53.230332', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-20 21:46:53.232342', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-20 21:46:53.273960', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-20 21:46:56.298161', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-20 21:46:56.302157', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-20 21:46:56.311371', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-20 21:46:56.317384', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-20 21:46:56.334258', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-20 21:46:56.344264', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-20 21:48:44.383018', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-20 21:48:44.384026', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-20 21:48:44.394115', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-20 21:48:44.395416', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-20 21:48:47.599984', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-20 21:48:47.601981', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-20 21:48:47.610023', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-20 21:48:47.615030', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-20 21:48:47.632599', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-20 21:48:47.642765', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-20 21:48:47.643765', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-20 21:48:47.655984', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-20 21:48:49.067234', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-20 21:48:49.070975', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-20 21:48:49.090672', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-20 21:48:49.926916', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-20 21:48:49.929586', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-20 21:48:49.932624', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-20 21:48:49.951145', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-20 21:48:54.242154', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-20 21:48:54.245358', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-20 21:48:54.264378', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-20 21:48:55.148616', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-20 21:48:55.153131', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-20 21:48:55.157242', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-20 21:48:55.172618', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-20 21:49:34.910124', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-20 21:49:34.981227', '/myapp/admin/classification/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-20 21:49:35.265038', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-20 21:49:35.268035', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-20 21:49:35.277389', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-20 21:49:35.290360', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-20 21:49:36.080532', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-20 21:49:37.174629', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-20 21:49:40.121512', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-20 21:50:04.390388', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-20 21:50:09.141536', '/myapp/admin/overview/count', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-20 21:50:33.131641', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-20 21:50:33.922079', '/myapp/admin/overview/count', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-20 21:50:34.912445', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-20 21:50:51.432416', '/myapp/admin/adminLogin', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-20 21:50:51.824683', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-20 21:50:51.878478', '/myapp/admin/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-20 21:50:54.767253', '/myapp/admin/thing/update', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-20 21:50:59.008124', '/myapp/admin/adminLogin', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-20 21:50:59.124875', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-20 21:50:59.176940', '/myapp/admin/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-20 21:51:02.605774', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-20 21:51:02.730845', '/myapp/admin/thing/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-20 21:51:03.712640', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-20 21:51:05.038843', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-20 21:51:07.127751', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-20 21:51:08.554309', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-20 21:51:09.503341', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-20 21:51:11.456957', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-20 21:51:15.574424', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-20 21:51:20.597799', '/myapp/admin/feedback/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-20 21:51:22.850363', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-20 21:51:22.910373', '/myapp/admin/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-20 21:51:29.264499', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-20 21:51:29.272314', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-20 21:51:29.281983', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-20 21:51:29.311271', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-20 21:51:29.316309', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-20 21:51:29.325403', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-20 21:51:29.327403', '/upload/ad/1718890795629.jpeg', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-20 21:51:36.936105', '/myapp/index/user/login', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-20 21:51:44.108595', '/myapp/index/user/login', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-20 21:51:44.140507', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-20 21:51:44.141894', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-20 21:51:44.158852', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-20 21:51:44.169847', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-20 21:51:45.771395', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-20 21:51:45.781757', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-20 21:51:45.779757', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-20 21:51:45.796331', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-20 21:51:45.808222', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-20 21:51:45.818874', '/myapp/index/user/info', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-20 21:51:49.322539', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-20 21:51:49.325944', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-20 21:51:49.347711', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-20 21:51:49.352844', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-20 21:51:49.355840', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-20 21:51:49.363249', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-20 21:51:59.205682', '/myapp/index/user/update', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-20 21:52:00.046099', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-20 21:52:00.048348', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-20 21:52:00.068273', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-20 21:52:00.073291', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-20 21:52:00.078451', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-20 21:52:00.079449', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-20 21:52:00.089443', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-20 21:52:05.183761', '/myapp/index/user/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-20 21:52:05.918880', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-20 21:52:05.927618', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-20 21:52:05.942532', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-20 21:52:05.945531', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-20 21:52:05.952799', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-20 21:52:05.953798', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-20 21:52:05.962393', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-20 21:52:08.456668', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-20 21:52:10.381158', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-20 21:52:11.850560', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-20 21:52:11.853902', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-20 21:52:11.863698', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-20 21:52:11.879622', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-20 21:52:33.736840', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-20 21:52:33.747980', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-20 21:52:33.762441', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-20 21:52:33.768619', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-20 21:52:36.592599', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-20 21:52:36.594572', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-20 21:52:36.612295', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-20 21:52:37.909443', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-20 21:52:37.911460', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-20 21:52:37.927810', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-20 21:52:37.932822', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-20 21:52:37.935808', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-20 21:52:37.945809', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-20 21:52:39.251146', '/myapp/index/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-20 21:52:40.118585', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-20 21:52:40.744439', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-20 21:52:42.153988', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-20 21:52:42.609504', '/myapp/index/comment/listMyComments', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-20 21:53:19.758061', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-20 21:53:22.820725', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-20 21:53:22.827938', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-20 21:53:22.837050', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-20 21:53:22.838050', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-20 21:53:22.882420', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-20 21:53:22.897025', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-20 21:53:22.898066', '/upload/ad/1718890805272.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-20 21:53:22.909596', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-20 21:53:22.924218', '/upload/avatar/1718891513734.jpeg', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-20 21:53:24.771228', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-20 21:53:25.576149', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-20 21:53:27.517016', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-20 21:53:28.712082', '/myapp/index/order/list', 'GET', NULL, '49');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1718804393294', 2, '2', '2024-06-19 21:39:53.304289', '刘德华', '济南市文化西路88号', '13522221111', '', 3, 3);
INSERT INTO `b_order` VALUES (2, '1718890717330', 2, '1', '2024-06-20 21:38:37.337530', '王妹妹', '德州市美食街', '13222221111', '', 4, 3);
INSERT INTO `b_order` VALUES (3, '1718890766800', 2, '1', '2024-06-20 21:39:26.805154', '王梅', '天津市文化西路88号', '13433332222', '', 12, 3);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 7, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 3, 9, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 4, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 6, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 12, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 1, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 5, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 9, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 8, 6, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `guige` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chicun` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cailiao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `zhongliang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '新花样', 'cover/1718803843367.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '2-4人食', '6寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 2, 0, 0, 0, 2, NULL, 3, '200g');
INSERT INTO `b_thing` VALUES (2, '雪域牛乳芝士', 'cover/1718803847938.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '44', '2-4人食', '6寸', '面包片+奶油+牛乳', '0', '2024-06-19 21:16:25.528266', 7, 0, 0, 1, 4, NULL, 4, '200g');
INSERT INTO `b_thing` VALUES (3, '春之赞歌', 'cover/1718803852561.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '25', '5-9人食', '8寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 9, 0, 1, 1, 3, NULL, 3, '500g');
INSERT INTO `b_thing` VALUES (4, '雪域牛乳芝士', 'cover/1718803862000.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '2-4人食', '6寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 5, 0, 1, 1, 2, NULL, 3, '200g');
INSERT INTO `b_thing` VALUES (5, '蒸蒸日上', 'cover/1718803866549.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '125', '10-16人食', '6寸', '面包片+奶油+巧克力', '0', '2024-06-19 21:16:25.528266', 1, 0, 0, 0, 1, NULL, 3, '200g');
INSERT INTO `b_thing` VALUES (6, '八方来财', 'cover/1718803872862.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '10-16人食', '8寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 3, 0, 1, 1, 4, NULL, 3, '200g');
INSERT INTO `b_thing` VALUES (7, '雪域牛乳芝士', 'cover/1718803881066.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '55', '5-9人食', '6寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 0, 0, 0, 0, 2, NULL, 3, '300g');
INSERT INTO `b_thing` VALUES (8, '测试蛋糕9', 'cover/1718803886920.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '2-4人食', '12寸', '面包片+奶油+水果', '0', '2024-06-19 21:16:25.528266', 6, 0, 0, 0, 2, NULL, 3, '200g');
INSERT INTO `b_thing` VALUES (9, '测试蛋糕222', 'cover/1718803895812.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '126', '5-9人食', '12寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 2, 0, 0, 0, 3, NULL, 3, '500g');
INSERT INTO `b_thing` VALUES (10, '测试蛋糕2223', 'cover/1718803900861.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '10-16人食', '6寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 0, 0, 0, 0, 1, NULL, 3, '100g');
INSERT INTO `b_thing` VALUES (11, '雪域牛乳测试34', 'cover/1718803906937.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '5-9人食', '12寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 0, 0, 0, 0, 4, NULL, 3, '200g');
INSERT INTO `b_thing` VALUES (12, '雪域牛乳芝士343', 'cover/1718803911723.jpeg', '蛋糕是一种美味的甜点，制作简单而丰富多样。通常由面粉、砂糖、蛋和黄油等原料混合制成面糊，然后在烤箱中烤制而成。蛋糕可以根据口味和配料的不同，分为各种种类，如海绵蛋糕、奶油蛋糕、巧克力蛋糕等。\r\n\r\n蛋糕香甜可口，口感丰富，是适合各种场合的甜点选择。在生日、节日或庆典上，蛋糕往往扮演着重要的角色，象征着甜蜜和幸福。蛋糕的装饰也是多种多样的，可以根据不同的主题和场合进行定制，从简单的水果装饰到精美的糖霜裱花，令人眼前一亮。\r\n\r\n除了传统的蛋糕种类外，现代还出现了各种创新款式的蛋糕，如芝士蛋糕、红丝绒蛋糕、抹茶蛋糕等，满足不同人群的口味需求。无论是甜食爱好者还是喜欢尝试新口味的人，都能在各种蛋糕中找到满足。让我们一起品尝美味的蛋糕，享受甜蜜的时刻！', '32', '5-9人食', '6寸', '面包片+奶油', '0', '2024-06-19 21:16:25.528266', 3, 0, 0, 0, 3, NULL, 3, '200g');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 3);
INSERT INTO `b_thing_collect` VALUES (1, 3, 3);
INSERT INTO `b_thing_collect` VALUES (3, 4, 3);
INSERT INTO `b_thing_collect` VALUES (4, 6, 3);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 3, 3);
INSERT INTO `b_thing_wish` VALUES (3, 4, 3);
INSERT INTO `b_thing_wish` VALUES (4, 6, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-19 21:03:15.628177', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'hhhjjjj98', 'avatar/1718891513734.jpeg', '9987666', NULL, NULL, NULL, '2024-06-19 21:37:08.124418', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'aaaaa', '594f803b380a41396ed63dca39503542', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-20 21:38:04.638128', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-19 20:55:38.990171');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-19 20:55:39.283870');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-19 20:55:39.336477');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-19 20:55:39.341478');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-19 20:55:39.346477');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-19 20:55:39.448400');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-19 20:55:39.511531');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-19 20:55:39.576789');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-19 20:55:39.585690');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-19 20:55:39.667317');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-19 20:55:39.675317');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-19 20:55:39.690315');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-19 20:55:39.739523');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-19 20:55:39.825250');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-19 20:55:39.877455');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-19 20:55:39.884143');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-19 20:55:39.951934');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-19 20:55:40.789633');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-19 20:55:40.836573');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-19 20:55:41.057517');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-19 20:55:41.160185');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240619_2055', '2024-06-19 20:55:41.612058');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-19 20:55:41.646771');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
