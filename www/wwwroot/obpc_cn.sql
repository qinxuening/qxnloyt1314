/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : obpc_cn

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-06-13 14:21:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oubao_account
-- ----------------------------
DROP TABLE IF EXISTS `oubao_account`;
CREATE TABLE `oubao_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `orderid` char(30) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `custom` varchar(200) NOT NULL,
  `payment` char(50) NOT NULL,
  `paymenttype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `paymentno` char(100) NOT NULL,
  `molds` char(30) NOT NULL,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `auser` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_account
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `oubao_admin_group`;
CREATE TABLE `oubao_admin_group` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `oneself` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paction` text NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_admin_group
-- ----------------------------
INSERT INTO `oubao_admin_group` VALUES ('1', '录入员', '0', '0', ',a_html,a_article_add,a_article_edit,a_product,a_product_add,a_product_edit,a_product_del,a_product_audit,a_message,a_message_edit,a_message_del,a_message_audit,a_article_index,a_classtypes_index,a_fields_info,a_adminuser_edituser,uploads,a_label,a_sys_ecache,a_product_index,a_goods_attribute_ajax,a_channel,channel_person_index,');

-- ----------------------------
-- Table structure for oubao_admin_per
-- ----------------------------
DROP TABLE IF EXISTS `oubao_admin_per`;
CREATE TABLE `oubao_admin_per` (
  `pid` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `action` char(50) NOT NULL,
  `name` char(20) NOT NULL,
  `up` tinyint(5) NOT NULL DEFAULT '0',
  `no` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  `molds` char(30) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_admin_per
-- ----------------------------
INSERT INTO `oubao_admin_per` VALUES ('1', 'a_article', '管理', '0', '0', '20', 'article');
INSERT INTO `oubao_admin_per` VALUES ('2', 'a_classtypes', '栏目管理', '0', '0', '96', '');
INSERT INTO `oubao_admin_per` VALUES ('3', 'a_fields', '自定义字段管理', '37', '0', '29', '');
INSERT INTO `oubao_admin_per` VALUES ('4', 'a_article_index', '列表', '1', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('5', 'a_article_add', '添加', '1', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('6', 'a_article_edit', '编辑', '1', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('7', 'a_article_del', '删除', '1', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('8', 'a_article_audit', '审核', '1', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('9', 'a_classtypes_index', '栏目列表', '2', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('10', 'a_classtypes_add', '栏目添加', '2', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('11', 'a_classtypes_edit', '栏目编辑', '2', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('12', 'a_classtypes_del', '栏目删除', '2', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('13', 'a_molds', '频道设置', '37', '0', '30', '');
INSERT INTO `oubao_admin_per` VALUES ('17', 'a_adminuser', '管理员管理', '36', '0', '29', '');
INSERT INTO `oubao_admin_per` VALUES ('22', 'a_sys', '系统设置', '36', '0', '30', '');
INSERT INTO `oubao_admin_per` VALUES ('24', 'a_fields_info', '字段列表', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('27', 'a_adminuser_edituser', '修改资料', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('28', 'uploads', '上传', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('29', 'a_traits', '推荐属性管理', '37', '0', '28', '');
INSERT INTO `oubao_admin_per` VALUES ('34', 'a_dbbak', '数据备份', '36', '0', '27', '');
INSERT INTO `oubao_admin_per` VALUES ('35', 'a_label', '模板调用生成器', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('36', '', '系统', '0', '0', '99', '');
INSERT INTO `oubao_admin_per` VALUES ('37', '', '频道管理', '0', '0', '97', '');
INSERT INTO `oubao_admin_per` VALUES ('38', 'a_sys_ecache', '更新缓存', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('40', 'a_labelcus', '自定义模板标签', '36', '0', '28', '');
INSERT INTO `oubao_admin_per` VALUES ('41', 'a_funs', '插件设置', '42', '0', '30', '');
INSERT INTO `oubao_admin_per` VALUES ('42', '', '其他管理', '0', '0', '98', '');
INSERT INTO `oubao_admin_per` VALUES ('43', 'a_files', '清理附件', '36', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('66', 'a_message', '管理', '0', '0', '0', 'message');
INSERT INTO `oubao_admin_per` VALUES ('67', 'a_message_edit', '编辑', '66', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('68', 'a_message_del', '删除', '66', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('69', 'a_message_audit', '审核', '66', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('71', 'a_comment', '评论管理', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('72', 'a_links', '友情链接管理', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('73', 'a_member', '会员管理', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('74', 'a_special', '专题管理', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('75', 'a_update', '在线升级', '36', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('76', 'a_html', '静态生成', '36', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('77', 'a_product', '管理', '0', '0', '20', 'product');
INSERT INTO `oubao_admin_per` VALUES ('78', 'a_product_index', '列表', '77', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('79', 'a_product_add', '添加', '77', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('80', 'a_product_edit', '编辑', '77', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('81', 'a_product_del', '删除', '77', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('82', 'a_product_audit', '审核', '77', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('84', 'a_ads', '广告管理', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('85', 'a_pay', '支付系统', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('86', 'a_goods', '购物系统', '42', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('87', 'a_goods_attribute_ajax', '规格属性', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('104', 'a_channel', '自定义频道', '0', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('123', 'channel_person_index', '列表', '118', '1', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('122', 'channel_person_audit', '审核', '118', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('121', 'channel_person_del', '删除', '118', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('120', 'channel_person_edit', '编辑', '118', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('119', 'channel_person_add', '添加', '118', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('118', 'channel_person', '管理', '0', '0', '0', 'person');
INSERT INTO `oubao_admin_per` VALUES ('117', 'a_template', '模板管理', '36', '0', '28', '');
INSERT INTO `oubao_admin_per` VALUES ('136', 'a_product_virtual', '虚拟货物', '77', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('137', 'channel_goods', '管理', '0', '0', '0', 'goods');
INSERT INTO `oubao_admin_per` VALUES ('138', 'channel_goods_add', '添加', '127', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('139', 'channel_goods_edit', '编辑', '127', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('140', 'channel_goods_del', '删除', '127', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('141', 'channel_goods_audit', '审核', '127', '0', '0', '');
INSERT INTO `oubao_admin_per` VALUES ('142', 'channel_goods_index', '列表', '127', '1', '0', '');

-- ----------------------------
-- Table structure for oubao_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `oubao_admin_user`;
CREATE TABLE `oubao_admin_user` (
  `auid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `auser` char(20) NOT NULL,
  `apass` char(32) NOT NULL,
  `aname` char(30) NOT NULL,
  `amail` char(100) NOT NULL,
  `atel` char(100) NOT NULL,
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pclasstype` text NOT NULL,
  PRIMARY KEY (`auid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_admin_user
-- ----------------------------
INSERT INTO `oubao_admin_user` VALUES ('1', 'admin', 'a3ae8336ace3bc42bd3e5057e58ec63c', '真实姓名', '邮箱', '电话', '1', '1', '');

-- ----------------------------
-- Table structure for oubao_ads
-- ----------------------------
DROP TABLE IF EXISTS `oubao_ads`;
CREATE TABLE `oubao_ads` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `taid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `adsw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adsh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adfile` char(200) NOT NULL,
  `body` text NOT NULL,
  `gourl` char(200) NOT NULL,
  `target` char(8) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_ads
-- ----------------------------
INSERT INTO `oubao_ads` VALUES ('20', '1', '6', '插座', '1', '1000', '620', '/uploads/2016/04/211644024639.jpg', '<a href=\"http://www.ob-home.com/index.php?c=channel&amp;a=type&amp;tid=33\" target=\"_blank\"><img src=\"/uploads/2016/04/211644024639.jpg\" width=\"1000\" height=\"620\" /></a>', 'http://www.ob-home.com/index.php?c=channel&amp;a=type&amp;tid=33', 'blank', '1');
INSERT INTO `oubao_ads` VALUES ('7', '5', '0', '产品打造', '1', '320', '217', '/uploads/2016/01/131704191524.jpg', '<a href=\"http://www.ob-home.com/index.php?c=article&amp;a=type&amp;tid=24\" target=\"_blank\"><img src=\"/uploads/2016/01/131704191524.jpg\" width=\"320\" height=\"217\" /></a>', 'http://www.ob-home.com/index.php?c=article&amp;a=type&amp;tid=24', 'blank', '1');
INSERT INTO `oubao_ads` VALUES ('8', '6', '0', '代理加盟', '1', '320', '217', '/uploads/2016/01/111605052562.jpg', '<a href=\"http://www.ob-home.com/index.php?c=article&amp;a=type&amp;tid=26\" target=\"_blank\"><img src=\"/uploads/2016/01/111605052562.jpg\" width=\"320\" height=\"217\" /></a>', 'http://www.ob-home.com/index.php?c=article&amp;a=type&amp;tid=26', 'blank', '1');
INSERT INTO `oubao_ads` VALUES ('10', '1', '20', '广告', '1', '1000', '620', '/uploads/2016/01/111555408999.jpg', '<a href=\"http://www.ob-home.com/index.php?c=product&amp;a=type&amp;tid=25\" target=\"_blank\"><img src=\"/uploads/2016/01/111555408999.jpg\" width=\"1000\" height=\"620\" /></a>', 'http://www.ob-home.com/index.php?c=product&amp;a=type&amp;tid=25', 'blank', '1');
INSERT INTO `oubao_ads` VALUES ('19', '1', '2', '智能锁', '1', '1000', '620', '/uploads/2016/04/211644246511.jpg', '<a href=\"http://www.ob-home.com/index.php?c=channel&amp;a=type&amp;tid=33\" target=\"_blank\"><img src=\"/uploads/2016/04/211644246511.jpg\" width=\"1000\" height=\"620\" /></a>', 'http://www.ob-home.com/index.php?c=channel&amp;a=type&amp;tid=33', 'blank', '1');
INSERT INTO `oubao_ads` VALUES ('21', '1', '18', '遥控', '1', '1000', '620', '/uploads/2016/04/211643302503.jpg', '<a href=\"http://www.ob-home.com/index.php?c=channel&amp;a=type&amp;tid=33\" target=\"_blank\"><img src=\"/uploads/2016/04/211643302503.jpg\" width=\"1000\" height=\"620\" /></a>', 'http://www.ob-home.com/index.php?c=channel&amp;a=type&amp;tid=33', 'blank', '1');

-- ----------------------------
-- Table structure for oubao_adstype
-- ----------------------------
DROP TABLE IF EXISTS `oubao_adstype`;
CREATE TABLE `oubao_adstype` (
  `taid` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `adsw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adsh` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`taid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_adstype
-- ----------------------------
INSERT INTO `oubao_adstype` VALUES ('1', '头部通栏banner', '1000', '620');
INSERT INTO `oubao_adstype` VALUES ('5', '首页左下图片', '320', '217');
INSERT INTO `oubao_adstype` VALUES ('6', '首页右下图片', '320', '217');

