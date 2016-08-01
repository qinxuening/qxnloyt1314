<?php die();?>DROP TABLE IF EXISTS `oubao_account`
CREATE TABLE `oubao_account` (  `id` int(10) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `orderid` char(30) NOT NULL default '0',  `money` decimal(10,2) NOT NULL default '0.00',  `type` tinyint(3) unsigned NOT NULL default '0',  `custom` varchar(200) NOT NULL,  `payment` char(50) NOT NULL,  `paymenttype` tinyint(1) unsigned NOT NULL default '1',  `paymentno` char(100) NOT NULL,  `molds` char(30) NOT NULL,  `aid` mediumint(8) unsigned NOT NULL default '0',  `addtime` int(10) unsigned NOT NULL default '0',  `auser` char(30) NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_admin_group`
CREATE TABLE `oubao_admin_group` (  `gid` smallint(5) unsigned NOT NULL auto_increment,  `name` char(20) NOT NULL,  `audit` tinyint(1) unsigned NOT NULL default '0',  `oneself` tinyint(1) unsigned NOT NULL default '0',  `paction` text NOT NULL,  PRIMARY KEY  (`gid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_admin_per`
CREATE TABLE `oubao_admin_per` (  `pid` tinyint(5) unsigned NOT NULL auto_increment,  `action` char(50) NOT NULL,  `name` char(20) NOT NULL,  `up` tinyint(5) NOT NULL default '0',  `no` tinyint(1) unsigned NOT NULL default '0',  `orders` int(10) unsigned NOT NULL default '0',  `molds` char(30) NOT NULL,  PRIMARY KEY  (`pid`)) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_admin_user`
CREATE TABLE `oubao_admin_user` (  `auid` smallint(5) unsigned NOT NULL auto_increment,  `auser` char(20) NOT NULL,  `apass` char(32) NOT NULL,  `aname` char(30) NOT NULL,  `amail` char(100) NOT NULL,  `atel` char(100) NOT NULL,  `level` tinyint(1) unsigned NOT NULL default '0',  `gid` smallint(5) unsigned NOT NULL default '0',  `pclasstype` text NOT NULL,  PRIMARY KEY  (`auid`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_ads`
CREATE TABLE `oubao_ads` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `taid` smallint(5) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `name` char(100) NOT NULL,  `type` tinyint(1) unsigned NOT NULL default '0',  `adsw` smallint(5) unsigned NOT NULL default '0',  `adsh` smallint(5) unsigned NOT NULL default '0',  `adfile` char(200) NOT NULL,  `body` text NOT NULL,  `gourl` char(200) NOT NULL,  `target` char(8) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_adstype`
CREATE TABLE `oubao_adstype` (  `taid` smallint(5) NOT NULL auto_increment,  `name` char(100) NOT NULL,  `adsw` smallint(5) unsigned NOT NULL default '0',  `adsh` smallint(5) unsigned NOT NULL default '0',  PRIMARY KEY  (`taid`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_article`
CREATE TABLE `oubao_article` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `litpic` char(255) NOT NULL,  `orders` int(10) NOT NULL default '0',  `mrank` smallint(5) NOT NULL default '0',  `mgold` decimal(10,2) unsigned NOT NULL default '0.00',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `article` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_article_field`
CREATE TABLE `oubao_article_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `body` mediumtext NOT NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_attribute`
CREATE TABLE `oubao_attribute` (  `sid` mediumint(8) unsigned NOT NULL auto_increment,  `tid` mediumint(8) unsigned NOT NULL,  `name` char(100) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `orders` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`sid`),  KEY `attribute` (`tid`,`isshow`),  KEY `attribute_orbye` (`orders`)) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_attribute_type`
CREATE TABLE `oubao_attribute_type` (  `tid` mediumint(8) unsigned NOT NULL auto_increment,  `name` char(100) NOT NULL,  `classtype` text NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `orders` int(10) NOT NULL default '0',  PRIMARY KEY  (`tid`)) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_classtype`
CREATE TABLE `oubao_classtype` (  `tid` smallint(5) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `pid` smallint(5) unsigned NOT NULL default '0',  `classname` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `litpic` char(200) NOT NULL,  `title` char(100) NOT NULL,  `keywords` char(255) NOT NULL,  `description` varchar(300) NOT NULL,  `isindex` tinyint(1) unsigned NOT NULL default '1',  `t_index` char(50) NOT NULL,  `t_list` char(50) NOT NULL,  `t_listimg` char(50) NOT NULL,  `t_listb` char(50) NOT NULL,  `t_content` char(50) NOT NULL,  `listnum` mediumint(8) unsigned NOT NULL default '0',  `htmldir` char(100) NOT NULL,  `htmlfile` char(100) NOT NULL,  `mrank` smallint(5) NOT NULL default '0',  `msubmit` smallint(5) NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `body` mediumtext NOT NULL,  `mshow` tinyint(1) unsigned NOT NULL default '1',  `imgw` smallint(5) unsigned NOT NULL default '0',  `imgh` smallint(5) unsigned NOT NULL default '0',  `unit` char(20) NOT NULL,  PRIMARY KEY  (`tid`)) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_comment`
CREATE TABLE `oubao_comment` (  `cid` mediumint(8) unsigned NOT NULL auto_increment,  `aid` mediumint(8) unsigned NOT NULL,  `molds` char(20) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '0',  `body` text NOT NULL,  `reply` text NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `retime` int(10) unsigned NOT NULL default '0',  `user` char(30) NOT NULL,  `ruser` char(30) NOT NULL,  PRIMARY KEY  (`cid`)) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_custom`
CREATE TABLE `oubao_custom` (  `id` smallint(8) unsigned NOT NULL auto_increment,  `name` char(200) NOT NULL,  `dir` char(100) NOT NULL,  `template` char(100) NOT NULL,  `file` char(200) NOT NULL,  `html` tinyint(1) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_fields`
CREATE TABLE `oubao_fields` (  `fid` mediumint(8) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `fieldsname` char(20) NOT NULL,  `fields` char(20) NOT NULL,  `fieldstype` char(20) NOT NULL,  `fieldslong` smallint(5) unsigned NOT NULL default '0',  `selects` text NOT NULL,  `fieldorder` int(10) NOT NULL default '0',  `issubmit` tinyint(1) unsigned NOT NULL default '1',  `lists` tinyint(1) unsigned NOT NULL default '0',  `fieldshow` tinyint(1) unsigned NOT NULL default '1',  `types` text NOT NULL,  `contingency` char(20) NOT NULL,  `imgw` smallint(6) NOT NULL default '0',  `imgh` smallint(6) NOT NULL default '0',  PRIMARY KEY  (`fid`)) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_funs`
CREATE TABLE `oubao_funs` (  `fid` smallint(5) unsigned NOT NULL auto_increment,  `funs` char(20) NOT NULL,  `fundb` char(255) NOT NULL,  `name` char(20) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `afiles` text NOT NULL,  `version` char(20) NOT NULL,  PRIMARY KEY  (`fid`)) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_goods`
CREATE TABLE `oubao_goods` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `mrank` smallint(5) NOT NULL default '0',  `mgold` int(10) unsigned NOT NULL default '0',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `goods` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_goods_field`
CREATE TABLE `oubao_goods_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `simg` char(255) default NULL,  `xinghao` varchar(255) default NULL,  `bsimg` char(255) default NULL,  `tedian` varchar(500) default NULL,  `canshu` varchar(500) default NULL,  `gaikuang` text,  `shuoming` text,  `peizhi` text,  `gongneng` text,  `shezhi` text,  `jiejue` text,  `dianya` varchar(255) default NULL,  `hongwai` varchar(255) default NULL,  `shidu` varchar(255) default NULL,  `dianliu` varchar(255) default NULL,  `sheping` varchar(255) default NULL,  `wendu` varchar(255) default NULL,  `tedian1` varchar(255) default NULL,  `tedian2` varchar(255) default NULL,  `tedian3` varchar(255) default NULL,  `tedian4` varchar(255) default NULL,  `tedian5` varchar(255) default NULL,  `title2` varchar(255) default NULL,  `title3` varchar(255) default NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_goodscart`
CREATE TABLE `oubao_goodscart` (  `id` int(10) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `aid` mediumint(8) unsigned NOT NULL default '0',  `num` mediumint(8) unsigned NOT NULL default '1',  `attribute` text NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_labelcus`
CREATE TABLE `oubao_labelcus` (  `id` smallint(5) NOT NULL auto_increment,  `name` char(50) NOT NULL,  `body` text NOT NULL,  `type` tinyint(1) NOT NULL default '1',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_links`
CREATE TABLE `oubao_links` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `taid` smallint(5) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `name` char(100) NOT NULL,  `image` char(200) NOT NULL,  `gourl` char(200) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_linkstype`
CREATE TABLE `oubao_linkstype` (  `taid` smallint(5) NOT NULL auto_increment,  `name` char(100) NOT NULL,  PRIMARY KEY  (`taid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_member`
CREATE TABLE `oubao_member` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `user` char(20) NOT NULL,  `pass` char(32) NOT NULL,  `email` char(100) NOT NULL,  `gid` smallint(5) NOT NULL default '1',  `money` decimal(10,2) NOT NULL default '0.00',  `regtime` int(10) unsigned NOT NULL default '0',  `token` char(35) NOT NULL,  `tokentime` int(11) NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_member_field`
CREATE TABLE `oubao_member_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_member_file`
CREATE TABLE `oubao_member_file` (  `id` int(8) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `ip` char(30) NOT NULL default '0',  `url` char(255) NOT NULL,  `size` int(11) unsigned NOT NULL default '0',  `fields` char(20) NOT NULL,  `hand` int(11) unsigned NOT NULL default '0',  `aid` mediumint(8) unsigned NOT NULL default '0',  `molds` char(20) NOT NULL,  PRIMARY KEY  (`id`),  UNIQUE KEY `user` (`uid`,`url`,`size`,`fields`,`hand`)) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_member_group`
CREATE TABLE `oubao_member_group` (  `gid` smallint(5) unsigned NOT NULL auto_increment,  `sys` smallint(5) unsigned NOT NULL default '0',  `name` char(20) NOT NULL,  `weight` int(11) NOT NULL default '0',  `audit` tinyint(1) unsigned NOT NULL default '0',  `submit` tinyint(1) unsigned NOT NULL default '0',  `filetype` char(255) NOT NULL,  `filesize` int(10) unsigned NOT NULL default '0',  `fileallsize` int(10) unsigned NOT NULL default '0',  `discount_type` tinyint(1) unsigned NOT NULL default '0',  `discount` decimal(10,2) unsigned NOT NULL default '0.00',  PRIMARY KEY  (`gid`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_message`
CREATE TABLE `oubao_message` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `fmolds` char(20) NOT NULL,  `faid` mediumint(8) NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `retime` int(10) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `user` char(30) NOT NULL,  `body` text NOT NULL,  `reply` text NOT NULL,  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `article` (`isshow`,`tid`)) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_message_field`
CREATE TABLE `oubao_message_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `u_xueli` varchar(50) default NULL,  `u_nianlin` varchar(50) default NULL,  `mname` varchar(255) default NULL,  `mcell` varchar(255) default NULL,  `mqq` varchar(255) default NULL,  `memail` varchar(255) default NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_molds`
CREATE TABLE `oubao_molds` (  `mid` smallint(5) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `molddb` char(255) NOT NULL,  `moldname` char(20) NOT NULL,  `orders` int(10) NOT NULL default '0',  `t_index` char(50) NOT NULL,  `t_list` char(50) NOT NULL,  `t_listimg` char(50) NOT NULL,  `t_listb` char(50) NOT NULL,  `t_content` char(50) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  `version` char(20) NOT NULL,  `sys` tinyint(1) unsigned NOT NULL default '0',  `config` text NOT NULL,  PRIMARY KEY  (`mid`)) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_order`
CREATE TABLE `oubao_order` (  `id` int(10) unsigned NOT NULL auto_increment,  `uid` mediumint(8) unsigned NOT NULL default '0',  `orderid` char(25) NOT NULL,  `favorable` decimal(10,2) unsigned NOT NULL default '0.00',  `state` tinyint(1) unsigned NOT NULL default '0',  `addtime` int(10) unsigned NOT NULL default '0',  `payment` char(50) NOT NULL,  `paymentno` char(100) NOT NULL,  `paytime` int(10) unsigned NOT NULL default '0',  `actualpay` decimal(10,2) unsigned NOT NULL default '0.00',  `info` text NOT NULL,  `unote` text NOT NULL,  `rnote` text NOT NULL,  `anote` text NOT NULL,  `goods` text NOT NULL,  `logistics` char(100) NOT NULL,  `virtual` tinyint(1) unsigned NOT NULL default '0',  `sendgoods` text NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_payment`
CREATE TABLE `oubao_payment` (  `id` smallint(5) unsigned NOT NULL auto_increment,  `pay` char(30) NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '0',  `name` char(100) NOT NULL,  `body` text NOT NULL,  `key` text NOT NULL,  `keyv` text NOT NULL,  `orders` int(11) NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_person`
CREATE TABLE `oubao_person` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `orders` int(10) NOT NULL default '0',  `mrank` smallint(5) NOT NULL default '0',  `mgold` int(10) unsigned NOT NULL default '0',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `person` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_person_field`
CREATE TABLE `oubao_person_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `gangwei` varchar(100) default NULL,  `xueli` char(30) default NULL,  `nianlin` varchar(50) default NULL,  `xingbie` char(30) default NULL,  `jingyan` char(30) default NULL,  `jieshao` text,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_product`
CREATE TABLE `oubao_product` (  `id` mediumint(8) unsigned NOT NULL auto_increment,  `tid` smallint(5) unsigned NOT NULL default '0',  `sid` smallint(5) unsigned NOT NULL default '0',  `isshow` tinyint(1) unsigned NOT NULL default '0',  `title` char(100) NOT NULL,  `style` char(60) NOT NULL,  `trait` char(50) NOT NULL,  `gourl` char(255) NOT NULL,  `htmlfile` char(100) NOT NULL,  `htmlurl` char(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `record` int(10) unsigned NOT NULL default '0',  `hits` int(10) unsigned NOT NULL default '0',  `litpic` char(255) NOT NULL,  `photo` text NOT NULL,  `orders` int(10) NOT NULL default '0',  `price` decimal(10,2) unsigned NOT NULL default '0.00',  `virtual` tinyint(1) unsigned NOT NULL default '0',  `logistics` text NOT NULL,  `mrank` smallint(5) NOT NULL default '0',  `mgold` decimal(10,2) unsigned NOT NULL default '0.00',  `keywords` char(200) NOT NULL,  `description` char(255) NOT NULL,  `user` char(30) NOT NULL,  `usertype` tinyint(2) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  KEY `orbye` (`orders`,`addtime`),  KEY `product` (`isshow`,`tid`,`trait`,`sid`)) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_product_attribute`
CREATE TABLE `oubao_product_attribute` (  `aid` mediumint(8) unsigned NOT NULL,  `tid` mediumint(8) unsigned NOT NULL,  `sid` mediumint(8) unsigned NOT NULL,  `price` decimal(10,2) NOT NULL default '0.00',  KEY `product_attribute` (`aid`,`tid`,`sid`),  KEY `aid` (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_product_discount`
CREATE TABLE `oubao_product_discount` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `mgid` smallint(5) unsigned NOT NULL default '0',  `type` tinyint(1) unsigned NOT NULL default '0',  `discount` decimal(10,2) unsigned NOT NULL default '0.00',  KEY `aid` (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_product_field`
CREATE TABLE `oubao_product_field` (  `aid` mediumint(8) unsigned NOT NULL default '0',  `body` mediumtext NOT NULL,  `android` char(255) default NULL,  `apple` char(255) default NULL,  `version` varchar(255) default NULL,  `size` varchar(255) default NULL,  `system` varchar(255) default NULL,  `androidcode` char(255) default NULL,  `applecode` char(255) default NULL,  `versionName` varchar(255) default NULL,  `minversionCode` varchar(255) default NULL,  `about` varchar(500) default NULL,  `fileName` varchar(255) default NULL,  PRIMARY KEY  (`aid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_product_virtual`
CREATE TABLE `oubao_product_virtual` (  `id` int(8) unsigned NOT NULL auto_increment,  `aid` mediumint(8) unsigned NOT NULL default '0',  `number` char(100) NOT NULL,  `virtual` varchar(500) NOT NULL,  `state` tinyint(1) unsigned NOT NULL default '0',  `oid` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_sales_record`
CREATE TABLE `oubao_sales_record` (  `id` int(10) unsigned NOT NULL auto_increment,  `aid` mediumint(8) unsigned NOT NULL default '0',  `oid` int(10) unsigned NOT NULL default '0',  `user` char(20) NOT NULL,  `num` mediumint(6) unsigned NOT NULL default '0',  `stime` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`,`aid`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_special`
CREATE TABLE `oubao_special` (  `sid` smallint(5) unsigned NOT NULL auto_increment,  `molds` char(20) NOT NULL,  `name` char(50) NOT NULL,  `litpic` char(200) NOT NULL,  `title` char(100) NOT NULL,  `keywords` char(255) NOT NULL,  `description` varchar(300) NOT NULL,  `gourl` char(255) NOT NULL,  `isindex` tinyint(1) unsigned NOT NULL default '1',  `t_index` char(50) NOT NULL,  `t_list` char(50) NOT NULL,  `t_listb` char(50) NOT NULL,  `listnum` mediumint(8) unsigned NOT NULL default '0',  `htmldir` char(100) NOT NULL,  `htmlfile` char(100) NOT NULL,  `orders` int(10) NOT NULL default '0',  `body` mediumtext NOT NULL,  `isshow` tinyint(1) unsigned NOT NULL default '1',  PRIMARY KEY  (`sid`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_sysconfig`
CREATE TABLE `oubao_sysconfig` (  `name` char(35) NOT NULL,  `sets` varchar(500) NOT NULL,  UNIQUE KEY `sysconfig` (`name`)) ENGINE=MyISAM DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_traits`
CREATE TABLE `oubao_traits` (  `id` smallint(5) unsigned NOT NULL auto_increment,  `name` char(50) NOT NULL,  `molds` char(20) NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
DROP TABLE IF EXISTS `oubao_update`
CREATE TABLE `oubao_update` (  `id` int(11) NOT NULL auto_increment,  `version` char(10) NOT NULL,  `newupdate` char(15) NOT NULL,  `uptime` int(10) unsigned NOT NULL,  PRIMARY KEY  (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8
INSERT INTO `oubao_admin_group` VALUES('1','录入�\�','0','0',',a_html,a_article_add,a_article_edit,a_product,a_product_add,a_product_edit,a_product_del,a_product_audit,a_message,a_message_edit,a_message_del,a_message_audit,a_article_index,a_classtypes_index,a_fields_info,a_adminuser_edituser,uploads,a_label,a_sys_ecache,a_product_index,a_goods_attribute_ajax,a_channel,channel_person_index,')
INSERT INTO `oubao_admin_per` VALUES('1','a_article','管理','0','0','20','article')
INSERT INTO `oubao_admin_per` VALUES('2','a_classtypes','栏目管理','0','0','96','')
INSERT INTO `oubao_admin_per` VALUES('3','a_fields','自定义字段管�\�','37','0','29','')
INSERT INTO `oubao_admin_per` VALUES('4','a_article_index','列表','1','1','0','')
INSERT INTO `oubao_admin_per` VALUES('5','a_article_add','添加','1','0','0','')
INSERT INTO `oubao_admin_per` VALUES('6','a_article_edit','编辑','1','0','0','')
INSERT INTO `oubao_admin_per` VALUES('7','a_article_del','删除','1','0','0','')
INSERT INTO `oubao_admin_per` VALUES('8','a_article_audit','审核','1','0','0','')
INSERT INTO `oubao_admin_per` VALUES('9','a_classtypes_index','栏目列表','2','1','0','')
INSERT INTO `oubao_admin_per` VALUES('10','a_classtypes_add','栏目添加','2','0','0','')
INSERT INTO `oubao_admin_per` VALUES('11','a_classtypes_edit','栏目编辑','2','0','0','')
INSERT INTO `oubao_admin_per` VALUES('12','a_classtypes_del','栏目删除','2','0','0','')
INSERT INTO `oubao_admin_per` VALUES('13','a_molds','频道设置','37','0','30','')
INSERT INTO `oubao_admin_per` VALUES('17','a_adminuser','管理员管�\�','36','0','29','')
INSERT INTO `oubao_admin_per` VALUES('22','a_sys','系统设置','36','0','30','')
INSERT INTO `oubao_admin_per` VALUES('24','a_fields_info','字段列表','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('27','a_adminuser_edituser','修改资料','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('28','uploads','上传','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('29','a_traits','推荐属性管�\�','37','0','28','')
INSERT INTO `oubao_admin_per` VALUES('34','a_dbbak','数据备份','36','0','27','')
INSERT INTO `oubao_admin_per` VALUES('35','a_label','模板调用生成�\�','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('36','','系统','0','0','99','')
INSERT INTO `oubao_admin_per` VALUES('37','','频道管理','0','0','97','')
INSERT INTO `oubao_admin_per` VALUES('38','a_sys_ecache','更新缓存','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('40','a_labelcus','自定义模板标�\�','36','0','28','')
INSERT INTO `oubao_admin_per` VALUES('41','a_funs','插件设置','42','0','30','')
INSERT INTO `oubao_admin_per` VALUES('42','','其他管理','0','0','98','')
INSERT INTO `oubao_admin_per` VALUES('43','a_files','清理附件','36','0','0','')
INSERT INTO `oubao_admin_per` VALUES('66','a_message','管理','0','0','0','message')
INSERT INTO `oubao_admin_per` VALUES('67','a_message_edit','编辑','66','0','0','')
INSERT INTO `oubao_admin_per` VALUES('68','a_message_del','删除','66','0','0','')
INSERT INTO `oubao_admin_per` VALUES('69','a_message_audit','审核','66','0','0','')
INSERT INTO `oubao_admin_per` VALUES('71','a_comment','评论管理','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('72','a_links','友情链接管理','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('73','a_member','会员管理','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('74','a_special','专题管理','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('75','a_update','在线升级','36','0','0','')
INSERT INTO `oubao_admin_per` VALUES('76','a_html','静态生�\�','36','0','0','')
INSERT INTO `oubao_admin_per` VALUES('77','a_product','管理','0','0','20','product')
INSERT INTO `oubao_admin_per` VALUES('78','a_product_index','列表','77','1','0','')
INSERT INTO `oubao_admin_per` VALUES('79','a_product_add','添加','77','0','0','')
INSERT INTO `oubao_admin_per` VALUES('80','a_product_edit','编辑','77','0','0','')
INSERT INTO `oubao_admin_per` VALUES('81','a_product_del','删除','77','0','0','')
INSERT INTO `oubao_admin_per` VALUES('82','a_product_audit','审核','77','0','0','')
INSERT INTO `oubao_admin_per` VALUES('84','a_ads','广告管理','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('85','a_pay','支付系统','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('86','a_goods','购物系统','42','0','0','')
INSERT INTO `oubao_admin_per` VALUES('87','a_goods_attribute_ajax','规格属�\�','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('104','a_channel','自定义频�\�','0','1','0','')
INSERT INTO `oubao_admin_per` VALUES('123','channel_person_index','列表','118','1','0','')
INSERT INTO `oubao_admin_per` VALUES('122','channel_person_audit','审核','118','0','0','')
INSERT INTO `oubao_admin_per` VALUES('121','channel_person_del','删除','118','0','0','')
INSERT INTO `oubao_admin_per` VALUES('120','channel_person_edit','编辑','118','0','0','')
INSERT INTO `oubao_admin_per` VALUES('119','channel_person_add','添加','118','0','0','')
INSERT INTO `oubao_admin_per` VALUES('118','channel_person','管理','0','0','0','person')
INSERT INTO `oubao_admin_per` VALUES('117','a_template','模板管理','36','0','28','')
INSERT INTO `oubao_admin_per` VALUES('136','a_product_virtual','虚拟货物','77','0','0','')
INSERT INTO `oubao_admin_per` VALUES('137','channel_goods','管理','0','0','0','goods')
INSERT INTO `oubao_admin_per` VALUES('138','channel_goods_add','添加','127','0','0','')
INSERT INTO `oubao_admin_per` VALUES('139','channel_goods_edit','编辑','127','0','0','')
INSERT INTO `oubao_admin_per` VALUES('140','channel_goods_del','删除','127','0','0','')
INSERT INTO `oubao_admin_per` VALUES('141','channel_goods_audit','审核','127','0','0','')
INSERT INTO `oubao_admin_per` VALUES('142','channel_goods_index','列表','127','1','0','')
INSERT INTO `oubao_admin_user` VALUES('1','admin','86f3059b228c8acf99e69734b6bb32cc','真实姓名','邮箱','电话','1','1','')
INSERT INTO `oubao_ads` VALUES('1','1','0','banner1','1','980','300','skin/images/banner.jpg','<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>','#','self','1')
INSERT INTO `oubao_ads` VALUES('2','1','0','banner2','1','980','300','skin/images/banner.jpg','<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>','#','self','1')
INSERT INTO `oubao_ads` VALUES('3','1','0','banner3','1','980','300','skin/images/banner.jpg','<a href=\"#\" target=\"_self\"><img src=\"skin/images/banner.jpg\" width=\"980\" height=\"300\" /></a>','#','self','1')
INSERT INTO `oubao_ads` VALUES('6','2','0','自定义广�\�','5','0','0','','','','blank','1')
INSERT INTO `oubao_adstype` VALUES('1','头部通栏banner','980','300')
INSERT INTO `oubao_adstype` VALUES('2','自定义代码示�\�','0','0')
INSERT INTO `oubao_article` VALUES('54','36','0','1','测试新手入门','','','','','','1389175500','0','','0','0','0.00','','测试新手入门，我也不知道新手入门填什�\�','admin','0')
INSERT INTO `oubao_article` VALUES('55','35','0','1','新手测试2','','','','','','1389175500','0','','0','0','0.00','','新手测试2新手测试2新手测试2新手测试2','admin','0')
INSERT INTO `oubao_article` VALUES('56','36','0','1','用户注册用户注册用户注册','','','','','','1389175560','0','','0','0','0.00','','用户注册用户注册用户注册用户注册用户注册用户注册用户注册','admin','0')
INSERT INTO `oubao_article` VALUES('57','35','0','1','用户注册再次测试','','','','','','1389175560','0','','0','0','0.00','','用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试用户注册再次测试','admin','0')
INSERT INTO `oubao_article_field` VALUES('54','测试新手入门')
INSERT INTO `oubao_article_field` VALUES('55','新手测试2新手测试2新手测试2新手测试2')
INSERT INTO `oubao_article_field` VALUES('56','用户注册用户注册用户注册')
INSERT INTO `oubao_article_field` VALUES('57','第十三对是大都市')
INSERT INTO `oubao_attribute` VALUES('4','2','红色','1','0')
INSERT INTO `oubao_attribute` VALUES('5','2','蓝色','1','0')
INSERT INTO `oubao_attribute` VALUES('6','3','S','1','0')
INSERT INTO `oubao_attribute` VALUES('7','3','M','1','0')
INSERT INTO `oubao_attribute` VALUES('8','3','L','1','0')
INSERT INTO `oubao_attribute_type` VALUES('2','颜色','|18|','1','0')
INSERT INTO `oubao_attribute_type` VALUES('3','尺码','|18|','1','0')
INSERT INTO `oubao_classtype` VALUES('30','message','0','反馈','','','反馈','','','3','message.html','message.html','message.html','message.html','message.html','20','','','0','1','0','','0','0','0','')
INSERT INTO `oubao_classtype` VALUES('29','article','0','服务中心','','','服务中心','','服务中心','3','list_index.html','help.html','list_image.html','list_service.html','article.html','20','','','0','0','4','<h3>\r\n	服务政策\r\n</h3>\r\n<p>\r\n	除非本规定做特殊说明的产品以外，瓯宝提供三年的免费维修服务。在按照用户手册正常使用的状态下，如有出现故障，凭产品服务卡及购物凭证到指定的地点进行维修，除邮递、运送等杂费外，保修服务免费提供�\�\r\n</p>\r\n保修期以内下列情况之修理费将按实收取�\�\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1、未出示有效保修卡及购物凭证的�\�\r\n</p>\r\n<p>\r\n	2、未按产品使用说明的要求使用、维护、保管而造成损坏的�\�\r\n</p>\r\n<p>\r\n	3、购买后发生的因摔落、不适当存放等造成损坏的�\�\r\n</p>\r\n<p>\r\n	4、保修卡上未记载产品名称、产品型号、用户名称、地址、电话、经销商名称或擅自涂改保修卡的，无销售店印章的�\�\r\n</p>\r\n<p>\r\n	5、保修卡记载的产品型号和编号与实物不符的�\�\r\n</p>\r\n<p>\r\n	6、因自然灾害，异常电压等不可抗力原因引起的故障�\�\r\n</p>\r\n<p>\r\n	保修更换下来的所有部件归瓯宝公司所有�\�  随产品之附件不在保修范围内。请妥善保存保修卡，遗失不补�\�\r\n</p>\r\n<p>\r\n	注意�\�\r\n</p>\r\n<p>\r\n	1、为保障您的合法权益，请您仔细核对保修卡内容填写的准确性。瓯宝公司对因使用非瓯宝原厂附件而导致本产品的损坏和任何事故发生概不负责�\�\r\n</p>\r\n<p>\r\n	2、当产品交回做保修服务时，请小心包装，并附带保修卡、发票及维修记录等以便参考�\�\r\n</p>\r\n<p>\r\n	3、本保修规定是为消费者免费维修制定的，并不限制消费者在法律上的权利�\�<br />\r\n<br />\r\n<br />\r\n<strong>服务热线      0577-86090386</strong> \r\n</p>','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('24','article','0','解决方案','','','解决方案','','','1','list_index.html','list.html','list_image.html','list_body.html','article.html','10','','','0','0','10','<p>\r\n	解决方案解决方案解决方案解决方案解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案\r\n</p>\r\n<p>\r\n	解决方案解决方案解决方案解决方案\r\n</p>','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('25','product','0','下载','','','下载','','下载','0','list_index.html','list.html','list_image.html','list_body.html','product.html','20','','','0','0','8','','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('26','article','0','代理加盟','','','代理加盟','','代理加盟','3','list_index.html','list.html','list_image.html','list_agent.html','article.html','20','','','0','0','6','<div class=\"agent-item basic-condition\">\r\n        	<h3>加盟基本条件</h3>\r\n        	<ol>\r\n        	  <li>必须有信誉良好的独立法人资格的公司，有较高的商业信用和较好公司形象；</li>\r\n            <li>看好智能家居行业、有诚意并愿意投入资金合作；</li>\r\n            <li>具备独立区域用于展示和客户体验智能家居系统；</li>\r\n            <li>对公司区域年度任务量有一定的承诺并予以兑现�\�</li>\r\n        	</ol>\r\n        </div>\r\n        <div class=\"agent-item sprt-nd-scrt\">\r\n          <h3>支持与保�\�</h3>\r\n          <ol>\r\n            <li>瓯智宝提供最具优势、最强有力的全国统一价格体系和区域保护政策。确保加盟商的利润空间�\�</li>\r\n            <li>瓯智宝通过多种媒体的不同渠道来不间断的进行广告宣传不断提升品牌影响力。确保加盟品牌价值�\�</li>\r\n            <li>瓯智宝具备丰富的产品线、一体化解决方案、优良的品质保证，为加盟商提�\�24小时全方位销售、技术、售后服务支持，确保加盟商第一时间得到服务�\�</li>\r\n            <li>瓯智宝提供最具吸引力的渠道政策，为加盟商的业务的顺利开展提供高效支持�\�</li>\r\n          </ol>\r\n        </div>\r\n        <div class=\"agent-item oubaoinc\">\r\n          <h3>瓯智宝科技有限公司</h3>\r\n          <p>地址：浙江省温州市瓯海区娄桥街道上汇工业区深茂路21�\� <br />联系人：毛荣�\�   <br />电话�\�18705885817 <br />邮箱�\�304122340@qq.com</p>\r\n        </div>','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('27','article','0','关于我们','','','关于我们','','关于我们','3','list_index.html','list.html','list_image.html','list_body.html','article.html','20','','','0','0','7','<h3>\r\n	公司简�\�\r\n</h3>\r\n<p>\r\n	瓯智宝科技有限公司始创�\�2 0 1 1年，隶属欧宝安防科技股份有限公司，于2 0 1 4�\�7月份正式命名为“瓯智宝”，是国内首批W i F i智能家居的公司之一,真正实现了一个手机带多个设备的技术革命。瓯智宝拥有国内一流的智能家居产品研发中心，汇集了电学、计算机、设计等方面的众多精英。目前，主要产品有红外转发器、W i F i插座、煤气报警器、浸水报警器、指纹锁、闭门器、摄像头、音响等，所有产品技术核心、原理皆为自主研发，安全性高、拓展性强。不断科技创新、与时俱进，为人们提供安全、舒适、便捷、健康、节能的生活，让智慧充满生活的每个角落�\�<br />\r\n<br />\r\n<br />\r\n<strong>我们的理念是：以低廉的价格让用户享受安全、便捷的智能家居</strong>\r\n</p>\r\n<h3>\r\n	联系我们\r\n</h3>\r\n<p>\r\n	公司地址：浙江温州瓯海区娄桥街道上汇工业区深茂路21�\�<br />\r\n联系电话�\�0577-86090386\r\n</p>','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('28','article','0','联系我们','','','联系我们','','联系我们','3','list_index.html','list.html','list_image.html','list_contact.html','article.html','20','','','0','0','0','<p>\r\n	联系我们联系我们联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>\r\n<p>\r\n	联系我们联系我们联系我们\r\n</p>','0','0','0','')
INSERT INTO `oubao_classtype` VALUES('33','goods','0','产品展示','','','产品展示','','','2','list_index.html','list.html','list_image.html','list_body.html','content.html','20','','','0','0','9','','1','322','223','')
INSERT INTO `oubao_classtype` VALUES('34','article','0','最新动�\�','','','最新动�\�','','','1','list_index.html','list_news.html','list_image.html','list_body.html','article.html','20','','','0','0','5','','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('35','article','34','行业新闻','','','行业新闻','','','1','list_index.html','list_news.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `oubao_classtype` VALUES('36','article','34','企业新闻','','','企业新闻','','','1','list_index.html','list_news.html','list_image.html','list_body.html','article.html','20','','','0','0','0','','1','0','0','')
INSERT INTO `oubao_comment` VALUES('54','3','product','0','asdf','','1340949850','0','游客','')
INSERT INTO `oubao_comment` VALUES('53','1','product','0','asdfasdf','','1340771473','0','游客','')
INSERT INTO `oubao_comment` VALUES('55','3','article','0','fhjdfghdfh','','1352975201','0','游客','')
INSERT INTO `oubao_comment` VALUES('58','47','article','1','1111111111','asdf','1353412302','1353412308','1','admin')
INSERT INTO `oubao_comment` VALUES('57','50','article','0','asdfasdfasdf','asdf','1353411949','1353412281','1','admin')
INSERT INTO `oubao_custom` VALUES('3','update','data','update.html','update.xml','1')
INSERT INTO `oubao_fields` VALUES('14','person','招聘岗位','gangwei','varchar','100','','0','1','1','1','|22|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('15','person','学历要求','xueli','select','0','不限=1,小学及以�\�=2,初中及以�\�=3,高中(中专)及以�\�=4,大专及以�\�=5,本科及以�\�=6,硕士及以�\�=7,博士及以�\�=8','0','1','1','1','|22|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('16','person','年龄要求','nianlin','varchar','50','','0','1','1','1','|22|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('17','person','性别要求','xingbie','select','0','不限=不限,�\�=�\�,�\�=�\�','0','1','1','1','|22|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('18','person','工作经验','jingyan','select','0','不限=1,一年以�\�=2,二年以上=3,三年以上=4,五年以上=5,十年以上=6','0','1','1','1','|22|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('19','person','招聘介绍','jieshao','text','0','','0','1','0','1','|22|23|','','670','350')
INSERT INTO `oubao_fields` VALUES('24','message','学历','u_xueli','varchar','50','','0','1','0','1','|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('25','message','年龄','u_nianlin','varchar','50','','0','1','0','1','|23|','','0','0')
INSERT INTO `oubao_fields` VALUES('26','product','安卓','android','files','0','','1','1','1','1','|25|','product','0','0')
INSERT INTO `oubao_fields` VALUES('27','product','苹果ios','apple','files','0','','2','1','1','1','|25|','product','0','0')
INSERT INTO `oubao_fields` VALUES('28','product','版本�\�','version','varchar','255','','0','1','1','1','|25|','','300','80')
INSERT INTO `oubao_fields` VALUES('29','product','大小','size','varchar','255','','3','1','1','1','|25|','','300','80')
INSERT INTO `oubao_fields` VALUES('30','product','支持系统','system','varchar','255','','4','1','1','1','|25|','','300','80')
INSERT INTO `oubao_fields` VALUES('31','product','安卓二维�\�','androidcode','files','0','','5','1','1','1','|25|','','165','165')
INSERT INTO `oubao_fields` VALUES('32','product','苹果二维�\�','applecode','files','0','','6','1','1','1','|25|','','165','165')
INSERT INTO `oubao_fields` VALUES('34','product','版本名称','versionName','varchar','255','','0','1','1','1','|25|','','300','80')
INSERT INTO `oubao_fields` VALUES('36','product','允许最低版�\�','minversionCode','varchar','255','','0','1','1','1','|25|','','300','80')
INSERT INTO `oubao_fields` VALUES('37','product','更新介绍','about','varchar','500','','0','1','1','1','|25|','','450','250')
INSERT INTO `oubao_fields` VALUES('38','product','文件名称','fileName','varchar','255','','0','1','1','1','|25|','','300','80')
INSERT INTO `oubao_fields` VALUES('39','goods','缩略�\�','simg','files','0','','10','1','1','1','|33|','','322','223')
INSERT INTO `oubao_fields` VALUES('40','goods','型号','xinghao','varchar','255','','10','1','1','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('41','goods','详细大图','bsimg','files','0','','10','1','0','1','|33|','','595','334')
INSERT INTO `oubao_fields` VALUES('42','goods','功能特点','tedian','varchar','500','','0','1','0','1','','','300','300')
INSERT INTO `oubao_fields` VALUES('43','goods','产品参数','canshu','varchar','500','','0','1','0','1','','','300','300')
INSERT INTO `oubao_fields` VALUES('44','goods','产品概况','gaikuang','text','0','','0','1','0','1','|33|','','670','300')
INSERT INTO `oubao_fields` VALUES('45','goods','安装说明','shuoming','text','0','','0','1','0','1','|33|','','670','300')
INSERT INTO `oubao_fields` VALUES('46','goods','设备配置','peizhi','text','0','','0','1','0','1','|33|','','670','300')
INSERT INTO `oubao_fields` VALUES('47','goods','学习功能','gongneng','text','0','','0','1','0','1','|33|','','670','300')
INSERT INTO `oubao_fields` VALUES('48','goods','更多设置','shezhi','text','0','','0','1','0','1','|33|','','670','300')
INSERT INTO `oubao_fields` VALUES('49','goods','常见问题解决','jiejue','text','0','','0','1','0','1','|33|','','670','300')
INSERT INTO `oubao_fields` VALUES('51','message','姓名','mname','varchar','255','','0','1','1','1','|30|','','300','80')
INSERT INTO `oubao_fields` VALUES('52','message','手机','mcell','varchar','255','','0','1','1','1','|30|','','300','80')
INSERT INTO `oubao_fields` VALUES('53','message','QQ','mqq','varchar','255','','0','1','1','1','|30|','','300','80')
INSERT INTO `oubao_fields` VALUES('54','message','邮箱','memail','varchar','255','','0','1','1','1','|30|','','300','80')
INSERT INTO `oubao_fields` VALUES('55','goods','输入电压','dianya','varchar','255','','7','1','1','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('56','goods','红外射频','hongwai','varchar','255','','7','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('57','goods','工作湿度','shidu','varchar','255','','7','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('58','goods','输入电流','dianliu','varchar','255','','7','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('59','goods','红外射频','sheping','varchar','255','','7','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('60','goods','工作温度','wendu','varchar','255','','7','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('61','goods','功能特点1','tedian1','varchar','255','','8','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('62','goods','功能特点2','tedian2','varchar','255','','8','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('63','goods','功能特点3','tedian3','varchar','255','','8','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('64','goods','功能特点4','tedian4','varchar','255','','8','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('65','goods','功能特点5','tedian5','varchar','255','','8','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('66','goods','副标�\�','title2','varchar','255','','9','1','0','1','|33|','','300','80')
INSERT INTO `oubao_fields` VALUES('67','goods','副标�\�2','title3','varchar','255','','9','1','0','1','|33|','','300','80')
INSERT INTO `oubao_funs` VALUES('31','ads','ads,adstype','广告','0','','1.0')
INSERT INTO `oubao_funs` VALUES('32','comment','comment','评论','0','','1.0')
INSERT INTO `oubao_funs` VALUES('33','links','links,linkstype','友情链接','1','','1.0')
INSERT INTO `oubao_funs` VALUES('34','member','member,member_field,member_group,member_file','会员','1','','1.0')
INSERT INTO `oubao_funs` VALUES('35','special','special','专题','0','','1.0')
INSERT INTO `oubao_funs` VALUES('37','pay','account,order,payment','支付系统','0','','1.0')
INSERT INTO `oubao_funs` VALUES('38','goods','product_attribute,attribute,attribute_type','购物系统','0','','1.0')
INSERT INTO `oubao_goods` VALUES('1','33','0','1','dsdssdds','','','','','','1413516360','0','0','0','0','','','admin','0')
INSERT INTO `oubao_goods` VALUES('2','33','0','1','fhhgh','','','','','','1413516480','0','0','0','0','','','admin','0')
INSERT INTO `oubao_goods` VALUES('3','33','0','1','cccccf','','','','','','1413516780','0','0','0','0','','','admin','0')
INSERT INTO `oubao_goods_field` VALUES('1','/uploads/2014/10/230946034765.jpg','OZB-RM-A','/uploads/2014/10/231000475498.jpg','&lt;li&gt;远程遥控一切红外可控家�\�&lt;/li&gt;\r\n                &lt;li&gt;状态实时反�\�&lt;/li&gt;\r\n                &lt;li&gt;无死角控�\�&lt;/li&gt;\r\n                &lt;li&gt;后续拓展性强&lt;/li&gt;','&lt;li&gt;输入电压�\�5V&lt;/li&gt;\r\n                &lt;li&gt;红外射频�\�20khz-70khz&lt;/li&gt;\r\n                &lt;li&gt;工作湿度：≤80%&lt;/li&gt;\r\n                &lt;li&gt;输入电流�\�2A&lt;/li&gt;\r\n                &lt;li&gt;红外射频�\�20khz-70khz&lt;/li&gt;\r\n                &lt;li&gt;工作温度�\�0�\�65�\�&lt;/li&gt;','<img alt=\"\" src=\"/uploads/2014/10/231041203809.png\" />','<img alt=\"\" src=\"/uploads/2014/10/231041431116.png\" /> \r\n<p>\r\n	&nbsp;\r\n</p>','<img alt=\"\" src=\"/uploads/2014/10/231042062849.png\" /> \r\n<p>\r\n	&nbsp;\r\n</p>\r\n<img alt=\"\" src=\"/uploads/2014/10/231042364342.png\" /> \r\n<p>\r\n	&nbsp;\r\n</p>','<img alt=\"\" src=\"/uploads/2014/10/231043083844.png\" /> \r\n<p>\r\n	&nbsp;\r\n</p>','<img alt=\"\" src=\"/uploads/2014/10/231043289440.png\" /> \r\n<p>\r\n	&nbsp;\r\n</p>','<img alt=\"\" src=\"/uploads/2014/10/231043492697.png\" /> \r\n<p>\r\n	&nbsp;\r\n</p>','5V','20khz-70khz','�\�80%','2A','20khz-70khz','0�\�65�\�','远程遥控一切红外可控家�\�','状态实时反�\�','无死角控�\�','后续拓展性强','','极致的遥控体�\�','简单操作一目了�\�')
INSERT INTO `oubao_goods_field` VALUES('2','/uploads/2014/10/230945517171.jpg','','','v','v','fffnjnnnnnnnnnnnnnnnnnn','fghjhjreerrggtrgte','','','','','','','','','','','','','','','','','')
INSERT INTO `oubao_goods_field` VALUES('3','/uploads/2014/10/230945213739.jpg','','','dd','dd','dfdggggdfdfd产品概况df','ffdfdfdfdf安装说明','ffdfdfdfd设备配置','<p>\r\n	hhhhhhhhhhhhhhhhhhhhhhh学习功能\r\n</p>','dfd更多设置dfdf','df df fg常见问题解决cffffffffff','','','','','','','','','','','','','')
INSERT INTO `oubao_labelcus` VALUES('3','软件介绍','软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍软件介绍','2')
INSERT INTO `oubao_labelcus` VALUES('4','更新介绍','<info>1.优化登录时loading显示</info>\r\n<info>2.新增查看作业试卷内容功能</info>\r\n<info>3.优化主菜单UI效果</info>\r\n<info>4.修复部分作业批改时崩�\�</info>\r\n<info>5.修复断开网络后无人员清单显示，点击全选按钮崩�\�</info>\r\n<info>6.修复部分作业批改时崩�\�</info>\r\n<info>7.修复断开网络后无人员清单显示，点击全选按钮崩�\�</info>','1')
INSERT INTO `oubao_labelcus` VALUES('6','版本名称','v1.0.0.1','1')
INSERT INTO `oubao_labelcus` VALUES('5','处理问号','<?xml version=\"1.0\" encoding=\"utf-8\"?>','1')
INSERT INTO `oubao_labelcus` VALUES('7','版本�\�','23','1')
INSERT INTO `oubao_labelcus` VALUES('8','允许最低版�\�','1','1')
INSERT INTO `oubao_labelcus` VALUES('9','电话','0577-86090386','1')
INSERT INTO `oubao_labelcus` VALUES('10','公司地址','浙江温州瓯海区娄桥街道上汇工业区深茂�\�21�\�','1')
INSERT INTO `oubao_labelcus` VALUES('11','备案�\�','湘ICP�\�100000000�\�','1')
INSERT INTO `oubao_links` VALUES('4','0','0','中国联�\�','/uploads/2014/01/061507477309.jpg','','1')
INSERT INTO `oubao_links` VALUES('3','0','0','中国移动','/uploads/2014/01/061507289701.jpg','','1')
INSERT INTO `oubao_links` VALUES('5','0','0','中国电信','/uploads/2014/01/061507595830.jpg','','1')
INSERT INTO `oubao_member_file` VALUES('73','13','','uploads/2012/12/131508249443.jpg','16247','sdfg','0','16','message')
INSERT INTO `oubao_member_file` VALUES('57','0','192.168.1.8','uploads/2012/12/061735275121.jpg','13824','sdfg','1735256009','0','')
INSERT INTO `oubao_member_file` VALUES('55','0','192.168.1.8','uploads/2012/12/041558051712.jpg','13824','sdfg','0','13','message')
INSERT INTO `oubao_member_file` VALUES('52','0','192.168.1.8','uploads/2012/12/041553486594.jpg','13824','sdfg','0','12','message')
INSERT INTO `oubao_member_file` VALUES('51','0','192.168.1.8','uploads/2012/12/031244352468.jpg','13824','asdf','0','11','message')
INSERT INTO `oubao_member_group` VALUES('1','1','游客','0','0','0','jpg,gif,jpeg,png','0','0','0','0.00')
INSERT INTO `oubao_member_group` VALUES('2','1','普通会�\�','1','0','1','jpg,gif,jpeg,png','200','5000','0','0.00')
INSERT INTO `oubao_message` VALUES('18','30','','0','0','姓名','1413864260','0','0','游客','dsasdaddsadsads','')
INSERT INTO `oubao_message_field` VALUES('18','','','是订单实打实','13800138000','32332','323223@122121.com')
INSERT INTO `oubao_molds` VALUES('1','article','article','文章','0','list_index.html','list.html','list_image.html','list_body.html','article.html','1','1.0','1','')
INSERT INTO `oubao_molds` VALUES('6','message','message,message_field','表单(留言)','0','message.html','message.html','message.html','message.html','message.html','1','1.0','1','N;')
INSERT INTO `oubao_molds` VALUES('2','product','','下载','0','list_index.html','list.html','list_image.html','list_body.html','product.html','1','1.0','1','a:2:{s:7:\"photo_w\";a:3:{i:0;s:15:\"图集缩略�\�\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略宽，0表示继承系统设置\";}s:7:\"photo_h\";a:3:{i:0;s:15:\"图集缩略�\�\";i:1;s:3:\"201\";i:2;s:67:\"频道下内容图集的自动缩略高，0表示继承系统设置\";}}')
INSERT INTO `oubao_molds` VALUES('18','person','','人才招聘','0','list_index.html','list.html','list_image.html','list_body.html','content.html','0','','0','N;')
INSERT INTO `oubao_molds` VALUES('21','goods','','产品','0','list_index.html','list.html','list_image.html','list_body.html','content.html','1','','0','N;')
INSERT INTO `oubao_payment` VALUES('3','alipay','0','支付�\�','国内最大的支付平台，支持多家银行在线支付�\�<a href=\"https://b.alipay.com\" target=\"_blank\">需要签约支付宝商家服务，点此进�\�</a>，强烈建议使用“即时到帐”接口，若无法申请“即时到帐”接口，可选择申请财付通“即时到帐”接口，相比支付宝容易审核�\�','a:4:{s:7:\"service\";s:12:\"接口类型\";s:4:\"user\";s:21:\"签约支付宝账�\�\";s:3:\"pid\";s:18:\"合作者身份PID\";s:3:\"key\";s:18:\"安全校验码Key\";}','a:4:{s:7:\"service\";s:1:\"1\";s:4:\"user\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}','99')
INSERT INTO `oubao_payment` VALUES('4','tenpay','0','财付�\�','腾讯旗下支付平台，支持多家银行在线支付�\�<a href=\"https://www.tenpay.com/v2/mch/mch_intro.shtml\" target=\"_blank\">签约财付通商家服务，点此进入</a>，强烈建议使用“即时到帐”接口�\�','a:3:{s:7:\"service\";s:12:\"接口类型\";s:3:\"pid\";s:9:\"商户�\�\";s:3:\"key\";s:6:\"密钥\";}','a:3:{s:7:\"service\";s:1:\"1\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}','98')
INSERT INTO `oubao_payment` VALUES('2','cashbalance','1','余额支付','使用会员账户余额支付�\�','','N;','1')
INSERT INTO `oubao_payment` VALUES('1','offline','1','线下付款','线下收款，收款后需手工在后台修改订单状态�\�','','N;','0')
INSERT INTO `oubao_product` VALUES('21','25','0','1','O-Home','','','','','','1405404540','0','333','','','0','0.00','0','0','0','0.00','','','admin','0')
INSERT INTO `oubao_product_field` VALUES('21','<p>产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项产品说明说明以及注意事项�\�</p>','/uploads/2014/10/131525304361.apk','','6','9.61M','Android2.2以上','','','V1.0.0.6','1','<info>1.优化UI效果</info>\r\n<info>2.修复切换摄像机界面闪退问题</info>','O-Home')
INSERT INTO `oubao_special` VALUES('1','article','专题演示','','asdfasdf','','','','1','specia.html','specia_list.html','specia_body.html','20','','','0','','1')
INSERT INTO `oubao_sysconfig` VALUES('sendmail','a:4:{s:4:\"smtp\";s:0:\"\";s:4:\"mail\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"name\";s:16:\"DOYO建站系统\";}')
INSERT INTO `oubao_traits` VALUES('1','头条','article')
INSERT INTO `oubao_traits` VALUES('2','推荐','article')
INSERT INTO `oubao_traits` VALUES('3','头条','product')
INSERT INTO `oubao_traits` VALUES('4','推荐','product')
