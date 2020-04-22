/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : anyin

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-04-22 10:26:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_ad
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad`;
CREATE TABLE `tp_ad` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `type_id` text NOT NULL COMMENT '广告位',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '广告名称',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `thumb` varchar(80) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `description` varchar(250) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='广告列表';

-- ----------------------------
-- Records of tp_ad
-- ----------------------------
INSERT INTO `tp_ad` VALUES ('1', '1587432932', '1587432932', '1', '1', '1', '1', '/uploads/20200421/48323a6ca095297dfd0a430f1763907a.jpg', '/uploads/20200421/d5f1c5e19cebe86f8d66ac80d133e667.jpg', '', '');
INSERT INTO `tp_ad` VALUES ('2', '1587432969', '1587432969', '2', '1', '1', '2', '/uploads/20200421/4835f08f31b6b6207f924a702a938cc4.jpg', '/uploads/20200421/c4a4d7cc2e5bb957137683fc5d957faa.jpg', '', '');
INSERT INTO `tp_ad` VALUES ('3', '1587432994', '1587432994', '3', '1', '1', '3', '/uploads/20200421/932d1c75070cbd13636fb25353063832.jpg', '/uploads/20200421/d6dde85745c975fec8a266a560c5b38b.jpg', '', '');
INSERT INTO `tp_ad` VALUES ('4', '1587433014', '1587433014', '4', '1', '1', '4', '/uploads/20200421/6fdea964acd67aff3ef056da24d2857c.jpg', '/uploads/20200421/6b38367cfb0e5878b633ed663f60548b.jpg', '', '');
INSERT INTO `tp_ad` VALUES ('5', '1587447698', '1587447698', '5', '1', '2', '人用疫苗', '/uploads/20200421/7266cec2bc5bbf663f77bcd28d52428a.png', '', '', 'Human Vaccine');
INSERT INTO `tp_ad` VALUES ('6', '1587447720', '1587447720', '6', '1', '2', '血液制品', '/uploads/20200421/56339270f32fcd63c388dce51464d1d0.png', '', '', 'Blood Product');
INSERT INTO `tp_ad` VALUES ('7', '1587447746', '1587447746', '7', '1', '2', '医学美容', '/uploads/20200421/f77d88d4be7ca9e142834cc78cb90953.png', '', '', 'Medical Aesthetics');
INSERT INTO `tp_ad` VALUES ('8', '1587447762', '1587447762', '8', '1', '2', '动物保健', '/uploads/20200421/8b9d6f9ee5a7babe4c5cc4a04bf6691a.png', '', '', 'Animal Health');
INSERT INTO `tp_ad` VALUES ('9', '1587447777', '1587447777', '9', '1', '2', '医学诊断', '/uploads/20200421/fcf60c56b66c51163db006c501326ecc.png', '', '', 'Medical Diagnostics');
INSERT INTO `tp_ad` VALUES ('10', '1587447793', '1587447793', '10', '1', '2', '抗体及治疗药物', '/uploads/20200421/441d8312886ef018a536e6aa9abec8e7.png', '', '', 'Antibody and therapeutics');
INSERT INTO `tp_ad` VALUES ('11', '1587451413', '1587451413', '11', '1', '3', '1000', '', '', '', '这里汇聚了中国生物制品领域的优秀人才\r\n专业研发人员超过1000名');
INSERT INTO `tp_ad` VALUES ('12', '1587451436', '1587451436', '12', '1', '3', '70', '', '', '', '在全国六大区域中心城市布局新产品研发\r\n成果转化基地成熟稳定\r\n拥有70余条符合GMP标准的生产线');
INSERT INTO `tp_ad` VALUES ('13', '1587451458', '1587451458', '13', '1', '3', '26', '', '', '', '拥有多项成果自主知识产权\r\n其中26项成果获国家科技进步奖一、二等奖');
INSERT INTO `tp_ad` VALUES ('14', '1587451507', '1587451507', '14', '1', '3', '26', '', '', '', '15项一类新药在产，11项一类新药在研');
INSERT INTO `tp_ad` VALUES ('15', '1587452369', '1587452369', '15', '1', '4', '1', '/uploads/20200421/3c608927d829278c342a87e01726b734.jpg', '', '', '覆盖产品全程的\r\n质量管理体系');
INSERT INTO `tp_ad` VALUES ('16', '1587452394', '1587452394', '16', '1', '4', '2', '/uploads/20200421/7582a24e5865cc53488d71fe1d4239f2.jpg', '', '', '专业严谨的\r\n质量管理团队');
INSERT INTO `tp_ad` VALUES ('17', '1587452419', '1587452419', '17', '1', '4', '3', '/uploads/20200421/f22bdf05609050ad0813e91b60877df0.jpg', '', '', '多项国内外资质认证及\r\n海外注册认证');

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `username` varchar(25) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `login_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '登录IP',
  `nickname` varchar(25) NOT NULL DEFAULT '' COMMENT '昵称',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员列表';

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', '1580695622', '1583672118', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1587521936', '127.0.0.1', 'admin', '/uploads/20181228/e5885dc546eb1369482cdf29fb07decd.jpg');
INSERT INTO `tp_admin` VALUES ('2', '1583727997', '1583749457', '0', 'test', 'e10adc3949ba59abbe56e057f20f883e', '1583748408', '127.0.0.1', 'test', '/uploads/20181228/e5885dc546eb1369482cdf29fb07decd.jpg');