-- ----------------------------
-- Table structure for oubao_article
-- ----------------------------
DROP TABLE IF EXISTS `oubao_article`;
CREATE TABLE `oubao_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `litpic` char(255) NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `article` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_article
-- ----------------------------
INSERT INTO `oubao_article` VALUES ('54', '36', '0', '0', '测试新手入门', '', '', '', '', '', '1389175500', '0', '', '0', '0', '0.00', '', '测试新手入门，我也不知道新手入门填什么', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('55', '35', '0', '0', '新手测试2', '', '', '', '', '', '1389175500', '0', '', '0', '0', '0.00', '', '新手测试2新手测试2新手测试2新手测试2', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('56', '36', '0', '0', '用户注册用户注册用户注册', '', '', '', '', '', '1389175560', '0', '', '0', '0', '0.00', '', '用户注册用户注册用户注册用户注册用户注册用户注册用户注册', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('57', '35', '0', '0', '用户注册再次测试', '', '', '', '', '', '1389175560', '0', '', '0', '0', '0.00', '', '用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('58', '36', '0', '1', '瓯宝智能家居闪耀北京安博会', '', ',1,', '', '', '', '1415257380', '0', '/uploads/2014/11/061621204384.png', '0', '0', '0.00', '', '2014年10月28至31日，第十二届中国国际社会公共安全产品博览会在中国国际展览中心（新馆）成功举办。作为国家高新技术企业，瓯宝携最新智能家居产品盛装参展并取得了圆满成功。', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('66', '24', '0', '1', '智能社区', '', '', '', '', '', '1417594680', '0', '/uploads/2016/05/300948041723.png', '7', '0', '0.00', '', '采用综合布线技术、网络通信技术、安全防范技术、自动控制等技术全力构建高级住宅与家庭日程事务的管理系统，提升社区综合水平，使社区管理更加安全便捷。', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('68', '24', '0', '1', '智能家庭', '', '', '', '', '', '1417566600', '0', '/uploads/2016/05/300947152608.png', '10', '0', '0.00', '', '融合了网络通信、智能安防、音频视频、远程控制等多种技术，运用智能平台联合设备，帮用户营造便捷安全、温馨舒适的家居环境。', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('63', '24', '0', '1', '智能酒店', '', '', '', '', '', '1417593360', '0', '/uploads/2016/05/300947364542.png', '9', '0', '0.00', '', '为客人提供舒适的居住环境、展现高标的服务水准。同时，帮助酒店提高管理效率、提升服务品质、节约运营成本。', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('67', '24', '0', '1', '智能办公', '', '', '', '', '', '1417593180', '0', '/uploads/2016/05/300947538650.png', '8', '0', '0.00', '', '针对企业办公需求量身设计的解决方案，将实现对办公环境和办公设备的集中管理，为员工营造智能舒适的办公空间，帮企业节约运营成本，提升影响力。', 'admin', '0');
INSERT INTO `oubao_article` VALUES ('70', '35', '0', '1', '智能家居开启万亿物联网市场', '', '', '', '', '', '1418188440', '0', '', '0', '0', '0.00', '', '2014年将是物联网大力发展的一年，谷歌的收购举措必将在全球创投界掀起新一轮对智能家居甚至是可穿戴设备的追逐狂潮，再加上国家物联网技术研究中心预计到2015年国内物联网规模有望达到1380亿元，到2020年则有望达到2万亿元，因而物联网的新时代或正加速来临。', 'admin', '0');

-- ----------------------------
-- Table structure for oubao_article_field
-- ----------------------------
DROP TABLE IF EXISTS `oubao_article_field`;
CREATE TABLE `oubao_article_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_article_field
-- ----------------------------
INSERT INTO `oubao_article_field` VALUES ('54', '测试新手入门');
INSERT INTO `oubao_article_field` VALUES ('55', '新手测试2新手测试2新手测试2新手测试2');
INSERT INTO `oubao_article_field` VALUES ('56', '用户注册用户注册用户注册');
INSERT INTO `oubao_article_field` VALUES ('57', '第十三对是大都市');
INSERT INTO `oubao_article_field` VALUES ('58', '<p>\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:center;\" class=\"MsoNormal\" align=\"center\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:center;\" class=\"MsoNormal\" align=\"center\">\r\n	&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"text-align:left;\" class=\"MsoNormal\" align=\"justify\">\r\n	<span style=\"font-family:Microsoft YaHei;font-size:12px;\">2014年10月28至31日，第十二届中国国际社会公共安全产品博览会在中国国际展览中心（新馆）成功举办。作为国家高新技术企业，瓯宝携最新智能家居产品盛装参展并取得了圆满成功。</span> \r\n</p>\r\n<p style=\"background-image:none;text-align:left;background-attachment:scroll;background-repeat:repeat;background-position:0% 0%;\" class=\"MsoNormal\" align=\"justify\">\r\n	<span style=\"font-family:Microsoft YaHei;font-size:12px;\">本次展会，瓯宝以“科技改变生活·智慧实现梦想”为主题，首次向参展人员展示了“o-home”智能家居系统。有了这套o-home系统，用户可以通过智能手机、平板等对家中的灯光、窗帘、电气设备进行远程控制与管理；在家中，可以随意通过智能遥控器、移动终端等设备实现家电的控制与管理以及回家、外出、就餐、会客、睡眠等各种个性化场景模式的一键切换，非常方便实用。</span>&nbsp;\r\n</p>\r\n<p style=\"background-image:none;text-align:left;background-attachment:scroll;background-repeat:repeat;background-position:0% 0%;\" class=\"MsoNormal\" align=\"justify\">\r\n	<span style=\"font-family:Microsoft YaHei;font-size:12px;\">瓯宝o-home系统属于全无线通讯，不用布线，安装简单、使用方便，即使是对于已经装修好的家庭，在安装上也不需要大动干戈。这对于希望享受智能化生活的家庭来无疑是一个福音。并且，o-home智能家居系统的核心技术、原理皆为自主研发，安全性高、后续拓展性强。面对如此具有前瞻性和科技性的产品，观展商们表现出了极大的热情。为期四天的展会，瓯宝展位被围得水泄不通，宣传资料派发一空。不少客人更是慕名而来，为的是亲身体验全新的智能家居生活。&nbsp;</span>&nbsp;\r\n</p>\r\n<p style=\"background-image:none;text-align:left;background-attachment:scroll;background-repeat:repeat;background-position:0% 0%;\" class=\"MsoNormal\" align=\"justify\">\r\n	<span style=\"font-family:Microsoft YaHei;font-size:12px;\">本次展会最大亮点是设置了智能家居体验区。据了解，体验区所采用的样板房展示，营造出了一种真实的生活场景，让人身临其境，创造出一种独特的家居氛围与家居体验。展会体验区以家庭生活为参照，情景化展示了瓯宝智能系统在日常家庭生活中的完美应用，体现了名符其实的“智慧生活”。</span> \r\n</p>\r\n<p style=\"text-align:left;\" class=\"MsoNormal\" align=\"justify\">\r\n	<span style=\"font-family:Microsoft YaHei;font-size:12px;\">展会上，瓯宝工作人员热情接待来访客人，各司其职，紧力配合。既有商务人员简单、直白的讲演，也有技术人员专业的剖析和现场演示。敬业的工作态度给客户留下了深刻印象，客人们对瓯宝的产品和服务给予了高度赞扬。一致认为瓯宝智能家居系统市场前景广阔，技术稳定，用户体验良好。对此，本次展会既是一次极佳的展示契机，更是瓯宝智能家居扬帆起航的起点。我们有理由相信瓯宝在智能家居领域定将走得更远更踏实！</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	&nbsp;<img alt=\"\" src=\"/uploads/2014/11/101726295286.jpg\" /> \r\n</p>\r\n<p style=\"text-align:left;\" class=\"MsoNormal\" align=\"left\">\r\n	&nbsp;\r\n</p>');
INSERT INTO `oubao_article_field` VALUES ('70', '<p style=\"text-align:left;\" class=\"p0\" align=\"center\">\r\n	刚刚结束的CES大会带“火”了智能家居概念，紧接着国际互联网巨头谷歌又宣布以32亿美金收购iPod之父的创业公司Nest，这进一步引爆了智能家居热潮。分析人士表示，2014年将是物联网大力发展的一年，谷歌的收购举措必将在全球创投界掀起新一轮对智能家居甚至是可穿戴设备的追逐狂潮，再加上国家物联网技术研究中心预计到2015年国内物联网规模有望达到1380亿元，到2020年则有望达到2万亿元，因而物联网的新时代或正加速来临。<br />\r\n&nbsp;　　智能家居并购引热潮<br />\r\n　　本周一，谷歌在该公司的官方网站上发布新闻稿称，以现金32亿美元收购了智能家居设备公司Nest。<br />\r\n据悉，Nest从2011年开始就已经销售相当受欢迎的智能温控器，最近更推出了智能烟感器，可以通过平板或智能手机远程控制，从而让用户随时知道家中的情况。另外，这些设备可以根据个人的生活习性，自动调节合适的温度。<br />\r\n　　众所周知，谷歌是Nest最早的投资者之一，包括2011年的B轮融资以及2012年的C轮融资。谷歌CEO&nbsp;Larry&nbsp;Page表示“Nest的创始人Tony&nbsp;Fadell和Matt&nbsp;Rogers(出自苹果)组建了一支不可思议的团队，现在我们欢迎他们加入到谷歌大家庭中。他们现在已经有一些令人惊喜的产品正在出售，如可以节省能源的智能温控器(售价为250美元)，以及最近推出保障你家人安全的智能烟感器(售价为129美元)。我们对能为全世界更多国家和家庭带来伟大的产品和体验而感到兴奋。”<br />\r\n　　Nest的创始人Tony&nbsp;Fadell在一篇博客中称：“与谷歌的合作将有助于Nest加快改变世界的速度，大大超过我们的单干，这是因为谷歌公司拥有巨大的商业资源、全球规模以及平台服务等。”他还指出，两家公司具有极其相似的未来愿景。<br />\r\n　　据悉，上述收购完成后，Nest将继续由Tony&nbsp;Fadell运营，该部门会有自己专属的品牌和市场。Tony&nbsp;Fadell一直被称为iPod之父，对iPhone的诞生做出了一定的贡献，也是苹果一名极其优秀的老员工。<br />\r\n业内人士表示，本届CES大会刚刚结束不久，谷歌就宣布了这一惊人的收购消息，这再次引爆了智能家居的热潮，预计2014年将是物联网大力发展的一年。谷歌此举必将在全球创投界掀起新一轮对智能家居乃至可穿戴设备的追逐狂潮。不过，这起收购案尚未拍板，因为需要获得美国有关部门的批准，预计将在未来数月内宣布完成。<br />\r\n　　家庭数据中心前景广阔<br />\r\n　　据介绍，Nest的创始人Tony&nbsp;Fadell在谈及此次收购时，明确表示不会将用户数据提供给谷歌，这也是Nest对用户隐私最起码的保护，这不禁让人心生疑虑<br />\r\n　　究竟这些信息里能产生多大的价值呢?试想一下，一旦你的家庭装了这个温控器或烟感器，那么它就可以知道你何时回到家，而由于该设备接入互联网，那么假以时日，它必然就可以知道你正在浏览的网页，或正在看的电视节目以及你手中使用何种设备等。也就是说，你已经完全被“监视”了，从这个角度而言，这些数据的价值不言而喻。针对该问题，业内人士大多认为卖身后的Nest很难不把这些数据交出来。<br />\r\n　　未来一旦谷歌获得这些数据，它完全会把这个小东西逐步转化为你家庭中各个环节的中枢，以此获得更多的数据。目前有很多人会从电视或路由器等来入手，这样看来，谷歌要从这个小东西入手，似乎是个不错的选择。另外，谷歌或许会为设备搭载上安卓系统，然后让所有的电器都可以上网，这虽然有点难，但一旦成功后的效果将无比惊人。另外，谷歌得到这些数据后，作为一个商业公司必然会考虑如何将信息转化为可看得见的商业利益，那么更精准的广告投放，甚至是购物等或许在不久的未来就会来到消费者的面前。<br />\r\n　　事实上，在纳斯达克上市的PTC早前就已宣布，成功并购备受好评的物联网平台创建者ThingWorx，该公司致力于建立和运营物联网应用。据悉，并购价格约为1.12亿美元，外加高达1800万美元的收益外购。很显然，此次并购将PTC定位为新兴物联网时代的领导者。<br />\r\n　　麦肯锡全球研究院在2013年5月发布的最新报告《颠覆性技术：即将改变生活、商业和全球经济的技术进步》中表示，截至2025年，物联网将有潜力创造每年2.7万亿美元至6.2万亿美元的经济影响，届时预计百分之八十以上的制造业企业将采用物联网应用程序，所带来的经济影响约为0.9万亿美元至2.3万亿美元，其中大部分来自生产力创造的价值。比方说，伴随着日渐成熟的物联网技术的产生，企业不仅能够追溯产品流或有形资产，也能对单个机械或系统进行性能管理。<br />\r\n应该说，物联网的机遇不仅限于快速务实的应用程序。各行各业都期待着物联网时代的真正爆发;与此同时，互联传感器与设备网络正在迅速扩张，由物联网平台创建者ThingWorx合作伙伴组成的日渐壮大的生态系统也致力于利用该增长趋势。作为PTC的一部分，ThingWorx将凭借其资深的管理能力继续服务于这个多元化的市场，并专注其当前发展道路。<br />\r\n&nbsp;　　开启万亿物联网市场<br />\r\n　　目前，物联网广泛应用于绿色农业、工业监控、公共安全、城市管理、远程医疗、智能家居、智能交通、环境检测等领域。而无论是农业、工业生产、公共安全，还是交通监控，都存在很多控制信息及过程信息，需要通过各种接入设备接入到物联网网络层面，以实现各种信息的汇总及处理。<br />\r\n　　这些信息数据的存储及分析离不开云计算和大数据技术，而通过这些技术的不断完善和融合，物联网的发展将更加“如虎添翼”。现阶段信息接入设备在物联网领域应用较为明确的包括智能交通、智能建筑、远程医疗、智能机房基站等。<br />\r\n　　近几年来，各研究机构普遍看好物联网未来的发展。交银国际曾在一份报告中，将物联网誉为第三次信息产业浪潮。美国独立研究机构Forrester预测，物联网的市场价值将比互联网高30倍;思科也曾在其官方微博中预计到2020年全球物联网设备将达到750亿台，较当前增长9倍，行业规模将高达14万亿美元。仅就中国市场而言，根据公开数据显示，2012年我国物联网产业市场规模达到3650亿元。有分析人士预计，2013年物联网市场规模有望达到4800亿元，并保持约30%的增长速度，2015年国内物联网市场规模将有望达到7500亿元。<br />\r\n　　而我国工业和信息化部预测，十二五末期，我国物联网行业的市场将超过5000亿元，十三五后期将达到万亿元以上的量级。<br />\r\n　　在可穿戴设备、云计算、大数据等相继捧热科技界之际，市场也持续对相关概念保持高度的热情。而智能家居涵盖了智能终端、物联网等相关技术，是科技创新的集大成者，市场前景广阔。机构预测，随着技术的成熟和设备的智能化，一场电子革命即将到来，到2020年，中国智能家居产值将会达到2万亿元。\r\n</p>\r\n<p style=\"text-align:left;\" class=\"p0\">\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>');
INSERT INTO `oubao_article_field` VALUES ('68', '<div class=\"tb2\">\r\n	<strong>用户需求：</strong><br />\r\n　　随着物联网的快速发展和生活水平的提高，人们对家居的要求已经不再满足于传统需求，更希望拥有先进的通讯设备和智能化的家用电器营造的安全、便捷、舒适的生活环境。根据市场需求，公司迎着物联网之风扬帆起航，设计生产出一系列适用于智能家居的产品设备。<br />\r\n<br />\r\n<strong>方案详情：</strong><br />\r\n　　    瓯宝智能家居包括智能生活和智能安防两大类，产品融合了网络通信、安全防范、自动控制、音视频等技术。可通过手机或平板电脑远程控制，全方位满足用户对安全、便捷、自动、智能、舒适生活的需求，精心为客户打造健康、节能、高端的居住空间。<br />\r\n<br />\r\n<strong>方案特性：</strong><br />\r\n　　通过智能手机或平板电脑即可实现对设备的远程操控、实时查看设备运行状态……还可根据需求设置个性化情景模式。<br />\r\n<br />\r\n<strong>应用详情：</strong><br />\r\n1.	网络摄像头: 内置麦克风和扬声器，观看视频的同时还可语音对讲。内置WIFI装置，无需连接电脑即可实现远程操控。<br />\r\n2.	智能门窗<br />\r\n（1）智能锁:指纹锁被打开时会及时向手机反馈开锁信息，还可通过手机实现远程开锁。<br />\r\n（2）闭门器:开门五秒钟会自动闭合，贴心的防夹伤设计，只要轻轻一挡，便会自动停止。<br />\r\n（3）电动平移窗：可远程控制窗户的闭合，实时反馈窗户运作状态，保障家庭安全。<br />\r\n3.智能报警器<br />\r\n（1）水浸报警器：当探测到有水灾险情时，报警器会发出警报并自动关闭阀门，并将处理结果反馈至手机。<br />\r\n（2）煤气报警器：当探测到有气体泄漏时，报警器会发出警报并自动关闭阀门，并将处理结果反馈至手机。<br />\r\n<br />\r\n<strong>方案价值：</strong><br />\r\n　　瓯宝智能家居解决方案，通过集中管理、远程管理和场景管理，运用智能平台联合设备，帮用户营造便捷安全、温馨舒适的家居环境。<br />\r\n<br />\r\n</div>');
INSERT INTO `oubao_article_field` VALUES ('66', '<div class=\"tb2\">\r\n	<strong>用户需求：</strong><br />\r\n　　现在精装修房的需求量大大提升。对于房产商来讲，智能家居的运用将是楼盘的卖点和盈利点。对于住户来说，智能家居应用于家庭，不仅可以使生活更加安全舒适，更能提高生活品味和档次。对社区本身而言，将住房纳入现代化科学管理模式，也将提升社区的综合水平，使社区管理更加便捷。<br />\r\n<br />\r\n<strong>方案详情：</strong><br />\r\n　　通过智能设备连接智能平台，将整个社区纳入智能化管理体系。管理者可从社区网中的任意节点实时查看社区状况，从而加强社区安全管理，加快社区办事效率，提高社区服务水平。<br />\r\n<br />\r\n<strong>方案特性：</strong><br />\r\n　　全面监测，安全防范<br />\r\n　　摄像头全方位监控，高清画面实时显示。当探测区有险情发生时，管理员可通过手机实时画面查看社区状态，尽快做好安全防范。<br />\r\n　　节能环保，低碳生活<br />\r\n　　通过手机实时查看社区所有设备运行状态，并可定时联动操作，实现能源精细化配置使用，减少社区能源消耗。<br />\r\n<br />\r\n<strong>产品应用：</strong><br />\r\n1.监控设备<br />\r\n对人员流动性较强的社区入口，车辆集中停放的车库，高压电房、水房等关键位置实施监控，当有险情发生时，摄像头会发出警报并发送短信通知社区管理人员，以便险情得到及时的控制和解决。<br />\r\n2.遥控设备<br />\r\n手机实时查看社区内门窗等公共设施的状态，实现远程操作。<br />\r\n3.智能门锁<br />\r\n手机远程开锁，非社区人员不可随意进出。全面加强社区人员的管理，为业主营造安全的生活空间。<br />\r\n<br />\r\n<strong>方案价值：</strong><br />\r\n　　瓯宝智能社区解决方案，融合了网络通信、安全防范、自动控制、音视频等技术，通过视频监控、险情监测、远程控制给社区提供完善的安全保障，便捷的智能管理。<br />\r\n<br />\r\n</div>');
INSERT INTO `oubao_article_field` VALUES ('67', '<div class=\"tb2\">\r\n	<strong>用户需求：</strong><br />\r\n　　良好的办公环境，不仅会使员工身心愉悦，还可提高工作效率。智能家居应用于办公系统，将全面展现企业的综合实力和专业水平，也将提高公司整体形象，智能办公系统正是现代化办公最好的选择。<br />\r\n<br />\r\n<strong>方案详情：</strong><br />\r\n　　根据用户需求设计出的瓯宝智能办公解决方案，将全面改善办公环境。以其优秀的产品性能、智能化的操作系统，帮企业打造舒适、便捷、安全、低碳的办公空间。<br />\r\n<br />\r\n<strong>方案特性:</strong><br />\r\n　　APP下载应用简单便捷，同一产品可由多人远程操控。<br />\r\n　　实时画面监测，及时消息通报。即使不在公司，也可随时掌控办公状态。<br />\r\n　　根据公司日常经营模式，对不同场景进行模式设置，操作简单，使用方便。<br />\r\n<br />\r\n<strong>场景应用：</strong><br />\r\n1.	智能门锁：<br />\r\n既可刷卡开锁、密码开锁、指纹开锁，也可远程控制。管理人员可随心设置是否短信提示，及时掌握开锁人信息，保障公司安全。<br />\r\n2.      空调<br />\r\n既可使用定时功能按时开关空调，还可使用远程控制功能在上班的路上打开公司空调，让员工一到办公室便可在舒适的环境中工作。<br />\r\n3.      灯光<br />\r\n远程或定时控制灯光，再不用下班时一一检查，通过手机即可实时画面查看灯光状态。<br />\r\n4.      插座<br />\r\n既可使用远程控制功能掌控插座状态，还可使用定时功能，让插座下班时自动切断电源，节能减排。<br />\r\n5.     电动窗帘 <br />\r\n超静音设计，人性化的缓启缓停，只需一部手机就能轻松控制窗帘的闭合。<br />\r\n6.     智能会议室<br />\r\n只需一个简单的导航界面，就能实现对灯光、空调、投影、幕布等电器的管理。还可根据需要设置不同的情景模式，如会议模式、演讲模式、欢迎致辞模式等。<br />\r\n<br />\r\n<strong>方案价值:</strong><br />\r\n　　瓯宝智能办公解决方案通过智能平台实现对办公环境与办公设备的集中管理。为员工营造舒适的办公环境，为企业节约运营成本、为公司提升影响力。<br />\r\n</div>');
INSERT INTO `oubao_article_field` VALUES ('63', '<div class=\"tb2\">\r\n	<strong>用户需求：</strong><br />\r\n　　近年来，星级酒店发展迅猛，尤其是长三角、珠三角区域的星级饭店更是如雨后春笋般迅速发展起来。<span style=\"text-indent:18pt;line-height:1.5;\">酒店与时俱进，运用科技手段提升自身竞争力显得尤为重要。将科技应用于酒店客房、营销、节能、服务等方面，不仅可以给酒店的经营管理带来方便，更能为顾客提供全新的居住空间。</span><br />\r\n<br />\r\n<strong>方案详情：</strong><br />\r\n　　瓯宝智能酒店解决方案集智能灯光管理、空调管理、呼叫管理和信息服务管理功能于一体，把科学的管理理念与先进的管理手段相结合，将酒店运营过程中产生的大量数据信息进行及时准确的云端处理。帮助酒店实现智能化、规范化的管理，提高服务质量，提升行业竞争力。<br />\r\n<br />\r\n<strong>方案特性：</strong><br />\r\n　　告别传统 &nbsp;科学管理<br />\r\n通过无线一体化集成、全IP化部署实现对酒店灯光、电器、窗户、窗帘等用电设备的控制，节约酒店后期运营成本，提高服务质量。<br />\r\n　　告别繁琐 &nbsp;随心控制<br />\r\n采用无线模式，智能联合、自动感应、远程操控，客户可随心控制酒店房间设备，感受智能家居带来的便捷。<br />\r\n　　告别隐患 &nbsp;安全无忧<br />\r\n监控系统全方位监测各个方位，高清画质实时反馈，及时发现安全隐患，保障生命财产安全。<br />\r\n<br />\r\n<strong>应用示例：</strong><br />\r\n（1）客人靠近接待厅2-3米距离时，红外感应自动开门，也可以通过手机或平板控制门的开关。<br />\r\n（2）智能背景音乐设备能同时在不同区域播放不同的音乐。当有客人到达时，背景会音乐自动响起，给客人营造温馨舒适的感觉。<br />\r\n（3）智能监控全方位监控酒店及周边环境，高清画面实时反馈，安全守护每一天。<br />\r\n（4）<span style=\"white-space:normal;\">智能照明系统具有集中控制、场景控制、远程控制等功能，<span style=\"white-space:normal;\">可使灯光依次自动打开，</span>客房用户还可根据自己喜好进行个性化的灯光场景设置。</span><br />\r\n（5）只需一部手机或平板电脑即可控制房间里的空调、电视、灯光、窗户等，操作简单，使用方便。<br />\r\n<br />\r\n<strong>方案价值：</strong><br />\r\n　　瓯宝智能酒店解决方案以网络通信技术为基础，融合了计算机技术、传感技术、信息处理技术及综合集成管理等技术，为酒店提供智能服务，帮酒店提高管理效率、提升服务品质、节约运营成本。<br />\r\n<br />\r\n</div>');

