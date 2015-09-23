#
# Доставка воды Бровары, Киев, Доставка воды в Броварах и Киеве Database Dump
# MODX Version:1.0.12-d6.5
# 
# Host: 
# Generation Time: 16-01-2014 15:04:34
# Server version: 5.5.35-log
# PHP Version: 5.4.15
# Database : `crystalwater`
#

# --------------------------------------------------------

#
# Table structure for table `modx_active_users`
#

DROP TABLE IF EXISTS `modx_active_users`;
CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about active users.';

#
# Dumping data for table `modx_active_users`
#

INSERT INTO `modx_active_users` VALUES ('1','admin','1385537793','','8','37.53.63.10');
INSERT INTO `modx_active_users` VALUES ('3','manager','1389884674','','93','178.92.13.5');

# --------------------------------------------------------

#
# Table structure for table `modx_categories`
#

DROP TABLE IF EXISTS `modx_categories`;
CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `modx_categories`
#

INSERT INTO `modx_categories` VALUES ('1','Demo Content');
INSERT INTO `modx_categories` VALUES ('2','SEO');
INSERT INTO `modx_categories` VALUES ('3','Forms');
INSERT INTO `modx_categories` VALUES ('4','Templates');
INSERT INTO `modx_categories` VALUES ('5','Js');
INSERT INTO `modx_categories` VALUES ('6','Manager and Admin');
INSERT INTO `modx_categories` VALUES ('7','add');
INSERT INTO `modx_categories` VALUES ('8','Navigation');
INSERT INTO `modx_categories` VALUES ('9','Content');

# --------------------------------------------------------

#
# Table structure for table `modx_document_groups`
#

DROP TABLE IF EXISTS `modx_document_groups`;
CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_documentgroup_names`
#

DROP TABLE IF EXISTS `modx_documentgroup_names`;
CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_event_log`
#

DROP TABLE IF EXISTS `modx_event_log`;
CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `modx_event_log`
#

INSERT INTO `modx_event_log` VALUES ('1','0','1385415344','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('3','0','1385494583','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('5','0','1385499905','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('7','0','1385500659','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('9','0','1385500665','3','3','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('11','0','1385504335','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('13','0','1385504341','3','3','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('15','0','1385505180','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('17','0','1385505185','3','3','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('19','0','1385505490','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('21','0','1385505496','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('23','0','1385535458','3','1','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('25','0','1385535464','3','1','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('27','0','1385544064','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('29','0','1385544069','3','3','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('31','0','1385567088','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('33','0','1385567093','3','3','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('35','0','1385570756','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('37','0','1385570761','3','3','0','Файл конфигурации все еще доступен для записи','Злоумышленники потенциально могут нанести вред вашему сайту. <strong>Серьёзно.</strong> Пожалуйста, установите права доступа к файлу конфигурации (/manager/includes/config.inc.php) в режим \'Только для чтения\'');
INSERT INTO `modx_event_log` VALUES ('39','0','1385573312','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('41','0','1385598080','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('43','0','1385642819','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('45','0','1385656144','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>185</td></tr><tr><td>Source : </td><td>			$date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">sitemap.xml</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=3&amp;amp;id=22</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.138</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0809 s (304 Requests)</td></tr><tr><td>PHP : </td><td>0.0554 s</td></tr><tr><td>Total : </td><td>0.1363 s</td></tr><tr><td>Memory : </td><td>1.7785949707031 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 185</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('47','0','1385657826','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('49','0','1385660928','3','3','0','Parser -  - Module - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'&lt;\' in <b>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</b> on line <b>1</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</td></tr><tr><td>Line : </td><td>1</td></tr><tr><td>Source : </td><td> - Module</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=112&amp;id=3</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>37.52.136.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0049 s (3 Requests)</td></tr><tr><td>PHP : </td><td>0,0341 s</td></tr><tr><td>Total : </td><td>0,0390 s</td></tr><tr><td>Memory : </td><td>1,7001647949219 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('51','0','1385660953','3','3','0','Parser -  - Module - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'&lt;\' in <b>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</b> on line <b>1</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</td></tr><tr><td>Line : </td><td>1</td></tr><tr><td>Source : </td><td> - Module</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=112&amp;id=3</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>37.52.136.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0045 s (3 Requests)</td></tr><tr><td>PHP : </td><td>0,0344 s</td></tr><tr><td>Total : </td><td>0,0390 s</td></tr><tr><td>Memory : </td><td>1,7001647949219 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('53','0','1385660995','3','3','0','Parser -  - Module - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'&lt;\' in <b>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</b> on line <b>1</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</td></tr><tr><td>Line : </td><td>1</td></tr><tr><td>Source : </td><td> - Module</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=112&amp;id=3</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>37.52.136.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0046 s (3 Requests)</td></tr><tr><td>PHP : </td><td>0,0344 s</td></tr><tr><td>Total : </td><td>0,0390 s</td></tr><tr><td>Memory : </td><td>1,6994018554688 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('55','0','1385661077','3','3','0','Parser -  - Module - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'&lt;\' in <b>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</b> on line <b>1</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</td></tr><tr><td>Line : </td><td>1</td></tr><tr><td>Source : </td><td> - Module</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=112&amp;id=3</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>37.52.136.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0049 s (3 Requests)</td></tr><tr><td>PHP : </td><td>0,0337 s</td></tr><tr><td>Total : </td><td>0,0386 s</td></tr><tr><td>Memory : </td><td>1,6994018554688 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('57','0','1385661335','3','3','0','Parser -  - Module - Execute module','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\"><br />\n<b>Parse error</b>:  syntax error, unexpected \'&lt;\' in <b>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</b> on line <b>1</b><br />\n</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>PARSING ERROR[4]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/manager/processors/execute_module.processor.php(114) : eval()\'d code</td></tr><tr><td>Line : </td><td>1</td></tr><tr><td>Source : </td><td> - Module</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=112&amp;id=3</td></tr><tr><td valign=\"top\">Manager action : </td><td>112 - Execute module</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=1&amp;amp;f=menu</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>37.52.136.226</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0,0050 s (3 Requests)</td></tr><tr><td>PHP : </td><td>0,0339 s</td></tr><tr><td>Total : </td><td>0,0389 s</td></tr><tr><td>Memory : </td><td>1,6994018554688 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>include_once()<br />manager/index.php on line 573</td><tr><td valign=\"top\">2</td><td>evalModule()<br />manager/processors/execute_module.processor.php on line 101</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('59','0','1385674289','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('61','0','1385717123','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('63','0','1385735637','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('65','0','1385984549','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('67','0','1385988058','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('69','0','1386083895','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('71','0','1386160222','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('73','0','1386166574','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0815 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0433 s</td></tr><tr><td>Total : </td><td>0.1248 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('75','0','1386166590','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0316 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0427 s</td></tr><tr><td>Total : </td><td>0.0743 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('77','0','1386166605','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0314 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0428 s</td></tr><tr><td>Total : </td><td>0.0742 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('79','0','1386166623','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0592 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0443 s</td></tr><tr><td>Total : </td><td>0.1035 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('81','0','1386166778','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0311 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0429 s</td></tr><tr><td>Total : </td><td>0.0740 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('83','0','1386166784','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0317 s (296 Requests)</td></tr><tr><td>PHP : </td><td>2.8550 s</td></tr><tr><td>Total : </td><td>2.8867 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('85','0','1386166864','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0315 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0433 s</td></tr><tr><td>Total : </td><td>0.0748 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('87','0','1386166869','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0315 s (296 Requests)</td></tr><tr><td>PHP : </td><td>2.9968 s</td></tr><tr><td>Total : </td><td>3.0283 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('89','0','1386166874','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0323 s (296 Requests)</td></tr><tr><td>PHP : </td><td>5.8387 s</td></tr><tr><td>Total : </td><td>5.8711 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('91','0','1386166879','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>236</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0326 s (296 Requests)</td></tr><tr><td>PHP : </td><td>9.0711 s</td></tr><tr><td>Total : </td><td>9.1037 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 236</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('93','0','1386167894','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0311 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0426 s</td></tr><tr><td>Total : </td><td>0.0736 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('95','0','1386167922','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0311 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0432 s</td></tr><tr><td>Total : </td><td>0.0743 s</td></tr><tr><td>Memory : </td><td>1.5276336669922 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('97','0','1386167966','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0314 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0428 s</td></tr><tr><td>Total : </td><td>0.0742 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('99','0','1386167981','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0328 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0426 s</td></tr><tr><td>Total : </td><td>0.0753 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('101','0','1386167997','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0313 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0431 s</td></tr><tr><td>Total : </td><td>0.0744 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('103','0','1386168013','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)</td></tr><tr><td>IP : </td><td>66.249.73.168</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0315 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0426 s</td></tr><tr><td>Total : </td><td>0.0741 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('105','0','1386171285','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>82.207.7.13</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0323 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0421 s</td></tr><tr><td>Total : </td><td>0.0744 s</td></tr><tr><td>Memory : </td><td>1.5350112915039 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('107','0','1386172445','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('109','0','1386172475','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=27&amp;amp;id=22</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>82.207.7.13</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0314 s (297 Requests)</td></tr><tr><td>PHP : </td><td>0.0423 s</td></tr><tr><td>Total : </td><td>0.0737 s</td></tr><tr><td>Memory : </td><td>1.5343475341797 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('111','0','1386172517','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0319 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0431 s</td></tr><tr><td>Total : </td><td>0.0750 s</td></tr><tr><td>Memory : </td><td>1.5279998779297 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('113','0','1386172538','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;Y-m-d&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=27&amp;amp;id=22</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>82.207.7.13</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0311 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0421 s</td></tr><tr><td>Total : </td><td>0.0733 s</td></tr><tr><td>Memory : </td><td>1.5343475341797 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('115','0','1386172732','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;UTC&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=27&amp;amp;id=22</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>82.207.7.13</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0322 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0430 s</td></tr><tr><td>Total : </td><td>0.0752 s</td></tr><tr><td>Memory : </td><td>1.5339813232422 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('117','0','1386172739','3','0','0','Snippet - sitemap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; PHP Parse Error &raquo;</b></td></tr><tr><td colspan=\"2\"><b>PHP error debug</b></td></tr><tr><td colspan=\"2\"><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;\">Error : date(): It is not safe to rely on the system\'s timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone \'UTC\' for now, but please set date.timezone to select your timezone.</div></td></tr><tr><td valign=\"top\">ErrorType[num] : </td><td>WARNING[2]</td></tr><tr><td>File : </td><td>/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php</td></tr><tr><td>Line : </td><td>163</td></tr><tr><td>Source : </td><td>        $date = date(&quot;UTC&quot;, $date);\n</td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/sitemap.xml</td></tr><tr><td valign=\"top\">Resource : </td><td>[22]<a href=\"http://crystalwater.kiev.ua/sitemap.xml\" target=\"_blank\">XML карта сайта</a></td></tr><tr><td>Current Snippet : </td><td>sitemap</td></tr><tr><td>Referer : </td><td>http://crystalwater.kiev.ua/manager/index.php?a=27&amp;amp;id=22</td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0</td></tr><tr><td>IP : </td><td>82.207.7.13</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0313 s (296 Requests)</td></tr><tr><td>PHP : </td><td>0.0422 s</td></tr><tr><td>Total : </td><td>0.0734 s</td></tr><tr><td>Memory : </td><td>1.5339813232422 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->prepareResponse()<br />manager/includes/document.parser.class.inc.php on line 1600</td><tr><td valign=\"top\">3</td><td>DocumentParser->parseDocumentSource()<br />manager/includes/document.parser.class.inc.php on line 1690</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalSnippets()<br />manager/includes/document.parser.class.inc.php on line 1486</td><tr><td valign=\"top\">5</td><td>DocumentParser->_get_snip_result()<br />manager/includes/document.parser.class.inc.php on line 1076</td><tr><td valign=\"top\">6</td><td>DocumentParser->evalSnippet()<br />manager/includes/document.parser.class.inc.php on line 1163</td><tr><td valign=\"top\">7</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 1020</td><tr><td valign=\"top\">8</td><td>require()<br />manager/includes/document.parser.class.inc.php(1020) : eval()\'d code on line 1</td><tr><td valign=\"top\">9</td><td>date()<br />assets/snippets/sitemap/snippet.sitemap.php on line 163</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('119','0','1386412921','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('121','0','1386506191','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('123','0','1386507987','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0038 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0176 s</td></tr><tr><td>Total : </td><td>0.0214 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('125','0','1386507993','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>2.1157 s</td></tr><tr><td>Total : </td><td>2.1193 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('127','0','1386507998','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0038 s (0 Requests)</td></tr><tr><td>PHP : </td><td>4.7759 s</td></tr><tr><td>Total : </td><td>4.7796 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('129','0','1386508003','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>8.1054 s</td></tr><tr><td>Total : </td><td>8.1090 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('131','0','1386508047','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0035 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0171 s</td></tr><tr><td>Total : </td><td>0.0207 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('133','0','1386508053','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>2.1075 s</td></tr><tr><td>Total : </td><td>2.1111 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('135','0','1386508067','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0037 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0177 s</td></tr><tr><td>Total : </td><td>0.0214 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('137','0','1386508072','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\nvoda-h2o-stati/59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0037 s (0 Requests)</td></tr><tr><td>PHP : </td><td>1.0631 s</td></tr><tr><td>Total : </td><td>1.0668 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('139','0','1386508183','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7;\n59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0038 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0174 s</td></tr><tr><td>Total : </td><td>0.0212 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('141','0','1386508189','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7;\n59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0037 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0173 s</td></tr><tr><td>Total : </td><td>0.0210 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('143','0','1386508288','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7;\n59-kak-podobrat-kompanii-kotorymi-osushchestvlyaetsya-dostavka-vody-kiev-otzyvy-o-kotoroj-vas-ne-obmanut.html` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0175 s</td></tr><tr><td>Total : </td><td>0.0211 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('145','0','1386508329','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7;\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0173 s</td></tr><tr><td>Total : </td><td>0.0209 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('147','0','1386508364','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0039 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0174 s</td></tr><tr><td>Total : </td><td>0.0213 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('149','0','1386508380','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0174 s</td></tr><tr><td>Total : </td><td>0.0210 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('151','0','1386508440','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0038 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0175 s</td></tr><tr><td>Total : </td><td>0.0213 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('153','0','1386508447','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0037 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0172 s</td></tr><tr><td>Total : </td><td>0.0209 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('155','0','1386508490','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0036 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0173 s</td></tr><tr><td>Total : </td><td>0.0209 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('157','0','1386508514','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0037 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0176 s</td></tr><tr><td>Total : </td><td>0.0213 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('159','0','1386508548','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `8\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0035 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0177 s</td></tr><tr><td>Total : </td><td>0.0212 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('161','0','1386508597','3','0','0','Plugin - RedirectMap','<h3 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h3>\n                    <table border=\"0\" cellpadding=\"1\" cellspacing=\"0\">\n                    <tr><td colspan=\"2\">MODX encountered the following error while attempting to parse the requested resource:</td></tr>\n                    <tr><td colspan=\"2\"><b style=\"color:red;\">&laquo; `7\n` is not numeric and may not be passed to makeUrl() &raquo;</b></td></tr><tr><td colspan=\"2\"><b>Basic info</b></td></tr><tr><td valign=\"top\" style=\"white-space:nowrap;\">REQUEST_URI : </td><td>http://crystalwater.kiev.ua/tekhnologii-ochistk.html</td></tr><tr><td>Current Plugin : </td><td>RedirectMap(OnPageNotFound)</td></tr><tr><td>Referer : </td><td></td></tr><tr><td>User Agent : </td><td>Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.41 Safari/537.36</td></tr><tr><td>IP : </td><td>195.191.13.131</td></tr><tr><td colspan=\"2\"><b>Benchmarks</b></td></tr><tr><td>MySQL : </td><td>0.0037 s (0 Requests)</td></tr><tr><td>PHP : </td><td>0.0174 s</td></tr><tr><td>Total : </td><td>0.0211 s</td></tr><tr><td>Memory : </td><td>1.2772064208984 mb</td></tr></table>\n<br /><p><b>Backtrace</b></p>\n<table><tr><td valign=\"top\">1</td><td>DocumentParser->executeParser()<br />index.php on line 141</td><tr><td valign=\"top\">2</td><td>DocumentParser->sendErrorPage()<br />manager/includes/document.parser.class.inc.php on line 1584</td><tr><td valign=\"top\">3</td><td>DocumentParser->invokeEvent()<br />manager/includes/document.parser.class.inc.php on line 241</td><tr><td valign=\"top\">4</td><td>DocumentParser->evalPlugin()<br />manager/includes/document.parser.class.inc.php on line 3372</td><tr><td valign=\"top\">5</td><td>eval()<br />manager/includes/document.parser.class.inc.php on line 984</td><tr><td valign=\"top\">6</td><td>DocumentParser->makeUrl()<br />manager/includes/document.parser.class.inc.php(984) : eval()\'d code on line 11</td></table>\n');
INSERT INTO `modx_event_log` VALUES ('163','0','1386514706','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('165','0','1386522387','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('167','0','1386523202','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('169','0','1386593995','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('171','0','1386604574','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('173','0','1386605540','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('175','0','1386775725','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('177','0','1386777407','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('179','0','1387736659','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('181','0','1387811164','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('183','0','1387924154','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('185','0','1387961884','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('187','0','1387962253','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('189','0','1387962831','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('191','0','1388094336','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('193','0','1389695274','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('195','0','1389799524','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('197','0','1389871754','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');
INSERT INTO `modx_event_log` VALUES ('199','0','1389884432','3','3','0','Системные файлы были изменены.','Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php)');

# --------------------------------------------------------

#
# Table structure for table `modx_keyword_xref`
#

DROP TABLE IF EXISTS `modx_keyword_xref`;
CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

#
# Dumping data for table `modx_keyword_xref`
#


# --------------------------------------------------------

#
# Table structure for table `modx_manager_log`
#

DROP TABLE IF EXISTS `modx_manager_log`;
CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6202 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `modx_manager_log`
#

INSERT INTO `modx_manager_log` VALUES ('1','1385393491','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2','1385393492','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('3','1385393497','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('4','1385393502','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('5','1385393530','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('6','1385393592','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('7','1385393594','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('8','1385394242','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('9','1385394242','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('10','1385394244','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('11','1385394823','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('12','1385394888','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('13','1385396165','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('14','1385396174','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('15','1385396182','1','admin','72','-','-','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('16','1385396190','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('17','1385396336','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('18','1385396518','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('19','1385396528','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('20','1385396528','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('21','1385397123','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('22','1385397124','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('23','1385397167','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('24','1385397167','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('25','1385397571','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('26','1385397571','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('27','1385397597','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('28','1385397597','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('29','1385397663','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('30','1385397663','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('31','1385397709','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('32','1385397709','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('33','1385397727','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('34','1385397727','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('35','1385397757','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('36','1385397757','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('37','1385397801','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('38','1385397801','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('39','1385397963','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('40','1385397963','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('41','1385398038','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('42','1385398038','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('43','1385398043','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('44','1385398055','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('45','1385398058','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('46','1385398086','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('47','1385398090','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('48','1385398094','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('49','1385398120','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('50','1385398121','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('51','1385398186','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('52','1385398186','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('53','1385398763','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('54','1385398763','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('55','1385398766','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('56','1385398770','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('57','1385398797','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('58','1385398859','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('59','1385399003','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('60','1385399003','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('61','1385399015','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('62','1385399017','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('63','1385399069','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('64','1385399069','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('65','1385399072','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('66','1385399076','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('67','1385399472','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('68','1385399480','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('69','1385399566','1','admin','19','-','New template','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('70','1385399594','1','admin','20','-','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('71','1385399595','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('72','1385399613','1','admin','19','-','New template','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('73','1385399631','1','admin','20','-','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('74','1385399631','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('75','1385399745','1','admin','19','-','New template','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('76','1385399842','1','admin','20','-','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('77','1385399842','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('78','1385399898','1','admin','19','-','New template','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('79','1385399925','1','admin','20','-','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('80','1385399925','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('81','1385400023','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('82','1385400122','1','admin','16','6','menu','Editing template');
INSERT INTO `modx_manager_log` VALUES ('83','1385400126','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('84','1385400128','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('85','1385400133','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('86','1385400133','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('87','1385400135','1','admin','16','5','contact','Editing template');
INSERT INTO `modx_manager_log` VALUES ('88','1385400142','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('89','1385400145','1','admin','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('90','1385400165','1','admin','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('91','1385400165','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('92','1385400170','1','admin','16','7','footer','Editing template');
INSERT INTO `modx_manager_log` VALUES ('93','1385400173','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('94','1385400176','1','admin','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('95','1385400189','1','admin','76','-','New Chunk','Element management');
INSERT INTO `modx_manager_log` VALUES ('96','1385400192','1','admin','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('97','1385400196','1','admin','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('98','1385400196','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('99','1385400199','1','admin','16','8','right_block','Editing template');
INSERT INTO `modx_manager_log` VALUES ('100','1385400203','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('101','1385400205','1','admin','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('102','1385400217','1','admin','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('103','1385400217','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('104','1385400242','1','admin','16','6','menu','Editing template');
INSERT INTO `modx_manager_log` VALUES ('105','1385400245','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('106','1385400247','1','admin','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('107','1385400253','1','admin','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('108','1385400253','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('109','1385400318','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('110','1385400323','1','admin','16','6','menu','Editing template');
INSERT INTO `modx_manager_log` VALUES ('111','1385400327','1','admin','21','6','-','Deleting template');
INSERT INTO `modx_manager_log` VALUES ('112','1385400327','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('113','1385400328','1','admin','16','8','right_block','Editing template');
INSERT INTO `modx_manager_log` VALUES ('114','1385400331','1','admin','21','8','-','Deleting template');
INSERT INTO `modx_manager_log` VALUES ('115','1385400331','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('116','1385400334','1','admin','16','7','footer','Editing template');
INSERT INTO `modx_manager_log` VALUES ('117','1385400336','1','admin','21','7','-','Deleting template');
INSERT INTO `modx_manager_log` VALUES ('118','1385400336','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('119','1385400338','1','admin','16','5','contact','Editing template');
INSERT INTO `modx_manager_log` VALUES ('120','1385400340','1','admin','21','5','-','Deleting template');
INSERT INTO `modx_manager_log` VALUES ('121','1385400340','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('122','1385400345','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('123','1385400457','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('124','1385400457','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('125','1385400471','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('126','1385400471','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('127','1385400495','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('128','1385400495','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('129','1385400582','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('130','1385400653','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('131','1385400654','1','admin','3','2','Blue Rain помпа для воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('132','1385400655','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('133','1385400659','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('134','1385400897','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('135','1385400897','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('136','1385400899','1','admin','19','-','New template','Creating a new template');
INSERT INTO `modx_manager_log` VALUES ('137','1385400914','1','admin','20','-','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('138','1385400914','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('139','1385400923','1','admin','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('140','1385400925','1','admin','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('141','1385400927','1','admin','5','2','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('142','1385400929','1','admin','3','2','Blue Rain помпа для воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('143','1385400973','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('144','1385400982','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('145','1385400983','1','admin','3','1','Главная','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('146','1385401102','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('147','1385401106','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('148','1385401107','1','admin','3','3','Бутыль','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('149','1385401112','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('150','1385401115','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('151','1385401117','1','admin','3','4','Кулер','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('152','1385401134','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('153','1385401137','1','admin','300','-','New Template Variable','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('154','1385401175','1','admin','302','-','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('155','1385401175','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('156','1385401224','1','admin','301','5','index_title','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('157','1385401249','1','admin','302','5','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('158','1385401249','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('159','1385401257','1','admin','301','5','текс','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('160','1385401312','1','admin','302','5','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('161','1385401312','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('162','1385401317','1','admin','300','-','New Template Variable','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('163','1385401341','1','admin','302','-','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('164','1385401341','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('165','1385401344','1','admin','300','-','New Template Variable','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('166','1385401413','1','admin','302','-','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('167','1385401414','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('168','1385401449','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('169','1385401466','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('170','1385401470','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('171','1385401492','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('172','1385401492','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('173','1385401510','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('174','1385401547','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('175','1385401547','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('176','1385401583','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('177','1385401586','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('178','1385401613','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('179','1385401618','1','admin','301','6','Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('180','1385401636','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('181','1385401639','1','admin','301','7','Текс под блоком','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('182','1385401663','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('183','1385401663','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('184','1385401671','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('185','1385401689','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('186','1385401689','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('187','1385401791','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('188','1385402095','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('189','1385402096','1','admin','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('190','1385402111','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('191','1385402118','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('192','1385402120','1','admin','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('193','1385402830','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('194','1385402838','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('195','1385402840','1','admin','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('196','1385402942','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('197','1385402947','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('198','1385402948','1','admin','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('199','1385403044','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('200','1385403052','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('201','1385403053','1','admin','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('202','1385403151','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('203','1385403188','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('204','1385403188','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('205','1385403196','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('206','1385403200','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('207','1385403200','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('208','1385405213','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('209','1385405215','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('210','1385405294','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('211','1385405295','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('212','1385405413','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('213','1385405413','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('214','1385405514','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('215','1385405518','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('216','1385405521','1','admin','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('217','1385405522','1','admin','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('218','1385405560','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('219','1385405564','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('220','1385405593','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('221','1385405593','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('222','1385405628','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('223','1385405793','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('224','1385405793','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('225','1385405814','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('226','1385405814','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('227','1385406025','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('228','1385406025','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('229','1385406120','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('230','1385406120','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('231','1385406130','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('232','1385406132','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('233','1385406183','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('234','1385406183','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('235','1385406217','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('236','1385406217','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('237','1385406243','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('238','1385406244','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('239','1385406396','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('240','1385406399','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('241','1385406409','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('242','1385406409','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('243','1385406554','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('244','1385406554','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('245','1385406694','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('246','1385406694','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('247','1385406732','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('248','1385406732','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('249','1385406791','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('250','1385406791','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('251','1385406856','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('252','1385406856','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('253','1385406900','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('254','1385406900','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('255','1385406923','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('256','1385406924','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('257','1385406939','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('258','1385406939','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('259','1385407143','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('260','1385407143','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('261','1385407293','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('262','1385407293','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('263','1385407377','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('264','1385407377','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('265','1385407407','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('266','1385407407','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('267','1385407425','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('268','1385407425','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('269','1385407428','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('270','1385407443','1','admin','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('271','1385407444','1','admin','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('272','1385407453','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('273','1385407470','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('274','1385407475','1','admin','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('275','1385407476','1','admin','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('276','1385407488','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('277','1385407494','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('278','1385407495','1','admin','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('279','1385408066','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('280','1385408069','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('281','1385408141','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('282','1385408141','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('283','1385408166','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('284','1385408166','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('285','1385408373','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('286','1385408373','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('287','1385408414','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('288','1385408421','1','admin','16','9','Out','Editing template');
INSERT INTO `modx_manager_log` VALUES ('289','1385408430','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('290','1385408430','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('291','1385408432','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('292','1385408435','1','admin','96','9','-','Duplicate Template');
INSERT INTO `modx_manager_log` VALUES ('293','1385408435','1','admin','16','10','Duplicate of Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('294','1385408446','1','admin','20','10','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('295','1385408447','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('296','1385408455','1','admin','96','10','-','Duplicate Template');
INSERT INTO `modx_manager_log` VALUES ('297','1385408455','1','admin','16','11','Duplicate of Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('298','1385408461','1','admin','20','11','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('299','1385408462','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('300','1385408466','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('301','1385408469','1','admin','96','10','-','Duplicate Template');
INSERT INTO `modx_manager_log` VALUES ('302','1385408469','1','admin','16','12','Duplicate of Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('303','1385408475','1','admin','20','12','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('304','1385408475','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('305','1385408821','1','admin','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('306','1385408841','1','admin','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('307','1385408841','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('308','1385408897','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('309','1385408904','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('310','1385408951','1','admin','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('311','1385408952','1','admin','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('312','1385409030','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('313','1385409284','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('314','1385409284','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('315','1385409294','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('316','1385409296','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('317','1385409296','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('318','1385409370','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('319','1385409371','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('320','1385409409','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('321','1385409409','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('322','1385409592','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('323','1385409592','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('324','1385409628','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('325','1385409628','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('326','1385409695','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('327','1385409699','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('328','1385409748','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('329','1385409748','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('330','1385409770','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('331','1385409770','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('332','1385409778','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('333','1385409793','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('334','1385409793','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('335','1385409918','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('336','1385409923','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('337','1385409931','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('338','1385409931','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('339','1385409967','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('340','1385409967','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('341','1385410001','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('342','1385410001','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('343','1385410069','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('344','1385410070','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('345','1385410154','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('346','1385410154','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('347','1385410205','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('348','1385410205','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('349','1385410433','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('350','1385410433','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('351','1385410448','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('352','1385410448','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('353','1385410453','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('354','1385410453','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('355','1385410476','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('356','1385410481','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('357','1385410486','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('358','1385410489','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('359','1385410491','1','admin','300','-','New Template Variable','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('360','1385410528','1','admin','302','-','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('361','1385410528','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('362','1385410530','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('363','1385410571','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('364','1385410571','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('365','1385410587','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('366','1385410591','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('367','1385410611','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('368','1385410611','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('369','1385410695','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('370','1385410695','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('371','1385410716','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('372','1385410716','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('373','1385410739','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('374','1385410739','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('375','1385410849','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('376','1385410849','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('377','1385410861','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('378','1385410958','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('379','1385410958','1','admin','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('380','1385411028','1','admin','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('381','1385411028','1','admin','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('382','1385411070','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('383','1385411075','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('384','1385411091','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('385','1385411091','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('386','1385411154','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('387','1385411154','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('388','1385411186','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('389','1385411186','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('390','1385411197','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('391','1385411197','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('392','1385411253','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('393','1385411253','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('394','1385411266','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('395','1385411267','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('396','1385411332','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('397','1385411332','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('398','1385411365','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('399','1385411365','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('400','1385411376','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('401','1385411376','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('402','1385411396','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('403','1385411396','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('404','1385411422','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('405','1385411422','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('406','1385411446','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('407','1385411446','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('408','1385411541','1','admin','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('409','1385411542','1','admin','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('410','1385411553','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('411','1385411629','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('412','1385411630','1','admin','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('413','1385411643','1','admin','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('414','1385411677','1','admin','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('415','1385411678','1','admin','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('416','1385411771','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('417','1385411771','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('418','1385411790','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('419','1385411790','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('420','1385411822','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('421','1385411822','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('422','1385411932','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('423','1385411932','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('424','1385412056','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('425','1385412056','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('426','1385412092','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('427','1385412158','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('428','1385412159','1','admin','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('429','1385412207','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('430','1385412276','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('431','1385412277','1','admin','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('432','1385412296','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('433','1385412357','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('434','1385412358','1','admin','3','14','Американскими исследователями доказано что бутилированная вода хороша для активного похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('435','1385412431','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('436','1385412431','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('437','1385412447','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('438','1385412447','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('439','1385412497','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('440','1385412559','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('441','1385412561','1','admin','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('442','1385412575','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('443','1385412628','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('444','1385412630','1','admin','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('445','1385412643','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('446','1385412682','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('447','1385412685','1','admin','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('448','1385412698','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('449','1385412738','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('450','1385412739','1','admin','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('451','1385412751','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('452','1385412808','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('453','1385412810','1','admin','3','19','Что такое обратный осмос, и как он влияет на качество жизни','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('454','1385412818','1','admin','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('455','1385412823','1','admin','5','19','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('456','1385412824','1','admin','3','19','Что такое обратный осмос, и как он влияет на качество жизни','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('457','1385412839','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('458','1385412881','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('459','1385412883','1','admin','3','20','Очищеная вода по системе озоновая стерилизация','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('460','1385412892','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('461','1385412949','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('462','1385412951','1','admin','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('463','1385412981','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('464','1385412986','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('465','1385412994','1','admin','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('466','1385412995','1','admin','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('467','1385413019','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('468','1385413027','1','admin','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('469','1385413029','1','admin','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('470','1385413057','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('471','1385413071','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('472','1385413076','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('473','1385413077','1','admin','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('474','1385413139','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('475','1385413185','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('476','1385413185','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('477','1385413207','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('478','1385413207','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('479','1385413224','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('480','1385413224','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('481','1385413237','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('482','1385413237','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('483','1385413263','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('484','1385413263','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('485','1385413280','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('486','1385413281','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('487','1385413309','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('488','1385413310','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('489','1385413355','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('490','1385413358','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('491','1385413361','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('492','1385413362','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('493','1385413372','1','admin','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('494','1385413374','1','admin','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('495','1385413407','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('496','1385413413','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('497','1385413429','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('498','1385413429','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('499','1385413489','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('500','1385413489','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('501','1385413562','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('502','1385413562','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('503','1385413635','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('504','1385413635','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('505','1385413647','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('506','1385413708','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('507','1385413709','1','admin','3','1','Главная','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('508','1385413737','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('509','1385413740','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('510','1385413774','1','admin','79','9','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('511','1385413775','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('512','1385413779','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('513','1385413796','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('514','1385413796','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('515','1385413861','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('516','1385413861','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('517','1385413864','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('518','1385413864','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('519','1385413867','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('520','1385413870','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('521','1385413880','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('522','1385413882','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('523','1385413893','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('524','1385413896','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('525','1385413920','1','admin','20','12','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('526','1385413920','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('527','1385413937','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('528','1385413959','1','admin','20','12','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('529','1385413959','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('530','1385413968','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('531','1385413977','1','admin','20','12','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('532','1385413977','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('533','1385413981','1','admin','16','11','Технологии очистки','Editing template');
INSERT INTO `modx_manager_log` VALUES ('534','1385414005','1','admin','20','11','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('535','1385414005','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('536','1385414010','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('537','1385414032','1','admin','20','10','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('538','1385414032','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('539','1385414067','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('540','1385414095','1','admin','20','10','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('541','1385414095','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('542','1385414110','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('543','1385414114','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('544','1385414117','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('545','1385414120','1','admin','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('546','1385414122','1','admin','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('547','1385414139','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('548','1385414141','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('549','1385414145','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('550','1385414148','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('551','1385414162','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('552','1385414165','1','admin','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('553','1385414189','1','admin','20','10','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('554','1385414189','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('555','1385414201','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('556','1385414205','1','admin','16','11','Технологии очистки','Editing template');
INSERT INTO `modx_manager_log` VALUES ('557','1385414221','1','admin','20','11','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('558','1385414221','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('559','1385414323','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('560','1385414327','1','admin','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('561','1385414329','1','admin','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('562','1385414338','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('563','1385414343','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('564','1385414621','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('565','1385414628','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('566','1385414631','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('567','1385414632','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('568','1385415343','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('569','1385415348','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('570','1385415353','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('571','1385415356','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('572','1385415378','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('573','1385415380','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('574','1385415460','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('575','1385415465','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('576','1385415488','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('577','1385415488','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('578','1385415944','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('579','1385415949','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('580','1385415949','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('581','1385415957','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('582','1385416017','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('583','1385416017','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('584','1385416082','1','admin','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('585','1385416087','1','admin','5','16','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('586','1385416088','1','admin','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('587','1385416603','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('588','1385416608','1','admin','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('589','1385416610','1','admin','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('590','1385416652','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('591','1385416656','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('592','1385416660','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('593','1385416685','1','admin','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('594','1385416686','1','admin','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('595','1385450953','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('596','1385450970','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('597','1385451000','1','admin','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('598','1385451071','1','admin','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('599','1385451135','1','admin','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('600','1385451140','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('601','1385451159','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('602','1385451167','1','admin','301','5','фото блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('603','1385451169','1','admin','304','5','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('604','1385451170','1','admin','301','12','Duplicate of фото блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('605','1385451190','1','admin','302','12','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('606','1385451190','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('607','1385451196','1','admin','301','7','Текс под блоком','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('608','1385451199','1','admin','304','7','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('609','1385451199','1','admin','301','13','Duplicate of Текс под блоком','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('610','1385451218','1','admin','302','13','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('611','1385451218','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('612','1385451223','1','admin','301','13','Текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('613','1385451226','1','admin','304','13','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('614','1385451227','1','admin','301','14','Duplicate of Текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('615','1385451249','1','admin','302','14','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('616','1385451249','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('617','1385451270','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('618','1385451359','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('619','1385451361','1','admin','3','1','Главная','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('620','1385451362','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('621','1385451369','1','admin','301','14','Второй текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('622','1385451373','1','admin','304','14','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('623','1385451373','1','admin','301','15','Duplicate of Второй текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('624','1385451389','1','admin','302','15','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('625','1385451389','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('626','1385451402','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('627','1385451415','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('628','1385451501','1','admin','301','6','Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('629','1385451504','1','admin','304','6','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('630','1385451504','1','admin','301','16','Duplicate of Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('631','1385451514','1','admin','302','16','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('632','1385451514','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('633','1385451524','1','admin','301','14','Второй текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('634','1385451576','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('635','1385451625','1','admin','301','13','Текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('636','1385451653','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('637','1385451653','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('638','1385451668','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('639','1385451679','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('640','1385451679','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('641','1385451723','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('642','1385451724','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('643','1385451762','1','admin','300','-','New Template Variable','Create Template Variable');
INSERT INTO `modx_manager_log` VALUES ('644','1385451771','1','admin','302','-','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('645','1385451771','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('646','1385451776','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('647','1385451779','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('648','1385451802','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('649','1385451802','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('650','1385451803','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('651','1385451820','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('652','1385451821','1','admin','3','1','Главная','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('653','1385452928','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('654','1385452931','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('655','1385452946','1','admin','301','6','Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('656','1385452949','1','admin','304','6','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('657','1385452949','1','admin','301','18','Duplicate of Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('658','1385452961','1','admin','302','18','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('659','1385452961','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('660','1385452982','1','admin','301','12','фото блока 2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('661','1385452985','1','admin','304','12','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('662','1385452985','1','admin','301','19','Duplicate of фото блока 2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('663','1385452996','1','admin','302','19','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('664','1385452996','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('665','1385453023','1','admin','301','15','Третий текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('666','1385453049','1','admin','302','15','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('667','1385453050','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('668','1385453057','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('669','1385453174','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('670','1385453174','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('671','1385453180','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('672','1385453215','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('673','1385453215','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('674','1385453232','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('675','1385453274','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('676','1385453288','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('677','1385453291','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('678','1385453320','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('679','1385453330','1','admin','301','15','Третий текс под третим блоком','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('680','1385453335','1','admin','302','15','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('681','1385453335','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('682','1385453344','1','admin','301','15','Третий текс под третим блоком','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('683','1385453346','1','admin','304','15','-','Duplicate Template Variable');
INSERT INTO `modx_manager_log` VALUES ('684','1385453346','1','admin','301','20','Duplicate of Третий текс под третим блоком','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('685','1385453355','1','admin','302','20','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('686','1385453355','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('687','1385453364','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('688','1385453373','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('689','1385453374','1','admin','3','1','Главная','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('690','1385453425','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('691','1385453425','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('692','1385453517','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('693','1385453548','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('694','1385453550','1','admin','3','23','Как заказать','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('695','1385453567','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('696','1385453578','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('697','1385453593','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('698','1385455192','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('699','1385455197','1','admin','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('700','1385455374','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('701','1385455386','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('702','1385455403','1','admin','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('703','1385455433','1','admin','5','21','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('704','1385455435','1','admin','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('705','1385455436','1','admin','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('706','1385455453','1','admin','5','20','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('707','1385455457','1','admin','3','20','Очищеная вода по системе озоновая стерилизация','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('708','1385455457','1','admin','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('709','1385455461','1','admin','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('710','1385455464','1','admin','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('711','1385455481','1','admin','5','17','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('712','1385455482','1','admin','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('713','1385455485','1','admin','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('714','1385455488','1','admin','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('715','1385455491','1','admin','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('716','1385455494','1','admin','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('717','1385455499','1','admin','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('718','1385455537','1','admin','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('719','1385455554','1','admin','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('720','1385455599','1','admin','5','20','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('721','1385455600','1','admin','3','20','Очищеная вода по системе озоновая стерилизация','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('722','1385455756','1','admin','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('723','1385455764','1','admin','5','17','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('724','1385455765','1','admin','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('725','1385455791','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('726','1385455848','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('727','1385455849','1','admin','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('728','1385455875','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('729','1385455934','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('730','1385455936','1','admin','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('731','1385455945','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('732','1385456009','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('733','1385456013','1','admin','3','26','9 причин, чтоб пить воду, и делать это как можно чаще:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('734','1385456024','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('735','1385456092','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('736','1385456101','1','admin','3','27','Дистиляция и осмобратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('737','1385456106','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('738','1385456980','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('739','1385456981','1','admin','3','28','Почему вода успокаивает и лечит наш организм?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('740','1385456997','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('741','1385457035','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('742','1385457037','1','admin','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('743','1385457133','1','admin','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('744','1385457176','1','admin','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('745','1385457177','1','admin','3','30','Какие виды питьевых вод существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('746','1385457184','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('747','1385457354','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('748','1385457358','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('749','1385457362','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('750','1385457387','1','admin','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('751','1385457387','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('752','1385457411','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('753','1385457435','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('754','1385457450','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('755','1385457451','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('756','1385457463','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('757','1385457478','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('758','1385457478','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('759','1385457480','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('760','1385457492','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('761','1385457492','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('762','1385457500','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('763','1385457510','1','admin','20','12','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('764','1385457510','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('765','1385457512','1','admin','16','11','Технологии очистки','Editing template');
INSERT INTO `modx_manager_log` VALUES ('766','1385457522','1','admin','20','11','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('767','1385457522','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('768','1385457612','1','admin','16','11','Технологии очистки','Editing template');
INSERT INTO `modx_manager_log` VALUES ('769','1385457648','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('770','1385457650','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('771','1385457663','1','admin','20','10','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('772','1385457664','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('773','1385457694','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('774','1385457694','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('775','1385457801','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('776','1385458267','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('777','1385458267','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('778','1385458854','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('779','1385460352','1','admin','97','7','-','Duplicate Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('780','1385460353','1','admin','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('781','1385460443','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('782','1385460449','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('783','1385460453','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('784','1385460460','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('785','1385460472','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('786','1385460475','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('787','1385460494','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('788','1385460499','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('789','1385460501','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('790','1385460504','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('791','1385460532','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('792','1385460532','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('793','1385460669','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('794','1385460678','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('795','1385460678','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('796','1385460885','1','admin','79','11','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('797','1385460885','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('798','1385460889','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('799','1385460895','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('800','1385460895','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('801','1385460938','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('802','1385460938','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('803','1385460989','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('804','1385460995','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('805','1385460995','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('806','1385461073','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('807','1385461074','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('808','1385461254','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('809','1385461255','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('810','1385461294','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('811','1385461294','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('812','1385461326','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('813','1385461326','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('814','1385461397','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('815','1385461401','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('816','1385461854','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('817','1385461864','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('818','1385461919','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('819','1385461937','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('820','1385461938','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('821','1385463222','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('822','1385463699','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('823','1385463946','1','admin','96','3','-','Duplicate Template');
INSERT INTO `modx_manager_log` VALUES ('824','1385463946','1','admin','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('825','1385463949','1','admin','20','13','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('826','1385463949','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('827','1385463952','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('828','1385463996','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('829','1385463996','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('830','1385464048','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('831','1385464055','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('832','1385464058','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('833','1385464119','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('834','1385464119','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('835','1385464124','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('836','1385464124','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('837','1385464163','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('838','1385464163','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('839','1385464207','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('840','1385464220','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('841','1385464220','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('842','1385464238','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('843','1385464238','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('844','1385464357','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('845','1385464369','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('846','1385464369','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('847','1385464409','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('848','1385464418','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('849','1385464418','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('850','1385464474','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('851','1385464494','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('852','1385464494','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('853','1385464541','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('854','1385464578','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('855','1385464578','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('856','1385465036','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('857','1385465047','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('858','1385465047','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('859','1385465074','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('860','1385465094','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('861','1385465094','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('862','1385465110','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('863','1385465124','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('864','1385465124','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('865','1385465140','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('866','1385465152','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('867','1385465152','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('868','1385465204','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('869','1385465204','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('870','1385465238','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('871','1385465258','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('872','1385465263','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('873','1385465311','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('874','1385465312','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('875','1385465321','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('876','1385465321','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('877','1385465357','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('878','1385465357','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('879','1385465443','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('880','1385465443','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('881','1385465470','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('882','1385465470','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('883','1385465513','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('884','1385465517','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('885','1385465520','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('886','1385465533','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('887','1385465539','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('888','1385465556','1','admin','79','7','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('889','1385465557','1','admin','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('890','1385465661','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('891','1385465665','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('892','1385465710','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('893','1385465711','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('894','1385465735','1','admin','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('895','1385465736','1','admin','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('896','1385468561','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('897','1385468652','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('898','1385468687','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('899','1385468688','1','admin','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('900','1385468749','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('901','1385468751','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('902','1385468844','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('903','1385468844','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('904','1385468866','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('905','1385468866','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('906','1385468904','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('907','1385468904','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('908','1385468975','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('909','1385468975','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('910','1385469006','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('911','1385469006','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('912','1385469059','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('913','1385469059','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('914','1385469282','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('915','1385469282','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('916','1385469336','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('917','1385469336','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('918','1385469468','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('919','1385469473','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('920','1385469483','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('921','1385469483','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('922','1385469503','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('923','1385469518','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('924','1385469519','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('925','1385469543','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('926','1385469543','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('927','1385469660','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('928','1385469660','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('929','1385469729','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('930','1385469736','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('931','1385469740','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('932','1385469743','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('933','1385469745','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('934','1385469775','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('935','1385469775','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('936','1385469830','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('937','1385469840','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('938','1385469840','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('939','1385469850','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('940','1385469851','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('941','1385469874','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('942','1385469874','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('943','1385469923','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('944','1385469923','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('945','1385469942','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('946','1385469943','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('947','1385470018','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('948','1385470018','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('949','1385470020','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('950','1385470023','1','admin','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('951','1385470033','1','admin','20','9','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('952','1385470033','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('953','1385470051','1','admin','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('954','1385470069','1','admin','20','12','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('955','1385470069','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('956','1385470071','1','admin','16','11','Технологии очистки','Editing template');
INSERT INTO `modx_manager_log` VALUES ('957','1385470091','1','admin','20','11','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('958','1385470091','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('959','1385470093','1','admin','16','10','Услуги и цены','Editing template');
INSERT INTO `modx_manager_log` VALUES ('960','1385470098','1','admin','20','10','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('961','1385470098','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('962','1385470108','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('963','1385470111','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('964','1385470113','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('965','1385470135','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('966','1385470135','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('967','1385470159','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('968','1385470166','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('969','1385470166','1','admin','31','-','/var/www/eney/data/www/voda.astudio.pro/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('970','1385472818','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('971','1385472826','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('972','1385472978','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('973','1385472987','1','admin','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('974','1385472988','1','admin','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('975','1385473005','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('976','1385473010','1','admin','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('977','1385473016','1','admin','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('978','1385473019','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('979','1385473024','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('980','1385473036','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('981','1385473039','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('982','1385473044','1','admin','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('983','1385473046','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('984','1385473047','1','admin','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('985','1385473054','1','admin','5','23','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('986','1385473056','1','admin','3','23','Как заказать','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('987','1385473062','1','admin','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('988','1385473078','1','admin','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('989','1385473079','1','admin','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('990','1385473080','1','admin','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('991','1385473086','1','admin','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('992','1385473087','1','admin','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('993','1385473088','1','admin','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('994','1385473094','1','admin','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('995','1385473095','1','admin','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('996','1385473095','1','admin','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('997','1385473101','1','admin','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('998','1385473102','1','admin','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('999','1385473103','1','admin','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1000','1385473114','1','admin','5','14','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1001','1385473116','1','admin','3','14','Американскими исследователями доказано что бутилированная вода хороша для активного похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1002','1385473116','1','admin','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1003','1385473121','1','admin','5','16','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1004','1385473123','1','admin','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1005','1385473124','1','admin','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1006','1385473129','1','admin','5','17','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1007','1385473131','1','admin','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1008','1385473133','1','admin','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1009','1385473141','1','admin','5','19','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1010','1385473142','1','admin','3','19','Что такое обратный осмос, и как он влияет на качество жизни','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1011','1385473142','1','admin','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1012','1385473148','1','admin','5','20','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1013','1385473149','1','admin','3','20','Очищеная вода по системе озоновая стерилизация','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1014','1385473151','1','admin','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1015','1385473156','1','admin','5','21','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1016','1385473158','1','admin','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1017','1385473158','1','admin','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1018','1385473174','1','admin','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1019','1385473176','1','admin','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1020','1385473176','1','admin','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1021','1385473185','1','admin','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1022','1385473186','1','admin','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1023','1385473186','1','admin','27','26','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1024','1385473192','1','admin','5','26','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1025','1385473193','1','admin','3','26','9 причин, чтоб пить воду, и делать это как можно чаще:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1026','1385473194','1','admin','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1027','1385473200','1','admin','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1028','1385473201','1','admin','3','27','Дистиляция и осмобратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1029','1385473202','1','admin','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1030','1385473208','1','admin','5','28','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1031','1385473209','1','admin','3','28','Почему вода успокаивает и лечит наш организм?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1032','1385473210','1','admin','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1033','1385473219','1','admin','5','29','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1034','1385473220','1','admin','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1035','1385473221','1','admin','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1036','1385473231','1','admin','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1037','1385473232','1','admin','3','30','Какие виды питьевых вод существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1038','1385486020','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1039','1385486043','1','admin','67','-','-','Removing locks');
INSERT INTO `modx_manager_log` VALUES ('1040','1385486050','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1041','1385486059','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1042','1385486144','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1043','1385486145','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1044','1385486317','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1045','1385486324','1','admin','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1046','1385486367','1','admin','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1047','1385486367','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1048','1385486370','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1049','1385486391','1','admin','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('1050','1385486391','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1051','1385486397','1','admin','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1052','1385486465','1','admin','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1053','1385486465','1','admin','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1054','1385486505','1','admin','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1055','1385486505','1','admin','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1056','1385486536','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1057','1385486547','1','admin','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1058','1385486548','1','admin','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1059','1385486605','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1061','1385494098','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1063','1385494110','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1065','1385494116','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1067','1385494121','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1069','1385494129','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1071','1385494172','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1073','1385494182','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1075','1385494207','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1077','1385494228','1','admin','31','-','/usr/home/crystalwater/public_html/.htaccess','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1079','1385494261','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1081','1385494269','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1083','1385494386','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1085','1385494386','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1087','1385494613','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1089','1385494619','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1091','1385494741','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1093','1385495136','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1095','1385495143','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1097','1385495150','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1099','1385495173','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1101','1385495179','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1103','1385495195','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1105','1385495200','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1107','1385495305','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1109','1385495309','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1111','1385495330','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1113','1385495330','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1115','1385495463','1','admin','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1117','1385495494','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1119','1385495653','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1121','1385495657','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1123','1385495660','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1125','1385495680','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1127','1385495720','1','admin','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1129','1385495722','1','admin','108','2','Extras','Edit module');
INSERT INTO `modx_manager_log` VALUES ('1131','1385495732','1','admin','109','2','-','Saving module');
INSERT INTO `modx_manager_log` VALUES ('1133','1385495732','1','admin','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1135','1385495743','1','admin','67','-','Extras','Removing locks');
INSERT INTO `modx_manager_log` VALUES ('1137','1385495749','1','admin','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1139','1385495753','1','admin','115','3','-','View event log details');
INSERT INTO `modx_manager_log` VALUES ('1141','1385495763','1','admin','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1143','1385495766','1','admin','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('1145','1385495769','1','admin','115','1','-','View event log details');
INSERT INTO `modx_manager_log` VALUES ('1147','1385495851','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1149','1385495869','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1151','1385495952','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1153','1385495969','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1155','1385495981','1','admin','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1157','1385496584','1','admin','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1159','1385496674','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1161','1385496741','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1163','1385497037','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1165','1385497075','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1167','1385497081','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1169','1385497094','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1171','1385497117','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1173','1385497194','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1175','1385497199','1','admin','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1177','1385497524','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1179','1385497568','1','admin','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1181','1385497654','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1183','1385497659','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1185','1385497814','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1187','1385498422','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1189','1385498435','1','admin','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('1191','1385498509','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1193','1385498558','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1195','1385498566','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1197','1385498569','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1199','1385499904','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1201','1385500000','1','admin','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1203','1385500002','1','admin','11','-','New user','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('1205','1385500036','1','admin','32','-','-','Saving user');
INSERT INTO `modx_manager_log` VALUES ('1207','1385500501','1','admin','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1209','1385500531','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1211','1385500543','1','admin','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1213','1385500659','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1215','1385500709','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1217','1385500724','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1219','1385500727','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1221','1385500730','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1223','1385500736','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1225','1385500739','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1227','1385500747','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1229','1385500749','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1231','1385500752','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1233','1385500791','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1235','1385500793','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1237','1385500814','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1239','1385500814','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1241','1385500815','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1243','1385501253','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1245','1385501255','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1247','1385501257','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1249','1385501259','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1251','1385501260','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1253','1385501262','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1255','1385501264','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1257','1385501266','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1259','1385501267','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1261','1385501269','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1263','1385501270','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1265','1385501271','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1267','1385501272','1','admin','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1269','1385501272','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1271','1385501274','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1273','1385501276','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1275','1385501277','1','admin','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1277','1385501278','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1279','1385501281','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1281','1385501285','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1283','1385501310','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1285','1385501353','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1287','1385501359','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1289','1385501369','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1291','1385501390','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1293','1385501400','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1295','1385501402','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1297','1385501506','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1299','1385501537','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1301','1385501548','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1303','1385501550','3','manager','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1305','1385501552','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1307','1385501560','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1309','1385501568','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1311','1385501569','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1313','1385501571','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1315','1385501575','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1317','1385501594','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1319','1385501602','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1321','1385501611','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1323','1385501624','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1325','1385501626','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1327','1385501629','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1329','1385501651','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1331','1385501653','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1333','1385501655','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1335','1385501657','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1337','1385501663','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1339','1385501666','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1341','1385501670','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1343','1385501678','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1345','1385501692','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1347','1385501741','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1349','1385501757','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1351','1385501776','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1353','1385501778','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1355','1385501822','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1357','1385501827','3','manager','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('1359','1385501841','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1361','1385501851','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1363','1385501854','3','manager','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1365','1385501856','3','manager','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1367','1385501858','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1369','1385501908','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1371','1385502044','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1373','1385502072','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1375','1385502077','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1377','1385502102','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1379','1385502108','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1381','1385502113','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1383','1385502117','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1385','1385502133','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1387','1385502136','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1389','1385502140','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1391','1385502145','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1393','1385502149','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1395','1385502151','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1397','1385502189','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1399','1385502191','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1401','1385502233','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1403','1385502763','3','manager','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1405','1385502793','3','manager','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1407','1385502795','3','manager','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1409','1385502797','3','manager','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('1411','1385502803','3','manager','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('1413','1385502805','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1415','1385502808','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1417','1385502810','3','manager','12','1','admin','Editing user');
INSERT INTO `modx_manager_log` VALUES ('1419','1385503011','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1421','1385503020','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1423','1385503023','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1425','1385503027','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1427','1385503027','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1429','1385503084','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1431','1385503121','1','admin','301','1','Мета дескрипшин','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1433','1385503132','1','admin','302','1','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1435','1385503132','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1437','1385503134','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1439','1385503138','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1441','1385503144','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1443','1385503146','1','admin','301','2','Ключевые слова','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1445','1385503155','1','admin','302','2','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1447','1385503155','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1449','1385503163','1','admin','301','9','Отображение в sitemap','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1451','1385503173','1','admin','302','9','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1453','1385503173','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1455','1385503176','1','admin','301','10','Приоритет страницы','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1457','1385503186','1','admin','302','10','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1459','1385503186','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1461','1385503189','1','admin','301','4','Мета тайтл','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1463','1385503195','1','admin','302','4','-','Save Template Variable');
INSERT INTO `modx_manager_log` VALUES ('1465','1385503196','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1467','1385503198','1','admin','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1469','1385503301','1','admin','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1471','1385503311','1','admin','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1473','1385503362','1','admin','67','-','-','Removing locks');
INSERT INTO `modx_manager_log` VALUES ('1475','1385503370','1','admin','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1477','1385503491','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1479','1385503494','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1481','1385503497','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1483','1385503501','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1485','1385503516','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1487','1385503520','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1489','1385503532','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1491','1385503610','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1493','1385503613','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1495','1385503616','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1497','1385503620','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1499','1385503806','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1501','1385504221','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1503','1385504228','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1505','1385504230','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1507','1385504232','3','manager','27','26','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1509','1385504235','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1511','1385504237','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1513','1385504239','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1515','1385504241','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1517','1385504243','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1519','1385504246','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1521','1385504249','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1523','1385504267','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1525','1385504271','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('1527','1385504271','3','manager','83','-','-','Exporting a resource to HTML');
INSERT INTO `modx_manager_log` VALUES ('1529','1385504273','3','manager','95','-','-','Importing resources from HTML');
INSERT INTO `modx_manager_log` VALUES ('1531','1385504281','3','manager','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('1533','1385504312','3','manager','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1535','1385504335','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1537','1385504366','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1539','1385504438','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1541','1385504449','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1543','1385504458','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1545','1385504465','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1547','1385504469','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1549','1385505179','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1551','1385505490','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1553','1385505515','1','admin','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1555','1385506078','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1557','1385506080','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1559','1385506114','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1561','1385506116','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1563','1385506117','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('1565','1385506120','3','manager','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('1567','1385506122','3','manager','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1569','1385506124','3','manager','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('1571','1385506126','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1573','1385506133','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('1575','1385506500','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1577','1385506764','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1579','1385506998','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1581','1385507064','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1583','1385507239','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1585','1385507249','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1587','1385507255','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1589','1385507288','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1591','1385507304','3','manager','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1593','1385507313','3','manager','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1595','1385507313','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1597','1385507326','3','manager','78','1','eFeedbackForm','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1599','1385507354','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1601','1385507358','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1603','1385507365','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1605','1385507379','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1607','1385507387','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1609','1385507400','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1611','1385507420','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1613','1385507557','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1615','1385507572','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1617','1385507579','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1619','1385507608','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1621','1385507623','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1623','1385507626','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1625','1385507628','3','manager','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1627','1385507631','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1629','1385507633','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1631','1385507643','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1633','1385507648','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1635','1385507683','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1637','1385507683','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1639','1385507694','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1641','1385507761','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1643','1385507761','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1645','1385507773','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1647','1385507783','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1649','1385507784','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1651','1385507789','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1653','1385507845','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1655','1385507845','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1657','1385507856','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1659','1385507864','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1661','1385507864','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1663','1385507875','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1665','1385507892','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1667','1385507892','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1669','1385507914','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1671','1385507919','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1673','1385507921','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1675','1385507928','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1677','1385507933','3','manager','78','6','mm_rules','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1679','1385507943','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1681','1385507945','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1683','1385507946','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1685','1385507949','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1687','1385507951','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('1689','1385507961','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1691','1385507974','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1693','1385508078','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1695','1385508078','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1697','1385508086','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1699','1385508116','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1701','1385508116','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1703','1385508365','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1705','1385508401','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1707','1385508401','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1709','1385508440','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1711','1385508489','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1713','1385508489','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1715','1385535458','1','admin','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1717','1385535469','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1719','1385535478','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1721','1385535496','1','admin','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1723','1385535496','1','admin','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1725','1385536476','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1727','1385536479','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1729','1385536481','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1731','1385536563','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1733','1385536563','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1735','1385536624','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1737','1385536627','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1739','1385536730','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1741','1385536735','1','admin','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1743','1385536750','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1745','1385536755','1','admin','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('1747','1385536779','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1749','1385536787','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1751','1385536813','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1753','1385536814','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1755','1385536816','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1757','1385536816','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1759','1385536819','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1761','1385536850','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1763','1385536853','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1765','1385536891','1','admin','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1767','1385536892','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1769','1385536907','1','admin','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1771','1385536907','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1773','1385536930','1','admin','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1775','1385536930','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1777','1385536981','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1779','1385536983','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1781','1385536985','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1783','1385537039','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1785','1385537039','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1787','1385537042','1','admin','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('1789','1385537045','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1791','1385537067','1','admin','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1793','1385537067','1','admin','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('1795','1385537123','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1797','1385537126','1','admin','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('1799','1385537128','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1801','1385537160','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1803','1385537160','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1805','1385537201','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1807','1385537223','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1809','1385537223','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1811','1385537231','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1813','1385537243','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1815','1385537243','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1817','1385537253','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1819','1385537265','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1821','1385537265','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1823','1385537288','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1825','1385537349','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1827','1385537349','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1829','1385537369','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1831','1385537384','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1833','1385537384','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1835','1385537409','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1837','1385537423','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1839','1385537423','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1841','1385537437','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1843','1385537464','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1845','1385537464','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1847','1385537558','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1849','1385537571','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1851','1385537571','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1853','1385537611','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1855','1385537633','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('1857','1385537633','1','admin','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('1859','1385537710','1','admin','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('1861','1385537766','1','admin','3','30','Какие виды питьевых вод существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1863','1385537772','1','admin','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1865','1385537793','1','admin','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('1867','1385544063','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('1869','1385544078','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1871','1385544083','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1873','1385544084','3','manager','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1875','1385544211','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1877','1385544249','3','manager','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1879','1385544250','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1881','1385544310','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1883','1385544322','3','manager','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1885','1385544323','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1887','1385544360','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1889','1385544361','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1891','1385544376','3','manager','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1893','1385544377','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1895','1385544422','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1897','1385544430','3','manager','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1899','1385544431','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1901','1385544514','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1903','1385544522','3','manager','5','15','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1905','1385544523','3','manager','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1907','1385544554','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1909','1385544564','3','manager','5','15','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1911','1385544566','3','manager','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1913','1385544660','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1915','1385544663','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1917','1385544684','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1919','1385544686','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1921','1385544714','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1923','1385544730','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1925','1385544731','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1927','1385544761','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1929','1385544770','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1931','1385544772','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1933','1385544838','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1935','1385544844','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1937','1385544846','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1939','1385544848','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1941','1385544848','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1943','1385544873','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1945','1385544882','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1947','1385544883','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1949','1385544916','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1951','1385544929','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1953','1385544930','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1955','1385544975','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1957','1385544985','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1959','1385544986','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1961','1385545037','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1963','1385545107','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1965','1385545108','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1967','1385545137','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1969','1385545154','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1971','1385545155','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1973','1385545274','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1975','1385545279','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1977','1385545281','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1979','1385545325','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1981','1385545370','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1983','1385545372','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1985','1385545516','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1987','1385545526','3','manager','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1989','1385545527','3','manager','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1991','1385545555','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1993','1385545564','3','manager','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('1995','1385545565','3','manager','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('1997','1385545641','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('1999','1385545650','3','manager','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2001','1385545652','3','manager','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2003','1385545748','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2005','1385545754','3','manager','5','14','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2007','1385545756','3','manager','3','14','Американскими исследователями доказано что бутилированная вода хороша для активного похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2009','1385545797','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2011','1385545870','3','manager','5','14','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2013','1385545871','3','manager','3','14','Американскими исследователями доказано что бутилированная вода хороша для активного похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2015','1385546111','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2017','1385546156','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2019','1385546158','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2021','1385546294','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('2023','1385546295','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2025','1385546304','3','manager','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2027','1385546306','3','manager','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2029','1385546307','3','manager','91','-','-','Editing Web Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2031','1385546308','3','manager','40','-','-','Editing Access Permissions');
INSERT INTO `modx_manager_log` VALUES ('2033','1385546309','3','manager','86','-','-','Role management');
INSERT INTO `modx_manager_log` VALUES ('2035','1385546314','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('2037','1385546323','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2039','1385546330','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('2041','1385546331','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2043','1385546332','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('2045','1385546334','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2047','1385546335','3','manager','12','1','admin','Editing user');
INSERT INTO `modx_manager_log` VALUES ('2049','1385546368','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2051','1385546373','3','manager','12','1','admin','Editing user');
INSERT INTO `modx_manager_log` VALUES ('2053','1385546378','3','manager','33','1','-','Deleting user');
INSERT INTO `modx_manager_log` VALUES ('2055','1385546378','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2057','1385546389','3','manager','99','-','-','Manage Web Users');
INSERT INTO `modx_manager_log` VALUES ('2059','1385546391','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2061','1385546394','3','manager','11','-','New user','Creating a user');
INSERT INTO `modx_manager_log` VALUES ('2063','1385546397','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2065','1385546398','3','manager','12','3','manager','Editing user');
INSERT INTO `modx_manager_log` VALUES ('2067','1385546415','3','manager','32','3','-','Saving user');
INSERT INTO `modx_manager_log` VALUES ('2069','1385546415','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2071','1385546419','3','manager','28','-','-','Changing password');
INSERT INTO `modx_manager_log` VALUES ('2073','1385546877','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2075','1385553311','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2077','1385553764','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2079','1385553792','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2081','1385553794','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2083','1385553804','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2085','1385553805','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2087','1385553868','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2089','1385553869','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2091','1385553897','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2093','1385553919','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2095','1385553921','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2097','1385554913','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2099','1385554938','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2101','1385554951','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2103','1385554974','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2105','1385554976','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2107','1385564946','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2109','1385565017','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2111','1385565018','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2113','1385565050','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2115','1385565095','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2117','1385565098','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2119','1385565116','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2121','1385565133','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2123','1385565191','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2125','1385565192','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2127','1385565490','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2129','1385565563','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2131','1385565565','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2133','1385565585','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2135','1385565680','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2137','1385565682','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2139','1385565705','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2141','1385565754','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2143','1385565755','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2145','1385565779','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2147','1385565807','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2149','1385565851','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2151','1385565852','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2153','1385565855','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2155','1385565878','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2157','1385565923','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2159','1385566128','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2161','1385566466','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2163','1385566468','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2165','1385566477','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2167','1385566507','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2169','1385566509','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2171','1385566517','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2173','1385566547','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2175','1385566548','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2177','1385566558','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2179','1385566558','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2181','1385566561','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2183','1385566563','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2185','1385566563','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2187','1385566589','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2189','1385566591','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2191','1385566601','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2193','1385566611','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2195','1385566613','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2197','1385566621','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2199','1385566651','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2201','1385566652','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2203','1385566662','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2205','1385566672','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2207','1385566673','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2209','1385566684','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2211','1385566692','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2213','1385566694','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2215','1385567087','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2217','1385567101','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2219','1385567114','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2221','1385567129','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2223','1385567134','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2225','1385567311','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2227','1385567639','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2229','1385567663','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2231','1385568513','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2233','1385569105','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2235','1385569107','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2237','1385569221','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2239','1385569251','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2241','1385569253','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2243','1385569381','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2245','1385569538','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2247','1385569540','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2249','1385569560','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2251','1385569842','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2253','1385569859','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2255','1385569864','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2257','1385569866','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2259','1385569871','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2261','1385569887','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2263','1385569888','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2265','1385569955','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2267','1385570031','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2269','1385570032','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2271','1385570106','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2273','1385570107','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2275','1385570123','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2277','1385570147','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2279','1385570175','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2281','1385570229','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2283','1385570241','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2285','1385570243','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2287','1385570255','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2289','1385570287','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2291','1385570289','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2293','1385570324','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2295','1385570330','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2297','1385570332','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2299','1385570357','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2301','1385570363','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2303','1385570366','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2305','1385570368','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2307','1385570372','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2309','1385570374','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2311','1385570404','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('2313','1385570407','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2315','1385570459','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2317','1385570469','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2319','1385570471','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2321','1385570482','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2323','1385570487','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2325','1385570488','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2327','1385570500','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2329','1385570513','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2331','1385570515','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2333','1385570532','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2335','1385570532','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2337','1385570534','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2339','1385570545','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2341','1385570548','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2343','1385570550','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2345','1385570553','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2347','1385570581','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2349','1385570583','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2351','1385570589','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2353','1385570638','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2355','1385570639','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2357','1385570683','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2359','1385570717','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2361','1385570733','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2363','1385570737','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2365','1385570744','3','manager','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('2367','1385570755','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2369','1385571221','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2371','1385571222','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2373','1385571225','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2375','1385571232','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2377','1385571233','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2379','1385571281','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2381','1385571289','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2383','1385571291','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2385','1385571355','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2387','1385571372','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2389','1385571373','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2391','1385571697','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2393','1385572821','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2395','1385572857','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2397','1385572859','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2399','1385572874','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2401','1385572898','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2403','1385572900','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2405','1385573312','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('2407','1385573317','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2409','1385573327','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2411','1385573332','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2413','1385573374','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2415','1385573374','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2417','1385573443','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2419','1385573443','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2421','1385573539','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2423','1385573556','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2425','1385573558','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2427','1385573564','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2429','1385573566','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2431','1385573568','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2433','1385573569','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2435','1385573570','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2437','1385573572','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2439','1385573578','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2441','1385573595','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2443','1385573607','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2445','1385573609','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2447','1385573618','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2449','1385573625','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2451','1385573627','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2453','1385573635','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2455','1385573660','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2457','1385573661','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2459','1385573665','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2461','1385573665','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2463','1385573667','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2465','1385573690','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2467','1385573692','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2469','1385573692','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2471','1385573692','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2473','1385573707','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2475','1385573709','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2477','1385573709','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2479','1385573726','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2481','1385573726','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2483','1385573733','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2485','1385573734','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2487','1385573747','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2489','1385573749','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2491','1385573759','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2493','1385573788','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2495','1385573790','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2497','1385573806','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2499','1385573813','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2501','1385573814','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2503','1385573822','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2505','1385573856','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2507','1385573858','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2509','1385573893','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2511','1385573908','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2513','1385573910','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2515','1385573919','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2517','1385573923','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2519','1385573925','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2521','1385573929','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2523','1385573933','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2525','1385573935','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2527','1385573945','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2529','1385573949','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2531','1385573951','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2533','1385573956','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2535','1385573963','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2537','1385573965','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2539','1385573974','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2541','1385573981','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2543','1385573983','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2545','1385573990','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2547','1385573997','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2549','1385573999','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2551','1385574013','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2553','1385574020','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2555','1385574021','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2557','1385574033','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2559','1385574044','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2561','1385574046','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2563','1385574050','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2565','1385574061','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2567','1385574062','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2569','1385574078','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2571','1385574080','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2573','1385574081','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2575','1385574087','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2577','1385574088','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2579','1385574088','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2581','1385574097','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2583','1385574098','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2585','1385574100','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2587','1385574112','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2589','1385574117','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2591','1385574119','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2593','1385574119','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2595','1385574122','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2597','1385574127','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2599','1385574129','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2601','1385574143','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2603','1385574145','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2605','1385574149','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2607','1385574152','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2609','1385574170','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2611','1385574181','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2613','1385574203','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2615','1385574205','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2617','1385574215','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2619','1385574240','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2621','1385574244','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2623','1385574246','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2625','1385574251','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2627','1385574253','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2629','1385574265','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2631','1385574266','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2633','1385574268','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2635','1385574271','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2637','1385574279','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2639','1385574284','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2641','1385574287','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2643','1385574290','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2645','1385574324','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2647','1385574332','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2649','1385574332','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2651','1385574355','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2653','1385574358','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2655','1385574455','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2657','1385574455','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2659','1385574493','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2661','1385574493','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2663','1385574525','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2665','1385574525','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2667','1385574785','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2669','1385574787','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2671','1385574790','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2673','1385574792','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2675','1385574816','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2677','1385574816','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2679','1385574910','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2681','1385574948','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2683','1385574950','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2685','1385575040','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2687','1385575040','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2689','1385575087','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2691','1385575101','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2693','1385575101','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2695','1385575122','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2697','1385575122','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2699','1385575260','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2701','1385575299','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2703','1385575301','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2705','1385575327','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2707','1385575404','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2709','1385575406','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('2711','1385575408','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2713','1385575483','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2715','1385575483','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2717','1385575499','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2719','1385575499','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2721','1385575511','3','manager','97','10','-','Duplicate Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2723','1385575512','3','manager','78','13','Duplicate of ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2725','1385575515','3','manager','79','13','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2727','1385575515','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('2729','1385575523','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2731','1385575527','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2733','1385575529','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2735','1385575557','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2737','1385575563','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2739','1385575634','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2741','1385575635','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2743','1385575887','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2745','1385575889','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2747','1385575896','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2749','1385575914','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2751','1385575916','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2753','1385575929','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2755','1385575960','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2757','1385575962','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2759','1385575976','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2761','1385576006','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2763','1385576006','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2765','1385576062','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2767','1385576064','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2769','1385576067','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2771','1385576067','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2773','1385576088','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2775','1385576089','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2777','1385576090','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2779','1385576110','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2781','1385576110','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2783','1385576124','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2785','1385576124','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2787','1385576124','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2789','1385576140','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2791','1385576141','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2793','1385576159','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2795','1385576166','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2797','1385576167','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2799','1385576178','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2801','1385576185','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2803','1385576187','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2805','1385576193','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2807','1385576222','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2809','1385576227','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2811','1385576231','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2813','1385576235','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2815','1385576272','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2817','1385576277','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2819','1385576279','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2821','1385576285','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2823','1385576292','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2825','1385576294','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2827','1385576315','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2829','1385576324','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2831','1385576324','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2833','1385576328','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2835','1385576335','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2837','1385576373','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2839','1385576382','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2841','1385576382','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2843','1385576424','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2845','1385576447','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2847','1385576455','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2849','1385576455','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2851','1385576476','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2853','1385576476','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2855','1385576506','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2857','1385576506','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2859','1385576514','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2861','1385576514','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2863','1385576591','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2865','1385576623','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2867','1385576623','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2869','1385576644','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2871','1385576662','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2873','1385576662','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2875','1385576679','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2877','1385576698','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2879','1385576698','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2881','1385576753','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2883','1385576753','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2885','1385576788','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2887','1385576788','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2889','1385576797','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2891','1385576805','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2893','1385576805','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2895','1385576815','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2897','1385576836','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2899','1385576847','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2901','1385576848','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2903','1385576852','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2905','1385576852','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2907','1385576885','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2909','1385576885','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2911','1385576894','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2913','1385576900','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2915','1385576900','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2917','1385576918','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2919','1385576919','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2921','1385576928','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2923','1385576934','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2925','1385576937','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2927','1385576945','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2929','1385576973','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2931','1385576974','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2933','1385576985','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2935','1385576992','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2937','1385577002','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2939','1385577002','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2941','1385577023','3','manager','5','10','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2943','1385577026','3','manager','3','10','Вода оптом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2945','1385577055','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2947','1385577066','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2949','1385577068','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2951','1385577074','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2953','1385577080','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2955','1385577084','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2957','1385577084','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2959','1385577120','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2961','1385577128','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2963','1385577128','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2965','1385577169','3','manager','79','10','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2967','1385577169','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('2969','1385577370','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2971','1385577395','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Modified File');
INSERT INTO `modx_manager_log` VALUES ('2973','1385577395','3','manager','31','-','/usr/home/crystalwater/public_html/css/style.css','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('2975','1385577408','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2977','1385577409','3','manager','3','11','Как подобрать компании которыми осуществляеться доставка воды киев отзывы о которой вас не обманут','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2979','1385577409','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2981','1385577447','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2983','1385577927','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2985','1385577928','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2987','1385577930','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2989','1385577945','3','manager','75','-','Extras','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('2991','1385578003','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('2993','1385578025','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2995','1385578027','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('2997','1385578710','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('2999','1385578712','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3001','1385578767','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3003','1385578788','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3005','1385578791','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3007','1385578794','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3009','1385578815','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3011','1385578817','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3013','1385578824','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3015','1385578874','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3017','1385578876','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3019','1385578881','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3021','1385578983','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3023','1385578985','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3025','1385578996','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3027','1385579012','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3029','1385579196','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('3031','1385579200','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3033','1385579333','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3035','1385581247','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3037','1385581249','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3039','1385581325','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3041','1385581355','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3043','1385581358','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3045','1385581378','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3047','1385581425','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3049','1385581428','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3051','1385581574','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3053','1385581606','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3055','1385581988','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3057','1385581990','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3059','1385582004','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3061','1385582102','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3063','1385582104','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3065','1385582124','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3067','1385582130','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3069','1385582134','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3071','1385582244','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3073','1385582257','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3075','1385583312','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3077','1385583315','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3079','1385583325','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3081','1385583365','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3083','1385583367','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3085','1385583377','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3087','1385583838','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3089','1385583841','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3091','1385583853','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3093','1385583902','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3095','1385583905','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3097','1385583910','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3099','1385583950','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3101','1385583951','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3103','1385583961','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3105','1385583989','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3107','1385583992','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3109','1385587874','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3111','1385587881','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3113','1385587882','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3115','1385587885','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3117','1385589116','3','manager','5','14','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3119','1385589117','3','manager','3','14','Вода не только для здоровья, а вода для похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3121','1385598079','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3123','1385598088','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3125','1385598092','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3127','1385598103','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3129','1385598105','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3131','1385598115','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3133','1385598119','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3135','1385598123','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3137','1385598125','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3139','1385598128','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3141','1385598129','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3143','1385598133','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3145','1385598134','3','manager','78','13','Duplicate of ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3147','1385598138','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3149','1385598140','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3151','1385598143','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3153','1385598145','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3155','1385598151','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3157','1385598153','3','manager','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3159','1385598197','3','manager','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3161','1385598197','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3163','1385598200','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3165','1385598211','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3167','1385598217','3','manager','78','7','contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3169','1385598221','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3171','1385598223','3','manager','78','6','mm_rules','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3173','1385598229','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3175','1385598242','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3177','1385598276','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3179','1385598337','3','manager','301','14','Второй текс под блоком2','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('3181','1385598340','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3183','1385598345','3','manager','301','6','Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('3185','1385598347','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3187','1385598355','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3189','1385598445','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3191','1385598662','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3193','1385598668','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3195','1385598698','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3197','1385598701','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3199','1385598703','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3201','1385598779','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3203','1385598782','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3205','1385598784','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3207','1385598786','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3209','1385598818','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3211','1385598825','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3213','1385598829','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3215','1385598858','3','manager','3','3','Бутыль','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3217','1385598864','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3219','1385598879','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3221','1385598881','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3223','1385598896','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3225','1385598903','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3227','1385599376','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3229','1385599383','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3231','1385599385','3','manager','78','13','Duplicate of ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3233','1385599391','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3235','1385599394','3','manager','78','4','footer','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3237','1385599402','3','manager','79','4','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3239','1385599402','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3241','1385630774','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3243','1385642819','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3245','1385643622','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3247','1385643626','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3249','1385643633','3','manager','78','6','mm_rules','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3251','1385643639','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3253','1385643642','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3255','1385643646','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3257','1385643648','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3259','1385643651','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3261','1385643653','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3263','1385643663','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3265','1385643671','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3267','1385643704','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3269','1385643706','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3271','1385643724','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3273','1385643738','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3275','1385643762','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3277','1385643767','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3279','1385643813','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3281','1385643834','3','manager','16','4','MODxHost','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3283','1385643844','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3285','1385643855','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3287','1385643857','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3289','1385643888','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3291','1385643903','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3293','1385643905','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3295','1385643962','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3297','1385643996','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3299','1385644146','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3301','1385644171','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3303','1385644178','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3305','1385644237','3','manager','20','13','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3307','1385644237','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3309','1385644252','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3311','1385644261','3','manager','20','13','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3313','1385644261','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3315','1385644303','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3317','1385644306','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3319','1385644326','3','manager','20','13','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3321','1385644326','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3323','1385644358','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3325','1385644365','3','manager','20','13','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3327','1385644366','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3329','1385644382','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3331','1385644408','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3333','1385644408','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3335','1385644420','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3337','1385644437','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3339','1385644437','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3341','1385644448','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3343','1385644483','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('3345','1385644483','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3347','1385645599','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3349','1385647980','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3351','1385647982','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3353','1385647997','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3355','1385649844','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3357','1385650556','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3359','1385650560','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3361','1385655537','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3363','1385655563','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3365','1385655571','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3367','1385655584','3','manager','3','4','Кулер','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3369','1385655597','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3371','1385655605','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3373','1385655670','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3375','1385655675','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3377','1385655680','3','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('3379','1385655708','3','manager','76','-','Extras','Element management');
INSERT INTO `modx_manager_log` VALUES ('3381','1385655719','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3383','1385655729','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3385','1385655775','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3387','1385655788','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3389','1385655796','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('3391','1385655815','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3393','1385656041','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3395','1385656072','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3397','1385656079','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3399','1385656084','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3401','1385656129','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3403','1385656137','3','manager','3','22','sitemap.xml','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3405','1385656158','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3407','1385656171','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3409','1385656184','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3411','1385656188','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3413','1385656235','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3415','1385656244','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('3417','1385656354','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('3419','1385656438','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('3421','1385656652','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3423','1385656959','3','manager','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3425','1385656961','3','manager','3','30','Какие виды питьевых вод существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3427','1385657807','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3429','1385657826','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3431','1385657836','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3433','1385657872','3','manager','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3435','1385657873','3','manager','3','30','Какие виды питьевых вод существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3437','1385657880','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3439','1385657885','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3441','1385657900','3','manager','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3443','1385657901','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3445','1385657904','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3447','1385657914','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3449','1385657954','3','manager','5','29','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3451','1385657956','3','manager','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3453','1385657998','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3455','1385658030','3','manager','5','28','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3457','1385658032','3','manager','3','28','Почему вода успокаивает и лечит наш организм?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3459','1385658120','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3461','1385658154','3','manager','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3463','1385658156','3','manager','3','27','Дистиляция и осмобратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3465','1385658176','3','manager','27','26','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3467','1385658216','3','manager','5','26','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3469','1385658218','3','manager','3','26','9 причин, чтоб пить воду, и делать это как можно чаще:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3471','1385658364','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3473','1385658510','3','manager','27','26','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3475','1385658547','3','manager','5','26','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3477','1385658549','3','manager','3','26','9 причин, чтоб пить воду, и делать это как можно чаще:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3479','1385658584','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3481','1385658611','3','manager','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3483','1385658613','3','manager','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3485','1385658702','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3487','1385658728','3','manager','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3489','1385658730','3','manager','3','25','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3491','1385658754','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3493','1385658791','3','manager','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3495','1385658792','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3497','1385658893','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3499','1385658920','3','manager','5','24','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3501','1385658922','3','manager','3','24','Выбирая воду обращайте внимание на:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3503','1385658979','3','manager','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3505','1385659010','3','manager','5','21','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3507','1385659011','3','manager','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3509','1385659768','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3511','1385659794','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3513','1385659794','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3515','1385659817','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3517','1385659817','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3519','1385659857','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3521','1385659903','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3523','1385660067','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3525','1385660071','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3527','1385660073','3','manager','108','2','Extras','Edit module');
INSERT INTO `modx_manager_log` VALUES ('3529','1385660078','3','manager','109','2','-','Saving module');
INSERT INTO `modx_manager_log` VALUES ('3531','1385660078','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3533','1385660080','3','manager','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('3535','1385660127','3','manager','76','-','Extras','Element management');
INSERT INTO `modx_manager_log` VALUES ('3537','1385660173','3','manager','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('3539','1385660200','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3541','1385660205','3','manager','102','9','New snippet','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('3543','1385660213','3','manager','103','9','-','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('3545','1385660213','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3547','1385660577','3','manager','22','13','New snippet','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('3549','1385660586','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3551','1385660605','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3553','1385660609','3','manager','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3555','1385660609','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3557','1385660691','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3559','1385660694','3','manager','107','-','New Module','Create new module');
INSERT INTO `modx_manager_log` VALUES ('3561','1385660922','3','manager','109','-','-','Saving module');
INSERT INTO `modx_manager_log` VALUES ('3563','1385660922','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3565','1385660950','3','manager','26','-','Cache All Pages','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('3567','1385660967','3','manager','106','-','Cache All Pages','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3569','1385660969','3','manager','108','3','Cache All Pages','Edit module');
INSERT INTO `modx_manager_log` VALUES ('3571','1385660979','3','manager','113','3','Cache All Pages','Manage module dependencies');
INSERT INTO `modx_manager_log` VALUES ('3573','1385660992','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3575','1385661011','3','manager','106','-','Cache All Pages','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3577','1385661014','3','manager','108','3','Cache All Pages','Edit module');
INSERT INTO `modx_manager_log` VALUES ('3579','1385661075','3','manager','109','3','-','Saving module');
INSERT INTO `modx_manager_log` VALUES ('3581','1385661075','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3583','1385661102','3','manager','112','2','Extras','Execute module');
INSERT INTO `modx_manager_log` VALUES ('3585','1385661176','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3587','1385661180','3','manager','108','3','Cache All Pages','Edit module');
INSERT INTO `modx_manager_log` VALUES ('3589','1385661278','3','manager','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3591','1385661325','3','manager','5','21','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3593','1385661327','3','manager','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3595','1385661329','3','manager','109','3','-','Saving module');
INSERT INTO `modx_manager_log` VALUES ('3597','1385661329','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3599','1385661343','3','manager','106','-','Cache All Pages','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3601','1385661347','3','manager','108','3','Cache All Pages','Edit module');
INSERT INTO `modx_manager_log` VALUES ('3603','1385661362','3','manager','110','3','-','Delete module');
INSERT INTO `modx_manager_log` VALUES ('3605','1385661362','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3607','1385661364','3','manager','108','2','Extras','Edit module');
INSERT INTO `modx_manager_log` VALUES ('3609','1385661371','3','manager','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3611','1385661373','3','manager','109','2','-','Saving module');
INSERT INTO `modx_manager_log` VALUES ('3613','1385661373','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3615','1385661403','3','manager','5','21','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3617','1385661404','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('3619','1385661405','3','manager','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3621','1385661434','3','manager','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3623','1385661442','3','manager','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3625','1385661443','3','manager','3','33','Как заказать','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3627','1385661445','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3629','1385661448','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3631','1385661451','3','manager','5','33','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3633','1385661452','3','manager','3','33','Как заказать','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3635','1385661456','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3637','1385661474','3','manager','5','20','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3639','1385661476','3','manager','3','20','Очищеная вода по системе озоновая стерилизация','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3641','1385661497','3','manager','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3643','1385661545','3','manager','5','19','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3645','1385661547','3','manager','3','19','Что такое обратный осмос, и как он влияет на качество жизни','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3647','1385661557','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3649','1385661577','3','manager','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3651','1385661580','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3653','1385661580','3','manager','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3655','1385661580','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3657','1385661581','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3659','1385661613','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3661','1385661615','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3663','1385661628','3','manager','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3665','1385661650','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3667','1385661650','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3669','1385661657','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3671','1385661659','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3673','1385661667','3','manager','5','33','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3675','1385661667','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3677','1385661681','3','manager','5','33','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3679','1385661681','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3681','1385661687','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3683','1385661689','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3685','1385661732','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3687','1385661736','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3689','1385661740','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3691','1385661753','3','manager','79','8','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('3693','1385661753','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('3695','1385661760','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3697','1385661762','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3699','1385661783','3','manager','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3701','1385661819','3','manager','5','17','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3703','1385661821','3','manager','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3705','1385661833','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3707','1385661870','3','manager','5','16','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3709','1385661871','3','manager','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3711','1385661893','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3713','1385661921','3','manager','5','15','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3715','1385661923','3','manager','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3717','1385661991','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3719','1385662016','3','manager','75','-','-','User/ role management');
INSERT INTO `modx_manager_log` VALUES ('3721','1385662021','3','manager','5','15','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3723','1385662023','3','manager','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3725','1385662102','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3727','1385662179','3','manager','5','14','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3729','1385662181','3','manager','3','14','Вода не только для здоровья, а вода для похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3731','1385662205','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3733','1385662342','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3735','1385662344','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3737','1385662362','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3739','1385662373','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3741','1385662561','3','manager','5','12','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3743','1385662563','3','manager','3','12','Польза или вред если питьевая вода обогащена углекислым газом','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3745','1385662640','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3747','1385662693','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3749','1385662695','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3751','1385662771','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3753','1385662798','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3755','1385662800','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3757','1385662805','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3759','1385662809','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3761','1385662824','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3763','1385662837','3','manager','27','12','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3765','1385662842','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3767','1385662848','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3769','1385662851','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3771','1385662855','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3773','1385662860','3','manager','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3775','1385662863','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3777','1385662866','3','manager','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3779','1385662871','3','manager','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3781','1385662874','3','manager','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3783','1385662878','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3785','1385662881','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3787','1385662885','3','manager','27','26','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3789','1385662888','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3791','1385662892','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3793','1385662896','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3795','1385662900','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3797','1385662971','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3799','1385663079','3','manager','5','29','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3801','1385663081','3','manager','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3803','1385663148','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3805','1385663714','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3807','1385663723','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3809','1385663727','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3811','1385663812','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3813','1385666539','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3815','1385666540','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3817','1385666551','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3819','1385666601','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3821','1385666603','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3823','1385666638','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3825','1385666655','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3827','1385666657','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3829','1385666759','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3831','1385667368','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3833','1385667370','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3835','1385667371','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3837','1385667499','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3839','1385667636','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3841','1385667747','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3843','1385667749','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3845','1385667762','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3847','1385667763','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3849','1385667768','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3851','1385667778','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3853','1385667783','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3855','1385667827','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3857','1385667828','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3859','1385667846','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3861','1385667864','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3863','1385667865','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3865','1385667921','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3867','1385667981','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3869','1385667982','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3871','1385668070','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3873','1385668256','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3875','1385668257','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3877','1385668277','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3879','1385668327','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3881','1385668329','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3883','1385668354','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3885','1385668366','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3887','1385668368','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3889','1385668376','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3891','1385668394','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3893','1385668396','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3895','1385668402','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3897','1385669311','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3899','1385669313','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3901','1385669329','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3903','1385669794','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3905','1385669796','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3907','1385669821','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3909','1385669980','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3911','1385669981','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3913','1385669996','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3915','1385670191','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3917','1385670192','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3919','1385670207','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3921','1385670262','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3923','1385670264','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3925','1385670279','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3927','1385670303','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3929','1385670304','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3931','1385670309','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3933','1385670318','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3935','1385670319','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3937','1385670329','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3939','1385670340','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3941','1385670342','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3943','1385670349','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3945','1385670698','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3947','1385670700','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3949','1385670916','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3951','1385670919','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3953','1385670927','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3955','1385670930','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3957','1385670941','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3959','1385670946','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3961','1385671007','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3963','1385671107','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3965','1385671124','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3967','1385671125','3','manager','3','1','Доставка воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3969','1385671445','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3971','1385671950','3','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('3973','1385671962','3','manager','106','-','Extras','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('3975','1385671965','3','manager','107','-','New Module','Create new module');
INSERT INTO `modx_manager_log` VALUES ('3977','1385672281','3','manager','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('3979','1385674273','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3981','1385674289','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('3983','1385674302','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3985','1385674346','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3987','1385674347','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3989','1385674360','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3991','1385674385','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3993','1385674387','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('3995','1385674395','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('3997','1385674474','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('3999','1385674476','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4001','1385674483','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4003','1385674491','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4005','1385674493','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4007','1385674499','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4009','1385674615','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4011','1385674616','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4013','1385674631','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4015','1385674642','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4017','1385674643','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4019','1385674649','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4021','1385674672','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4023','1385674673','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4025','1385674682','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4027','1385674702','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4029','1385674703','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4031','1385674707','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4033','1385674748','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4035','1385674750','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4037','1385674820','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4039','1385674837','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4041','1385674839','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4043','1385674855','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4045','1385674908','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4047','1385674910','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4049','1385674925','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4051','1385674952','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4053','1385674953','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4055','1385674960','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4057','1385674968','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4059','1385674969','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4061','1385674985','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4063','1385675021','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4065','1385675022','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4067','1385675041','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4069','1385676023','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4071','1385676025','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4073','1385676050','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4075','1385676082','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4077','1385676084','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4079','1385676420','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4081','1385676450','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4083','1385676734','3','manager','62','31','-','Un-publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('4085','1385676735','3','manager','3','31','w','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4087','1385676752','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4089','1385676793','3','manager','61','31','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('4091','1385676795','3','manager','3','31','w','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4093','1385676801','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4095','1385676823','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4097','1385676844','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4099','1385676846','3','manager','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4101','1385676895','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4103','1385676912','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4105','1385676914','3','manager','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4107','1385677005','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4109','1385677050','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4111','1385677052','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4113','1385677108','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4115','1385677125','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4117','1385677127','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4119','1385677174','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4121','1385677200','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4123','1385677202','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4125','1385677227','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4127','1385677240','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4129','1385677242','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4131','1385701540','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4133','1385717123','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4135','1385717132','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4137','1385717136','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4139','1385717138','3','manager','3','7','Технологии очистки ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4141','1385718373','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4143','1385718399','3','manager','62','31','-','Un-publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('4145','1385718400','3','manager','3','31','w','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4147','1385735637','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4149','1385735645','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4151','1385736167','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4153','1385736168','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4155','1385736198','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4157','1385736883','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4159','1385736884','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4161','1385736891','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4163','1385736916','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4165','1385736917','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4167','1385736949','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4169','1385737571','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4171','1385738081','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4173','1385738082','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4175','1385738100','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4177','1385738315','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4179','1385738316','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4181','1385738330','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4183','1385738351','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4185','1385738352','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4187','1385738360','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4189','1385738371','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4191','1385738372','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4193','1385738494','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4195','1385738512','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4197','1385738513','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4199','1385738520','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4201','1385738539','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4203','1385738540','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4205','1385738562','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4207','1385738712','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4209','1385738714','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4211','1385738723','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4213','1385738760','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4215','1385738761','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4217','1385738779','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4219','1385738841','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4221','1385738842','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4223','1385738873','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4225','1385738882','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4227','1385738884','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4229','1385738891','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4231','1385739015','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4233','1385739017','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4235','1385739032','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4237','1385739273','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4239','1385741934','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4241','1385741936','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4243','1385741937','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4245','1385742536','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4247','1385743653','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4249','1385743654','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4251','1385743691','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4253','1385743723','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4255','1385743724','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4257','1385743742','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4259','1385743774','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4261','1385743775','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4263','1385743797','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4265','1385743806','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4267','1385743807','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4269','1385743844','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4271','1385743860','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4273','1385743861','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4275','1385743894','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4277','1385743915','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4279','1385743916','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4281','1385743950','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4283','1385743973','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4285','1385743974','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4287','1385743978','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4289','1385743991','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4291','1385743992','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4293','1385744006','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4295','1385744039','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4297','1385744041','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4299','1385744046','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4301','1385744074','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4303','1385744075','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4305','1385744080','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4307','1385744101','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4309','1385744102','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4311','1385744107','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4313','1385744144','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4315','1385744145','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4317','1385744183','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4319','1385744210','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4321','1385744211','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4323','1385744226','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4325','1385744251','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4327','1385744252','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4329','1385744274','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4331','1385744430','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4333','1385744431','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4335','1385744438','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4337','1385744471','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4339','1385744472','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4341','1385744494','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4343','1385744698','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4345','1385744699','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4347','1385744721','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4349','1385744752','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4351','1385744753','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4353','1385744774','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4355','1385745142','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4357','1385745144','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4359','1385745154','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4361','1385745198','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4363','1385745200','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4365','1385745208','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4367','1385745222','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4369','1385745223','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4371','1385745228','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4373','1385745238','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4375','1385745240','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4377','1385745245','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4379','1385745255','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4381','1385745256','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4383','1385745278','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4385','1385745319','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4387','1385745320','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4389','1385745341','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4391','1385745405','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4393','1385745407','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4395','1385745430','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4397','1385745451','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4399','1385745453','3','manager','3','8','О нас','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4401','1385745471','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4403','1385745474','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('4405','1385745481','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4407','1385745483','3','manager','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('4409','1385745530','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4411','1385745533','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('4413','1385745544','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4415','1385745552','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4417','1385745561','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4419','1385745568','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4421','1385745655','3','manager','79','11','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4423','1385745656','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4425','1385745670','3','manager','78','11','Duplicate of contact','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4427','1385745705','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4429','1385745710','3','manager','78','6','mm_rules','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4431','1385745715','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4433','1385745717','3','manager','78','10','ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4435','1385745726','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4437','1385745730','3','manager','78','13','Duplicate of ditto_blog','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4439','1385745732','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4441','1385745734','3','manager','78','9','menu','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4443','1385745752','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4445','1385745754','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('4447','1385745759','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4449','1385745767','3','manager','16','12','О нас','Editing template');
INSERT INTO `modx_manager_log` VALUES ('4451','1385746001','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4453','1385746063','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4455','1385746064','3','manager','3','8','О нас edwefwefw','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4457','1385746080','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4459','1385746237','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4461','1385746238','3','manager','3','8','Продажа воды и ее доставка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4463','1385746240','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4465','1385746299','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4467','1385746300','3','manager','3','8','Продажа воды и ее доставка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4469','1385746331','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4471','1385746372','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4473','1385746373','3','manager','3','8','Продажа воды и ее доставка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4475','1385746403','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4477','1385747562','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4479','1385747563','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4481','1385747620','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4483','1385747658','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4485','1385747659','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4487','1385747794','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4489','1385747857','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4491','1385747858','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4493','1385748212','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4495','1385748401','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4497','1385748403','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4499','1385748404','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4501','1385748410','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4503','1385748456','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4505','1385748673','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4507','1385748675','3','manager','3','5','Вода h2o (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4509','1385748727','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4511','1385748790','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4513','1385748792','3','manager','3','5','h2o вода (статьи)','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4515','1385748806','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4517','1385748814','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4519','1385748816','3','manager','3','5','h2o вода - статьи','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4521','1385748827','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4523','1385748870','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4525','1385748871','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4527','1385748888','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4529','1385749313','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4531','1385749315','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4533','1385749421','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4535','1385749476','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4537','1385749477','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4539','1385749513','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4541','1385749528','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4543','1385749529','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4545','1385749555','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4547','1385749562','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4549','1385749564','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4551','1385749621','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4553','1385749715','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4555','1385749716','3','manager','3','8','Продажа воды и ее доставка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4557','1385749733','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4559','1385749738','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4561','1385749739','3','manager','3','8','Продажа воды и ее доставка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4563','1385750691','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('4565','1385750696','3','manager','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4567','1385750698','3','manager','3','35','аупуп','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4569','1385750701','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4571','1385751780','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4573','1385751865','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4575','1385751866','3','manager','3','35','Фильтры для воды ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4577','1385751874','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4579','1385751881','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4581','1385751882','3','manager','3','35','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4583','1385751883','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4585','1385753923','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4587','1385753924','3','manager','3','35','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4589','1385753936','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4591','1385753955','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4593','1385753957','3','manager','3','35','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4595','1385754006','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4597','1385754044','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4599','1385754045','3','manager','3','35','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4601','1385754054','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4603','1385754078','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4605','1385754079','3','manager','3','35','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4607','1385754111','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4609','1385754123','3','manager','5','35','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4611','1385754124','3','manager','3','35','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4613','1385754156','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4615','1385754188','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4617','1385754189','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4619','1385754198','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4621','1385754218','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4623','1385754219','3','manager','3','6','Услуги и цены','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4625','1385754256','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4627','1385754360','3','manager','5','6','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4629','1385754361','3','manager','3','6','Вода и цена на услуги','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4631','1385758249','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4633','1385758264','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4635','1385758997','3','manager','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4637','1385758998','3','manager','3','30','Какие виды воды существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4639','1385759022','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4641','1385759061','3','manager','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4643','1385759062','3','manager','3','30','Какие виды воды существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4645','1385759078','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4647','1385759189','3','manager','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4649','1385759190','3','manager','3','30','Какие виды воды существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4651','1385759245','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4653','1385759377','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4655','1385759382','3','manager','5','29','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4657','1385759383','3','manager','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4659','1385759399','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4661','1385759403','3','manager','5','29','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4663','1385759404','3','manager','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4665','1385759406','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4667','1385759419','3','manager','5','29','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4669','1385759421','3','manager','3','29','Значение воды в жизни человека','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4671','1385759432','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4673','1385759434','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4675','1385759521','3','manager','27','30','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4677','1385759524','3','manager','5','30','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4679','1385759526','3','manager','3','30','Какие виды воды существуют на планете и какие из них можно пить','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4681','1385759582','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4683','1385759585','3','manager','5','28','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4685','1385759586','3','manager','3','28','Почему вода успокаивает и лечит наш организм?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4687','1385760340','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4689','1385760487','3','manager','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4691','1385760489','3','manager','3','27','Дистилляция и обратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4693','1385760522','3','manager','27','26','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4695','1385760616','3','manager','5','26','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4697','1385760618','3','manager','3','26','9 причин, чтоб пить воду, и делать это как можно чаще:','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4699','1385760663','3','manager','27','21','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4701','1385760806','3','manager','5','21','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4703','1385760808','3','manager','3','21','Вода с содержанием кальция. Польза или вред?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4705','1385760841','3','manager','27','25','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4707','1385761038','3','manager','5','25','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4709','1385761071','3','manager','27','24','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4711','1385761234','3','manager','27','20','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4713','1385761448','3','manager','5','20','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4715','1385761449','3','manager','3','20','Очищенная вода по системе озоновая стерилизация','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4717','1385761508','3','manager','27','19','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4719','1385761532','3','manager','5','19','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4721','1385761533','3','manager','3','19','Что такое обратный осмос, и как он влияет на качество жизни','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4723','1385761679','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4725','1385761745','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4727','1385761746','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4729','1385761780','3','manager','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4731','1385761819','3','manager','5','17','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4733','1385761820','3','manager','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4735','1385761917','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4737','1385761947','3','manager','5','16','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4739','1385761948','3','manager','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4741','1385762012','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4743','1385762023','3','manager','5','15','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4745','1385762025','3','manager','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4747','1385762060','3','manager','27','14','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4749','1385762091','3','manager','5','14','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4751','1385762092','3','manager','3','14','Вода не только для здоровья, а вода для похудения','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4753','1385762165','3','manager','27','13','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4755','1385762302','3','manager','5','13','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4757','1385762304','3','manager','3','13','Польза которую получит ваш организм от употребления очищенной воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4759','1385762421','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4761','1385762454','3','manager','5','11','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4763','1385762456','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4765','1385763089','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4767','1385763211','3','manager','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4769','1385763212','3','manager','3','27','Дистилляция и обратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4771','1385763268','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4773','1385763503','3','manager','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4775','1385763504','3','manager','3','27','Дистилляция и обратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4777','1385763532','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4779','1385763601','3','manager','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4781','1385763602','3','manager','3','27','Дистилляция и обратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4783','1385763627','3','manager','27','27','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4785','1385763662','3','manager','5','27','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4787','1385763664','3','manager','3','27','Дистилляция и обратный осмос? В чём различие?','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4789','1385767231','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4791','1385767234','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4793','1385984549','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4795','1385984557','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4797','1385984579','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4799','1385984580','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4801','1385984595','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4803','1385985756','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4805','1385985757','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4807','1385988057','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4809','1385988073','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4811','1385988080','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4813','1385988113','3','manager','5','16','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4815','1385988115','3','manager','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4817','1386083894','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4819','1386083915','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4821','1386083922','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4823','1386083924','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4825','1386084473','3','manager','6','31','-','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('4827','1386084474','3','manager','3','31','w','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4829','1386084493','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4831','1386096304','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4833','1386144232','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4835','1386145764','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4837','1386145790','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4839','1386145798','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4841','1386159309','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4843','1386159311','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4845','1386159314','3','manager','8','-','-','Logged out');
INSERT INTO `modx_manager_log` VALUES ('4847','1386160221','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4849','1386160243','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4851','1386160244','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4853','1386160246','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4855','1386160248','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4857','1386165050','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4859','1386166014','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4861','1386166016','3','manager','6','31','-','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('4863','1386166018','3','manager','3','31','w','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4865','1386166025','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4867','1386166034','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4869','1386166069','3','manager','62','22','-','Un-publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('4871','1386166070','3','manager','3','22','sitemap.xml','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4873','1386166074','3','manager','6','22','-','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('4875','1386166075','3','manager','3','22','sitemap.xml','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4877','1386166079','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4879','1386166081','3','manager','23','-','New snippet','Creating a new Snippet');
INSERT INTO `modx_manager_log` VALUES ('4881','1386166182','3','manager','76','-','New snippet','Element management');
INSERT INTO `modx_manager_log` VALUES ('4883','1386166188','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4885','1386166252','3','manager','24','11','-','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('4887','1386166252','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4889','1386166263','3','manager','63','22','-','Un-deleting a resource');
INSERT INTO `modx_manager_log` VALUES ('4891','1386166269','3','manager','61','22','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('4893','1386166270','3','manager','3','22','sitemap.xml','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4895','1386166291','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4897','1386166521','3','manager','5','22','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('4899','1386166522','3','manager','3','22','XML карта сайта','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4901','1386166525','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4903','1386166530','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4905','1386166606','3','manager','61','22','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('4907','1386166608','3','manager','3','22','XML карта сайта','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('4909','1386166721','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4911','1386166723','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4913','1386166731','3','manager','24','11','-','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('4915','1386166731','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4917','1386166751','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4919','1386166775','3','manager','24','11','-','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('4921','1386166775','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4923','1386166806','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4925','1386166828','3','manager','24','11','-','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('4927','1386166829','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4929','1386166855','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4931','1386166860','3','manager','24','11','-','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('4933','1386166860','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4935','1386167855','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4937','1386167888','3','manager','24','11','-','Saving Snippet');
INSERT INTO `modx_manager_log` VALUES ('4939','1386167888','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4941','1386172444','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('4943','1386172466','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4945','1386172535','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('4947','1386172556','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4949','1386172559','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4951','1386172596','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('4953','1386172611','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4955','1386172616','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4957','1386172632','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4959','1386172644','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4961','1386172646','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4963','1386172648','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4965','1386172651','3','manager','31','-','/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4967','1386172730','3','manager','31','-','/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php','Modified File');
INSERT INTO `modx_manager_log` VALUES ('4969','1386172730','3','manager','31','-','/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4971','1386172789','3','manager','31','-','/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4973','1386172815','3','manager','31','-','/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php','Modified File');
INSERT INTO `modx_manager_log` VALUES ('4975','1386172815','3','manager','31','-','/usr/home/crystalwater/public_html/assets/snippets/sitemap/snippet.sitemap.php','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4977','1386173928','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4979','1386173933','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('4981','1386173936','3','manager','22','11','sitemap','Editing Snippet');
INSERT INTO `modx_manager_log` VALUES ('4983','1386173942','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4985','1386174545','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('4987','1386174636','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4989','1386174654','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Uploaded File');
INSERT INTO `modx_manager_log` VALUES ('4991','1386174663','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4993','1386174737','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('4995','1386174746','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Uploaded File');
INSERT INTO `modx_manager_log` VALUES ('4997','1386174757','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('4999','1386174764','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5001','1386176088','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('5003','1386176090','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5005','1386176099','3','manager','5','22','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5007','1386176100','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5009','1386176102','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('5011','1386176104','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('5013','1386176112','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Uploaded File');
INSERT INTO `modx_manager_log` VALUES ('5015','1386176118','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Viewing File');
INSERT INTO `modx_manager_log` VALUES ('5017','1386176248','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Deleted File');
INSERT INTO `modx_manager_log` VALUES ('5019','1386176315','3','manager','31','-','/usr/home/crystalwater/public_html/sitemap.xml','Uploaded File');
INSERT INTO `modx_manager_log` VALUES ('5021','1386187199','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5023','1386187203','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5025','1386187214','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5027','1386187215','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5029','1386187225','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5031','1386187233','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5033','1386187234','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5035','1386187243','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5037','1386187265','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5039','1386187266','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5041','1386190074','3','manager','27','18','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5043','1386190084','3','manager','5','18','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5045','1386190085','3','manager','3','18','Почему питьевая вода нужна спортсменам как воздух','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5047','1386412921','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5049','1386412954','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5051','1386412960','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5053','1386412961','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5055','1386415805','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5057','1386417146','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5059','1386506191','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5061','1386506202','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5063','1386506229','3','manager','101','-','New snippet','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('5065','1386506379','3','manager','103','-','-','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('5067','1386506379','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5069','1386506383','3','manager','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5071','1386506457','3','manager','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5073','1386506457','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5075','1386506462','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5077','1386506469','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5079','1386506469','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5081','1386506473','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5083','1386506524','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5085','1386506524','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5087','1386506565','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5089','1386506584','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5091','1386506584','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5093','1386506724','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5095','1386506795','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5097','1386506795','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5099','1386506810','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5101','1386506815','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5103','1386506815','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5105','1386506874','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5107','1386506937','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5109','1386506943','3','manager','102','11','New snippet','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('5111','1386507066','3','manager','103','11','-','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('5113','1386507066','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5115','1386507070','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5117','1386507121','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5119','1386507121','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5121','1386507132','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5123','1386507139','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5125','1386507168','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5127','1386507171','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5129','1386507185','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5131','1386507185','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5133','1386507199','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5135','1386507273','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5137','1386507273','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5139','1386507318','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5141','1386507321','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5143','1386507323','3','manager','78','8','right_block','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5145','1386507326','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5147','1386507328','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5149','1386507493','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5151','1386507493','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5153','1386507508','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5155','1386507514','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5157','1386507514','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5159','1386507868','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5161','1386507956','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5163','1386507956','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5165','1386508011','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5167','1386508175','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5169','1386508176','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5171','1386508312','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5173','1386508326','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5175','1386508326','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5177','1386508348','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5179','1386508354','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5181','1386508354','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5183','1386508356','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5185','1386508432','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5187','1386508432','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5189','1386508502','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5191','1386508510','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5193','1386508510','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5195','1386508537','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5197','1386508545','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5199','1386508545','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5201','1386508566','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5203','1386508585','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5205','1386508585','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5207','1386508623','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5209','1386508643','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5211','1386508643','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5213','1386508672','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5215','1386508683','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5217','1386508684','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5219','1386508702','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5221','1386508714','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5223','1386508714','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5225','1386508734','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5227','1386508742','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5229','1386508743','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5231','1386508778','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5233','1386508783','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5235','1386508783','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5237','1386508786','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5239','1386508828','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5241','1386508828','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5243','1386508846','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5245','1386508854','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5247','1386508854','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5249','1386509045','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5251','1386509054','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5253','1386509054','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5255','1386509110','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5257','1386509129','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5259','1386509129','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5261','1386509155','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5263','1386512190','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5265','1386512190','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5267','1386512204','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5269','1386512263','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5271','1386512263','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5273','1386512278','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5275','1386512288','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5277','1386512288','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5279','1386512306','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5281','1386512314','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5283','1386512314','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5285','1386512326','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5287','1386512330','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5289','1386512330','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5291','1386512413','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5293','1386512421','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5295','1386512421','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5297','1386512434','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5299','1386512472','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5301','1386512472','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5303','1386512477','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5305','1386512517','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5307','1386512519','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5309','1386512526','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5311','1386512527','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5313','1386512537','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5315','1386512543','3','manager','79','15','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5317','1386512543','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5319','1386512557','3','manager','78','15','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5321','1386512561','3','manager','80','15','-','Deleting Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5323','1386512562','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5325','1386512571','3','manager','102','11','New snippet','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('5327','1386512576','3','manager','104','11','-','Delete plugin');
INSERT INTO `modx_manager_log` VALUES ('5329','1386512576','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5331','1386514705','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5333','1386514723','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5335','1386514730','3','manager','101','-','New snippet','Create new plugin');
INSERT INTO `modx_manager_log` VALUES ('5337','1386514865','3','manager','103','-','-','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('5339','1386514865','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5341','1386514868','3','manager','77','-','New Chunk','Creating a new Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5343','1386514985','3','manager','79','-','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5345','1386514985','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5347','1386515000','3','manager','78','17','«redirect»','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5349','1386515035','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5351','1386515036','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5353','1386515047','3','manager','78','17','«redirect»','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5355','1386515142','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5357','1386515142','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5359','1386515150','3','manager','78','17','«redirect»','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5361','1386515165','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5363','1386515165','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5365','1386515197','3','manager','78','17','«redirect»','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5367','1386515204','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5369','1386515204','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5371','1386515254','3','manager','78','17','«redirect»','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5373','1386515265','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5375','1386515265','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5377','1386515286','3','manager','78','17','«redirect»','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5379','1386515297','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5381','1386515297','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5383','1386515310','3','manager','102','13','New snippet','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('5385','1386515323','3','manager','103','13','-','Saving plugin');
INSERT INTO `modx_manager_log` VALUES ('5387','1386515323','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5389','1386515336','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5391','1386515447','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5393','1386515459','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5395','1386515478','3','manager','3','11','Доставка питьевой воды от производителя','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5397','1386515480','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5399','1386515495','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5401','1386515495','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5403','1386515515','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5405','1386515526','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5407','1386515526','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5409','1386515545','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5411','1386515574','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5413','1386515574','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5415','1386515588','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5417','1386515594','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5419','1386515594','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5421','1386515691','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5423','1386515703','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5425','1386515703','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5427','1386515722','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5429','1386515725','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5431','1386515725','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5433','1386515740','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5435','1386515784','3','manager','79','17','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5437','1386515785','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5439','1386515870','3','manager','78','17','redirect','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5441','1386515873','3','manager','80','17','-','Deleting Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('5443','1386515873','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5445','1386515881','3','manager','102','13','New snippet','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('5447','1386515884','3','manager','104','13','-','Delete plugin');
INSERT INTO `modx_manager_log` VALUES ('5449','1386515884','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5451','1386515886','3','manager','102','5','New snippet','Edit plugin');
INSERT INTO `modx_manager_log` VALUES ('5453','1386515894','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5455','1386522387','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5457','1386522396','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5459','1386523202','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5461','1386523224','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5463','1386523238','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5465','1386523258','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5467','1386523582','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5469','1386593994','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5471','1386594004','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5473','1386594133','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5475','1386594139','3','manager','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5477','1386594229','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5479','1386594233','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5481','1386594240','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5483','1386594242','3','manager','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5485','1386604574','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5487','1386604600','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5489','1386604627','3','manager','27','29','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5491','1386604662','3','manager','27','28','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5493','1386605539','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5495','1386605546','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('5497','1386605557','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5499','1386605563','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5501','1386605579','3','manager','5','22','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5503','1386605581','3','manager','3','22','XML карта сайта','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5505','1386605611','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5507','1386605618','3','manager','61','31','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('5509','1386605619','3','manager','3','31','w','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5511','1386605626','3','manager','63','31','-','Un-deleting a resource');
INSERT INTO `modx_manager_log` VALUES ('5513','1386605633','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5515','1386605672','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5517','1386605685','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5519','1386605685','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5521','1386605719','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5523','1386605725','3','manager','5','31','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5525','1386605726','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5527','1386605738','3','manager','5','31','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5529','1386605738','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5531','1386605794','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5533','1386605796','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5535','1386605797','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5537','1386605800','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('5539','1386605986','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5541','1386606020','3','manager','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5543','1386606022','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5545','1386606079','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5547','1386606091','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5549','1386606095','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5551','1386606097','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5553','1386606113','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5555','1386606166','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5557','1386606168','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5559','1386606183','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5561','1386606200','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5563','1386606202','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5565','1386606213','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5567','1386606240','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5569','1386606242','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5571','1386606294','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5573','1386606313','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5575','1386606315','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5577','1386606320','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5579','1386606331','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5581','1386606333','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5583','1386606387','3','manager','27','37','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5585','1386606558','3','manager','5','37','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5587','1386606560','3','manager','3','37','Организмы и значение воды для них','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5589','1386608015','3','manager','27','22','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5591','1386775724','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5593','1386775731','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5595','1386775737','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5597','1386775764','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5599','1386775767','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5601','1386775777','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5603','1386775791','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5605','1386775921','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5607','1386776035','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5609','1386776083','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5611','1386776084','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('5613','1386776164','3','manager','3','22','XML карта сайта','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5615','1386776187','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5617','1386776196','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5619','1386776201','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5621','1386776210','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5623','1386776224','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5625','1386776227','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5627','1386776231','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5629','1386776479','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5631','1386776493','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5633','1386776496','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5635','1386776518','3','manager','20','13','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('5637','1386776518','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5639','1386777407','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5641','1386777413','3','manager','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('5643','1386777414','3','manager','10','-','-','Viewing/ composing messages');
INSERT INTO `modx_manager_log` VALUES ('5645','1386777419','3','manager','106','-','-','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('5647','1386777425','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('5649','1386777432','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5651','1386777434','3','manager','16','4','MODxHost','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5653','1386777463','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5655','1386777465','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5657','1386777883','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5659','1386777888','3','manager','16','4','MODxHost','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5661','1386777894','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5663','1386777899','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5665','1386777915','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('5667','1386777915','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5669','1386777930','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5671','1386777932','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5673','1386777933','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5675','1386777966','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('5677','1386777967','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5679','1386777991','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5681','1386778055','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('5683','1386778056','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5685','1386778071','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5687','1386778106','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('5689','1386778106','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5691','1386778121','3','manager','16','13','Duplicate of Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5693','1386778860','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5695','1386778869','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5697','1386778872','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5699','1386778875','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5701','1386778878','3','manager','71','-','-','Searching');
INSERT INTO `modx_manager_log` VALUES ('5703','1386778880','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5705','1386778882','3','manager','72','-','-','Adding a weblink');
INSERT INTO `modx_manager_log` VALUES ('5707','1386778883','3','manager','26','-','-','Refreshing site');
INSERT INTO `modx_manager_log` VALUES ('5709','1386778892','3','manager','112','1','Doc Manager','Execute module');
INSERT INTO `modx_manager_log` VALUES ('5711','1386778918','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5713','1386778945','3','manager','301','6','Название блока','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('5715','1386778972','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5717','1386779518','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5719','1386779596','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5721','1386779597','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5723','1386779870','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5725','1386779884','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5727','1386779888','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5729','1386779891','3','manager','16','3','Home','Editing template');
INSERT INTO `modx_manager_log` VALUES ('5731','1386779901','3','manager','20','3','-','Saving template');
INSERT INTO `modx_manager_log` VALUES ('5733','1386779901','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5735','1386781045','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('5737','1387736659','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5739','1387811163','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5741','1387811172','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5743','1387811178','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5745','1387811187','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5747','1387811193','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5749','1387811275','3','manager','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5751','1387811298','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5753','1387811302','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5755','1387811377','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5757','1387811393','3','manager','5','15','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5759','1387811394','3','manager','3','15','Очистка воды процесс умягчения воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5761','1387811396','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5763','1387811400','3','manager','27','17','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5765','1387811406','3','manager','5','17','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5767','1387811407','3','manager','3','17','Если нужно купить воду в безвредной таре','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5769','1387811904','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5771','1387811917','3','manager','5','16','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5773','1387811918','3','manager','3','16','Чистая вода избавленная от хлора ','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5775','1387811920','3','manager','27','16','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5777','1387812017','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5779','1387812032','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5781','1387812033','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5783','1387812058','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5785','1387812062','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('5787','1387823291','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5789','1387824044','3','manager','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5791','1387824045','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5793','1387824078','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5795','1387824081','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5797','1387824084','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5799','1387824269','3','manager','27','35','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5801','1387824290','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5803','1387824305','3','manager','27','15','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5805','1387824309','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5807','1387824334','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5809','1387824335','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5811','1387824356','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5813','1387824386','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5815','1387824387','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5817','1387825938','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5819','1387825967','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5821','1387825968','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5823','1387825992','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5825','1387826048','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5827','1387826049','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5829','1387826059','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5831','1387826063','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5833','1387826082','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5835','1387826083','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5837','1387826100','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5839','1387826121','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5841','1387826123','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5843','1387826133','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5845','1387826150','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5847','1387826151','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5849','1387826675','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5851','1387826786','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5853','1387826788','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5855','1387826795','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5857','1387826800','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5859','1387826948','3','manager','27','39','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5861','1387827099','3','manager','5','39','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5863','1387827100','3','manager','3','39','Доставка воды в Киев и Киевскую область','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5865','1387924153','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5867','1387924175','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5869','1387924850','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5871','1387924851','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5873','1387924852','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5875','1387924874','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5877','1387924876','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5879','1387961884','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5881','1387961891','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5883','1387961930','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5885','1387961931','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5887','1387961934','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5889','1387961948','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5891','1387962057','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5893','1387962121','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5895','1387962122','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5897','1387962174','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5899','1387962194','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5901','1387962195','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5903','1387962252','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5905','1387962296','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5907','1387962304','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5909','1387962321','3','manager','6','31','-','Deleting resource');
INSERT INTO `modx_manager_log` VALUES ('5911','1387962322','3','manager','3','31','404','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5913','1387962330','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5915','1387962334','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5917','1387962337','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5919','1387962339','3','manager','27','23','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5921','1387962344','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5923','1387962352','3','manager','62','33','-','Un-publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('5925','1387962354','3','manager','3','33','Как заказать','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5927','1387962361','3','manager','61','33','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('5929','1387962363','3','manager','3','33','Как заказать','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5931','1387962367','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5933','1387962376','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5935','1387962380','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5937','1387962382','3','manager','27','3','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5939','1387962384','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5941','1387962386','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5943','1387962392','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5945','1387962400','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5947','1387962402','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5949','1387962482','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5951','1387962553','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5953','1387962554','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5955','1387962576','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5957','1387962611','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5959','1387962647','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5961','1387962649','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5963','1387962705','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5965','1387962707','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5967','1387962724','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5969','1387962725','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5971','1387962729','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5973','1387962735','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5975','1387962736','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5977','1387962737','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5979','1387962755','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5981','1387962756','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5983','1387962759','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5985','1387962761','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5987','1387962781','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('5989','1387962782','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5991','1387962787','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('5993','1387962791','3','manager','27','2','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5995','1387962792','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('5997','1387962830','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('5999','1387962833','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6001','1387962834','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6003','1387962836','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('6005','1387962856','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6007','1387962928','3','manager','27','4','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6009','1387962947','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6011','1387962992','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('6013','1387962996','3','manager','16','9','Вода h2o (статьи)','Editing template');
INSERT INTO `modx_manager_log` VALUES ('6015','1387963002','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('6017','1387963007','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6019','1387963031','3','manager','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6021','1387963031','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6023','1387963063','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('6025','1387963074','3','manager','301','4','Мета тайтл','Edit Template Variable');
INSERT INTO `modx_manager_log` VALUES ('6027','1387963094','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6029','1387963105','3','manager','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6031','1387963106','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6033','1387963133','3','manager','76','-','-','Element management');
INSERT INTO `modx_manager_log` VALUES ('6035','1387963297','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6037','1387963312','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6039','1387963316','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6041','1387963329','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6043','1387963330','3','manager','3','5','h2o вода - статьи','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6045','1387963337','3','manager','79','5','-','Saving Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6047','1387963338','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6049','1387963426','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6051','1387963428','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6053','1387963533','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6055','1387963550','3','manager','5','1','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6057','1387963551','3','manager','3','1','Доставка воды Бровары','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6059','1387963552','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6061','1387964213','3','manager','61','31','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('6063','1387964215','3','manager','3','31','404','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6065','1387964217','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6067','1387964222','3','manager','61','31','-','Publishing a resource');
INSERT INTO `modx_manager_log` VALUES ('6069','1387964223','3','manager','3','31','404','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6071','1387964247','3','manager','27','31','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6073','1387964299','3','manager','63','31','-','Un-deleting a resource');
INSERT INTO `modx_manager_log` VALUES ('6075','1387964345','3','manager','3','5','h2o вода - статьи','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6077','1387964349','3','manager','31','-','-','Using file manager');
INSERT INTO `modx_manager_log` VALUES ('6079','1387966702','3','manager','78','5','header','Editing Chunk (HTML Snippet)');
INSERT INTO `modx_manager_log` VALUES ('6081','1388094336','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('6083','1388094429','3','manager','27','5','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6085','1388094499','3','manager','5','5','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6087','1388094501','3','manager','3','5','h2o вода - статьи','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6089','1388094535','3','manager','27','7','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6091','1388094549','3','manager','5','7','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6093','1388094551','3','manager','3','7','Методы очистки воды','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6095','1388094554','3','manager','27','1','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6097','1388094572','3','manager','27','6','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6099','1388094579','3','manager','27','8','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6101','1388094675','3','manager','5','8','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6103','1388094676','3','manager','3','8','Продажа воды и ее доставка','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6105','1388094684','3','manager','27','33','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6107','1388094689','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6109','1388094723','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6111','1388094725','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6113','1388094730','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6115','1388095441','3','manager','5','9','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6117','1388095443','3','manager','3','9','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6119','1388095444','3','manager','27','10','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6121','1389695273','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('6123','1389695300','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6125','1389695345','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6127','1389695355','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6129','1389799524','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('6131','1389799534','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6133','1389820262','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6135','1389821046','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6137','1389871543','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6139','1389871659','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6141','1389871689','3','manager','27','9','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6143','1389871754','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('6145','1389871764','3','manager','27','11','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6147','1389871772','3','manager','4','-','-','Creating a resource');
INSERT INTO `modx_manager_log` VALUES ('6149','1389872635','3','manager','5','-','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6151','1389872636','3','manager','3','41','Заказать воду просто, если знаешь о ней все','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6153','1389872640','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6155','1389872645','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6157','1389872694','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6159','1389872720','3','manager','5','41','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6161','1389872721','3','manager','3','41','Заказать воду просто, если знаешь о ней все','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6163','1389872736','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6165','1389872776','3','manager','5','41','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6167','1389872777','3','manager','3','41','Заказать воду просто, если знаешь о ней все','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6169','1389872787','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6171','1389872814','3','manager','5','41','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6173','1389872815','3','manager','3','41','Заказать воду просто, если знаешь о ней все','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6175','1389872823','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6177','1389872846','3','manager','5','41','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6179','1389872847','3','manager','3','41','Заказать воду просто, если знаешь о ней все','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6181','1389872869','3','manager','27','41','-','Editing resource');
INSERT INTO `modx_manager_log` VALUES ('6183','1389872906','3','manager','5','41','-','Saving resource');
INSERT INTO `modx_manager_log` VALUES ('6185','1389872908','3','manager','3','41','Заказать воду просто, если знаешь о ней все','Viewing data for resource');
INSERT INTO `modx_manager_log` VALUES ('6187','1389884431','3','manager','58','-','MODx','Logged in');
INSERT INTO `modx_manager_log` VALUES ('6189','1389884438','3','manager','17','-','-','Editing settings');
INSERT INTO `modx_manager_log` VALUES ('6191','1389884591','3','manager','30','-','-','Saving settings');
INSERT INTO `modx_manager_log` VALUES ('6193','1389884602','3','manager','106','-','Extras','Viewing Modules');
INSERT INTO `modx_manager_log` VALUES ('6195','1389884605','3','manager','108','2','Extras','Edit module');
INSERT INTO `modx_manager_log` VALUES ('6197','1389884614','3','manager','114','-','-','View event log');
INSERT INTO `modx_manager_log` VALUES ('6199','1389884624','3','manager','53','-','-','Viewing system info');
INSERT INTO `modx_manager_log` VALUES ('6201','1389884652','3','manager','93','-','-','Backup Manager');

# --------------------------------------------------------

#
# Table structure for table `modx_manager_users`
#

DROP TABLE IF EXISTS `modx_manager_users`;
CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `modx_manager_users`
#

INSERT INTO `modx_manager_users` VALUES ('3','manager','uncrypt>f07281ea83a745070be34639b07a4ddab5ca0324');

# --------------------------------------------------------

#
# Table structure for table `modx_member_groups`
#

DROP TABLE IF EXISTS `modx_member_groups`;
CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_access`
#

DROP TABLE IF EXISTS `modx_membergroup_access`;
CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_membergroup_names`
#

DROP TABLE IF EXISTS `modx_membergroup_names`;
CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `modx_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_content`
#

DROP TABLE IF EXISTS `modx_site_content`;
CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `modx_site_content`
#

INSERT INTO `modx_site_content` VALUES ('1','document','text/html','Доставка воды Бровары','Доставка воды в Бровары и Киев Доставка воды очищенной ','Доставка воды Бровары, Киев, Доставка воды в Броварах ','index','','1','0','0','0','1','Доставка воды в Броварах и Киеве «Кришталево-чиста питна вода» 8 ступеней очистки!(Еко+) 044-451-59-33\nДоставка воды Бровары, доставка воды на дом, доставка воды в офис','<p>Питьевая вода &laquo;Кришталево-чиста питна вода&raquo; производится первым официальным частным заводом в Украине по очистке воды.<br /><br />Вода нашего завода очищается по технологиям:</p>\n<p><br />- Система обратного осмоса<br />- Озоновая стерилизация<br /><br /></p>\n<p>Сейчас обратный осмос и озоновая стерилизация для очистки воды активно используется многими <br />европейскими странами, которыми изготавливается самая высококачественная питьевая вода.</p>\n<p>Очистка воды обратный осмос способствует укреплению организма и иммунитета человека. <br />Это живая вода которая не содержит в себе никаких вредных веществ и примесей. <br />С приёмом этой воды, проблемы со здоровьем, которые не могли решиться годами, решаться сами собой.</p>\n<p></p>\n<p><br /><br /></p>\n<h2>Ежедневно потребителями выбирается доставка воды в Бровары и Киев \"Кришталево-чиста питна вода\" потому, что</h2>\n<p><img src=\"images/bottle_articles.png\" alt=\"bottle articles\" style=\"float: right;\" height=\"345\" width=\"215\" /></p>\n<p>- \"Кришталево-чиста питна вода\" по своему составу признана самой безопасной<br /> - Вода проходит 8 этапов очистки и контроля качества воды<br /> - Вода восстанавливает необходимый водно-соленой баланс организма<br /> - Рекомендована для употребления детям<br /> - По вкусовым качествам схожа с талой водой</p>\n<p></p>\n<p>Оформите заказ на \"Кришталево-чисту питну воду\" в любое <br />комфортное для Вас время.</p>\n<p><br /><br /></p>\n<h3>Мы гарантируем что Вам будет совершена своевременная, быстрая, а главное бесплатная доставка воды в Бровары и Киев</h3>\n<p><br />Вы можете выбрать любой удобный для Вас способ :</p>\n<p>-<storng>Доставка воды Бровары</storng></p>\n<p>-Доставка воды Киев</p>\n<p>-Доставка воды на дом</p>\n<p>-<storng>Доставка воды</storng> в офис</p>\n<p></p>\n<p><br /><br /></p>\n<p>Вода &ndash; это источник жизни, не лишайте свой организм в возможности быть абсолютно здоровым.</p>','1','3','0','1','1','1','1130304721','3','1387963550','0','0','0','1130304721','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('35','document','text/html','Фильтры для воды в производстве \"Кришталево-чиста питна вода\"','Фильтры для воды, обратный осмос, озоновая стерилизация','','filtryi-dlya-vodyi','','1','0','0','5','0','Производство очищенной воды подразумевает использование лучших современных технологий. Наша компания, для своего производства выбрала одни из лучших и самых популярных европейских технологий.\n','<p><img style=\"float: right;\" src=\"assets/images/filtri-dlya-vodi.png\" height=\"319\" width=\"372\" /></p>\n<p>Производство очищенной воды подразумевает использование лучших современных технологий. Наша компания, для своего производства выбрала одни из лучших и самых популярных европейских технологий.</p>\n<p><br /><br /></p>\n<h2>Завод \"Кришталево-чиста питна вода\" в своем производстве использует фильтры для воды обратного осмоса и озоновой стерилизации</h2>\n<p>Фильтры не только очищают и обеззараживают воду,&nbsp;<strong>фильтр для воды</strong> создает ее неповторимый нейтральный вкус.</p>\n<p>Вода \"Кришталево-чиста питна вода\" обладает настолько приятным вкусом, что после употребления именно этой воды, вы никогда не захотите перейти на воду других производителей.</p>\n<p><br /><br /></p>\n<h3>\"Кришталево-чиста питна вода\" благодаря своим фильтрам для воды, является абсолютно чистой водой и совершенно не имеет запаха.</h3>\n<p>Вода по своей структуре схожа с талой водой и обладает лечебными свойствами. По этой причине \"Кришталево-чиста питна вода\" рекомендована для употребления даже грудничковым детям. Людям страдающим болезнями внутренних органов и частыми мигренями регулярное употребление воды помогает избавится от болезней. Так же лечебные свойства \"Кришталево-чиста питна вода\" активно снимают похмельный синдром.</p>\n<p>Фильтры для воды - обратного осмоса, не только очищают воду, но и насыщает ее полезными микроэлементами.</p>','1','9','20','1','1','3','1385750696','3','1385754123','0','0','0','1385750696','3','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('2','document','text/html','Blue Rain помпа для воды','Blue Rain помпа для воды','','','','1','0','0','1','0','','','1','9','0','1','1','1','1385400652','1','1385400927','0','0','0','1385400652','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('3','document','text/html','Бутыль','','','','','1','0','0','1','0','','','1','9','1','1','1','1','1385401106','1','1385401106','0','0','0','1385401106','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('4','document','text/html','Кулер','','','','','1','0','0','1','0','','','1','9','2','1','1','1','1385401115','1','1385401115','0','0','0','1385401115','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('5','document','text/html','h2o вода - статьи','h2o вода - &quot;Кришталево-чиста питна вода&quot; ™','','voda-h2o-stati','','1','0','0','0','1','','[[Ditto? &amp;tpl=`ditto_blog` &amp;sortBy=`DESC`]] [[CacheAccelerator]]','1','9','1','1','1','1','1385402095','3','1388094499','0','0','0','1385402095','1','h2o вода - статьи','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('6','document','text/html','Вода и цена на услуги','Вода цена с бесплатной доставкой. Купить воду','','uslugi-i-tseny','','1','0','0','0','0','','<p></p>\n<p style=\"font-size: 18px;\"><img src=\"assets/images/index1.png\" style=\"float: left;\" height=\"325\" width=\"191\" /></p>\n<p style=\"font-size: 18px;\"><br /><span style=\"color: #ff9900; font-size: 100%;\"><strong>Один бутыль 19,9 л. <span style=\"color: #ff9900;\"><strong> воды цена</strong></span> - 40 грн</strong></span></p>\n<p><i>(минимальный заказ 2 бутыля)</i><br /><br />Питьевой воды доставка осуществляется бесплатно</p>\n<p>Внимание! При первой доставке очищенной воды взимается&nbsp;залоговая стоимость за бутыль в размере 60 грн (единоразово). Залог за бутыль будет возвращен в полном объеме при прекращении сотрудничества.</p>\n<p>При заказе более 10-ти бутылей Кришталево-чиста питна <strong>вода цена</strong> значительно снижается.</p>\n<p></p>\n<p></p>\n<p style=\"font-size: 18px;\"><br /><br /><br /><br /><br /></p>\n<h2>\"Кришталево-чиста питна вода\" это вода цена которой понравится каждому</h2>\n<p style=\"font-size: 18px;\"><br /><img src=\"assets/images/index2.png\" style=\"float: left;\" height=\"395\" width=\"221\" /> <br /><br /></p>\n<p style=\"font-size: 18px;\"><br /><strong><span style=\"color: #ff9900;\">Blue Rain помпа для воды - В подарок!</span></strong></p>\n<p><i>Акция! При первом заказе воды ПОМПА В ПОДАРОК !!!</i> <br /><br /> Blue Rain помпа для воды - это простое и удобное устройство, которое позволяет наливать воду в любую тару абсолютно не прикладывая никаких усилий и не доставляя дискомфорта. Помпа для розлива воды очень удобна и проста в обращении. Материалы помпы являются абсолютно чистым и санитарно проверенным сырьем, и соответствуют всем необходимым эпидемиологическим и гигиеническим требованиям.</p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p><br /><br /><br /><br /><br /><br /></p>\n<h3>Попробуйте воду цена которой соответствует наивысшему качеству</h3>\n<p><br /><br /><br /><img src=\"assets/images/index3.png\" style=\"float: left;\" height=\"300\" width=\"300\" /></p>\n<p><br /><strong><span style=\"font-size: 18px; color: #ff9900;\">Экспресс-анализ воды - БЕСПЛАТНО!</span></strong></p>\n<p>Бесплатный экспресс анализ воды. У вас есть возможность проверить собственные образцы и получить быстрый анализ воды на предмет ее жесткости и количества примесей. Измеритель TDS определит суммарную концентрацию ионов содержащихся в воде. Чем меньше солесодержание воды, тем сопротивление выше, а проводимость меньше. Именно по этим причинам измерение общего солесодержания в воде это основной показатель качества очищенной воды. Чем ниже TDS, тем меньше соли содержится в воде, тем выше её качество и стоимость воды.</p>\n<p></p>\n<p><br /><br /><br /><br /><img src=\"assets/images/index4.png\" style=\"float: left;\" height=\"550\" width=\"300\" /></p>\n<p style=\"font-size: 18px;\"><br /><br /><br /><br /><strong><span style=\"color: #ff9900;\">Кулер для нагрева и охлаждения питьевой воды незаменимы в офисе или дома</span></strong></p>\n<p><i>( цену уточняйте)</i></p>\n<p>Такие установки экологичны, ведь в своей конструкции они не содержат ядовитых хладагентов, что дает возможность их использоваться в социальных учреждениях - больницах, детских садах и школах. Когда вам будет совершаться доставка очищенной воды, вы можете уточнить все детали у нашего менеджера по поводу наличия кулеров на складе.</p>','1','10','2','1','1','1','1385402118','3','1385754360','0','0','0','1385402118','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('7','document','text/html','Методы очистки воды','Методы очистки воды и технология производства  питьевой воды','','tekhnologii-ochistki','','1','0','0','0','0','','<p style=\"font-size: 14px;\">Передовой способ очистки воды который позволяет получить продукт очищенный на 99,8% носит название система обратный осмос и система озоновая стерилизация. Ключевым этапом в процессе отчистки питьевой воды, является прохождение воды через полупроницаемую мембрану которая пропускает только молекулу- вода h2o размером 0,2нм и задерживает химические соединения, бактерии, вирусы размер которых от 8 до 500 нм. Таким образом с одной стороны оказывается очищенная питьевая вода (структурированная вода h2o), а с другого концентрат загрязнений: растворенные соли, органические и неорганические вещества, микроорганизмы, тяжелые металлы, удобрения, коллоиды и другие. <br /><br /></p>\n<h2>Мы используем такие методы очистки воды</h2>\n<p><img src=\"assets/images/osmos.png\" style=\"vertical-align: middle;\" height=\"585\" width=\"766\" /></p>\n<p><br /><br /></p>\n<p style=\"font-size: 14px;\">До того, как происходит розлив и дальнейшая доставка воды домой или в офис, наша очищенная вода проходит восемь этапов обработки разными <strong>методами очистки воды</strong>:<br /><br /> 1)Очистка воды механизированными фильтрами - используется для отделения от воды примеси песка, глины др. <br /><br /> 2) Стерилизация воды (обеззараживание) - это необходимый этап позволяющий сделать так чтобы была очищенная вода от вирусов, бактерий и спор, сероводорода.<br /><br /> 3) Мультимедийная очистка воды - этап прохождения воды по разнообразным фильтрам, заполненными разными слоями пропускного материала.<br /><br /> 4)Умягчение воды - процесс проводится за счет ионного обмена. Это обеспечивает нашу воду отсутствием накипи и осадка.<br /><br /> 5)Фильтрация воды активированным углем - позволяет сорбентам эффективно и без остатков сорбировать хлор и растворенные органические соединения.<br /><br /> 6) Ультрафиолет - дезинфицирует воду. И в итоге простая вода очищенная и не меняет при этом физико-химический составы.<br /><br /> 7) Система обратного осмоса - процесс прохождение воды через полупроницаемую мембрану, под высоким давлением в 23 атм. <br /><br /> Размер отверстий мембраны равен диаметру молекулы воды H2O - 0,0002 мкм. В результате появляется очищенная вода на 99,8%.<br /><br /> 8) Озоновая стерилизация - чистая вода обогащается озоном. Озон создается электрическими разрядами и является неустойчивой формой кислорода, которая превращается в кислород через 30 мин. Целью использования данной системы является окончательная стерилизация и обеззараживание при розливе и герметизации питьевой воды в бутылях.</p>\n<p><br /><br /></p>\n<h3>Наши методы очистки воды гарантируют что вода завода \"Кришталево-чиста питна вода\"</h3>\n<ul style=\"font-size: 14px;\">\n<li>Структурированная, чистая питьевая вода высокого качества (по всем своим свойствам напоминающая талую воду)</li>\n<li>Очищенная вода и экологически чистая вода, ведь фильтрация проводится без использования химических веществ, а только при помощи естественных механизмов очистки питьевой воды</li>\n<li>Наша питьевая вода рекомендуется для употребления деткам с рождения</li>\n<li>У нас производится чистая вода, которая способствует быстрому поступлению в человеческий организм питательных веществ</li>\n<li>Очищенная вода через фильтр обратного осмоса, имеет свойства целебного значения. Вода способствует выведению из организма накопившихся шлаков, токсинов и других вредных микроорганизмов.</li>\n</ul>','1','11','3','1','1','1','1385402838','3','1388094549','0','0','0','1385402838','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('41','document','text/html','Заказать воду просто, если знаешь о ней все','','','zakazat-vodu-prosto-esli-znaesh-o-nej-vse','','1','0','0','5','0','В жизни каждого рано или поздно наступает момент \"выбор питьевой воды\". Из-за огромнейшего количества производителей воды, их рекламы, разнообразных способов очистки и результата от употребления воды, иногда очень сложно выбрать что-то стоящее при этом не нарвавшись на удачно продуманный ход рекламистов. В этой статье мы поможем вам разобраться в критериях выбора воды по именно вашей потребности.','<p>В жизни каждого рано или поздно наступает момент \"выбор питьевой воды\". Из-за огромнейшего количества производителей воды, их рекламы, разнообразных способов очистки и результата от употребления воды, иногда очень сложно выбрать что-то стоящее при этом не нарвавшись на удачно продумаyный ход рекламистов. В этой статье мы поможем вам разобраться в критериях выбора воды по именно вашей потребности.</p>\n<p><img src=\"assets/images/zakazat-vodu.png\" style=\"float: right;\" height=\"244\" width=\"382\" /></p>\n<p></p>\n<p></p>\n<p><br /><br /><br /></p>\n<h2>Перед тем чтоб заказать воду выберите ее разновидность</h2>\n<p><br /><br />Качественной питьевой водой есть та вода которая соответствует государственным стандартам и гигиеническим трепованиям, так же такая вода должна быть упакованна и разлита в экологически чистые гигиенические контейнеры или бутили.</p>\n<p>При учтении этих нъюансов воду уже можно называть питьевой. Посмотрим далее, питьевая бутилированная вода разделяется на два вида:</p>\n<p>- Питьевая минеральная вода</p>\n<p>- Простая питьевая вода</p>\n<p>В свою очерень питьевая минеральная вода делится еще на три вида:</p>\n<p>- Минеральная лечебная вода - минерализация в ней, составляет порядка 8 г/л и употребляется после назначения врачем</p>\n<p>- Минеральная лечебно-столовая вода -&nbsp;минерализация в ней, составляет от 2-8 г/л, и так же применяется по назначению врача или когда прибываете на минеральных источниках</p>\n<p>- Минеральная столовая вода - минерализация коротой составляет не менее 1 г/л</p>\n<p>Важно: минеральная вода, это та вода которая добывается из природного источника (скважины). В такой воде сохранен ее минеральный состав, а так же нет совершенно никаких добавок и красителей.</p>\n<p></p>\n<p><br /><br /></p>\n<h3>Перед тем как заказать воду выберите ее истоник и изучите состав</h3>\n<p></p>\n<p>Та вода которая называется питьевой и не является минеральной,&nbsp;добывается из любых других источников, так же в их число входит городская вода из годоканала. Вода специально обогащается минералами и доводится до какого либо конкретного состава, а так же соответствует государственным нормам. &nbsp;</p>\n<p>Питьевая вода разделена на две категории:<br /><br /></p>\n<p>Категория 1 - это вода которую люди получают из под крана. Такая вода как правило проходит глубокую очистку, по идее обезжелезоваится, смягчается и так далее. Государственные учереждения утверждают что это вода безопасна, но о полезности ее умалчивают.</p>\n<p>Категория 2 - это вода высшей категории, к которой применими самые жесткие требования по очистке и структурированию. Допустимые нормы&nbsp;нитратов в ней в 4 раза меньше, нитритов в 100 раз, натрия и серебра в 10 раз, нефтепродуктов в 5 раз по сравнению с водой категории 1. В такой воде идеально сбалансорованы кальций, магний и многие другие. Вода этой категории рекомендованна беременным женщинам и людям страдающим почечной недостаточностью, а так же самым маленьким детям.&nbsp;</p>\n<p>Качество воды проверяется очень просто - попросите чтоб поставщики воды предоставили вам перед покупкой сертификат, в котором &nbsp;указана&nbsp;категория воды.<br /><br />Чтоб <strong>заказать воду в Киев</strong>, стоит просто поискать поставщиков и изготовителей воды в интернете. Вода \"Кришталево-чиста питна вода\" это вода Категории 2 - наивысшей категории качества воды!</p>','1','9','9','1','1','3','1389872635','3','1389872906','0','0','0','1389872635','3','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('8','document','text/html','Продажа воды и ее доставка','Доставка воды в офис и на дом, продажа воды, контакты, адрес','','o-nas','','1','0','0','0','0','','<p>Воду \"Кришталево-чиста питна вода\" можно купить такими способами:</p>\n<p style=\"font-size: 14px;\">- \"Кришталево-чиста питна вода\" бесплатно доставка в офис и на дом по вашему адресу в Киев и Бровары</p>\n<p style=\"font-size: 14px;\">- Вы можете оформить самовывоз воды прямо из завода</p>\n<p style=\"font-size: 14px;\"></p>\n<p><br /><br /></p>\n<h2>Самовывоз и продажа воды по адресу</h2>\n<p style=\"font-size: 14px;\"><span style=\"font-size: 16px; color: #ff9900;\">Киевская обл., г. Бровары, ул. Кооперативная 3а</span></p>\n<p></p>\n<table border=\"0\">\n<tbody>\n<tr>\n<td><span style=\"color: #ffffff;\">телефон для г. Бровары:</span></td>\n<td><span style=\"color: #ffffff;\">(04494) 6-59-27</span></td>\n</tr>\n<tr>\n<td></td>\n<td><span style=\"color: #ffffff;\">(063) 788-68-80</span></td>\n</tr>\n<tr>\n<td><span style=\"color: #ffffff;\">телефон для г. Киев:</span></td>\n<td><span style=\"color: #ffffff;\">(044) 451-59-33</span></td>\n</tr>\n</tbody>\n</table>\n<p></p>\n<p><img src=\"images/crystalwater/google_map.png\" alt=\"google map\" height=\"400\" width=\"700\" /></p>\n<p><br /><br /></p>\n<h3>Продаем воду с точки самовывоза в любой день недели, в любое время дня</h3>\n<p style=\"font-size: 14px;\">У нас вы приобретете не только чистую воду по доступной цене. Взамен вы получите:</p>\n<p style=\"font-size: 14px;\">- Экологически чистый продукт</p>\n<p style=\"font-size: 14px;\">- Здоровье на долгие годы</p>\n<p style=\"font-size: 14px;\">- Качественную воду с нейтральным содержанием ph</p>\n<p style=\"font-size: 14px;\">- Это рекомендованная вода грудничкам и пожилым людям</p>\n<p style=\"font-size: 14px;\">- Вы выберете производителя воды с многолетним стажем работы в сфере бутилированной воды</p>\n<p><br /><br /></p>\n<p style=\"font-size: 14px;\">В <strong>продаже воды</strong> и очистке по технологиям обратный осмос и озоновая стерилизация <br /> &nbsp;\"Кришталево-чиста питна вода\" вода - №1 !<br />Нам доверяют уже более 10 лет!</p>','1','12','4','1','1','1','1385402947','3','1388094675','0','0','0','1385402947','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('9','document','text/html','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','Надоело пить грязную воду? Вода бутилированная то что вам нужно !','','65-voda-butilirovannaya-eto-to-chto-nuzhno-v-dom-dlya-zdorovoj-semi','','1','0','0','5','0','На сегодняшний день вода бутилированная это лучший выбор который вы сделаете в пользу вашего здоровья.\n\nВсе мы давно знаем, что вода из крана не самое лучшее что есть в нашем доме. Иногда бывает страшно в ней мыться, не говоря уже о том чтоб пить. Наличие разнообразных загрязнителей, средств для очистки водопроводных труб, а так же других микроэлементов могут очень пагубно повлиять на человеческий организм.','<p><img src=\"assets/images/butilirovannaya-voda.png\" style=\"float: right;\" height=\"275\" width=\"183\" /></p>\n<p><span>На сегодняшний день <strong>вода бутилированная</strong> это лучший выбор который вы сделаете в пользу вашего здоровья.</span></p>\n<p>Все мы давно знаем, что вода из крана не самое лучшее что есть в нашем доме. Иногда бывает страшно в ней мыться, не говоря уже о том чтоб пить. Наличие разнообразных загрязнителей, средств для очистки водопроводных труб, а так же других микроэлементов могут очень пагубно повлиять на человеческий организм. <br /> Шокирующая<span style=\"color: #00ffff;\"> <a target=\"_blank\" href=\"voda-h2o-stati/8-vliyanie-khimicheskikh-veshchestv-v-vode-na-organizm-cheloveka-pravda-o-vode.html\"><span style=\"color: #00ffff;\">правда о загрязнителях в воде с под крана</span></a></span> описана здесь, прочитав вы перестанете ее пить!</p>\n<p></p>\n<p></p>\n<p></p>\n<p><br /><br /></p>\n<h2>Решение есть - бесплатная доставка бутилированной воды на дом и в офис</h2>\n<p align=\"justify\">Сегодня многие люди не пью воду из крана, а пользуются разными местными бюветами, покупают воду в 5ти литровых баклажках в супермаркетах, привозят из колодцев, а так же заказывают воду в специализированных компаниях. <br /> Каждый из этих способов доступен любому человеку, но наиболее комфортным из них является такая услуга как бесплатная <strong>доставка бутилированной воды</strong> на дом и в офис. Появление такой бутилированной воды не только сэкономит ваше время, но и заставит вас быть более уверенными в качестве того что вы пьете.<br /> Примите выбор в пользу вашего здоровья и перестаньте пить воду из крана, пусть вашим выбором станет <strong>бутилированная вода</strong>!</p>\n<p></p>\n<h3>Как бутилированная вода поможет вам</h3>\n<p align=\"justify\">Покупая <i>бутилированную воду</i>, вы сразу приобретаете ряд преимуществ:<br /> - Вода всегда находится в состоянии готовом к употреблению <br /> - Можно употреблять воду в сыром виде не переживая за восприятие ее желудком<br /> - Уже через небольшое количество времени, вы почувствуете как ваш организм лучше переваривает пищу<br /> - Все напитки имеют более приятный вкус<br /> - Доставка бутилированной воды экономит ваше время</p>','1','9','0','1','1','1','1385409284','3','1388095441','0','0','0','1385409284','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('10','document','text/html','Вода оптом','Вода оптом в Киеве и Броварах','','63-voda-optom','','1','0','0','5','0','Если вам необходима вода оптом и в розницу, в большом количестве и незамедлительно – вы нашли именно то что вам нужно.\n\n\n\n\nВода оптом продается у нас !\n\nПродажа воды оптом возможна в любое время суток \nВы можете незамедлительно оформить заказ на воду оптом по указанным телефонам на сайте, или написать нам на почту. А так же  «Кришталево-чиста питна вода» предоставляет своим клиентам возможность самовывоза непосредственно из точки розлива.','<p style=\"font-family: \'Times New Roman\', Times, serif; font-size: 16px;\"><strong>Вода оптом</strong> в Киеве и Броварах<br /> Если вам необходима вода оптом и в розницу, в большом количестве и незамедлительно &ndash; вы нашли именно то что вам нужно.<br /><img src=\"assets/images/voda-optom.png\" width=\"400\" height=\"433\" class=\"justifyright\" style=\"float: right;\" /></p>\n<p style=\"font-family: \'Times New Roman\', Times, serif; font-size: 16px;\"></p>\n<h2 style=\"font-family: \'Times New Roman\', Times, serif;\">Вода оптом продается у нас !</h2>\n<p style=\"font-family: \'Times New Roman\', Times, serif; font-size: 16px;\">Продажа воды оптом возможна в любое время суток <br /> Вы можете незамедлительно оформить заказ на <i>воду оптом</i> по указанным телефонам на сайте, или написать нам на почту. А так же предприятие &laquo;Кришталево-чиста питна вода&raquo; предоставляет своим клиентам возможность самовывоза непосредственно из точки розлива.</p>\n<p style=\"font-family: \'Times New Roman\', Times, serif; font-size: 16px;\">Если вы оформите заказ на воду оптом , то сможете приехать за самовывозом в любое время дня и ночи. Такая услуга возможна, поскольку самовывоз воды происходит непосредственно из самой точки расположения завода &laquo;Кришталево-чиста питна вода&raquo;, а именно по адресу г. Бровары, ул. Кооперативная 3А. Просто позвоните по телефону и предупредите о самовывозе. <br /> Мы будем рады вам всегда !<br /><br /><br /></p>\n<h3 style=\"font-family: \'Times New Roman\', Times, serif;\">Купить качественную воду оптом и стать счастливым обладателем здорового организма.</h3>\n<p style=\"font-family: \'Times New Roman\', Times, serif; font-size: 16px;\">Перед там как купить воду оптом у нас во время самовывоза, наши специалисты проведут для вас специальную проверку качества воды на содержание солей и прочих загрязнителей. Тоесть вы можете сравнить любую воду с водой &laquo;Кришталево-чиста питна вода&raquo; и убедиться в том что мы поставляем абсолютно чистый и лечебный продукт.</p>','1','9','1','1','1','1','1385410957','3','1385577023','0','0','0','1385410957','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('11','document','text/html','Доставка питьевой воды от производителя','Доставка питьевой воды от производителя','','dostavka-pitevoj-vodyi-ot-proizvoditelya','','1','0','0','5','0','С наступлением холодного периода в последние годы, наш организм полностью перестраивает свою работу. Такие изменению можно заметить если обратить внимание на любую часть тела – волосы тускнеют, ногти становятся слабыми, у некоторых людей появляется ломота в теле, а для некоторых осень это период обострений разнообразных хронических заболеваний. Такие изменения зачастую связаны с резким перепадом температуры и отсутствием необходимого количества солнца.','<p>С наступлением холодного периода в последние годы, наш организм полностью перестраивает свою работу. Такие изменению можно заметить если обратить внимание на любую часть тела &ndash; волосы тускнеют, ногти становятся слабыми, у некоторых людей появляется ломота в теле, а для некоторых осень это период обострений разнообразных хронических заболеваний. Такие изменения зачастую связаны с резким перепадом температуры и отсутствием необходимого количества солнца.<br /><img src=\"assets/images/dostavka-vodi-kiev-otzivi.jpg\" height=\"225\" width=\"225\" /></p>\n<h2>Холодный период, это то самое время когда тело больше всего нуждается в помощи, поэтому нужно суметь выбрать компанию которой будет осуществляться доставка питьевой воды.</h2>\n<p><br />Современные исследователи советуют при таких изменениях начитать с восстановления водного баланса в организме, но для лечебных целей воду необходимо выбирать высокого качества. Тоесть необходимо выбрать компанию которой совершается <strong>доставка питьевой воды</strong> и детально изучить все об этой компании.<br /> На сегодняшний дней существует большое количество подобных компаний по доставке питьевой воды, но чтоб выбрать самую оптимальную и необходимую для вас нужно серьезно изучить этот вопрос, ведь вода бывает очень разной и отзывы о ней могут быть подделанными и только введут в заблуждение.</p>\n<p><br /><br /></p>\n<h3>Что необходимо точно знать для выбора компании делающей доставку питьевой воды</h3>\n<p>Существует ряд действий, которые необходимо сделать или на которые хотя бы стоит обратить внимание перед тем как начать свою работу с какой-то компанией - придите в интересующую вас компанию, попробуйте воду на вкус, удостоверьтесь что вас устраивает запах воды. Уточните у сотрудников сколько времени вода сможет простоять в закрытом виде и не начать портиться (цвести). Если дольше чем 2 недели, то очень серьезно отнеситесь к этому ответу. Долго вода может сохраняться только в двух случаях : <br />безопасный - если вода обогащена озоном <br />опасный - если в воду добавлены антибиотики и другие химические вещества.<br /> Когда специализированными компаниями качественно и вовремя осуществляется доставка воды киев отзывы о ней вы сможете сами оставить на сайте компании, и при этом только хорошие.</p>','1','9','2','1','1','1','1385411628','3','1385762454','0','0','0','1385411628','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('12','document','text/html','Польза или вред если питьевая вода обогащена углекислым газом','Польза или вред если питьевая вода обогащена углекислым газом','','57-polza-i-vred-esli-pitevaya-voda-obogashchennoj-gazom','','1','0','0','5','0','Газированные напитки это жидкости обогащенные углекислым газом, чаще всего имеющие определенный резкий вкус и запах. \nУглекислый газ имеет и другими названия: СО2, двуокись углерода, диоксид углерода, бикарбонат. Какая вода насыщается углекислым газом, та имеет разную степень насыщения, не смотря на то что в Украине в технологических документах по производству напитков эта степень регламентируется не более 10 г/л (1%). И делается это насыщение по некоторым определенным причинам.','<p>Газированные напитки это жидкости обогащенные углекислым газом, чаще всего имеющие определенный резкий вкус и запах.&nbsp;<br />Углекислый газ имеет и другие названия: СО2, двуокись углерода, диоксид углерода, бикарбонат. <strong>Какая вода</strong> насыщается углекислым газом, та имеет разную степень насыщения, не смотря на то что в Украине в технологических документах по производству напитков эта степень регламентируется не более 10 г/л (1%). И делается это насыщение по некоторым определенным причинам.</p>\n<p><br /><img src=\"assets/images/voda-s-gazom.png\" width=\"505\" height=\"500\" /></p>\n<h2>Какая вода подходит лучше всего для человеческого организма</h2>\n<p>Газирование напитков происходит либо механическим путем, тоесть разведением в жидкости технического углекислого газа, а это всегда производиться для фруктовых напитков, шипучих вин; либо какая то вода насыщается естественным углекислым газом, выделяющимся при брожении пива, кваса, бутылочного шампанского. <br /> <br /> На сегодняшний день при производстве напитков активно используют <strong>какую-то воду</strong> и обогащают углекислым газом, а причина тому главное коммерческое свойство такой воды - консервирующая дезинфекция которая дает обеззараживающий, антимикробный эффект. <br /><br /> Иными словами углекислый газ это консервант, тоесть вещество пагубно влияющее на живые микроорганизмы, которые есть в питьевой бутилированной воде, которая чаще всего никогда не есть абсолютно стерильной, также как и водопроводная вода. <br /><br /> А это все означает, что насыщение воды углекислым газом спасает производителя от множества проблем со сроками и видом хранения продукта. <br /><br /> Но есть и положительные моменты которые несет в себе вода обогащена углекислым газом:<br /><br /> - Минеральные воды несут в себе лечебные свойства, из-за растворенных в них природных газах, которые лечат человеческий организм.<br /><br /> - Природный углекислый газ имеющийся в минеральных водах из-за своего антимикробного действия позволяет воде оставаться чистой даже если в нее попадают какие-то загрязнители. <br /><br /></p>\n<h3>Какая вода нужна человеку для нормальной жизни</h3>\n<p><br /> Перед тем как употреблять искусственную газированную воду стоит серьезно задуматься, нужна ли она вашему организму и не принесет ли такая вода вам вред. Медиками выделена группа людей которым не стоит употреблять газировку и вот по каким причинам:<br /><br /></p>\n<ul>\n<li>Людям с хроническими заболеваниями желудочно-кишечного тракта, а тоесть такими болезнями как гастрит, язвенная болезнь, колит, гепатит, панкреатит категорически запрещено употребление газированных вод. Причина тому храниться в пузырьках &ndash; они раздражают слизистую, вызывая серьезное обострение воспалительного процесса. Даже минеральную воду для лечения многих желудочно-кишечных заболеваний необходимо употреблять только после выветривания из нее газа.</li>\n</ul>\n<ul>\n<li>&nbsp; Детям младше 3 лет газированные напитки лучше вообще не давать, поскольку чаще всего вызывается серьезное вздутие живота.</li>\n</ul>\n<ul>\n<li>&nbsp; Людям с аллергическими заболеваниями, а так же избыточным весом, не рекомендуется употреблять газированные напитки в больших количествах.</li>\n</ul>','1','9','3','1','1','1','1385412158','3','1385662561','0','0','0','1385412158','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('13','document','text/html','Польза которую получит ваш организм от употребления очищенной воды','Польза которую получит ваш организм от употребления очищенной воды','','55-polza-kotoruyu-poluchit-vash-organizm-ot-upotrebleniya-ochishchennoj-vody','','1','0','0','5','0','Современные методы лечения всегда в себя включают применение лекарств и пилюль, но это всего лишь активное вливание финансовых средств в фармацевтические компании.Достаточно большое количество заболеваний лечиться самыми простыми лекарственными и растениями, а также их лечит очищенная вода.\n\nЯпонское медицинское сообщество (Japanese medical society)доказало чтоочищенная вода способна облегчить или полностью исцелить при таких заболеваниях как головная боль, мышечные болезни, болезни сердечно сосудистой системы,при учащенном сердцебиении, артрит,эпилепсия, лишний вес, бронхит, астма, туберкулез,менингит;заболевания почек и мочевыделительной системы, гастрит, діабет, глазные болезни. Методы лечения очень просты, но важность лечения в том чтобы выполнять все действия качественно и регулярно. ','<p>Современные методы лечения всегда в себя включают применение лекарств и пилюль, но это всего лишь активное вливание финансовых средств в фармацевтические компании. Достаточно большое количество заболеваний лечиться самыми простыми лекарственными растениями, а также их лечит <strong>очищенная вода</strong>.<img src=\"assets/images/polza-ot-ochishhennoj-vodi.png\" height=\"364\" width=\"298\" /></p>\n<p><br /><br /></p>\n<h2>Употребляться очищенная вода должна регулярно, и вот по каким причинам</h2>\n<p>Японское медицинское сообщество (Japanese medical society) доказало что очищенная вода способна облегчить или полностью исцелить при таких заболеваниях как головная боль, мышечные болезни, болезни сердечно сосудистой системы,при учащенном сердцебиении, артрит,эпилепсия, лишний вес, бронхит, астма, туберкулез,менингит;заболевания почек и мочевыделительной системы, гастрит, діабет, глазные болезни. Методы лечения очень просты, но важность лечения в том чтобы выполнять все действия качественно и регулярно.<br /> <br /> 1. Сразу после сна утром, еще перед тем как начать чистить зубы очищенную воду нужно выпить в количестве 4 стакана воды по 160 мл каждый. Пожилым и ослабленным людям стоит начать с меньшего количества воды, и постепенно довести количество очищенной воды до необходимого.<br /> 2. Употреблять <strong>очищенную воду</strong> в виде 4 стаканов воды регулярно, а после необходимо ничего не есть в течении 45 минут.<br /> 3. После 45 минут нужно сразу покушать.<br /> 4. Обязательное и очень важное условие - ничего не пейте и не ешьте на протяжении двух часов после употребления завтрака, обеда, ужина. Если ваша вода очищенная, то при употреблении данным методом вы быстро излечите многие болезни и поднимите ваше физическое состояние.</p>\n<p><br /><br /></p>\n<h3>Такие болезни лечатся очищенной водой, если ее регулярного употреблять</h3>\n<p>Высокое кровяное давление (30 дней)<br /> Язва желудка (10 дней)<br /> Диабет (30 дней)<br /> Запор (10 дней)<br /> Рак (90 дней)<br /> Туберкулез (60 дней)</p>\n<p><br /><br /></p>\n<h4>Почему нельзя употреблять очищенную воду сразу после еды</h4>\n<p>Если запить свой обед холодной даже очищенной водой, то жирная пища твердея застывает и в итоге сильно замедляется процесс пищеварения. Дале процесс переходит в реакцию с желудочной кислотой,застывшие жиры разлагаются и всасываются кишечником очень медленно. Это плохо влияет на кишечник, способствует отложению жиров, целлюлиту, также складывается риск развития онкологических заболеваний</p>','1','9','4','1','1','1','1385412275','3','1385762302','0','0','0','1385412275','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('14','document','text/html','Вода не только для здоровья, а вода для похудения','Вода не только для здоровья, а вода для похудения','','voda-ne-tolko-dlya-zdorovya-a-voda-dlya-poxudeniya','','1','0','0','5','0','Ежедневно необходимо поддерживать водно-солевой баланс организма и поддерживать общее состояние тела благодаря ненасыщенным жирным кислотам и воде. Такие кислоты в большей степени есть в растениях, а это значит что вашему телу вполне достаточно употреблять фрукты, овощи и воду для поддержание хорошего обмена веществ. ','<p>Отличия обычной воды от бутилированной видны и понятны не каждому человеку, но если уж вы решили восстановить свое здоровье, то вода после очистки в 20ти литровых бутылях это первое что нужно вам для ежедневной нормализации организма.<br /><img src=\"assets/images/voda-dlya-pohudeniya.png\" height=\"350\" width=\"630\" /></p>\n<h2>Ученые американских исследовательских центров доказали, что в вода после очистки содержит много полезных минералов которые помогают похудеть. &nbsp;</h2>\n<p><br />Ежедневно необходимо поддерживать водно-солевой баланс организма и поддерживать общее состояние тела благодаря ненасыщенным жирным кислотам. Такие кислоты в большей степени есть в растениях, а это значит что вашему телу вполне достаточно употреблять фрукты и овощи для поддержание хорошего обмена веществ.&nbsp;<br /> <br /> <br /> &nbsp; &nbsp;Как известно, любые витамины несут в себе грандиозную помощь нашему организму, какие-то способны улучшить зрение, другие укрепляют кости, третьи улучшают пищеварение и тому подобное. Но самым важным процессом в быстром и качественном обмене веществ является вода.&nbsp;<br /><br /><br /></p>\n<h3>Если придерживаться таких правил бутилированная вода окажет вашему организму благоприятную услугу.</h3>\n<p><br />Если вы решили всерьез заняться свои организмом и телом необходимо контролировать все процессы жизнедеятельности оргазма, в первую очередь это должно касаться качества того что вы едите и того какую воду вы пьете. На сегодняшний день самой безопасной и полезной считается бутилированная вода. Существуют разные технологии и способы изготовления, а так же очистки воды, но каждый человек подбирает себе воду индивидуально по вкусу, запаху и другим качествам. Так например, жители многих европейских стран начав популяризировать здоровый образ жизни и красивую стройную фигуру, перешли только на воду очищенную по технологии обратный осмос и озоновая стерилизация, или же употребляют талую воду с горных источников. <br /><br /> В Украине популяризация здорового образа жизни сейчас только набирает обороты, но каждый диетолог и фитнес-тренер даст вам один и тот же совет, что чистая вода это первое что должно появится в вашей жизни на пути к похудению и красивому стройному телу. Поскольку экология городов не позволяет рассчитывать на безопасность воды с под крана, нужно пить очищенную бутилированную воду. <br /><br /> Бутилированная вода продается в 20ти литровых тарах, что позволяет часто не беспокоиться о наличии чистой воды, чаще всего для семьи из двух человек такого бутыли хватает на полторы недели. Хорошая, и чистая бутилированная вода поможет сохранить здоровье и похудеть. <br /><br /></p>\n<h4>Зачем нужно пить чистую бутилированную воду для похудения:</h4>\n<p><br /> - Для активной переработки жиров в организме. Полностью насыщенные водой клетки хорошо растворяют жиры. <br /><br /> - Чистая бутилированная вода выводит все шлаки из организма. <br /><br /> Правила употребления бутилированной воды:<br /><br /> - Возьмите за правило пить воду как только проснулись. Стакана натощак, вполне достаточно чтобы запустить все внутренние процессы.<br /><br /> - Пейте воду перед едой. За 15-20 минут.<br /><br /> - НИКАКОЙ ВОДЫ ПОСЛЕ ЕДЫ и во время. Такой &laquo;любимый&raquo; нам с детства процесс как раз ведет к остановке организма в переработке съеденного и в итоге к ожирению. <br /><br /> - Пейте по стакану воды каждый час (соки, чаи и иные напитки это не вода)<br /><br />&nbsp; <br /> Придерживаясь всех этих не хитрых правил употребления чистой бутилированной воды, ваш организм постепенно начнет активно скидывать вес, поскольку из-за воды увеличивается уровень метаболизма организма, соответственно увеличивается скорость вашего похудения. <br /><br /> Бутилированная вода &laquo;Кришталево-чиста питна вода&raquo; обеспечит ваш организм всеми необходимыми элементами и поспособствует максимально быстрому похудению и насыщению организма здоровьем.</p>','1','9','5','1','1','1','1385412357','3','1385762091','0','0','0','1385412357','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('15','document','text/html','Очистка воды процесс умягчения воды','','49-ochistka-vody-protsess-umyagcheniya-vody','49-ochistka-vody-protsess-umyagcheniya-vody','','1','0','0','5','0','Очистка воды за счет умягчения воды,это процесс убирания из воды содержащегося в ней концентрата соли. Жесткие соли или соли жёсткости – это наличие растворенной соли в воде в виде магния или кальция. Растворяясь в воде они принимают вид ионов – частиц которые заряжены положительным зарядом, и характеризуется слабой связью со своей отрицательно заряженной частью ионов.','<div class=\"content-links\"></div>\n<p><span style=\"font-family: \'times new roman\', times;\"><strong><img src=\"assets/images/ochistka-vodi.png\" height=\"299\" width=\"300\" /><br /><br /><span style=\"font-size: 12pt;\">Очистка воды</span></strong><span style=\"font-size: 12pt;\"> за счет умягчения воды,это процесс убирания из воды содержащегося в ней концентрата соли. Жесткие соли или соли жёсткости &ndash; это наличие растворенной соли в воде в виде магния или кальция. Растворяясь в воде они принимают вид ионов &ndash; частиц которые заряжены положительным зарядом, и характеризуется слабой связью со своей отрицательно заряженной частью ионов.</span></span><br /><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Для реализации процесса умягчения воды все что необходимо, так это ионы магния, и их связь с более прочными и тесными соединениями чем их собственные вторые части. <strong>Очистка воды</strong> происходит по самому популярному методу реализации технологии умягчения воды, есть умягчения за счет специальных ионообменных смол. Такие схемы по умягчению воды применяются для промышленных и бытовых систем.</span><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> </span><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Создаётся смола, которая по своей структуре имеет жесткий каркас с отдельными отрицательными ионами, с которыми происходит процесс крепления ионов натрия (натрий это один из основных составляющих поваренной соли). В процессе приготовления связь ионов натрия с образованной смолой получается достаточно слабая, в тоже время у солей жёсткости, которые содержатся в воде все абсолютно иначе. Это соединение очень сильное. В итоге получается, что <strong>очистка воды</strong> в процессе прохождения воды через ионообменную смолу, приобретает необходимый нам, так называемый ионный обмен. При таком действии ионы натрия перемещаются в воду, а ионы магния и кальция оседают на смоле. По итогу происходит процесс умягчения воды из-за того что из воды удаляются соли жёсткости.</span><br /><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> В процессе таких постоянных махинаций смола по не многу теряет свои свойства, которые способствуют дальнейшему поглощению солей жёсткости из воды. Восстановление качественных свойств ионообменной смолы возможно при обеспечении удаления накопившихся солей жёсткости из этой смолы. Для этого процесса необходимо промывать смолу специальным высококонцентрированным раствором поваренной соли. <strong>Очистка воды</strong> происходит из-за того что ионы кальция и натрия отрываются друг от друга, хотя соотносятся примерно 1 к 100, в следствии чего происходит отрывание с дальнейшим смыливанием в канализацию. Постоянное нахождение ионов кальция заменяют ионы натрия, и по итогу этот процесс может повторятся циклически.</span></p>','1','9','6','1','1','1','1385412559','3','1387811392','0','0','0','1385412559','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('16','document','text/html','Чистая вода избавленная от хлора ','Чистая вода избавленная от хлора ','','43-chistaya-voda-izbavlennaya-ot-khlora','','1','0','0','5','0','Хлорирование воды является самым   распространённым действием которое считается  «обеззараживающим» для воды, от разнообразных загрязнителей и бактерий. Но не секрет и то, что  «чистая вода» в которой есть хлор, расправляется не только с бактериями но и с человеческим организмом.  На самом деле, хлорирование действительно убивает бактерии в воде, но поскольку нам хлорка вредна, существуют такие способы избавления от нее:\n ','<p><span style=\"font-size: 12pt; font-family: \'times new roman\', times;\">&nbsp;&nbsp; <img src=\"assets/images/chistaya-voda.png\" style=\"float: left;\" height=\"375\" width=\"431\" /></span><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\">Хлорирование воды является самым &nbsp; распространённым действием которое считается &nbsp;&laquo;обеззараживающим&raquo; для в</span><span style=\"font-family: \'times new roman\', times;\"><span style=\"font-size: 12pt;\">оды, от разнообразных загрязнителей и бактерий. Но не секрет и то, что &nbsp;&laquo;<strong>чистая вода</strong>&raquo; в которой есть хлор, расправляется не только с бактериями но и с человеческим организмом.&nbsp;</span></span><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> На самом деле, хлорирование действительно убивает бактерии в воде, но поскольку нам хлорка вредна, существуют такие способы избавления от нее:</span><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\">&nbsp;</span><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"><br />- Хлор очень просто убирается из воды фильтром выполненным из активированного угля. </span><br /><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> - Хлор достаточно просто испаряется из воды. При повышении температуры жидкости происходит испарение молекул газа, и в итоге остается практически абсолютно <strong>чистая вода</strong>.</span><br /><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Также, хлор будет испаряться даже когда эта вода будет просто несколько дней отстаиваться с приоткрытой крышкой в банке. Хотя это разумеется более длительный процесс по испарению хлора из воды.</span><br /><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Если заниматься кипячением, то температура кипения воды, для испарения хлора должна быть четко определенной. Этот факт есть важным, поскольку при повышении температуры жидкости повышается реакционная способность хлора. При этом в воде появляются различного характера хлорорганические соединения, которые возникают из-за остатков молекул растворенных органических соединений и <strong>чистая вода</strong> уже таковой не является . Опасность в том, что в результате таких соединений могут возникать даже яды. Температура сотворения таких соединений имеет достаточно широкий диапазон &ndash; от 0 до 70 градусов Цельсия. Так же существует возможность реакции синтеза при более высоких температурах.</span><br /><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Итого получается, что определить оптимальную температуру испарения хлора из воды, не в лабораторных условиях невозможно, и опять же при этих обстоятельствах наш организм поддается риску отравления (только на этот раз уже ядом сделанным собственноручно). </span><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Но факт есть факт &ndash; хлор испаряется при любых температурах кипения, а чем выше температура, тем это испарение быстрее происходит.</span><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Но есть одна уловка, когда температура жидкости ниже 70 градусов Цельсия, образование хлорорганических соединений происходит если в жидкости есть &laquo;катализаторы&raquo;, которые в обычной питьевой воде не содержаться.</span><br /><span style=\"font-family: \'times new roman\', times; font-size: 12pt;\"> Итого считается оптимальной температурой испарения хлора из воды, температура до 70 градусов Цельсия. Но нужно быть всегда уверенным в том что ты пьешь, и поэтому лучше пить уже приготовленную к употреблению, очищенную питьевую воду. Одной из самых безопасных на сегодняшний день считается вода очищенная по технологии <strong>обратный осмос</strong> и <strong>озоновая стерилизация</strong>. И именно этими инновационными технологиями пользуется завод &laquo;Кришталево-чиста питна вода&raquo;</span></p>','1','9','7','1','1','1','1385412628','3','1387811917','0','0','0','1385412628','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('37','document','text/html','Организмы и значение воды для них','','','organizmyi-i-znachenie-vodyi-dlya-nix','','1','0','0','5','0','Человек как и многие живые организмы на планете, состоит из воды.\nЧеловеческое тело на 80 % состоит из воды, и нуждается в ее регулярном пополнении. Поэтому вопрос значения воды для человека и окружающего мира является очень важным.','<p>Человек как и многие живые организмы на планете, состоит из воды.<br />Человеческое тело на 80 % состоит из воды, и нуждается в ее регулярном пополнении. Поэтому вопрос значения воды для человека и окружающего мира является очень важным.<br /><img src=\"assets/images/znachenie-vodi.png\" width=\"250\" height=\"375\" style=\"float: right;\" class=\"justifyright\" /></p>\n<p><br /><br /></p>\n<h2>Значение воды для человека и всего живого вокруг</h2>\n<p><br />С детства нам известно что без еды человек способен прожить несколько месяцев, без воздуха несколько минут, без воды несколько дней. Уделим внимание именно последнему фактору.<br /><strong>Значение воды</strong> в жизни всего живого играет одну из ключевых ролей. Изначально определенное количество воды содержит в себе все живое- растения, животные, люди. Тем не мнение окружающие нас факторы, такие как солнце, зной, ветер и мороз истощают организм и поэтому человеческие тела требуют регулярного пополнения водно- соленного баланса.<br />Из- за недостатка воды в организме человека происходит истощение, которое ведет к серьезным нарушениями функционирования.<br /><br /></p>\n<h3>Что будет если не брать во внимание значение воды для нашего здоровья</h3>\n<p><br />При истощения организма на&nbsp;2,5% массы тела, вызывает начальные нарушения так же появляется легкое головокружение, при 5,5-6,5% развиваются выраженные расстройства, на 7-14% приводит к тяжелому состоянию и отеку внутренних органов, а 15-25% - к смертельному исходу.<br /><br /></p>\n<h4>Почему необходимо придавать большое значение воде которую мы пьем</h4>\n<p><br />Помимо того что нужно пить воду, нельзя и забывать о том что воду нужно пить чистую.<br />Любая вода может содержать в себе множество микроэлементов, кишечных палочек, бактерий и вирусов которые попадут в тело самым простым путем, а вот последствия будут самыми сложными.<br />Употребление грязной воды даже в самом малом количестве приводит в отравлению, повышению температуры и болевым ощущениям в области почек - ведь это они, те самые фильтры которые через себя пропустили кучу бактерий. Регулярное же употребление грязной воды может привести к разрушения костей, язвам желудка, серьезным желудочным расстройствам, проказе и многим другим жидким болезням.<br />Поэтому, перед тем как пить воду потратьте время на то, чтоб удостовериться в чистоте ее источника.<br /><br />Так же, ответы на вопросы о том <a href=\"voda-h2o-stati/4-voda-uspokaivaet-i-lechit.html\">почему&nbsp;вода успокаивает и лечит наш организм</a> указаны в статье.</p>','1','9','9','1','1','3','1386606020','3','1386606558','0','0','0','1386606020','3','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('17','document','text/html','Если нужно купить воду в безвредной таре','Если нужно купить воду в безвредной таре','','41-esli-nuzhno-kupit-vodu-v-bezvrednoj-tare','','1','0','0','5','0','Сегодня в мире существует безумное количество разнообразной пластиковой продукции и в том числе пластмассовых бутылок. А купить воду чаще всего можно такой таре. Многие люди стремительно пользуются использованными пластиковыми бутылками, наливания в них как холодную, так и кипяточную воду (что касается кипятка – это делать категорически запрещено). Длительное хранение воды в тонкой пластмассовой таре негативно влияет на здоровье человека. Основной причиной негативного влияния на воду является качество самого пластика.\n','<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\"><img src=\"assets/images/kupit-vodu.png\" height=\"438\" width=\"351\" /><br />Сегодня в мире существует безумное количество разнообразной пластиковой продукции и в том числе пластмассовых бутылок. А <strong>купить воду</strong> чаще всего можно такой таре. Многие люди стремительно пользуются использованными пластиковыми бутылками, наливания в них как холодную, так и кипяточную воду (что касается кипятка &ndash; это делать категорически запрещено). Длительное хранение воды в тонкой пластмассовой таре негативно влияет на здоровье человека. Основной причиной негативного влияния на воду является качество самого пластика.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">В последнее время, из-за популяризации &laquo;эко-товаров&raquo;, производители стали указывать на таре что она чистая и изготовлена исключительно из безвредных материалов. Людям кажется что если <strong>купить воду</strong> с пометкой \"Эко\" это сразу придаст заряд сил и мешок здоровья, но это далеко не так. </span><br /> <br /><span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">На сегодняшний день самой безвредной пластиковой тарой являются PET-бутыли (PET bottle). Такие бутылки производятся из полиэтилентерефталата. Так же существуют бутылки из PVC которые как раз и есть загрязнителями, но производители часто пытаются их продавать под видом РЕТ.</span><br /><br /> <span style=\"font-size: 12pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Но не стоит так устрашаться, выполнить проверку на качество бутылки или бутыля очень просто. Перед тем как <strong>купить воду</strong> необходимо немного надавить на тару острым предметом или ногтем. PVC-бутыль будет сразу заметен, поскольку на его поверхности моментально появится &laquo;шрам&raquo; в виде белой полосочки. Зато при повторении таких же действий с поверхностью PET- тара останется невредимой. Однако необходимо помнить что любые предметы стоит хранить в надлежащем состоянии, тоесть бутыли и бутылки хранить на солнце или в помещениях с температурой свыше 30 градусов Цельсия, не стоит.<br /><br />Перед тем как <strong>купить воду</strong> в пластиковых бутылках неизвестного вам производителя - вспомните эту статью.<br /></span></p>','1','9','8','1','1','1','1385412682','3','1387811406','0','0','0','1385412682','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('18','document','text/html','Почему питьевая вода нужна спортсменам как воздух','','39-pochemu-pitevaya-voda-nuzhna-sportsmena-kak-vozdukh','39-pochemu-pitevaya-voda-nuzhna-sportsmena-kak-vozdukh','','1','0','0','5','0','Во время физической активности в организме спортсмена сильно нарушается водный баланс, а впоследствии такие потери влияют на результативность, которая значительно уменьшается. Для обеспечения организма безопасными микроэлементами, спортсменам рекомендуется к употреблению питьевая вода.\n\nСпортсменам необходимо чтоб употребляемая ими питьевая вода соответствовала высоким стандартам качества. Необходимо придерживаться таких принципов употребления питьевой воды:','<div class=\"content-links\"></div>\n<p><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\"><img src=\"assets/images/pitevaya-voda(1).png\" height=\"325\" width=\"500\" style=\"float: right;\" /><br />Во время физической активности в организме спортсмена сильно нарушается водный баланс, а впоследствии такие потери влияют на результативность, которая значительно уменьшается. Для обеспечения организма безопасными микроэлементами, спортсменам рекомендуется к употреблению <strong>питьевая вода</strong>.</span><br /><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">Спортсменам необходимо чтоб употребляемая ими <strong>питьевая вода</strong> соответствовала высоким стандартам качества. Необходимо придерживаться таких принципов употребления питьевой воды:</span><br /><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">- УПОТРЕБЛЯЙТЕ ВОДУ НЕПОСРЕДСТВЕННО ПЕРЕД ВЫПОЛНЕНИЕМ ФИЗИЧЕСКИХ НАГРУЗОК</span><br /><br /> <br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">Перед началом тренировки организм необходимо обеспечить водой в большом объеме для предотвращения потерь жидкости в мышечных тканях. <strong>Питьевая вода</strong> должна употребляться в таких оптимальных количествах &ndash; не менее 0,5 литра за час до начала физических упражнений. Рекомендуется, непосредственно за пол часа до начала тренировки не пить абсолютно никакой воды питьевой.</span><br /><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\"></span><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">- УПОТРЕБЛЯЙТЕ ВОДУ ВО ВРЕМЯ ФИЗИЧЕСКОЙ АКТИВНОСТИ</span><br /><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">Поскольку организму необходимо компенсировать теряемую с потом жидкость, наиболее правильный и полезный с физиологической точки зрения способ это делать &mdash; употреблять питьевую воду небольшими глотками но достаточно часто (примерна каждые 10-15 минут).</span><br /><span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\"></span><br /><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">- УПОТРЕБЛЯЙТЕ ВОДУ ПОСЛЕ ОКОНЧАНИЯ ЗАНЯТИЙ СПОРТОМ</span><br /><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">Длительность процесса регидратации напрямую зависима от количества жидкости которая была потерянной в процессе тренировки. Например, два-три литра утраченной жидкости компенсируются на протяжении четырех часов, если <strong>питьевая вода</strong> употребляется по 200 мл воды каждые 15 минут.</span><br /><br /> <span style=\"font-size: 12pt; line-height: 150%; font-family: \'Times New Roman\',\'serif\';\">Для активной компенсации дисбаланса в организме после выполнения физических упражнений требуется прием воды, обогащенной озоном (тоесть вода обработанная при технологии озоновая стерилизация). Для эффективности процесса нейтрализации молочной кислоты, а также быстрого усвоения потерянной жидкости клетками организма, необходимо пить очищенную воду. Таким образом, <strong>питьевая вода</strong>, улучшает процесс транспортировки кислорода по кровеносным сосудам.</span></p>','1','9','9','1','1','1','1385412738','3','1386190084','0','0','0','1385412738','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('19','document','text/html','Что такое обратный осмос, и как он влияет на качество жизни','Что такое обратный осмос, и как он влияет на качество жизни','','37-chto-takoe-obratnyj-osmos-i-kak-on-vliyaet-na-kachestvo-zhizni','','1','0','0','5','0','Обратный осмос это один из самых чистых методов очистки воды. Благодаря этой технологии  из воды удаляется до 99% всех загрязняющих веществ.\n\nВода проходит через серию фильтров, включая фильтр с активированным углем для удаления хлора. После этого вода проходит через полупроницаемую мембрану, которая позволяет удалить из воды широкий спектр примесей, бактерий и загрязняющих веществ, и по итогу получить абсолютно чистый продукт.','<h2></h2>\n<div class=\"content-links\"></div>\n<p><img src=\"assets/images/obratnij-osmos.png\" height=\"353\" width=\"617\" /><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\"><strong>Обратный осмос</strong> это один из самых чистых методов очистки воды. Благодаря этой технологии &nbsp;из воды удаляется до 99% всех загрязняющих веществ.</span><br /><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\">Вода проходит через серию фильтров, включая фильтр с активированным углем для удаления хлора. После этого вода проходит через полупроницаемую мембрану, которая позволяет удалить из воды широкий спектр примесей, бактерий и загрязняющих веществ, и по итогу получить абсолютно чистый продукт.</span><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\"> </span><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\">Система&nbsp;<strong>обратный осмос</strong> была первоначально предназначена для опреснения и широко используется в течение многих лет в судоходной отрасли, нефтяных вышек и т.д. для превращения морской воды в питьевую воду. Так же в настоящее время технология <strong>обратный осмос</strong> используется в больницах, промышленных и фармацевтических компаниях.</span><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\">Система обратного осмоса обычно имеет следующие компоненты: насос подачи или давления сырой воды, предварительная фильтрация в один или несколько этапов, химические инъекции, различные датчики и расходомеры, клапан регулирования давления, облегчения клапан и реле давления. По итогу очистки \"<strong>обратный осмос</strong>\" должна быть окончательная стерилизация, такая как хлор, Ultra-Violet (Ультрафиолет) или озонирование. Другие типы после очистки могут включать в себя угольные фильтры, рН, или минеральные инъекции.</span><br /><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\">На сегодняшний день технология обратного осмоса доступна для взыскательных представителей общественности, которые принимают только самые высокие стандарты в питьевой воде.</span></p>','1','9','10','1','1','1','1385412808','3','1385761532','0','0','0','1385412808','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('20','document','text/html','Очищенная вода по системе озоновая стерилизация','Очищенная вода по системе озоновая стерилизация','','35-ochishchenaya-voda-po-sisteme-ozonovaya-sterilizatsiya','','1','0','0','5','0','Очищенная вода по системе озоновая стерилизация это очень мягкая по вкусу и не имеющая не приятного запаха вода. Система такой очистки предоставляет множество существенных преимуществ по сравнению с другими традиционными методами очистки и стерелизации. Озонирование это быстрый, эффективный и тщательный дезинфицирующий метод для удаления твердых частиц, металлов, цвета и неприятного вкуса в воде. ','<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"></span><span style=\"font-family: times new roman,times; font-size: 12pt;\"><img src=\"assets/images/ochishhennaya-voda.png\" height=\"331\" width=\"448\" /><br /><strong>Очищенная вода</strong> по системе озоновая стерилизация это очень мягкая по вкусу и не имеющая не приятного запаха вода. Система такой очистки предоставляет множество существенных преимуществ по сравнению с другими традиционными методами очистки и стерилизации. Озонирование это быстрый, эффективный и тщательный дезинфицирующий метод для удаления твердых частиц, металлов, цвета и неприятного вкуса в воде. <br />Поскольку озон являет собой очень нестабильный газ, он не может быть сохранен в каком-то виде. Таким образом, он должен быть создан на месте использования в случае необходимости. К примеру, в системе очистки питьевой воды \"Кришталево-чиста питна вода\" озонирование применяется непосредственно после разлива по бутылям, и перед тем как <strong>очищенная вода</strong> закупоривается герметической пробкой. <br /></span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Кислород, из которой озон образуется, как правило, находится в стабильной форме двух атомов связи (O2). В озоновую форму кислород превращается при трех атомах или трехатомной форме. Эта неустойчивая связь образуется путем пропускания кислорода через высокое напряжение коронного разряда (CD). Большинство коммерческих генераторов озона используют высокое напряжение коронного разряда в процессе добывания озона, поскольку такой разряд оказывает более высокие концентрации озона по массе в полученном потоке газа. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Озон может очистить мутную воду. Если положительно заряженные частицы преобладают, озон вызывает с поверхностных зарядов некоторые коллоидные частицы, чтобы те стали отрицательными. Противоположно заряженные частицы притягиваются друг к другу и образуют более крупные частицы (хлопья), которые оседают за счет чего происходит снижение мутности и получается <strong>очищенная вода</strong>. Когда вода содержит в себе много примесей органического происхождения, озон оказывается полезным для их устранения. Озон может быть очень эффективным при удалении многих видов водорослей.</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">&nbsp;Цвет в воде, как правило, эстетическая проблема, связанная с дубильными веществами содержащимися в воде источника, например из реки. Однако это также могут быть металлы, происходящие из скважины из которой добывается и уже после делается <strong>очищенная вода</strong>. <span style=\"font-family: times new roman,times; font-size: 12pt;\">Удаление плохого цвета, неприятного вкуса и вонючего запаха воды достигается при помощи озонирования.</span></span></p>','1','9','11','1','1','1','1385412881','3','1385761448','0','0','0','1385412881','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('21','document','text/html','Вода с содержанием кальция. Польза или вред?','Вода с содержанием кальция. Польза или вред?','','33-voda-i-kalcij','','1','0','0','5','0','Современный мир наполнен рекламой о том что пить воду которая является минеральной, богатой на разные вещества которые абсолютно безвредны и полезны для любого организма, в огромных количествах ежедневно крайне необходимо организму. Мало того «честные рекламщики» утверждают, что при регулярном употреблении минеральная вода значительно улучшает работу организма и способна вылечить различные заболевания.\n\nНа самом же деле, минеральная вода лучше всего поспособствует вам если использовать ее наружно в виде ванн и примочек. Столько воды употребляемой в простом виде или в пищу не принесет организму ничего хорошего. ','<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"><img src=\"assets/images/pit-vodu.png\" height=\"336\" width=\"337\" /><br />Современный мир наполнен рекламой о том что <strong>пить воду</strong> которая является минеральной, богатой на разные вещества которые абсолютно безвредны и полезны для любого организма, в огромных количествах ежедневно крайне необходимо организму. Мало того &laquo;честные рекламщики&raquo; утверждают, что при регулярном употреблении минеральная вода значительно улучшает работу организма и способна вылечить различные заболевания. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> На самом же деле, минеральная вода лучше всего поспособствует вам если использовать ее наружно в виде ванн и примочек. <strong>Столько воды</strong> употребляемой в простом виде или в пищу не принесет организму ничего хорошего. </span><br /><span style=\"font-size: 12pt;\"> </span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Кальций это один из структурных компонентов, который принимает непосредственное участие в обеспечении крепости кости. Кроме того, кальций является необходимым элементом в крови, так как он обеспечивает активную свертываемость крови. Еще кальций снижает уровень холестерина в крови и способствует лучшей работе мозга.<br /><br />Вещества содержащиеся в минеральной воде в большом количестве, например такие как соль, оседают на сосудах и суставах, что в свою очередь может привести к страшным последствиям, а наличие кальция в воде может привести лишь к жесткости воды, которую, не так легко устранить даже кипячением. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Если уже говорить о необходимости кальция в организме, то для нормального функционирования человеку требуется довольно высокий процент употребления кальция в день. Необходимое количество возможно восполнить, если пить более 60 литров кальцинированной воды в день. Но такая вода не только не принесет пользы, но и сделает непоправимый урон вашему организму в виде камней в почках. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Итог таков что никакой, даже минимальной пользы, вода с кальцием не приносит организму, а просто является пустым разговором производителей подобных вод. Для ежедневного употребления и пищевых целей лучше использовать продукцию без кальция, во избежание осложнений функционирования организма. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"><span class=\"hps\">Кальций является</span> <span class=\"hps\">больше</span> <span class=\"hps\">вопросом, </span><span class=\"hps\"></span> <span class=\"hps\">вопрос здоровья</span>, хотя некоторые <span class=\"hps\">школы мысли</span>, что <span class=\"hps\">недостаток кальция</span>, как <span class=\"hps\">в дистиллированной</span> <span class=\"hps\">или обратного осмоса</span> <span class=\"hps\">обрабатываемой воды не</span> <span class=\"hps\">здоровые</span>. <span class=\"hps\">Там</span> <span class=\"hps\">нет убедительных</span> <span class=\"hps\">доказательств в поддержку</span> <span class=\"hps\">этой точки зрения,</span> <span class=\"hps\">или в этом отношении</span> <span class=\"hps\">противоположную точку зрения</span>, что вода <span class=\"hps\">с кальцием</span> <span class=\"hps\">вредно для здоровья</span>.</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"><span class=\"hps\">Удаление кальция</span> <span class=\"hps\">-</span> <span class=\"hps\">кальция</span> <span class=\"hps\">легко удаляется</span> <span class=\"hps\">из воды путем</span> <span class=\"hps\">простого</span> <span class=\"hps\">натриевой форме</span> <span class=\"hps\">ионообменник</span>, широко известная как <span class=\"hps\">для смягчения воды.</span> <span class=\"hps\">Обратный осмос</span> <span class=\"hps\">удаляет</span> <span class=\"hps\">95% до 98</span>%, но <span class=\"hps\">удаление</span> <span class=\"hps\">твердость</span> <span class=\"hps\">обычно вызывает</span> <span class=\"hps\">масштабирование</span> <span class=\"hps\">мембраны обратного осмоса</span>. <span class=\"hps\">Кальций</span> <span class=\"hps\">также может</span> <span class=\"hps\">быть удалена путем</span> <span class=\"hps\">деионизаторами</span> <span class=\"hps\">(водород</span> <span class=\"hps\">теплообменники</span> <span class=\"hps\">формы</span> <span class=\"hps\">катион)</span>, диализ, <span class=\"hps\">перегонки и</span> <span class=\"hps\">ультрафильтрации.</span></span></p>','1','9','12','1','1','1','1385412949','3','1385760806','0','0','0','1385412949','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('31','document','text/html','404','','','404','','1','0','0','0','0','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>','1','0','7','1','1','3','1385660609','3','1387964222','0','0','0','1387964222','3','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('22','document','text/xml','XML карта сайта','','','sitemap.xml','','1','0','0','0','0','','','0','0','7','1','1','1','1376384158','3','1386605579','0','0','0','1386166606','3','','0','0','0','0','0','0','1','1');
INSERT INTO `modx_site_content` VALUES ('23','document','text/html','Как заказать','Как заказать','','kak-zakazat','','1','0','0','0','0','Чтобы заказать воду и аксессуары вы можете связаться с нами по телефону указанному выше.','','1','10','6','1','1','1','1385453548','1','1385473054','0','0','0','1385453548','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('24','document','text/html','Выбирая воду обращайте внимание на:','Выбирая воду обращайте внимание на:','29-vybiraya-vodu-obrashchajte-vnimanie-na','29-vybiraya-vodu-obrashchajte-vnimanie-na','','1','0','0','5','0','Питьевая вода бывает разной.\n\nчище водаВыбирая производителя воды обращайте внимание на:\n\n- технологию производства воды\n\n- прозрачные условия производства воды\n\n- система которая используется как очистка воды\n\n- гарантию качества производителя\n\n - наличие заключения государственной санитарно-эпидемиологической экспертизы\n','<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"><span style=\"line-height: 115%;\">П</span><span style=\"line-height: 115%;\">итьевая вода бывает разной.</span></span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"><span style=\"line-height: 115%;\"><br /><img src=\"assets/images/chishhe-voda.png\" width=\"448\" height=\"336\" />Выбирая производителя воды обращайте внимание на:</span><span style=\"line-height: 115%;\"></span><span style=\"line-height: 115%;\"> </span></span><br /><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> - технологию производства воды</span><br /><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> - прозрачные условия производства воды</span><br /><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> - система которая используется как очистка воды</span><br /><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> - гарантию качества производителя</span><br /><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\">&nbsp;</span><span style=\"font-family: times new roman,times; font-size: 12pt;\"><span style=\"line-height: 115%;\">- наличие заключения государственной санитарно-эпидемиологической экспертизы</span><span style=\"line-height: 115%;\"></span><span style=\"line-height: 115%;\"></span></span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> </span><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> </span><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> Вода в организме человека выполняет функцию растворителя, поэтому важнейшими ее характеристиками есть качество на молекулярном уровне воды и минимальное количество примесей. Таким образом, чем чище вода тем больше пользы вашему организму она принесет.</span><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"></span><br /><br /><span style=\"font-size: 12pt; line-height: 115%; font-family: times new roman,times;\"> Искусственные напитки построены на основе веществ, влияющих на химический и физический состав организма, и в основном эти вещества пагубно влияют на функционирование центральной нервной системой человека. <br /></span></p>','1','9','13','1','1','1','1385455847','3','1385658920','0','0','0','1385455847','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('25','document','text/html','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','Влияние на человеческий организм химических элементов которые содержит питьевая вода ','8-vliyanie-khimicheskikh-veshchestv-v-vode-na-organizm-cheloveka-pravda-o-vode','8-vliyanie-khimicheskikh-veshchestv-v-vode-na-organizm-cheloveka-pravda-o-vode','','1','0','0','5','0','Питьевая вода, как и другая любая жидкость, имеет свой химический состав. Химические элементы которые содержит в питьевая вода можно разделить на такие группы:\n\n·       Химические элементы которые чаще всего содержит питьевая вода: фтор, железо, медь, марганец, цинк, ртуть, селен, свинец, молибден, нитраты, сероводород и др.','<p><b><span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\"><img src=\"assets/images/h2o-voda.png\" height=\"330\" width=\"519\" /><br /><br />&nbsp;&nbsp; Питьевая вода</span></b><span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">, как и другая любая жидкость, имеет свой химический состав. Химические элементы которые содержит в <b>питьевая вода</b> можно разделить на такие группы:</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Химические элементы которые чаще всего содержит <b>питьевая вода</b>: фтор, железо, медь, марганец, цинк, ртуть, селен, свинец, молибден, нитраты, сероводород и др.</span><br /> <br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Химические элементы, которые остаются в воде в следствии реагентной обработки: реагенты, коагулянты (алюминия сульфат), флоккулянты (полиакриламид) которые в итоге способствуют сохранению водопроводных труб от коррозии (остаточные триполифосфаты), а также остаточный хлор.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Вредные химические вещества, попадающие в водоемы вместе со сточными водами. Здесь представлен лишь примерный список вредных элементов, из-за которых может быть испорчена и даже отравлена ваша <b>питьевая вода</b>. Это бытовые, промышленные, поверхностные стоки сельско-хозяйственных угодий обрабатываемые химическими веществами для защиты растений, гербицидами и минеральными удобрениями. Это пестициды, детергенты, минеральные удобрения, тяжелые металлы и многое другое.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Химические элементы попадающие в <span style=\"color: #ffffff;\"></span>воду непосредственно из водопроводных труб, переходников соединяющих эти трубы, из сварочных швов и так далее. Этими металлами чаще всего являются медь, железо, свинец.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">Очень мало людей знают о том что эти вещества опасны для здорового человеческого организма. </span><span style=\"font-size: 12pt; font-family: times new roman,times;\">Согласно данным, исследований Всемирной Организации Здравоохранения более 90% всех заболеваний в мире, так или иначе передаются и распространяются через воду. Из-за массового загрязнения воды, каждый год в мире заболевают в разной степени тяжести не меньше 500 миллионов человек. При этом рост количества заболеваний наблюдается постоянно, вследствие чего в разных странах мира наблюдается снижение общей продолжительности человеческой жизни.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">Итак, что содержит в себе ваша домашняя <b>простая вода</b> из под крана? В большинстве случаев,<span style=\"color: #ffffff;\"> вода и</span>з водопроводных труб, которую мы ежедневно дома употребляем в пищу и напитки содержит в себе такие виды металлов как медь, свинец и железо.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">Рассмотрим, к каким незаметным для организма внешне, но очень заметным изнутри, последствиям ведет регулярное употребление простой<span style=\"color: #ffffff;\"> воды </span>из водопровода:</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">- Медь. В небольших количествах ее содержит любая <b>питьевая вода</b>. Ну, а вот концентрации в воде меди которая входит в составляющую сплава водопроводных труб может быть значительно повышена. <b>Пить воду,</b> </span><span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">концентрация меди в которой содержится 3 мг/л опасно. Употребление такой <span style=\"color: #ffffff;\">воды</span> может привести к серьезному нарушению функций желудочно-кишечного тракта, а у людей с заболеваниями печени (например гепатит) в последствии употребления может быть цирроз. Так же, особо опасна медь для грудных детей. Из-за особой чувствительности ко всему, у деток может моментально начаться развитие болезни цирроза печени. </span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">- Железо является одним из основных естественных составляющих природной <span style=\"color: #ffffff;\">воды. </span>В своем изначальном виде не обработанная и не <b>очищенная вода</b> содержит в себе </span><span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">от 0,5 до 50 мг/л железа. Но благодаря водопроводу, некоторые люди пьют воду со слегка ржавым цветом и металлическим вкусом. Такую <b>пить воду</b> нельзя, она не пригодна к употреблению. Повышенное содержание в воде железа, при регулярном употреблении может привести к развитию гемохроматоза, т.е. отложению соединений железа в органах и тканях.</span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">- Свинец<b>.</b> Если <b>простая вода</b> из водопровода имеет повышенную концентрацию свинца, то&nbsp; в зависимости от дозировки, у человека потребляющего такую <span style=\"color: #ffffff;\">воду</span> могут развиваться острые или хронические отравления. Острое отравление может развиться при однократном поступлении свинца в <span style=\"color: #ffffff;\">воду: </span>для взрослых 100-120 мг/мл воды, для детей 80-100 мг/мл <span style=\"color: #ffffff;\">воды.</span> Такие отравления водой, не редко приводят к летальному исходу. <b>Питьевая вода </b>содержащая<b> </b>свинец<b> </b>может<b> </b>привести к хроническому отправлению. Свинец обладает свойством накапливания в тканях человека. Регулярное употребление <span style=\"color: #ffffff;\">воды</span> со свинцом, может проявится в признаках поражения центральной и периферической нервной системы, кишечника, почек. </span><br /><br /> <span style=\"font-size: 12pt; font-family: \'Times New Roman\',\'serif\';\">Особо чувствительны к накоплению свинца детские организмы. Свинец блокирует выработку витамина Д, необходимого для кальция в костях. А это в свою очередь приводит к развитию рахита. Не <b>чистая вода</b>, содержащая большую концентрацию свинца приводит к резкому замедлению умственного и физического развития, активному снижению интеллектуальных способностей, а так же поражает слух. </span><br /><br /> <span style=\"font-size: 12pt; line-height: 115%; font-family: \'Times New Roman\',\'serif\';\">Употребление <span style=\"color: #ffffff;\">воды с</span> большой концентрацией свинца противопоказано беременным женщинам. Такая <span style=\"color: #ffffff;\">вода</span> может привести к серьезным нарушениям плода</span></p>','1','9','14','1','1','1','1385455934','3','1385761038','0','0','0','1385455934','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('33','document','text/html','Как заказать','','','kak-zakazat1','','1','0','0','0','0','	Чтобы заказать воду и аксессуары вы можете связаться с нами по телефону указанному выше.','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>','1','0','8','1','1','3','1385661442','3','1387962361','0','0','0','1387962361','3','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('26','document','text/html','9 причин, чтоб пить воду, и делать это как можно чаще:','9 причин, чтоб пить воду, и делать это как можно чаще:','','13-9-prichin-chtob-pit-vodu','','1','0','0','5','0','Давно известен тот факт, употребление большого количества питьевой воды положительно влияет на человеческий организм. Питьевая вода полезна и необходима для здорового функционирования человека в современном мире, который переполнен безмерным количеством вирусов и бактерий. Но даже зная такой простой фактор для укрепления своего тела и иммунитета, многими людьми практически не употребляется простая вода. Существует ряд важных причин, который подтверждает факт того что чистая вода необходима нашему организму не меньше чем чистый воздух.','<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"><img src=\"assets/images/pitevaya-voda-ili-pit-vodu.png\" height=\"452\" width=\"489\" />Давно известен тот факт, употребление большого количества питьевой воды положительно влияет на человеческий организм. <strong>Питьевая вода</strong> полезна и необходима для здорового функционирования человека в современном мире, который переполнен безмерным количеством вирусов и бактерий. Но даже зная такой простой фактор для укрепления своего тела и иммунитета, многими людьми практически не употребляется простая вода.</span> <span style=\"font-family: times new roman,times; font-size: 12pt;\"> Существует ряд важных причин, который подтверждает факт того что чистая вода необходима нашему организму не меньше чем чистый воздух.</span></p>\n<h3><span style=\"font-family: times new roman,times;\"> Какую питьевую воду мы пьем?</span></h3>\n<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"> В наше время человечество сводит потребление обычной воды к самому минимальному. Чаще всего пить воду без разнообразных добавок нам не приходится. Многие считают что простая питьевая вода так же полезно заменяется соками. Многие вместо воды пьют газированные напитки, чай, кофе, молочные напитки. В большинстве случаев человеком вообще не употребляется в достаточном количестве вода, из-за чего организм обезвоживается, и иммунитет серьезно ослабевает (что ведет к разнообразным заболеваниям).</span><br /><br /><span style=\"font-size: 12pt; font-family: times new roman,times;\">После сна, на тощак необходимо выпивать по меньшей мере два стакана воды, чтобы компенсировать ту жидкость в организме которая была потеряна за время сна. Самое оптимальное для человеческого организма время для употребления воды &mdash; стакан воды не менее чем полчаса до еды и столько же через 2,5 часа после еды. Но это лишь самый минимум который крайне необходимый организму.</span> <br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Малое количество людей понимает, что вода - это жидкость, а чай, кофе, и другие напитки - это еда.</span><span style=\"font-family: times new roman,times; font-size: 12pt;\"><br />Существует ряд важнейших причин по которым стоит пить воду и делать достаточно часто. </span><br /> <span style=\"font-family: times new roman,times; font-size: 12pt;\">Вот перечень самых главных причин которые объяснят вам сколько воды и почему необходимо вам для здоровой жизни. <br /> <br /></span></p>\n<h2><span style=\"font-family: times new roman,times;\">Питьевая вода и польза от ее употребления:</span></h2>\n<p><span style=\"font-family: times new roman,times;\"></span><span style=\"font-family: times new roman,times; font-size: 12pt;\"><br />Питьевая вода&nbsp; Польза №1. Вода и наш вес. </span><br /><br /></p>\n<h3><span style=\"font-family: times new roman,times;\">Употребление питьевой воды помогает избавиться от лишнего веса.</span></h3>\n<p><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Очищенная вода является одним из лучших и необходимых атрибутов в борьбе с лишним весом.</span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Вода лучше:</span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Во-первых, потому что чаще всего мы заменяем простую воду высококалорийными напитками вроде колы, сока, алкоголя.</span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Во-вторых, вода является сильнейшим подавляющим средством аппетита. Часто бывает так, что человек думает что он голоден, но на самом деле организму просто требуется обычная <strong>питьевая вода</strong>. </span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> В-третьих, очищенная вода обладает важными лечебными свойствами. Например, европейские медики рекомендуют употребление воды для снятия отеков.</span><br /> <br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Питьевая вода Польза №2. Здоровое сердце и вода. </span><br /><br /></p>\n<h4><span style=\"font-family: times new roman,times;\">При разнообразный болезнях употреблять питьевую воду просто необходимо!</span></h4>\n<p><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Питьевая вода, которая употребляется человеком в большом количестве, сильно снижает возможности сердечных приступов. Многолетние исследования ученых, из мировых водных ассоциаций подтвердили, что человек выпивающий шесть стаканов чистой воды в день (тоесть приблизительно два литра) практически на 40% меньше подвержен риску сердечного приступа, чем человек выпивающий два стакана воды в день.</span><br /> <span style=\"font-family: times new roman,times; font-size: 12pt;\"><br /><br />Питьевая вода Польза №3. Чистая вода залог крепкого здоровья в человеческом организме. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Даже самое минимальное обезвоживание организма (всего на 1-2% от общей массы тела) может заставить вас чувствовать себя усталым и бессильным. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Если вы хотите пить - это значит, что организму уже требует воды. Вы уже обезвожены! Такие симптомы чаще всего приводят к усталости и мышечной слабости. Но сложившуюся ситуацию можно быстро исправить, нужно просто пить воду.</span><br /> <br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Питьевая вода Польза №4. Вода- спасает от постоянных головных болей. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Вторым признаком обезвоживания организма является резкая головная боль. Очень часто, когда человека мучают головные боли &ndash; это последствия недостаточного употребления воды. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> <br />Питьевая вода Польза №5. Вода и здоровая кожа. </span></p>\n<h5><br /><span style=\"font-family: times new roman,times;\"></span></h5>\n<h5><span style=\"font-family: times new roman,times;\">В борьбе с акне и прыщиками чистой питьевой воде нет равных.</span></h5>\n<p><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Чистая вода очищает не только организм изнутри, но и снаружи. Ежедневное употребление воды заметно очищает кожу. Разумеется, эти перемены не сразу происходят, но если питье большого количества воды станет вашей ежедневной привычкой, то через время вы неизбежно заметите разницу. Например, все качественные косметические средства по уходу за лицом направлены на то, чтобы увлажнить кожу снаружи, а это значит что подпитка водой изнутри уж точно не помешает. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Питьевая вода Польза №</span>6. Вода избавляет от проблем связанных с пищеварением. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Пищеварительная система здорового организма постоянно требует, чтоб человеком ежедневно употреблялась в большом количестве <strong>питьевая вода</strong> для нормального переваривания пищи. Часто чистая вода способствует избавлению от проблем с повышенной кислотностью в желудке . Это происходит в следствии того, что лишняя концентрация кислот падает при употреблении воды. </span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> <br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Питьевая вода Польза №</span>7. Вода как очиститель организма. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Чистая вода необходима организму для вывода токсинов и других вредных веществ, которые имеют свойство постепенного ежедневного накопления в нем. Большая часть шлаков накапливающихся годами в нашем организме находится в межклеточной жидкости. Когда человеком ежедневно употребляется очищенная вода - клетки и между клеточная жидкость очищаются.</span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Питьевая вода Польза №</span>8. Вода в борьбе с раковыми заболеваниями. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Учеными доказано, что в группе риска по заболеванию раком пищеварительного тракта, находятся люди в рацион который практически не входит обычная вода н2o. А вот те кто пьют воду в достаточном количестве, на 45% менее подвержены таким серьезным заболеваниям. </span><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Так же если ежедневно пить воду уменьшается возможность рака мочевого пузыря на и молочной железы. </span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">Питьевая вода Польза №</span>9. Спорт и вода.</span><br /><br /></p>\n<h6><span style=\"font-family: times new roman,times;\">Самое главное, употреблять питьевую воду при физических нагрузках.</span></h6>\n<p><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Обезвоживание организма чаще всего становится серьезным ограничением в занятиях спортом. Из-за общего состояния усталости в котором находится обезвоженный организм не получающий воду, человек может просто не справиться с нагрузкой, что чревато травмами. Как только вы выпьете пару стаканов, чистая вода обеспечит вас энергией и сохраните ваше здоровье.</span></p>','1','9','15','1','1','1','1385456009','3','1385760616','0','0','0','1385456009','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('27','document','text/html','Дистилляция и обратный осмос? В чём различие?','Дистилляция и обратный осмос? В чём различие?','','6-distilyatsiya-i-obratnyj-osmos-v-chjom-razlichie','','1','0','0','5','0','На сегодняшний день получить высококачественную питьевую воду, просто невозможно без специальных методов и       специального оборудования, которые применяются как очистка воды. Предлагаем вам ознакомиться с двумя методами благодаря   которым чаще всего делается чище вода – система дистилляции и система обратного осмоса.\n\n \n\n Многие люди думают что дистилляция и система очистки воды обратный осмос это одно и тоже. Но это утверждение абсолютно абсурдно. Очистка воды двумя этими технологиями отличается. ','<p><img style=\"float: right;\" src=\"assets/images/ochistka-vodi-obratnij-osmos.png\" height=\"253\" width=\"305\" /></p>\n<p style=\"font-size: 14px;\">На сегодняшний день получить высококачественную питьевую воду, просто невозможно без специальных методов и специального оборудования, которые применяются как очистка воды. Предлагаем вам ознакомиться с двумя методами благодаря&nbsp;&nbsp; которым чаще всего делается чище вода &ndash; система дистилляции и система обратного осмоса.</p>\n<p><br /><br /></p>\n<h2>Очистка воды обратный осмос и ее различие от других видов очистки</h2>\n<p style=\"font-size: 14px;\">Многие люди думают что дистилляция и очистка воды обратный осмос это одно и тоже. Но это утверждение абсолютно абсурдно. Очистка воды двумя этими технологиями отличается.</p>\n<p style=\"font-size: 14px;\"><br />Диетологи рекомендуют постоянно пить много воды, потому что тело не делает запасов жидкости. Если человек не употребляет достаточное количество воды, у него появляется сильное ощущение жажды, которое означает начало обезвоживания. Последующими симптомами есть боли в голове, большая усталость, сухость языка и ротовой полости, головокружение. В&nbsp; последствии эти симптомы серьезно влияют на здоровье и состояние почек.</p>\n<p></p>\n<p style=\"font-size: 14px;\">Дистилляция воды это процесс нагревания воды с дальнейшим охлаждением и конденсацией паров. Поскольку температура кипения воды 100 градусов Цельсия, содержащиеся в воде примеси погибают при длительном кипячении в дистилляторе. Именно из этой разницы извлекается вода.<br /><br /> Потом пар, охлаждается и конденсируется, опять превращаясь в воду. Этот конденсат и есть высокоочищенная вода которую называют дистиллятом. Иногда дистиллированную воду запускают в дистиллятор повторно и по итогу получается так называемый би-дистиллят.<br /><br /> После таких технологий становится чище вода, но не полезней.<br /><br /> При дистилляции так же удаляются практически все минеральные элементы. Необходимы и полезны ли минеральные вещества, содержащиеся в воде &ndash; предмет периодически возобновляющихся споров.<br /><br /> Но так же существует и достаточно весомый фактор почему пить воду дистиллированную для постоянного употребления не рекомендуют. Такая чистая вода практически не содержит в себе даже минимального количества солей. Из-за того что для кипения соли требуются намного большие температуры чем те что применяются для испарения воды, вся соль не испаряется и остается на дне фильтра. <br /> <br /> В принципе дистиллированная вода не так безопасна как кажется. Достаточно много примесей переходит в дистиллированную воду при хранении, обычно это щелочные компоненты стекла. Поэтому дистиллированную воду стараются использовать свежей, а хранить ее нужно исключительно в стеклянных бутылях, которые наполняют доверху и закрывают специальными пробками с хлоркальциевыми трубками, содержащими натронную известь и вату. <br /><br /> Метод обратного осмоса раньше широко использовался в истории мореплавания, где его применяли для опреснения морской воды. Это один из самых продуктивных методов, благодаря которому в мире ежедневно производится сотнями тысяч тонн питьевая вода. <br /><br /> Например, благодаря осмосу, каждая клетка организма обогащается питательными веществами и из него выводятся шлаки, тоесть осуществляется нормальный процесс жизнедеятельности.<br /><br /> <strong>Очистка воды обратным осмосом</strong> заключается в том, что вода проходит мембрану которая&nbsp; пропускает через себя лишь молекулы воды, а все присутствующие в воде вредные органические соединения и минералы обратным потоком направляются на слив через специальный выход. Чистая вода лишена вредных примесей и содержит в себе только чистые и полезные элементы и соли.<br /><br /> Проходя фильтр обратного осмоса вода, а так же растворенные в ней вещества делятся на молекулярном уровне, и по одну сторону мембраны накапливается чистая вода, а все чем она была загрязнена, остается по другую сторону. Метод хорош еще и тем, что удаляются органические вещества, но в воде остаются кислород и другие газы, обеспечивающие вкус воды.</p>\n<p><br /><br /></p>\n<h3>Отличие очистки воды обратный осмос от дистиляции</h3>\n<p><br /><br /> - У очищенной с помощью этих двух технологий воды различный состав. Вода после обратного осмоса насыщена солями, чего не скажешь о воде после дистилляции.<br /><br /> - При технологии обратный осмос вода моментально обогащается кислородом. После очистки технологией дистилляции воде нужно настояться несколько часов на воздухе, чтобы насытиться кислородом до такой же степени.<br /><br /> - Питьевая вода, полученная при помощи технологии обратный осмос - это вод доведенная до определенного, заранее заданного состава. <br /> <br /> Дистиллированная вода &ndash; это вода любой степени очистки. Чем длительнее процесс дистилляции и чем по техническим характеристикам лучше дистилляторы, тем получается более чистая вода по сравнению с исходной. Но все более пустой, тоесть не насыщенной полезными микроэлементами. <br /> <br /> - При дистилляции удаляются практический все вещества из исходной жидкости, но невозможно добиться управления процессом дистилляции для получения желаемого состава воды как это делается про обратном осмосе. <br /> <br /> - При обработке обратным осмосом, используя мембраны с отверстиями различных диаметров. Это значит что можно избирательно &ndash; с учетом размера молекул нежелательных веществ - удалять эти вредные вещества. <br /><br /> Какую воду вам употреблять &ndash; каждый человек выбирает в меру своих знаний, жизненных принципов и отношения к своему здоровью и здоровью своих близких. Цель наших публикаций &ndash; расширить Ваши знания о воде и тем самым расширить возможности Вашего выбора.</p>','1','9','16','1','1','1','1385456092','3','1385763662','0','0','0','1385456092','1','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('39','document','text/html','Доставка воды в Киев и Киевскую область','Доставка воды в Киев и Киевскую область','','dostavka-vodyi-v-kiev-i-kievskuyu-oblast','','1','0','0','5','0','Такая популярная услуга как доставка бутилированной воды, одна из самых необходимых услуг для человека во всем мире. Это может быть доставка воды из многомиллионных компаний в чей-то дом и офис, а может быть и более глобальная - доставка воды в нуждающиеся в ней города засушливых стран, например в Намибии или Анголе. Какая бы цель доставки не была, а суть одна - чистая питьевая вода нужна каждому человеку в любой точке планеты.','<p><img style=\"float: right;\" src=\"assets/images/dostavka-vodi-Kiev.png\" height=\"239\" width=\"348\" />Такая популярная услуга как доставка бутилированной воды, одна из самых необходимых услуг для человека во всем мире. Это может быть доставка воды из многомиллионных компаний в чей-то дом и офис, а может быть и более глобальная - доставка воды в нуждающиеся в ней города засушливых стран, например в Намибии или Анголе. Какая бы цель доставки не была, а суть одна - чистая питьевая вода нужна каждому человеку в любой точке планеты.</p>\n<p><br /><br /></p>\n<h2>Для жителей мегаполиса - доставка воды в Киев</h2>\n<p>Не смотря на то что мы живем в стране со стабильных климатом и не страдаем от засухи или наводнения, вода в наших домах все же не является чистым продуктом.</p>\n<p>Все источники города Киева и областей, тем или иным способом постоянно загрязняются. Изначально чистой воды, как например в Карпатах, в Киевской области нет. Для того чтобы питьевая вода была безопасной для употребления, местные власти регулярно проводят процессы очистки воды. А вот вода в бюветах и колодцах является порой даже более чистой чем с под крана. Причиной тому являются трубы. 90% грязи, запаха и мусора в вашей воде это давным давно устаревшие трубы.&nbsp; Из них в воду попадают тяжелые метали, свинец, кишечные палочки, ржавчина и многие другие бактерии с которыми более подробно можете <a href=\"[~25~]\">ознакомиться здесь</a>.<img style=\"float: right;\" src=\"assets/images/zagryaznenie-v-vode.png\" height=\"205\" width=\"272\" /> Давно стоит забыть о том что вода с под крана разрешена для употребления детям - дня них это отрава. Беззащитному детскому желудку очень сложно вести борьбу с химией в воде.</p>\n<p>На фото изображено водопроводную трубу изнутри. Приятного просмотра!</p>\n<p></p>\n<p><br /><br /><br /></p>\n<h3>Доставка воды в Киев и областные города нужна для здоровой жизни</h3>\n<p>Ваше здоровье в воде. Так как человеку ежедневно необходимо выпивать не мение 1,5-2х литров воды в день, вода для питья должна быть чистой, а еще лучше если она будет полезной.<br />Простая вода из под крана такой быть не может, поэтому лучше выбирать для регулярного употребления чистую воду очищенную на специализированных заводах со специализированной техникой для очистки, минерализации и обеззараживания воды.</p>\n<p>В Киеве на сегодняшний день существует более 300 компаний которые занимаются доставкой и очисткой воды. Казалось бы, вот он- залог здоровья. Но нет, все не так просто. Компаний много, много методов очистки воды, и как в любой сфере жизни много шарлатанов. Для того чтобы суметь подобрать для себя самую качественную воду и не пострадать от сотрудничества с недобросовестными производителями читайте здесь - <a href=\"[~11~]\">компании по доставке воды </a>.</p>\n<p></p>\n<p></p>','1','9','9','1','1','3','1387824044','3','1387827098','0','0','0','1387824044','3','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('28','document','text/html','Почему вода успокаивает и лечит наш организм?','Почему вода успокаивает и лечит наш организм?','','4-voda-uspokaivaet-i-lechit','','0','0','0','5','0','Почему вода успокаивает и лечит наш организм?\n\n Когда человек чем-то сильно взволнован, стоит предложить ему пить воду. Питьевая вода обладает множеством факторов которые помогают человеку справляться со стрессом.\n\n ','<p><br /><img src=\"assets/images/pochemu-voda.png\" height=\"252\" width=\"448\" /></p>\n<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"><strong>&nbsp;</strong></span></p>\n<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"><strong>&nbsp;</strong></span></p>\n<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"><strong>&nbsp; </strong>Почему вода успокаивает и лечит наш организм?</span></p>\n<p><span style=\"font-family: times new roman,times; font-size: 12pt;\">&nbsp;Когда человек чем-то сильно взволнован, стоит предложить ему пить воду. <strong>Питьевая вода</strong> обладает множеством факторов которые помогают человеку справляться со стрессом. </span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: times new roman,times; font-size: 12pt;\">Во-первых, <strong>чистая вода</strong> попросту прохладнее, чем тело, и у разгоряченного треволнениями человека срабатывает рефлекс, несущий спокойствие.</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> При серьезном эмоциональном напряжении кровь и органы подвержены выбросу гормонов стресса. При большой концентрации эти гормоны становится ядовитыми и у человека появляется сухость во рту. Чтоб избавиться это этого ощущения следует пить воду, она поможет избавиться от пагубной концентрации гормонов стресса в крови. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> <strong>Чистая вода</strong> в человеческом организме действует как естественный растворитель химически вредных для здоровья веществ, которые постоянно образовываются в процессе жизнедеятельности. Поэтому необходимо пить воду в больших количествах. Специалисты рекомендуют выпивать не менее 2-х литров воды в день, при этом супы, соки, чай, кофе и другие напитки не в счет. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Безоговорочно <strong>питьевая вода</strong> помогает тем кто хочет избавить свое тело от лишнего веса. Выпитая человеком вода способна постепенно сжигать жировые &laquo;запасы&raquo; и нормализирует обменные процессы организма. <strong>Вода h2o</strong> так же значительно и на долго избавляет от чувства голода. Чем больше вы выпьете воды, тем больше ваш желудок будет заполнен жидкостью и не будет требовать снова чем-то подкрепиться. Немаловажную роль в этом процессе играет отсутствие в воде каких либо калорий, жира и холестерина, а также низкое содержание натрия.</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> При болях в спине употребление воды так же играет важную роль. Чтобы свести ноющую боль нужно увлажнять организм. Вода, заполняющая спинное основание диска, поддерживает не менее 75% веса, а состояние здорового позвоночника обусловлено гидравлическими свойствами воды. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Также существует неоценимая помощь употребляемой воды для больных астмой. Как известно, гистамин &ndash; это механизм который регулирует процессы жизнедеятельности, а так же это один из &laquo;контролеров&raquo; защитных функций организма. Оптимальное распределение этого вещества находится в прямой зависимости от того сколько раз и в каких количествах была употреблена <strong>питьевая вода. </strong>При обезвоживании организма, количество гистамина у людей страдающих астмой повышается, стимулируя тем самым защитные механизмы которые начинают перекрывать дыхательные пути. Таким образом, астматический синдром может быть ослаблен или даже предотвращен, если больной значительно увеличит потребление воды.</span></p>','1','9','17','1','1','1','1385456979','3','1385759585','0','0','0','0','0','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('29','document','text/html','Значение воды в жизни человека','Значение воды в жизни человека','Значение воды в жизни человека','3-znachenie-vody-v-zhizni-cheloveka','','0','0','0','5','0','Насколько необходима чистая вода человеку, свидетельствует то, что ее содержание в наших органах  составляет около 90%.\n\n  Чем старше становится человек, тем меньшее количество воды в его организме остается. И к сожалению это непреодолимый процесс, который можно только приостанавливать ежедневно выпивая большое количество воды.\n\nПодробнее... ','<p><span style=\"font-family: times new roman,times; font-size: 12pt;\"></span><span style=\"font-family: times new roman,times; font-size: 12pt;\"></span><span style=\"font-family: times new roman,times; font-size: 12pt;\">&nbsp;<img src=\"assets/images/voda.png\" height=\"369\" width=\"540\" /> </span></p>\n<h2><span style=\"font-family: times new roman,times; font-size: 12pt;\">Насколько необходима вода человеку, свидетельствует то, что ее содержание в наших органах&nbsp; составляет около 90%.&nbsp;</span></h2>\n<p><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\">&nbsp; Чем старше становится человек, тем меньшее количество воды в его организме остается. И к сожалению это непреодолимый процесс, который можно только приостанавливать ежедневно выпивая большое количество воды.</span><br /> <br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Вода присутствует во всех тканях нашего организма, хотя распределена неравномерно: </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Мозг содержит - 75 % </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Сердце - 75% </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Легкие - 85% </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Печень - 86% </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Почки - 83% </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Мышцы - 75% </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &middot; Кровь - 83% </span><br /><br />Ежедневно необходимо пить много воды, поскольку чистая вода не содержит в себе сахара, кофеина и калорий, благодаря чистой воде не разрушаются зубы, и не набирается вес. Все остальные напитки, содержащие воду, такие как молоко, фруктовый сок, чай, кофе и алкоголь, способствуют лишь постепенному ожирению, так как содержат в себе жиры и сахар, или имеют повышенный мочегонный эффект.<br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Очищенная вода полезна для употребления потому что:</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> - Вода нужна для поддержки всех обменных процессов организма, она принимает участие в усвоении питательных веществ клетками </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> - Вода является теплоносителем и терморегулятором</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> - Вода которую вы выпиваете, поглощает излишки тепла тела и удаляет это тепло испаряясь через поры кожи и через дыхательные пути</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> - Выпитая вами вода увлажняет слизистые оболочки всего организма, глазное яблоко и обеспечивает полную подвижность суставов</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &nbsp;</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Количество воды, требуемое для поддержания водного баланса, зависит от возраста, физической активности, окружающей температуры и влажности. Суточная потребность взрослого человека составляет около 2.5 л. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> При таком большом влиянии воды на человеческий организм, употребляемая вода должна быть соответствующего качества, если же вода содержит какие-либо вредные вещества, то они будут неизбежно распространены по всему организму. </span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> &nbsp;</span><br /><br /><span style=\"font-family: times new roman,times; font-size: 12pt;\"> Контролируйте то что вы пьете. Ваша вода &ndash; Ваше здоровье !</span></p>','1','9','18','1','1','1','1385457035','3','1385759419','0','0','0','0','0','','0','0','0','0','0','0','0','1');
INSERT INTO `modx_site_content` VALUES ('30','document','text/html','Какие виды воды существуют на планете и какие из них можно пить','Виды воды и их качество','','2-kakie-vidy-pitevykh-vod-sushchestvuyut-na-planete-i-kakie-iz-nikh-mozhno-pit','','0','0','0','5','0','Сегодня в продаже имеется огромное количество разнообразных сортов воды, выпускаемой в бутылках. Статистика показывает, что потребление бутилированной воды растет и обгоняет потребление всех видов других напитков. Оно превосходит 11 биллионов литров. Людям не все равно, какую воду они пьют. ','<p style=\"font-size: 14px;\">Сегодня в продаже существуют разнообразные <strong>виды воды</strong> выпускаемой в бутылках. Статистика показывает, что потребление бутилированной воды растет и обгоняет потребление всех видов других напитков. Оно превосходит 11 биллионов литров. Наконец то людям не все равно, какую воду они пьют.</p>\n<p style=\"font-size: 14px;\">С каждым днем возрастают проблемы со здоровьем, вызванные городскими и не городскими источниками воды. Поэтому государственные власти повышают стандарты качества и безопасности очистки воды. Однако качество очищенной воды должно обязательно удовлетворять минимальным стандартам, установленным Обществом защиты окружающей среды и Санитарно-эпидемических станций.</p>\n<p>&nbsp;<img style=\"float: right;\" src=\"assets/images/vidi-vodi.png\" height=\"242\" width=\"448\" /></p>\n<p><br /><br /></p>\n<h2>Виды воды которые существуют на планете</h2>\n<p style=\"font-size: 14px;\">&middot; Скважинная вода - вода из скважины, пробуренной в земле, которая выкачивает воду из водоносного слоя.</p>\n<p style=\"font-size: 14px;\">&middot; Грунтовая вода - вода с поверхности земли, которая находится под давлением равным или большим, чем атмосферное.</p>\n<p style=\"font-size: 14px;\">&middot;Ключевая (родниковая) вода - вода, доставаемая из подземных источников, через которые она самостоятельно вытекает на поверхность земли.</p>\n<p style=\"font-size: 14px;\">&middot; Артезианская вода - вода из водоносного слоя, в котором ее уровень стоит несколько выше, чем верхний водяной слой. Это может также определяться, как \"Артезианская скважина\"</p>\n<p style=\"font-size: 14px;\">&middot; Бутилированная вода - предназначенная как питьевая вода, которая продается в бутылках или других контейнерах, без добавок каких бы то ни было компонентов ( кроме безопасных и противомикробных). Вода в бутылках может быть использована как составляющая ароматизированных напитков или для разбавления концентратов соков.</p>\n<p style=\"font-size: 14px;\">&middot; Минеральная вода - вода добытая из более, чем одной скважины природного или искусственно защищенного источников грунтовых вод. Минеральную воду следует выделить за постоянный уровень и оптимальную пропорциональность минеральных веществ. Если содержание твердых частиц менее, чем 500 на миллион или более 1500 на миллион, то утверждение \"низкое минеральное содержание\" или \"высокое минеральное содержание\" следует искать на этикетке, покупаемой вами тары.Если количество этих частиц находится в пределе от 500 до 1500 на миллион, то никаких указаний на этикетке быть не должно.</p>\n<p style=\"font-size: 14px;\">&middot; Газированная вода - вода, которая после очистки содержит то же количество СО, которое было в воде в момент ее добывания. Для того, чтобы соответствовать постоянно изменяющимся потребностям рынка, производителям воды в бутылках может понадобиться установить дополнительное оборудование очистки воды для поддержания необходимого качества товара. Это может потребовать оснащения уже имеющихся систем фильтровальными установками такими как, система обратный осмос, деионизационными и дистилляционными системами. Например, озонирование используется для обеспечения воды микробиологическими элементами, которые, в свою очередь, помогают обогащать воду кислородом и избавляться от нежелательного вкуса и запаха.</p>\n<p style=\"font-size: 14px;\">&middot; Коралловая вода - при добавлении кораллов, вода становится очень чистой и структурированной, такая вода становится слабощелочной и минерализованной. Кораллы насыщают пресную питьевую воду активным кальцием, обогащают ионами кремния, калия, магния и другими микроэлементами.</p>\n<p style=\"font-size: 14px;\"></p>\n<p><br /><br /></p>\n<h3>Популярность вида воды - бутилированная</h3>\n<p style=\"font-size: 14px;\">Географически количество потребления бутилированной воды показывает, что 64% такой воды потребляется в Европе, 21% - в Соединенных Штатах Америки, 3,5% - на Дальнем Востоке и 11,5% приходится на другие страны мира. Потребление бутилированной воды в Европе более высокое из-за того, что они раньше других распознали всю пользу очищенной воды для человека. Первое время рынок был направлен на производство газированной (карбонизированной) воды. Однако сейчас покупатели предпочитают использовать не газированные напитки. Поэтому ее производство является быстро развивающимся направлением промышленности во всех странах мира. Совсем недавно такие <strong>виды воды</strong> как бутилированная вода, в основном, использовалась для смешивания напитков в ресторанах и барах.</p>\n<p style=\"font-size: 14px;\">Сегодня популярность потребления бутилированной воды даже в домашних условиях возросла более, чем на 80%. Но перед употреблением необходимо узнать нормы воды, независимо от того где эта вода была произведена. Не забывайте об этом.</p>','1','9','19','1','1','1','1385457176','3','1385759524','0','0','0','0','0','','0','0','0','0','0','0','0','1');

# --------------------------------------------------------

#
# Table structure for table `modx_site_content_metatags`
#

DROP TABLE IF EXISTS `modx_site_content_metatags`;
CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0',
  KEY `content_id` (`content_id`),
  KEY `metatag_id` (`metatag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

#
# Dumping data for table `modx_site_content_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_htmlsnippets`
#

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `modx_site_htmlsnippets`
#

INSERT INTO `modx_site_htmlsnippets` VALUES ('1','eFeedbackForm','eFeedbackForm Шаблон формы обратной связи','0','3','0','<p><span style=\"color:#900;\">[+validationmessage+]</span></p>\n\n<form  class=\"eform\" method=\"post\" action=\"[~[*id*]~]\">\n\n<input type=\"hidden\" name=\"formid\" value=\"feedbackForm\" />\n\n<p>\n    <input type=\"text\" name=\"name\" id=\"name\" class=\"grid_3\" value=\"\"  eform=\"Имя:string:1\"/>\n    <label for=\"name\">Ваше имя</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"email\" id=\"email\" class=\"grid_3\" value=\"\" eform=\"E-mail:email:1\" />\n    <label for=\"email\">Ваш E-mail</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"phone\" id=\"subject\" class=\"grid_3\" value=\"\" eform=\"Номер телефона:string:1\"/>\n    <label for=\"subject\">Номер телефона</label>\n</p>\n            \n<p>\n    <textarea name=\"comments\" id=\"message\" class=\"grid_6\" cols=\"50\" rows=\"10\" eform=\"Текст сообщения:string:1\"></textarea>\n</p>\n<p>Введите код с картинки: <br />\n    <input type=\"text\" class=\"ver\" name=\"vericode\" /><img class=\"feed\" src=\"[+verimageurl+]\" alt=\"Введите код\" />\n</p>            \n<p>\n    <input type=\"submit\" name=\"submit\" class=\"subeform grid_2\" value=\"Отправить сообщение\"/>\n </p>\n\n</form>\n\n\n \n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('2','eFeedbackReport','eFeedbackReport  шаблон отправки на почту','0','3','0','<p>Прислано человеком, с именем: [+name+] . Подробности ниже:</p>\n<table>\n<tr valign=\"top\"><td>Имя:</td><td>[+name+]</td></tr>\n<tr valign=\"top\"><td>E-mail:</td><td>[+email+]</td></tr>\n<tr valign=\"top\"><td>Номер телефона:</td><td>[+phone+]</td></tr>\n<tr valign=\"top\"><td>Текст сообщения:</td><td>[+comments+]</td></tr>\n</table>\n<p>Можно использовать ссылку для ответа: <a href=\"mailto:[+email+]?subject=RE:[+subject+]\">[+email+]</a></p>\n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('3','feedback','форма обратной связи','0','3','0','[!eForm? &formid=`feedbackForm` &subject=`Сообщение с сайта` &tpl=`eFeedbackForm` &report=`eFeedbackReport` &gotoid=`[*id*]` &vericode=`1` !] \n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('4','footer','низ сайта','0','4','0','<div id=\"footer\">\n			<div id=\"footer_center\">\n				<span style=\"color: #222222; font-family: \'Helvetica Neue\', HelveticaNeue, Helvetica, sans-serif; font-size: 13px; line-height: 18.1875px;\">Автор публикации:&nbsp;</span>\n<a href=\"https://plus.google.com/u/0/109756665889043002454?rel..\" target=\"blank\"><span style=\"color:#d3d3d3;\">Екатерина Холод</a>\n<div id=\"footer_position\">2014 Crystalwater - доставка питьевой воды.\n		<span>Все права данного сайта защищены!</span>	\n					</div>\n							</div>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('5','header','шапка','0','4','0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" /> \n        <head>\n<title>[*titl*]</title>\n<meta name=\"keywords\" content=\"[*keyw*]\" />\n<meta name=\"description\" content=\"[*desc*]\" />\n<base href=\"[(site_url)]\"/>					\n<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n\n		</head>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('6','mm_rules','Default ManagerManager rules.','0','5','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n\nmm_widget_showimagetvs(); // Показываем превью ТВ\n\nmm_renameField(\'log\', \'Дочерние ресурсы отображаются в дереве\');\nmm_changeFieldHelp(\'log\', \'Это поле используется для папок с большим числом вложенных страниц\');\n\nmm_createTab(\'Для SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Изображения\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n\n//mm_widget_evogallery(1, Галерея, \'1,2,3\', 3);   // подключаем галерею \n//mm_galleryLink($fields, $roles, $templates, $moduleid);\n//mm_widget_evogallery($moduleid, $title, $roles, $templates);\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('7','contact','','0','4','0','<div id=\"Contacts\">\n <div class=\"cont_i\">Контакты</div>\n  <div id=\"cont_f\">\n<p><img src=\"images/tell.gif\" alt=\"(044) 451-59-33\" width=\"17\" height=\"20\"> (044) 451-59-33 Киев  </p> \n<p><img src=\"images/tell.gif\" alt=\"(04594) 6-59-27\" width=\"17\" height=\"20\"> (04594) 6-59-27 Бровары  </p> \n<p><img src=\"images/tell.gif\" alt=\"(063) 788-68-80\" width=\"17\" height=\"20\"></span> (063) 788-68-80 Life  </p> \n  </div></div>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('11','Duplicate of contact','','0','4','0','<div id=\"Contacts\">\n  <div class=\"cont_i\">Контакты</div>\n  <span style=\"font-size: 12pt;\">\n  <span style=\"color: #222222; font-family: arial,helvetica,sans-serif;\">\n  <span style=\"color: #222222;\">\n	  <img src=\"images/tell.gif\" alt=\"(044) 451-59-33\" width=\"17\" height=\"20\"> (044) 451-59-33 Киев</span>\n  <br> \n  <span style=\"color: #222222;\">\n  <span style=\"color: #222222;\"> </span></span></span>\n  <span style=\"color: #222222; font-family: arial,helvetica,sans-serif;\">\n  <span style=\"color: #222222;\">\n  <span style=\"color: #222222;\"><img src=\"images/tell.gif\" alt=\"(04594) 6-59-27\" width=\"17\" height=\"20\"> (04594) 6-59-27 Бровары </span></span>\n  <br> \n  <span style=\"color: #222222;\"></span> \n  <span style=\"color: #222222;\">\n  <img src=\"images/tell.gif\" alt=\"(063) 788-68-80\" width=\"17\" height=\"20\"></span> (063) 788-68-80 Life<br></span>\n  <span style=\"color: #222222; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Звоните!</span>\n  <span style=\"color: #222222; font-family: arial,helvetica,sans-serif;\">&nbsp;\n  <span style=\"color: #222222;\"></span></span></span>','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('8','right_block','','0','0','0','<div id=\"sidebar\">\n													<div id=\"sidebar_position1\">\n														<div class=\"zak\">[[DocInfo? &docid=`33` &field=`pagetitle`]]</div>\n																	[[DocInfo? &docid=`33` &field=`introtext`]]\n					</div>\n											</div>\n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('9','menu','','0','0','0','<div id=\"menu_site\">						\n    <ul class=\"joomla-nav\">\n<li id=\"current\" class=\"selected item101\">\n	<a href=\"[~1~]\" title=\"Информация для покупателей о Доставке воды \">Доставка воды </a></li>\n<li class=\"item107\">\n	<a href=\"[~5~]\" title=\"Статьи о пользе употребления очищенной питьевой воды.Факты, исследования, научные материалы\">Вода h2o (статьи)</a></li>\n<li class=\"item108\">\n	<a href=\"[~6~]\" title=\"Цены на Доставку  очищенной воды \">Услуги и цены</a></li>\n<li class=\"item109\">\n	<a href=\"[~7~]\" title=\"Методы очистка питьевой воды \">Технологии очистки</a></li>\n<li class=\"item110\">\n	<a href=\"[~8~]\" title=\"Информация о том где производиться очищеная питьевая вода, контакты\">О нас</a></li>\n	</ul>\n</div>\n\n','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('10','ditto_blog','','0','0','0','<div class=\"post\" >\n          <h2> <a href=\"[(base_url)][~[+id+]~]\">[+pagetitle+]</a> </h2>\n          <div class=\"entry\">\n           <p><img src=\"[+blog_img+]\" alt=\"[+alt+]\" width=\"183\" class=\"leftimg\"/></p>	\n						  <p align=\"justify\">[+introtext+]</p>	\n  <br><br>\n			  \n          </div><!--/entry -->\n			  \n	<p class=\"readmore\">\n<a href=\"[~[+id+]~]\"> Подробнее...</a></p>	\n        </div>\n<br><br>	','0');
INSERT INTO `modx_site_htmlsnippets` VALUES ('13','Duplicate of ditto_blog','','0','0','0','<div class=\"leading-3\">\n<h2> <a href=\"[(base_url)][~[+id+]~]\">[+pagetitle+]</a> </h2>\n<p><img src=\"[+blog_img+]\" alt=\"[+alt+]\" width=\"183\" class=\"leftimg\"/></p>\n\n<p>[+introtext+]</p>\n<br><br><br><br><br>\n<p class=\"readmore\">\n<a href=\"[~[+id+]~]\"> Подробнее...</a>\n</p>\n\n<br><br><br><br><br><br>\n</div >\n','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_keywords`
#

DROP TABLE IF EXISTS `modx_site_keywords`;
CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

#
# Dumping data for table `modx_site_keywords`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_metatags`
#

DROP TABLE IF EXISTS `modx_site_metatags`;
CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

#
# Dumping data for table `modx_site_metatags`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_access`
#

DROP TABLE IF EXISTS `modx_site_module_access`;
CREATE TABLE `modx_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `modx_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_module_depobj`
#

DROP TABLE IF EXISTS `modx_site_module_depobj`;
CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `modx_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_modules`
#

DROP TABLE IF EXISTS `modx_site_modules`;
CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `modx_site_modules`
#

INSERT INTO `modx_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','6','0','0','','0','','0','0','docman435243542tf542t5t','1','','include_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');
INSERT INTO `modx_site_modules` VALUES ('2','Extras','<strong>0.1.2</strong> first repository for MODX EVO','0','0','6','0','0','','0','','0','0','store435243542tf542t5t','1','','//AUTHORS: Bumkaka & Dmi3yy \n_include_once(\'../assets/modules/store/core.php\');');

# --------------------------------------------------------

#
# Table structure for table `modx_site_plugin_events`
#

DROP TABLE IF EXISTS `modx_site_plugin_events`;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `modx_site_plugin_events`
#

INSERT INTO `modx_site_plugin_events` VALUES ('1','23','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','29','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','41','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','47','0');
INSERT INTO `modx_site_plugin_events` VALUES ('1','73','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','34','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','35','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','36','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','40','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','41','0');
INSERT INTO `modx_site_plugin_events` VALUES ('2','42','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','80','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','81','0');
INSERT INTO `modx_site_plugin_events` VALUES ('3','93','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','28','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','29','0');
INSERT INTO `modx_site_plugin_events` VALUES ('4','53','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','3','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','13','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','28','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','31','0');
INSERT INTO `modx_site_plugin_events` VALUES ('5','92','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','85','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','87','0');
INSERT INTO `modx_site_plugin_events` VALUES ('6','88','0');
INSERT INTO `modx_site_plugin_events` VALUES ('7','100','0');
INSERT INTO `modx_site_plugin_events` VALUES ('9','70','0');
INSERT INTO `modx_site_plugin_events` VALUES ('9','19','0');
INSERT INTO `modx_site_plugin_events` VALUES ('9','3','0');
INSERT INTO `modx_site_plugin_events` VALUES ('9','91','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_plugins`
#

DROP TABLE IF EXISTS `modx_site_plugins`;
CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `modx_site_plugins`
#

INSERT INTO `modx_site_plugins` VALUES ('1','CodeMirror','<strong>1.2b</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirrir 3.13','0','6','0','$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\n\n','0','&theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light; &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;false &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;true','0','');
INSERT INTO `modx_site_plugins` VALUES ('2','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','6','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','');
INSERT INTO `modx_site_plugins` VALUES ('3','Forgot Manager Login','<strong>1.1.6</strong> Resets your manager login when you forget your password via email confirmation','0','6','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';\n','0','','0','');
INSERT INTO `modx_site_plugins` VALUES ('4','ManagerManager','<strong>0.3.11</strong> Customize the MODx Manager to offer bespoke admin functions for end users.','0','6','0','$js_default_url_local = $modx->config[\'site_url\']. \'/assets/js/jquery.min.js\';\n$js_default_url_remote = \'http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js\';\n$asset_path = $modx->config[\'base_path\'] . \'assets/plugins/managermanager/mm.inc.php\';\ninclude($asset_path);\n','0','&config_chunk=Configuration Chunk;text;mm_rules; &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &which_jquery=jQuery source;list;local (assets/js),remote (google code),manual url (specify below);local (assets/js) &js_src_type=jQuery URL override;text;','0','');
INSERT INTO `modx_site_plugins` VALUES ('5','Quick Manager+','<strong>1.5.6</strong> Enables QuickManager+ front end content editing support','0','6','0','// In manager\nif (isset($_SESSION[\'mgrValidated\'])) {\n\n    $show = TRUE;\n\n    if ($disabled  != \'\') {\n        $arr = explode(\",\", $disabled );\n        if (in_array($modx->documentIdentifier, $arr)) {\n            $show = FALSE;\n        }\n    }\n\n    if ($show) {\n        // Replace [*#tv*] with QM+ edit TV button placeholders\n        if ($tvbuttons == \'true\') {\n            $e = $modx->Event;\n            if ($e->name == \'OnParseDocument\') {\n                 $output = &$modx->documentOutput;\n                 $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n                 $modx->documentOutput = $output;\n             }\n         }\n        // In manager\n        if (isset($_SESSION[\'mgrValidated\'])) {\n            include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n            $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass);\n        }\n    }\n}\n','0','&jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;true &noconflictjq=jQuery noConflict mode in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &1=undefined;; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv','1','');
INSERT INTO `modx_site_plugins` VALUES ('6','TinyMCE Rich Text Editor','<strong>3.5.10</strong> Javascript WYSIWYG Editor','0','6','0','require MODX_BASE_PATH.\'assets/plugins/tinymce/plugin.tinymce.php\';','0','&customparams=Custom Parameters;textarea;valid_elements : \"*[*]\", &mce_formats=Block Formats;text;p,h1,h2,h3,h4,h5,h6,div,blockquote,code,pre &entity_encoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &mce_path_options=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &mce_resizing=Advanced Resizing;list;true,false;true &disabledButtons=Disabled Buttons;text; &link_list=Link List;list;enabled,disabled;enabled &webtheme=Web Theme;list;simple,editor,creative,custom;simple &webPlugins=Web Plugins;text;style,advimage,advlink,searchreplace,contextmenu,paste,fullscreen,xhtmlxtras,media &webButtons1=Web Buttons 1;text;undo,redo,selectall,|,pastetext,pasteword,|,search,replace,|,hr,charmap,|,image,link,unlink,anchor,media,|,cleanup,removeformat,|,fullscreen,code,help &webButtons2=Web Buttons 2;text;bold,italic,underline,strikethrough,sub,sup,|,|,blockquote,bullist,numlist,outdent,indent,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,|,styleprops &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;95% &height=Height;text;500','0','');
INSERT INTO `modx_site_plugins` VALUES ('7','TransAlias','<strong>1.0.2</strong> Human readible URL translation supporting multiple languages and overrides','0','6','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','&table_name=Trans table;list;common,russian,utf8,utf8lowercase;russian &char_restrict=Restrict alias to;list;lowercase alphanumeric,alphanumeric,legal characters;lowercase alphanumeric &remove_periods=Remove Periods;list;Yes,No;No &word_separator=Word Separator;list;dash,underscore,none;dash &override_tv=Override TV name;string;','0','');
INSERT INTO `modx_site_plugins` VALUES ('9','CacheAccelerator','<strong>0.4b</strong> Clear CacheAccelerator cache files and managing autocache','0','0','0','if(!function_exists(\'processInjection\')){\n    function processInjection($str, $autoCacheSnippets, $autoCacheExcludeSnippets, $dropCacheFields, $showSnippets){\n        $pos = 0;\n        while($pos = strpos($str, \'[!\', $pos)){\n            if($pos1 = strpos($str, \'!]\', $pos)){\n                $pos3 = $pos1;\n                $pos2 = strpos($str, \'?\', $pos);\n                if($pos2 && $pos1 > $pos2){\n                    $pos1 = $pos2;\n                    $offs = 1;\n                } else\n                    $offs = 0;\n                $pos+=2;\n                $snippetToCache = trim(substr($str, $pos, $pos1 - $pos));\n                $symb = strtolower($snippetToCache[0]);\n                if($symb >= \'a\' && $symb <= \'z\' && strtolower($snippetToCache) != \'cacheaccelerator\'){\n                    if(!is_null($autoCacheSnippets)){\n                        if(!in_array($snippetToCache, $autoCacheSnippets)){\n                            continue;\n                        }\n                    }\n                    if(!is_null($autoCacheExcludeSnippets)){\n                        if(in_array($snippetToCache, $autoCacheExcludeSnippets)){\n                            continue;\n                        }\n                    }\n                    $dcfStr = ($dropCacheFields != \'\') ? \' &dropCacheField=`\'.str_replace(\',\', \';\', $dropCacheFields).\'`\' : \'\';\n                    $logMessages = ($showSnippets != \'no\') ? \' &logMessages=`1`\' : \'\';\n                    if($showSnippets == \'short\')\n                        echo(\'CacheAccelerator Caching: \'.$snippetToCache.\'<br />\');\n                    if($showSnippets == \'full\')\n                        echo(\'CacheAccelerator Caching: \'.$snippetToCache.\', Call: [!CacheAccelerator? &snippetToCache=`\'.$snippetToCache.\'`\'.$logMessages.\' &cacheId=`\'.md5(substr($str, $pos, $pos3 - $pos)).\'`\'.$dcfStr.substr($str, $pos1, $pos3 - $pos1).\'!]<br /><br />\');\n\n                    $str = substr($str, 0, $pos).\'CacheAccelerator? &snippetToCache=`\'.$snippetToCache.\'`\'.$logMessages.\' &cacheId=`\'.md5(substr($str, $pos, $pos3 - $pos)).\'`\'.$dcfStr.substr($str, $pos1 + $offs);\n                }\n            }\n        }\n        return $str;\n    }\n}\n\n$only_manual = isset($only_manual) ? $only_manual : \'no\';\n$e = &$modx->Event;\n\nif($e->name == \'OnWebPagePrerender\'){\n    if($showSystemData == \'yes\'){\n//        if($modx->checkSession()){\n\n            $out = \"<div style=\'clear:both\'>&nbsp;</div>MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], Memory: [^m^], document retrieved from [^s^]. \";\n            $totalTime= ($modx->getMicroTime() - $modx->tstart);\n            $queryTime= $modx->queryTime;\n            $phpTime= $totalTime - $queryTime;\n\n            $queryTime= sprintf(\"%2.4f s\", $queryTime);\n            $totalTime= sprintf(\"%2.4f s\", $totalTime);\n            $phpTime= sprintf(\"%2.4f s\", $phpTime);\n            $phpMemory = (memory_get_peak_usage(true) / 1024 / 1024) . \" MB\";\n            $source= $modx->documentGenerated == 1 ? \"database\" : \"cache\";\n            $queries= isset ($modx->executedQueries) ? $modx->executedQueries : 0;\n            $out= str_replace(\"[^m^]\", $phpMemory, $out);\n            $out= str_replace(\"[^q^]\", $queries, $out);\n            $out= str_replace(\"[^qt^]\", $queryTime, $out);\n            $out= str_replace(\"[^p^]\", $phpTime, $out);\n            $out= str_replace(\"[^t^]\", $totalTime, $out);\n            $out= str_replace(\"[^s^]\", $source, $out);\n            $this->documentOutput .= $out;\n//        }\n    }\n    return;\n}\n\nif($autoCache == \'enabled\' && $e->name == \'OnLoadWebDocument\'){\n    if($autoCacheSnippets != \'\' && $autoCacheSnippets != \'all\'){\n        $autoCacheSnippets = trim(preg_replace(\'|\\\\s*(?:\'.preg_quote(\',\').\')\\\\s*|\', \',\', $autoCacheSnippets));\n        $autoCacheSnippets = explode(\",\", $autoCacheSnippets);\n    } else\n        $autoCacheSnippets = null;\n    if($autoCacheExcludeSnippets != \'\'){\n        $autoCacheExcludeSnippets = trim(preg_replace(\'|\\\\s*(?:\'.preg_quote(\',\').\')\\\\s*|\', \',\', $autoCacheExcludeSnippets));\n        $autoCacheExcludeSnippets = explode(\",\", $autoCacheExcludeSnippets);\n    } else\n        $autoCacheExcludeSnippets = null;\n    foreach($modx->chunkCache as $key => $chunk)\n        $modx->chunkCache[$key] = processInjection($chunk, $autoCacheSnippets, $autoCacheExcludeSnippets, $dropCacheFields, $showSnippets);\n    $modx->documentContent = processInjection($modx->documentContent, $autoCacheSnippets, $autoCacheExcludeSnippets, $dropCacheFields, $showSnippets);\n    $modx->documentObject[\'content\'] = processInjection($modx->documentObject[\'content\'], $autoCacheSnippets, $autoCacheExcludeSnippets, $dropCacheFields, $showSnippets);\n    return;\n}\n\nif (($e->name == \'OnCacheUpdate\' && $only_manual==\'no\') || ($e->name == \'OnSiteRefresh\' && $only_manual==\'yes\')) {\n    $path_to_cacheengine = $modx->config[\'base_path\'].\"assets/plugins/cacheaccelerator/\";\n    $path_to_cache = $modx->config[\'base_path\'].\"assets/plugins/cacheaccelerator/cache/\";\n    require_once $path_to_cacheengine.\"fileCache.php\";\n    $cache = fileCache::GetInstance(84600*7,$path_to_cache);\n    if($dropCacheGroups != \'\' && $dropCacheGroups != \'all\'){\n        $dropCacheGroups = trim(preg_replace(\'|\\\\s*(?:\'.preg_quote(\',\').\')\\\\s*|\', \',\', $dropCacheGroups));\n        $dropCacheGroups = explode(\",\", $dropCacheGroups);\n        $cache->deleteCache(0, $dropCacheGroups);\n    } else\n        $cache->deleteCache(0);\n    return;\n}\n\n','0','&only_manual=Only manual clear;list;yes,no;no &autoCache=Autocache;list;enabled,disabled;disabled &autoCacheSnippets=Snippets to Autocache (\'ditto,jot\');string;all &autoCacheExcludeSnippets=Snippets to exclude (\'snippet1, snippet2\');string;include &dropCacheGroups=Groups to clear (\'default, news\');string;all &dropCacheFields=Drop cache fields;string;JotForm||post,true,2||,publish,2||,unpublish,2||,delete,2||,edit,2 &showSnippets=Show snippets log;list;full,short,no;no &showSystemData=Show system data;list;yes,no;no','0',' ');

# --------------------------------------------------------

#
# Table structure for table `modx_site_snippets`
#

DROP TABLE IF EXISTS `modx_site_snippets`;
CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `modx_site_snippets`
#

INSERT INTO `modx_site_snippets` VALUES ('1','alterTitle','<strong>1</strong> Pagetitle если Longtitle пуст','0','7','0','//[[alterTitle? &id = `[+id+]`]] к примеру для вывода в Ditto\n$id = isset($id) ? $id : $modx->documentIdentifier;  \n$arr = $modx->getPageInfo($id,1,\'pagetitle,longtitle\');\n$title = (strlen($arr[\"longtitle\"])>0) ? $arr[\"longtitle\"] : $arr[\"pagetitle\"]; \nreturn $title;','0','','');
INSERT INTO `modx_site_snippets` VALUES ('2','Breadcrumbs','<strong>1.0.3</strong> Configurable breadcrumb page-trail navigation','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('3','Ditto','<strong>2.1.1</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more','0','9','0','return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('4','DocInfo','<strong>1</strong> Берем любое поле из любого документа (меньше запросов по сравнению с GetField)','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('5','eForm','<strong>1.4.4.9</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','3','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('6','FirstChildRedirect','<strong>1.0</strong> Automatically redirects to the first child of a Container Resource','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/firstchildredirect/snippet.firstchildredirect.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('7','if','<strong>1.2</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('8','phpthumb','<strong>1.1</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','9','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','');
INSERT INTO `modx_site_snippets` VALUES ('9','UltimateParent','<strong>2.0</strong> Travels up the document tree from a specified document and returns its \"ultimate\" non-root parent','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/ultimateparent/snippet.ultimateparent.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('10','Wayfinder','<strong>2.0.1</strong> Completely template-driven and highly flexible menu builder','0','8','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';','0','','');
INSERT INTO `modx_site_snippets` VALUES ('11','sitemap','XML карта сайта','0','7','0','return require MODX_BASE_PATH.\'assets/snippets/sitemap/snippet.sitemap.php\';','0','',' ');
INSERT INTO `modx_site_snippets` VALUES ('13','CacheAccelerator','<strong>0.4b</strong> Clear CacheAccelerator cache files and managing autocache','0','0','0','return require MODX_BASE_PATH.\'assets/plugins/cacheaccelerator/snippet.ca.php\';','0','','');

# --------------------------------------------------------

#
# Table structure for table `modx_site_templates`
#

DROP TABLE IF EXISTS `modx_site_templates`;
CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `modx_site_templates`
#

INSERT INTO `modx_site_templates` VALUES ('3','Home','','0','0','','0','{{header}}\n<body>\n<div id=\"main\">\n	<div id=\"main_center\">\n		<div id=\"header\">\n		<div class=\"linkblock\" onclick=\"location.href=\'/\';\">\n				<div class=\"logo\">	\n				</div>\n			</div>\n			{{contact}}\n		</div>\n		<div id=\"clear_line\"></div>\n			{{menu}}\n				<div id=\"clear_line\"></div>\n	<div id=\"news_and_articles\">\n			\n			</div>\n	<div id=\"clear_line\"></div>\n			<div id=\"bottle_price\">\n						<div id=\"bottle1\">\n												<div class=\"cont_t\">Blue Rain помпа для воды</div>\n				<img alt=\"помпа для воды\" src=\"[*img*]\" width=\"137\" height=\"275\">\n<ul>\n<li class=\"price\">[*index_title*]</li>\n<li>[*index_mtitle*]</li>\n</ul>\n<a href=\"[~6~]\" class=\"readmorebottle\">подробнее</a>	\n							</div>\n				\n										<div id=\"bottle2\">\n													<div class=\"cont_t\"> [*index_title2*]</div>\n											<img alt=\"бутыль с водой\" src=\"[*img2*]\" width=\"165\" height=\"276\"><br>\n<ul>\n<li class=\"price\">[*price*]</li>\n<li>[*index_mtitle2*]</li>\n<li>[*2index_mtitle2*]</li>\n<li>[*3index_mtitle2*]</li>\n</ul>\n<a href=\"[~6~]\" class=\"readmorebottle\">подробнее</a>	\n							</div>\n													<div id=\"bottle3\">\n													<div class=\"cont_t\">Кулер</div>\n														<img alt=\"kyler\" src=\"[*img3*]\" width=\"152\" height=\"281\"><br>\n<ul>\n<li class=\"price\">[*index_title3*]</li>\n<li>[*3index_mtitle3*]</li>\n</ul>\n<a href=\"[~6~]\" class=\"readmorebottle\">подробнее</a>	\n							</div>\n					</div>\n		<div id=\"clear_line\"></div>\n		<div id=\"conteiner_content\">\n			\n			<div id=\"content\">\n												<div id=\"clear_line\"></div>		\n				<div class=\"main_content\">\n					\n<div id=\"system-message-container\">\n</div>\n					<div class=\"item-page\">\n\n	<h1> Доставка воды Бровары </h1>\n \n\n\n\n\n\n\n<div class=\"content-links\">\n	<ul>\n			</ul>\n	</div>\n\n<p>[*content*]</p> \n	\n</div>\n\n				</div>\n				<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								\n			</div>\n			{{right_block}}\n			<div id=\"clear_line\"></div>\n		</div>\n	</div>\n<div id=\"clear_line\"></div>	\n		{{footer}}\n		</div>\n</div>	\n<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-37068666-1\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter18859432 = new Ya.Metrika({id:18859432,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/18859432\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->\n\n\n</body></html>','0');
INSERT INTO `modx_site_templates` VALUES ('13','Duplicate of Home','','0','0','','0','{{header}}\n<body>\n<div id=\"main\">\n	<div id=\"main_center\">\n		<div id=\"header\">\n			<div class=\"logo\">\n				<a id=\"logo\" href=\"[(site_url)]\"></a>\n			</div>\n							{{contact}}\n					</div>\n	\n	<div id=\"clear_line\"></div>\n								{{menu}}\n			\n	<div id=\"clear_line\"></div>\n	<div id=\"news_and_articles\">\n			\n			</div>\n	<div id=\"clear_line\"></div>\n			<div id=\"bottle_price\">\n										<div id=\"bottle1\">\n													<h3>Blue Rain помпа для воды</h3>\n				<img alt=\"помпа для воды\" src=\"[*img*]\" width=\"137\" height=\"275\">\n<ul>\n<li class=\"price\">[*index_title*]</li>\n<li>[*index_mtitle*]</li>\n</ul>\n<a href=\"[~6~]\" class=\"readmorebottle\">подробнее</a>	\n							</div>\n				\n										<div id=\"bottle2\">\n													<h3> [*index_title2*]</h3>\n											<img alt=\"бутыль с водой\" src=\"[*img2*]\" width=\"165\" height=\"276\"><br>\n<ul>\n<li class=\"price\">[*price*]</li>\n<li>[*index_mtitle2*]</li>\n<li>[*2index_mtitle2*]</li>\n<li>[*3index_mtitle2*]</li>\n</ul>\n<a href=\"[~6~]\" class=\"readmorebottle\">подробнее</a>	\n							</div>\n													<div id=\"bottle3\">\n													<h3>Кулер</h3>\n														<img alt=\"kyler\" src=\"[*img3*]\" width=\"152\" height=\"281\"><br>\n<ul>\n<li class=\"price\">[*index_title3*]</li>\n<li>[*3index_mtitle3*]</li>\n</ul>\n<a href=\"[~6~]\" class=\"readmorebottle\">подробнее</a>	\n							</div>\n					</div>\n		<div id=\"clear_line\"></div>\n		<div id=\"conteiner_content\">\n			\n			<div id=\"content\">\n												<div id=\"clear_line\"></div>		\n				<div class=\"main_content\">\n					\n<div id=\"system-message-container\">\n</div>\n					<div class=\"item-page\">\n\n	<h1> Доставка воды Бровары \"Кришталево-чиста питна вода\"</h1> ™		\n\n\n\n\n\n\n\n<div class=\"content-links\">\n	<ul>\n			</ul>\n	</div>\n\n<p>[*content*]</p> \n	\n</div>\n\n				</div>\n				<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								\n			</div>\n			{{right_block}}\n			<div id=\"clear_line\"></div>\n		</div>\n	</div>\n<div id=\"clear_line\"></div>	\n		{{footer}}\n		</div>\n</div>	\n<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-37068666-1\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter18859432 = new Ya.Metrika({id:18859432,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/18859432\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->\n\n\n</body></html>','0');
INSERT INTO `modx_site_templates` VALUES ('4','MODxHost','<strong>1.0</strong> Legacy MODx Host template including dropdown menu','0','1','','0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n\n<head>\n  <title>[(site_name)] | [*pagetitle*]</title>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" />\n  <base href=\"[(site_url)]\"></base>\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/layout.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/modxmenu.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/form.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/modx.css\" type=\"text/css\" media=\"screen\" />\n  <link rel=\"stylesheet\" href=\"assets/templates/modxhost/print.css\" type=\"text/css\" media=\"print\" />\n  <link rel=\"alternate\" type=\"application/rss+xml\" title=\"RSS 2.0\" href=\"[(site_url)][~11~]\" />\n  <script src=\"[(site_manager_url)]media/script/mootools/mootools.js\" type=\"text/javascript\"></script>\n  <script src=\"assets/templates/modxhost/drop_down_menu.js\" type=\"text/javascript\"></script>\n</head>\n<body>\n<div id=\"wrapper\">\n  <div id=\"minHeight\"></div>\n  <div id=\"outer\">\n    <div id=\"inner\">\n      <div id=\"right\">\n        <div id=\"right-inner\">\n          <h1 style=\"text-indent: -5000px;padding: 0px; margin:0px; font-size: 1px;\">[(site_name)]</h1>\n          <div id=\"sidebar\">\n            <h2>News:</h2>\n            [[Ditto? &parents=`2` &display=`2` &total=`20` &removeChunk=`Comments` &tpl=`nl_sidebar`]]\n            <div id=\"recentdocsctnr\">\n              <h2>Most Recent:</h2>\n				<a name=\"recentdocs\"></a><ul class=\"LIn_shortMode\">[[Ditto?parents=0&display=5&tpl=\'@CODE:<li><a href=\"[+url+]\" title=\"[+pagetitle+]\">[+pagetitle+]</a> <span class=\"LIn_date\">[+date+]</span> <span class=\"LIn_desc\"></span></li>\']]</ul> </div>\n            <h2>Login:</h2>\n            <div id=\"sidebarlogin\">[!WebLogin? &tpl=`WebLoginSideBar` &loginhomeid=`[(site_start)]`!]</div>\n            <h2>Meta:</h2>\n            <p><a href=\"http://validator.w3.org/check/referer\" title=\"This page validates as XHTML 1.0 Transitional\">Valid <abbr title=\"eXtensible HyperText Markup Language\">XHTML</abbr></a></p>\n            <p><a href=\"http://jigsaw.w3.org/css-validator/check/referer\" title=\"This page uses valid Cascading Stylesheets\" rel=\"external\">Valid <abbr title=\"W3C Cascading Stylesheets\">css</abbr></a></p>\n            <p><a href=\"http://modx.com\" title=\"Ajax CMS and PHP Application Framework\">MODX</a></p>\n          </div>\n          <!-- close #sidebar -->\n        </div>\n        <!-- end right inner-->\n      </div>\n      <!-- end right -->\n      <div id=\"left\">\n        <div id=\"left-inner\">\n          [[Breadcrumbs?]]\n          <div id=\"content\">\n            <div class=\"post\">\n              <h2>[*longtitle*]</h2>\n              [*#content*] </div>\n            <!-- close .post (main column content) -->\n          </div>\n          <!-- close #content -->\n        </div>\n        <!-- end left-inner -->\n      </div>\n      <!-- end left -->\n    </div>\n    <!-- end inner -->\n    <div id=\"clearfooter\"></div>\n    <div id=\"header\">\n      <h1><a id=\"logo\" href=\"[~[(site_start)]~]\" title=\"[(site_name)]\">[(site_name)]</a></h1>\n\n      <div id=\"search\"><!--search_terms--><span id=\"search-txt\">SEARCH</span><a name=\"search\"></a>[!AjaxSearch? &ajaxSearch=`1` &landingPage=`8` &moreResultsPage=`8` &addJscript=`0` &showIntro=`0` &ajaxMax=`5` &extract=`1`!]</div>\n      <div id=\"ajaxmenu\"> [[Wayfinder?startId=`0` &outerTpl=`mh.OuterTpl` &innerTpl=`mh.InnerTpl` &rowTpl=`mh.RowTpl` &innerRowTpl=`mh.InnerRowTpl` &firstClass=`first` &hereClass=``]] </div>\n      <!-- end topmenu -->\n    </div>\n    <!-- end header -->\n    <br style=\"clear:both;height:0;font-size: 1px\" />\n    <div id=\"footer\">\n      <p> <a href=\"http://modx.com\" title=\"Ajax CMS and PHP Application Framework\">Powered\n          by MODX</a> &nbsp;<a href=\"http://www.modx.com/\" title=\"Template Designed by modXhost.com\">Template &copy; 2006-2011\n          modXhost.com</a><br />\n        Memory: [^m^], MySQL: [^qt^], [^q^] request(s), PHP: [^p^], total: [^t^], document retrieved\n        from [^s^]. </p>\n    </div>\n    <!-- end footer -->\n  </div>\n  <!-- end outer div -->\n</div>\n<!-- end wrapper -->\n</body>\n</html>','0');
INSERT INTO `modx_site_templates` VALUES ('12','О нас','','0','0','','0','{{header}}\n<body>\n<div id=\"main\">\n	<div id=\"main_center\">\n		<div id=\"header\">\n		<div class=\"linkblock\" onclick=\"location.href=\'/\';\">\n				<div class=\"logo\">	\n				</div>\n			    </div>\n							{{contact}}\n					</div>\n	\n	<div id=\"clear_line\"></div>\n							<div id=\"menu_site\">						\n    <ul class=\"joomla-nav\">\n<li  class=\"selected item101\">\n	<a href=\"[~1~]\" title=\"Информация для покупателей о Доставке воды \">Доставка воды </a></li>\n<li class=\"item107\">\n	<a href=\"[~5~]\" title=\"Статьи о пользе употребления очищенной питьевой воды.Факты, исследования, научные материалы\">Вода h2o (статьи)</a></li>\n<li class=\"item108\">\n	<a href=\"[~6~]\" title=\"Цены на Доставку  очищенной воды \">Услуги и цены</a></li>\n<li class=\"item109\">\n	<a href=\"[~7~]\" title=\"Методы очистка питьевой воды \">Технологии очистки</a></li>\n<li  id=\"current\" class=\"item110\">\n	<a href=\"[~8~]\" title=\"Информация о том где производиться очищеная питьевая вода, контакты\">О нас</a></li>\n	</ul>\n</div>	\n			\n	<div id=\"clear_line\"></div>\n	<div id=\"news_and_articles\">\n			\n			</div>\n	<div id=\"clear_line\"></div>\n			<div id=\"clear_line\"></div>\n		<div id=\"conteiner_content\">\n			\n			<div id=\"content\">\n            \n            <div id=\"page_nav\">\n										\n<div class=\"breadcrumbs\">\n<span class=\"showHere\">Вы здесь: </span>[[Breadcrumbs]]</div>\n	\n					</div>\n            \n												<div id=\"clear_line\"></div>		\n				<div class=\"main_content\">\n					\n<div id=\"system-message-container\">\n</div>\n					<div class=\"item-page\">\n\n	<h1>[*pagetitle*]</h1>\n\n\n\n\n\n\n\n<div class=\"content-links\">\n	<ul>\n			</ul>\n	</div>\n\n<p>[*content*]</p> \n	\n\n<div id=\"clear_line\"></div>\n<div id=\"clear_line\"></div>\n<div id=\"post_content_position_3\"><hr id=\"system-readmore\" />\n<p><img style=\"float: left;\" src=\"images/crystalwater/freind.png\" alt=\"freind\" width=\"300\" height=\"170\" /><span style=\"font-size: 14pt;\"><br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;Формируем дилерскую сеть на&nbsp;&nbsp; <br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; выгодных условиях.</span></p>\n<div id=\"clear_line\"></div>\n</div>\n						\n</div>\n\n				</div>\n				<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								\n			</div>\n			{{right_block}}\n			<div id=\"clear_line\"></div>\n		</div>\n	</div>\n<div id=\"clear_line\"></div>	\n		{{footer}}\n		</div>\n</div>	\n<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-37068666-1\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter18859432 = new Ya.Metrika({id:18859432,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/18859432\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->\n\n\n</body></html>','0');
INSERT INTO `modx_site_templates` VALUES ('9','Вода h2o (статьи)','','0','0','','0','{{header}}\n<body>\n<div id=\"main\">\n	<div id=\"main_center\">\n		<div id=\"header\">\n			<div class=\"linkblock\" onclick=\"location.href=\'/\';\">\n				<div class=\"logo\">	\n				</div>\n			</div>\n							{{contact}}\n					</div>\n	\n	<div id=\"clear_line\"></div>\n							<div id=\"menu_site\">						\n    <ul class=\"joomla-nav\">\n<li  class=\"selected item101\">\n	<a href=\"[~1~]\" title=\"Информация для покупателей о Доставке воды \">Доставка воды </a></li>\n<li id=\"current\" class=\"item107\">\n	<a href=\"[~5~]\" title=\"Статьи о пользе употребления очищенной питьевой воды.Факты, исследования, научные материалы\">Вода h2o (статьи)</a></li>\n<li class=\"item108\">\n	<a href=\"[~6~]\" title=\"Цены на Доставку  очищенной воды \">Услуги и цены</a></li>\n<li class=\"item109\">\n	<a href=\"[~7~]\" title=\"Методы очистка питьевой воды \">Технологии очистки</a></li>\n<li class=\"item110\">\n	<a href=\"[~8~]\" title=\"Информация о том где производиться очищеная питьевая вода, контакты\">О нас</a></li>\n	</ul>\n</div>	\n	<div id=\"clear_line\"></div>\n	<div id=\"news_and_articles\">\n			\n			</div>\n	<div id=\"clear_line\"></div>\n			<div id=\"clear_line\"></div>\n		<div id=\"conteiner_content\">\n			<div id=\"content\">\n            <div id=\"page_nav\">								\n<div class=\"breadcrumbs\">\n<span class=\"showHere\">Вы здесь: </span>[[Breadcrumbs]]</div>\n					</div>\n<div id=\"clear_line\"></div>		\n				<div class=\"main_content\">\n<div id=\"system-message-container\">\n</div>\n					<div class=\"item-page\">\n	<h1>[*pagetitle*]</h1>\n\n<div class=\"content-links\">\n	<ul>\n			</ul>\n	</div>\n\n<p>[*content*]</p> \n	\n<div id=\"clear_line\"></div>\n<div id=\"clear_line\"></div>\n<div id=\"post_content_position_3\"><hr id=\"system-readmore\" />\n<p><img style=\"float: left;\" src=\"images/crystalwater/freind.png\" alt=\"freind\" width=\"300\" height=\"170\" /><span style=\"font-size: 14pt;\"><br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;Формируем дилерскую сеть на&nbsp;&nbsp; <br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; выгодных условиях.</span></p>\n<div id=\"clear_line\"></div>\n</div>\n						\n</div>\n\n				</div>\n				<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								\n			</div>\n			{{right_block}}\n			<div id=\"clear_line\"></div>\n		</div>\n	</div>\n<div id=\"clear_line\"></div>	\n		{{footer}}\n		</div>\n</div>	\n<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-37068666-1\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter18859432 = new Ya.Metrika({id:18859432,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/18859432\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->\n\n\n</body></html>','0');
INSERT INTO `modx_site_templates` VALUES ('10','Услуги и цены','','0','0','','0','{{header}}\n<body>\n<div id=\"main\">\n	<div id=\"main_center\">\n		<div id=\"header\">\n		<div class=\"linkblock\" onclick=\"location.href=\'/\';\">\n				<div class=\"logo\">	\n				</div>\n			    </div>\n							{{contact}}\n					</div>\n	\n	<div id=\"clear_line\"></div>\n							<div id=\"menu_site\">						\n    <ul class=\"joomla-nav\">\n<li  class=\"selected item101\">\n	<a href=\"[~1~]\" title=\"Информация для покупателей о Доставке воды \">Доставка воды </a></li>\n<li class=\"item107\">\n	<a href=\"[~5~]\" title=\"Статьи о пользе употребления очищенной питьевой воды.Факты, исследования, научные материалы\">Вода h2o (статьи)</a></li>\n<li id=\"current\" class=\"item108\">\n	<a href=\"[~6~]\" title=\"Цены на Доставку  очищенной воды \">Услуги и цены</a></li>\n<li class=\"item109\">\n	<a href=\"[~7~]\" title=\"Методы очистка питьевой воды \">Технологии очистки</a></li>\n<li   class=\"item110\">\n	<a href=\"[~8~]\" title=\"Информация о том где производиться очищеная питьевая вода, контакты\">О нас</a></li>\n	</ul>\n</div>	\n			\n	<div id=\"clear_line\"></div>\n	<div id=\"news_and_articles\">\n			\n			</div>\n	<div id=\"clear_line\"></div>\n			<div id=\"clear_line\"></div>\n		<div id=\"conteiner_content\">\n			\n			<div id=\"content\">\n            \n            <div id=\"page_nav\">\n										\n<div class=\"breadcrumbs\">\n<span class=\"showHere\">Вы здесь: </span>[[Breadcrumbs]]</div>\n	\n					</div>\n            \n												<div id=\"clear_line\"></div>		\n				<div class=\"main_content\">\n					\n<div id=\"system-message-container\">\n</div>\n					<div class=\"item-page\">\n\n	<h1>[*pagetitle*]</h1>\n\n\n\n\n\n\n\n<div class=\"content-links\">\n	<ul>\n			</ul>\n	</div>\n\n<p>[*content*]</p> \n	\n\n<div id=\"clear_line\"></div>\n<div id=\"clear_line\"></div>\n<div id=\"post_content_position_3\"><hr id=\"system-readmore\" />\n<p><img style=\"float: left;\" src=\"images/crystalwater/freind.png\" alt=\"freind\" width=\"300\" height=\"170\" /><span style=\"font-size: 14pt;\"><br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;Формируем дилерскую сеть на&nbsp;&nbsp; <br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; выгодных условиях.</span></p>\n<div id=\"clear_line\"></div>\n</div>\n						\n</div>\n\n				</div>\n				<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								\n			</div>\n			{{right_block}}\n			<div id=\"clear_line\"></div>\n		</div>\n	</div>\n<div id=\"clear_line\"></div>	\n		{{footer}}\n		</div>\n</div>	\n<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-37068666-1\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter18859432 = new Ya.Metrika({id:18859432,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/18859432\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->\n\n\n</body></html>','0');
INSERT INTO `modx_site_templates` VALUES ('11','Технологии очистки','','0','0','','0','{{header}}\n<body>\n<div id=\"main\">\n	<div id=\"main_center\">\n		<div id=\"header\">\n			<div class=\"linkblock\" onclick=\"location.href=\'/\';\">\n				<div class=\"logo\">	\n				</div>\n			    </div>\n			   {{contact}}\n				</div>\n	\n	<div id=\"clear_line\"></div>\n							<div id=\"menu_site\">						\n    <ul class=\"joomla-nav\">\n<li  class=\"selected item101\">\n	<a href=\"[~1~]\" title=\"Информация для покупателей о Доставке воды \">Доставка воды </a></li>\n<li class=\"item107\">\n	<a href=\"[~5~]\" title=\"Статьи о пользе употребления очищенной питьевой воды.Факты, исследования, научные материалы\">Вода h2o (статьи)</a></li>\n<li class=\"item108\">\n	<a href=\"[~6~]\" title=\"Цены на Доставку  очищенной воды \">Услуги и цены</a></li>\n<li id=\"current\"  class=\"item109\">\n	<a href=\"[~7~]\" title=\"Методы очистка питьевой воды \">Технологии очистки</a></li>\n<li   class=\"item110\">\n	<a href=\"[~8~]\" title=\"Информация о том где производиться очищеная питьевая вода, контакты\">О нас</a></li>\n	</ul>\n</div>	\n			\n	<div id=\"clear_line\"></div>\n	<div id=\"news_and_articles\">\n			\n			</div>\n	<div id=\"clear_line\"></div>\n			<div id=\"clear_line\"></div>\n		<div id=\"conteiner_content\">\n			\n			<div id=\"content\">\n            \n            <div id=\"page_nav\">\n										\n<div class=\"breadcrumbs\">\n<span class=\"showHere\">Вы здесь: </span>[[Breadcrumbs]]</div>\n	\n					</div>\n            \n												<div id=\"clear_line\"></div>		\n				<div class=\"main_content\">\n					\n<div id=\"system-message-container\">\n</div>\n					<div class=\"item-page\">\n\n	<h1>[*pagetitle*]</h1>\n\n\n\n\n\n\n\n<div class=\"content-links\">\n	<ul>\n			</ul>\n	</div>\n\n<p>[*content*]</p> \n	\n\n<div id=\"clear_line\"></div>\n<div id=\"clear_line\"></div>\n<div id=\"post_content_position_3\"><hr id=\"system-readmore\" />\n<p><img style=\"float: left;\" src=\"images/crystalwater/freind.png\" alt=\"freind\" width=\"300\" height=\"170\" /><span style=\"font-size: 14pt;\"><br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;Формируем дилерскую сеть на&nbsp;&nbsp; <br /></span></p>\n<p><span style=\"font-size: 18pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; выгодных условиях.</span></p>\n<div id=\"clear_line\"></div>\n</div>\n						\n</div>\n\n				</div>\n				<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								<div id=\"clear_line\"></div>		\n								\n			</div>\n			{{right_block}}\n			<div id=\"clear_line\"></div>\n		</div>\n	</div>\n<div id=\"clear_line\"></div>	\n		{{footer}}\n		</div>\n</div>	\n<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-37068666-1\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n<!-- Yandex.Metrika counter -->\n<script type=\"text/javascript\">\n(function (d, w, c) {\n    (w[c] = w[c] || []).push(function() {\n        try {\n            w.yaCounter18859432 = new Ya.Metrika({id:18859432,\n                    clickmap:true,\n                    trackLinks:true,\n                    accurateTrackBounce:true});\n        } catch(e) { }\n    });\n\n    var n = d.getElementsByTagName(\"script\")[0],\n        s = d.createElement(\"script\"),\n        f = function () { n.parentNode.insertBefore(s, n); };\n    s.type = \"text/javascript\";\n    s.async = true;\n    s.src = (d.location.protocol == \"https:\" ? \"https:\" : \"http:\") + \"//mc.yandex.ru/metrika/watch.js\";\n\n    if (w.opera == \"[object Opera]\") {\n        d.addEventListener(\"DOMContentLoaded\", f, false);\n    } else { f(); }\n})(document, window, \"yandex_metrika_callbacks\");\n</script>\n<noscript><div><img src=\"//mc.yandex.ru/watch/18859432\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\n<!-- /Yandex.Metrika counter -->\n\n\n</body></html>','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_access`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `modx_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_contentvalues`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `modx_site_tmplvar_contentvalues`
#

INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('1','5','1','assets/images/_002.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('2','6','1','В подарок!');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('3','7','1','Простое и удобное в использование приспособление для разлива воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('4','8','9','assets/images/butilirovannaya-voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('5','8','10','assets/images/voda-optom.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('6','8','11','assets/images/dostavka-pitevoi-vodi.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('7','8','12','assets/images/voda-s-gazom.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('8','8','13','assets/images/polza-ot-ochishhennoj-vodi.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('9','8','14','assets/images/voda-dlya-pohudeniya.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('10','8','15','assets/images/ochistka-vodi.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('11','8','16','assets/images/chistaya-voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('12','8','18','assets/images/pitevaya-voda(1).png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('13','8','19','assets/images/obratnij-osmos.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('14','12','1','assets/images/_0001.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('15','13','1','Бутыль 19,9 л');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('16','14','1','Минимальный заказ 2 бутыля');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('17','15','1','Доставка воды бесплатно');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('18','16','1','Бутыль');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('19','17','1','40 грн');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('20','18','1','Уточняйте');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('21','19','1','assets/images/kyler.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('22','20','1','Для нагрева и охлаждения питьевой воды незаменимы в офисе или дома');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('23','8','21','assets/images/pit-vodu.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('24','8','20','assets/images/ochishhennaya-voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('25','8','17','assets/images/kupit-vodu.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('27','1','9','Почему всем жителям Украины стоит перейти на бутилированную воду и перестать пить воду с под крана, подробно рассписано в статье.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('29','2','9','бутилированная вода, вода бутилированная, доставка бутилированной воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('31','4','9','Бутилированная вода необходима для ежедневного употребления');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('137','1','41','Чтобы заказать воду в Киев нужно просто найти хорошего производителя. Ведь как заказать воду знает каждый, а как выбрать качественного производителя нет.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('33','1','10','Если необходима вода оптом, мы предоставим вам низкую цену и хорошее качество. Купить воду оптом прямо на заводе.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('35','2','10','вода оптом, купить воду оптом');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('37','4','10','Продается вода оптом на лучших условиях производителя');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('39','1','11','Ньюансы необходимые для выбора компании по доставке питьевой воды, чтоб выбрать качественную доставку питьевой воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('41','2','11','доставка питьевой воды, доставку питьевой воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('43','4','11','Услуга доставка питьевой воды требует серьезного подхода к выбору производителя');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('45','1','12','Какую воду стоить пить, а какая вода должна быть выброшена - решайте прочитав статью');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('47','2','12','какая вода, какуюто воду');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('49','4','12','Какая вода полезна, а какая вредна для здорового организма');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('51','1','13','Почему очищеная вода нужна организму регулярно и как ее употреблять, читайте в статье.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('53','2','13','очищенная вода, очищенную воду');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('55','4','13','Очищенная вода лечит тело и организм');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('57','8','30','assets/images/vidi-vodi.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('59','8','29','assets/images/voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('61','8','28','assets/images/pochemu-voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('63','8','27','assets/images/ochistka-vodi-obratnij-osmos.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('65','8','26','assets/images/pitevaya-voda-ili-pit-vodu.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('67','8','25','assets/images/h2o-voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('69','8','24','assets/images/chishhe-voda.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('71','1','1','Доставка воды в Бровары и доставка воды в Киев (Еко+) 044-451-59-33\nКачественная доставка воды на дом, доставка воды в офис это «Кришталево-чиста питна вода».\nЧистая вода и ее доставка это в нам! Качество подтверждается сертификатом NSF International - независимой международной организации о проверке здравоохранения, а так же заключением Государственной санитарно-эпидемиологической экспертизы выданным Министерством Здравоохранения Украины.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('73','2','1','доставка воды Бровары, доставка воды в Броварах');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('77','2','6','вода цена, воды цена, воду цена');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('79','4','6','У нас вода цена которой оправдана качеством');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('75','4','1','Доставка воды в Бровары и Киев  Доставка воды очищенной ');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('81','1','6','Выбирайте чистую воду цена 40 гривен за бутыль. Чтобы заказать воды цена которой будет вам по карману позвоните нам.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('83','2','8','продажа воды, продаже воды, продаем воду');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('85','1','8','Способы получения воды \"Кришталево-чиста питна вода\" продажи воды и доставки указанно по ссылке. Адреса и телефоны производителя.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('87','4','8','Продажа воды качественного производителя по очистке воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('89','1','7','Вода очищается методами очистки воды обратный осмос и озоновая стерилизация. Более подробная информация по ссылке.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('91','2','7','Методы очистки воды, методами очистки воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('93','4','7','Лучшие методы очистки воды используются для \"Кришталево-чиста питна вода\" это обратный осмос и озоновая стерилизация');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('95','1','5','Информация о состоянии воды в мире, технологиях очистки существующих на сегодняшний день, необходимость потребления h2o воды человеком и многое другое.');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('97','2','5','h2o вода ');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('99','4','5','h2o вода и все с чем она связанна');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('101','1','35','Какие фильтры для воды являются лучшими для очистки и какие использует \"Кришталево-чиста питна вода\" описано в статье');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('103','2','35','фильтры для воды, фильтр для воды, фильтрам для воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('105','4','35','Фильтры для воды в нашей компании - это фильтр обратного осмоса и озоновой стерилизации');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('107','8','35','assets/images/filtri-dlya-vodi.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('109','2','30','виды воды, вида воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('111','1','37','Все что нужно живим организмам еда, воздух и вода. И вот почему значение воды в мире настолько важно');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('113','2','37','значение воды, значение воде, значения воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('115','4','37','Какое имеет значение вода для человека и жизни на планете');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('117','8','37','assets/images/znachenie-vodi.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('119','2','15','очистка воды');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('121','2','17','купить воду');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('123','2','16','чистая вода');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('125','8','39','assets/images/dostavka-vodi-Kiev.png');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('127','1','39','Чем обусловлена необходимость в доставке воды в Киев и другие города читайте в статье');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('129','2','39','доставка воды Киев');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('131','4','39','Доставка воды в Киев и области необходима по таким причинам:');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('133','10','1','1');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('139','2','41','заказать воду, заказать воду Киев, как заказать воду');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('141','4','41','Заказать воду стоит после изучения ее состава');
INSERT INTO `modx_site_tmplvar_contentvalues` VALUES ('143','8','41','assets/images/zakazat-vodu.png');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvar_templates`
#

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `modx_site_tmplvar_templates`
#

INSERT INTO `modx_site_tmplvar_templates` VALUES ('1','12','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('2','12','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('3','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','12','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('8','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','12','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('10','12','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('11','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('12','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('13','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('14','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('15','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('16','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('17','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('18','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('19','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('20','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('1','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('2','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('3','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('5','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('6','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('7','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('10','3','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('11','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('12','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('13','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('14','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('15','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('16','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('17','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('18','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('19','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('20','13','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('1','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('1','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('1','11','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('2','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('2','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('2','11','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('9','11','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('10','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('10','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('10','11','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','9','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','10','0');
INSERT INTO `modx_site_tmplvar_templates` VALUES ('4','11','0');

# --------------------------------------------------------

#
# Table structure for table `modx_site_tmplvars`
#

DROP TABLE IF EXISTS `modx_site_tmplvars`;
CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `modx_site_tmplvars`
#

INSERT INTO `modx_site_tmplvars` VALUES ('1','textarea','desc','Мета дескрипшин','Мета дескрипшин','0','2','0','','0','','','[*introtext*]');
INSERT INTO `modx_site_tmplvars` VALUES ('2','text','keyw','Ключевые слова','Ключевые слова','0','2','0','','0','','','[*pagetitle*]');
INSERT INTO `modx_site_tmplvars` VALUES ('3','checkbox','noIndex','Индексировать страницу','Управление URL','0','2','0','Нет==<meta name=\"robots\" content=\"noindex, nofollow\">','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('4','text','titl','Мета тайтл','Мета тайтл','0','2','0','','0','','','[*pagetitle*] - [(site_name)]');
INSERT INTO `modx_site_tmplvars` VALUES ('5','image','img','фото блока','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('6','text','index_title','Название блока','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('7','text','index_mtitle','Текс под блоком','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('8','image','blog_img','Фото к статье','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('9','checkbox','sitemap_exclude','Отображение в sitemap','Для карты сайта','0','2','0','Скрыть==1','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('10','dropdown','sitemap_priority','Приоритет страницы','Для карты сайта','0','2','0','0.1||0.2||0.3||0.4||0.5||0.6||0.7||0.8||0.9||1','0','','','0.5');
INSERT INTO `modx_site_tmplvars` VALUES ('11','dropdown','sitemap_changefreq','Период обновления','Для карты сайта','0','2','0','always||hourly||daily||weekly||monthly||yearly||never','0','','','weekly');
INSERT INTO `modx_site_tmplvars` VALUES ('12','image','img2','фото блока 2','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('13','text','index_mtitle2','Текс под блоком2','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('14','text','2index_mtitle2','Второй текс под блоком2','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('15','text','3index_mtitle2','Третий текс под третим блоком','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('16','text','index_title2','Название блока 2','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('17','text','price','price','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('18','text','index_title3','Название блока 3','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('19','image','img3','фото блока 3','','0','0','0','','0','','','');
INSERT INTO `modx_site_tmplvars` VALUES ('20','text','3index_mtitle3',' Третий текс под третим блоком','','0','0','0','','0','','','');

# --------------------------------------------------------

#
# Table structure for table `modx_system_eventnames`
#

DROP TABLE IF EXISTS `modx_system_eventnames`;
CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `modx_system_eventnames`
#

INSERT INTO `modx_system_eventnames` VALUES ('1','OnDocPublished','5','');
INSERT INTO `modx_system_eventnames` VALUES ('2','OnDocUnPublished','5','');
INSERT INTO `modx_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');
INSERT INTO `modx_system_eventnames` VALUES ('4','OnWebLogin','3','');
INSERT INTO `modx_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');
INSERT INTO `modx_system_eventnames` VALUES ('6','OnWebLogout','3','');
INSERT INTO `modx_system_eventnames` VALUES ('7','OnWebSaveUser','3','');
INSERT INTO `modx_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');
INSERT INTO `modx_system_eventnames` VALUES ('9','OnWebChangePassword','3','');
INSERT INTO `modx_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');
INSERT INTO `modx_system_eventnames` VALUES ('11','OnManagerLogin','2','');
INSERT INTO `modx_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');
INSERT INTO `modx_system_eventnames` VALUES ('13','OnManagerLogout','2','');
INSERT INTO `modx_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');
INSERT INTO `modx_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');
INSERT INTO `modx_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');
INSERT INTO `modx_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');
INSERT INTO `modx_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');
INSERT INTO `modx_system_eventnames` VALUES ('19','OnCacheUpdate','4','');
INSERT INTO `modx_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');
INSERT INTO `modx_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');
INSERT INTO `modx_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');
INSERT INTO `modx_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');
INSERT INTO `modx_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');
INSERT INTO `modx_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');
INSERT INTO `modx_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');
INSERT INTO `modx_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');
INSERT INTO `modx_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');
INSERT INTO `modx_system_eventnames` VALUES ('70','OnSiteRefresh','1','');
INSERT INTO `modx_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');
INSERT INTO `modx_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');
INSERT INTO `modx_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');
INSERT INTO `modx_system_eventnames` VALUES ('79','OnWebAuthentication','3','');
INSERT INTO `modx_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');
INSERT INTO `modx_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');
INSERT INTO `modx_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');
INSERT INTO `modx_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');
INSERT INTO `modx_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');
INSERT INTO `modx_system_eventnames` VALUES ('89','OnManagerPageInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('90','OnWebPageInit','5','');
INSERT INTO `modx_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');
INSERT INTO `modx_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');
INSERT INTO `modx_system_eventnames` VALUES ('92','OnParseDocument','5','');
INSERT INTO `modx_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('94','OnWebPageComplete','5','');
INSERT INTO `modx_system_eventnames` VALUES ('95','OnLogPageHit','5','');
INSERT INTO `modx_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');
INSERT INTO `modx_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');
INSERT INTO `modx_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');
INSERT INTO `modx_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');
INSERT INTO `modx_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');
INSERT INTO `modx_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');
INSERT INTO `modx_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');
INSERT INTO `modx_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');
INSERT INTO `modx_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

# --------------------------------------------------------

#
# Table structure for table `modx_system_settings`
#

DROP TABLE IF EXISTS `modx_system_settings`;
CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `modx_system_settings`
#

INSERT INTO `modx_system_settings` VALUES ('manager_theme','MODxCarbon');
INSERT INTO `modx_system_settings` VALUES ('settings_version','1.0.12-d6.5');
INSERT INTO `modx_system_settings` VALUES ('show_meta','0');
INSERT INTO `modx_system_settings` VALUES ('server_offset_time','0');
INSERT INTO `modx_system_settings` VALUES ('server_protocol','http');
INSERT INTO `modx_system_settings` VALUES ('manager_language','russian-UTF8');
INSERT INTO `modx_system_settings` VALUES ('modx_charset','UTF-8');
INSERT INTO `modx_system_settings` VALUES ('site_name','Доставка воды Бровары, Киев, Доставка воды в Броварах и Киеве');
INSERT INTO `modx_system_settings` VALUES ('site_start','1');
INSERT INTO `modx_system_settings` VALUES ('error_page','31');
INSERT INTO `modx_system_settings` VALUES ('unauthorized_page','31');
INSERT INTO `modx_system_settings` VALUES ('site_status','1');
INSERT INTO `modx_system_settings` VALUES ('site_unavailable_message','The site is currently unavailable');
INSERT INTO `modx_system_settings` VALUES ('track_visitors','0');
INSERT INTO `modx_system_settings` VALUES ('top_howmany','10');
INSERT INTO `modx_system_settings` VALUES ('auto_template_logic','sibling');
INSERT INTO `modx_system_settings` VALUES ('default_template','3');
INSERT INTO `modx_system_settings` VALUES ('old_template','3');
INSERT INTO `modx_system_settings` VALUES ('publish_default','1');
INSERT INTO `modx_system_settings` VALUES ('cache_default','1');
INSERT INTO `modx_system_settings` VALUES ('search_default','1');
INSERT INTO `modx_system_settings` VALUES ('friendly_urls','1');
INSERT INTO `modx_system_settings` VALUES ('friendly_url_prefix','');
INSERT INTO `modx_system_settings` VALUES ('friendly_url_suffix','.html');
INSERT INTO `modx_system_settings` VALUES ('friendly_alias_urls','1');
INSERT INTO `modx_system_settings` VALUES ('use_alias_path','1');
INSERT INTO `modx_system_settings` VALUES ('use_udperms','1');
INSERT INTO `modx_system_settings` VALUES ('udperms_allowroot','0');
INSERT INTO `modx_system_settings` VALUES ('failed_login_attempts','3');
INSERT INTO `modx_system_settings` VALUES ('blocked_minutes','60');
INSERT INTO `modx_system_settings` VALUES ('use_captcha','0');
INSERT INTO `modx_system_settings` VALUES ('captcha_words','0,1,2,3,4,5,6,7,8,9');
INSERT INTO `modx_system_settings` VALUES ('emailsender','attila@mail.ua');
INSERT INTO `modx_system_settings` VALUES ('email_method','mail');
INSERT INTO `modx_system_settings` VALUES ('smtp_auth','0');
INSERT INTO `modx_system_settings` VALUES ('smtp_host','');
INSERT INTO `modx_system_settings` VALUES ('smtp_port','25');
INSERT INTO `modx_system_settings` VALUES ('smtp_username','');
INSERT INTO `modx_system_settings` VALUES ('emailsubject','Your login details');
INSERT INTO `modx_system_settings` VALUES ('number_of_logs','100');
INSERT INTO `modx_system_settings` VALUES ('number_of_messages','30');
INSERT INTO `modx_system_settings` VALUES ('number_of_results','20');
INSERT INTO `modx_system_settings` VALUES ('use_editor','1');
INSERT INTO `modx_system_settings` VALUES ('use_browser','1');
INSERT INTO `modx_system_settings` VALUES ('rb_base_dir','/usr/home/crystalwater/public_html/assets/');
INSERT INTO `modx_system_settings` VALUES ('rb_base_url','assets/');
INSERT INTO `modx_system_settings` VALUES ('which_editor','TinyMCE');
INSERT INTO `modx_system_settings` VALUES ('fe_editor_lang','russian-UTF8');
INSERT INTO `modx_system_settings` VALUES ('fck_editor_toolbar','standard');
INSERT INTO `modx_system_settings` VALUES ('fck_editor_autolang','0');
INSERT INTO `modx_system_settings` VALUES ('editor_css_path','');
INSERT INTO `modx_system_settings` VALUES ('editor_css_selectors','');
INSERT INTO `modx_system_settings` VALUES ('strip_image_paths','1');
INSERT INTO `modx_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff');
INSERT INTO `modx_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');
INSERT INTO `modx_system_settings` VALUES ('upload_flash','fla,flv,swf');
INSERT INTO `modx_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF');
INSERT INTO `modx_system_settings` VALUES ('upload_maxsize','1048576');
INSERT INTO `modx_system_settings` VALUES ('new_file_permissions','0644');
INSERT INTO `modx_system_settings` VALUES ('new_folder_permissions','0755');
INSERT INTO `modx_system_settings` VALUES ('filemanager_path','/usr/home/crystalwater/public_html/');
INSERT INTO `modx_system_settings` VALUES ('theme_refresher','');
INSERT INTO `modx_system_settings` VALUES ('manager_layout','4');
INSERT INTO `modx_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');
INSERT INTO `modx_system_settings` VALUES ('auto_menuindex','1');
INSERT INTO `modx_system_settings` VALUES ('session.cookie.lifetime','604800');
INSERT INTO `modx_system_settings` VALUES ('mail_check_timeperiod','60');
INSERT INTO `modx_system_settings` VALUES ('manager_direction','ltr');
INSERT INTO `modx_system_settings` VALUES ('tinymce_editor_theme','editor');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_plugins','style,advimage,advlink,searchreplace,print,contextmenu,paste,fullscreen,nonbreaking,xhtmlxtras,visualchars,media');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons1','undo,redo,selectall,separator,pastetext,pasteword,separator,search,replace,separator,nonbreaking,hr,charmap,separator,image,link,unlink,anchor,media,separator,cleanup,removeformat,separator,fullscreen,print,code,help');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons2','bold,italic,underline,strikethrough,sub,sup,separator,bullist,numlist,outdent,indent,separator,justifyleft,justifycenter,justifyright,justifyfull,separator,styleselect,formatselect,separator,styleprops');
INSERT INTO `modx_system_settings` VALUES ('tree_show_protected','0');
INSERT INTO `modx_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/modx-announce');
INSERT INTO `modx_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/modxsecurity');
INSERT INTO `modx_system_settings` VALUES ('validate_referer','1');
INSERT INTO `modx_system_settings` VALUES ('datepicker_offset','-10');
INSERT INTO `modx_system_settings` VALUES ('xhtml_urls','0');
INSERT INTO `modx_system_settings` VALUES ('allow_duplicate_alias','0');
INSERT INTO `modx_system_settings` VALUES ('automatic_alias','1');
INSERT INTO `modx_system_settings` VALUES ('datetime_format','dd-mm-YYYY');
INSERT INTO `modx_system_settings` VALUES ('warning_visibility','0');
INSERT INTO `modx_system_settings` VALUES ('remember_last_tab','1');
INSERT INTO `modx_system_settings` VALUES ('enable_bindings','1');
INSERT INTO `modx_system_settings` VALUES ('seostrict','1');
INSERT INTO `modx_system_settings` VALUES ('cache_type','2');
INSERT INTO `modx_system_settings` VALUES ('maxImageWidth','1600');
INSERT INTO `modx_system_settings` VALUES ('maxImageHeight','1200');
INSERT INTO `modx_system_settings` VALUES ('thumbWidth','150');
INSERT INTO `modx_system_settings` VALUES ('thumbHeight','150');
INSERT INTO `modx_system_settings` VALUES ('thumbsDir','.thumbs');
INSERT INTO `modx_system_settings` VALUES ('jpegQuality','90');
INSERT INTO `modx_system_settings` VALUES ('denyZipDownload','0');
INSERT INTO `modx_system_settings` VALUES ('denyExtensionRename','0');
INSERT INTO `modx_system_settings` VALUES ('showHiddenFiles','0');
INSERT INTO `modx_system_settings` VALUES ('docid_incrmnt_method','0');
INSERT INTO `modx_system_settings` VALUES ('make_folders','1');
INSERT INTO `modx_system_settings` VALUES ('tree_page_click','27');
INSERT INTO `modx_system_settings` VALUES ('clean_uploaded_filename','1');
INSERT INTO `modx_system_settings` VALUES ('site_id','52936d48b34a7');
INSERT INTO `modx_system_settings` VALUES ('site_unavailable_page','');
INSERT INTO `modx_system_settings` VALUES ('reload_site_unavailable','');
INSERT INTO `modx_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');
INSERT INTO `modx_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');
INSERT INTO `modx_system_settings` VALUES ('error_reporting','1');
INSERT INTO `modx_system_settings` VALUES ('send_errormail','0');
INSERT INTO `modx_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');
INSERT INTO `modx_system_settings` VALUES ('reload_captcha_words','');
INSERT INTO `modx_system_settings` VALUES ('captcha_words_default','MODX,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');
INSERT INTO `modx_system_settings` VALUES ('smtppw','Vm0wd2QyUXlVWGxWV0d4V1YwZDRWMVl3WkRSV01WbDNXa1JTVjAxV2JETlhhMUpUVmpBeFYySkVUbGhoTVVwVVZtcEJlRll5U2tWVWJHaG9UVlZ3VlZadGNFSmxSbGw1VTJ0V1ZXSkhhRzlVVmxaM1ZsWmFjVkZ0UmxSTmJFcEpWbTEwYTFkSFNrZGpTRUpYWVRGd2FGcFdXbUZrUlRGVlZXeFNUbUY2UlRGV2EyUXdZekpHYzFOdVVtaFNlbXhXVm1wT1QwMHhjRlpYYlVaclVqQTFSMWRyV25kV01ERkZVbFJHVjFaRmIzZFdha1poVjBaT2NtRkhhRk5sYlhoWFZtMHhORmxWTUhoWGJrNVlZbFZhY2xWcVFURlNNVlY1VFZSU1ZrMXJjRWxhU0hCSFZqRmFSbUl6WkZkaGExcG9WakJhVDJOdFJraGhSazVzWWxob1dGWnRNWGRVTVZGM1RVaG9hbEpzY0ZsWmJGWmhZMnhXY1ZGVVJsTk5XRUpIVmpKNFQxWlhTa2RqUm14aFUwaENTRlpxUm1GU2JVbDZXa1prYUdFeGNHOVdha0poVkRKT2RGSnJhR2hTYXpWeldXeG9iMWRHV25STlNHaFBVbTE0VjFSVmFHOVhSMHB5VGxac1dtSkdXbWhaTW5oWFkxWkdWVkpzVGs1WFJVcElWbXBLTkZReFdsaFRhMlJxVW0xNGFGVXdhRU5UUmxweFVtMUdVMkpWYkRaWGExcHJZVWRGZUdOSE9WZGhhMHBvVmtSS1QyUkdTbkpoUjJoVFlYcFdlbGRYZUc5aU1XUkhWMjVTVGxOSGFGQlZiVEUwVmpGU1ZtRkhPVmhTTUhCNVZHeGFjMWR0U2tkWGJXaGFUVzVvV0ZreFdrZFdWa3B6VkdzMVYySkdhM2hXYTFwaFZURlZlRmR1U2s1WFJYQnhWVzB4YjFZeFVsaE9WazVPVFZad2VGVXlkREJXTVZweVkwWndXR0V4Y0hKWlZXUkdaVWRPUjJKR2FHaE5WbkJ2Vm10U1MxUnRWa2RqUld4VllsZG9WRlJYTlc5V1ZscEhXVE5vYVUxWFVucFdNV2h2V1ZaS1IxTnVRbFZXTTFKNlZHeGFZV1JGTlZaUFZtUnBWbGhDU1ZacVNqUlZNV1IwVTJ0a1dHSlhhR0ZVVnpWdlYwWnJlRmRyWkZkV2EzQjZWa2R6TVZkR1NsWmpSV3hYWWxoQ1RGUnJXbEpsUm1SellVWlNhRTFzU25oV1Z6RTBaREZrUjJKSVRtaFNhelZQVkZaYWQyVkdWWGxrUkVKWFRWWndlVmt3V25kWFIwVjRZMFJPV21FeVVrZGFWM2hIWTIxS1IxcEhiRmhTVlhCS1ZtMTBVMU14VlhoWFdHaFlZbXhhVmxsclpHOWpSbHB4VTIwNWJHSkhVbGxhVldNMVlWVXhjbUpFVWxkTmFsWlVWa2Q0YTFOR1ZuTlhiRlpYVFRGS05sWkhlR0ZXTWxKSVZXdG9hMUl5YUhCVmJHaENaREZhYzFwRVVtcE5WMUl3VlRKMGIyRkdTbk5UYkdoVlZsWndNMVpyV21GalZrcDFXa1pPVjJFeGNEVldSRVpyWXpGVmQwMUliR2hTYlhoWVdXeG9RMVJHVW5KWGJFcHNVbTFTZWxsVldsTmhSVEZ6VTI1b1YxWjZRalJVYTJSSFVqRmFXVnBIYUZOV1ZGWlZWbGN4TkdReVZrZFdXR3hyVWpOU2IxbHNWbmRXTVZwMFkwZEdXR0pHY0ZoWk1HUnZWMnhhV0ZWclpHRldWMUpRVlRCVk5WWXhjRWhoUjJoT1UwVktNbFp0TVRCVk1VMTRWVmhzVm1FeVVsVlpiWFIzWVVaV2RFMVhPV3BTYkhCNFZrY3dOV0V5U2tkalJXaFhZbFJCTVZaWGMzaFhSbFoxWTBaa1RtRnNXazFXYWtKclV6Rk9SMVp1VWxOaVIxSnZXVlJHZDFOV1draGtSMFphVm1zMVNWWlhkRzloTVVwMFZXNUNWMkpIYUVSVk1WcGhZMVpPY1ZWc1drNVdNVWwzVmxSS01HSXlSa2RUYms1VVlrZG9WbFpzV25kTk1WcHlWMjFHYWxack5YbFhhMXBQWVZaS2NtTkVXbGRoTWs0MFdYcEdWbVZXVG5WVGJGSnBWbFp3V1ZaR1l6RmlNV1JIV2taa1dHSkZjSE5WYlRGVFpXeHNWbGRzVG1oV2EzQXhWVmQ0ZDFZeVNsbFZiR2hoVWtWYVlWcFZaRXRUVms1ellVZG9UazFWY0ZaV2JHTjRUa2RSZVZaclpGZFhSM2h5VldwQ1lXTkdWblJsU0dSc1lrWldOVnBWYUd0WFIwcEhZMFpvV2sxSGFFeFdha1poVW14a2NtVkdaR2hoTTBKUlZsUkdhMU14U1hoalJXUmhVbXMxV0ZZd1ZrdE5iRnAwVFZSQ1ZrMVZNVFJXVm1oelZsWmtTR1ZHV2xwV1JWb3pXV3BHVjJOV1VuSlViR1JUWWxob1lWZFVRbUZoTWtWM1RWWmthbEpGU21GVVZWcGFaREZzVjFaWWFHcE5WVFV4V1RCYWExUnRSbk5YYkZaWFlUSlJNRmxVUms5U01WcDFWR3hvYVZKc2NGbFhWM1J2VVRGa1YxZHJhR3hTTUZwWVZGZDRTMU5XV2xoa1J6bG9UVlZ3TUZaWGN6VldNa1p5VjJ0NFZrMXVhSEpXYWtaaFpFWktkR05GTlZkTlZXd3pWbXhTUzAxSFJYaGFSV2hVWWtkb2IxVnFRbUZXYkZwMFpVaGtUazFYZUZkV01qVnJWVEpLU1ZGclpGVk5WbFV4V1ZaYVMxZFdSbGxhUm1ocFVteHdiMVpyVWt0U01WbDRWVzVLV0dKR1NuQldiRnAzVjFaYVIxbDZSbWxOVjFKSVdXdG9SMVpIUlhoalNFNVdZbFJHVkZZeWVHdGpiRnBWVW14a1RsWnVRalpYVkVKaFZqRmtSMWR1VGxSaE1taG9WV3RXWVZsV2NGWmFSWFJVVm1zMWVsbFZaRzlVYXpGV1kwWmtWMkpIVGpSVWEyUlNaVlphY2xwR1pGaFNNMmg1Vmxkd1ExbFhUa2RXYmxKc1UwZFNjMWxyV25OT1ZuQldZVWQwV0ZKcmJETldiWEJUVjJzeFIxTnNRbGRoYTNCSVdUSjRhMk50VmtkYVJUVlhZbXRLU2xZeFVrcGxSazE0VTFob2FsSlhhSEJWYlRGdlZrWmFjMkZGVGxSTlZuQXdWRlpTUTFack1WWmlSRlpXWWtkb2RsWXdXbXRUUjFaSFYyeHdWMUpXYjNwWFZsWmhWakpPVjFSdVVsQldiVkpVV1d0V2QxZHNXa2hsUjNCUFZteHNORll5TlU5aGJFcFlZVVpzVjJFeFZYaGFSM2h6VmpGYVdXRkdhRk5pUm05NFYxUkNZV0V4VW5OWFdHeG9Va1Z3V0ZsWGRFdGpiRlkyVW0xMFYwMVdjREZWTW5oRFZqSktTVkZ1WkZkaVdGSllWbTB4VW1WR1pIVlNiRXBwVmxad2FGWnRNVEJqTURWWFZtNVNhMUo2YkZkVmJYaHpUbFpzVm1GRlRsZGlWWEJKV1ZWV1QxbFdTa1pYYmtwWFlXdGFhRnBGVlRWV01WcHlUbFprYVdFd1dYcFdiWGhxWkRBeFYxUllhRlpYUjJoWldXMXpNVlpXYkhKYVJ6bFhZa1p3TUZwVmFHdFVhekZYWWtST1YwMXFWa3haYTFwTFpFWldkV0pIUmxOV01VbDZWMVphWVZsWFRuUlVhMXBwVW0xU2NGVnFSa1prTVdSWFZXdDBVMDFYVWtoVk1uaHpXVlpKZWxGc1VsZGhhelYyVmpGYWExZEhWa2hQVmtwT1ZtdHdTVlpzWXpGVE1XUklVMnRhYWxORk5WZFpiRkpIVmtad1dHVklUbGRpUjFKNlZrY3hiMVV4V2taWGFscFhWa1ZyZUZscVJscGxSbVJ4VjJ4T1YxSlZjRzlXVjNSWFdWZE9jMVp1UmxSaE0xSlZWbTE0UzAxR2JGWlhhemxwVWpCd1dsbFZVbUZXTURGWVZWaGtXRlp0VWxOYVZscGhZMnh3UjFwSGJHbFNXRUpSVm0weE5HRXhWWGhYYms1V1lrZG9jbFV3WkZOV1JsSlhWMjVPVDFadVFsZFpWV1F3VjBaSmQyTkZhRnBOUm5CMlZqSnplRk5HVm5WWGJHUk9ZbTFvYjFacVFtRldNazV6WTBWb1UySkhVbGhVVmxaM1ZXeGFjMXBJWkZSTlZURTBWVEZvYzFVeVJYbGhSemxXWWtaS1dGWXdXbk5rUjFKR1pFVTFhVkp1UVhkV1JscFRVVEZhY2sxV1drNVdSa3BZVm0weGIyVnNXblJOVlZwc1ZteGFlbFl5ZUhkaFZtUkhVMWh3V0Zac1dtaFdha3BUVTBaYWNsZHRkRk5OTUVwVlYxZDBiMUV3TlVkWGJrcGFUVEpTVUZacVFsZE9WbFY1WkVkMGFHSkZjRmxaVlZwdlYyMUtSMU5yVGxWV2JIQm9WakJrVG1WdFJraGpSMnhYVjBWS1NGWnRlR3RPUjBWNFZXNU9XRmRIZUc5VmExWjNWMFpTVjFkdVpHaFNiRmt5VlcxMGQySkdTbk5UYWtaWFlsaG9URmxXV2t0ak1rNUhZa1pvVjAweFNqSldWbEpIWVRGWmVGcElTbWhTTTFKVVZGVmFkMkZHV25STlNHaFdUVlUxV0ZZeWVHOWhNVW8yWWtjNVZWWnNXak5VVlZwelZteGtjMVJzWkZkaVNFSmFWMVpXVjFVeFduSk5XRlpvVWpKb1lWcFhkR0ZOTVZaelYyeGthMUl3TlVkVWJGcHJWR3hhV0dRemNGZGlXR2hVVlhwQmVGTkdUbGxpUms1b1RXeEtWbGRYTVhwTlZscFhZa2hLWVZKNmJGaFphMXAzWld4WmVVNVhkRlZoZWtaWVdUQm9jMVl3TVhGU2EyaGFWak5vYUZreWN6RlhWMHBIWVVkb1RsZEZTbEpXTVZwaFdWWk5lVlJ1VWxWaE1WcFpXV3RrVTJOR1ZuRlJWRUpPVW0xU1dsa3dWbXRXTWtwWFVtcE9WVlpzV25wWlZWcExZMnMxV0U5V2NHaE5iV2hGVm1wR1lXRXhaRWhXYTJSVllrVTFiMXBYZEdGVFZscHhVMnBTVjAxV1ZqVlZiR2gzVlcxS2NrNVdaRnBpUmtwSVZtdGFXbVZYVmtoa1IzQnBVbTVDVjFaWE1UUmhNVkp6VjI1V1VtRnNjRmxXYTFaTFlVWmFjVkp0ZEZOTlYxSXhWa2Q0VTJGRk1YUmhSemxYVmpOU1dGZFdaRTlqTVZwMVVteFNhRTB4U2xaV2JURTBVekF4UjJKR1dsaGhlbXhZVkZaYWQxTkdXWGxqUlhSWFRXdHdTVlpIY0ZOV1YwVjVWV3M1WVZKRlJqUlZNV1JIVWpKR1IyRkdUazVOYldoU1ZtMHdlRTVIUlhoV1dHaFlWMGRvVjFsclpHOWpiRlYzV2taT1YxSnNTbGhXTW5Rd1lrZEtTR1ZHWkZwV1YxRjNWakJhU21ReVRrWmhSbkJPVW01Q01sWnFTbnBsUmtsNFZHNU9VbUpIVW05WlZFNURVMVprVlZOcVVtaE5helV3Vm0xMGExbFdTWGxoUnpsVlZrVktURlpYZUdGak1WWnlXa2RvVGxaVVJUQldWRVp2WWpKR2MxTnNhRlppVjJoWFdXeG9UbVZHV1hkWGJIQnJUVlp3ZVZwRlZURmhWa3AxVVZoa1YxSnNjRlJWVkVaaFkyc3hWMWRyTlZkU2EzQlpWbTAxZDFZeFdrZFhia1pVWVRGd2MxWnRlR0ZOVmxaMFpVZEdhRlpyYkRSVmJHaHJWakpLVlZKVVFscGxhM0JQV2xWa1QxSnRSa2RSYkdScFZtdHdWbFl4WkRCV01sRjRXa2hPV0dFeVVsbFpiR2hEVlVaYWNWRnVaRlJXYkZZMVdrVmpOVll5U2xaalJXeGhWbGRTZGxacVNrdFRSbFp5VDFaV1YySklRalpXYlhCSFdWWmtXRkpyWkdoU2F6VndWVzB3TlU1R1dYaFZhMDVhVmpCV05GWlhOVTlYUm1SSVpVYzVWbUV4V2pOV01GcFRWakZrZFZwSGFGTmlSbXQ1VmxjeE1FMUhSbkpOVm1SVVlXdGFXRlpxVG05VlJteFhWMnR3YkZKck5URlhhMXByWVVkRmQyTkdhRmRTYkZwWFdsVmFTbVZHY0VsVGJXaFRUVEZLVlZaR1ZtRmtNbEp6VjJ0a1lWTklRazlXYWtaaFpXeFplR0ZJVGxWTlZuQjVWR3hqTlZaV1duTlhhazVWVmxad2VsWnRlR3RqTVZKellVZHNWMWRGU2twV01WSkRWakExUjFkdVNrNVhSbHB2VlRCV2QxZEdiRmhrUjBab1VtNUNSMVl5ZERCaE1VbDNUbFZrVldKR2NISldSM2hoVjBkUmVtTkdaR2xYUjJoVlZsaHdRbVZHVGtkVWJHeHBVbXMxYjFSWGVFdFdiR1JZVFZod1RsWnNjRmhaYTJoUFZqSktWbGRzYUZwaE1YQXpWRlZhZDFadFJraGtSbFpvWld0YVdsZHNWbUZoTVZsM1RWaEdWMkpyY0ZoV2ExWjNWRVpWZUZkclpHcGlWVnBJVjJ0YVQxUnJNWFJoUmxwWFlsUkdNMVY2Ums1bFZsSjFWR3hXYVdFelFuaFdWekI0WWpKT1IxWnVVbXhUUjFKelZtMHhVMWRzYTNkV2JYUlhUV3R3V0ZZeWVHOVdNVW8yVm10NFdGWnNjRXRhVm1SSFVtczVWMVpzWkd4aE1XOTVWbTF3UjFsV2JGZFRXR2hoVTBaS1ZGbHJXa3RVTVZwMFpVaGtWRlp0VWxaVlYzaHJWakF4VjFacVZsWmlSMmd6VmxjeFMyTnJOVmRhUm5CcFVtdHdTVlp0ZEdGa01XUklWbXRzVldKSFVuQlZha1pMVG14YWNsa3phR2xOVmxZMFZqSjBZVmRIUm5OalJtaFhZVEZhZVZwVlduTldWa3B6WTBkNFUySldTbUZYVkVKaFdWZEdWMWRZYkdoU2JXaFpXV3RrVW1ReFpGZFhiazVYVFdzMVNGWXllRzloVmtsNFUyNW9WMUp0VVhkWFZscEtaVVpXV1dGR2FHbFhSa3AzVmxkd1EyUXhaSE5pUmxwWVlUSlNXRlJYZEZkT1JtdDNXa2M1V0ZKc2NEQldWM2hQV1ZaYWMyTkhhRnBOYm1nelZXcEdkMUl5UmtkVWF6Vk9ZbGRqZUZadE1UUmhNREZIVjFob1ZWZEhhR2hWYkdSVFZqRnNjbHBHVGxoV2JYZ3dWRlphVDJGck1WZGpSRUpWVm14S1JGWkhjM2hYUjFaSFdrWm9XRk5GU2xsV2JYQkNaVVpLVjFOdVRtRlNia0p2VkZaV2QySXhXbkZUYWxKYVZtMVNTRlp0TlZkWFIwcElWV3M1V2xZelVtaFZNRnByWXpGa2RGSnNaRTVoZWxZMlYxUkNWMkl4VlhsVGEyaFdZWHBzVmxadWNFZGtiRlY1WlVad2JGSnNXbmxaTUdRMFZUSkdObEpVUWxkV1JWcDJXWHBHVm1WV1NsbGlSbHBwVmtkNFdGZFhlRzlpTVZKSFYyNUtXR0pWV25GVVYzUmhVakZhU0dWR1RsVmlSbkF4VlZab2ExZEhTa2RYYmtaVllrZFNSMXBFUVhoV01XUnlUbFprVTJFelFscFdiVEF4WkRGWmVGZHJaRmhpYTFwVldWUkdkMk14V25SbFIwWnNZa2Q0ZVZZeU5XdGhSbHAwVld0c1dsWlhUVEZXYWtwTFZsWktWVkZzY0d4aE0wSlFWMnhXWVdFeVVsZFdiazVWWWxkNFZGUldWbmRXYkZsNFdrUlNhVTFyYkROVWJHaFBWMGRLY2xkc1ZscFdNMUpNVmtSR1YyUkhWa2xhUjNocFVteFpNVlpIZUZaT1YwWklVMnRhYWxKdGVHRldiRnAzWld4YWNWTnJXbXhTYkhCYVdWVmtSMVV3TUhsaFJGcFhZbGhDU0ZkV1dtdFhSa3B5V2tkR1UxWkdXblpXUmxKRFV6Rk9SMWR1VW14U00xSlFWV3BDVjA1R1dsaE9WazVXVFd0d2VWUnNXbk5YYkdSSlVXdG9WMDFHY0hwV01HUlRVbTFTU0dOSGJGTmlSM1ExVm14amVFMUZNVWhTYmxKVFlXeHdXRmxyWkc5WFZteFZVbTVrYW1KSGVGaFdNblF3WVdzeGNrNVZhRnBoTVhCeVZsUktTMUp0VGtaaVJtUllVMFZLUkZaR1dtdFViVlpIWTBWc1ZHSlhhRlJVVkVaTFZsWmFSMVp0Um10TmExcElWakkxVTFSc1RraGhSbVJWVm14VmVGWXdXbHBsVjFaSVQxZG9UbFpYT0hsWFYzUnFUbFphVjFkdVRsaGhhelZXVm14YWQyRkdXWGRXVkVaWFlrWktlbGRyVlRGaFJUQjNVMnQwVjAxV2NGaFdha1pXWlVaa2MyRkdVbWhOYkVwNFZsZHdTMkl4V1hoVmJGcGhVbXMxV1ZWdGVGZE5NVmw1WkVSQ2FFMVZiRE5aTUZaclZsZEtSMk5JU2xkU00yaG9WakJWTlZOWFNrZGFSMnhYVWxac05sWnNaSGRUTVU1MFZteGtWMkpIZUhCVmJYTXhZakZTV0dWRmRGZGlSMUpaV2tWa01GUXhTWGRpUkZKWFlsUldTRlpYTVV0V2JHUnpZVVp3YUUxWVFYcFdSbHBoWTIxUmVGcElVbXRTTW1oUFdWUk9RMU5XWkZWUmJUbHFUVlpzTTFSV2FFZFZNa1Y1WVVkR1YyRXhXbWhWZWtaM1ZteGtkR1JIY0dsV1ZuQkpWMVpXYTJJeFVuUlRhMXBwVWtad1dGbHNhRk5qYkZKeVdrVmFiRkpyTlRGV1IzaFhZVmRGZWxGdVpGZFdla0kwVmxSR2ExSXhXblZVYldoVFZsaENVRmRYZEdGa01VNUhWMWhzVGxaWFVsbFZha0ozVjBaWmVXUkhPVmhTTUZZMVdWVldORmRHV25OalJYaGhVbGRTU0ZWcVNrZFNNV1IwWWtaT1RtSlhhRWRXYlRGM1VqRnNXRkpZYUdGU1YyaFlXVlJLYjFWV1duUmxTR1JWVFZkNFdsa3dXbXRVTWtwSFkwaHdXRmRJUWtoV2ExVjRWMGRXUjJGR1drNWliV2g1VjFaa05GUXhTbkpPVm1SaFVtNUNjRlZ0ZEhkVFZscDBaRWRHV0dKV1dsbFdiWFJ2WVRGSmVsRnVRbFppVkZaRVZtcEdZVmRGTVZWVmJXeE9WbXhaTVZaWGVHOWtNVlowVTJ0b1ZtSkhhR0ZaYTFwTFVqRlNWbGR0ZEZkTlYxSXdXa1ZhVDFSc1dYaFRhbEpYWVd0dk1GVjZSbXRTTVU1WllrZG9VMkpYYUZsWFYzaHZWVEZrUjFwR1pHRlNiVkp4VkZaa1UwMVdWblJsUlRsb1ZtMVNTRlV5TlhOV01rcFZVbFJDVm1WcmNGaFpla3BMVWpGa2RGSnNVbE5XUmxveVZtMHdlRTVIVVhsV2JHUm9UVEpTYUZWc1pGTlhSbEpZWkVoa1ZGWnNjRWxaTUZwUFZqRlpkMVpxVmxkV00yaFFWMVphWVdNeVRraGhSMFpUWWtoQ1ZWZHJWbUZUTWsxNFZtNU9WV0pIYUZSV2JHaERZVVphZEdORlpHaE5SRlpJVmpGb2IyRldTblJoUmxwYVZrVndWRll3V25Oa1IxWkdaRWR3VGxac1dYcFdiWGhUVWpGYVZrMVdaRlJpUjJoWVZGZHdWMVZHV2tWU2JVWnJWbXRhZVZkcldtOWhSVEZXWTBWV1YyRnJTbWhWTWpGU1pWWlNjbHBIUmxOaVZrcDNWbXBDVjFNeFdsZFhibEpxVWxoU1ZWUldWVEZUVmxaMFpFaE9XRkl3Y0VsV1Z6QTFWMnhhUmxkcVRsZFNWbkJ5V1hwR2QxSldWbk5YYXpWb1pXeGFXbFp0TUhkTlZsVjRWbGhzVkdFeGNGQldiVEZ2V1Zac2MyRkdUbFJTYkVvd1dsVmtSMkZyTVZsUmExcFhWak5vTTFacVNrdFNNV1JWVW14a2FFMVlRakpYVjNCTFVqSk5lRlJ1VG1oU2JIQndWbXBLYjFkR1pGZGFSRUpyWVhwR1NGWXhhR3RYUjBweVRsWm9WMkpZVWpOVVZscGhVMGRPTmxadGFGZGhNMEY0Vmxaa2QxVXhXWGhYYTFwcVVrVTFWMVpyVm1GaFJtdDVZek5vVjAxWFVucFpWV1J6WVZaa1NHRkdhRmRpVkVJMFZHdGtVbVZXVm5WVWJHaHBZa1Z3VUZadGVHRmtNazE0VjI1U2JGSXdXbk5aYTFwM1RVWndWbUZIZEdoU2JIQXdWbGQwYjFack1YRlJWRVpYWVd0d1RGWnNXa3RXVmtaelkwZDRhRTFZUW5aV2JURjNVakZaZVZWc1pGWmlhelZZV1d4a05GWkdVbGRXYm1SV1ZteHdNRlJWYUc5VWJFbDRVbXBTV0dFeGNISldNR1JMWTJ4a2MxWnNjRmROTW1oTlYxZHdSMVV4V1hoYVNFcGhVbFJzVkZscldscE5WbHBJWlVkR1ZVMVdiRFZWTW5oaFlXeEtXR0ZIUmxWV1ZuQXpXVEo0WVdOV1RuSmFSM0JvWld4YVlWWnFTalJrTVZKMFUyNVNhRko2YkZsV2ExWmhZVVpXY1ZKdGRGaFNhM0I1V1ZWa2QxVXhXa2RYYkd4WFVteHdXRnBIYzNoV01XUlpZVVpvYVZJeFNtaFdiWEJEVmpBMVIxZHNhRTlXYXpWWFZGZDBkMlZXVW5OWGJrNVlZbFZXTkZrd1pHOVdNREZYWTBkb1lWSlhVbGhWYlRGVFVqRldjMVJ0YkZOaVdGRXhWbTE0WVZsV1ZYaFRXR3hUVjBkb1ZWbHRkSGRqVmxWM1drYzVXRkpzU2xsVWJHTTFWbFpLZEdWR2FGZE5ibEl6V1d0YVMyTnJOVmxqUm1ScFYwZG9NbFp0Y0VKa01sWllVbXRvVUZadFVsaFZiR1F6VFVaYWRHTkZaRmhpVmxwSVdUQldjMVpIU2xoaFJsSlZWa1ZhVEZac1dtRlNNVnAwVW0xMFRsWXhTbGxXYWtvd1lURmtTRk5zV2xoaWExcFdWbXhhUzFkR1ZYZFhiSEJzVmxSV1dGWkhlRmRVYkZwMVVXeGtXRll6VW1oWmFrWnJaRVpPY2xwR2FHaGhlbFpaVmtaYVlXUXdNSGhYYmxKT1ZsZFNWRmxZY0hOWFJtUnlXa2M1YVZJd1ZqUlpNRlozVmpBeFYxTnJVbGRoYTBWNFZXcEdhMWRYU2tkVmJXeFRUVEpvTWxac1kzZGxSMGw0V2tWa2FWTkZjRmxaYlRGVFZteFdkRTVWVGxSU2JHdzFWR3hrTUZack1VVlNiR2hXVFdwV00xWXdaRVpsUjA1SFVXeGthR0V4Y0UxWFdIQkhXVmRPVjFkdVRtRlNNbmhZVld4YVYwMHhXblJOV0dSVFRWZFNNRlp0ZEd0V01rcElaVWhDVm1KWVRYaFpNRnB6WTJ4YWRWcEdaR2xTTVVwYVZrWmFVMVV4V2taTldFcFBWbTFvWVZSVlduZGpiRmwzV2tWMFUwMXJOVXBXUjNoM1lVVXhXVkZ0T1ZkaGExcG9WbFJLVG1WR1pIVlZiRTVwVW14d1VGWnRNREZSTURWeldrWldVbUpGTlZSVVZscHpUa1pWZVdOSFJsZE5hM0I1V1RCYWIxWnRTbGxoUkU1aFZqTm9NMVZ0ZUhkU2JIQkhWR3MxV0ZKVmNFcFdNVkpEV1ZkSmVGWlliRlJoTW5oVFdWUktiMWRHYkhKWGEzUldVbTE0TUZremNFZFdNREZ5Vm1wYVdtRXlVWGRXVkVwWFpFZFdTRTlXWkdsU2JrSlJWbTB3ZUZNeFNYaGFTRlpUWWxkb1ZGWnJWbUZYVmxwWVkwVmtXR0Y2UmtoWGEyaFRWMnN4ZFdGRmVGZGlSa3BJVm10YWQxWXhXbkphUjJ4VFlUTkNOVll4YUhOV01VNUhWVzVTYTFKc1NsWldiRnBoVkZaa1dWWnJXbFZpVjFKdlYxaGpiRXBYV1RSVk1uQlRXV3RWSlhKMFNGSTFhR0klSGJNUTVYQw%%WRXZsuN');
INSERT INTO `modx_system_settings` VALUES ('reload_emailsubject','');
INSERT INTO `modx_system_settings` VALUES ('emailsubject_default','Данные для авторизации');
INSERT INTO `modx_system_settings` VALUES ('reload_signupemail_message','');
INSERT INTO `modx_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('reload_websignupemail_message','');
INSERT INTO `modx_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('reload_system_email_webreminder_message','');
INSERT INTO `modx_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');
INSERT INTO `modx_system_settings` VALUES ('resource_tree_node_name','pagetitle');
INSERT INTO `modx_system_settings` VALUES ('rb_webuser','0');
INSERT INTO `modx_system_settings` VALUES ('mce_editor_skin','default');
INSERT INTO `modx_system_settings` VALUES ('mce_template_docs','');
INSERT INTO `modx_system_settings` VALUES ('mce_template_chunks','');
INSERT INTO `modx_system_settings` VALUES ('mce_entermode','p');
INSERT INTO `modx_system_settings` VALUES ('mce_element_format','xhtml');
INSERT INTO `modx_system_settings` VALUES ('mce_schema','html4');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons3','');
INSERT INTO `modx_system_settings` VALUES ('tinymce_custom_buttons4','');
INSERT INTO `modx_system_settings` VALUES ('tinymce_css_selectors','left=justifyleft;right=justifyright');
INSERT INTO `modx_system_settings` VALUES ('sys_files_checksum','a:4:{s:44:\"/usr/home/crystalwater/public_html/index.php\";s:32:\"3ec950d7c5d3839a512947acd709c0fe\";s:44:\"/usr/home/crystalwater/public_html/.htaccess\";s:32:\"7123a53317fca37dfa2eb82e8f4af6f9\";s:52:\"/usr/home/crystalwater/public_html/manager/index.php\";s:32:\"31b526d4e4293014d66883d7d0bf1cde\";s:66:\"/usr/home/crystalwater/public_html/manager/includes/config.inc.php\";s:32:\"5e13fcf1e54ddc7f019687de12d77559\";}');

# --------------------------------------------------------

#
# Table structure for table `modx_user_attributes`
#

DROP TABLE IF EXISTS `modx_user_attributes`;
CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `modx_user_attributes`
#

INSERT INTO `modx_user_attributes` VALUES ('3','3','','1','kim_55@bigmir.net','','','0','0','0','41','1389871754','1389884431','0','362d549d6cbb17a359eed9e59da36976','0','0','','','','','','','','');

# --------------------------------------------------------

#
# Table structure for table `modx_user_messages`
#

DROP TABLE IF EXISTS `modx_user_messages`;
CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `modx_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `modx_user_roles`
#

DROP TABLE IF EXISTS `modx_user_roles`;
CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `modx_user_roles`
#

INSERT INTO `modx_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','1','0','0','1');
INSERT INTO `modx_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','1','0','1','0','0','1');
INSERT INTO `modx_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');

# --------------------------------------------------------

#
# Table structure for table `modx_user_settings`
#

DROP TABLE IF EXISTS `modx_user_settings`;
CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `modx_user_settings`
#

INSERT INTO `modx_user_settings` VALUES ('3','allow_manager_access','1');

# --------------------------------------------------------

#
# Table structure for table `modx_web_groups`
#

DROP TABLE IF EXISTS `modx_web_groups`;
CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_attributes`
#

DROP TABLE IF EXISTS `modx_web_user_attributes`;
CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `modx_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_user_settings`
#

DROP TABLE IF EXISTS `modx_web_user_settings`;
CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `modx_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `modx_web_users`
#

DROP TABLE IF EXISTS `modx_web_users`;
CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `modx_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_access`
#

DROP TABLE IF EXISTS `modx_webgroup_access`;
CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `modx_webgroup_names`
#

DROP TABLE IF EXISTS `modx_webgroup_names`;
CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `modx_webgroup_names`
#