-- ----------------------------
-- Table structure for tp_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_log`;
CREATE TABLE `tp_admin_log` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `admin_id` text NOT NULL COMMENT '管理员',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '操作页面	',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '日志内容',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '操作IP',
  `user_agent` text NOT NULL COMMENT 'User-Agent',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Records of tp_admin_log
-- ----------------------------
INSERT INTO `tp_admin_log` VALUES ('1', '1587453756', '1587453756', '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('2', '1587453756', '1587453756', '1', '/admin/Index/index.html', '[控制台]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('3', '1587453770', '1587453770', '1', '/admin/Article/index.html?_pjax=.content-wrapper', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('4', '1587453771', '1587453771', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('5', '1587453773', '1587453773', '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('6', '1587453773', '1587453773', '1', '/admin/Page/index.html?getList=1', '[内容管理] -> [单页模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('7', '1587453782', '1587453782', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('8', '1587453782', '1587453782', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('9', '1587453788', '1587453788', '1', '/admin/Cate/del.html', '[栏目管理] -> [栏目管理] -> [操作-删除]', '{\"id\":\"1,2,3,4,5,6,7,8,9,10,11,12,13\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('10', '1587453788', '1587453788', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('11', '1587453795', '1587453795', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('12', '1587453833', '1587453833', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u8ba4\\u8bc6\\u6211\\u4eec\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('13', '1587453834', '1587453834', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('14', '1587453834', '1587453834', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('15', '1587453839', '1587453839', '1', '/admin/Cate/edit.html?id=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('16', '1587453851', '1587453851', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('17', '1587453852', '1587453852', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('18', '1587453864', '1587453864', '1', '/admin/Cate/add.html?parentId=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('19', '1587453883', '1587453883', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"\",\"parent_id\":\"14\",\"cate_name\":\"\\u8ba4\\u8bc6\\u6211\\u4eec\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('20', '1587453888', '1587453888', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('21', '1587453889', '1587453889', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('22', '1587453891', '1587453891', '1', '/admin/Cate/add.html?parentId=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('23', '1587453903', '1587453903', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u516c\\u53f8\\u7b80\\u6790\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('24', '1587453904', '1587453904', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('25', '1587453904', '1587453904', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('26', '1587453913', '1587453913', '1', '/admin/Cate/add.html?parentId=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('27', '1587453919', '1587453919', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u7ba1\\u7406\\u56e2\\u961f\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"50\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('28', '1587453921', '1587453921', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('29', '1587453921', '1587453921', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('30', '1587453925', '1587453925', '1', '/admin/Cate/sort.html', '[栏目管理] -> [栏目管理] -> [操作-排序]', '{\"id\":\"15\",\"sort\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('31', '1587453926', '1587453926', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('32', '1587453926', '1587453926', '1', '/admin/Cate/sort.html', '[栏目管理] -> [栏目管理] -> [操作-排序]', '{\"id\":\"16\",\"sort\":\"2\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('33', '1587453926', '1587453926', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('34', '1587453929', '1587453929', '1', '/admin/Cate/sort.html', '[栏目管理] -> [栏目管理] -> [操作-排序]', '{\"id\":\"17\",\"sort\":\"3\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('35', '1587453929', '1587453929', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('36', '1587453939', '1587453939', '1', '/admin/Cate/add.html?parentId=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('37', '1587453954', '1587453954', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u4f01\\u4e1a\\u6587\\u5316\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"4\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('38', '1587453956', '1587453956', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('39', '1587453956', '1587453956', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('40', '1587453959', '1587453959', '1', '/admin/Cate/add.html?parentId=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('41', '1587453974', '1587453974', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u89c6\\u9891\\u4e4b\\u7a97\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"5\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('42', '1587453976', '1587453976', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('43', '1587453976', '1587453976', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('44', '1587453983', '1587453983', '1', '/admin/Cate/add.html?parentId=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('45', '1587453992', '1587453992', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u53d1\\u5c55\\u5386\\u7a0b\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"6\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('46', '1587453994', '1587453994', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('47', '1587453994', '1587453994', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('48', '1587454000', '1587454000', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('49', '1587454017', '1587454017', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u65b0\\u95fb\\u4e2d\\u5fc3\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"2\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('50', '1587454018', '1587454018', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('51', '1587454019', '1587454019', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('52', '1587454022', '1587454022', '1', '/admin/Cate/del.html', '[栏目管理] -> [栏目管理] -> [操作-删除]', '{\"id\":\"22\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('53', '1587454023', '1587454023', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('54', '1587454025', '1587454025', '1', '/admin/Cate/add.html?parentId=21&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"21\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('55', '1587454036', '1587454036', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"21\",\"cate_name\":\"\\u4f01\\u4e1a\\u52a8\\u6001\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('56', '1587454038', '1587454038', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('57', '1587454038', '1587454038', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('58', '1587454045', '1587454045', '1', '/admin/Cate/add.html?parentId=21&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"21\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('59', '1587454050', '1587454050', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"21\",\"cate_name\":\"\\u5a92\\u4f53\\u7126\\u70b9\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"2\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('60', '1587454051', '1587454051', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('61', '1587454052', '1587454052', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('62', '1587454060', '1587454060', '1', '/admin/Cate/add.html?parentId=21&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"21\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('63', '1587454067', '1587454067', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"21\",\"cate_name\":\"\\u901a\\u77e5\\u516c\\u544a\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"3\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('64', '1587454069', '1587454069', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('65', '1587454069', '1587454069', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('66', '1587454075', '1587454075', '1', '/admin/Cate/add.html?parentId=21&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"21\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('67', '1587454083', '1587454083', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"21\",\"cate_name\":\"\\u4e13\\u9898\\u4e13\\u680f\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"4\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('68', '1587454084', '1587454084', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('69', '1587454085', '1587454085', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('70', '1587454093', '1587454093', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('71', '1587454099', '1587454099', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u4e1a\\u52a1\\u4fe1\\u606f\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"4\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('72', '1587454100', '1587454100', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('73', '1587454101', '1587454101', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('74', '1587454108', '1587454108', '1', '/admin/Cate/sort.html', '[栏目管理] -> [栏目管理] -> [操作-排序]', '{\"id\":\"27\",\"sort\":\"3\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('75', '1587454108', '1587454108', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('76', '1587454111', '1587454111', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('77', '1587454123', '1587454123', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u7814\\u53d1\\u521b\\u65b0\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"4\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('78', '1587454124', '1587454124', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('79', '1587454124', '1587454124', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('80', '1587454126', '1587454126', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('81', '1587454136', '1587454136', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u8d28\\u91cf\\u7ba1\\u7406\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"5\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('82', '1587454137', '1587454137', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('83', '1587454137', '1587454137', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('84', '1587454142', '1587454142', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('85', '1587454151', '1587454151', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u56fd\\u9645\\u5408\\u4f5c\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"6\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('86', '1587454152', '1587454152', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('87', '1587454153', '1587454153', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('88', '1587454157', '1587454157', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('89', '1587454164', '1587454164', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u793e\\u4f1a\\u8d23\\u4efb\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"7\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('90', '1587454165', '1587454165', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('91', '1587454166', '1587454166', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('92', '1587454173', '1587454173', '1', '/admin/Cate/add.html?parentId=31&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"31\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('93', '1587454179', '1587454179', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"31\",\"cate_name\":\"\\u8d23\\u4efb\\u5c65\\u884c\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('94', '1587454180', '1587454180', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('95', '1587454181', '1587454181', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('96', '1587454187', '1587454187', '1', '/admin/Cate/add.html?parentId=31&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"31\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('97', '1587454193', '1587454193', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"31\",\"cate_name\":\"\\u4e2d\\u751f\\u8d21\\u732e\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"2\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('98', '1587454194', '1587454194', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('99', '1587454194', '1587454194', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('100', '1587454200', '1587454200', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('101', '1587454206', '1587454206', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u804c\\u4e1a\\u53d1\\u5c55\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"8\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('102', '1587454207', '1587454207', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('103', '1587454207', '1587454207', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('104', '1587454212', '1587454212', '1', '/admin/Cate/add.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('105', '1587454219', '1587454219', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u515a\\u5efa\\u6587\\u5316\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"9\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('106', '1587454220', '1587454220', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('107', '1587454220', '1587454220', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('108', '1587454227', '1587454227', '1', '/admin/Cate/add.html?parentId=35&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"35\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('109', '1587454234', '1587454234', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"35\",\"cate_name\":\"\\u515a\\u7fa4\\u52a8\\u6001\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('110', '1587454235', '1587454235', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('111', '1587454235', '1587454235', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('112', '1587454241', '1587454241', '1', '/admin/Cate/add.html?parentId=35&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-添加]', '{\"parentId\":\"35\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('113', '1587454247', '1587454247', '1', '/admin/Cate/addPost.html', '[栏目管理] -> [栏目管理] -> [操作-添加保存]', '{\"module_id\":\"18\",\"parent_id\":\"35\",\"cate_name\":\"\\u515a\\u5efa\\u8981\\u95fb\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"2\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('114', '1587454248', '1587454248', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('115', '1587454248', '1587454248', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('116', '1587454283', '1587454283', '1', '/admin/Cate/edit.html?id=14&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('117', '1587454300', '1587454300', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"14\",\"module_id\":\"18\",\"parent_id\":\"\",\"cate_name\":\"\\u8ba4\\u8bc6\\u6211\\u4eec\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section0\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('118', '1587454302', '1587454302', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('119', '1587454302', '1587454302', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('120', '1587454305', '1587454305', '1', '/admin/Cate/edit.html?id=15&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"15\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('121', '1587454311', '1587454311', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"15\",\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u8ba4\\u8bc6\\u6211\\u4eec\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"1\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section0\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('122', '1587454313', '1587454313', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('123', '1587454313', '1587454313', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('124', '1587454315', '1587454315', '1', '/admin/Cate/edit.html?id=16&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"16\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('125', '1587454320', '1587454320', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"16\",\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u516c\\u53f8\\u7b80\\u6790\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"2\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section1\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('126', '1587454321', '1587454321', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('127', '1587454321', '1587454321', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('128', '1587454324', '1587454324', '1', '/admin/Cate/edit.html?id=17&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"17\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('129', '1587454328', '1587454328', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"17\",\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u7ba1\\u7406\\u56e2\\u961f\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"3\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section2\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('130', '1587454330', '1587454330', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('131', '1587454330', '1587454330', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('132', '1587454334', '1587454334', '1', '/admin/Cate/edit.html?id=18&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"18\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('133', '1587454338', '1587454338', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"18\",\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u4f01\\u4e1a\\u6587\\u5316\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"4\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section3\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('134', '1587454339', '1587454339', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('135', '1587454340', '1587454340', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('136', '1587454343', '1587454343', '1', '/admin/Cate/edit.html?id=19&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"19\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('137', '1587454349', '1587454349', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"19\",\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u89c6\\u9891\\u4e4b\\u7a97\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"5\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section4\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('138', '1587454350', '1587454350', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('139', '1587454350', '1587454350', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('140', '1587454352', '1587454352', '1', '/admin/Cate/edit.html?id=20&_pjax=.content-wrapper', '[栏目管理] -> [栏目管理] -> [操作-修改]', '{\"id\":\"20\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('141', '1587454357', '1587454357', '1', '/admin/Cate/editPost.html', '[栏目管理] -> [栏目管理] -> [操作-修改保存]', '{\"id\":\"20\",\"module_id\":\"18\",\"parent_id\":\"14\",\"cate_name\":\"\\u53d1\\u5c55\\u5386\\u7a0b\",\"en_name\":\"\",\"cate_folder\":\"\",\"image\":\"\",\"file\":\"\",\"ico_image\":\"\",\"summary\":\"\",\"is_menu\":\"1\",\"status\":\"1\",\"sort\":\"6\",\"title\":\"\",\"keywords\":\"\",\"description\":\"\",\"url\":\"\\/index\\/index.html#section5\",\"template_list\":\"\",\"template_show\":\"\",\"page_size\":\"0\",\"is_next\":\"0\",\"is_blank\":\"0\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('142', '1587454359', '1587454359', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('143', '1587454359', '1587454359', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('144', '1587454368', '1587454368', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('145', '1587454368', '1587454368', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('146', '1587454371', '1587454371', '1', '/admin/AdType/del.html', '[网站功能] -> [广告分组] -> [操作-删除]', '{\"id\":\"2\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('147', '1587454371', '1587454371', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('148', '1587454374', '1587454374', '1', '/admin/AdType/del.html', '[网站功能] -> [广告分组] -> [操作-删除]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('149', '1587454374', '1587454374', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('150', '1587454376', '1587454376', '1', '/admin/AdType/add.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('151', '1587454395', '1587454395', '1', '/admin/AdType/addPost.html', '[网站功能] -> [广告分组] -> [操作-添加保存]', '{\"name\":\"\\u3010\\u9996\\u9875\\u3011\\u7126\\u70b9\\u56fe\",\"description\":\"\\u7126\\u70b9\\u56fe\\u677f\\u5757\",\"sort\":\"1\",\"status\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('152', '1587454396', '1587454396', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('153', '1587454396', '1587454396', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('154', '1587454408', '1587454408', '1', '/admin/AdType/add.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('155', '1587454417', '1587454417', '1', '/admin/AdType/addPost.html', '[网站功能] -> [广告分组] -> [操作-添加保存]', '{\"name\":\"\\u3010\\u9996\\u9875\\u3011\\u4ea7\\u54c1\\u680f\",\"description\":\"\\u9996\\u9875\\u4ea7\\u54c1\\u4e0e\\u670d\\u52a1\\u677f\\u5757\",\"sort\":\"2\",\"status\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('156', '1587454419', '1587454419', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('157', '1587454419', '1587454419', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('158', '1587454427', '1587454427', '1', '/admin/AdType/add.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('159', '1587454439', '1587454439', '1', '/admin/AdType/addPost.html', '[网站功能] -> [广告分组] -> [操作-添加保存]', '{\"name\":\"\\u3010\\u9996\\u9875\\u3011\\u7814\\u53d1\\u521b\\u65b0\",\"description\":\"\\u9996\\u9875\\u7814\\u53d1\\u4e0e\\u521b\\u65b0\\u677f\\u5757\",\"sort\":\"4\",\"status\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('160', '1587454440', '1587454440', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('161', '1587454440', '1587454440', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('162', '1587454445', '1587454445', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"5\",\"sort\":\"3\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('163', '1587454445', '1587454445', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('164', '1587454448', '1587454448', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('165', '1587454449', '1587454449', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('166', '1587454461', '1587454461', '1', '/admin/AdType/add.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('167', '1587454461', '1587454461', '1', '/admin/AdType/add.html', '[网站功能] -> [广告分组] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('168', '1587454469', '1587454469', '1', '/admin/AdType/addPost.html', '[网站功能] -> [广告分组] -> [操作-添加保存]', '{\"name\":\"\\u9996\\u9875\\u7814\\u53d1\\u4e0e\\u521b\\u65b0\\u677f\\u5757\",\"description\":\"\\u8d28\\u91cf\\u7ba1\\u7406\\u6a21\\u5757\",\"sort\":\"5\",\"status\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('169', '1587454470', '1587454470', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('170', '1587454471', '1587454471', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('171', '1587454474', '1587454474', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"6\",\"sort\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('172', '1587454475', '1587454475', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('173', '1587454475', '1587454475', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"5\",\"sort\":\"3\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('174', '1587454480', '1587454480', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('175', '1587454480', '1587454480', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"4\",\"sort\":\"2\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('176', '1587454483', '1587454483', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('177', '1587454486', '1587454486', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"3\",\"sort\":\"4\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('178', '1587454487', '1587454487', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('179', '1587454490', '1587454490', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('180', '1587454490', '1587454490', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('181', '1587454497', '1587454497', '1', '/admin/AdType/edit.html?id=6&_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-修改]', '{\"id\":\"6\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('182', '1587454514', '1587454514', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('183', '1587454514', '1587454514', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('184', '1587454524', '1587454524', '1', '/admin/AdType/edit.html?id=6&_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-修改]', '{\"id\":\"6\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('185', '1587454528', '1587454528', '1', '/admin/AdType/editPost.html', '[网站功能] -> [广告分组] -> [操作-修改保存]', '{\"id\":\"6\",\"name\":\"\\u3010\\u9996\\u9875\\u3011\\u8d28\\u91cf\\u7ba1\\u7406\",\"description\":\"\\u8d28\\u91cf\\u7ba1\\u7406\\u6a21\\u5757\",\"sort\":\"1\",\"status\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('186', '1587454529', '1587454529', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('187', '1587454530', '1587454530', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('188', '1587454534', '1587454534', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"3\",\"sort\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('189', '1587454534', '1587454534', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('190', '1587454534', '1587454534', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"4\",\"sort\":\"3\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('191', '1587454537', '1587454537', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('192', '1587454537', '1587454537', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"5\",\"sort\":\"2\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('193', '1587454540', '1587454540', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('194', '1587454540', '1587454540', '1', '/admin/AdType/sort.html', '[网站功能] -> [广告分组] -> [操作-排序]', '{\"id\":\"6\",\"sort\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('195', '1587454544', '1587454544', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('196', '1587454545', '1587454545', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('197', '1587454545', '1587454545', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('198', '1587454546', '1587454546', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('199', '1587454546', '1587454546', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('200', '1587454546', '1587454546', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('201', '1587454547', '1587454547', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('202', '1587454573', '1587454573', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('203', '1587454573', '1587454573', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('204', '1587454574', '1587454574', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('205', '1587454575', '1587454575', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('206', '1587454576', '1587454576', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('207', '1587454577', '1587454577', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('208', '1587454624', '1587454624', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('209', '1587454624', '1587454624', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('210', '1587454626', '1587454626', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('211', '1587454626', '1587454626', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('212', '1587454630', '1587454630', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('213', '1587454630', '1587454630', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('214', '1587454644', '1587454644', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('215', '1587454645', '1587454645', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('216', '1587454649', '1587454649', '1', '/admin/Ad/del.html', '[网站功能] -> [广告管理] -> [操作-删除]', '{\"id\":\"2\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('217', '1587454649', '1587454649', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('218', '1587454652', '1587454652', '1', '/admin/Ad/del.html', '[网站功能] -> [广告管理] -> [操作-删除]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('219', '1587454652', '1587454652', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('220', '1587455195', '1587455195', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('221', '1587455195', '1587455195', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('222', '1587455195', '1587455195', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('223', '1587455196', '1587455196', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('224', '1587455244', '1587455244', '1', '/admin/AdType/edit.html?id=2&_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-修改]', '{\"id\":\"2\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('225', '1587455251', '1587455251', '1', '/admin/AdType/editPost.html', '[网站功能] -> [广告分组] -> [操作-修改保存]', '{\"id\":\"2\",\"name\":\"\\u3010\\u9996\\u9875\\u3011\\u4ea7\\u54c1\\u670d\\u52a1\",\"description\":\"\\u9996\\u9875\\u4ea7\\u54c1\\u670d\\u52a1\\u677f\\u5757\",\"sort\":\"2\",\"status\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('226', '1587455253', '1587455253', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('227', '1587455253', '1587455253', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('228', '1587455404', '1587455404', '1', '/admin/AdType/index.html', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('229', '1587455405', '1587455405', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('230', '1587455412', '1587455412', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('231', '1587455412', '1587455412', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('232', '1587455448', '1587455448', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"SIYUCMS \\u5b98\\u7f51\",\"key\":\"SIYUCMS\\uff0cSIYUCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"SIYUCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('233', '1587455450', '1587455450', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('234', '1587455450', '1587455450', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('235', '1587456037', '1587456037', '1', '/admin/Plugin/index.html?_pjax=.content-wrapper', '[系统管理] -> [插件管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('236', '1587456037', '1587456037', '1', '/admin/Plugin/index.html?getList=1', '[系统管理] -> [插件管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"name\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('237', '1587456041', '1587456041', '1', '/admin/Template/index.html?_pjax=.content-wrapper', '[系统管理] -> [模板管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('238', '1587456041', '1587456041', '1', '/admin/Template/index.html?getList=1&type=html', '[系统管理] -> [模板管理]', '{\"getList\":\"1\",\"type\":\"html\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('239', '1587456043', '1587456043', '1', '/admin/Config/sms.html?_pjax=.content-wrapper', '[系统管理] -> [短信配置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('240', '1587456044', '1587456044', '1', '/admin/Config/email.html?_pjax=.content-wrapper', '[系统管理] -> [邮件配置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('241', '1587456045', '1587456045', '1', '/admin/DictionaryType/index.html?_pjax=.content-wrapper', '[系统管理] -> [字典类型]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('242', '1587456045', '1587456045', '1', '/admin/DictionaryType/index.html?getList=1', '[系统管理] -> [字典类型]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"id\":\"\",\"dict_name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('243', '1587456046', '1587456046', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('244', '1587456046', '1587456046', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('245', '1587456046', '1587456046', '1', '/admin/System/index.html', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('246', '1587456046', '1587456046', '1', '/admin/DictionaryType/index.html?_pjax=.content-wrapper', '[系统管理] -> [字典类型]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('247', '1587456046', '1587456046', '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('248', '1587456047', '1587456047', '1', '/admin/DictionaryType/index.html?getList=1', '[系统管理] -> [字典类型]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"id\":\"\",\"dict_name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('249', '1587456058', '1587456058', '1', '/admin/Users/index.html?_pjax=.content-wrapper', '[会员管理] -> [会员管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('250', '1587456058', '1587456058', '1', '/admin/Users/index.html?getList=1', '[会员管理] -> [会员管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"email\":\"\",\"sex\":\"\",\"last_login_ip\":\"\",\"qq\":\"\",\"mobile\":\"\",\"mobile_validated\":\"\",\"email_validated\":\"\",\"type_id\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('251', '1587456059', '1587456059', '1', '/admin/UsersType/index.html?_pjax=.content-wrapper', '[会员管理] -> [会员分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('252', '1587456059', '1587456059', '1', '/admin/UsersType/index.html?getList=1', '[会员管理] -> [会员分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('253', '1587456061', '1587456061', '1', '/admin/Users/index.html?_pjax=.content-wrapper', '[会员管理] -> [会员管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('254', '1587456061', '1587456061', '1', '/admin/Users/index.html?getList=1', '[会员管理] -> [会员管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"email\":\"\",\"sex\":\"\",\"last_login_ip\":\"\",\"qq\":\"\",\"mobile\":\"\",\"mobile_validated\":\"\",\"email_validated\":\"\",\"type_id\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('255', '1587456064', '1587456064', '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('256', '1587456065', '1587456065', '1', '/admin/Page/add.html', '[内容管理] -> [单页模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('257', '1587456065', '1587456065', '1', '/admin/Page/index.html', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('258', '1587456065', '1587456065', '1', '/admin/Page/add.html', '[内容管理] -> [单页模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('259', '1587456079', '1587456079', '1', '/admin/Article/index.html?_pjax=.content-wrapper', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('260', '1587456080', '1587456080', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('261', '1587456082', '1587456082', '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('262', '1587456082', '1587456082', '1', '/admin/Page/add.html', '[内容管理] -> [单页模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('263', '1587456083', '1587456083', '1', '/admin/Page/index.html', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('264', '1587456083', '1587456083', '1', '/admin/Page/add.html', '[内容管理] -> [单页模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('265', '1587456085', '1587456085', '1', '/admin/Picture/index.html?_pjax=.content-wrapper', '[内容管理] -> [图片模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('266', '1587456086', '1587456086', '1', '/admin/Picture/index.html?getList=1', '[内容管理] -> [图片模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('267', '1587456087', '1587456087', '1', '/admin/Product/index.html?_pjax=.content-wrapper', '[内容管理] -> [产品模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('268', '1587456087', '1587456087', '1', '/admin/Product/index.html?getList=1', '[内容管理] -> [产品模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('269', '1587456090', '1587456090', '1', '/admin/Download/index.html?_pjax=.content-wrapper', '[内容管理] -> [下载模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('270', '1587456090', '1587456090', '1', '/admin/Download/index.html?getList=1', '[内容管理] -> [下载模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('271', '1587456091', '1587456091', '1', '/admin/Team/index.html?_pjax=.content-wrapper', '[内容管理] -> [团队模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('272', '1587456091', '1587456091', '1', '/admin/Team/index.html?getList=1', '[内容管理] -> [团队模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('273', '1587456092', '1587456092', '1', '/admin/Message/index.html?_pjax=.content-wrapper', '[内容管理] -> [留言模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('274', '1587456092', '1587456092', '1', '/admin/Message/index.html?getList=1', '[内容管理] -> [留言模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('275', '1587456093', '1587456093', '1', '/admin/Product/index.html?_pjax=.content-wrapper', '[内容管理] -> [产品模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('276', '1587456094', '1587456094', '1', '/admin/Product/index.html?getList=1', '[内容管理] -> [产品模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('277', '1587456094', '1587456094', '1', '/admin/Product/add.html?&_pjax=.content-wrapper', '[内容管理] -> [产品模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('278', '1587456157', '1587456157', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('279', '1587456157', '1587456157', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('280', '1587456162', '1587456162', '1', '/admin/System/index.html', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('281', '1587456163', '1587456163', '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('282', '1587456173', '1587456173', '1', '/admin', '[控制台]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('283', '1587456278', '1587456278', '1', '/admin/Cate/index.html?_pjax=.content-wrapper', '[栏目管理] -> [栏目管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('284', '1587456279', '1587456279', '1', '/admin/Cate/index.html?getList=1', '[栏目管理] -> [栏目管理]', '{\"getList\":\"1\",\"page\":null,\"orderByColumn\":\"id\",\"isAsc\":\"desc\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('285', '1587456282', '1587456282', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('286', '1587456282', '1587456282', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('287', '1587456302', '1587456302', '1', '/admin/Ad/edit.html?id=14&_pjax=.content-wrapper', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('288', '1587456311', '1587456311', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('289', '1587456311', '1587456311', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('290', '1587456483', '1587456483', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('291', '1587456484', '1587456484', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('292', '1587456486', '1587456486', '1', '/admin/AdType/edit.html?id=3&_pjax=.content-wrapper', '[网站功能] -> [广告分组] -> [操作-修改]', '{\"id\":\"3\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('293', '1587456489', '1587456489', '1', '/admin/AdType/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告分组]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('294', '1587456489', '1587456489', '1', '/admin/AdType/index.html?getList=1', '[网站功能] -> [广告分组]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('295', '1587456497', '1587456497', '1', '/admin/Link/index.html?_pjax=.content-wrapper', '[网站功能] -> [友情链接]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('296', '1587456497', '1587456497', '1', '/admin/Link/index.html?getList=1', '[网站功能] -> [友情链接]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"name\":\"\",\"url\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('297', '1587456497', '1587456497', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('298', '1587456498', '1587456498', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('299', '1587456501', '1587456501', '1', '/admin/Ad/edit.html?id=14&_pjax=.content-wrapper', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"14\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('300', '1587456505', '1587456505', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('301', '1587456505', '1587456505', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('302', '1587456519', '1587456519', '1', '/admin/Ad/edit.html?id=11&_pjax=.content-wrapper', '[网站功能] -> [广告管理] -> [操作-修改]', '{\"id\":\"11\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('303', '1587456524', '1587456524', '1', '/admin/Ad/index.html?_pjax=.content-wrapper', '[网站功能] -> [广告管理]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('304', '1587456525', '1587456525', '1', '/admin/Ad/index.html?getList=1', '[网站功能] -> [广告管理]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"type_id\":\"\",\"name\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('305', '1587456537', '1587456537', '1', '/admin', '[控制台]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('306', '1587458148', '1587458148', '1', '/admin/Demo/layerForm.html?_pjax=.content-wrapper', '[实例演示] -> [layer表单]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('307', '1587458148', '1587458148', '1', '/admin/Demo/layerForm.html', '[实例演示] -> [layer表单]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('308', '1587458154', '1587458154', '1', '/admin/Demo/general.html?_pjax=.content-wrapper', '[实例演示] -> [常规]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('309', '1587458155', '1587458155', '1', '/admin/Demo/icons.html?_pjax=.content-wrapper', '[实例演示] -> [图标]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('310', '1587458158', '1587458158', '1', '/admin/Demo/modals.html?_pjax=.content-wrapper', '[实例演示] -> [模态框]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('311', '1587458159', '1587458159', '1', '/admin/Demo/timeline.html?_pjax=.content-wrapper', '[实例演示] -> [时间轴]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('312', '1587458160', '1587458160', '1', '/admin/Demo/modals.html?_pjax=.content-wrapper', '[实例演示] -> [模态框]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('313', '1587458167', '1587458167', '1', '/admin/Demo/timeline.html?_pjax=.content-wrapper', '[实例演示] -> [时间轴]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('314', '1587458311', '1587458311', '1', '/admin/Demo/timeline.html', '[实例演示] -> [时间轴]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('315', '1587458436', '1587458436', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('316', '1587458436', '1587458436', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('317', '1587458437', '1587458437', '1', '/admin/System/index.html', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('318', '1587458437', '1587458437', '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('319', '1587458455', '1587458455', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"key\":\"SIYUCMS\\uff0cSIYUCMS\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0cphp\\uff0cThinkPHP CMS\\uff0cThinkPHP\\u5efa\\u7ad9\\u7cfb\\u7edf\",\"des\":\"SIYUCMS \\u662f\\u4e00\\u6b3e\\u57fa\\u4e8e ThinkPHP + AdminLTE \\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\u3002\\u540e\\u53f0\\u754c\\u9762\\u91c7\\u7528\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40\\uff0c\\u6e05\\u723d\\u3001\\u6781\\u7b80\\u3001\\u7b80\\u5355\\u3001\\u6613\\u7528\\uff0c\\u662f\\u505a\\u5f00\\u53d1\\u7684\\u6700\\u4f73\\u9009\\u62e9\\u3002\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('320', '1587458457', '1587458457', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('321', '1587458457', '1587458457', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('322', '1587458457', '1587458457', '1', '/admin/System/index.html', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('323', '1587458458', '1587458458', '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('324', '1587458464', '1587458464', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"key\":\"\",\"des\":\"\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('325', '1587458465', '1587458465', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('326', '1587458465', '1587458465', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('327', '1587458487', '1587458487', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"key\":\"\",\"des\":\"\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('328', '1587458488', '1587458488', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('329', '1587458489', '1587458489', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('330', '1587458489', '1587458489', '1', '/admin/System/index.html', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('331', '1587458489', '1587458489', '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('332', '1587458493', '1587458493', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"key\":\"\",\"des\":\"\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('333', '1587458498', '1587458498', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('334', '1587458498', '1587458498', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('335', '1587458498', '1587458498', '1', '/admin/System/index.html', '[系统管理] -> [系统设置]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('336', '1587458499', '1587458499', '1', '/admin/System/edit.html?id=1', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('337', '1587458521', '1587458521', '1', '/admin/Article/index.html?_pjax=.content-wrapper', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('338', '1587458521', '1587458521', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('339', '1587458523', '1587458523', '1', '/admin/Article/add.html?&_pjax=.content-wrapper', '[内容管理] -> [文章模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('340', '1587458611', '1587458611', '1', '/admin/Article/addPost.html', '[内容管理] -> [文章模块] -> [操作-添加保存]', '{\"cate_id\":\"24\",\"title\":\"\\u3010\\u4eba\\u6c11\\u65e5\\u62a5\\u3011\\u520a\\u53d1\\u4e2d\\u56fd\\u751f\\u7269\\u7f72\\u540d\\u6587\\u7ae0\\uff1a\\u6218\\u75ab\\u5c55\\u73b0\\u592e\\u4f01\\u8d23\\u4efb\\u62c5\\u5f53\",\"author\":\"\",\"source\":\"\",\"summary\":\"3\\u670820\\u65e5\\uff0c\\u56fd\\u836f\\u4e2d\\u56fd\\u751f\\u7269\\u4e3e\\u529e\\u4e3b\\u9898\\u515a\\u8bfe\\uff0c\\u515a\\u59d4\\u4e66\\u8bb0\\u6731\\u4eac\\u6d25\\u4ee5\\u201c\\u627f\\u62c5\\u56fd\\u5bb6\\u8d23\\u4efb\\uff0c\\u4fdd\\u969c\\u4eba\\u6c11\\u5065\\u5eb7\\uff0c\\u5728\\u65b0\\u51a0\\u80ba\\u708e\\u963b\",\"image\":\"\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('341', '1587458612', '1587458612', '1', '/admin/Article/index.html?_pjax=.content-wrapper', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('342', '1587458612', '1587458612', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('343', '1587458616', '1587458616', '1', '/admin/Article/edit.html?id=18&_pjax=.content-wrapper', '[内容管理] -> [文章模块] -> [操作-修改]', '{\"id\":\"18\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('344', '1587458657', '1587458657', '1', '/admin/Article/editPost.html', '[内容管理] -> [文章模块] -> [操作-修改保存]', '{\"id\":\"18\",\"cate_id\":\"24\",\"title\":\"\\u3010\\u4eba\\u6c11\\u65e5\\u62a5\\u3011\\u520a\\u53d1\\u4e2d\\u56fd\\u751f\\u7269\\u7f72\\u540d\\u6587\\u7ae0\\uff1a\\u6218\\u75ab\\u5c55\\u73b0\\u592e\\u4f01\\u8d23\\u4efb\\u62c5\\u5f53\",\"author\":\"\",\"source\":\"\",\"summary\":\"3\\u670820\\u65e5\\uff0c\\u56fd\\u836f\\u4e2d\\u56fd\\u751f\\u7269\\u4e3e\\u529e\\u4e3b\\u9898\\u515a\\u8bfe\\uff0c\\u515a\\u59d4\\u4e66\\u8bb0\\u6731\\u4eac\\u6d25\\u4ee5\\u201c\\u627f\\u62c5\\u56fd\\u5bb6\\u8d23\\u4efb\\uff0c\\u4fdd\\u969c\\u4eba\\u6c11\\u5065\\u5eb7\\uff0c\\u5728\\u65b0\\u51a0\\u80ba\\u708e\\u963b\",\"image\":\"\\/uploads\\/20200421\\/31262166f0615fd6cce399d874825bc5.png\",\"file\":\"\",\"download\":\"\",\"tags\":\"\",\"hits\":\"0\",\"keywords\":\"\",\"description\":\"\",\"template\":\"\",\"url\":\"\",\"status\":\"1\",\"sort\":\"50\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('345', '1587458658', '1587458658', '1', '/admin/Article/index.html?_pjax=.content-wrapper', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('346', '1587458659', '1587458659', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('347', '1587459310', '1587459310', '1', '/admin/Page/index.html?_pjax=.content-wrapper', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('348', '1587459310', '1587459310', '1', '/admin/Page/index.html', '[内容管理] -> [单页模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('349', '1587459311', '1587459311', '1', '/admin/Page/add.html', '[内容管理] -> [单页模块] -> [操作-添加]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('350', '1587459312', '1587459312', '1', '/admin/Article/index.html?_pjax=.content-wrapper', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('351', '1587459312', '1587459312', '1', '/admin/Article/index.html', '[内容管理] -> [文章模块]', '[]', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('352', '1587459314', '1587459314', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('353', '1587459317', '1587459317', '1', '/admin/Article/state.html', '[内容管理] -> [文章模块] -> [操作-状态]', '{\"id\":\"18\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('354', '1587459318', '1587459318', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('355', '1587459321', '1587459321', '1', '/admin/Article/state.html', '[内容管理] -> [文章模块] -> [操作-状态]', '{\"id\":\"18\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('356', '1587459321', '1587459321', '1', '/admin/Article/index.html?getList=1', '[内容管理] -> [文章模块]', '{\"getList\":\"1\",\"pageSize\":10,\"page\":1,\"orderByColumn\":\"id\",\"isAsc\":\"desc\",\"cate_id\":\"\",\"title\":\"\",\"status\":\"\"}', '192.168.1.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('357', '1587521881', '1587521881', '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('358', '1587521882', '1587521882', '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('359', '1587521936', '1587521936', '1', '/admin/Login/checkLogin.html', '[登录成功]', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('360', '1587521937', '1587521937', '1', '/admin/Index/index.html', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('361', '1587521940', '1587521940', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('362', '1587521941', '1587521941', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('363', '1587521946', '1587521946', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"key\":\"\",\"des\":\"\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('364', '1587521948', '1587521948', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('365', '1587521948', '1587521948', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('366', '1587521952', '1587521952', '1', '/admin/System/editPost.html', '[系统管理] -> [系统设置] -> [操作-修改保存]', '{\"id\":\"1\",\"name\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\",\"logo\":\"\\/uploads\\/20200421\\/11c4991f0d89bfc3de8bb39d5fed07a3.png\",\"file\":\"\",\"icp\":\"\\u8fbdICP\\u590712345678\\u53f7-1\",\"copyright\":\"Copyright \\u00a9 SIYUCMS 2019.All right reserved.Powered by SIYUCMS\",\"url\":\"anyin.com.cn\",\"address\":\"\\u8fbd\\u5b81\\u7701\\u6c88\\u9633\\u5e02\\u94c1\\u897f\\u533a\\u91cd\\u5de5\\u8857XX\\u8defXX\\u53f71-1-1\",\"contacts\":\"X\\u5148\\u751f\",\"tel\":\"010-8888 7777\",\"mobile_phone\":\"158 4018 8888\",\"fax\":\"010-8888 9999\",\"email\":\"407593529@qq.com\",\"qq\":\"407593529\",\"qrcode\":\"\\/uploads\\/20181226\\/cb7a4c21d6443bc5e7a8d16ac2cbe242.png\",\"title\":\"\\u91cd\\u5e86\\u5b89\\u9690\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"key\":\"\",\"des\":\"\",\"mobile\":\"0\",\"code\":\"1\",\"message_code\":\"0\",\"message_send_mail\":\"0\",\"template_opening\":\"1\",\"template\":\"default\",\"html\":\"html\",\"upload_driver\":\"1\",\"upload_file_size\":\"0\",\"upload_file_ext\":\"rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc\",\"upload_image_size\":\"0\",\"upload_image_ext\":\"jpg,png,gif,jpeg,ico\",\"other\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('367', '1587521953', '1587521953', '1', '/admin/System/index.html?_pjax=.content-wrapper', '[系统管理] -> [系统设置]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('368', '1587521953', '1587521953', '1', '/admin/System/edit.html?id=1&_pjax=.content-wrapper', '[系统管理] -> [系统设置] -> [操作-修改]', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');
INSERT INTO `tp_admin_log` VALUES ('369', '1587521956', '1587521956', '1', '/admin/Index/index.html?_pjax=.content-wrapper', '[控制台]', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3888.0 Safari/537.36');

-- ----------------------------
-- Table structure for tp_ad_type
-- ----------------------------
DROP TABLE IF EXISTS `tp_ad_type`;
CREATE TABLE `tp_ad_type` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分组名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `sort` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='广告分组';

-- ----------------------------
-- Records of tp_ad_type
-- ----------------------------
INSERT INTO `tp_ad_type` VALUES ('1', '1587454395', '1587454534', '【首页】焦点图', '焦点图板块', '1', '1');
INSERT INTO `tp_ad_type` VALUES ('2', '1587454417', '1587455251', '【首页】产品服务', '首页产品服务板块', '2', '1');
INSERT INTO `tp_ad_type` VALUES ('3', '1587454439', '1587454540', '【首页】研发创新', '首页研发与创新板块', '3', '1');
INSERT INTO `tp_ad_type` VALUES ('4', '1587454469', '1587454543', '【首页】质量管理', '质量管理模块', '4', '1');

-- ----------------------------
-- Table structure for tp_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `content` text NOT NULL COMMENT '内容',
  `summary` text NOT NULL COMMENT '摘要',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `images` text COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='文章模块';

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('18', '1587458611', '1587459321', '50', '1', '24', '【人民日报】刊发中国生物署名文章：战疫展现央企责任担当', '', '', '<p>转载自人民日报，链接：http://paper.people.com.cn/rmrb/html/2020-04/20/nbs.D110000renmrb_05.htm</p>\n\n<p>&nbsp;</p>\n\n<p>3月20日，国药中国生物举办主题党课，党委书记朱京津以&ldquo;承担国家责任，保障人民健康，在新冠肺炎阻击战中发挥央企主力军作用&rdquo;为题作专题授课。党课内容在网络发布后，受到广泛关注。</p>\n\n<p><br />\n4月20日，《人民日报》对中国生物党课部分内容进行了摘编，刊发《战疫展现央企责任担当》署名文章。</p>\n\n<p><br />\n4月12日，中国生物科技攻关再传捷报，新冠灭活疫苗全球首家获得临床试验批件，相关临床试验已在河南省启动，首批32名志愿者顺利完成入组。截至目前，受试者均状态良好，无明显不良反应。</p>\n\n<p><br />\n从新冠病毒核酸检测试剂盒到康复者恢复期血浆治疗，从加快治疗药物的生产供应到灭活疫苗获批临床并启动临床试验，中国生物在抗击新冠疫情的战斗中，始终冲锋在前。一系列重大科研成果，为实现新冠肺炎&ldquo;可诊、可治、可防&rdquo;的目标提供了有力支撑。</p>\n\n<p>&nbsp;</p>\n\n<p align=\"center\"><img src=\"https://www.cnbg.com.cn/upload/image/20200420/0_1587372070.jpeg\" /></p>\n\n<p align=\"center\"><strong>战疫展现央企责任担当</strong></p>\n\n<p align=\"center\"><strong>朱京津</strong></p>\n\n<p align=\"center\"><strong>2020年4月20日 05版</strong></p>\n\n<p align=\"left\"><br />\n面对新冠肺炎疫情，中国医药集团有限公司和中国生物技术股份有限公司与全国人民共同奋战、英勇抗疫，在战斗中成长，在创造中奋进，努力做出自己的贡献。</p>\n\n<p align=\"left\"><br />\n中国生物武汉生物制品研究所科研&ldquo;逆行者&rdquo;方习静，春节期间回到了安徽淮南的家中，为了参加抗疫科研工作，她找到多个部门和单位办理了返汉申请，告别了5岁的儿子，登上不经停武汉的高铁。原计划到岳阳下高铁后再想办法回武汉，但列车长得知她的工作性质和特殊使命，毫不犹豫地为她在武汉站进行技术特停，方习静一回到公司就投入到紧张的科研工作中。中国生物营销中心湖北省地市经理周黎不幸感染新冠肺炎，康复出院后，她毫不犹豫地献出了恢复期血浆。许许多多事例，让我们看到科研工作者的牺牲与奉献，让我们感受到担当与责任。</p>\n\n<p align=\"center\"><br />\n<img src=\"https://www.cnbg.com.cn/upload/image/20200420/0_1587372071.jpeg\" /></p>\n\n<p align=\"center\">中国生物上海捷诺正在生产核酸分子检测试剂盒</p>\n\n<p><br />\n中国生物率先研发出新冠病毒核酸分子检测试剂盒，引发社会广泛关注。防控就是责任，时间就是命令，为什么必须快速研发出诊断试剂盒？这是因为中国生物作为生物制品领域的&ldquo;国家队&rdquo;，坚决贯彻习近平总书记的重要讲话、重要指示批示精神和党中央的决策部署是职责所在。我们平时注重科研积累，所以在遇到突发公共卫生事件时，能迅速出击。我们高效组织、团结协作，上下齐心协力、步调一致，实现了&ldquo;1+1&gt;2&rdquo;的良好成效。可以说，面对疫情，关爱生命、呵护健康的企业理念得到践行，科研攻关、技术进步的企业价值得到彰显。</p>\n\n<p>&nbsp;</p>\n\n<p align=\"center\"><img src=\"https://www.cnbg.com.cn/upload/image/20200420/1_1587372070.jpeg\" /></p>\n\n<p align=\"center\">中国生物武汉生物制品研究所与中国科学院武汉病毒研究所协同研发的新冠病毒灭活疫苗</p>\n\n<p>&nbsp;</p>\n\n<p>现在大战仍未结束，大考仍在继续，中国生物将继续在疫苗研发上努力探索。习近平总书记强调：&ldquo;疫苗作为用于健康人的特殊产品，对疫情防控至关重要，对安全性的要求也是第一位的。&rdquo;我们将树立战时思维，抢抓时间，拼速度，同时要保安全讲质量，努力在与病毒赛跑中赢得先机。</p>\n\n<p>&nbsp;</p>\n\n<p align=\"center\"><img src=\"https://www.cnbg.com.cn/upload/image/20200420/2_1587372071.jpeg\" /></p>\n\n<p align=\"center\">4月10日，工作人员在中国生物新冠疫苗生产基地尚未投产的新冠病毒灭活疫苗生产车间内调试设备。</p>\n\n<p>&nbsp;</p>\n\n<p>疫情防控，照见央企的奉献与情怀。不计名利、不惜代价，一切服从国家需要，是央企特有的情怀。疫情防控，也强化了我们的信仰信念，更加切身体会到中国特色社会主义制度的优越性。发挥包括中国生物在内的央企的独特作用，珍惜眼前的成果，为未来做好准备，我们一定能够打赢疫情防控阻击战。</p>\n', '3月20日，国药中国生物举办主题党课，党委书记朱京津以“承担国家责任，保障人民健康，在新冠肺炎阻', '/uploads/20200421/31262166f0615fd6cce399d874825bc5.png', null, '', '', '0', '', '', '', '');

-- ----------------------------
-- Table structure for tp_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group`;
CREATE TABLE `tp_auth_group` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '角色组',
  `rules` text COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色组管理';