-- ----------------------------
-- Table structure for oubao_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oubao_attribute`;
CREATE TABLE `oubao_attribute` (
  `sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL,
  `name` char(100) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `orders` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `attribute` (`tid`,`isshow`),
  KEY `attribute_orbye` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_attribute
-- ----------------------------
INSERT INTO `oubao_attribute` VALUES ('4', '2', '红色', '1', '0');
INSERT INTO `oubao_attribute` VALUES ('5', '2', '蓝色', '1', '0');
INSERT INTO `oubao_attribute` VALUES ('6', '3', 'S', '1', '0');
INSERT INTO `oubao_attribute` VALUES ('7', '3', 'M', '1', '0');
INSERT INTO `oubao_attribute` VALUES ('8', '3', 'L', '1', '0');

-- ----------------------------
-- Table structure for oubao_attribute_type
-- ----------------------------
DROP TABLE IF EXISTS `oubao_attribute_type`;
CREATE TABLE `oubao_attribute_type` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `classtype` text NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_attribute_type
-- ----------------------------
INSERT INTO `oubao_attribute_type` VALUES ('2', '颜色', '|18|', '1', '0');
INSERT INTO `oubao_attribute_type` VALUES ('3', '尺码', '|18|', '1', '0');

-- ----------------------------
-- Table structure for oubao_classtype
-- ----------------------------
DROP TABLE IF EXISTS `oubao_classtype`;
CREATE TABLE `oubao_classtype` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `litpic` char(200) NOT NULL,
  `title` char(100) NOT NULL,
  `keywords` char(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `isindex` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listimg` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `t_content` char(50) NOT NULL,
  `listnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `htmldir` char(100) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `msubmit` smallint(5) NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  `mshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `imgw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imgh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unit` char(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_classtype
-- ----------------------------
INSERT INTO `oubao_classtype` VALUES ('30', 'message', '0', '反馈', '', '', '反馈', '', '', '3', 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', '20', '', '', '0', '1', '0', '', '0', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('29', 'article', '0', '服务中心', '', '', '服务中心', '', '服务中心', '3', 'list_index.html', 'help.html', 'list_image.html', 'list_service.html', 'article.html', '20', '', '', '0', '0', '4', '<h3>\r\n	服务政策\r\n</h3>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size:14px;\">&nbsp;<span style=\"font-size:16px;\"> 除非本规定做特殊说明的产品以外，瓯宝提供三年的免费维修服务。在按照用户手册正常使用的状态下，如有出现故障，凭产品服务卡及购物凭证到指定的地点进行维修，除邮递、运送等杂费外，保修服务免费提供。</span></span> \r\n</p>\r\n<br />\r\n<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;保修期以内下列情况之修理费将按实收取：</span> \r\n<p>\r\n	<span style=\"font-size:16px;\">1、未出示有效保修卡及购物凭证的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2、未按产品使用说明的要求使用、维护、保管而造成损坏的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3、购买后发生的因摔落、不适当存放等造成损坏的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">4、保修卡上未记载产品名称、产品型号、用户名称、地址、电话、经销商名称或擅自涂改保修卡的，无销售店印章的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">5、保修卡记载的产品型号和编号与实物不符的。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">6、因自然灾害，异常电压等不可抗力原因引起的故障。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">保修更换下来的所有部件归瓯宝公司所有。 随产品之附件不在保修范围内。请妥善保存保 &nbsp; &nbsp; &nbsp; 修卡，遗失不补。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">注意：</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">1、为保障您的合法权益，请您仔细核对保修卡内容填写的准确性。瓯宝公司对因使用非瓯宝 原厂附件而导致本产品的损坏和任何事故发生概不负责。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">2、当产品交回做保修服务时，请小心包装，并附带保修卡、发票及维修记录等以便参考。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">3、本保修规定是为消费者免费维修制定的，并不限制消费者在法律上的权利。</span> \r\n</p>\r\n<h3>\r\n	服务热线 0578-2199999\r\n</h3>\r\n<p>\r\n	<span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">工作时间：</span><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">星期一至星期六</span><span><span> </span></span><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">上午</span><span style=\"font-size:16px;\">8</span><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">:00</span><span style=\"font-size:16px;\">-12:00</span><span><span> </span></span><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">下午</span><span style=\"font-size:16px;\">1</span><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">:00</span><span style=\"font-size:16px;\">-5:00</span><span style=\"font-family:微软雅黑, sans-serif;font-size:16px;\">（周日及法定节假日除外）</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '0', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('24', 'article', '0', '解决方案', '', '', '解决方案', '', '解决方案', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '10', '', '', '0', '0', '10', '<p>\r\n	解决方案解决方案解决方案解决方案解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案解决方案\r\n</p>', '1', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('25', 'product', '0', '应用下载', '', '', '产品展示', '', '产品展示', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '20', '', '', '0', '0', '8', '', '1', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('26', 'article', '0', '代理加盟', '', '', '代理加盟', '', '代理加盟', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_agent.html', 'article.html', '20', '', '', '0', '0', '7', '<div class=\"gray\">\r\n	<div class=\"container\">\r\n		<div class=\"head\">\r\n			<h2>\r\n				加盟条件\r\n			</h2>\r\n		</div>\r\n		<div class=\"join-about-content\">\r\n			<p>\r\n				1、公司必须拥有独立法人资格、较高的商业信用和较好的公司形象；\r\n			</p>\r\n			<p>\r\n				2、对智能家居感兴趣，真诚愿意投入资金合作；\r\n			</p>\r\n			<p>\r\n				3、在方案设计、系统调试与售后服务等方面有专业的服务团队；\r\n			</p>\r\n			<p>\r\n				4、有一定的行业客户、项目资源及终端市场营销经验；\r\n			</p>\r\n			<p>\r\n				5、认可瓯宝的经营理念及管理模式，遵守公司对代理商的各项规章制度；\r\n			</p>\r\n			<p>\r\n				6、认可瓯宝的产品，对市场有共同的目标和愿景，有独立经营理念及可行的业务开展计划；\r\n			</p>\r\n			<p>\r\n				7、具备用于展示智能家居系列全套产品、供客户体验的展厅或体验厅；\r\n			</p>\r\n			<p>\r\n				8、将瓯宝智能家居作为重点销售和推广的产品；\r\n			</p>\r\n			<p>\r\n				9、接受公司制定的统一市场价格体系；\r\n			</p>\r\n			<p>\r\n				10、对公司区域年度计划有一定的承诺，并能够予以兑现\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"white\">\r\n	<div class=\"container\">\r\n		<div class=\"head\">\r\n			<h2>\r\n				合作优势\r\n			</h2>\r\n		</div>\r\n		<div class=\"join-about-content\">\r\n			<p>\r\n				1、公司自成立以来，一直致力于智能家居的研发生产，为现代家居的“智能化”提供了丰富、灵活、可靠的解决方案。\r\n			</p>\r\n			<p>\r\n				2、公司实力雄厚，拥有强大的品牌生命力和影响力，为产品研发、生产和推广提供了“一站式”便利服务。\r\n			</p>\r\n			<p>\r\n				3、专业的研发团队及前卫的设计理念，为产品不断推陈出新奠定了坚实的基础\r\n			</p>\r\n			<p>\r\n				4、规范的生产团队，充分保障了产品的优良工艺和高端品质。\r\n			</p>\r\n			<p>\r\n				5、庞大的的销售团队，致力于国内外市场开拓，多方位满足用\r\n			</p>\r\n			<p>\r\n				6、手机APP客户端实现对产品的远程操控、多方联动、画面反馈，简单方便又不失时尚前卫，还可随系统自动更新版本。\r\n			</p>\r\n			<p>\r\n				7、产品荣获多项专利及软件著作权，拥有良好的自主知识产权保证。\r\n			</p>\r\n			<p>\r\n				8、公司拥有完备的产品线及产品种类，可满足多层次、多区域的市场销售需求。\r\n			</p>\r\n			<p>\r\n				9、合理的价格体系、完善的售后服务，兼顾多方顾客消费能力。\r\n			</p>\r\n			<p>\r\n				10、全方位的宣传展览，使得公司产品在短时间内成功走向国内外多个地区，市场份额逐年增加。\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"gray\">\r\n	<div class=\"container\">\r\n		<div class=\"head support\">\r\n			<h2>\r\n				支持与保障\r\n			</h2>\r\n		</div>\r\n		<div class=\"join-about-content\">\r\n			<p>\r\n				1、投资分析：协助您制定精确的投资分析，为您提供投资整体预算及可行性分析报告。\r\n			</p>\r\n			<p>\r\n				2、品牌支持：公司提供专业的宣传片、画册等产品资料，不定期举行产品展会及销售经验交流会。\r\n			</p>\r\n			<p>\r\n				3、厂家直销：公司所有产品皆为厂家直销，为代理商提供统一的价格体系，确保加盟商拥有足够的利润空间。\r\n			</p>\r\n			<p>\r\n				4、广告支持：公司通过多种渠道持续进行宣传，不断扩大品牌影响力，使品牌价值得到保障。\r\n			</p>\r\n			<p>\r\n				5、活动支持：公司及时总结各级代理商在经营过程中典型的销售经验，为您提供促销活动操作详案，并予以活动指导。\r\n			</p>\r\n			<p>\r\n				6、技术支持：公司定期培训产品安装维护人员，帮您建立售后服务体系。对大型工程、家装项目和重要的客户，公司可提供技术、方案方面的指导。\r\n			</p>\r\n			<p>\r\n				7、售后支持：公司设有服务热线，协同解决合作商运营过程中遇到的问题。\r\n			</p>\r\n			<p>\r\n				8、配送支持：公司拥有专门的订货系统，按照代理商要求实施物流配送统一化；建立管理、生产、销售等各个环节的计算机终端网络，实现了内部资源共享和网络化管理一体化。\r\n			</p>\r\n			<p>\r\n				9、区域保护：公司拥有强有力的渠道政策，区域保护政策和产品质量保证，为合作商开展业务提供大力支持。\r\n			</p>\r\n			<p>\r\n				10、宣传支持：公司将为各级代理商提供市场活动宣传物料方面的支持。\r\n			</p>\r\n		</div>\r\n	</div>\r\n</div>', '1', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('27', 'article', '0', '联系我们', '', '', '关于我们', '', '联系我们', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '6', '<p>\r\n	瓯宝安防科技股份有限公司自1987年成立以来，一直秉承着“以用户为核心”的理念，致力于智能家居的研发生产，是国内首家生产闭门器的股份制企业，也是国内最大的闭门器专业制造商。\r\n</p>\r\n<p>\r\n	公司针对金融、公安、电讯、交通、司法、教育、电力、水利、军队等部门特点和要求提供了不同的产品及解决方案。我们的主要产品有：指纹锁、闭门器、电动闭门器、密码锁、智能锁、防尾随联动互锁系统、门禁系统等。在全球八十多个国家和地区均有销售，其中80%用于出口欧美发达国家及地区。国内各省、市也设有销售（服务）网络，我国重大项目应用涉及北京人民大会堂、北京大学、北京奥运会、上海海洋馆、广东电视台等众多领域。\r\n</p>\r\n<p>\r\n	瓯宝产品率先通过了UL、UL10.C、ETL、ITS、TUV、CE、SP、ISO9001等国际产品质量认证。1995年通过美国UL安全认证，2004年通过欧洲EN1154质量认证，2005年通过美国ANSI156.4PT1级200万次寿命测试认证，是国内首家荣获此两项国际最高标准认证的闭门器专业制造企业。\r\n</p>\r\n<p>\r\n	瓯宝智能家居系统融合了网络通信、安全防范、自动控制、音视频等技术，可通过智能手机远程控制，使家居达到安全性、便利性、舒适性、艺术性要求，我们的产品广泛应用于住宅、社区、酒店、办公等领域，瓯宝极力为客户打造环保节能的居住环境。\r\n</p>\r\n<p>\r\n	随着物联网的广泛发展应用，公司与时俱进、积极创新，依靠现有的人才储备和技术优势，成立了智能家居产品研发中心，致力于打造\"智慧生活\"。研发中心汇集了国内光学、机电、指纹算法、工业设计等方面的众多精英。在自主知识产权保护方面，目前已拥有发明专利、实用新型专利、软件著作权专利、外观专利等百余项。公司先后被评为国家高新技术企业、浙江省省级技术中心、浙江省最具价值100强成长企业。\r\n</p>\r\n<p>\r\n	智能家居产品研发中心，拥有优秀的人才配备、庞大的技术支持，自主研发了智能遥控、智能插座、煤气报警器、水浸报警器、智能锁、闭门器、智能电动窗帘、网络摄像头、音响等智能家居产品，以及基于智能家居产品使之相互联结的智慧家居APP应用。产品拥有核心技术精、稳定性能强、安全保障高等特性，深受用户的青睐。凭借优秀的产品和完善的服务，瓯宝智能家居已然处于行业的领先地位。\r\n</p>', '1', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('28', 'article', '0', '联系我们', '', '', '联系我们', '', '联系我们', '3', 'list_index.html', 'list.html', 'list_image.html', 'list_contact.html', 'article.html', '20', '', '', '0', '0', '0', '<p>\r\n	联系我们联系我们联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>', '0', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('33', 'goods', '0', '产品展示', '', '', '产品展示', '', '产品展示', '2', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '12', '', '', '0', '0', '9', '', '1', '322', '223', '');
INSERT INTO `oubao_classtype` VALUES ('34', 'article', '0', '最新动态', '', '', '最新动态', '', '', '1', 'list_index.html', 'list_news.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '5', '', '0', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('35', 'article', '34', '行业新闻', '', '', '行业新闻', '', '', '1', 'list_index.html', 'list_news.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('36', 'article', '34', '企业新闻', '', '', '企业新闻', '', '', '1', 'list_index.html', 'list_news.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '1', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('37', 'article', '0', '案例展示', '', '', '案例展示', '', '', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '20', '', '', '0', '0', '0', '', '0', '0', '0', '');
INSERT INTO `oubao_classtype` VALUES ('38', 'product', '0', '说明书', '', '', '说明书', '', '', '1', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '20', '', '', '0', '0', '0', '', '0', '0', '0', '');

-- ----------------------------
-- Table structure for oubao_comment
-- ----------------------------
DROP TABLE IF EXISTS `oubao_comment`;
CREATE TABLE `oubao_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL,
  `molds` char(20) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  `reply` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `retime` int(10) unsigned NOT NULL DEFAULT '0',
  `user` char(30) NOT NULL,
  `ruser` char(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_comment
-- ----------------------------
INSERT INTO `oubao_comment` VALUES ('54', '3', 'product', '0', 'asdf', '', '1340949850', '0', '游客', '');
INSERT INTO `oubao_comment` VALUES ('53', '1', 'product', '0', 'asdfasdf', '', '1340771473', '0', '游客', '');
INSERT INTO `oubao_comment` VALUES ('55', '3', 'article', '0', 'fhjdfghdfh', '', '1352975201', '0', '游客', '');
INSERT INTO `oubao_comment` VALUES ('58', '47', 'article', '1', '1111111111', 'asdf', '1353412302', '1353412308', '1', 'admin');
INSERT INTO `oubao_comment` VALUES ('57', '50', 'article', '0', 'asdfasdfasdf', 'asdf', '1353411949', '1353412281', '1', 'admin');

-- ----------------------------
-- Table structure for oubao_custom
-- ----------------------------
DROP TABLE IF EXISTS `oubao_custom`;
CREATE TABLE `oubao_custom` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(200) NOT NULL,
  `dir` char(100) NOT NULL,
  `template` char(100) NOT NULL,
  `file` char(200) NOT NULL,
  `html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_custom
-- ----------------------------
INSERT INTO `oubao_custom` VALUES ('3', 'update', 'data', 'update.html', 'update.xml', '1');

-- ----------------------------
-- Table structure for oubao_fields
-- ----------------------------
DROP TABLE IF EXISTS `oubao_fields`;
CREATE TABLE `oubao_fields` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `fieldsname` char(20) NOT NULL,
  `fields` char(20) NOT NULL,
  `fieldstype` char(20) NOT NULL,
  `fieldslong` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selects` text NOT NULL,
  `fieldorder` int(10) NOT NULL DEFAULT '0',
  `issubmit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lists` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fieldshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `types` text NOT NULL,
  `contingency` char(20) NOT NULL,
  `imgw` smallint(6) NOT NULL DEFAULT '0',
  `imgh` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_fields
-- ----------------------------
INSERT INTO `oubao_fields` VALUES ('14', 'person', '招聘岗位', 'gangwei', 'varchar', '100', '', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('15', 'person', '学历要求', 'xueli', 'select', '0', '不限=1,小学及以上=2,初中及以上=3,高中(中专)及以上=4,大专及以上=5,本科及以上=6,硕士及以上=7,博士及以上=8', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('16', 'person', '年龄要求', 'nianlin', 'varchar', '50', '', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('17', 'person', '性别要求', 'xingbie', 'select', '0', '不限=不限,男=男,女=女', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('18', 'person', '工作经验', 'jingyan', 'select', '0', '不限=1,一年以上=2,二年以上=3,三年以上=4,五年以上=5,十年以上=6', '0', '1', '1', '1', '|22|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('19', 'person', '招聘介绍', 'jieshao', 'text', '0', '', '0', '1', '0', '1', '|22|23|', '', '670', '350');
INSERT INTO `oubao_fields` VALUES ('24', 'message', '学历', 'u_xueli', 'varchar', '50', '', '0', '1', '0', '1', '|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('25', 'message', '年龄', 'u_nianlin', 'varchar', '50', '', '0', '1', '0', '1', '|23|', '', '0', '0');
INSERT INTO `oubao_fields` VALUES ('26', 'product', '安卓', 'android', 'files', '0', '', '1', '1', '1', '1', '|25|', 'product', '0', '0');
INSERT INTO `oubao_fields` VALUES ('27', 'product', '苹果ios', 'apple', 'files', '0', '', '2', '1', '1', '1', '|25|', 'product', '0', '0');
INSERT INTO `oubao_fields` VALUES ('28', 'product', '版本号', 'version', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('29', 'product', '大小', 'size', 'varchar', '255', '', '3', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('30', 'product', '支持系统', 'system', 'varchar', '255', '', '4', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('31', 'product', '安卓二维码', 'androidcode', 'files', '0', '', '5', '1', '1', '1', '|25|', '', '165', '165');
INSERT INTO `oubao_fields` VALUES ('32', 'product', '苹果二维码', 'applecode', 'files', '0', '', '6', '1', '1', '1', '|25|', '', '165', '165');
INSERT INTO `oubao_fields` VALUES ('34', 'product', '版本名称', 'versionName', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('36', 'product', '批号', 'minversionCode', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('37', 'product', '更新介绍', 'about', 'varchar', '500', '', '0', '1', '1', '1', '|25|', '', '450', '250');
INSERT INTO `oubao_fields` VALUES ('38', 'product', '文件名称', 'fileName', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('39', 'goods', '缩略图', 'simg', 'files', '0', '', '10', '1', '1', '1', '|33|', '', '322', '223');
INSERT INTO `oubao_fields` VALUES ('40', 'goods', '型号', 'xinghao', 'varchar', '255', '', '10', '1', '1', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('41', 'goods', '详细大图', 'bsimg', 'files', '0', '', '10', '1', '0', '1', '|33|', '', '595', '334');
INSERT INTO `oubao_fields` VALUES ('42', 'goods', '功能特点', 'tedian', 'varchar', '500', '', '0', '1', '0', '1', '', '', '300', '300');
INSERT INTO `oubao_fields` VALUES ('43', 'goods', '产品参数', 'canshu', 'varchar', '500', '', '0', '1', '0', '1', '', '', '300', '300');
INSERT INTO `oubao_fields` VALUES ('44', 'goods', '产品概况', 'gaikuang', 'text', '0', '', '0', '1', '0', '1', '|33|', '', '670', '300');
INSERT INTO `oubao_fields` VALUES ('45', 'goods', '安装说明', 'shuoming', 'text', '0', '', '0', '1', '0', '1', '|33|', '', '670', '300');
INSERT INTO `oubao_fields` VALUES ('46', 'goods', '设备配置', 'peizhi', 'text', '0', '', '0', '1', '0', '1', '|33|', '', '670', '300');
INSERT INTO `oubao_fields` VALUES ('47', 'goods', '学习功能', 'gongneng', 'text', '0', '', '0', '1', '0', '1', '|33|', '', '670', '300');
INSERT INTO `oubao_fields` VALUES ('48', 'goods', '更多设置', 'shezhi', 'text', '0', '', '0', '1', '0', '1', '|33|', '', '670', '300');
INSERT INTO `oubao_fields` VALUES ('49', 'goods', '常见问题解决', 'jiejue', 'text', '0', '', '0', '1', '0', '1', '|33|', '', '670', '300');
INSERT INTO `oubao_fields` VALUES ('51', 'message', '姓名', 'mname', 'varchar', '255', '', '0', '1', '1', '1', '|30|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('52', 'message', '手机', 'mcell', 'varchar', '255', '', '0', '1', '1', '1', '|30|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('53', 'message', 'QQ', 'mqq', 'varchar', '255', '', '0', '1', '1', '1', '|30|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('54', 'message', '邮箱', 'memail', 'varchar', '255', '', '0', '1', '1', '1', '|30|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('55', 'goods', '输入电压', 'dianya', 'varchar', '255', '', '7', '1', '1', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('56', 'goods', '红外射频', 'hongwai', 'varchar', '255', '', '7', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('57', 'goods', '工作湿度', 'shidu', 'varchar', '255', '', '7', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('58', 'goods', '输入电流', 'dianliu', 'varchar', '255', '', '7', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('59', 'goods', '红外射频', 'sheping', 'varchar', '255', '', '7', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('60', 'goods', '工作温度', 'wendu', 'varchar', '255', '', '7', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('61', 'goods', '功能特点1', 'tedian1', 'varchar', '255', '', '8', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('62', 'goods', '功能特点2', 'tedian2', 'varchar', '255', '', '8', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('63', 'goods', '功能特点3', 'tedian3', 'varchar', '255', '', '8', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('64', 'goods', '功能特点4', 'tedian4', 'varchar', '255', '', '8', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('65', 'goods', '功能特点5', 'tedian5', 'varchar', '255', '', '8', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('66', 'goods', '副标题', 'title2', 'varchar', '255', '', '9', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('67', 'goods', '副标题2', 'title3', 'varchar', '255', '', '9', '1', '0', '1', '|33|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('68', 'product', '苹果ios版本', 'iosbanben', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('69', 'product', '苹果ios大小', 'iosbig', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('70', 'product', '苹果ios支持系统', 'iossys', 'varchar', '255', '', '0', '1', '1', '1', '|25|', '', '300', '80');
INSERT INTO `oubao_fields` VALUES ('73', 'product', '说明文档', 'wendang', 'files', '0', '', '0', '1', '1', '1', '|38|', '', '0', '0');

-- ----------------------------
-- Table structure for oubao_funs
-- ----------------------------
DROP TABLE IF EXISTS `oubao_funs`;
CREATE TABLE `oubao_funs` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `funs` char(20) NOT NULL,
  `fundb` char(255) NOT NULL,
  `name` char(20) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `afiles` text NOT NULL,
  `version` char(20) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_funs
-- ----------------------------
INSERT INTO `oubao_funs` VALUES ('31', 'ads', 'ads,adstype', '广告', '1', '', '1.0');
INSERT INTO `oubao_funs` VALUES ('32', 'comment', 'comment', '评论', '0', '', '1.0');
INSERT INTO `oubao_funs` VALUES ('33', 'links', 'links,linkstype', '友情链接', '1', '', '1.0');
INSERT INTO `oubao_funs` VALUES ('34', 'member', 'member,member_field,member_group,member_file', '会员', '1', '', '1.0');
INSERT INTO `oubao_funs` VALUES ('35', 'special', 'special', '专题', '0', '', '1.0');
INSERT INTO `oubao_funs` VALUES ('37', 'pay', 'account,order,payment', '支付系统', '0', '', '1.0');
INSERT INTO `oubao_funs` VALUES ('38', 'goods', 'product_attribute,attribute,attribute_type', '购物系统', '0', '', '1.0');

-- ----------------------------
-- Table structure for oubao_goods
-- ----------------------------
DROP TABLE IF EXISTS `oubao_goods`;
CREATE TABLE `oubao_goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `goods` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_goods
-- ----------------------------
INSERT INTO `oubao_goods` VALUES ('4', '33', '0', '1', '智能遥控', '', '', '', '', '', '1415256360', '0', '12', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('5', '33', '0', '1', '智能插座', '', '', '', '', '', '1415268360', '0', '11', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('6', '33', '0', '1', '智能锁', '', '', '', '', '', '1415268480', '0', '9', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('7', '33', '0', '1', '水浸报警器', '', '', '', '', '', '1415268660', '0', '5', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('8', '33', '0', '1', '煤气报警器', '', '', '', '', '', '1415268720', '0', '6', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('9', '33', '0', '1', '电动平移窗', '', '', '', '', '', '1415268720', '0', '10', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('10', '33', '0', '1', '电动闭门器', '', '', '', '', '', '1415268780', '0', '8', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('11', '33', '0', '1', '网络摄像头', '', '', '', '', '', '1415268840', '0', '7', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('12', '33', '0', '1', '七彩灯', '', '', '', '', '', '1415268900', '0', '3', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('13', '33', '0', '1', '智能电动窗帘', '', '', '', '', '', '1415268900', '0', '4', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('14', '33', '0', '1', '单火触摸开关', '', '', '', '', '', '1458288240', '0', '2', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('15', '33', '0', '1', '移动插座', '', '', '', '', '', '1458288420', '0', '1', '0', '0', '', '', 'admin', '0');
INSERT INTO `oubao_goods` VALUES ('16', '33', '0', '1', '零火触摸开关', '', '', '', '', '', '1464770040', '0', '0', '0', '0', '', '', 'admin', '0');

-- ----------------------------
-- Table structure for oubao_goodscart
-- ----------------------------
DROP TABLE IF EXISTS `oubao_goodscart`;
CREATE TABLE `oubao_goodscart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `attribute` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_goodscart
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_goods_field
-- ----------------------------
DROP TABLE IF EXISTS `oubao_goods_field`;
CREATE TABLE `oubao_goods_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `simg` char(255) DEFAULT NULL,
  `xinghao` varchar(255) DEFAULT NULL,
  `bsimg` char(255) DEFAULT NULL,
  `tedian` varchar(500) DEFAULT NULL,
  `canshu` varchar(500) DEFAULT NULL,
  `gaikuang` text,
  `shuoming` text,
  `peizhi` text,
  `gongneng` text,
  `shezhi` text,
  `jiejue` text,
  `dianya` varchar(255) DEFAULT NULL,
  `hongwai` varchar(255) DEFAULT NULL,
  `shidu` varchar(255) DEFAULT NULL,
  `dianliu` varchar(255) DEFAULT NULL,
  `sheping` varchar(255) DEFAULT NULL,
  `wendu` varchar(255) DEFAULT NULL,
  `tedian1` varchar(255) DEFAULT NULL,
  `tedian2` varchar(255) DEFAULT NULL,
  `tedian3` varchar(255) DEFAULT NULL,
  `tedian4` varchar(255) DEFAULT NULL,
  `tedian5` varchar(255) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `title3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_goods_field
-- ----------------------------
INSERT INTO `oubao_goods_field` VALUES ('4', '/uploads/2016/05/301235048527.png', 'OZB-RM-A1', '/uploads/2016/06/031107561241.png', '', '', '<img src=\"/uploads/2016/03/231645334086.png\" alt=\"\" />', '<img src=\"/uploads/2016/03/231645452243.png\" alt=\"\" />', '<p>\r\n	<img src=\"/uploads/2016/03/181348022634.png\" alt=\"\" /><img src=\"/uploads/2016/03/111142123201.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/231646127148.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111146237710.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111147057921.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111147354778.png\" alt=\"\" /> \r\n</p>', '<p>\r\n	<img src=\"/uploads/2016/03/111148004357.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111148218855.png\" alt=\"\" /> \r\n</p>', '<img src=\"/uploads/2016/03/111148365279.png\" alt=\"\" />', '<img src=\"/uploads/2016/03/111148495538.png\" alt=\"\" />', '5V', '20khz-70khz', '≤80%RH', '2A', '', '0—65℃', '	可替代市面上大部分红外遥控器，帮用户摆脱遥控器多的困扰', '	可定时、联动、远程控制风扇、空调、电视等红外遥控设备', '	手机实时动画反馈家电工作状态', '', '', '极致的遥控体验', '');
INSERT INTO `oubao_goods_field` VALUES ('5', '/uploads/2016/05/300959455325.jpg', 'OZB-SP-A1', '/uploads/2016/03/181354101883.png', '', '', '<img src=\"/uploads/2016/03/231648199705.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/231648311170.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/181354532839.png\" alt=\"\" /><img src=\"/uploads/2016/03/181355119322.png\" alt=\"\" /> \r\n<p>\r\n	<img src=\"/uploads/2016/03/231648495033.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181355511423.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181356175234.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181356369883.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/03/181356485464.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/181357011348.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '220V   50～60Hz', '', '≤70%RH', '', '', '0-65℃', '	防过充，可有效保护手机、平板', '	可定时、联动、远程控制电源开关', '	安装简单，操作方便，节能安全', '', '', '精致生活 节能有“我”', '');
INSERT INTO `oubao_goods_field` VALUES ('6', '/uploads/2016/05/301000217069.jpg', '', '/uploads/2016/03/181401157248.png', '', '', '<img src=\"/uploads/2016/03/300949403895.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/231654011170.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<br />\r\n<img src=\"/uploads/2016/03/181403071260.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/181403425215.png\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"/uploads/2016/03/231655255997.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181404275216.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181405057699.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/231655439661.png\" alt=\"\" /> \r\n</p>', '<p>\r\n	<img src=\"/uploads/2016/03/300950384520.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/300950524761.png\" alt=\"\" /> \r\n</p>', '<img src=\"/uploads/2016/03/181407221538.png\" alt=\"\" /> \r\n<p>\r\n	<img src=\"/uploads/2016/03/181407386444.png\" alt=\"\" /> \r\n</p>', '<img src=\"/uploads/2016/03/181407509732.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', '', '', '	超大兼容性指纹识别芯，保证信息的高存储量和性能的精确稳定', '	支持远程开锁，及时反馈开锁人和开锁信息，并有短信提示', '	可与其他家电设备进行联动操作', '', '', '无可挑剔的安全卫士', '');
INSERT INTO `oubao_goods_field` VALUES ('7', '/uploads/2016/05/301001217245.jpg', 'OZB-WA-A1', '/uploads/2016/03/111642491299.png', '', '', '<img src=\"/uploads/2016/03/231713197997.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/231713333688.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/111643212150.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/181555024813.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/231713505883.png\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"/uploads/2016/03/111645266388.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111645589866.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/231714076484.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/03/111646432759.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/111647089262.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', 'DC12V±1V', '', '≤70%RH', '1A', '', '0-65℃', '	安装方便，适合厨房、浴室、室内室外等各种场所', '	精确探测，独立发出警报的同时还能对联网手机发出警报并自动处理险情', '	支持手动或者手机控制阀门设备', '', '', '节能安全，贴心到位', '');
INSERT INTO `oubao_goods_field` VALUES ('8', '/uploads/2016/05/301001022268.jpg', 'OZB-GA-A1', '/uploads/2016/03/111625536286.png', '', '', '<img src=\"/uploads/2016/03/231710263404.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/231710508241.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/181553047817.png\" alt=\"\" /><br />\r\n<br />\r\n<img src=\"/uploads/2016/03/111628071585.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/231711113933.png\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"/uploads/2016/03/111628584907.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111629375342.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111630017260.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/03/111630159552.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/111630275053.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', 'DC12V±1V', '', '≤70%RH', '1A', '', '0-65℃', '	支持多种燃气泄漏探测，适用于家庭、工厂等多种场合', '	探测精准，反馈及时', '	可手动或通过手机远程控制阀门开关', '', '', '生命安全守护神', '');
INSERT INTO `oubao_goods_field` VALUES ('9', '/uploads/2016/05/301000004683.jpg', 'OZB-IWO800-A1', '/uploads/2016/03/111608549494.png', '', '', '<img src=\"/uploads/2016/03/231651237193.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '&nbsp;<img src=\"/uploads/2016/03/231651367908.png\" alt=\"\" />&nbsp;', '<img src=\"/uploads/2016/03/181358148032.png\" alt=\"\" /><img src=\"/uploads/2016/03/111611172130.png\" alt=\"\" /> \r\n<p>\r\n	<img src=\"/uploads/2016/03/231651528480.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111612173473.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111612483197.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111613091636.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/03/111613287207.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/111613514958.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', 'AC190V-AC250V', '', '≤80%', '', '', '0-65℃', '	兼具自动上锁及防夹伤功能', '	静音设计，人性化的缓起缓停，造就更舒适的生活环境', '	定时与联动操作，开启便捷生活模式', '	智能弹指之间 ， 让家随你而动', '', '优雅的艺术，贴心又细致', '');
INSERT INTO `oubao_goods_field` VALUES ('10', '/uploads/2016/05/301000379891.jpg', 'OZB-DC-A1', '/uploads/2016/03/111703153221.png', '', '', '', '', '<img src=\"/uploads/2016/03/181411072373.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/111704352367.png\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"/uploads/2016/03/231657449254.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111705207188.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111705551876.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/231658098047.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '<img src=\"/uploads/2016/03/111706445063.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/111706563053.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', '', '', '	自动闭合、遇阻停止，兼具防夹伤功能', '	双向通信，实时反馈，手机客户端可实时查看运行状态', '', '', '', '安全居家好帮手', '');
INSERT INTO `oubao_goods_field` VALUES ('11', '/uploads/2016/05/301000484550.jpg', 'OZB-C-A1', '/uploads/2016/03/181544232139.png', '', '', '<img src=\"/uploads/2016/03/181545572786.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/231704439299.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/181546271980.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/181546461435.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/231706255490.png\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"/uploads/2016/03/181548255765.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181549028475.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181549241691.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181549461087.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181550073501.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181550262077.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '<img src=\"/uploads/2016/03/181550566636.png\" alt=\"\" />', '<img src=\"/uploads/2016/03/181551107969.png\" alt=\"\" />', '', '', '', '', '', '', '	高分辨率提高画面即视感', '	云台设计扩大监控范围', '	双向语音对讲，可视化交流', '', '', '家庭安全的守护者', '');
INSERT INTO `oubao_goods_field` VALUES ('12', '/uploads/2016/05/301005528057.jpg', 'OZB-CL-A1', '/uploads/2016/03/181556065377.png', '', '', '&nbsp;\r\n<p>\r\n	<img src=\"/uploads/2016/03/181557236685.png\" alt=\"\" />&nbsp;\r\n</p>', '<img src=\"/uploads/2016/03/181557388458.png\" alt=\"\" />', '<p>\r\n	<img src=\"/uploads/2016/03/181557533485.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181558268706.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181558425349.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181559011384.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181559239082.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/181559457084.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/03/181559571418.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', '', '', '', '	多种灯光任意选，不同亮度随心控。', '	零闪频保护眼睛，还可定时、远程、联动操作', '', '', '', '给您一个多彩的世界', '');
INSERT INTO `oubao_goods_field` VALUES ('13', '/uploads/2016/06/031110262105.jpg', 'OZB-SMC-A1', '/uploads/2016/03/111729122966.png', '', '', '', '', '<p>\r\n	<img src=\"/uploads/2016/03/111729244589.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/03/111729429568.png\" alt=\"\" /> \r\n</p>\r\n<img src=\"/uploads/2016/03/231715246455.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/111731087899.png\" alt=\"\" /><br />\r\n<img src=\"/uploads/2016/03/111731249953.png\" alt=\"\" /><br />\r\n<p>\r\n	<img src=\"/uploads/2016/03/111732062371.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/03/111732185276.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '<img src=\"/uploads/2016/03/111732319818.png\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', '', '', '	静音设计，智能运行缓起缓停', '	远程操控，实时显示运行状态', '	智能联动，开启便捷生活模式', '', '', '品质生活，“指”在一键', '');
INSERT INTO `oubao_goods_field` VALUES ('14', '/uploads/2016/05/301002147994.png', '', '/uploads/2016/05/040937097569.png', null, null, '<img src=\"/uploads/2016/05/040953062994.png\" alt=\"\" />', '<img src=\"/uploads/2016/05/040953308262.png\" alt=\"\" />', '<p>\r\n	<img src=\"/uploads/2016/05/040954542785.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/040955137672.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/040955267885.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/040955449203.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/040956002885.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/040956128185.png\" alt=\"\" /> \r\n</p>', '', '<img src=\"/uploads/2016/05/040956221422.png\" alt=\"\" />', '<img src=\"/uploads/2016/05/040956294172.png\" alt=\"\" />', '', '', '', '', '', '', '	可在手机上监控灯的工作状态', '	可定时、联动、远程控制电灯', '	安装简单，操作方便，节能安全', '', '', '时尚生活   方便如“我”', '');
INSERT INTO `oubao_goods_field` VALUES ('15', '/uploads/2016/05/301002308510.png', '', '/uploads/2016/05/171556139651.png', null, null, '<img src=\"/uploads/2016/05/171556473133.png\" alt=\"\" />', '<p>\r\n	<img src=\"/uploads/2016/05/171557542488.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/171558168445.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/171558299237.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/171558566446.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/171559125187.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/uploads/2016/05/171559243873.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '<img src=\"/uploads/2016/05/171559357490.png\" alt=\"\" />', '<img src=\"/uploads/2016/05/171559432278.png\" alt=\"\" />', '', '', '', '', '', '', '	集双孔插座、三孔插座、插头、USB插孔多种功能于一体', '	实现美规、欧规、英规、国标多规格变形.', '	按钮控制插座的通断电，实时监测用电功率，并可随身携带.', '	安装简单，操作方便，节能安全', '', '精致生活   便捷有“我”', '');
INSERT INTO `oubao_goods_field` VALUES ('16', '/uploads/2016/06/011639235885.png', '', '/uploads/2016/06/011642264573.png', null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for oubao_labelcus
-- ----------------------------
DROP TABLE IF EXISTS `oubao_labelcus`;
CREATE TABLE `oubao_labelcus` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `body` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_labelcus
-- ----------------------------
INSERT INTO `oubao_labelcus` VALUES ('3', '软件介绍', '软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍', '2');
INSERT INTO `oubao_labelcus` VALUES ('4', '更新介绍', '<info>1.优化登录时loading显示</info>\r\n<info>2.新增查看作业试卷内容功能</info>\r\n<info>3.优化主菜单UI效果</info>\r\n<info>4.修复部分作业批改时崩溃</info>\r\n<info>5.修复断开网络后无人员清单显示，点击全选按钮崩溃</info>\r\n<info>6.修复部分作业批改时崩溃</info>\r\n<info>7.修复断开网络后无人员清单显示，点击全选按钮崩溃</info>', '1');
INSERT INTO `oubao_labelcus` VALUES ('6', '版本名称', 'v1.0.0.1', '1');
INSERT INTO `oubao_labelcus` VALUES ('5', '处理问号', '<?xml version=\"1.0\" encoding=\"utf-8\"?>', '1');
INSERT INTO `oubao_labelcus` VALUES ('7', '版本号', '23', '1');
INSERT INTO `oubao_labelcus` VALUES ('8', '允许最低版本', '5', '1');
INSERT INTO `oubao_labelcus` VALUES ('9', '电话', '0578-2199999', '1');
INSERT INTO `oubao_labelcus` VALUES ('10', '公司地址', '浙江省丽水市莲都区碧湖产业区碧兴街809号', '1');
INSERT INTO `oubao_labelcus` VALUES ('11', '备案号', '浙ICP备05004352号-2', '1');
INSERT INTO `oubao_labelcus` VALUES ('12', '版权所有', '版权所有', '1');
INSERT INTO `oubao_labelcus` VALUES ('13', '公司名称', '瓯宝安防科技股份有限公司', '1');

-- ----------------------------
-- Table structure for oubao_links
-- ----------------------------
DROP TABLE IF EXISTS `oubao_links`;
CREATE TABLE `oubao_links` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `taid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL,
  `image` char(200) NOT NULL,
  `gourl` char(200) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_links
-- ----------------------------
INSERT INTO `oubao_links` VALUES ('4', '0', '0', '中国联通', '/uploads/2014/01/061507477309.jpg', '', '1');
INSERT INTO `oubao_links` VALUES ('3', '0', '0', '中国移动', '/uploads/2014/01/061507289701.jpg', '', '1');
INSERT INTO `oubao_links` VALUES ('5', '0', '0', '中国电信', '/uploads/2014/01/061507595830.jpg', '', '1');

-- ----------------------------
-- Table structure for oubao_linkstype
-- ----------------------------
DROP TABLE IF EXISTS `oubao_linkstype`;
CREATE TABLE `oubao_linkstype` (
  `taid` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  PRIMARY KEY (`taid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_linkstype
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_member
-- ----------------------------
DROP TABLE IF EXISTS `oubao_member`;
CREATE TABLE `oubao_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL,
  `pass` char(32) NOT NULL,
  `email` char(100) NOT NULL,
  `gid` smallint(5) NOT NULL DEFAULT '1',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `token` char(35) NOT NULL,
  `tokentime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_member
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_member_field
-- ----------------------------
DROP TABLE IF EXISTS `oubao_member_field`;
CREATE TABLE `oubao_member_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_member_field
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_member_file
-- ----------------------------
DROP TABLE IF EXISTS `oubao_member_file`;
CREATE TABLE `oubao_member_file` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(30) NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `size` int(11) unsigned NOT NULL DEFAULT '0',
  `fields` char(20) NOT NULL,
  `hand` int(11) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `molds` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`uid`,`url`,`size`,`fields`,`hand`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_member_file
-- ----------------------------
INSERT INTO `oubao_member_file` VALUES ('73', '13', '', 'uploads/2012/12/131508249443.jpg', '16247', 'sdfg', '0', '16', 'message');
INSERT INTO `oubao_member_file` VALUES ('57', '0', '192.168.1.8', 'uploads/2012/12/061735275121.jpg', '13824', 'sdfg', '1735256009', '0', '');
INSERT INTO `oubao_member_file` VALUES ('55', '0', '192.168.1.8', 'uploads/2012/12/041558051712.jpg', '13824', 'sdfg', '0', '13', 'message');
INSERT INTO `oubao_member_file` VALUES ('52', '0', '192.168.1.8', 'uploads/2012/12/041553486594.jpg', '13824', 'sdfg', '0', '12', 'message');
INSERT INTO `oubao_member_file` VALUES ('51', '0', '192.168.1.8', 'uploads/2012/12/031244352468.jpg', '13824', 'asdf', '0', '11', 'message');

-- ----------------------------
-- Table structure for oubao_member_group
-- ----------------------------
DROP TABLE IF EXISTS `oubao_member_group`;
CREATE TABLE `oubao_member_group` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sys` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(20) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `submit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `filetype` char(255) NOT NULL,
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileallsize` int(10) unsigned NOT NULL DEFAULT '0',
  `discount_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_member_group
-- ----------------------------
INSERT INTO `oubao_member_group` VALUES ('1', '1', '游客', '0', '0', '0', 'jpg,gif,jpeg,png', '0', '0', '0', '0.00');
INSERT INTO `oubao_member_group` VALUES ('2', '1', '普通会员', '1', '0', '1', 'jpg,gif,jpeg,png', '200', '5000', '0', '0.00');

-- ----------------------------
-- Table structure for oubao_message
-- ----------------------------
DROP TABLE IF EXISTS `oubao_message`;
CREATE TABLE `oubao_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fmolds` char(20) NOT NULL,
  `faid` mediumint(8) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `retime` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `user` char(30) NOT NULL,
  `body` text NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `article` (`isshow`,`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_message
-- ----------------------------
INSERT INTO `oubao_message` VALUES ('18', '30', '', '0', '0', '姓名', '1413864260', '0', '0', '游客', 'dsasdaddsadsads', '');
INSERT INTO `oubao_message` VALUES ('19', '30', '', '0', '0', '山东财经大学（筹）2012年硕士研究生招生专业目录', '1415589761', '0', '0', '游客', 'dsdsdsdsdsd', '');
INSERT INTO `oubao_message` VALUES ('20', '30', '', '0', '0', '反馈', '1415590012', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('21', '30', '', '0', '0', '姓名', '1415758516', '0', '0', '游客', 'dsdsddsds', '');
INSERT INTO `oubao_message` VALUES ('29', '30', '', '0', '0', '反馈', '1418266389', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('30', '30', '', '0', '0', '苹果版', '1419848613', '0', '0', '游客', '苹果版什么时候出来?', '');
INSERT INTO `oubao_message` VALUES ('31', '30', '', '0', '0', '苹果版', '1419848617', '0', '0', '游客', '苹果版什么时候出来?', '');
INSERT INTO `oubao_message` VALUES ('32', '30', '', '0', '0', '苹果版', '1419848620', '0', '0', '游客', '苹果版什么时候出来?', '');
INSERT INTO `oubao_message` VALUES ('33', '30', '', '0', '0', 'IOS版软件什么时间可以用？', '1428912786', '0', '0', '游客', 'IOS版软件什么时间可以用？现在安卓版本也出问题。产品装上半年了一直用不了！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！', '');
INSERT INTO `oubao_message` VALUES ('34', '30', '', '0', '0', '肉牛', '1432052712', '0', '0', '游客', '不错的文章，内容十全十美.禁止此消息：nolinkok@163.com\r\n肉牛 http://www.xmten.com/', '');
INSERT INTO `oubao_message` VALUES ('35', '30', '', '0', '0', '对你们产品感兴趣', '1432796949', '0', '0', '游客', '看到联系方式请联系我！', '');
INSERT INTO `oubao_message` VALUES ('36', '30', '', '0', '0', '对你们产品感兴趣', '1432796952', '0', '0', '游客', '看到联系方式请联系我！', '');
INSERT INTO `oubao_message` VALUES ('37', '30', '', '0', '0', 'qer', '1436249869', '0', '0', '游客', 'qwer', '');
INSERT INTO `oubao_message` VALUES ('38', '30', '', '0', '0', '反馈', '1436433064', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('39', '30', '', '0', '0', '反馈', '1436433065', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('40', '30', '', '0', '0', '反馈', '1437123735', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('41', '30', '', '0', '0', '反馈', '1439172834', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('42', '30', '', '0', '0', '反馈', '1441165426', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('43', '30', '', '0', '0', '反馈', '1441421343', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('44', '30', '', '0', '0', 'YDiOxWneSzFF', '1445829074', '0', '0', '游客', 'cskh9R http://www.FyLitCl7Pf7kjQdDUOLQOuaxTXbj5iNG.com', '');
INSERT INTO `oubao_message` VALUES ('45', '30', '', '0', '0', '反馈', '1445829081', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('46', '30', '', '0', '0', 'bnxbMRkfRoNyxyqFO', '1445829085', '0', '0', '游客', 'Lzp4Vm http://www.FyLitCl7Pf7kjQdDUOLQOuaxTXbj5iNG.com', '');
INSERT INTO `oubao_message` VALUES ('47', '30', '', '0', '0', '反馈', '1446010415', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('48', '30', '', '0', '0', '反馈', '1447294544', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('49', '30', '', '0', '0', '加盟', '1447838372', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('50', '30', '', '0', '0', '加盟', '1447838373', '0', '0', '游客', '', '');
INSERT INTO `oubao_message` VALUES ('52', '30', '', '0', '0', '随碟附送', '1464576866', '0', '0', '游客', '松岛枫松岛枫松岛枫撒旦法撒旦飞洒', '');

-- ----------------------------
-- Table structure for oubao_message_field
-- ----------------------------
DROP TABLE IF EXISTS `oubao_message_field`;
CREATE TABLE `oubao_message_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `u_xueli` varchar(50) DEFAULT NULL,
  `u_nianlin` varchar(50) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mcell` varchar(255) DEFAULT NULL,
  `mqq` varchar(255) DEFAULT NULL,
  `memail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_message_field
-- ----------------------------
INSERT INTO `oubao_message_field` VALUES ('18', '', '', '是订单实打实', '13800138000', '32332', '323223@122121.com');
INSERT INTO `oubao_message_field` VALUES ('19', '', '', '是订单实打实', '13800138000', '32332', '323223@122121.com');
INSERT INTO `oubao_message_field` VALUES ('20', '', '', '占文', '13512345678', '45641321', '55446543@qq.com');
INSERT INTO `oubao_message_field` VALUES ('21', '', '', '是订单实打实', '13800138000', '32332', '323223@122121.com');
INSERT INTO `oubao_message_field` VALUES ('29', '', '', '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('30', null, null, '北京代理', '', '530833920', '530833920@qq.com');
INSERT INTO `oubao_message_field` VALUES ('31', null, null, '北京代理', '', '530833920', '530833920@qq.com');
INSERT INTO `oubao_message_field` VALUES ('32', null, null, '北京代理', '', '530833920', '530833920@qq.com');
INSERT INTO `oubao_message_field` VALUES ('33', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('34', null, null, '肉牛', '肉牛', '肉牛', 'jrkljrjcf@gmail.com');
INSERT INTO `oubao_message_field` VALUES ('35', null, null, '杨帆', '15842291890', '359893591', 'yf9748@163.com');
INSERT INTO `oubao_message_field` VALUES ('36', null, null, '杨帆', '15842291890', '359893591', 'yf9748@163.com');
INSERT INTO `oubao_message_field` VALUES ('37', null, null, 'qewr', 'qwer', 'ertfr', 'qwerqwe');
INSERT INTO `oubao_message_field` VALUES ('38', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('39', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('40', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('41', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('42', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('43', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('44', null, null, 'Bradley', '', 'LUQlovNBGWUgmuTwbk', 'lucas2d44@gmail.com');
INSERT INTO `oubao_message_field` VALUES ('45', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('46', null, null, 'Bradley', '', 'AoAkYnGsxOWNy', 'lucas2d44@gmail.com');
INSERT INTO `oubao_message_field` VALUES ('47', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('48', null, null, '', '', '', '');
INSERT INTO `oubao_message_field` VALUES ('49', null, null, '李生', '13302665677', '', '');
INSERT INTO `oubao_message_field` VALUES ('50', null, null, '李生', '13302665677', '', '');
INSERT INTO `oubao_message_field` VALUES ('52', null, null, '丽萨', '13758645210', '2244455588', '46464656@qq.com');

-- ----------------------------
-- Table structure for oubao_molds
-- ----------------------------
DROP TABLE IF EXISTS `oubao_molds`;
CREATE TABLE `oubao_molds` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `molddb` char(255) NOT NULL,
  `moldname` char(20) NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listimg` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `t_content` char(50) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `version` char(20) NOT NULL,
  `sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_molds
-- ----------------------------
INSERT INTO `oubao_molds` VALUES ('1', 'article', 'article', '文章', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'article.html', '1', '1.0', '1', '');
INSERT INTO `oubao_molds` VALUES ('6', 'message', 'message,message_field', '表单(留言)', '0', 'message.html', 'message.html', 'message.html', 'message.html', 'message.html', '1', '1.0', '1', 'N;');
INSERT INTO `oubao_molds` VALUES ('2', 'product', '', '下载', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'product.html', '1', '1.0', '1', 'a:2:{s:7:\"photo_w\";a:3:{i:0;s:15:\"图集缩略宽\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略宽，0表示继承系统设置\";}s:7:\"photo_h\";a:3:{i:0;s:15:\"图集缩略高\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略高，0表示继承系统设置\";}}');
INSERT INTO `oubao_molds` VALUES ('18', 'person', '', '人才招聘', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '0', '', '0', 'N;');
INSERT INTO `oubao_molds` VALUES ('21', 'goods', '', '产品', '0', 'list_index.html', 'list.html', 'list_image.html', 'list_body.html', 'content.html', '1', '', '0', 'N;');

-- ----------------------------
-- Table structure for oubao_order
-- ----------------------------
DROP TABLE IF EXISTS `oubao_order`;
CREATE TABLE `oubao_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `orderid` char(25) NOT NULL,
  `favorable` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `payment` char(50) NOT NULL,
  `paymentno` char(100) NOT NULL,
  `paytime` int(10) unsigned NOT NULL DEFAULT '0',
  `actualpay` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `info` text NOT NULL,
  `unote` text NOT NULL,
  `rnote` text NOT NULL,
  `anote` text NOT NULL,
  `goods` text NOT NULL,
  `logistics` char(100) NOT NULL,
  `virtual` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendgoods` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_order
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_payment
-- ----------------------------
DROP TABLE IF EXISTS `oubao_payment`;
CREATE TABLE `oubao_payment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pay` char(30) NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL,
  `body` text NOT NULL,
  `key` text NOT NULL,
  `keyv` text NOT NULL,
  `orders` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_payment
-- ----------------------------
INSERT INTO `oubao_payment` VALUES ('3', 'alipay', '0', '支付宝', '国内最大的支付平台，支持多家银行在线支付。<a href=\"https://b.alipay.com\" target=\"_blank\">需要签约支付宝商家服务，点此进入</a>，强烈建议使用“即时到帐”接口，若无法申请“即时到帐”接口，可选择申请财付通“即时到帐”接口，相比支付宝容易审核。', 'a:4:{s:7:\"service\";s:12:\"接口类型\";s:4:\"user\";s:21:\"签约支付宝账号\";s:3:\"pid\";s:18:\"合作者身份PID\";s:3:\"key\";s:18:\"安全校验码Key\";}', 'a:4:{s:7:\"service\";s:1:\"1\";s:4:\"user\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '99');
INSERT INTO `oubao_payment` VALUES ('4', 'tenpay', '0', '财付通', '腾讯旗下支付平台，支持多家银行在线支付。<a href=\"https://www.tenpay.com/v2/mch/mch_intro.shtml\" target=\"_blank\">签约财付通商家服务，点此进入</a>，强烈建议使用“即时到帐”接口。', 'a:3:{s:7:\"service\";s:12:\"接口类型\";s:3:\"pid\";s:9:\"商户号\";s:3:\"key\";s:6:\"密钥\";}', 'a:3:{s:7:\"service\";s:1:\"1\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}', '98');
INSERT INTO `oubao_payment` VALUES ('2', 'cashbalance', '1', '余额支付', '使用会员账户余额支付。', '', 'N;', '1');
INSERT INTO `oubao_payment` VALUES ('1', 'offline', '1', '线下付款', '线下收款，收款后需手工在后台修改订单状态。', '', 'N;', '0');

-- ----------------------------
-- Table structure for oubao_person
-- ----------------------------
DROP TABLE IF EXISTS `oubao_person`;
CREATE TABLE `oubao_person` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `orders` int(10) NOT NULL DEFAULT '0',
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `person` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_person
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_person_field
-- ----------------------------
DROP TABLE IF EXISTS `oubao_person_field`;
CREATE TABLE `oubao_person_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gangwei` varchar(100) DEFAULT NULL,
  `xueli` char(30) DEFAULT NULL,
  `nianlin` varchar(50) DEFAULT NULL,
  `xingbie` char(30) DEFAULT NULL,
  `jingyan` char(30) DEFAULT NULL,
  `jieshao` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_person_field
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_product
-- ----------------------------
DROP TABLE IF EXISTS `oubao_product`;
CREATE TABLE `oubao_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `style` char(60) NOT NULL,
  `trait` char(50) NOT NULL,
  `gourl` char(255) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `htmlurl` char(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `record` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `litpic` char(255) NOT NULL,
  `photo` text NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `virtual` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logistics` text NOT NULL,
  `mrank` smallint(5) NOT NULL DEFAULT '0',
  `mgold` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `keywords` char(200) NOT NULL,
  `description` char(255) NOT NULL,
  `user` char(30) NOT NULL,
  `usertype` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orbye` (`orders`,`addtime`),
  KEY `product` (`isshow`,`tid`,`trait`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_product
-- ----------------------------
INSERT INTO `oubao_product` VALUES ('21', '25', '0', '1', 'O-Home', '', '', '', '', '', '1463135220', '0', '4066', '', '', '0', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('27', '38', '0', '1', '平移窗', '', '', '', '', '', '1452233520', '0', '0', '', '', '10', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('26', '38', '0', '1', '智能遥控', '', '', '', '', '', '1452233220', '0', '0', '', '', '12', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('28', '38', '0', '1', '智能电动窗帘', '', '', '', '', '', '1452233520', '0', '0', '', '', '4', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('29', '38', '0', '1', '智能插座', '', '', '', '', '', '1452233580', '0', '0', '', '', '11', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('30', '38', '0', '1', '智能锁', '', '', '', '', '', '1452233580', '0', '0', '', '', '9', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('31', '38', '0', '1', '网络摄像头', '', '', '', '', '', '1452233580', '0', '0', '', '', '7', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('32', '38', '0', '1', '水浸报警器', '', '', '', '', '', '1452233580', '0', '0', '', '', '5', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('33', '38', '0', '1', '七彩灯', '', '', '', '', '', '1452233640', '0', '0', '', '', '3', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('34', '38', '0', '1', '煤气报警器', '', '', '', '', '', '1452233640', '0', '0', '', '', '6', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('35', '38', '0', '1', '电动闭门器', '', '', '', '', '', '1452821640', '0', '0', '', '', '8', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('36', '38', '0', '1', '单火触摸开关', '', '', '', '', '', '1458524760', '0', '0', '', '', '2', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('37', '38', '0', '1', '移动插座', '', '', '', '', '', '1458524820', '0', '0', '', '', '1', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('38', '38', '0', '1', '瓯宝产品画册', '', '', '', '', '', '1458804960', '0', '0', '', '', '0', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');
INSERT INTO `oubao_product` VALUES ('39', '38', '0', '1', '零火触摸开关', '', '', '', '', '', '1462506540', '0', '0', '', '', '0', '0.00', '0', '0', '0', '0.00', '', '', 'admin', '0');

-- ----------------------------
-- Table structure for oubao_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `oubao_product_attribute`;
CREATE TABLE `oubao_product_attribute` (
  `aid` mediumint(8) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  KEY `product_attribute` (`aid`,`tid`,`sid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `oubao_product_discount`;
CREATE TABLE `oubao_product_discount` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_product_discount
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_product_field
-- ----------------------------
DROP TABLE IF EXISTS `oubao_product_field`;
CREATE TABLE `oubao_product_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  `android` char(255) DEFAULT NULL,
  `apple` char(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `system` varchar(255) DEFAULT NULL,
  `androidcode` char(255) DEFAULT NULL,
  `applecode` char(255) DEFAULT NULL,
  `versionName` varchar(255) DEFAULT NULL,
  `minversionCode` varchar(255) DEFAULT NULL,
  `about` varchar(500) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `iosbanben` varchar(255) DEFAULT NULL,
  `iosbig` varchar(255) DEFAULT NULL,
  `iossys` varchar(255) DEFAULT NULL,
  `wendang` char(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_product_field
-- ----------------------------
INSERT INTO `oubao_product_field` VALUES ('21', '<p>\r\n	<span style=\"color:#337fe5;\">&nbsp;</span><span style=\"color:#337fe5;font-size:14px;\"><span style=\"color:#337fe5;\">1.</span><a href=\"/uploads/2014/11/201604305616.rar\" target=\"_blank\"><span style=\"color:#337fe5;\">智能电动窗帘（手机版）</span></a></span><a href=\"/uploads/2014/11/191727451108.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\"></span><span style=\"color:#337fe5;font-size:14px;\"></span></a><a href=\"/uploads/2014/11/191713392300.rar\" target=\"_blank\"></a><a href=\"/uploads/2014/11/191712562885.rar\" target=\"_blank\"></a><a href=\"/uploads/2014/11/191708223687.rar\" target=\"_blank\"></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.</span><a href=\"/uploads/2014/11/191726436413.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">煤气报警器</span></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;3.</span><a href=\"/uploads/2014/11/191727064029.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">水浸报警器</span></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.</span><a href=\"/uploads/2014/11/191737069134.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">指纹锁控制器</span></a><a href=\"/uploads/2014/11/191727266999.rar\" target=\"_blank\"></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.</span><a href=\"/uploads/2014/11/191728099595.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">网络摄像头</span></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<span style=\"font-size:14px;\"><span style=\"color:#337fe5;\">&nbsp;&nbsp;&nbsp;</span><span style=\"color:#337fe5;\"><span style=\"color:#337fe5;\">&nbsp; 6.</span><a href=\"/uploads/2014/11/201605065649.rar\" target=\"_blank\"><span style=\"color:#337fe5;\">闭门器（手机版）</span></a><a href=\"/uploads/2014/11/201603292151.rar\" target=\"_blank\"></a></span></span><a href=\"/uploads/2014/11/191738031072.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\"></span></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7.</span><a href=\"/uploads/2014/11/191728576829.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">智能插座</span></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8.</span><a href=\"/uploads/2014/11/191737427234.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">七彩灯</span></a><a href=\"/uploads/2014/11/191729183654.rar\" target=\"_blank\"></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size:14px;\">9.</span></span><a href=\"/uploads/2014/11/191729471321.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\"></span></a><a href=\"/uploads/2015/01/231636371855.rar\" target=\"_blank\"><span style=\"color:#337FE5;font-size:14px;\">智能开窗器</span></a><span style=\"color:#337fe5;font-size:14px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10.</span><a href=\"/uploads/2014/11/191730073426.rar\" target=\"_blank\"><span style=\"color:#337fe5;font-size:14px;\">智能遥</span><span style=\"color:#337fe5;font-size:14px;\">控</span></a> \r\n<p>\r\n	<span style=\"color:#337fe5;\">&nbsp;<span style=\"color:#337FE5;font-size:14px;\">11.</span><a href=\"/uploads/2015/01/231637222780.rar\" target=\"_blank\"><span style=\"color:#337FE5;\"></span></a><a href=\"/uploads/2015/01/231646241691.rar\" target=\"_blank\"><span style=\"color:#337FE5;font-size:14px;\">智能开窗器安装说明书</span></a></span> \r\n</p>', '/uploads/2015/07/131743313537.apk', 'https://ob-home.com/download/o-home.html', '46', '13.8M', 'Android2.2以上', '/uploads/2016/05/301045073413.png', '/uploads/2016/05/301045021485.png', 'V3.5.2', '1', '<info>1.新增窗帘校准和反向功能</info>\r\n<info>2.新增X系列摄像机声波配置WIFI功能</info>', 'O-Home', 'V1.1.9', '44.3M', 'IOS7以上', null);
INSERT INTO `oubao_product_field` VALUES ('25', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oubao_product_field` VALUES ('26', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101117358114.pdf');
INSERT INTO `oubao_product_field` VALUES ('27', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101118049071.pdf');
INSERT INTO `oubao_product_field` VALUES ('28', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101119414938.pdf');
INSERT INTO `oubao_product_field` VALUES ('29', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101117526620.pdf');
INSERT INTO `oubao_product_field` VALUES ('30', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101118215851.pdf');
INSERT INTO `oubao_product_field` VALUES ('31', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101118582873.pdf');
INSERT INTO `oubao_product_field` VALUES ('32', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101119281753.pdf');
INSERT INTO `oubao_product_field` VALUES ('33', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101119537620.pdf');
INSERT INTO `oubao_product_field` VALUES ('34', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101119132930.pdf');
INSERT INTO `oubao_product_field` VALUES ('35', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101118345967.pdf');
INSERT INTO `oubao_product_field` VALUES ('36', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101120147300.pdf');
INSERT INTO `oubao_product_field` VALUES ('37', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101120327831.pdf');
INSERT INTO `oubao_product_field` VALUES ('38', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/03/241509269000.rar');
INSERT INTO `oubao_product_field` VALUES ('39', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '/uploads/2016/05/101120474578.pdf');

-- ----------------------------
-- Table structure for oubao_product_virtual
-- ----------------------------
DROP TABLE IF EXISTS `oubao_product_virtual`;
CREATE TABLE `oubao_product_virtual` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `number` char(100) NOT NULL,
  `virtual` varchar(500) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_product_virtual
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_sales_record
-- ----------------------------
DROP TABLE IF EXISTS `oubao_sales_record`;
CREATE TABLE `oubao_sales_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  `user` char(20) NOT NULL,
  `num` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `stime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_sales_record
-- ----------------------------

-- ----------------------------
-- Table structure for oubao_special
-- ----------------------------
DROP TABLE IF EXISTS `oubao_special`;
CREATE TABLE `oubao_special` (
  `sid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `molds` char(20) NOT NULL,
  `name` char(50) NOT NULL,
  `litpic` char(200) NOT NULL,
  `title` char(100) NOT NULL,
  `keywords` char(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `gourl` char(255) NOT NULL,
  `isindex` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `t_index` char(50) NOT NULL,
  `t_list` char(50) NOT NULL,
  `t_listb` char(50) NOT NULL,
  `listnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `htmldir` char(100) NOT NULL,
  `htmlfile` char(100) NOT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_special
-- ----------------------------
INSERT INTO `oubao_special` VALUES ('1', 'article', '专题演示', '', 'asdfasdf', '', '', '', '1', 'specia.html', 'specia_list.html', 'specia_body.html', '20', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for oubao_sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `oubao_sysconfig`;
CREATE TABLE `oubao_sysconfig` (
  `name` char(35) NOT NULL,
  `sets` varchar(500) NOT NULL,
  UNIQUE KEY `sysconfig` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_sysconfig
-- ----------------------------
INSERT INTO `oubao_sysconfig` VALUES ('sendmail', 'a:4:{s:4:\"smtp\";s:0:\"\";s:4:\"mail\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"name\";s:16:\"DOYO建站系统\";}');

-- ----------------------------
-- Table structure for oubao_traits
-- ----------------------------
DROP TABLE IF EXISTS `oubao_traits`;
CREATE TABLE `oubao_traits` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `molds` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_traits
-- ----------------------------
INSERT INTO `oubao_traits` VALUES ('1', '头条', 'article');
INSERT INTO `oubao_traits` VALUES ('2', '推荐', 'article');
INSERT INTO `oubao_traits` VALUES ('3', '头条', 'product');
INSERT INTO `oubao_traits` VALUES ('4', '推荐', 'product');

-- ----------------------------
-- Table structure for oubao_update
-- ----------------------------
DROP TABLE IF EXISTS `oubao_update`;
CREATE TABLE `oubao_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` char(10) NOT NULL,
  `newupdate` char(15) NOT NULL,
  `uptime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oubao_update
-- ----------------------------
