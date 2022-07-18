/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : spbi

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 18/07/2022 11:45:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for diboot_column_ext
-- ----------------------------
DROP TABLE IF EXISTS `diboot_column_ext`;
CREATE TABLE `diboot_column_ext`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `col_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ref_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ref_relationship` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ref_table` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ref_column` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `as_column` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `object_bind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `on_target_bind` tinyint(1) NULL DEFAULT NULL,
  `form_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'INPUT',
  `extensions` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_diboot_column_ext`(`table_name`, `col_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diboot_column_ext
-- ----------------------------
INSERT INTO `diboot_column_ext` VALUES (1, 'iam_user', 'org_id', 'T', 'n-1', 'iam_org', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (2, 'iam_account', 'user_id', 'T', 'n-1', 'iam_user', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (3, 'iam_user', 'id', 'T', 'n-n', 'iam_role', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (4, 'iam_resource_permission', 'parent_id', 'T', 'n-1', 'iam_resource_permission', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (5, 'iam_role', 'id', 'T', 'n-n', 'iam_resource_permission', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (6, 'iam_login_trace', 'user_id', 'T', 'n-1', 'iam_user', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (7, 'iam_org', 'parent_id', 'T', 'n-1', 'iam_org', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (8, 'iam_org', 'manager_id', 'T', 'n-1', 'iam_user', 'id', NULL, NULL, 0, 'INPUT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (9, 'iam_account', 'auth_type', 'D', NULL, NULL, 'AUTH_TYPE', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (10, 'iam_account', 'status', 'D', NULL, NULL, 'ACCOUNT_STATUS', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (11, 'iam_user', 'gender', 'D', NULL, NULL, 'GENDER', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (12, 'iam_user', 'status', 'D', NULL, NULL, 'USER_STATUS', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (13, 'iam_member', 'gender', 'D', NULL, NULL, 'GENDER', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (14, 'iam_member', 'status', 'D', NULL, NULL, 'MEMBER_STATUS', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (15, 'iam_login_trace', 'auth_type', 'D', NULL, NULL, 'AUTH_TYPE', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (16, 'iam_org', 'type', 'D', NULL, NULL, 'ORG_TYPE', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (17, 'iam_position', 'data_permission_type', 'D', NULL, NULL, 'DATA_PERMISSION_TYPE', NULL, NULL, 0, 'S_SELECT', NULL, 0, '2022-07-18 11:30:31', '2022-07-18 11:30:31');
INSERT INTO `diboot_column_ext` VALUES (18, 't_test', 'id', '', '', '', '', '', '', 0, 'NONE', '{\"configList\":[]}', 0, '2022-07-18 11:42:07', '2022-07-18 11:42:07');
INSERT INTO `diboot_column_ext` VALUES (19, 't_test', 'name', '', '', '', '', '', '', 0, 'INPUT', '{\"configList\":[]}', 0, '2022-07-18 11:42:07', '2022-07-18 11:42:07');
INSERT INTO `diboot_column_ext` VALUES (20, 't_test', 'is_deleted', '', '', '', '', '', '', 0, 'NONE', '{\"configList\":[]}', 0, '2022-07-18 11:42:07', '2022-07-18 11:42:07');
INSERT INTO `diboot_column_ext` VALUES (21, 't_test', 'create_by', '', '', '', '', '', '', 0, 'NONE', '{\"configList\":[]}', 0, '2022-07-18 11:42:07', '2022-07-18 11:42:07');
INSERT INTO `diboot_column_ext` VALUES (22, 't_test', 'create_time', '', '', '', '', '', '', 0, 'NONE', '{\"formatter\":\"yyyy-MM-dd HH:mm\"}', 0, '2022-07-18 11:42:07', '2022-07-18 11:42:07');

-- ----------------------------
-- Table structure for diboot_custom_panel
-- ----------------------------
DROP TABLE IF EXISTS `diboot_custom_panel`;
CREATE TABLE `diboot_custom_panel`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `panel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `panel_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `project_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dir_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `param_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `event_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `methods_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `config_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diboot_custom_panel
-- ----------------------------

-- ----------------------------
-- Table structure for diboot_table_ext
-- ----------------------------
DROP TABLE IF EXISTS `diboot_table_ext`;
CREATE TABLE `diboot_table_ext`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `obj_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `module` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `extensions` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_diboot_table_ext`(`table_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diboot_table_ext
-- ----------------------------
INSERT INTO `diboot_table_ext` VALUES (1, 't_test', 'test', 'AUTO', NULL, 'Test', '{\"treeStruct\":false}', 0, '2022-07-18 11:41:46', '2022-07-18 11:42:08');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '父ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `app_module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用模块',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型',
  `item_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '显示名',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储值',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述说明',
  `extdata` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展JSON',
  `sort_id` smallint(6) NOT NULL DEFAULT 99 COMMENT '排序号',
  `is_editable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否可改',
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否可删',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_directory`(`type`, `item_value`) USING BTREE,
  INDEX `idx_directory_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10041 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (10000, 0, 0, NULL, 'AUTH_TYPE', '登录认证方式', NULL, 'IAM用户登录认证方式', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10001, 10000, 0, NULL, 'AUTH_TYPE', '用户名密码', 'PWD', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10002, 10000, 0, NULL, 'AUTH_TYPE', '单点登录', 'SSO', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10003, 10000, 0, NULL, 'AUTH_TYPE', '公众号', 'WX_MP', NULL, NULL, 2, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10004, 10000, 0, NULL, 'AUTH_TYPE', '企业微信', 'WX_CP', NULL, NULL, 3, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10005, 10000, 0, NULL, 'AUTH_TYPE', '其他', 'OTHER', NULL, NULL, 4, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10006, 0, 0, NULL, 'ACCOUNT_STATUS', '账号状态', NULL, 'IAM登录账号状态', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10007, 10006, 0, NULL, 'ACCOUNT_STATUS', '有效', 'A', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10008, 10006, 0, NULL, 'ACCOUNT_STATUS', '无效', 'I', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10009, 10006, 0, NULL, 'ACCOUNT_STATUS', '锁定', 'L', NULL, NULL, 2, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10010, 0, 0, NULL, 'USER_STATUS', '用户状态', NULL, 'IAM用户状态', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10011, 10010, 0, NULL, 'USER_STATUS', '在职', 'A', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10012, 10010, 0, NULL, 'USER_STATUS', '离职', 'I', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10013, 0, 0, NULL, 'GENDER', '用户性别', NULL, '用户性别数据字典', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10014, 10013, 0, NULL, 'GENDER', '女', 'F', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10015, 10013, 0, NULL, 'GENDER', '男', 'M', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10016, 10013, 0, NULL, 'GENDER', '未知', 'UK', NULL, NULL, 2, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10017, 0, 0, NULL, 'PERMISSION_TYPE', '权限类型', NULL, 'IAM权限类型', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10018, 10017, 0, NULL, 'PERMISSION_TYPE', '菜单', 'MENU', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10019, 10017, 0, NULL, 'PERMISSION_TYPE', '操作', 'OPERATION', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10020, 0, 0, NULL, 'RESOURCE_PERMISSION_CODE', '前端按钮/权限编码', NULL, '前端按钮/权限编码 常用选项', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10021, 10020, 0, NULL, 'RESOURCE_PERMISSION_CODE', '详情', 'detail', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10022, 10020, 0, NULL, 'RESOURCE_PERMISSION_CODE', '新建', 'create', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10023, 10020, 0, NULL, 'RESOURCE_PERMISSION_CODE', '更新', 'update', NULL, NULL, 2, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10024, 10020, 0, NULL, 'RESOURCE_PERMISSION_CODE', '删除', 'delete', NULL, NULL, 3, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10025, 10020, 0, NULL, 'RESOURCE_PERMISSION_CODE', '导出', 'export', NULL, NULL, 4, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10026, 10020, 0, NULL, 'RESOURCE_PERMISSION_CODE', '导入', 'import', NULL, NULL, 5, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10027, 0, 0, NULL, 'ORG_TYPE', '组织类型', NULL, '组织节点类型', NULL, 99, 0, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10028, 10027, 0, NULL, 'ORG_TYPE', '部门', 'DEPT', NULL, NULL, 0, 0, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10029, 10027, 0, NULL, 'ORG_TYPE', '公司', 'COMP', NULL, NULL, 1, 0, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10030, 0, 0, NULL, 'DATA_PERMISSION_TYPE', 'IAM数据权限类型', NULL, 'IAM数据权限类型定义', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10031, 10030, 0, NULL, 'DATA_PERMISSION_TYPE', '本人', 'SELF', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10032, 10030, 0, NULL, 'DATA_PERMISSION_TYPE', '本人及下属', 'SELF_AND_SUB', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10033, 10030, 0, NULL, 'DATA_PERMISSION_TYPE', '本部门', 'DEPT', NULL, NULL, 2, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10034, 10030, 0, NULL, 'DATA_PERMISSION_TYPE', '本部门及下属部门', 'DEPT_AND_SUB', NULL, NULL, 3, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10035, 10030, 0, NULL, 'DATA_PERMISSION_TYPE', '全部', 'ALL', NULL, NULL, 4, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10036, 0, 0, NULL, 'POSITION_GRADE', '职级定义', NULL, '职务级别定义', NULL, 99, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10037, 10036, 0, NULL, 'POSITION_GRADE', '初级', 'E1', NULL, NULL, 0, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10038, 10036, 0, NULL, 'POSITION_GRADE', '中级', 'E2', NULL, NULL, 1, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10039, 10036, 0, NULL, 'POSITION_GRADE', '高级', 'E3', NULL, NULL, 2, 1, 1, 0, '2022-07-18 11:30:30');
INSERT INTO `dictionary` VALUES (10040, 10036, 0, NULL, 'POSITION_GRADE', '专家', 'E4', NULL, NULL, 3, 1, 1, 0, '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for iam_account
-- ----------------------------
DROP TABLE IF EXISTS `iam_account`;
CREATE TABLE `iam_account`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `user_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'IamUser' COMMENT '用户类型',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `auth_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'PWD' COMMENT '认证方式',
  `auth_account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `auth_secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `secret_salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A' COMMENT '用户状态',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_account`(`auth_account`, `auth_type`, `user_type`) USING BTREE,
  INDEX `idx_iam_account_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录账号' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_account
-- ----------------------------
INSERT INTO `iam_account` VALUES (1548872816747044866, 0, 'IamUser', 1548872816617021442, 'PWD', 'admin', '96f2faaf83026a71d35757c1aab533fc', 'aae66a27', 'A', 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for iam_login_trace
-- ----------------------------
DROP TABLE IF EXISTS `iam_login_trace`;
CREATE TABLE `iam_login_trace`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `user_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'IamUser' COMMENT '用户类型',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `auth_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'PWD' COMMENT '认证方式',
  `auth_account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `ip_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `user_agent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户端信息',
  `is_success` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否成功',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_login_trace`(`user_type`, `user_id`) USING BTREE,
  INDEX `idx_iam_login_trace_2`(`auth_account`) USING BTREE,
  INDEX `idx_iam_login_trace_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_login_trace
-- ----------------------------

-- ----------------------------
-- Table structure for iam_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `iam_operation_log`;
CREATE TABLE `iam_operation_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `app_module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用模块',
  `business_obj` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务对象',
  `operation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作描述',
  `user_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'IamUser' COMMENT '用户类型',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `user_realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `request_uri` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求URI',
  `request_method` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求方式',
  `request_params` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `request_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `status_code` smallint(6) NOT NULL DEFAULT 0 COMMENT '状态码',
  `error_msg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `is_deleted` tinyint(1) NULL DEFAULT NULL COMMENT '删除标记',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_operation_log`(`user_type`, `user_id`) USING BTREE,
  INDEX `idx_iam_operation_log_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for iam_org
-- ----------------------------
DROP TABLE IF EXISTS `iam_org`;
CREATE TABLE `iam_org`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '上级ID',
  `top_org_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '企业ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `short_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '短名称',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEPT' COMMENT '组织类别',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `manager_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '负责人ID',
  `depth` smallint(6) NOT NULL DEFAULT 1 COMMENT '层级',
  `sort_id` bigint(20) NULL DEFAULT NULL COMMENT '排序号',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A' COMMENT '状态',
  `org_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_org`(`parent_id`) USING BTREE,
  INDEX `idx_iam_org_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_org
-- ----------------------------
INSERT INTO `iam_org` VALUES (1, 0, 0, 1, '我的公司', '我的公司', 'COMP', 'ROOT', 0, 1, NULL, 'A', '初始根节点，请按需修改', 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for iam_position
-- ----------------------------
DROP TABLE IF EXISTS `iam_position`;
CREATE TABLE `iam_position`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编码',
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否虚拟岗',
  `grade_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职级头衔',
  `grade_value` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '职级',
  `data_permission_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'SELF' COMMENT '数据权限类型',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_position`(`code`) USING BTREE,
  INDEX `idx_iam_position_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_position
-- ----------------------------

-- ----------------------------
-- Table structure for iam_resource_permission
-- ----------------------------
DROP TABLE IF EXISTS `iam_resource_permission`;
CREATE TABLE `iam_resource_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父级资源',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `app_module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用模块',
  `display_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '展现类型',
  `display_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '显示名称',
  `resource_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码',
  `permission_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码',
  `sort_id` bigint(20) NULL DEFAULT NULL COMMENT '排序号',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_resource_permission`(`parent_id`) USING BTREE,
  INDEX `idx_iam_resource_permission_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10067 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_resource_permission
-- ----------------------------
INSERT INTO `iam_resource_permission` VALUES (10000, 0, 0, NULL, 'MENU', '系统管理', 'system', NULL, NULL, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10001, 10000, 0, NULL, 'MENU', '数据字典管理', 'Dictionary', 'Dictionary:read', 10030, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10002, 10001, 0, NULL, 'PERMISSION', '详情', 'detail', 'Dictionary:read', 6, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10003, 10001, 0, NULL, 'PERMISSION', '新建', 'create', 'Dictionary:write', 5, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10004, 10001, 0, NULL, 'PERMISSION', '更新', 'update', 'Dictionary:write,Dictionary:read', 4, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10005, 10001, 0, NULL, 'PERMISSION', '删除', 'delete', 'Dictionary:write', 3, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10006, 10000, 0, NULL, 'MENU', '系统用户管理', 'IamUser', 'IamUser:read', 10029, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10007, 10006, 0, NULL, 'PERMISSION', '部门查看', 'orgTree', 'IamUser:read', 12, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10008, 10006, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamUser:read', 11, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10009, 10006, 0, NULL, 'PERMISSION', '新建', 'create', 'IamUser:write', 10, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10010, 10006, 0, NULL, 'PERMISSION', '更新', 'update', 'IamUser:write,IamUser:read', 9, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10011, 10006, 0, NULL, 'PERMISSION', '删除', 'delete', 'IamUser:write', 8, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10012, 10000, 0, NULL, 'MENU', '角色资源管理', 'IamRole', 'IamRole:read', 10023, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10013, 10012, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamRole:read', 16, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10014, 10012, 0, NULL, 'PERMISSION', '新建', 'create', 'IamRole:write', 15, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10015, 10012, 0, NULL, 'PERMISSION', '更新', 'update', 'IamRole:write,IamRole:read,IamResourcePermission:read', 14, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10016, 10012, 0, NULL, 'PERMISSION', '删除', 'delete', 'IamRole:write', 13, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10017, 10000, 0, NULL, 'MENU', '资源权限管理', 'IamResourcePermission', 'IamResourcePermission:read', 10017, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10018, 10017, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamResourcePermission:read', 23, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10019, 10017, 0, NULL, 'PERMISSION', '新建', 'create', 'IamResourcePermission:write', 21, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10020, 10017, 0, NULL, 'PERMISSION', '更新', 'update', 'IamResourcePermission:write,IamResourcePermission:read', 20, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10021, 10017, 0, NULL, 'PERMISSION', '删除', 'delete', 'IamResourcePermission:write', 19, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10022, 10017, 0, NULL, 'PERMISSION', '排序', 'sort', 'IamResourcePermission:write', 18, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10023, 10000, 0, NULL, 'MENU', '定时任务管理', 'ScheduleJob', 'ScheduleJob:read', 10012, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10024, 10023, 0, NULL, 'PERMISSION', '删除', 'delete', 'ScheduleJob:write', 7, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10025, 10023, 0, NULL, 'PERMISSION', '更新', 'update', 'ScheduleJob:write,ScheduleJob:read', 6, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10026, 10023, 0, NULL, 'PERMISSION', '新建', 'create', 'ScheduleJob:write', 5, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10027, 10023, 0, NULL, 'PERMISSION', '详情', 'detail', 'ScheduleJob:read', 4, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10028, 10023, 0, NULL, 'PERMISSION', '运行一次', 'executeOnce', 'ScheduleJob:write', 3, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10029, 10023, 0, NULL, 'PERMISSION', '日志记录', 'logList', 'ScheduleJob:read', 2, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10030, 10023, 0, NULL, 'PERMISSION', '日志删除', 'logDelete', 'ScheduleJob:write', 1, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10031, 10000, 0, NULL, 'MENU', '消息模板管理', 'MessageTemplate', 'MessageTemplate:read', 10010, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10032, 10031, 0, NULL, 'PERMISSION', '详情', 'detail', 'MessageTemplate:read', 16, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10033, 10031, 0, NULL, 'PERMISSION', '新建', 'create', 'MessageTemplate:write', 15, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10034, 10031, 0, NULL, 'PERMISSION', '更新', 'update', 'MessageTemplate:write,MessageTemplate:read', 14, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10035, 10031, 0, NULL, 'PERMISSION', '删除', 'delete', 'MessageTemplate:write', 13, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10036, 10000, 0, NULL, 'MENU', '消息记录管理', 'Message', 'Message:read', 10009, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10037, 10036, 0, NULL, 'PERMISSION', '详情', 'detail', 'Message:read', 16, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10038, 10000, 0, NULL, 'MENU', '上传文件管理', 'UploadFile', 'UploadFile:read', 10008, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10039, 10038, 0, NULL, 'PERMISSION', '详情', 'detail', 'UploadFile:read', 16, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10040, 10038, 0, NULL, 'PERMISSION', '更新', 'update', 'UploadFile:write,UploadFile:read', 14, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10041, 10000, 0, NULL, 'MENU', '系统配置管理', 'SystemConfig', 'SystemConfig:read', 10007, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10042, 10041, 0, NULL, 'PERMISSION', '更新', 'update', 'SystemConfig:write', 13, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10043, 10000, 0, NULL, 'MENU', '操作日志查看', 'IamOperationLog', 'IamOperationLog:read', 10006, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10044, 10043, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamOperationLog:read', 16, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10045, 10000, 0, NULL, 'MENU', '登录日志查看', 'IamLoginTrace', 'IamLoginTrace:read', 10001, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10046, 0, 0, NULL, 'MENU', '组织机构', 'orgStructure', NULL, NULL, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10047, 10046, 0, NULL, 'MENU', '组织机构管理', 'IamOrg', 'IamOrg:read', 10044, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10048, 10047, 0, NULL, 'PERMISSION', '排序', 'sort', 'IamOrg:write', 106, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10049, 10047, 0, NULL, 'PERMISSION', '删除', 'delete', 'IamOrg:write', 105, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10050, 10047, 0, NULL, 'PERMISSION', '更新', 'update', 'IamOrg:write,IamOrg:read', 104, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10051, 10047, 0, NULL, 'PERMISSION', '新建', 'create', 'IamOrg:write', 103, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10052, 10047, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamOrg:read', 102, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10053, 10046, 0, NULL, 'MENU', '岗位管理', 'IamPosition', 'IamPosition:read', 10038, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10054, 10053, 0, NULL, 'PERMISSION', '删除', 'delete', 'IamPosition:write', 112, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10055, 10053, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamPosition:read', 111, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10056, 10053, 0, NULL, 'PERMISSION', '更新', 'update', 'IamPosition:write,IamPosition:read', 110, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10057, 10053, 0, NULL, 'PERMISSION', '新建', 'create', 'IamPosition:write', 108, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10058, 10046, 0, NULL, 'MENU', '组织人员管理', 'IamOrgUser', 'IamOrg:read,IamUser:read', 10032, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10059, 10058, 0, NULL, 'PERMISSION', '新建', 'create', 'IamUser:write', 40, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10060, 10058, 0, NULL, 'PERMISSION', '更新', 'update', 'IamUser:write,IamUser:read', 39, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10061, 10058, 0, NULL, 'PERMISSION', '删除', 'delete', 'IamUser:write', 38, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10062, 10058, 0, NULL, 'PERMISSION', '详情', 'detail', 'IamUser:read', 37, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10063, 10058, 0, NULL, 'PERMISSION', '导入', 'import', 'IamUserExcel:import', 36, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10064, 10058, 0, NULL, 'PERMISSION', '导出', 'export', 'IamUserExcel:export', 35, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10065, 10058, 0, NULL, 'PERMISSION', '人员岗位设置', 'position', 'IamPosition:write,IamPosition:read', 34, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');
INSERT INTO `iam_resource_permission` VALUES (10066, 10058, 0, NULL, 'PERMISSION', '添加岗位', 'addPosition', 'IamPosition:write,IamPosition:read', 33, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for iam_role
-- ----------------------------
DROP TABLE IF EXISTS `iam_role`;
CREATE TABLE `iam_role`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_role_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_role
-- ----------------------------
INSERT INTO `iam_role` VALUES (1548872816503775233, 0, '超级管理员', 'SUPER_ADMIN', NULL, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for iam_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `iam_role_resource`;
CREATE TABLE `iam_role_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `resource_id` bigint(20) NOT NULL COMMENT '资源ID',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_role_resource`(`role_id`, `resource_id`) USING BTREE,
  INDEX `idx_iam_role_resource_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for iam_user
-- ----------------------------
DROP TABLE IF EXISTS `iam_user`;
CREATE TABLE `iam_user`  (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `org_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '组织ID',
  `user_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `birthdate` date NULL DEFAULT NULL COMMENT '出生日期',
  `mobile_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Email',
  `avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A' COMMENT '状态',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_user_1`(`org_id`) USING BTREE,
  INDEX `idx_iam_user_2`(`mobile_phone`) USING BTREE,
  INDEX `idx_iam_user_num`(`user_num`) USING BTREE,
  INDEX `idx_iam_user_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_user
-- ----------------------------
INSERT INTO `iam_user` VALUES (1548872816617021442, 0, 0, '0000', 'DIBOOT', 'M', NULL, '10000000000', NULL, NULL, 'A', 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for iam_user_position
-- ----------------------------
DROP TABLE IF EXISTS `iam_user_position`;
CREATE TABLE `iam_user_position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `user_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'IamUser' COMMENT '用户类型',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `org_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '组织ID',
  `position_id` bigint(20) NOT NULL COMMENT '岗位ID',
  `is_primary_position` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否主岗',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_user_position`(`user_type`, `user_id`) USING BTREE,
  INDEX `idx_iam_user_position_2`(`org_id`, `position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户岗位关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_user_position
-- ----------------------------

-- ----------------------------
-- Table structure for iam_user_role
-- ----------------------------
DROP TABLE IF EXISTS `iam_user_role`;
CREATE TABLE `iam_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `user_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'IamUser' COMMENT '用户类型',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_iam_user_role`(`user_type`, `user_id`) USING BTREE,
  INDEX `idx_iam_user_role_tenant`(`tenant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10001 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iam_user_role
-- ----------------------------
INSERT INTO `iam_user_role` VALUES (10000, 0, 'IamUser', 1548872816617021442, 1548872816503775233, 0, '2022-07-18 11:30:30', '2022-07-18 11:30:30');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '租户ID',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `prop` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性值',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '删除标记',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_config_tenant_id`(`tenant_id`) USING BTREE,
  INDEX `idx_system_config`(`type`, `prop`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_config
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