-- ----------------------------
-- Records of tp_auth_group
-- ----------------------------
INSERT INTO `tp_auth_group` VALUES ('1', '1580633995', '1583732574', '1', '超级管理员', '0,157,92,93,94,95,96,97,98,99,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,171,172,173,174,175,176,268,269,270,271,272,273,274,275,276,158,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,106,107,108,109,110,111,112,113,114,115,100,101,102,103,104,105,159,163,164,165,166,167,168,169,170,160,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,39,40,41,42,43,44,45,46,47,48,187,177,178,179,180,181,182,183,184,185,186,161,49,50,51,52,53,54,55,56,57,58,69,70,71,72,73,74,75,76,77,78,59,60,61,62,63,64,65,66,67,68,79,80,81,82,83,84,85,86,87,88,162,1,2,3,4,5,6,7,8,29,30,31,32,33,34,35,36,37,38,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,260,261,262,263,264,265,266,267,');
INSERT INTO `tp_auth_group` VALUES ('2', '1580634019', '1583976504', '1', '测试组', '0,157,92,93,95,99,9,10,12,16,19,20,22,26,171,174,268,269,271,274,277,278,158,116,117,119,123,125,126,128,132,134,106,107,109,113,100,101,105,159,163,164,165,166,167,169,170,160,136,137,139,143,147,148,150,154,39,40,42,46,187,177,178,180,184,161,49,50,52,56,69,70,72,76,59,60,62,66,79,80,82,86,162,1,2,4,8,29,30,32,36,188,189,190,192,196,199,200,202,206,209,210,212,216,219,220,222,226,229,230,232,236,239,240,242,246,249,252,256,258,260,261,262,263,264,265,266,267,');

-- ----------------------------
-- Table structure for tp_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_group_access`;
CREATE TABLE `tp_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_auth_group_access
-- ----------------------------
INSERT INTO `tp_auth_group_access` VALUES ('1', '1', '1553846932', '1553846932');
INSERT INTO `tp_auth_group_access` VALUES ('2', '2', '1583728403', '1583748601');

-- ----------------------------
-- Table structure for tp_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `tp_auth_rule`;
CREATE TABLE `tp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` text NOT NULL COMMENT '父ID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器/方法',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单状态',
  `condition` char(100) NOT NULL DEFAULT '',
  `sort` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `auth_open` tinyint(2) DEFAULT '1',
  `icon` char(50) DEFAULT '',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `param` varchar(50) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_auth_rule
-- ----------------------------
INSERT INTO `tp_auth_rule` VALUES ('1', '162', 'Users/index', '会员管理', '1', '1', '', '71', '1', 'fa fa-user', '1580861016', '1580908159', '');
INSERT INTO `tp_auth_rule` VALUES ('2', '1', 'Users/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('3', '1', 'Users/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('4', '1', 'Users/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('5', '1', 'Users/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('6', '1', 'Users/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('7', '1', 'Users/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('8', '1', 'Users/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861016', '1580861016', '');
INSERT INTO `tp_auth_rule` VALUES ('9', '157', 'DictionaryType/index', '字典类型', '1', '1', '', '12', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('10', '9', 'DictionaryType/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('11', '9', 'DictionaryType/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('12', '9', 'DictionaryType/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('13', '9', 'DictionaryType/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('14', '9', 'DictionaryType/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('15', '9', 'DictionaryType/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('16', '9', 'DictionaryType/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('17', '9', 'DictionaryType/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('18', '9', 'DictionaryType/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861057', '1580861057', '');
INSERT INTO `tp_auth_rule` VALUES ('19', '157', 'Dictionary/index', '字典数据', '1', '1', '', '13', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('20', '19', 'Dictionary/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('21', '19', 'Dictionary/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('22', '19', 'Dictionary/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('23', '19', 'Dictionary/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('24', '19', 'Dictionary/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('25', '19', 'Dictionary/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('26', '19', 'Dictionary/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('27', '19', 'Dictionary/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('28', '19', 'Dictionary/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861065', '1580861065', '');
INSERT INTO `tp_auth_rule` VALUES ('29', '162', 'UsersType/index', '会员分组', '1', '1', '', '72', '1', 'fa fa-users', '1580861073', '1580908165', '');
INSERT INTO `tp_auth_rule` VALUES ('30', '29', 'UsersType/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('31', '29', 'UsersType/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('32', '29', 'UsersType/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('33', '29', 'UsersType/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('34', '29', 'UsersType/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('35', '29', 'UsersType/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('36', '29', 'UsersType/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('37', '29', 'UsersType/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('38', '29', 'UsersType/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861073', '1580861073', '');
INSERT INTO `tp_auth_rule` VALUES ('39', '160', 'FieldGroup/index', '字段分组', '1', '1', '', '43', '1', 'fa fa-bullseye', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('40', '39', 'FieldGroup/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('41', '39', 'FieldGroup/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('42', '39', 'FieldGroup/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('43', '39', 'FieldGroup/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('44', '39', 'FieldGroup/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('45', '39', 'FieldGroup/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('46', '39', 'FieldGroup/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('47', '39', 'FieldGroup/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('48', '39', 'FieldGroup/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861081', '1580861081', '');
INSERT INTO `tp_auth_rule` VALUES ('49', '161', 'Link/index', '友情链接', '1', '1', '', '61', '1', 'fa fa-link', '1580861091', '1580908119', '');
INSERT INTO `tp_auth_rule` VALUES ('50', '49', 'Link/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('51', '49', 'Link/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('52', '49', 'Link/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('53', '49', 'Link/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('54', '49', 'Link/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('55', '49', 'Link/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('56', '49', 'Link/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('57', '49', 'Link/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('58', '49', 'Link/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861091', '1580861091', '');
INSERT INTO `tp_auth_rule` VALUES ('59', '161', 'AdType/index', '广告分组', '1', '1', '', '63', '1', 'fa fa-tv', '1580861099', '1580908135', '');
INSERT INTO `tp_auth_rule` VALUES ('60', '59', 'AdType/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('61', '59', 'AdType/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('62', '59', 'AdType/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('63', '59', 'AdType/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('64', '59', 'AdType/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('65', '59', 'AdType/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('66', '59', 'AdType/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('67', '59', 'AdType/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('68', '59', 'AdType/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861099', '1580861099', '');
INSERT INTO `tp_auth_rule` VALUES ('69', '161', 'Ad/index', '广告管理', '1', '1', '', '62', '1', 'fa fa-tv', '1580861106', '1580908132', '');
INSERT INTO `tp_auth_rule` VALUES ('70', '69', 'Ad/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('71', '69', 'Ad/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('72', '69', 'Ad/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('73', '69', 'Ad/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('74', '69', 'Ad/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('75', '69', 'Ad/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('76', '69', 'Ad/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861106', '1580861106', '');
INSERT INTO `tp_auth_rule` VALUES ('77', '69', 'Ad/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861107', '1580861107', '');
INSERT INTO `tp_auth_rule` VALUES ('78', '69', 'Ad/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861107', '1580861107', '');
INSERT INTO `tp_auth_rule` VALUES ('79', '161', 'Debris/index', '碎片管理', '1', '1', '', '64', '1', 'fa fa-gift', '1580861113', '1580908138', '');
INSERT INTO `tp_auth_rule` VALUES ('80', '79', 'Debris/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('81', '79', 'Debris/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('82', '79', 'Debris/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('83', '79', 'Debris/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('84', '79', 'Debris/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('85', '79', 'Debris/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('86', '79', 'Debris/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('87', '79', 'Debris/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('88', '79', 'Debris/state', '操作-状态', '1', '0', '', '9', '1', '', '1580861113', '1580861113', '');
INSERT INTO `tp_auth_rule` VALUES ('268', '157', 'Template/index', '模板管理', '1', '1', '', '16', '1', 'fa fa-code', '1581385089', '1581385089', '');
INSERT INTO `tp_auth_rule` VALUES ('269', '268', 'Template/add', '操作-添加', '1', '0', '', '1', '1', '', '1581385125', '1581385125', '');
INSERT INTO `tp_auth_rule` VALUES ('92', '157', 'System/index', '系统设置', '1', '1', '', '11', '1', 'fa fa-cog', '1580861127', '1580874204', '');
INSERT INTO `tp_auth_rule` VALUES ('93', '92', 'System/add', '操作-添加', '1', '0', '', '1', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('94', '92', 'System/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('95', '92', 'System/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('96', '92', 'System/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('97', '92', 'System/del', '操作-删除', '1', '0', '', '5', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('98', '92', 'System/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('99', '92', 'System/export', '操作-导出', '1', '0', '', '7', '1', '', '1580861127', '1580861127', '');
INSERT INTO `tp_auth_rule` VALUES ('100', '158', 'AdminLog/index', '管理员日志', '1', '1', '', '24', '1', 'fa fa-book', '1580871750', '1580871750', '');
INSERT INTO `tp_auth_rule` VALUES ('101', '100', 'AdminLog/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580871750', '1580871750', '');
INSERT INTO `tp_auth_rule` VALUES ('102', '100', 'AdminLog/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580871750', '1580871750', '');
INSERT INTO `tp_auth_rule` VALUES ('103', '100', 'AdminLog/del', '操作-删除', '1', '0', '', '5', '1', '', '1580871750', '1580871750', '');
INSERT INTO `tp_auth_rule` VALUES ('104', '100', 'AdminLog/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580871750', '1580871750', '');
INSERT INTO `tp_auth_rule` VALUES ('105', '100', 'AdminLog/export', '操作-导出', '1', '0', '', '7', '1', '', '1580871750', '1580871750', '');
INSERT INTO `tp_auth_rule` VALUES ('106', '158', 'AuthRule/index', '菜单规则', '1', '1', '', '23', '1', 'fa fa-bars', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('107', '106', 'AuthRule/add', '操作-添加', '1', '0', '', '1', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('108', '106', 'AuthRule/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('109', '106', 'AuthRule/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('110', '106', 'AuthRule/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('111', '106', 'AuthRule/del', '操作-删除', '1', '0', '', '5', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('112', '106', 'AuthRule/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('113', '106', 'AuthRule/export', '操作-导出', '1', '0', '', '7', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('114', '106', 'AuthRule/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('115', '106', 'AuthRule/state', '操作-状态', '1', '0', '', '9', '1', '', '1580871826', '1580871826', '');
INSERT INTO `tp_auth_rule` VALUES ('116', '158', 'Admin/index', '管理员管理', '1', '1', '', '21', '1', 'fa fa-user', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('117', '116', 'Admin/add', '操作-添加', '1', '0', '', '1', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('118', '116', 'Admin/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('119', '116', 'Admin/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('120', '116', 'Admin/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('121', '116', 'Admin/del', '操作-删除', '1', '0', '', '5', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('122', '116', 'Admin/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('123', '116', 'Admin/export', '操作-导出', '1', '0', '', '7', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('124', '116', 'Admin/state', '操作-状态', '1', '0', '', '9', '1', '', '1580871882', '1580871882', '');
INSERT INTO `tp_auth_rule` VALUES ('125', '158', 'AuthGroup/index', '角色组管理', '1', '1', '', '22', '1', 'fa fa-group', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('126', '125', 'AuthGroup/add', '操作-添加', '1', '0', '', '1', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('127', '125', 'AuthGroup/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('128', '125', 'AuthGroup/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('129', '125', 'AuthGroup/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('130', '125', 'AuthGroup/del', '操作-删除', '1', '0', '', '5', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('131', '125', 'AuthGroup/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('132', '125', 'AuthGroup/export', '操作-导出', '1', '0', '', '7', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('133', '125', 'AuthGroup/state', '操作-状态', '1', '0', '', '9', '1', '', '1580871965', '1580871965', '');
INSERT INTO `tp_auth_rule` VALUES ('134', '125', 'AuthGroup/access', '操作-权限', '1', '0', '', '10', '1', '', '1580872096', '1580872096', '');
INSERT INTO `tp_auth_rule` VALUES ('135', '125', 'AuthGroup/accessPost', '操作-权限保存', '1', '0', '', '11', '1', '', '1580872132', '1580872132', '');
INSERT INTO `tp_auth_rule` VALUES ('136', '160', 'Module/index', '模块管理', '1', '1', '', '41', '1', 'fa fa-th-list', '1580872182', '1580878146', '');
INSERT INTO `tp_auth_rule` VALUES ('137', '136', 'Module/add', '操作-添加', '1', '0', '', '1', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('138', '136', 'Module/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('139', '136', 'Module/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('140', '136', 'Module/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('141', '136', 'Module/del', '操作-删除', '1', '0', '', '5', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('142', '136', 'Module/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('143', '136', 'Module/export', '操作-导出', '1', '0', '', '7', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('144', '136', 'Module/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580872182', '1580872182', '');
INSERT INTO `tp_auth_rule` VALUES ('145', '136', 'Module/build', '操作-生成代码', '1', '0', '', '9', '1', '', '1580872699', '1580872699', '');
INSERT INTO `tp_auth_rule` VALUES ('146', '136', 'Module/makeRule', '操作-生成菜单规则', '1', '0', '', '10', '1', '', '1580872730', '1580872730', '');
INSERT INTO `tp_auth_rule` VALUES ('147', '160', 'Field/index', '字段管理', '1', '1', '', '42', '1', 'fa fa-bullhorn', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('148', '147', 'Field/add', '操作-添加', '1', '0', '', '1', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('149', '147', 'Field/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('150', '147', 'Field/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('151', '147', 'Field/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('152', '147', 'Field/del', '操作-删除', '1', '0', '', '5', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('153', '147', 'Field/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('154', '147', 'Field/changeType', '操作-加载配置', '1', '0', '', '7', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('155', '147', 'Field/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('156', '147', 'Field/state', '操作-状态', '1', '0', '', '9', '1', '', '1580872859', '1580872859', '');
INSERT INTO `tp_auth_rule` VALUES ('157', '0', 'System', '系统管理', '1', '1', '', '1', '1', 'fa fa-cogs', '1580874149', '1580874149', '');
INSERT INTO `tp_auth_rule` VALUES ('158', '0', 'Auth', '权限管理', '1', '1', '', '2', '1', 'fa fa-group', '1580874265', '1580874265', '');
INSERT INTO `tp_auth_rule` VALUES ('159', '0', 'Database', '数据库管理', '1', '1', '', '3', '1', 'fa fa-database', '1580876394', '1580876394', '');
INSERT INTO `tp_auth_rule` VALUES ('160', '0', 'Module', '模块管理', '1', '1', '', '4', '1', 'fa fa-bolt', '1580876437', '1580876437', '');
INSERT INTO `tp_auth_rule` VALUES ('161', '0', 'Link', '网站功能', '1', '1', '', '6', '1', 'fa fa-gear', '1580878492', '1580908102', '');
INSERT INTO `tp_auth_rule` VALUES ('162', '0', 'Users', '会员管理', '1', '1', '', '7', '1', 'fa fa-user', '1580878687', '1580908154', '');
INSERT INTO `tp_auth_rule` VALUES ('163', '159', 'Database/database', '数据库备份', '1', '1', '', '31', '1', 'fa fa-server', '1580881507', '1580881507', '');
INSERT INTO `tp_auth_rule` VALUES ('164', '163', 'Database/backup', '操作-备份', '1', '0', '', '1', '1', '', '1580881536', '1580881536', '');
INSERT INTO `tp_auth_rule` VALUES ('165', '163', 'Database/repair', '操作-修复', '1', '0', '', '2', '1', '', '1580881567', '1580881567', '');
INSERT INTO `tp_auth_rule` VALUES ('166', '163', 'Database/optimize', '操作-优化', '1', '0', '', '3', '1', '', '1580881596', '1580881596', '');
INSERT INTO `tp_auth_rule` VALUES ('167', '159', 'Database/restore', '数据库还原', '1', '1', '', '32', '1', 'fa fa-recycle', '1580881718', '1580881729', '');
INSERT INTO `tp_auth_rule` VALUES ('168', '167', 'Database/import', '操作-还原', '1', '0', '', '1', '1', '', '1580881791', '1580881791', '');
INSERT INTO `tp_auth_rule` VALUES ('169', '167', 'Database/downFile', '操作-下载', '1', '0', '', '2', '1', '', '1580881823', '1580881823', '');
INSERT INTO `tp_auth_rule` VALUES ('170', '167', 'Database/del', '操作-删除', '1', '0', '', '3', '1', '', '1580881861', '1580881861', '');
INSERT INTO `tp_auth_rule` VALUES ('171', '157', 'Config/email', '邮件配置', '1', '1', '', '14', '1', 'fa fa-mail-forward', '1580882102', '1580882122', '');
INSERT INTO `tp_auth_rule` VALUES ('172', '171', 'Config/emailPost', '操作-修改保存', '1', '0', '', '1', '1', '', '1580882214', '1580882214', '');
INSERT INTO `tp_auth_rule` VALUES ('173', '171', 'Config/emailSend', '操作-测试邮箱', '1', '0', '', '2', '1', '', '1580882294', '1580882294', '');
INSERT INTO `tp_auth_rule` VALUES ('174', '157', 'Config/sms', '短信配置', '1', '1', '', '15', '1', 'fa fa-send', '1580882360', '1580882360', '');
INSERT INTO `tp_auth_rule` VALUES ('175', '174', 'Config/smsPost', '操作-修改保存', '1', '0', '', '1', '1', '', '1580882449', '1580882449', '');
INSERT INTO `tp_auth_rule` VALUES ('176', '174', 'Config/smsSend', '操作-测试短信', '1', '0', '', '2', '1', '', '1580882486', '1580882486', '');
INSERT INTO `tp_auth_rule` VALUES ('177', '187', 'Cate/index', '栏目管理', '1', '1', '', '51', '1', 'fa fa-navicon', '1580907966', '1580908113', '');
INSERT INTO `tp_auth_rule` VALUES ('178', '177', 'Cate/add', '操作-添加', '1', '0', '', '1', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('179', '177', 'Cate/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('180', '177', 'Cate/edit', '操作-修改', '1', '0', '', '3', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('181', '177', 'Cate/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('182', '177', 'Cate/del', '操作-删除', '1', '0', '', '5', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('183', '177', 'Cate/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('184', '177', 'Cate/export', '操作-导出', '1', '0', '', '7', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('185', '177', 'Cate/sort', '操作-排序', '1', '0', '', '8', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('186', '177', 'Cate/state', '操作-状态', '1', '0', '', '9', '1', '', '1580907966', '1580907966', '');
INSERT INTO `tp_auth_rule` VALUES ('187', '0', 'Cate', '栏目管理', '1', '1', '', '5', '1', 'fa fa-th', '1580908039', '1580908039', '');
INSERT INTO `tp_auth_rule` VALUES ('188', '0', 'Page', '内容管理', '1', '1', '', '8', '1', 'fa fa-briefcase', '1581080617', '1581080617', '');
INSERT INTO `tp_auth_rule` VALUES ('189', '188', 'Page/index', '单页模块', '1', '1', '', '81', '1', '', '1581080630', '1581080705', '');
INSERT INTO `tp_auth_rule` VALUES ('190', '189', 'Page/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('191', '189', 'Page/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('192', '189', 'Page/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('193', '189', 'Page/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('194', '189', 'Page/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('195', '189', 'Page/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('196', '189', 'Page/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('197', '189', 'Page/sort', '操作-排序', '1', '0', '', '8', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('198', '189', 'Page/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080630', '1581080630', '');
INSERT INTO `tp_auth_rule` VALUES ('199', '188', 'Article/index', '文章模块', '1', '1', '', '82', '1', '', '1581080635', '1581080712', '');
INSERT INTO `tp_auth_rule` VALUES ('200', '199', 'Article/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('201', '199', 'Article/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('202', '199', 'Article/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('203', '199', 'Article/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('204', '199', 'Article/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('205', '199', 'Article/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('206', '199', 'Article/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('207', '199', 'Article/sort', '操作-排序', '1', '0', '', '8', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('208', '199', 'Article/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080635', '1581080635', '');
INSERT INTO `tp_auth_rule` VALUES ('209', '188', 'Picture/index', '图片模块', '1', '1', '', '83', '1', '', '1581080640', '1581080717', '');
INSERT INTO `tp_auth_rule` VALUES ('210', '209', 'Picture/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('211', '209', 'Picture/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('212', '209', 'Picture/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('213', '209', 'Picture/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('214', '209', 'Picture/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('215', '209', 'Picture/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('216', '209', 'Picture/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('217', '209', 'Picture/sort', '操作-排序', '1', '0', '', '8', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('218', '209', 'Picture/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080640', '1581080640', '');
INSERT INTO `tp_auth_rule` VALUES ('219', '188', 'Product/index', '产品模块', '1', '1', '', '84', '1', '', '1581080644', '1581080721', '');
INSERT INTO `tp_auth_rule` VALUES ('220', '219', 'Product/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('221', '219', 'Product/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('222', '219', 'Product/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('223', '219', 'Product/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('224', '219', 'Product/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('225', '219', 'Product/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('226', '219', 'Product/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('227', '219', 'Product/sort', '操作-排序', '1', '0', '', '8', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('228', '219', 'Product/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080644', '1581080644', '');
INSERT INTO `tp_auth_rule` VALUES ('229', '188', 'Download/index', '下载模块', '1', '1', '', '85', '1', '', '1581080647', '1581080726', '');
INSERT INTO `tp_auth_rule` VALUES ('230', '229', 'Download/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('231', '229', 'Download/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('232', '229', 'Download/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('233', '229', 'Download/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('234', '229', 'Download/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('235', '229', 'Download/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('236', '229', 'Download/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('237', '229', 'Download/sort', '操作-排序', '1', '0', '', '8', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('238', '229', 'Download/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080647', '1581080647', '');
INSERT INTO `tp_auth_rule` VALUES ('239', '188', 'Team/index', '团队模块', '1', '1', '', '86', '1', '', '1581080650', '1581080731', '');
INSERT INTO `tp_auth_rule` VALUES ('240', '239', 'Team/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('241', '239', 'Team/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('242', '239', 'Team/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('243', '239', 'Team/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('244', '239', 'Team/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('245', '239', 'Team/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('246', '239', 'Team/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('247', '239', 'Team/sort', '操作-排序', '1', '0', '', '8', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('248', '239', 'Team/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080650', '1581080650', '');
INSERT INTO `tp_auth_rule` VALUES ('249', '188', 'Message/index', '留言模块', '1', '1', '', '87', '1', '', '1581080655', '1581080741', '');
INSERT INTO `tp_auth_rule` VALUES ('250', '249', 'Message/add', '操作-添加', '1', '0', '', '1', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('251', '249', 'Message/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('252', '249', 'Message/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('253', '249', 'Message/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('254', '249', 'Message/del', '操作-删除', '1', '0', '', '5', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('255', '249', 'Message/selectDel', '操作-批量删除', '1', '0', '', '6', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('256', '249', 'Message/export', '操作-导出', '1', '0', '', '7', '1', '', '1581080655', '1581080655', '');
INSERT INTO `tp_auth_rule` VALUES ('257', '249', 'Message/state', '操作-状态', '1', '0', '', '9', '1', '', '1581080655', '1581214069', '');
INSERT INTO `tp_auth_rule` VALUES ('258', '0', 'Demo', '实例演示', '1', '1', '', '9', '1', 'fa fa-desktop', '1581210913', '1581210922', '');
INSERT INTO `tp_auth_rule` VALUES ('261', '258', 'Demo/icons', '图标', '1', '1', '', '92', '1', '', '1581217423', '1581217753', '');
INSERT INTO `tp_auth_rule` VALUES ('260', '258', 'Demo/button', '按钮', '1', '1', '', '91', '1', '', '1581212447', '1581212473', '');
INSERT INTO `tp_auth_rule` VALUES ('262', '258', 'Demo/general', '常规', '1', '1', '', '93', '1', '', '1581217729', '1581217756', '');
INSERT INTO `tp_auth_rule` VALUES ('263', '258', 'Demo/modals', '模态框', '1', '1', '', '94', '1', '', '1581218146', '1581218146', '');
INSERT INTO `tp_auth_rule` VALUES ('264', '258', 'Demo/timeline', '时间轴', '1', '1', '', '95', '1', '', '1581218342', '1581218342', '');
INSERT INTO `tp_auth_rule` VALUES ('265', '258', 'Demo/layer', '弹层', '1', '1', '', '96', '1', '', '1581223849', '1581223863', '');
INSERT INTO `tp_auth_rule` VALUES ('266', '258', 'Demo/layerForm', 'layer表单', '1', '1', '', '97', '1', '', '1581297357', '1581297367', '');
INSERT INTO `tp_auth_rule` VALUES ('267', '258', 'Demo/addPost', '提交演示', '1', '0', '', '98', '0', '', '1581299002', '1581299009', '');
INSERT INTO `tp_auth_rule` VALUES ('270', '268', 'Template/addPost', '操作-添加保存', '1', '0', '', '2', '1', '', '1581385157', '1581385157', '');
INSERT INTO `tp_auth_rule` VALUES ('271', '268', 'Template/edit', '操作-修改', '1', '0', '', '3', '1', '', '1581385175', '1581385175', '');
INSERT INTO `tp_auth_rule` VALUES ('272', '268', 'Template/editPost', '操作-修改保存', '1', '0', '', '4', '1', '', '1581385230', '1581385230', '');
INSERT INTO `tp_auth_rule` VALUES ('273', '268', 'Template/del', '操作-删除', '1', '0', '', '5', '1', '', '1581385315', '1581385315', '');
INSERT INTO `tp_auth_rule` VALUES ('274', '268', 'Template/img', '媒体文件-列表', '1', '0', '', '6', '1', '', '1581385347', '1581385347', '');
INSERT INTO `tp_auth_rule` VALUES ('275', '268', 'Template/imgDel', '媒体文件-删除', '1', '0', '', '7', '1', '', '1581385377', '1581385377', '');
INSERT INTO `tp_auth_rule` VALUES ('276', '268', 'Template/selectDel', '操作-批量删除', '1', '0', '', '8', '1', '', '1583732028', '1583732057', '');
INSERT INTO `tp_auth_rule` VALUES ('277', '157', 'Plugin/index', '插件管理', '1', '1', '', '17', '1', 'fa fa-plug', '1583976240', '1583976276', '');
INSERT INTO `tp_auth_rule` VALUES ('278', '277', 'Plugin/config', '操作-配置', '1', '0', '', '1', '1', '', '1583976343', '1583976343', '');
INSERT INTO `tp_auth_rule` VALUES ('279', '277', 'Plugin/configSave', '操作-配置保存', '1', '0', '', '2', '1', '', '1583976405', '1583976405', '');
INSERT INTO `tp_auth_rule` VALUES ('280', '277', 'Plugin/state', '操作-安装/卸载', '1', '0', '', '3', '1', '', '1583976450', '1583976450', '');

-- ----------------------------
-- Table structure for tp_cate
-- ----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(8) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `cate_name` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `en_name` varchar(255) NOT NULL DEFAULT '' COMMENT '英文名称',
  `cate_folder` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `parent_id` text NOT NULL COMMENT '上级栏目',
  `module_id` text NOT NULL COMMENT '所属模块',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '外部链接',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `ico_image` varchar(255) NOT NULL DEFAULT '' COMMENT 'ICO图片',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `summary` text NOT NULL COMMENT '简介',
  `template_list` varchar(255) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_show` varchar(255) NOT NULL DEFAULT '' COMMENT '详情模版',
  `page_size` char(5) NOT NULL DEFAULT '0' COMMENT '分页条数',
  `is_menu` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '导航状态',
  `is_next` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '跳转下级',
  `is_blank` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '新窗口打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='栏目管理';

-- ----------------------------
-- Records of tp_cate
-- ----------------------------
INSERT INTO `tp_cate` VALUES ('14', '1587453833', '1587454300', '1', '1', '认识我们', '', '', '', '18', '/index/index.html#section0', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('15', '1587453887', '1587454311', '1', '1', '认识我们', '', '', '14', '18', '/index/index.html#section0', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('16', '1587453903', '1587454320', '2', '1', '公司简析', '', '', '14', '18', '/index/index.html#section1', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('17', '1587453919', '1587454328', '3', '1', '管理团队', '', '', '14', '18', '/index/index.html#section2', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('18', '1587453954', '1587454338', '4', '1', '企业文化', '', '', '14', '18', '/index/index.html#section3', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('19', '1587453974', '1587454349', '5', '1', '视频之窗', '', '', '14', '18', '/index/index.html#section4', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('20', '1587453992', '1587454357', '6', '1', '发展历程', '', '', '14', '18', '/index/index.html#section5', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('21', '1587454017', '1587454017', '2', '1', '新闻中心', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('23', '1587454036', '1587454036', '1', '1', '企业动态', '', '', '21', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('24', '1587454050', '1587454050', '2', '1', '媒体焦点', '', '', '21', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('25', '1587454067', '1587454067', '3', '1', '通知公告', '', '', '21', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('26', '1587454083', '1587454083', '4', '1', '专题专栏', '', '', '21', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('27', '1587454099', '1587454108', '3', '1', '业务信息', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('28', '1587454123', '1587454123', '4', '1', '研发创新', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('29', '1587454136', '1587454136', '5', '1', '质量管理', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('30', '1587454151', '1587454151', '6', '1', '国际合作', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('31', '1587454164', '1587454164', '7', '1', '社会责任', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('32', '1587454179', '1587454179', '1', '1', '责任履行', '', '', '31', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('33', '1587454193', '1587454193', '2', '1', '中生贡献', '', '', '31', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('34', '1587454206', '1587454206', '8', '1', '职业发展', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('35', '1587454219', '1587454219', '9', '1', '党建文化', '', '', '', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('36', '1587454234', '1587454234', '1', '1', '党群动态', '', '', '35', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');
INSERT INTO `tp_cate` VALUES ('37', '1587454247', '1587454247', '2', '1', '党建要闻', '', '', '35', '18', '', '', '', '', '', '', '', '', '', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for tp_config
-- ----------------------------
DROP TABLE IF EXISTS `tp_config`;
CREATE TABLE `tp_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- ----------------------------
-- Records of tp_config
-- ----------------------------
INSERT INTO `tp_config` VALUES ('60', 'smtp_server', 'smtp.qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('61', 'smtp_port', '465', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('62', 'smtp_user', '407593529@qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('63', 'smtp_pwd', '发ff', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('64', 'regis_smtp_enable', '测试', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('65', 'test_eamil', '123@qq.com', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('94', 'test_mobile', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('93', 'signName', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('92', 'templateCode', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('91', 'accessKeySecret', '', 'sms', null);
INSERT INTO `tp_config` VALUES ('90', 'accessKeyId', 'LTAIqinwPNwEawUK', 'sms', null);
INSERT INTO `tp_config` VALUES ('88', 'email_id', 'SIYUCMS', 'smtp', '0');
INSERT INTO `tp_config` VALUES ('89', 'test_eamil_info', '<p>您好！这是一封来自SIYUCMS的测试邮件！</p>\n', 'smtp', '0');

-- ----------------------------
-- Table structure for tp_debris
-- ----------------------------
DROP TABLE IF EXISTS `tp_debris`;
CREATE TABLE `tp_debris` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '碎片标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '调用名称',
  `content` text NOT NULL COMMENT '碎片内容',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='碎片列表';

-- ----------------------------
-- Records of tp_debris
-- ----------------------------
INSERT INTO `tp_debris` VALUES ('1', '1580388141', '1580388225', '1', '1', '关于我们', 'AboutUs', '<p>SIYUCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。<br />\nSIYUCMS内容管理系统，包含系统设置，权限管理，模型管理，数据库管理，栏目管理，会员管理，网站功能，模版管理，微信管理等相关模块。&nbsp;&nbsp;</p>\n\n<p>&nbsp;</p>\n', '', '', '首页调用');

-- ----------------------------
-- Table structure for tp_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tp_dictionary`;
CREATE TABLE `tp_dictionary` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `dict_label` varchar(100) NOT NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(255) NOT NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` char(5) NOT NULL DEFAULT '' COMMENT '字典类型',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(5) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dictionary
-- ----------------------------
INSERT INTO `tp_dictionary` VALUES ('1', '显示', '1', '1', '显示', '1579227398', '1579484762', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('2', '隐藏', '0', '1', '隐藏', '1579227507', '1579484767', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('3', '是', '1', '2', '是', '1579227536', '1579227536', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('4', '否', '0', '2', '否', '1579227552', '1579488433', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('5', 'CMS', '1', '3', 'CMS', '1579490699', '1579490699', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('6', '后台', '2', '3', '后台', '1579490732', '1579490732', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('7', '保密', '0', '4', '', '1579586378', '1579586378', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('8', '男', '1', '4', '', '1579586392', '1579586392', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('9', '女', '2', '4', '', '1579586406', '1579586406', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('10', '已验证', '1', '5', '', '1579587175', '1579587175', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('11', '未验证', '0', '5', '', '1579587190', '1579587190', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('12', '新增', 'add', '6', '新增按钮', '1580442656', '1580442656', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('13', '修改', 'edit', '6', '修改按钮', '1580442715', '1580442715', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('14', '删除', 'del', '6', '批量删除按钮', '1580442742', '1580442742', '3', '1');
INSERT INTO `tp_dictionary` VALUES ('15', '导出', 'export', '6', '导出按钮', '1580442770', '1580442770', '4', '1');
INSERT INTO `tp_dictionary` VALUES ('16', '修改', 'edit', '7', '修改按钮', '1580444389', '1585894146', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('17', '删除', 'delete', '7', '删除按钮', '1580444406', '1585894149', '3', '1');
INSERT INTO `tp_dictionary` VALUES ('18', '开启', '1', '8', '开启', '1580559235', '1580559235', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('19', '关闭', '0', '8', '关闭', '1580559262', '1580559262', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('20', '字段本身', '0', '9', '字段本身', '1580793928', '1580793928', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('21', '系统字典', '1', '9', '系统字典', '1580793956', '1580793956', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('22', '模型数据', '2', '9', '模型数据', '1580793975', '1580793975', '3', '1');
INSERT INTO `tp_dictionary` VALUES ('23', '国内', '1', '10', '', '1584510855', '1584510855', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('24', '国外', '2', '10', '', '1584510871', '1584510871', '2', '1');
INSERT INTO `tp_dictionary` VALUES ('25', '预览', 'preview', '7', '预览按钮', '1585894123', '1585894136', '1', '1');
INSERT INTO `tp_dictionary` VALUES ('26', '本地上传', '1', '11', '本地上传', '1586855924', '1586855935', '1', '1');

-- ----------------------------
-- Table structure for tp_dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `tp_dictionary_type`;
CREATE TABLE `tp_dictionary_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dict_name` char(100) NOT NULL DEFAULT '' COMMENT '字典名称',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `sort` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_dictionary_type
-- ----------------------------
INSERT INTO `tp_dictionary_type` VALUES ('1', '显示状态', '1', '1579167978', '1579167978', '1 显示， 0 隐藏', '1');
INSERT INTO `tp_dictionary_type` VALUES ('2', '系统是否', '1', '1579168087', '1579168087', '1 是， 0 否', '2');
INSERT INTO `tp_dictionary_type` VALUES ('3', '表类型', '1', '1579168087', '1581165223', '1 CMS,2 后台', '7');
INSERT INTO `tp_dictionary_type` VALUES ('4', '性别', '1', '1579586355', '1581165215', '0 保密，1 男，2 女', '9');
INSERT INTO `tp_dictionary_type` VALUES ('5', '验证状态', '1', '1579587122', '1581165094', '1 已验证， 0 未验证	', '4');
INSERT INTO `tp_dictionary_type` VALUES ('6', '顶部按钮', '1', '1580442606', '1581165100', '列表页顶部按钮组', '5');
INSERT INTO `tp_dictionary_type` VALUES ('7', '右侧按钮', '1', '1580444354', '1581165102', '列表页右侧按钮组', '6');
INSERT INTO `tp_dictionary_type` VALUES ('8', '开关状态', '1', '1580559205', '1581165084', '1 开启， 0 关闭	', '3');
INSERT INTO `tp_dictionary_type` VALUES ('9', '数据源', '1', '1580793811', '1581165226', '0 字段本身，1 系统字典， 2  模型数据', '8');
INSERT INTO `tp_dictionary_type` VALUES ('10', '所属地区', '1', '1584510809', '1584510822', '', '10');
INSERT INTO `tp_dictionary_type` VALUES ('11', '上传驱动', '1', '1586855872', '1586855880', '上传驱动', '11');

-- ----------------------------
-- Table structure for tp_download
-- ----------------------------
DROP TABLE IF EXISTS `tp_download`;
CREATE TABLE `tp_download` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `content` text NOT NULL COMMENT '内容',
  `summary` text NOT NULL COMMENT '摘要',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `images` text COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下载模块';

-- ----------------------------
-- Records of tp_download
-- ----------------------------

-- ----------------------------
-- Table structure for tp_field
-- ----------------------------
DROP TABLE IF EXISTS `tp_field`;
CREATE TABLE `tp_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '所属模块',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '字段别名',
  `tips` varchar(200) NOT NULL DEFAULT '' COMMENT '提示信息',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否必填',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小长度',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大长度',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `data_source` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据源',
  `relation_model` varchar(100) NOT NULL DEFAULT '' COMMENT '模型关联',
  `relation_field` varchar(100) NOT NULL DEFAULT '' COMMENT '展示字段',
  `dict_code` varchar(100) NOT NULL DEFAULT '' COMMENT '字典类型',
  `is_add` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可插入',
  `is_edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可编辑',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可列表展示',
  `is_search` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可查询',
  `is_sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可排序',
  `search_type` varchar(100) NOT NULL DEFAULT '' COMMENT '查询类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `setup` text COMMENT '其他设置',
  `group_id` char(8) NOT NULL DEFAULT '0' COMMENT '字段分组',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COMMENT='模型字段表';

-- ----------------------------
-- Records of tp_field
-- ----------------------------
INSERT INTO `tp_field` VALUES ('1', '2', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '1', '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('2', '1', 'email', '邮箱', '', '1', '0', '100', 'text', '0', '', '', '', '1', '0', '1', '1', '0', '=', '1', '2', '邮箱', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('4', '3', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '1', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('6', '4', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '1', '0', '=', '1', '1', '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('7', '4', 'dict_name', '字典名称', '', '1', '0', '100', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'char\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('41', '2', 'module_id', '所属模块', '', '1', '0', '3', 'select', '2', 'Module', 'module_name', '', '1', '1', '1', '1', '1', '=', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('9', '4', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '2', '1', '1', '1', '1', '0', '=', '1', '3', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('10', '4', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('11', '4', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '6', '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('12', '4', 'remark', '备注', '', '0', '0', '200', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('13', '5', 'dict_label', '字典标签', '通常用做展示，如：男,女', '1', '0', '100', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '1', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('14', '5', 'dict_value', '字典键值', '通常用做键值，如：0,1', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '1', '=', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('15', '5', 'dict_type', '字典类型', '', '1', '0', '5', 'select', '2', 'DictionaryType', 'dict_name', '', '1', '0', '1', '1', '1', '=', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'char\',\n)', '0');
INSERT INTO `tp_field` VALUES ('16', '5', 'remark', '备注', '', '0', '0', '200', 'textarea', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('17', '5', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '1', '=', '1', '50', '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('18', '5', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '1', '=', '1', '50', '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('19', '5', 'sort', '排序', '', '1', '0', '5', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '4', '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('20', '4', 'sort', '排序', '', '1', '0', '5', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '4', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('21', '5', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('22', '5', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '1', '=', '1', '50', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('23', '3', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '', 'array (\r\n  \'default\' => \'0\',\r\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'int\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('24', '3', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '', 'array (\r\n  \'default\' => \'0\',\r\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'int\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('25', '3', 'sort', '排序', '', '1', '0', '5', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '8', '', 'array (\r\n  \'default\' => \'50\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('26', '3', 'module_name', '模块名称', '填写中文名称，如：友情链接', '1', '0', '100', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'like', '1', '2', '模块名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('27', '3', 'table_name', '表名称', '除去表前缀的数据表名称，全部小写并以`_`分割，如：user_group', '1', '0', '50', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'like', '1', '3', '表名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('28', '3', 'model_name', '模型名称', '除去表前缀的数据表名称，驼峰法命名，且首字母大写，如：UserGroup', '1', '0', '50', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'like', '1', '4', '模型名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('29', '3', 'table_comment', '表描述', '', '1', '0', '200', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '5', '表描述', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('30', '3', 'table_type', '表类型', '', '1', '0', '10', 'select', '1', '', '', '3', '1', '1', '1', '1', '0', '=', '1', '6', '表类型', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('31', '3', 'pk', '主键', '', '1', '0', '50', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '6', '主键', 'array (\n  \'default\' => \'id\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('32', '3', 'list_fields', '列表页字段', '', '1', '0', '255', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '9', '列表页字段', 'array (\r\n  \'default\' => \'*\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('33', '3', 'remark', '备注', '', '0', '0', '200', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '16', '', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('34', '6', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('35', '6', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('36', '6', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('37', '6', 'name', '分组名称', '', '1', '0', '100', 'text', '0', '', '', '', '1', '1', '1', '1', '1', '=', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('38', '6', 'remark', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('39', '6', 'sort', '排序', '', '1', '0', '5', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '4', '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('40', '6', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('42', '2', 'field', '字段名', '', '1', '0', '100', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('43', '2', 'name', '字段别名', '', '1', '0', '100', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '4', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('44', '2', 'tips', '提示信息', '', '0', '0', '200', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('45', '2', 'required', '是否必填', '', '1', '0', '1', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '6', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('46', '2', 'minlength', '最小长度', '', '0', '0', '10', 'number', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('47', '2', 'maxlength', '最大长度', '', '0', '0', '10', 'number', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '8', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('48', '2', 'type', '字段类型', '', '1', '0', '20', 'text', '0', '', '', '', '1', '1', '1', '1', '1', '=', '1', '9', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('49', '2', 'data_source', '数据源', '', '0', '0', '10', 'number', '1', '', '', '9', '1', '1', '1', '1', '0', '=', '1', '10', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('50', '2', 'relation_model', '模型关联', '', '0', '0', '100', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('51', '2', 'relation_field', '展示字段', '', '0', '0', '100', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '12', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('52', '2', 'dict_code', '字典类型', '', '0', '0', '100', 'text', '2', 'DictionaryType', 'module_name', '', '1', '1', '1', '0', '0', '=', '1', '13', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('53', '2', 'is_add', '添加', '', '0', '0', '1', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '14', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('54', '2', 'is_edit', '修改', '', '0', '0', '1', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('55', '2', 'is_list', '列表', '', '0', '0', '1', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '16', '', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('56', '2', 'is_search', '搜索', '', '0', '0', '1', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '17', '', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('57', '2', 'is_sort', '排序', '', '0', '0', '1', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '18', '', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('58', '2', 'search_type', '查询类型', '', '0', '0', '100', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '19', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('59', '2', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '20', '', 'array (\r\n  \'default\' => \'1\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('60', '2', 'sort', '排序', '', '1', '0', '5', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '21', '', 'array (\r\n  \'default\' => \'50\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'step\' => \'1\',\r\n  \'fieldtype\' => \'int\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('61', '2', 'remark', '备注', '', '0', '0', '200', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '22', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('62', '2', 'setup', '其他设置', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '23', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('63', '1', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('64', '1', 'password', '密码', '', '0', '0', '100', 'password', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('65', '1', 'sex', '性别', '', '1', '0', '1', 'radio', '1', '', '', '4', '1', '1', '1', '1', '1', '=', '1', '4', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('66', '1', 'last_login_time', '最后登录时间', '', '0', '0', '10', 'datetime', '0', '', '', '', '1', '0', '1', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('67', '1', 'last_login_ip', '最后登录IP', '', '0', '0', '15', 'text', '0', '', '', '', '1', '0', '1', '1', '0', '=', '1', '6', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('68', '1', 'qq', 'QQ', '', '0', '0', '20', 'text', '0', '', '', '', '1', '0', '1', '1', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('69', '1', 'mobile', '手机', '', '0', '0', '20', 'text', '0', '', '', '', '1', '0', '1', '1', '0', '=', '1', '8', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('70', '1', 'mobile_validated', '手机验证', '', '1', '0', '3', 'radio', '1', '', '', '5', '1', '1', '1', '1', '1', '=', '1', '9', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('71', '1', 'email_validated', '邮箱验证', '', '1', '0', '3', 'radio', '1', '', '', '5', '1', '1', '1', '1', '1', '=', '1', '10', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('72', '1', 'type_id', '所属分组', '', '1', '0', '3', 'select', '2', 'UsersType', 'name', '', '1', '1', '1', '1', '1', '=', '1', '11', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('73', '1', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '12', '', 'array (\r\n  \'default\' => \'1\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('74', '1', 'create_ip', '注册IP', '', '0', '0', '15', 'text', '0', '', '', '', '1', '0', '1', '0', '0', '=', '1', '13', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('75', '1', 'create_time', '创建时间', '', '0', '0', '10', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '14', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('76', '1', 'update_time', '更新时间', '', '0', '0', '10', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '15', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('77', '2', 'group_id', '字段分组', '用于添加和修改时显示在对应的分组中', '0', '0', '8', 'select', '2', 'FieldGrooup', 'group_name', '', '1', '1', '0', '0', '0', '=', '1', '50', '用于添加和修改时显示在对应的分组中', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'char\',\n)', '0');
INSERT INTO `tp_field` VALUES ('78', '7', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('79', '7', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('80', '7', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('81', '7', 'module_id', '所属模块', '用于判断当前字段所属模块', '1', '0', '5', 'select', '2', 'Module', 'module_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('82', '7', 'group_name', '分组名称', '用于添加/修改时显示对应的分组名称', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '3', '用于添加/修改时显示对应的分组名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('83', '7', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '4', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('84', '7', 'sort', '排序', '', '1', '0', '5', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '5', '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('85', '8', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('86', '8', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('87', '8', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('88', '8', 'name', '网站名称', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('89', '8', 'url', '网站地址', '请填写完整的网站地址', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('90', '8', 'logo', '网站logo', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '4', '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('91', '8', 'description', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('92', '8', 'sort', '排序', '', '1', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '6', '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('93', '8', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('94', '9', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('95', '9', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('96', '9', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('97', '9', 'name', '分组名称', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '1', 'LIKE', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('98', '9', 'description', '备注', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('99', '9', 'sort', '排序', '', '1', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '4', '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('101', '9', 'status', '状态', '', '1', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('102', '3', 'is_sort', '排序字段', '选择是则在生成模块时自动创建`排序`字段', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '10', '生成模块时自动创建', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('103', '3', 'is_status', '状态字段', '选择是则在生成模块时自动创建`状态`字段', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '11', '生成模块时自动创建', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('104', '10', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('105', '10', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('106', '10', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('107', '10', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('108', '10', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('109', '10', 'type_id', '广告位', '', '1', '0', '0', 'select2', '2', 'AdType', 'name', '', '1', '1', '1', '1', '0', '=', '1', '2', '所属广告位', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('110', '10', 'name', '广告名称', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('111', '10', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '4', '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('112', '10', 'thumb', '缩略图', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('113', '10', 'url', '链接地址', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '6', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('114', '10', 'description', '备注', '', '0', '0', '250', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('115', '11', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('116', '11', 'create_time', '创建时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('117', '11', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('118', '11', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('119', '11', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('120', '11', 'title', '碎片标题', '通常为中文，如：关于我们', '1', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '2', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('121', '11', 'name', '调用名称', '通常为英文，如：AboutUs', '1', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '调用名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('122', '11', 'content', '碎片内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '碎片内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('123', '11', 'url', '链接地址', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '5', '链接地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('124', '11', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '6', '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('125', '11', 'description', '描述', '', '0', '0', '255', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('133', '3', 'top_button', '顶部按钮', '列表页面顶部按钮组中的按钮', '0', '0', '255', 'checkbox', '1', '', '', '6', '1', '1', '0', '0', '0', '=', '1', '12', '列表页面顶部按钮组中的按钮', 'array (\n  \'default\' => \'add,edit,del,export\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('134', '3', 'right_button', '右侧按钮', '列表页面右侧按钮组中的按钮', '0', '0', '255', 'checkbox', '1', '', '', '7', '1', '1', '0', '0', '0', '=', '1', '13', '列表页面右侧按钮组中的按钮', 'array (\n  \'default\' => \'edit,delete\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('135', '13', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '1');
INSERT INTO `tp_field` VALUES ('136', '13', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('137', '13', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('138', '13', 'name', '网站名称', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '2', '网站名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('139', '13', 'logo', '网站LOGO', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '3', '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1');
INSERT INTO `tp_field` VALUES ('140', '13', 'icp', '备案号', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '4', '备案号', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('141', '13', 'copyright', '版权信息', '', '0', '0', '255', 'textarea', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1');
INSERT INTO `tp_field` VALUES ('142', '13', 'url', '网站地址', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '6', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('143', '13', 'address', '公司地址', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('144', '13', 'contacts', '联系人', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '8', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('145', '13', 'tel', '联系电话', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '9', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('146', '13', 'mobile_phone', '手机号码', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '10', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('147', '13', 'fax', '传真号码', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '11', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('148', '13', 'email', '邮箱账号', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '12', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('149', '13', 'qq', 'QQ', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '13', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '1');
INSERT INTO `tp_field` VALUES ('150', '13', 'qrcode', '二维码', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '14', '', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '1');
INSERT INTO `tp_field` VALUES ('151', '13', 'title', 'SEO标题', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', 'LIKE', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '2');
INSERT INTO `tp_field` VALUES ('152', '13', 'key', 'SEO关键字', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '16', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '2');
INSERT INTO `tp_field` VALUES ('153', '13', 'des', 'SEO描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '17', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '2');
INSERT INTO `tp_field` VALUES ('154', '13', 'mobile', '手机端', '开启后自动跳转到mobile，自适应网站或无手机端网站请关闭', '0', '0', '0', 'radio', '1', '', '', '8', '1', '1', '1', '0', '0', '=', '1', '18', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `tp_field` VALUES ('156', '13', 'code', '后台验证码', '后台登录时是否需要验证码', '0', '0', '0', 'radio', '1', '', '', '8', '1', '1', '1', '0', '0', '=', '1', '19', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `tp_field` VALUES ('157', '13', 'message_code', '前台验证码', '前台留言等是否需要验证码', '0', '0', '0', 'radio', '1', '', '', '8', '1', '1', '1', '0', '0', '=', '1', '20', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `tp_field` VALUES ('158', '13', 'message_send_mail', '留言邮件提醒', '前台留言时是否需要邮件提醒，如开启请先进行邮箱配置', '0', '0', '0', 'radio', '1', '', '', '8', '1', '1', '1', '0', '0', '=', '1', '21', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `tp_field` VALUES ('159', '13', 'template_opening', '模板修改备份', '开启后后台模板管理中修改文件时会进行自动备份', '0', '0', '0', 'radio', '1', '', '', '8', '1', '1', '1', '0', '0', '=', '1', '22', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '3');
INSERT INTO `tp_field` VALUES ('160', '13', 'template', '模板目录', '模版所在的目录名称，默认为 default', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '23', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '4');
INSERT INTO `tp_field` VALUES ('161', '13', 'html', 'Html目录', 'Html所在的目录名称，默认为 html', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '24', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '4');
INSERT INTO `tp_field` VALUES ('162', '13', 'other', '其他', '其他信息', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '25', '备用字段', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '5');
INSERT INTO `tp_field` VALUES ('163', '14', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('164', '14', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('165', '14', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('166', '14', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('167', '14', 'title', '角色组', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', 'LIKE', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('168', '14', 'rules', '权限', '', '0', '0', '0', 'textarea', '0', '', '', '', '0', '0', '0', '0', '0', '=', '1', '3', '权限', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('169', '15', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('170', '15', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('171', '15', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('172', '15', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('173', '15', 'username', '用户名', '用户名在4到25个字符之间', '1', '4', '25', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '2', '用户名', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('174', '15', 'password', '密码', '密码在5到25个字符之间', '1', '5', '25', 'password', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '3', '密码', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('175', '15', 'login_time', '登录时间', '', '0', '0', '0', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '4', '最后登录时间', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '0');
INSERT INTO `tp_field` VALUES ('176', '15', 'login_ip', '登录IP', '', '0', '0', '0', 'text', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '5', '最后登录IP', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('177', '15', 'nickname', '昵称', '昵称在4到25个字符之间', '1', '4', '25', 'text', '0', '', '', '', '1', '1', '1', '0', '0', 'LIKE', '1', '6', '昵称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('178', '15', 'image', '头像', '', '1', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '6', '头像', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('179', '16', 'status', '菜单状态', '是否需要显示在左侧菜单', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '0', '0', '=', '1', '48', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('180', '16', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('181', '16', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('182', '16', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('183', '16', 'pid', '父ID', '', '0', '0', '0', 'select2', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '2', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('184', '16', 'name', '控制器/方法', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '4', '控制器/方法', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '');
INSERT INTO `tp_field` VALUES ('185', '16', 'title', '权限名称', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', 'LIKE', '1', '5', '权限名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('186', '16', 'auth_open', '验证权限', '', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('187', '16', 'icon', '图标名称', '如：fa fa-cogs', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('188', '16', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('189', '17', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('190', '17', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('191', '17', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('192', '17', 'admin_id', '管理员', '', '0', '0', '8', 'select', '2', 'Admin', 'username', '', '1', '0', '1', '1', '0', 'LIKE', '1', '2', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('193', '17', 'url', '操作页面	', '', '0', '0', '0', 'text', '0', '', '', '', '1', '0', '1', '1', '0', 'LIKE', '1', '3', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '');
INSERT INTO `tp_field` VALUES ('194', '17', 'title', '日志标题', '', '0', '0', '100', 'text', '0', '', '', '', '1', '0', '1', '1', '0', 'LIKE', '1', '4', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('195', '17', 'content', '日志内容', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '0', '0', '0', '0', '=', '1', '5', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('196', '17', 'ip', '操作IP', '', '0', '0', '20', 'text', '0', '', '', '', '1', '0', '1', '0', '0', '=', '1', '6', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('197', '17', 'user_agent', 'User-Agent', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '0', '1', '0', '0', '=', '1', '7', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('198', '3', 'is_single', '单页模式', '选择是后列表页会自动跳转到添加或修改页面', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '1', '1', '0', '=', '1', '14', '选择是后列表页会自动跳转到添加或修改页面', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('199', '3', 'show_all', '查看全部', '添加/修改页面头部是否显示`查看全部`按钮', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '0', '0', '0', '=', '1', '15', '添加/修改页面头部是否显示`查看全部`按钮', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('200', '19', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('201', '19', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('202', '19', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('203', '19', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('204', '19', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('205', '18', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('206', '18', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('207', '18', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('208', '18', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('209', '18', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('210', '20', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '0', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '6');
INSERT INTO `tp_field` VALUES ('211', '20', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '6');
INSERT INTO `tp_field` VALUES ('212', '20', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '6');
INSERT INTO `tp_field` VALUES ('213', '20', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '49', '', 'array (\n  \'default\' => \'50\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '6');
INSERT INTO `tp_field` VALUES ('214', '20', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '0', '0', '=', '1', '48', '', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '6');
INSERT INTO `tp_field` VALUES ('215', '20', 'cate_name', '栏目名称', '', '1', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '3', '栏目名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '6');
INSERT INTO `tp_field` VALUES ('216', '20', 'en_name', '英文名称', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '4', '英文名称', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '6');
INSERT INTO `tp_field` VALUES ('217', '20', 'cate_folder', '栏目目录', '请填写不含空格的英文和数字，用于URL美化，如：AboutUs', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '5', '栏目目录', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '6');
INSERT INTO `tp_field` VALUES ('218', '20', 'parent_id', '上级栏目', '', '0', '0', '0', 'select', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '2', '上级栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '6');
INSERT INTO `tp_field` VALUES ('219', '20', 'module_id', '所属模块', '', '1', '0', '0', 'select', '2', 'Module', 'module_name', '', '1', '1', '1', '0', '0', '=', '1', '1', '所属模块', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '6');
INSERT INTO `tp_field` VALUES ('220', '20', 'url', '外部链接', '如需跳转，请填写完整的网站地址，为空则不跳转', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '外部链接', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '8');
INSERT INTO `tp_field` VALUES ('221', '20', 'image', '栏目图片', '', '0', '0', '255', 'image', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '栏目图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '6');
INSERT INTO `tp_field` VALUES ('222', '20', 'ico_image', 'ICO图片', '', '0', '0', '255', 'image', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '8', 'ICO图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '6');
INSERT INTO `tp_field` VALUES ('223', '20', 'title', 'SEO标题', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '0', '0', '0', 'LIKE', '1', '9', 'SEO标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '7');
INSERT INTO `tp_field` VALUES ('224', '20', 'keywords', 'SEO关键字', '', '0', '0', '255', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '10', 'SEO关键字', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '7');
INSERT INTO `tp_field` VALUES ('225', '20', 'description', 'SEO描述', '', '0', '0', '255', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', 'SEO描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '7');
INSERT INTO `tp_field` VALUES ('226', '20', 'summary', '简介', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '12', '栏目简介', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '6');
INSERT INTO `tp_field` VALUES ('227', '20', 'template_list', '列表模板', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '13', '列表模板', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '8');
INSERT INTO `tp_field` VALUES ('228', '20', 'template_show', '详情模版', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '14', '详情模版', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '8');
INSERT INTO `tp_field` VALUES ('229', '20', 'page_size', '分页条数', '分页显示的数量，为空时默认值为系统设置中的值', '0', '0', '5', 'number', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '15', '分页条数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'char\',\n)', '8');
INSERT INTO `tp_field` VALUES ('230', '20', 'is_menu', '导航状态', '', '0', '0', '0', 'radio', '1', '', '', '1', '1', '1', '1', '0', '0', '=', '1', '16', '导航状态', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '6');
INSERT INTO `tp_field` VALUES ('231', '20', 'is_next', '跳转下级', '是否直接跳转到下级第一个栏目', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '1', '0', '0', '=', '1', '17', '跳转下级', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '8');
INSERT INTO `tp_field` VALUES ('232', '20', 'is_blank', '新窗口打开', '', '0', '0', '0', 'radio', '1', '', '', '2', '1', '1', '0', '0', '0', '=', '1', '18', '新窗口打开', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '8');
INSERT INTO `tp_field` VALUES ('233', '18', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('234', '18', 'title', '标题', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '0', '0', 'LIKE', '1', '3', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('235', '18', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('236', '19', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('237', '19', 'title', '标题', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('238', '19', 'author', '作者', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('239', '19', 'source', '来源', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('240', '19', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('241', '19', 'summary', '摘要', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('242', '19', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '8', '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('243', '19', 'images', '图片集', '', '0', '0', '0', 'images', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '9', '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('244', '19', 'download', '文件下载', '', '0', '0', '0', 'file', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '10', '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('245', '19', 'tags', 'TAG', '', '0', '0', '0', 'tag', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('246', '19', 'hits', '点击次数', '', '0', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '12', '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('247', '19', 'keywords', '关键词', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '13', '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('248', '19', 'description', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '14', '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('250', '3', 'add_param', '添加参数', '列表页面顶部按钮组中添加按钮的参数，如 cate_id,多个用`,`分割', '0', '0', '100', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '17', '列表页面顶部按钮组中添加按钮的参数，如 cate_id,多个用`,`分割', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('249', '19', 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', '0', '0', '30', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('251', '21', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('252', '21', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('253', '21', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('254', '21', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('255', '21', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('256', '21', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('257', '21', 'title', '标题', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('258', '21', 'author', '作者', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('259', '21', 'source', '来源', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('260', '21', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('261', '21', 'summary', '摘要', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('262', '21', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '8', '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('263', '21', 'images', '图片集', '', '0', '0', '0', 'images', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '9', '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('264', '21', 'download', '文件下载', '', '0', '0', '0', 'file', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '10', '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('265', '21', 'tags', 'TAG', '', '0', '0', '0', 'tag', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('266', '21', 'hits', '点击次数', '', '0', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '12', '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('267', '21', 'keywords', '关键词', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '13', '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('268', '21', 'description', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '14', '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('269', '21', 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', '0', '0', '30', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('270', '22', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('271', '22', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('272', '22', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('273', '22', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('274', '22', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('275', '22', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('276', '22', 'title', '标题', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('277', '22', 'author', '作者', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('278', '22', 'source', '来源', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('279', '22', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('280', '22', 'summary', '摘要', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('281', '22', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '8', '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('282', '22', 'images', '图片集', '', '0', '0', '0', 'images', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '9', '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('283', '22', 'download', '文件下载', '', '0', '0', '0', 'file', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '10', '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('284', '22', 'tags', 'TAG', '', '0', '0', '0', 'tag', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('285', '22', 'hits', '点击次数', '', '0', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '12', '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('286', '22', 'keywords', '关键词', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '13', '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('287', '22', 'description', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '14', '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('288', '22', 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', '0', '0', '30', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('289', '23', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('290', '23', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('291', '23', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('292', '23', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('293', '23', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('294', '23', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('295', '23', 'title', '标题', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('296', '23', 'author', '作者', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('297', '23', 'source', '来源', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('298', '23', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('299', '23', 'summary', '摘要', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('300', '23', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '8', '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('301', '23', 'images', '图片集', '', '0', '0', '0', 'images', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '9', '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('302', '23', 'download', '文件下载', '', '0', '0', '0', 'file', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '10', '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('303', '23', 'tags', 'TAG', '', '0', '0', '0', 'tag', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('304', '23', 'hits', '点击次数', '', '0', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '12', '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('305', '23', 'keywords', '关键词', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '13', '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('306', '23', 'description', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '14', '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('307', '23', 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', '0', '0', '30', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('308', '24', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('309', '24', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('310', '24', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\n  \'default\' => \'0\',\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('311', '24', 'sort', '排序', '', '1', '0', '8', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '49', '', 'array (\'default\' => \'50\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'step\' => \'1\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('312', '24', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('313', '24', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '');
INSERT INTO `tp_field` VALUES ('314', '24', 'title', '标题', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '标题', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('315', '24', 'author', '作者', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '4', '作者', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('316', '24', 'source', '来源', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '5', '来源', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('317', '24', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '内容', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'height\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('318', '24', 'summary', '摘要', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '7', '摘要', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '0');
INSERT INTO `tp_field` VALUES ('319', '24', 'image', '图片', '', '0', '0', '0', 'image', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '8', '图片', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '');
INSERT INTO `tp_field` VALUES ('320', '24', 'images', '图片集', '', '0', '0', '0', 'images', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '9', '图片集', 'array (\n  \'ext\' => \'jpg|jpeg|gif|png\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'text\',\n)', '');
INSERT INTO `tp_field` VALUES ('321', '24', 'download', '文件下载', '', '0', '0', '0', 'file', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '10', '文件下载', 'array (\n  \'ext\' => \'rar|zip|avi|rmvb|3gp|flv|mp3|txt|doc|xls|ppt|pdf|xls|docx|xlsx|doc\',\n  \'size\' => \'10240\',\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('322', '24', 'tags', 'TAG', '', '0', '0', '0', 'tag', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '11', 'TAG', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('323', '24', 'hits', '点击次数', '', '0', '0', '0', 'number', '0', '', '', '', '1', '1', '1', '0', '1', '=', '1', '12', '点击次数', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'step\' => \'1\',\n  \'fieldtype\' => \'int\',\n)', '');
INSERT INTO `tp_field` VALUES ('324', '24', 'keywords', '关键词', '', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '13', '关键词', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('325', '24', 'description', '描述', '', '0', '0', '0', 'textarea', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '14', '描述', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n)', '0');
INSERT INTO `tp_field` VALUES ('326', '24', 'template', '模板', '单独设置此条记录的模板，如：article_show.html 或 article_show', '0', '0', '30', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '15', '', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('327', '25', 'content', '内容', '', '0', '0', '0', 'editor', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '内容', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'height\' => \'\',\r\n  \'fieldtype\' => \'text\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('328', '25', 'title', '标题', '', '1', '0', '0', 'text', '0', '', '', '', '1', '1', '1', '1', '0', 'LIKE', '1', '3', '标题', 'array (\r\n  \'default\' => \'\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'varchar\',\r\n  \'group\' => \'\',\r\n)', '0');
INSERT INTO `tp_field` VALUES ('329', '25', 'cate_id', '栏目', '', '1', '0', '0', 'select', '2', 'Cate', 'cate_name', '', '1', '1', '1', '1', '0', '=', '1', '2', '栏目', 'array (\r\n  \'default\' => \'0\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'fieldtype\' => \'tinyint\',\r\n)', '');
INSERT INTO `tp_field` VALUES ('330', '25', 'status', '状态', '', '1', '0', '1', 'radio', '1', '', '', '1', '1', '1', '1', '1', '0', '=', '1', '48', '', 'array (\'default\' => \'1\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'fieldtype\' => \'tinyint\',)', '0');
INSERT INTO `tp_field` VALUES ('331', '25', 'update_time', '更新时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\r\n  \'default\' => \'0\',\r\n  \'format\' => \'yyyy-mm-dd hh:ii:ss\',\r\n  \'extra_attr\' => \'\',\r\n  \'extra_class\' => \'\',\r\n  \'placeholder\' => \'\',\r\n  \'fieldtype\' => \'int\',\r\n)', '');
INSERT INTO `tp_field` VALUES ('332', '25', 'create_time', '添加时间', '', '0', '0', '11', 'datetime', '0', '', '', '', '0', '0', '1', '0', '0', '=', '1', '50', '自增ID', 'array (\'default\' => \'0\', \'format\' => \'yyyy-mm-dd hh:ii:ss\', \'extra_attr\' => \'\', \'extra_class\' => \'\', \'placeholder\' => \'\', \'fieldtype\' => \'int\',)', '0');
INSERT INTO `tp_field` VALUES ('333', '25', 'id', '编号', '', '0', '0', '0', 'hidden', '0', '', '', '', '0', '0', '1', '0', '0', '', '1', '1', '自增ID', 'array (\'default\' => \'0\',\'extra_attr\' => \'\',\'extra_class\' => \'\',\'step\' => \'1\',\'fieldtype\' => \'int\',\'group\' => \'\')', '0');
INSERT INTO `tp_field` VALUES ('334', '25', 'name', '姓名', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '1', '0', '=', '1', '4', '姓名', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('335', '25', 'phone', '电话', '', '0', '0', '255', 'text', '0', '', '', '', '1', '1', '1', '0', '0', '=', '1', '5', '电话', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('336', '16', 'param', '参数', 'URL地址后的参数，如 type=button&name=my', '0', '0', '50', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '6', '参数', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '');
INSERT INTO `tp_field` VALUES ('337', '19', 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '16', '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('338', '21', 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '16', '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('339', '22', 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '16', '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('340', '23', 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '16', '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('341', '24', 'url', '跳转地址', '如需直接跳转，请填写完整的网站地址或相对地址', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '16', '跳转地址', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '0');
INSERT INTO `tp_field` VALUES ('342', '24', 'area', '区域', '', '0', '0', '4', 'radio', '1', '', '', '10', '1', '1', '1', '0', '0', '=', '1', '17', '区域', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('343', '24', 'sex', '性别', '', '0', '0', '4', 'select', '1', '', '', '4', '1', '1', '1', '0', '0', '=', '1', '18', '', 'array (\n  \'default\' => \'0\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '0');
INSERT INTO `tp_field` VALUES ('344', '13', 'upload_driver', '上传驱动', '文件/图片上传的驱动', '1', '0', '0', 'radio', '1', '', '', '11', '1', '1', '0', '0', '0', '=', '1', '26', '上传驱动', 'array (\n  \'default\' => \'1\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'fieldtype\' => \'tinyint\',\n)', '9');
INSERT INTO `tp_field` VALUES ('345', '13', 'upload_file_size', '文件限制', '单位：KB，0表示不限制上传大小', '0', '0', '50', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '27', '文件限制', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `tp_field` VALUES ('346', '13', 'upload_file_ext', '文件格式', '多个格式请用英文逗号（,）隔开', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '28', '文件格式', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `tp_field` VALUES ('347', '13', 'upload_image_size', '图片限制', '单位：KB，0表示不限制上传大小', '0', '0', '50', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '29', '图片限制', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');
INSERT INTO `tp_field` VALUES ('348', '13', 'upload_image_ext', '图片格式', '多个格式请用英文逗号（,）隔开', '0', '0', '0', 'text', '0', '', '', '', '1', '1', '0', '0', '0', '=', '1', '30', '图片格式', 'array (\n  \'default\' => \'\',\n  \'extra_attr\' => \'\',\n  \'extra_class\' => \'\',\n  \'placeholder\' => \'\',\n  \'fieldtype\' => \'varchar\',\n  \'group\' => \'\',\n)', '9');

-- ----------------------------
-- Table structure for tp_field_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_field_group`;
CREATE TABLE `tp_field_group` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `module_id` text NOT NULL COMMENT '所属模块',
  `group_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分组名称',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(5) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字段分组';

-- ----------------------------
-- Records of tp_field_group
-- ----------------------------
INSERT INTO `tp_field_group` VALUES ('1', '1580561499', '1580561499', '13', '基础设置', '1', '1');
INSERT INTO `tp_field_group` VALUES ('2', '1580561539', '1580561539', '13', 'SEO设置', '1', '2');
INSERT INTO `tp_field_group` VALUES ('3', '1580561551', '1580561551', '13', '开关设置', '1', '3');
INSERT INTO `tp_field_group` VALUES ('4', '1580561568', '1580561568', '13', '模板设置', '1', '4');
INSERT INTO `tp_field_group` VALUES ('5', '1580561585', '1580561585', '13', '其他设置', '1', '6');
INSERT INTO `tp_field_group` VALUES ('6', '1580896600', '1580896600', '20', '基础设置', '1', '1');
INSERT INTO `tp_field_group` VALUES ('7', '1580896624', '1580896624', '20', 'SEO设置', '1', '2');
INSERT INTO `tp_field_group` VALUES ('8', '1580896925', '1580896925', '20', '其他', '1', '3');
INSERT INTO `tp_field_group` VALUES ('9', '1586855728', '1586855814', '13', '上传设置', '1', '5');

-- ----------------------------
-- Table structure for tp_link
-- ----------------------------
DROP TABLE IF EXISTS `tp_link`;
CREATE TABLE `tp_link` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '网站地址',
  `logo` varchar(80) NOT NULL DEFAULT '' COMMENT '网站logo',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `sort` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of tp_link
-- ----------------------------
INSERT INTO `tp_link` VALUES ('1', '1580360741', '1580360741', 'SIYUCMS', 'http://www.siyucms.com', '', '', '1', '1');

-- ----------------------------
-- Table structure for tp_message
-- ----------------------------
DROP TABLE IF EXISTS `tp_message`;
CREATE TABLE `tp_message` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言模块';

-- ----------------------------
-- Records of tp_message
-- ----------------------------

-- ----------------------------
-- Table structure for tp_module
-- ----------------------------
DROP TABLE IF EXISTS `tp_module`;
CREATE TABLE `tp_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `module_name` varchar(100) NOT NULL DEFAULT '' COMMENT '模块名称',
  `table_name` varchar(50) NOT NULL DEFAULT '' COMMENT '表名称',
  `model_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模型名称',
  `table_comment` varchar(200) NOT NULL DEFAULT '' COMMENT '表描述',
  `table_type` varchar(10) NOT NULL DEFAULT '' COMMENT '表类型',
  `pk` varchar(50) NOT NULL DEFAULT 'id' COMMENT '主键',
  `list_fields` varchar(255) NOT NULL DEFAULT '' COMMENT '前台列表页可调用字段,默认为*,仅用作前台CMS调用时使用',
  `remark` text NOT NULL COMMENT '备注',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_sort` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '排序字段',
  `is_status` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态字段',
  `top_button` varchar(255) NOT NULL DEFAULT 'add,edit,del,export' COMMENT '顶部按钮',
  `right_button` varchar(255) NOT NULL DEFAULT 'edit,delete' COMMENT '右侧按钮',
  `is_single` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '单页模式',
  `show_all` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看全部',
  `add_param` varchar(100) NOT NULL DEFAULT '' COMMENT '添加参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='模型表';

-- ----------------------------
-- Records of tp_module
-- ----------------------------
INSERT INTO `tp_module` VALUES ('1', '会员管理', 'users', 'Users', '会员管理', '2', 'id', '*', '前台会员列表，需要关联会员类型表', '1', '1572852406', '1572852406', '0', '0', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('2', '字段管理', 'field', 'Field', '字段管理', '2', 'id', '*', '字段管理', '3', '1572852406', '1580359578', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('3', '模块管理', 'module', 'Module', '模块管理', '2', 'id', '*', '模块管理', '4', '1572852406', '1580359586', '1', '0', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('4', '字典类型', 'dictionary_type', 'DictionaryType', '字典类型', '2', 'id', '*', '字典类型', '5', '1572852406', '1580359592', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('5', '字典数据', 'dictionary', 'Dictionary', '字典数据', '2', 'id', '*', '字典数据', '6', '1572852406', '1580359596', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('6', '会员分组', 'users_type', 'UsersType', '会员分组', '2', 'id', '*', '会员分组', '2', '1579499169', '1580359573', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('7', '字段分组', 'field_group', 'FieldGroup', '字段分组', '2', 'id', '*', '字段分组', '7', '1580358477', '1580359113', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('8', '友情链接', 'link', 'Link', '友情链接', '2', 'id', '*', '友情链接', '8', '1580360170', '1580360176', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('9', '广告分组', 'ad_type', 'AdType', '广告分组', '2', 'id', '*', '广告分组', '9', '1580371813', '1580371820', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('10', '广告管理', 'ad', 'Ad', '广告管理', '2', 'id', '*', '广告管理', '10', '1580377198', '1580377198', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('11', '碎片管理', 'debris', 'Debris', '碎片管理', '2', 'id', '*', '碎片管理', '11', '1580387498', '1580387503', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('13', '系统设置', 'system', 'System', '系统设置', '2', 'id', '*', '系统设置', '13', '1580558207', '1580558207', '0', '0', 'add,edit,del,export', 'edit,delete', '1', '0', '');
INSERT INTO `tp_module` VALUES ('14', '角色组管理', 'auth_group', 'AuthGroup', '角色组管理', '2', 'id', '*', '角色组管理', '14', '1580633766', '1580633772', '0', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('15', '管理员管理', 'admin', 'Admin', '管理员列表', '2', 'id', '*', '管理员列表', '15', '1580692727', '1580702316', '0', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('16', '菜单规则', 'auth_rule', 'AuthRule', '菜单规则', '2', 'id', '*', '', '16', '1580702184', '1580702320', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('17', '管理员日志', 'admin_log', 'AdminLog', '管理员日志', '2', 'id', '*', '管理员日志', '16', '1580722266', '1580722266', '0', '0', 'edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('18', '单页模块', 'page', 'Page', '单页模块', '1', 'id', '*', '单页模块', '51', '1580892306', '1580892306', '1', '1', 'add,edit,del,export', 'edit,delete', '1', '1', '');
INSERT INTO `tp_module` VALUES ('19', '文章模块', 'article', 'Article', '文章模块', '1', 'id', '*', '文章模块', '52', '1580892395', '1585894205', '1', '1', 'add,edit,del,export', 'preview,edit,delete', '0', '1', 'cate_id');
INSERT INTO `tp_module` VALUES ('20', '栏目管理', 'cate', 'Cate', '栏目管理', '2', 'id', '*', '栏目管理', '50', '1580892776', '1580892776', '1', '1', 'add,edit,del,export', 'edit,delete', '0', '1', '');
INSERT INTO `tp_module` VALUES ('21', '图片模块', 'picture', 'Picture', '图片模块', '1', 'id', '*', '图片模块', '53', '1580899028', '1585894194', '1', '1', 'add,edit,del,export', 'preview,edit,delete', '0', '1', 'cate_id');
INSERT INTO `tp_module` VALUES ('22', '产品模块', 'product', 'Product', '产品模块', '1', 'id', '*', '产品模块', '54', '1580899060', '1585894186', '1', '1', 'add,edit,del,export', 'preview,edit,delete', '0', '1', 'cate_id');
INSERT INTO `tp_module` VALUES ('23', '下载模块', 'download', 'Download', '下载模块', '1', 'id', '*', '下载模块', '55', '1580899102', '1585894179', '1', '1', 'add,edit,del,export', 'preview,edit,delete', '0', '1', 'cate_id');
INSERT INTO `tp_module` VALUES ('24', '团队模块', 'team', 'Team', '团队模块', '1', 'id', '*', '团队模块', '56', '1580899132', '1585894171', '1', '1', 'add,edit,del,export', 'preview,edit,delete', '0', '1', 'cate_id');
INSERT INTO `tp_module` VALUES ('25', '留言模块', 'message', 'Message', '留言模块', '1', 'id', '*', '留言模块', '57', '1580899172', '1580899172', '0', '1', 'add,edit,del,export', 'edit,delete', '0', '1', 'cate_id');

-- ----------------------------
-- Table structure for tp_page
-- ----------------------------
DROP TABLE IF EXISTS `tp_page`;
CREATE TABLE `tp_page` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章模块';

-- ----------------------------
-- Records of tp_page
-- ----------------------------

-- ----------------------------
-- Table structure for tp_picture
-- ----------------------------
DROP TABLE IF EXISTS `tp_picture`;
CREATE TABLE `tp_picture` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `content` text NOT NULL COMMENT '内容',
  `summary` text NOT NULL COMMENT '摘要',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `images` text COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片模块';

-- ----------------------------
-- Records of tp_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tp_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `content` text NOT NULL COMMENT '内容',
  `summary` text NOT NULL COMMENT '摘要',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `images` text COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品模块';

-- ----------------------------
-- Records of tp_product
-- ----------------------------

-- ----------------------------
-- Table structure for tp_system
-- ----------------------------
DROP TABLE IF EXISTS `tp_system`;
CREATE TABLE `tp_system` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '网站名称',
  `logo` varchar(80) NOT NULL DEFAULT '' COMMENT '网站LOGO',
  `icp` varchar(255) NOT NULL DEFAULT '' COMMENT '备案号',
  `copyright` varchar(255) NOT NULL DEFAULT '' COMMENT '版权信息',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '网站地址',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '公司地址',
  `contacts` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `tel` varchar(255) NOT NULL DEFAULT '' COMMENT '联系电话',
  `mobile_phone` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `fax` varchar(255) NOT NULL DEFAULT '' COMMENT '传真号码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱账号',
  `qq` varchar(255) NOT NULL DEFAULT '' COMMENT 'QQ',
  `qrcode` varchar(80) NOT NULL DEFAULT '' COMMENT '二维码',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `des` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `mobile` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '手机端',
  `code` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '后台验证码',
  `message_code` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '前台验证码',
  `message_send_mail` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '留言邮件提醒',
  `template_opening` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '模板修改备份',
  `template` varchar(255) NOT NULL DEFAULT '' COMMENT '模板目录',
  `html` varchar(255) NOT NULL DEFAULT '' COMMENT 'Html目录',
  `other` varchar(255) NOT NULL DEFAULT '' COMMENT '其他',
  `upload_driver` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '上传驱动',
  `upload_file_size` varchar(50) NOT NULL DEFAULT '' COMMENT '文件限制',
  `upload_file_ext` varchar(255) NOT NULL DEFAULT '' COMMENT '文件格式',
  `upload_image_size` varchar(50) NOT NULL DEFAULT '' COMMENT '图片限制',
  `upload_image_ext` varchar(255) NOT NULL DEFAULT '' COMMENT '图片格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统设置';

-- ----------------------------
-- Records of tp_system
-- ----------------------------
INSERT INTO `tp_system` VALUES ('1', '1580560560', '1587521952', '重庆安隐科技', '/uploads/20200421/11c4991f0d89bfc3de8bb39d5fed07a3.png', '辽ICP备12345678号-1', 'Copyright © SIYUCMS 2019.All right reserved.Powered by SIYUCMS', 'anyin.com.cn', '辽宁省沈阳市铁西区重工街XX路XX号1-1-1', 'X先生', '010-8888 7777', '158 4018 8888', '010-8888 9999', '407593529@qq.com', '407593529', '/uploads/20181226/cb7a4c21d6443bc5e7a8d16ac2cbe242.png', '重庆安隐科技有限公司', '', '', '0', '1', '0', '0', '1', 'default', 'html', '', '1', '0', 'rar,zip,avi,rmvb,3gp,flv,mp3,mp4,txt,doc,xls,ppt,pdf,xls,docx,xlsx,doc', '0', 'jpg,png,gif,jpeg,ico');

-- ----------------------------
-- Table structure for tp_system_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_system_group`;
CREATE TABLE `tp_system_group` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分组名称',
  `description` text COMMENT '备注',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` int(1) DEFAULT '0' COMMENT '状态（1 正常，0 锁定）',
  `create_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统设置分组表';

-- ----------------------------
-- Records of tp_system_group
-- ----------------------------
INSERT INTO `tp_system_group` VALUES ('1', '基础设置', '基础设置', '1', '1', '1557903491', '1557903491');
INSERT INTO `tp_system_group` VALUES ('2', 'SEO设置', 'SEO设置', '2', '1', '1557903521', '1557903521');
INSERT INTO `tp_system_group` VALUES ('3', '开关设置', '开关设置', '3', '1', '1557903537', '1557903537');
INSERT INTO `tp_system_group` VALUES ('4', '模板设置', '模板设置', '4', '1', '1557903562', '1557903567');
INSERT INTO `tp_system_group` VALUES ('5', '自定义', '自定义系统设置信息', '5', '1', '1557905966', '1557906261');

-- ----------------------------
-- Table structure for tp_team
-- ----------------------------
DROP TABLE IF EXISTS `tp_team`;
CREATE TABLE `tp_team` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` mediumint(8) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `cate_id` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `author` varchar(255) NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `content` text NOT NULL COMMENT '内容',
  `summary` text NOT NULL COMMENT '摘要',
  `image` varchar(80) NOT NULL DEFAULT '' COMMENT '图片',
  `images` text COMMENT '图片集',
  `download` varchar(80) NOT NULL DEFAULT '' COMMENT '文件下载',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'TAG',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `area` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '区域',
  `sex` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团队模块';

-- ----------------------------
-- Records of tp_team
-- ----------------------------

-- ----------------------------
-- Table structure for tp_users
-- ----------------------------
DROP TABLE IF EXISTS `tp_users`;
CREATE TABLE `tp_users` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 保密, 1 男, 2 女',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `mobile_validated` tinyint(3) DEFAULT '0' COMMENT '是否验证手机 1 验证 0 未验证',
  `email_validated` tinyint(3) DEFAULT '0' COMMENT '是否验证手机 1 验证 0 未验证',
  `type_id` tinyint(3) DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `create_ip` varchar(15) DEFAULT NULL COMMENT '注册IP',
  `update_time` int(10) DEFAULT '0' COMMENT '修改时间',
  `create_time` int(10) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of tp_users
-- ----------------------------
INSERT INTO `tp_users` VALUES ('1', 'test001@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '2', '1583746801', '127.0.0.1', '222222', '111111', '0', '0', '1', '1', '127.0.0.1', '1583747367', '1541405155');
INSERT INTO `tp_users` VALUES ('2', 'test002@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1541405185', '127.0.0.1', '407593529', '15840189627', '0', '0', '2', '1', '127.0.0.1', '1541405155', '1541405185');
INSERT INTO `tp_users` VALUES ('3', 'test003@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060654', '127.0.0.1', '', '', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546060654');
INSERT INTO `tp_users` VALUES ('4', 'test004@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060666', '127.0.0.1', '', '', '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546060666');
INSERT INTO `tp_users` VALUES ('5', 'test005@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1546060680', '127.0.0.1', '', '15840189625', '0', '0', '1', '1', '127.0.0.1', '1579591129', '1546060680');
INSERT INTO `tp_users` VALUES ('6', 'test007@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1546061841', '127.0.0.1', null, null, '0', '0', '1', '1', '127.0.0.1', '1541405155', '1546061841');
INSERT INTO `tp_users` VALUES ('7', 'test008@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '0', '1546062123', '127.0.0.1', '123', '', '1', '0', '1', '1', '127.0.0.1', '1551844614', '1546061953');
INSERT INTO `tp_users` VALUES ('13', 'test009@qq.com', '96e79218965eb72c92a549dd5a330112', '0', '1583747029', '127.0.0.1', null, null, '0', '0', '1', '1', '127.0.0.1', '0', '1583747029');

-- ----------------------------
-- Table structure for tp_users_type
-- ----------------------------
DROP TABLE IF EXISTS `tp_users_type`;
CREATE TABLE `tp_users_type` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '分组名称',
  `remark` text NOT NULL COMMENT '描述',
  `sort` int(5) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户组';

-- ----------------------------
-- Records of tp_users_type
-- ----------------------------
INSERT INTO `tp_users_type` VALUES ('1', '1541405155', '1541405155', '普通会员', '普通会员', '1', '1');
INSERT INTO `tp_users_type` VALUES ('2', '1541405155', '1541405155', 'VIP会员', 'VIP会员', '2', '1');
