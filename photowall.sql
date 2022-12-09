-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2022-12-09 14:27:03
-- 服务器版本： 5.6.50-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photowall`
--

-- --------------------------------------------------------

--
-- 表的结构 `design_actions`
--

CREATE TABLE IF NOT EXISTS `design_actions` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手册名称',
  `weigh` int(11) DEFAULT NULL COMMENT '排序',
  `isarrow` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有无图标:1=无图标,2=有图标',
  `acontents` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作手册管理';

--
-- 转存表中的数据 `design_actions`
--

INSERT INTO `design_actions` (`id`, `name`, `weigh`, `isarrow`, `acontents`, `createtime`, `updatetime`) VALUES
(1, '如何制作照片墙', 1, '1', '如何制作照片墙', '1670315230', '1670315243'),
(2, '如何制作横幅', 2, '1', '如何制作横幅', '1670315238', '1670315238'),
(3, '如何洗照片', 3, '2', '如何洗照片', '1670315255', '1670315255'),
(4, '联系我们', 4, '2', '联系我们', '1670315260', '1670315260'),
(5, '关于我们', 5, '2', '关于我们', '1670315267', '1670315267');

-- --------------------------------------------------------

--
-- 表的结构 `design_admin`
--

CREATE TABLE IF NOT EXISTS `design_admin` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号码',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

--
-- 转存表中的数据 `design_admin`
--

INSERT INTO `design_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `mobile`, `loginfailure`, `logintime`, `loginip`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', '31398f5c5cea77d5ae27c118ce2dd799', '75a369', '/uploads/5f278861fd809a0a6e5cd58f740c6226.png', 'admin@admin.com', '', 0, 1670451704, '122.191.194.0', 1491635035, 1670451704, '073fe44c-ec60-488a-89a2-51140713ddda', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `design_admin_log`
--

CREATE TABLE IF NOT EXISTS `design_admin_log` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` bigint(16) DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';

--
-- 转存表中的数据 `design_admin_log`
--

INSERT INTO `design_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1, 0, 'Unknown', '/anfxzPowJW.php/index/login', '', '{"__token__":"***","username":"admin","password":"***","captcha":"hgrv"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670313447),
(2, 1, 'admin', '/anfxzPowJW.php/index/login', '登录', '{"__token__":"***","username":"admin","password":"***","captcha":"x4zw"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670313451),
(3, 1, 'admin', '/anfxzPowJW.php/addon/install', '插件管理', '{"name":"command","force":"0","uid":"53296","token":"***","version":"1.1.0","faversion":"1.3.4.20220530"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670313490),
(4, 1, 'admin', '/anfxzPowJW.php/addon/state', '插件管理 / 禁用启用', '{"name":"command","action":"enable","force":"0"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670313491),
(5, 1, 'admin', '/anfxzPowJW.php/addon/install', '插件管理', '{"name":"tinymce","force":"0","uid":"53296","token":"***","version":"1.0.6","faversion":"1.3.4.20220530"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670313705),
(6, 1, 'admin', '/anfxzPowJW.php/addon/state', '插件管理 / 禁用启用', '{"name":"tinymce","action":"enable","force":"0"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670313705),
(7, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314411),
(8, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314413),
(9, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314416),
(10, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314416),
(11, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314435),
(12, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314440),
(13, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314446),
(14, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314448),
(15, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314448),
(16, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314482),
(17, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314485),
(18, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314487),
(19, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314487),
(20, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314494),
(21, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314496),
(22, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_fontcolor"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314497),
(23, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["fontcolor"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314499),
(24, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314500),
(25, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Fontcolor.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314502),
(26, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Fontcolor.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314502),
(27, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314525),
(28, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_sourcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314526),
(29, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_sourcman","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314527),
(30, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_sourcman","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314528),
(31, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314531),
(32, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314533),
(33, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_sourcman"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_sourcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314534),
(34, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["urcman"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"urcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314535),
(35, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314535),
(36, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Sourcman.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314537),
(37, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Sourcman.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314537),
(38, 1, 'admin', '/anfxzPowJW.php/fontcolor/add?dialog=1', '文字配色管理 / 添加', '{"dialog":"1","row":{"colorcontent":"\\r\\n''#7f284b'',''#4e172c'',''#fea002'',''#fd8c02'',''#fffd06'',''#d2ff02'',''#ff5fcb'',''#fe798e'',''#000000'',''#FFFFFF''\\r\\n"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314580),
(39, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314623),
(40, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314624),
(41, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314627),
(42, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_fontcolor","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314628),
(43, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314631),
(44, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_fontcolor"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_fontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314632),
(45, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["dontcolor"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"dontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314633),
(46, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["ontcolor"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"ontcolor"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314634),
(47, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314635),
(48, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Fontcolor.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314636),
(49, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Fontcolor.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314636),
(50, 1, 'admin', '/anfxzPowJW.php/fontcolor/edit/ids/1?dialog=1', '文字配色管理 / 编辑', '{"dialog":"1","row":{"colors":"''#7f284b'',''#4e172c'',''#fea002'',''#fd8c02'',''#fffd06'',''#d2ff02'',''#ff5fcb'',''#fe798e'',''#000000'',''#FFFFFF''"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314650),
(51, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314679),
(52, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314679),
(53, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314679),
(54, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314680),
(55, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314680),
(56, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314680),
(57, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314680),
(58, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"爱心","simages":"\\/uploads\\/20221206\\/0a7771bbc80d814176f58e4cd56e70ad.png,\\/uploads\\/20221206\\/4d13235fb17e8874a3313da43fcf3023.png,\\/uploads\\/20221206\\/6abe1512af3f114ed8fe883a172d1264.png,\\/uploads\\/20221206\\/17fce436727364a5ee0734230e108d79.png,\\/uploads\\/20221206\\/4c1e763e3488202a12d4847c605ce1f4.png,\\/uploads\\/20221206\\/60f0c6672c450e7bc2853e0c88bd129b.png,\\/uploads\\/20221206\\/cf36606165dc55ebbb2e11f44ac5b0f3.png"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314685),
(59, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314737),
(60, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_sourcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314738),
(61, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_sourcman","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314741),
(62, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_sourcman","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314741),
(63, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314744),
(64, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314746),
(65, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_sourcman"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_sourcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314747),
(66, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["urcman"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"urcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314748),
(67, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314749),
(68, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314749),
(69, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314751),
(70, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314753),
(71, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_sourcman"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_sourcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314754),
(72, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["sourcman"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"sourcman"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314756),
(73, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314756),
(74, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Sourcman.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314757),
(75, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Sourcman.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314759),
(76, 1, 'admin', '/anfxzPowJW.php/sourcman/edit/ids/1?dialog=1', '照片墙素材管理 / 编辑', '{"dialog":"1","row":{"name":"爱心","simages":"\\/uploads\\/20221206\\/0a7771bbc80d814176f58e4cd56e70ad.png,\\/uploads\\/20221206\\/4d13235fb17e8874a3313da43fcf3023.png,\\/uploads\\/20221206\\/6abe1512af3f114ed8fe883a172d1264.png,\\/uploads\\/20221206\\/17fce436727364a5ee0734230e108d79.png,\\/uploads\\/20221206\\/4c1e763e3488202a12d4847c605ce1f4.png,\\/uploads\\/20221206\\/60f0c6672c450e7bc2853e0c88bd129b.png,\\/uploads\\/20221206\\/cf36606165dc55ebbb2e11f44ac5b0f3.png","weigh":"1"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314767),
(77, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314791),
(78, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314791),
(79, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314792),
(80, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314792),
(81, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314792),
(82, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314792),
(83, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314792),
(84, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314795),
(85, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314797),
(86, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314797),
(87, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314798),
(88, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314799),
(89, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314799),
(90, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314804),
(91, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314806),
(92, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314809),
(93, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"表情包","simages":"\\/uploads\\/20221206\\/ae8d3e77c7d518046cbe8b3ac994e170.png,\\/uploads\\/20221206\\/2bedd2e6b6370577aa3fad8336cd6d9d.png,\\/uploads\\/20221206\\/9f789d5766251bad0b073a8cb3a9cb35.png,\\/uploads\\/20221206\\/ca037cb79f81cad193a518e74204bbac.png,\\/uploads\\/20221206\\/acc8fcb8011958ad01640beca1b7f59e.png,\\/uploads\\/20221206\\/2f24ef84ab0a470759535f538f7e6360.png,\\/uploads\\/20221206\\/73ba820e0afdd07fb25f5e93d592c6d3.png,\\/uploads\\/20221206\\/e0a0997fafc807312f4bd923702d5f45.png,\\/uploads\\/20221206\\/95016eb1ff9741bbb83e1475f0279975.png,\\/uploads\\/20221206\\/135b5ec6e0ef38fecff3b6b809aff38a.png,\\/uploads\\/20221206\\/6fb04345cb82a75779a5517dd6c36d75.png,\\/uploads\\/20221206\\/836c6e8708c251ca874c273693cf7d68.png,\\/uploads\\/20221206\\/13133459ef6c01dd05c644d158b54157.png,\\/uploads\\/20221206\\/325ece059a25e17a973244199a4b2ea7.png,\\/uploads\\/20221206\\/ef19af7599a1963f8091c58eb6cad7bc.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314810),
(94, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314810),
(95, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314831),
(96, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314831),
(97, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314832),
(98, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314832),
(99, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314832),
(100, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314832),
(101, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314833),
(102, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314833),
(103, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314835),
(104, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314835),
(105, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"氛围点缀","simages":"\\/uploads\\/20221206\\/829ed1872e29e6be4885863d09c0145d.png,\\/uploads\\/20221206\\/1082c42cf2298add532f792973053c62.png,\\/uploads\\/20221206\\/1f1465ac97380c7893b853eae84b626f.png,\\/uploads\\/20221206\\/ed16d2beaf67ad35cad0401ee0f5387d.png,\\/uploads\\/20221206\\/3a64ab77969fcef91c26d4ccaa96f493.png,\\/uploads\\/20221206\\/78c6ee2bb497f691805aef9ee398309b.png,\\/uploads\\/20221206\\/053ff599a03c57dc2c6fbf326315c1d5.png,\\/uploads\\/20221206\\/e35d61f0b915c02efdeb99eb59a1af11.png,\\/uploads\\/20221206\\/b82cb750ed137c57aefb076344b5e240.png,\\/uploads\\/20221206\\/8a586cc04fb8f98a571029cf53df2a20.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314838),
(106, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314850),
(107, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314851),
(108, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314852),
(109, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314852),
(110, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314852),
(111, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314853),
(112, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"父亲节","simages":"\\/uploads\\/20221206\\/1ae215bc685e10bf4f0ddce2e938921d.png,\\/uploads\\/20221206\\/e8dc0f5a6386487833f1e99df0ebc429.png,\\/uploads\\/20221206\\/2bc2a544f8f0c7ae31729f2a067730e8.png,\\/uploads\\/20221206\\/40ca9cde342744d2232f21a3b5acd013.png,\\/uploads\\/20221206\\/30cc0699bf04127028158eb16552422e.png,\\/uploads\\/20221206\\/507a9d9ca796db38883c474046bc4324.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314868),
(113, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314880),
(114, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314881),
(115, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314881),
(116, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314881),
(117, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314883),
(118, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314884),
(119, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314884),
(120, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314889),
(121, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"教师节","simages":"\\/uploads\\/20221206\\/42dd83d5ec88244c51b9ef7dbcd50631.png,\\/uploads\\/20221206\\/b02894b28844c0e4617ffc3fdf95f436.png,\\/uploads\\/20221206\\/9a723ad2aa36142ab777a080cf522079.png,\\/uploads\\/20221206\\/69e68b2748e065da474ab4f8fa1a3531.png,\\/uploads\\/20221206\\/0dcc99efc0e0287b69ca34d35ae84d19.png,\\/uploads\\/20221206\\/0a9c70f07adfb24bdab4e78d66bd6b2e.png,\\/uploads\\/20221206\\/63bafe88842dc0cd5265dda0318bb3ba.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314891),
(122, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314904),
(123, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314904),
(124, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314905),
(125, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314905),
(126, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314906),
(127, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314907),
(128, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314907),
(129, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314907),
(130, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314909),
(131, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"母亲节","simages":"\\/uploads\\/20221206\\/646ea81b8eb6c0268062d5c20281f0ce.png,\\/uploads\\/20221206\\/3f5ed6fece62520f04439b7ef2c6ff8f.png,\\/uploads\\/20221206\\/b678ad8252b53065833825b7b5d0d5bd.png,\\/uploads\\/20221206\\/b4323486b0da5f4113b3977340c11b8e.png,\\/uploads\\/20221206\\/9040ebb9177aa26dbf3a475442dbb22f.png,\\/uploads\\/20221206\\/1ce793984551a943c8d9e895325606f9.png,\\/uploads\\/20221206\\/24df5ab9502b5fe33c3613b6e7298066.png,\\/uploads\\/20221206\\/2ca2e90e4538563ac55b00e7ade1f71d.png,\\/uploads\\/20221206\\/c7bccf601e17ba6b47a2970916466fd0.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314923),
(132, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314937),
(133, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314938),
(134, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314938),
(135, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314938),
(136, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314939),
(137, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"气球","simages":"\\/uploads\\/20221206\\/01de1d3470efd49b81a2aff09f3929fa.png,\\/uploads\\/20221206\\/71c0f5f2b56576843020c0f063e8b88e.png,\\/uploads\\/20221206\\/056870b2a51f2b8a3b1ad9e98eac3f3b.png,\\/uploads\\/20221206\\/5a74a10368120e639596be821690b5e0.png,\\/uploads\\/20221206\\/5a74a10368120e639596be821690b5e0.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314942),
(138, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314980),
(139, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314980),
(140, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314981),
(141, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314981),
(142, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"生日快乐","simages":"\\/uploads\\/20221206\\/f279c46e208e42ee843dd38c476c156a.png,\\/uploads\\/20221206\\/016efd06e0692b71df2cef0ccb64257d.png,\\/uploads\\/20221206\\/65df7af9555c0f8f54d0ae5604ecdda4.png,\\/uploads\\/20221206\\/cabd05cae33132eb96d7880c7c6bdf1f.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670314984),
(143, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315006),
(144, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315007),
(145, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315007),
(146, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315008),
(147, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315008),
(148, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315009),
(149, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315009),
(150, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315013);
INSERT INTO `design_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(151, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315019),
(152, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315032),
(153, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315036),
(154, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315037),
(155, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"圣诞","simages":"\\/uploads\\/20221206\\/5c2479da9167a34ab347e62da660629d.png,\\/uploads\\/20221206\\/4f327e42b8436e04acc494964a3c49e5.png,\\/uploads\\/20221206\\/fb324c12e33e93183f9b10afdbb3eb8a.png,\\/uploads\\/20221206\\/49e844fe958c953eebe338d6dd5a9468.png,\\/uploads\\/20221206\\/a53cbd47bb2264eba390aacdbd5306a7.png,\\/uploads\\/20221206\\/3f0430e71bcf7697a19f82611c04a5c7.png,\\/uploads\\/20221206\\/435a8d09ef503443ec3ba702e48740d7.png,\\/uploads\\/20221206\\/5fd133baa8a46694120be6d7fa592ad9.png,\\/uploads\\/20221206\\/4b1b9fb9d815a55982f75cdbc95872da.png,\\/uploads\\/20221206\\/a1303b3f74bc0ddcf3d61f475541f900.png,\\/uploads\\/20221206\\/7fc033905d5a8b03d185a2be0653fe06.png,\\/uploads\\/20221206\\/7e02d5630b7afa62a6e06bf1fc07234e.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315053),
(156, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315069),
(157, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315069),
(158, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315069),
(159, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315070),
(160, 1, 'admin', '/anfxzPowJW.php/sourcman/add?dialog=1', '照片墙素材管理 / 添加', '{"dialog":"1","row":{"name":"喜字素材","simages":"\\/uploads\\/20221206\\/8be0f5ec85e845bd593333eac4cb1a28.png,\\/uploads\\/20221206\\/f54bb00c69a18b316c7633d725559d6d.png,\\/uploads\\/20221206\\/963f7b2287014dc943a22d0450d7229c.png,\\/uploads\\/20221206\\/d456341eaca20e86c1895e7daf936c64.png","weigh":""}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315071),
(161, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315088),
(162, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_phototem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315090),
(163, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_phototem","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315092),
(164, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_phototem","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315092),
(165, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315096),
(166, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_phototem"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_phototem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315097),
(167, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["phototem"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"phototem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315098),
(168, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315099),
(169, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Phototem.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315100),
(170, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Phototem.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315101),
(171, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315155),
(172, 1, 'admin', '/anfxzPowJW.php/phototem/add?dialog=1', '照片墙模板管理 / 添加', '{"dialog":"1","row":{"picimage":"\\/uploads\\/20221206\\/77c9275b0ca55fcbfa786b77c1b188b4.jpg","name":"爱心照片墙"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315156),
(173, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315168),
(174, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_actions","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315170),
(175, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_actions","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315171),
(176, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315173),
(177, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_actions"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315174),
(178, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["ctions"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"ctions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315176),
(179, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315176),
(180, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Actions.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315179),
(181, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Actions.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315180),
(182, 1, 'admin', '/anfxzPowJW.php/actions/add?dialog=1', '操作手册 / 添加', '{"dialog":"1","row":{"name":"如何制作照片墙","weigh":"","isarrow":"1","acontents":"测试测试"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315230),
(183, 1, 'admin', '/anfxzPowJW.php/actions/add?dialog=1', '操作手册 / 添加', '{"dialog":"1","row":{"name":"如何制作横幅","weigh":"","isarrow":"1","acontents":"如何制作横幅"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315238),
(184, 1, 'admin', '/anfxzPowJW.php/actions/edit/ids/1?dialog=1', '操作手册 / 编辑', '{"dialog":"1","row":{"name":"如何制作照片墙","weigh":"1","isarrow":"1","acontents":"如何制作照片墙"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315243),
(185, 1, 'admin', '/anfxzPowJW.php/actions/add?dialog=1', '操作手册 / 添加', '{"dialog":"1","row":{"name":"如何洗照片","weigh":"","isarrow":"2","acontents":"如何洗照片"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315255),
(186, 1, 'admin', '/anfxzPowJW.php/actions/add?dialog=1', '操作手册 / 添加', '{"dialog":"1","row":{"name":"联系我们","weigh":"","isarrow":"2","acontents":"联系我们"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315260),
(187, 1, 'admin', '/anfxzPowJW.php/actions/add?dialog=1', '操作手册 / 添加', '{"dialog":"1","row":{"name":"关于我们","weigh":"","isarrow":"2","acontents":"关于我们"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315267),
(188, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315325),
(189, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_actions","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315329),
(190, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_actions","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315329),
(191, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315333),
(192, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315334),
(193, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_actions"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315335),
(194, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["ctions"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"ctions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315335),
(195, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315336),
(196, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Actions.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315337),
(197, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Actions.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315338),
(198, 1, 'admin', '/anfxzPowJW.php/auth/rule/edit/ids/110?dialog=1', '权限管理 / 菜单规则 / 编辑', '{"dialog":"1","__token__":"***","row":{"ismenu":"1","pid":"0","name":"actions","title":"操作手册管理","url":"","icon":"fa fa-circle-o","condition":"","menutype":"addtabs","extend":"","remark":"","weigh":"0","status":"normal"},"ids":"110"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670315363),
(199, 1, 'admin', '/anfxzPowJW.php/fontcolor/edit/ids/1?dialog=1', '文字配色管理 / 编辑', '{"dialog":"1","row":{"colors":"#7f284b,#4e172c,#fea002,#fd8c02,#fffd06,#d2ff02,#ff5fcb,#fe798e,#000000,#FFFFFF"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670317392),
(200, 1, 'admin', '/anfxzPowJW.php/addon/install', '插件管理', '{"name":"alioss","force":"0","uid":"53296","token":"***","version":"1.2.2","faversion":"1.3.4.20220530"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670325545),
(201, 1, 'admin', '/anfxzPowJW.php/addon/isbuy', '插件管理', '{"name":"alioss","force":"0","uid":"53296","token":"***","version":"1.2.2","faversion":"1.3.4.20220530"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670325553),
(202, 1, 'admin', '/anfxzPowJW.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{"__token__":"***","row":{"name":"设计师","beian":"","version":"1.0.1","timezone":"Asia\\/Shanghai","forbiddenip":"","languages":"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}","fixedpage":"dashboard"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670325924),
(203, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670326785),
(204, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670326906),
(205, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670327384),
(206, 0, 'Unknown', '/anfxzPowJW.php/index/login', '登录', '{"__token__":"***","username":"admin","password":"***","captcha":"xrde"}', '122.191.194.0', 'Mozilla/5.0 (Linux; Android 6.0.1; OPPO R9s Plus Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/86.0.4240.99 XWEB/4364 MMWEBSDK/20220505 Mobile Safari/537.36 MMWEBID/969 MicroMessenger/8.0.23.2160(0x28001756) WeChat/arm32 Weix', 1670354446),
(207, 1, 'admin', '/anfxzPowJW.php/index/login', '登录', '{"__token__":"***","username":"admin","password":"***","captcha":"ucmm"}', '122.191.194.0', 'Mozilla/5.0 (Linux; Android 6.0.1; OPPO R9s Plus Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/86.0.4240.99 XWEB/4364 MMWEBSDK/20220505 Mobile Safari/537.36 MMWEBID/969 MicroMessenger/8.0.23.2160(0x28001756) WeChat/arm32 Weix', 1670354465),
(208, 1, 'admin', '/anfxzPowJW.php/index/login', '登录', '{"__token__":"***","username":"admin","password":"***","captcha":"wkwa"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670380565),
(209, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670380737),
(210, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670380942),
(211, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381030),
(212, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381376),
(213, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381429),
(214, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381600),
(215, 1, 'admin', '/anfxzPowJW.php/general/attachment/del', '常规管理 / 附件管理 / 删除', '{"action":"del","ids":"84","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381725),
(216, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381761),
(217, 1, 'admin', '/anfxzPowJW.php/general.profile/update', '常规管理 / 个人资料 / 更新个人信息', '{"__token__":"***","row":{"avatar":"\\/uploads\\/5f278861fd809a0a6e5cd58f740c6226.png","email":"admin@admin.com","nickname":"Admin","password":"***"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670381763),
(218, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383818),
(219, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383820),
(220, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_waterphoto","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383822),
(221, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_waterphoto","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383822),
(222, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383826),
(223, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383826),
(224, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_waterphoto"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383827),
(225, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["waterphoto"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383829),
(226, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383829),
(227, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Waterphoto.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383831),
(228, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Waterphoto.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670383831),
(229, 1, 'admin', '/anfxzPowJW.php/general/attachment/del', '常规管理 / 附件管理 / 删除', '{"action":"del","ids":"88,87,86","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670385922),
(230, 1, 'admin', '/anfxzPowJW.php/waterphoto/del', '洗照片提交记录 / 删除', '{"action":"del","ids":"2,1","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670386570),
(231, 1, 'admin', '/anfxzPowJW.php/general/attachment/del', '常规管理 / 附件管理 / 删除', '{"action":"del","ids":"97,96,95,94,93,92,91,90,89","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670386606),
(232, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387399),
(233, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_bannertem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387400),
(234, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_bannertem","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387401),
(235, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_bannertem","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387402),
(236, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387405),
(237, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387405),
(238, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_bannertem"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_bannertem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387407),
(239, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["annertem"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"annertem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387408),
(240, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387408),
(241, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Bannertem.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387409),
(242, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Bannertem.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387410),
(243, 1, 'admin', '/anfxzPowJW.php/ajax/upload', '', '{"category":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387460),
(244, 1, 'admin', '/anfxzPowJW.php/bannertem/add?dialog=1', '横幅模板 / 添加', '{"dialog":"1","row":{"picimage":"\\/uploads\\/17f9ab80b376db125b06d88d219d7518.jpg","name":"横幅A","fontnum":"0"}}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387463),
(245, 1, 'admin', '/anfxzPowJW.php/bannertem/edit/ids/1?dialog=1', '横幅模板 / 编辑', '{"dialog":"1","row":{"picimage":"\\/uploads\\/17f9ab80b376db125b06d88d219d7518.jpg","name":"横幅A","fontnum":"25"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670387506),
(246, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389028),
(247, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389029),
(248, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_bannerecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389031),
(249, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_bannerecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389031),
(250, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389033),
(251, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_bannerecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389034),
(252, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["bannerecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389035),
(253, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389035),
(254, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Bannerecore.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389037),
(255, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Bannerecore.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389037),
(256, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389907),
(257, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389908),
(258, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389910),
(259, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389910),
(260, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389911),
(261, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389913),
(262, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_photorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389914),
(263, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["otorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"otorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389915),
(264, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389915),
(265, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Photorecore.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389917),
(266, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"0","controllerfile_text":"","controllerfile":"Photorecore.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670389917),
(267, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390201),
(268, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390205),
(269, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390207),
(270, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390207),
(271, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390211),
(272, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390212),
(273, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_photorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390213),
(274, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["hotorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"hotorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390214),
(275, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390214),
(276, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Photorecore.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390215),
(277, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Photorecore.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670390216),
(278, 1, 'admin', '/anfxzPowJW.php/photorecore/del', '照片墙提交记录 / 删除', '{"action":"del","ids":"3,2,1","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391451),
(279, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391460),
(280, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391467),
(281, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391470);
INSERT INTO `design_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(282, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391470),
(283, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391473),
(284, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391474),
(285, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_photorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391475),
(286, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["hotorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"hotorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391476),
(287, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391477),
(288, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Photorecore.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391478),
(289, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Photorecore.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670391479),
(290, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392449),
(291, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_phototem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392451),
(292, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_phototem","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392455),
(293, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_phototem","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392455),
(294, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392458),
(295, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_phototem"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_phototem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392459),
(296, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["hototem"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"hototem"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392460),
(297, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392460),
(298, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Phototem.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392462),
(299, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Phototem.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392463),
(300, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Phototem.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392463),
(301, 1, 'admin', '/anfxzPowJW.php/command/execute/ids/27', '在线命令管理 / 运行', '{"ids":"27"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392613),
(302, 1, 'admin', '/anfxzPowJW.php/command/execute/ids/29', '在线命令管理 / 运行', '{"ids":"29"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392615),
(303, 1, 'admin', '/anfxzPowJW.php/phototem/edit/ids/1?dialog=1', '照片墙模板管理 / 编辑', '{"dialog":"1","row":{"picimage":"\\/uploads\\/20221206\\/77c9275b0ca55fcbfa786b77c1b188b4.jpg","name":"爱心照片墙","coordinate":"[{left:93,top:286,width:75,height:117,},{left:108,top:412,width:58,height:62,},{left:171,top:227,width:112,height:119,},{left:171,top:353,width:131,height:143,},{left:197,top:503,width:105,height:62,},{left:236,top:570,width:66,height:63,},{left:288,top:279,width:71,height:67,},{left:307,top:353,width:132,height:143,},{left:307,top:503,width:132,height:142,},{left:338,top:651,width:70,height:67,},{left:464,top:227,width:113,height:119,},{left:443,top:352,width:134,height:143,},{left:443,top:503,width:104,height:62,},{left:444,top:570,width:66,height:63,},{left:582,top:286,width:75,height:117,},{left:582,top:412,width:58,height:62,}]"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670392649),
(304, 1, 'admin', '/anfxzPowJW.php/phototem/edit/ids/1?dialog=1', '照片墙模板管理 / 编辑', '{"dialog":"1","row":{"picimage":"\\/uploads\\/20221206\\/77c9275b0ca55fcbfa786b77c1b188b4.jpg","name":"爱心照片墙","coordinate":"[{&quot;left&quot;:93,&quot;top&quot;:286,&quot;width&quot;:75,&quot;height&quot;:117},{&quot;left&quot;:108,&quot;top&quot;:412,&quot;width&quot;:58,&quot;height&quot;:62},{&quot;left&quot;:171,&quot;top&quot;:227,&quot;width&quot;:112,&quot;height&quot;:119},{&quot;left&quot;:171,&quot;top&quot;:353,&quot;width&quot;:131,&quot;height&quot;:143},{&quot;left&quot;:197,&quot;top&quot;:503,&quot;width&quot;:105,&quot;height&quot;:62},{&quot;left&quot;:236,&quot;top&quot;:570,&quot;width&quot;:66,&quot;height&quot;:63},{&quot;left&quot;:288,&quot;top&quot;:279,&quot;width&quot;:71,&quot;height&quot;:67},{&quot;left&quot;:307,&quot;top&quot;:353,&quot;width&quot;:132,&quot;height&quot;:143},{&quot;left&quot;:307,&quot;top&quot;:503,&quot;width&quot;:132,&quot;height&quot;:142},{&quot;left&quot;:338,&quot;top&quot;:651,&quot;width&quot;:70,&quot;height&quot;:67},{&quot;left&quot;:464,&quot;top&quot;:227,&quot;width&quot;:113,&quot;height&quot;:119},{&quot;left&quot;:443,&quot;top&quot;:352,&quot;width&quot;:134,&quot;height&quot;:143},{&quot;left&quot;:443,&quot;top&quot;:503,&quot;width&quot;:104,&quot;height&quot;:62},{&quot;left&quot;:444,&quot;top&quot;:570,&quot;width&quot;:66,&quot;height&quot;:63},{&quot;left&quot;:582,&quot;top&quot;:286,&quot;width&quot;:75,&quot;height&quot;:117},{&quot;left&quot;:582,&quot;top&quot;:412,&quot;width&quot;:58,&quot;height&quot;:62}]"},"ids":"1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670393273),
(305, 1, 'admin', '/anfxzPowJW.php/auth/rule/multi', '权限管理 / 菜单规则', '{"action":"","ids":"4","params":"ismenu=0"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670394117),
(306, 1, 'admin', '/anfxzPowJW.php/auth/rule/multi', '权限管理 / 菜单规则', '{"action":"","ids":"85","params":"ismenu=0"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670394121),
(307, 1, 'admin', '/anfxzPowJW.php/auth/rule/multi', '权限管理 / 菜单规则', '{"action":"","ids":"85","params":"ismenu=1"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395692),
(308, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395702),
(309, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395703),
(310, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_bannerecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395706),
(311, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_bannerecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395707),
(312, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395717),
(313, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395719),
(314, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_photorecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395720),
(315, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395726),
(316, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_waterphoto","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395727),
(317, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_waterphoto","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395728),
(318, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395731),
(319, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395733),
(320, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_waterphoto"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395734),
(321, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395734),
(322, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_waterphoto"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395736),
(323, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["waterphoto"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"waterphoto"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395737),
(324, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395738),
(325, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["photorecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"photorecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395743),
(326, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395744),
(327, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395749),
(328, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["bannerecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395750),
(329, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395750),
(330, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Waterphoto.php,Photorecore.php,Bannerecore.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395752),
(331, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Waterphoto.php,Photorecore.php,Bannerecore.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395752),
(332, 1, 'admin', '/anfxzPowJW.php/ajax/weigh', '', '{"ids":"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,85,92,98,104,110,122,116,128,134","changeid":"116","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule","pk":"id"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395766),
(333, 1, 'admin', '/anfxzPowJW.php/ajax/weigh', '', '{"ids":"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,85,92,98,104,110,122,116,128,134","changeid":"122","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule","pk":"id"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395773),
(334, 1, 'admin', '/anfxzPowJW.php/auth/rule/edit/ids/122?dialog=1', '权限管理 / 菜单规则 / 编辑', '{"dialog":"1","__token__":"***","row":{"ismenu":"1","pid":"0","name":"bannertem","title":"横幅模板","url":"","icon":"fa fa-circle-o","condition":"","menutype":"addtabs","extend":"","remark":"","weigh":"155","status":"normal"},"ids":"122"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395798),
(335, 1, 'admin', '/anfxzPowJW.php/auth/rule/edit/ids/122?dialog=1', '权限管理 / 菜单规则 / 编辑', '{"dialog":"1","__token__":"***","row":{"ismenu":"1","pid":"0","name":"bannertem","title":"横幅模板","url":"","icon":"fa fa-circle-o","condition":"","menutype":"addtabs","extend":"","remark":"","weigh":"102","status":"normal"},"ids":"122"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395811),
(336, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_actions"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395888),
(337, 1, 'admin', '/anfxzPowJW.php/command/get_field_list', '在线命令管理', '{"table":"design_bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395889),
(338, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_bannerecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395891),
(339, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"1","table":"design_bannerecore","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","tagsuffix":"","jsonsuffix":"","fixedcolumns":"","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395892),
(340, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395894),
(341, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["design_bannerecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"design_bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395895),
(342, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":["bannerecore"],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":"bannerecore"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395896),
(343, 1, 'admin', '/anfxzPowJW.php/command/get_controller_list', '在线命令管理', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"OR ","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395897),
(344, 1, 'admin', '/anfxzPowJW.php/command/command/action/command', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Bannerecore.php","action":"command"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395898),
(345, 1, 'admin', '/anfxzPowJW.php/command/command/action/execute', '在线命令管理', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"Bannerecore.php","action":"execute"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670395899),
(346, 1, 'admin', '/anfxzPowJW.php/photorecore/del', '照片墙提交记录 / 删除', '{"action":"del","ids":"10,9,8,7,6,5,4","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670399937),
(347, 1, 'admin', '/anfxzPowJW.php/bannerecore/del', '横幅提交记录 / 删除', '{"action":"del","ids":"6,5,4,3,2,1","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670399941),
(348, 1, 'admin', '/anfxzPowJW.php/waterphoto/del', '洗照片提交记录 / 删除', '{"action":"del","ids":"6,5,4,3","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670399945),
(349, 1, 'admin', '/anfxzPowJW.php/auth/rule/multi', '权限管理 / 菜单规则', '{"action":"","ids":"85","params":"ismenu=0"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670400070),
(350, 1, 'admin', '/anfxzPowJW.php/auth/rule/edit/ids/66?dialog=1', '权限管理 / 菜单规则 / 编辑', '{"dialog":"1","__token__":"***","row":{"ismenu":"1","pid":"0","name":"user","title":"会员管理","url":"","icon":"fa fa-user-circle","condition":"","menutype":"addtabs","extend":"","remark":"","weigh":"108","status":"normal"},"ids":"66"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670400101),
(351, 1, 'admin', '/anfxzPowJW.php/auth/rule/edit/ids/5?dialog=1', '权限管理 / 菜单规则 / 编辑', '{"dialog":"1","__token__":"***","row":{"ismenu":"1","pid":"0","name":"auth","title":"权限管理","url":"","icon":"fa fa-group","condition":"","menutype":"addtabs","extend":"","remark":"","weigh":"109","status":"normal"},"ids":"5"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670400109),
(352, 1, 'admin', '/anfxzPowJW.php/index/login', '登录', '{"__token__":"***","username":"admin","password":"***","captcha":"GAHS"}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670402684),
(353, 1, 'admin', '/anfxzPowJW.php/photorecore/del', '照片墙提交记录 / 删除', '{"action":"del","ids":"13,12,11","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670403376),
(354, 1, 'admin', '/anfxzPowJW.php/bannerecore/del', '横幅提交记录 / 删除', '{"action":"del","ids":"7","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670403380),
(355, 1, 'admin', '/anfxzPowJW.php/waterphoto/del', '洗照片提交记录 / 删除', '{"action":"del","ids":"8,7","params":""}', '122.191.194.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 1670403384),
(356, 1, 'admin', '/anfxzPowJW.php/index/login', '登录', '{"__token__":"***","username":"admin","password":"***","captcha":"t3zm"}', '122.191.194.0', 'Mozilla/5.0 (Linux; Android 6.0.1; OPPO R9s Plus Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/86.0.4240.99 XWEB/4364 MMWEBSDK/20220505 Mobile Safari/537.36 MMWEBID/969 MicroMessenger/8.0.23.2160(0x28001756) WeChat/arm32 Weix', 1670451704);

-- --------------------------------------------------------

--
-- 表的结构 `design_area`
--

CREATE TABLE IF NOT EXISTS `design_area` (
  `id` int(10) NOT NULL COMMENT 'ID',
  `pid` int(10) DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简称',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全称',
  `level` tinyint(4) DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地区表';

-- --------------------------------------------------------

--
-- 表的结构 `design_attachment`
--

CREATE TABLE IF NOT EXISTS `design_attachment` (
  `id` int(20) unsigned NOT NULL COMMENT 'ID',
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建日期',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` bigint(16) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `design_attachment`
--

INSERT INTO `design_attachment` (`id`, `category`, `admin_id`, `user_id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filename`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, '', 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6'),
(2, '', 1, 0, '/uploads/20221206/0a7771bbc80d814176f58e4cd56e70ad.png', '2917', '2917', 'png', 0, '4d4f504e7c0be98a7f5d10c289808289.png', 411495, 'image/png', '', 1670314679, 1670314679, 1670314679, 'local', '3b89681d68e31dc8a7dab9e05155832401adeb43'),
(3, '', 1, 0, '/uploads/20221206/4d13235fb17e8874a3313da43fcf3023.png', '2774', '2215', 'png', 0, '8a12cf27516df7590359acef29a779e7.png', 168250, 'image/png', '', 1670314679, 1670314679, 1670314679, 'local', 'd96e3dae28a63fe9057433f8ba4d86cb8f768216'),
(4, '', 1, 0, '/uploads/20221206/6abe1512af3f114ed8fe883a172d1264.png', '1000', '1000', 'png', 0, '50d54b874326b8536e440db8076dc202.png', 140959, 'image/png', '', 1670314679, 1670314679, 1670314679, 'local', '6804e68231d73e1d29986aaacbadd0033dae2e5d'),
(5, '', 1, 0, '/uploads/20221206/17fce436727364a5ee0734230e108d79.png', '1958', '1462', 'png', 0, '590b5f91a4cc4d110b33e4eac86e858f.png', 1160615, 'image/png', '', 1670314680, 1670314680, 1670314680, 'local', '7dbe248367bc8dff1e32748414171b58a73eedd3'),
(6, '', 1, 0, '/uploads/20221206/4c1e763e3488202a12d4847c605ce1f4.png', '1000', '1000', 'png', 0, '1306eb2a19ea2595ffec6277789cb6af.png', 14697, 'image/png', '', 1670314680, 1670314680, 1670314680, 'local', 'b10fa822eb42adba90185997f613807848cd8932'),
(7, '', 1, 0, '/uploads/20221206/60f0c6672c450e7bc2853e0c88bd129b.png', '400', '430', 'png', 0, 'b5b468bd4882a0ddd5c5fe01d03e730f.png', 74917, 'image/png', '', 1670314680, 1670314680, 1670314680, 'local', '677688127de049d58a5ab4a429728032f837d26c'),
(8, '', 1, 0, '/uploads/20221206/cf36606165dc55ebbb2e11f44ac5b0f3.png', '595', '555', 'png', 0, 'e252159dd5902b1a799bdaeaf1b10e43.png', 170752, 'image/png', '', 1670314680, 1670314680, 1670314680, 'local', 'd8ff42d05db52774125d29d3e2fd83427d31ad2b'),
(9, '', 1, 0, '/uploads/20221206/ae8d3e77c7d518046cbe8b3ac994e170.png', '640', '640', 'png', 0, '0b6ec5908314e71085cbdeab2d80595a.png', 37288, 'image/png', '', 1670314791, 1670314791, 1670314791, 'local', '098afec6b0e9989f0093f3eb27d73dbaacc1ecff'),
(10, '', 1, 0, '/uploads/20221206/2bedd2e6b6370577aa3fad8336cd6d9d.png', '4000', '4013', 'png', 0, '4b3c7ad34b35650d4423f2d86d186fdf.png', 1205800, 'image/png', '', 1670314791, 1670314791, 1670314791, 'local', 'a71c1e46410eae67fdc52b5ff03b81689a9633db'),
(11, '', 1, 0, '/uploads/20221206/9f789d5766251bad0b073a8cb3a9cb35.png', '2809', '2810', 'png', 0, '9aefe16db79f96afe9f709485756b184.png', 181244, 'image/png', '', 1670314792, 1670314792, 1670314792, 'local', '2ca689835bbad48d7ee4987cb01658c8c2038e2e'),
(12, '', 1, 0, '/uploads/20221206/ca037cb79f81cad193a518e74204bbac.png', '2000', '2000', 'png', 0, '9bda75e3c23bc017fa9e71dd7b4eba50.png', 450880, 'image/png', '', 1670314792, 1670314792, 1670314792, 'local', 'de535e7080bd30fc17b77a7adabf5b61778341a1'),
(13, '', 1, 0, '/uploads/20221206/acc8fcb8011958ad01640beca1b7f59e.png', '500', '500', 'png', 0, '20e9099acf9084069c1d07b5e90d04d9.png', 161922, 'image/png', '', 1670314792, 1670314792, 1670314792, 'local', '1886578bfd2613668f6b8f846c796365eb6c78ef'),
(14, '', 1, 0, '/uploads/20221206/2f24ef84ab0a470759535f538f7e6360.png', '700', '702', 'png', 0, '41c09768627b7bec3bdb2662c1e97d6c.png', 230316, 'image/png', '', 1670314792, 1670314792, 1670314792, 'local', 'c5efe89af311b961923567cacef25f1a4a3ece23'),
(15, '', 1, 0, '/uploads/20221206/73ba820e0afdd07fb25f5e93d592c6d3.png', '507', '527', 'png', 0, '57a4b2ed172182c367a447611e381399.png', 48594, 'image/png', '', 1670314792, 1670314792, 1670314792, 'local', '7ff68930f6c2df1ce4b27d148854e788db671908'),
(16, '', 1, 0, '/uploads/20221206/e0a0997fafc807312f4bd923702d5f45.png', '2000', '2000', 'png', 0, '96aa99aab3d1ed00180837aaa1a75e10.png', 120394, 'image/png', '', 1670314795, 1670314795, 1670314795, 'local', 'a35f12fc6eb4ef1c088e5de0fddfe31087b883e9'),
(17, '', 1, 0, '/uploads/20221206/95016eb1ff9741bbb83e1475f0279975.png', '500', '500', 'png', 0, '2365ad3cd11e971ca0bd63c96af0fbd5.png', 32670, 'image/png', '', 1670314797, 1670314797, 1670314797, 'local', 'c877b1f8726d244c229fd5327d78a295c9a021c0'),
(18, '', 1, 0, '/uploads/20221206/135b5ec6e0ef38fecff3b6b809aff38a.png', '2000', '2000', 'png', 0, '6471a4302a9cda5883e9c3880c131f57.png', 468933, 'image/png', '', 1670314797, 1670314797, 1670314797, 'local', '3383739475271b50a062feb6b8b71037a30ff3ec'),
(19, '', 1, 0, '/uploads/20221206/6fb04345cb82a75779a5517dd6c36d75.png', '2000', '2000', 'png', 0, '98330843f9d053e0aaba72b58382edcc.png', 230780, 'image/png', '', 1670314798, 1670314798, 1670314798, 'local', '3c042da5b3f3f1c3c1ebde55b7fa0e4ab8da8441'),
(20, '', 1, 0, '/uploads/20221206/836c6e8708c251ca874c273693cf7d68.png', '2241', '2130', 'png', 0, 'a623b298c65cf20ef9c25364e0e008ff.png', 263470, 'image/png', '', 1670314799, 1670314799, 1670314799, 'local', 'b56bef3851b06ed4c240ae90ab6da09e5fd58b7f'),
(21, '', 1, 0, '/uploads/20221206/13133459ef6c01dd05c644d158b54157.png', '1237', '1119', 'png', 0, 'b2397e6940fd27c294e008beacd2c622.png', 62397, 'image/png', '', 1670314799, 1670314799, 1670314799, 'local', '37705223b48378a3c564683d796ef9d28fe98742'),
(22, '', 1, 0, '/uploads/20221206/325ece059a25e17a973244199a4b2ea7.png', '1100', '600', 'png', 0, 'b7296bbed431c5e6770c2abcfa879b33.png', 101536, 'image/png', '', 1670314804, 1670314804, 1670314804, 'local', 'bbee345df2d43b492fd44394bb2e4474d74d61df'),
(23, '', 1, 0, '/uploads/20221206/ef19af7599a1963f8091c58eb6cad7bc.png', '2000', '2000', 'png', 0, 'c0c77091ca03dbf8ebb24d48fb00ceed.png', 242841, 'image/png', '', 1670314806, 1670314806, 1670314806, 'local', 'a778ed78ee7490b097cb3741cafb51145e690562'),
(24, '', 1, 0, '/uploads/20221206/73c9f4b78ba2bed6ce0bfc7a42ab58f6.png', '479', '518', 'png', 0, 'ca43ed8b0f794a34c32635d256d68a1a.png', 45220, 'image/png', '', 1670314809, 1670314809, 1670314809, 'local', 'ff2994a7714659b82eb4de052caf8554d817405b'),
(25, '', 1, 0, '/uploads/20221206/fd442919ec0db1a13a5e9b41a08cf8a3.png', '2000', '2000', 'png', 0, 'd4fddebffb67059f830099c7922a2ed5.png', 91067, 'image/png', '', 1670314810, 1670314810, 1670314810, 'local', '48545fd1cea4ea24d8d30443c2fee4f9a489654c'),
(26, '', 1, 0, '/uploads/20221206/829ed1872e29e6be4885863d09c0145d.png', '1604', '872', 'png', 0, '2b97057afc29cde9626edca0098f1dc7.png', 95614, 'image/png', '', 1670314831, 1670314831, 1670314831, 'local', '22584e3cf920451e3c049880cbf5579187236c53'),
(27, '', 1, 0, '/uploads/20221206/1082c42cf2298add532f792973053c62.png', '2000', '2000', 'png', 0, '4f9554bbc4e043ecd5edaff0b75648ce.png', 274200, 'image/png', '', 1670314831, 1670314831, 1670314831, 'local', '9b7ff5e104d1da02fd5797b6c2adc51edc6b5716'),
(28, '', 1, 0, '/uploads/20221206/1f1465ac97380c7893b853eae84b626f.png', '640', '640', 'png', 0, '6b6fec0efd8b0e996cb4f1ae7842571b.png', 68620, 'image/png', '', 1670314832, 1670314832, 1670314832, 'local', '8e102c3f65ff23e735f5fc37e612192388272287'),
(29, '', 1, 0, '/uploads/20221206/ed16d2beaf67ad35cad0401ee0f5387d.png', '1300', '1134', 'png', 0, '27ec9d9259b2840819550ad1f3f4e0ef.png', 416351, 'image/png', '', 1670314832, 1670314832, 1670314832, 'local', 'b7953b08387a82775f6666147c758d1d49abcbba'),
(30, '', 1, 0, '/uploads/20221206/3a64ab77969fcef91c26d4ccaa96f493.png', '320', '320', 'png', 0, 'a30fe00e2ac53f63de186c960ce6209c.png', 3010, 'image/png', '', 1670314832, 1670314832, 1670314832, 'local', '2450a42b752c289c0458f1dfe5cd9c313c84a223'),
(31, '', 1, 0, '/uploads/20221206/78c6ee2bb497f691805aef9ee398309b.png', '2000', '2000', 'png', 0, 'a23419446ff55f58bc822875c51c5a38.png', 107107, 'image/png', '', 1670314832, 1670314832, 1670314832, 'local', '99aee8d133356a498b4409ecd5bc9aaf5274ced6'),
(32, '', 1, 0, '/uploads/20221206/053ff599a03c57dc2c6fbf326315c1d5.png', '1500', '1500', 'png', 0, 'b71c8893872724524d2dad2aef77d8d8.png', 342939, 'image/png', '', 1670314832, 1670314832, 1670314832, 'local', '4ddf4304518849af9b5e5f91e02bdcdd3e57514e'),
(33, '', 1, 0, '/uploads/20221206/e35d61f0b915c02efdeb99eb59a1af11.png', '503', '470', 'png', 0, 'b250d282ad258095de5053e724c532e7.png', 109782, 'image/png', '', 1670314833, 1670314833, 1670314833, 'local', '820d6150d57aedf7ad2d37d5942c6436e693b268'),
(34, '', 1, 0, '/uploads/20221206/b82cb750ed137c57aefb076344b5e240.png', '1080', '1920', 'png', 0, 'c6c4fc76b9e916c6a33a76aaf272d097.png', 933566, 'image/png', '', 1670314835, 1670314835, 1670314835, 'local', 'f94bb07be863b1ed87d96401d04473372e4e7444'),
(35, '', 1, 0, '/uploads/20221206/8a586cc04fb8f98a571029cf53df2a20.png', '1000', '1400', 'png', 0, 'd4930b2cb07f39ea255d035e9153e00b.png', 218888, 'image/png', '', 1670314835, 1670314835, 1670314835, 'local', '8557abe5f3ac12e28a3bbed1e342efafe8380a83'),
(36, '', 1, 0, '/uploads/20221206/1ae215bc685e10bf4f0ddce2e938921d.png', '2000', '2000', 'png', 0, '2aa1cd01e89110275a6ce2861474416d.png', 391318, 'image/png', '', 1670314850, 1670314850, 1670314850, 'local', '165bd7ea884d7fd4140780185d2e2ec383d75e84'),
(37, '', 1, 0, '/uploads/20221206/e8dc0f5a6386487833f1e99df0ebc429.png', '2000', '2000', 'png', 0, '15c3d95ab49d96f3a5df81c3640f9896.png', 533851, 'image/png', '', 1670314851, 1670314851, 1670314851, 'local', '39bf8bedc291b1c226b61126d3253d389a4985fd'),
(38, '', 1, 0, '/uploads/20221206/2bc2a544f8f0c7ae31729f2a067730e8.png', '6850', '4961', 'png', 0, '52ce329a64ee1c2283d05072271afc73.png', 1422974, 'image/png', '', 1670314852, 1670314852, 1670314852, 'local', 'c01b3fac9a2ad5ddc196b15c20a35043cd59f950'),
(39, '', 1, 0, '/uploads/20221206/40ca9cde342744d2232f21a3b5acd013.png', '3307', '4567', 'png', 0, '83a862727befb7a3a39b669c08c60f8b.png', 613287, 'image/png', '', 1670314852, 1670314852, 1670314852, 'local', 'e9acd56ddaab9e0c04e4ba4a16e1efb93b6b9218'),
(40, '', 1, 0, '/uploads/20221206/30cc0699bf04127028158eb16552422e.png', '1000', '1400', 'png', 0, '658babdfb052baf4def12ba67d9a71ff.png', 586857, 'image/png', '', 1670314852, 1670314852, 1670314852, 'local', 'de3b56835637af3a8055b6a795dc6c0a1b3dd5f2'),
(41, '', 1, 0, '/uploads/20221206/507a9d9ca796db38883c474046bc4324.png', '1200', '1200', 'png', 0, 'fb2b5ea6fc54a840001472241a9cf960.png', 565754, 'image/png', '', 1670314853, 1670314853, 1670314853, 'local', '35f5b56d3b47211d6fca73fd54bbc9c27212a06e'),
(42, '', 1, 0, '/uploads/20221206/42dd83d5ec88244c51b9ef7dbcd50631.png', '1771', '1520', 'png', 0, '1a66cff9d1e946f4a9d3a9d250679718.png', 785556, 'image/png', '', 1670314880, 1670314880, 1670314880, 'local', 'b158e8abaa76e77eb605e491cbe5ba205d11bc8a'),
(43, '', 1, 0, '/uploads/20221206/b02894b28844c0e4617ffc3fdf95f436.png', '2000', '2000', 'png', 0, '912e635bc7aea5766038d797e5aecf36.png', 178955, 'image/png', '', 1670314881, 1670314881, 1670314881, 'local', 'd9a3fbd4316436d260d33d521c4c9d103998b8d4'),
(44, '', 1, 0, '/uploads/20221206/9a723ad2aa36142ab777a080cf522079.png', '2110', '1200', 'png', 0, '7517a4ad2b4d56d4df04906ea08f6985.png', 502601, 'image/png', '', 1670314881, 1670314881, 1670314881, 'local', '4c0818377d21763970b881012cd90aec6a5cc5c4'),
(45, '', 1, 0, '/uploads/20221206/69e68b2748e065da474ab4f8fa1a3531.png', '2000', '2000', 'png', 0, '232574424c5df00f569f181aa678b4ed.png', 365334, 'image/png', '', 1670314881, 1670314881, 1670314881, 'local', 'de9c3d152f6e430219747e6d30644a6d2923e3dd'),
(46, '', 1, 0, '/uploads/20221206/0dcc99efc0e0287b69ca34d35ae84d19.png', '2700', '2700', 'png', 0, '4666168108795ffb4929fc3091a16c75.png', 6942418, 'image/png', '', 1670314883, 1670314883, 1670314883, 'local', '5c0726b4bbdbc9b8c2160ba25f2256cf922a974b'),
(47, '', 1, 0, '/uploads/20221206/0a9c70f07adfb24bdab4e78d66bd6b2e.png', '1000', '1000', 'png', 0, 'ba4cce352c8bec101888c7a18577af99.png', 174578, 'image/png', '', 1670314884, 1670314884, 1670314884, 'local', 'bef9392734ef197bebb27a4a70ef09c6c91efdab'),
(48, '', 1, 0, '/uploads/20221206/63bafe88842dc0cd5265dda0318bb3ba.png', '2847', '3035', 'png', 0, 'c04d38d27d8a5d2c630276a57c3b42bb.png', 393954, 'image/png', '', 1670314884, 1670314884, 1670314884, 'local', 'd0cabaeaf3e40ea4fb643022836704aa2a3b6a03'),
(49, '', 1, 0, '/uploads/20221206/ffd2cc20465452381d315098b40a184b.png', '2000', '2000', 'png', 0, 'e08dfcf2d9c1462474df3a4132fcd59f.png', 324402, 'image/png', '', 1670314889, 1670314889, 1670314889, 'local', '53d18d3efd666c23eff2a9b86193c29a25daa4c5'),
(50, '', 1, 0, '/uploads/20221206/646ea81b8eb6c0268062d5c20281f0ce.png', '1486', '1050', 'png', 0, '2f3063485bae7c75f132070c984f3ae8.png', 156958, 'image/png', '', 1670314904, 1670314904, 1670314904, 'local', '2b3de9a2a87cb917ce32245601b89e6f8ff1160c'),
(51, '', 1, 0, '/uploads/20221206/3f5ed6fece62520f04439b7ef2c6ff8f.png', '3543', '2362', 'png', 0, '3ac9613f0b0a2a2ec23726ede6d2c19c.png', 505996, 'image/png', '', 1670314904, 1670314904, 1670314904, 'local', '175fe920f2ebfbaf554293fbe4ac74e1aaca07f3'),
(52, '', 1, 0, '/uploads/20221206/b678ad8252b53065833825b7b5d0d5bd.png', '900', '900', 'png', 0, '5a15562fb2dd6ab44598f7d3eb65bd5e.png', 151188, 'image/png', '', 1670314905, 1670314905, 1670314905, 'local', '5797026236161c60d1bbb981f6f5d4c85006f392'),
(53, '', 1, 0, '/uploads/20221206/b4323486b0da5f4113b3977340c11b8e.png', '567', '510', 'png', 0, '7a5fd3fd826de3e39cac879e313165c3.png', 67737, 'image/png', '', 1670314905, 1670314905, 1670314905, 'local', 'feaa9b23539021d28a169016cc7d8267dc1b846d'),
(54, '', 1, 0, '/uploads/20221206/9040ebb9177aa26dbf3a475442dbb22f.png', '1701', '1559', 'png', 0, '0537def103febaf5fb44595c4774332d.png', 1676090, 'image/png', '', 1670314906, 1670314906, 1670314906, 'local', 'c19def7cc9d371cf2d1f9e7d4c4ce4b3af10b148'),
(55, '', 1, 0, '/uploads/20221206/1ce793984551a943c8d9e895325606f9.png', '7090', '5672', 'png', 0, '722d76fb7e1e816f26b1d60417de8866.png', 1346516, 'image/png', '', 1670314907, 1670314907, 1670314907, 'local', 'e06ee4ea6261cc461f6d74becb54560a3810a567'),
(56, '', 1, 0, '/uploads/20221206/24df5ab9502b5fe33c3613b6e7298066.png', '1500', '1500', 'png', 0, '3575dba083b1b006f0ac0f4be3c49297.png', 847627, 'image/png', '', 1670314907, 1670314907, 1670314907, 'local', 'de48fac8af40f8d36ef885d2affc10c2e7c1d06f'),
(57, '', 1, 0, '/uploads/20221206/2ca2e90e4538563ac55b00e7ade1f71d.png', '2000', '2000', 'png', 0, '38002bc70871d96970ac2abe2bf6b795.png', 586660, 'image/png', '', 1670314907, 1670314907, 1670314907, 'local', '56a03c8bbe29954ffd5aa93000f8c8de91174b1f'),
(58, '', 1, 0, '/uploads/20221206/c7bccf601e17ba6b47a2970916466fd0.png', '1000', '1000', 'png', 0, '894163372d51ed4c3046ec06f0b24df0.png', 538792, 'image/png', '', 1670314909, 1670314909, 1670314909, 'local', '9849b3b6d3ac39500a5733e9e611b95414f41882'),
(59, '', 1, 0, '/uploads/20221206/01de1d3470efd49b81a2aff09f3929fa.png', '2000', '2000', 'png', 0, '0a42eee9734d995cdd62c16549a03a5e.png', 1771602, 'image/png', '', 1670314937, 1670314937, 1670314937, 'local', 'b65efc4d0cc8b31cd4089d0056987bc285109674'),
(60, '', 1, 0, '/uploads/20221206/71c0f5f2b56576843020c0f063e8b88e.png', '2000', '2045', 'png', 0, '47fd172aab45b42e0da5836879c97c28.png', 1697782, 'image/png', '', 1670314938, 1670314938, 1670314938, 'local', '04e6329754386251a745308b2a2d57d3dd9b20d9'),
(61, '', 1, 0, '/uploads/20221206/056870b2a51f2b8a3b1ad9e98eac3f3b.png', '1000', '1000', 'png', 0, '88d8b5a9a1053903c31d84e7af99ed82.png', 148519, 'image/png', '', 1670314938, 1670314938, 1670314938, 'local', 'fc8dcf337be9440e5b96ec589e6adadb84ebe111'),
(62, '', 1, 0, '/uploads/20221206/5a74a10368120e639596be821690b5e0.png', '1945', '2600', 'png', 0, '661ff94d4bfec687b661303fa60881c2 (1).png', 536948, 'image/png', '', 1670314938, 1670314938, 1670314938, 'local', '47df694225187aa78f0e5fc1cebf9d6fda56adb0'),
(63, '', 1, 0, '/uploads/20221206/f279c46e208e42ee843dd38c476c156a.png', '2000', '2000', 'png', 0, '4942d955da73ccd4235a98cd5b70bce2.png', 972967, 'image/png', '', 1670314980, 1670314980, 1670314980, 'local', '7a95ccae224ac7eb24eb2315712f05775a489e4e'),
(64, '', 1, 0, '/uploads/20221206/016efd06e0692b71df2cef0ccb64257d.png', '2000', '2000', 'png', 0, '8749eadcf90f46fabc5f3c51fdb7f582.png', 333704, 'image/png', '', 1670314980, 1670314980, 1670314980, 'local', '886a683f002324fce7889be89d3bbb11f5f85959'),
(65, '', 1, 0, '/uploads/20221206/65df7af9555c0f8f54d0ae5604ecdda4.png', '6250', '6250', 'png', 0, 'b851d6276b310b362f2e09ba06ff7b1d.png', 413103, 'image/png', '', 1670314981, 1670314981, 1670314981, 'local', 'da0bf1caffc17642a0717e6f15d6745157e64f5c'),
(66, '', 1, 0, '/uploads/20221206/cabd05cae33132eb96d7880c7c6bdf1f.png', '2000', '2000', 'png', 0, 'ec0737ddfb394a879155b8c19fa7cadc.png', 332317, 'image/png', '', 1670314981, 1670314981, 1670314981, 'local', 'fcbfbd0d2791b47c8776c34dcf646f45841bcfa5'),
(67, '', 1, 0, '/uploads/20221206/5c2479da9167a34ab347e62da660629d.png', '2000', '2000', 'png', 0, '000db575798c5bd85d0bf073e83ac90a.png', 348670, 'image/png', '', 1670315006, 1670315006, 1670315006, 'local', '4cb3cf52e503d57bad2756a6eacb25b982dd7201'),
(68, '', 1, 0, '/uploads/20221206/4f327e42b8436e04acc494964a3c49e5.png', '2000', '2000', 'png', 0, '4f5a735e2302a36bcbfc0d7e3c5ab480.png', 833289, 'image/png', '', 1670315007, 1670315007, 1670315007, 'local', '27cbe8e93c5a4ed00e868474d9f4101f9e6d7ea4'),
(69, '', 1, 0, '/uploads/20221206/fb324c12e33e93183f9b10afdbb3eb8a.png', '3864', '4010', 'png', 0, '5fb6229a7c4b1d5b6554f01d396633a3.png', 1050339, 'image/png', '', 1670315007, 1670315007, 1670315007, 'local', '972148c78cb20f50217cb5fef136cff3a4c1b6f9'),
(70, '', 1, 0, '/uploads/20221206/49e844fe958c953eebe338d6dd5a9468.png', '2000', '2000', 'png', 0, '7c28d74743b52d2fb7bc35f4c2eeb417.png', 1117899, 'image/png', '', 1670315008, 1670315008, 1670315008, 'local', 'b8ed0ec01b0b9bd70584252c1e8736ecc44e7f9e'),
(71, '', 1, 0, '/uploads/20221206/a53cbd47bb2264eba390aacdbd5306a7.png', '2500', '2500', 'png', 0, '876c8eb3e95baf33b42c671e4c80f336.png', 2186352, 'image/png', '', 1670315008, 1670315008, 1670315008, 'local', '239c6e6bdfae8c8712eb773043db4f8c91fe9ead'),
(72, '', 1, 0, '/uploads/20221206/3f0430e71bcf7697a19f82611c04a5c7.png', '2000', '2000', 'png', 0, '1769bc2e900b19051ebefcb7a6d3a933.png', 224006, 'image/png', '', 1670315009, 1670315009, 1670315009, 'local', '7803eb3c5794f48ee60ad6afe236494a2684d883'),
(73, '', 1, 0, '/uploads/20221206/435a8d09ef503443ec3ba702e48740d7.png', '2048', '2048', 'png', 0, '7803c281ae311ab243eab823456c6b17.png', 695705, 'image/png', '', 1670315009, 1670315009, 1670315009, 'local', 'e705cfcf24f2071b7d380825d52e6f4f43101629'),
(74, '', 1, 0, '/uploads/20221206/5fd133baa8a46694120be6d7fa592ad9.png', '3543', '1890', 'png', 0, '9037b66130ada8a458702dc32f02466c.png', 1004279, 'image/png', '', 1670315013, 1670315013, 1670315013, 'local', '9f140f3c409f39da1f5130498a3b876683de84fd'),
(75, '', 1, 0, '/uploads/20221206/4b1b9fb9d815a55982f75cdbc95872da.png', '846', '1244', 'png', 0, '515895f997bc8c4df7b0cd6bf37d680f.png', 163018, 'image/png', '', 1670315019, 1670315019, 1670315018, 'local', 'ca089083bce3d7c71c552865a0ded099d5147b78'),
(76, '', 1, 0, '/uploads/20221206/a1303b3f74bc0ddcf3d61f475541f900.png', '2048', '2048', 'png', 0, 'a9b4471f3831bc2f3e682c0ad5c7d24a.png', 714495, 'image/png', '', 1670315032, 1670315032, 1670315032, 'local', '9a7383193480028cfa0bd8f5f33b882c553df43b'),
(77, '', 1, 0, '/uploads/20221206/7fc033905d5a8b03d185a2be0653fe06.png', '1000', '1000', 'png', 0, 'e64455fb5ff46496ab7dd3fe1b5693e1.png', 2028728, 'image/png', '', 1670315036, 1670315036, 1670315036, 'local', 'cde6e6a9151a13d958dbe03f83c76efcb5f665ad'),
(78, '', 1, 0, '/uploads/20221206/7e02d5630b7afa62a6e06bf1fc07234e.png', '2000', '2000', 'png', 0, 'ec28c6a5d06ceb6ff9b4cd3684d9657f.png', 929558, 'image/png', '', 1670315037, 1670315037, 1670315037, 'local', 'ff1118dab9785102b8f1b1cc639da42434b0d6ba'),
(79, '', 1, 0, '/uploads/20221206/8be0f5ec85e845bd593333eac4cb1a28.png', '1500', '1500', 'png', 0, '343bb98df4cf3be911079d138811facc.png', 85597, 'image/png', '', 1670315069, 1670315069, 1670315069, 'local', '8c06208c340b941de726b582c7c52c0b4a1626ea'),
(80, '', 1, 0, '/uploads/20221206/f54bb00c69a18b316c7633d725559d6d.png', '478', '382', 'png', 0, '464e22300d7429784d5e5acab6f240c7.png', 18859, 'image/png', '', 1670315069, 1670315069, 1670315069, 'local', '15b07a239ca542e3f8770f7122a3d452b9fe4de6'),
(81, '', 1, 0, '/uploads/20221206/963f7b2287014dc943a22d0450d7229c.png', '2000', '2000', 'png', 0, '2266ea2a74740fc1811824c0acc0cd1f.png', 59225, 'image/png', '', 1670315069, 1670315069, 1670315069, 'local', 'dfdc1ebace08d2ecdc0421fa857b9b6db1e5ab9b'),
(82, '', 1, 0, '/uploads/20221206/d456341eaca20e86c1895e7daf936c64.png', '750', '750', 'png', 0, '66219e17b62a93094f00709657cdd3ac.png', 19967, 'image/png', '', 1670315070, 1670315070, 1670315070, 'local', '96c0342a0c40bbc9b5cf97eea58a74a5176f6f8d'),
(83, '', 1, 0, '/uploads/20221206/77c9275b0ca55fcbfa786b77c1b188b4.jpg', '391', '391', 'jpg', 0, 'loves.jpg', 64578, 'image/jpeg', '', 1670315155, 1670315155, 1670315155, 'local', '5ed6781ec14706790b62e339eb75a6947b3bb8d5'),
(85, '', 1, 0, '/uploads/5f278861fd809a0a6e5cd58f740c6226.png', '800', '800', 'png', 0, 'logo.png', 123874, 'image/png', '', 1670381761, 1670381761, 1670381761, 'local', 'f70b9ef30fdf78b8b7250eecce826939ada35376'),
(98, '', 0, 0, '/uploads/9094c981a4c480bc83c78d926665db59.jpg', '800', '603', 'jpg', 0, '03d35b3044e51a2e0df8faab0a19c27.jpg', 12153, 'image/jpeg', '', 1670386631, 1670386631, 1670386631, 'local', '24c7a5c9a60c04dbf130ea8efd841c4a7e4849e3'),
(99, '', 0, 0, '/uploads/11ea448b2a25f7e92ebd4694812bc4c9.jpg', '600', '800', 'jpg', 0, '3cbf383faa726553c78d74706a96293.jpg', 43779, 'image/jpeg', '', 1670386631, 1670386631, 1670386631, 'local', '3f762865616fc4049384373f6429575606b61254'),
(100, '', 0, 0, '/uploads/a1d7ac161ed1d4957210c166adf27a94.jpg', '369', '800', 'jpg', 0, '3b8cba4174b84b65014955dcb824ad4.jpg', 57083, 'image/jpeg', '', 1670386631, 1670386631, 1670386631, 'local', '476c6dfce378bddc16389645a8214f48e0287996'),
(101, '', 0, 0, '/uploads/eb0003490ca8daf9f395300cc15ee837.jpg', '600', '800', 'jpg', 0, '3d4b7b3ffa2d3df84269e49430697da.jpg', 41251, 'image/jpeg', '', 1670386631, 1670386631, 1670386631, 'local', 'd1a8415e090ef3ce56e79c2b2190f35492aabe61'),
(102, '', 0, 0, '/uploads/869cc61fbb81afddd8b30d316bbbbee8.jpg', '600', '800', 'jpg', 0, '1b93312eaf8b56a2919d5428a75b5af.jpg', 85996, 'image/jpeg', '', 1670386632, 1670386632, 1670386632, 'local', '57cb181e89b8bdc1e564df9bbe39d7f6eec6fa94'),
(103, '', 0, 0, '/uploads/35804a8a1b7ce7893b7570dd867b6e9a.jpg', '600', '800', 'jpg', 0, '2ba9a52b45b0737c611343ff51fd2d1.jpg', 85079, 'image/jpeg', '', 1670386632, 1670386632, 1670386632, 'local', '19c2023912c47543cbd60c604eefa8103edc7c8a'),
(104, '', 0, 0, '/uploads/5019769a5f8117d19c1da0c5a50d852e.jpg', '1440', '1080', 'jpg', 0, '2a276aa659bb2fd9e400c0aa021ca8b.jpg', 144466, 'image/jpeg', '', 1670386632, 1670386632, 1670386632, 'local', '16fddbb98663e907fa257e1174a69cbefcda941f'),
(105, '', 0, 0, '/uploads/769983c36b419565b44e82a466c26f17.jpg', '1440', '1080', 'jpg', 0, '2f31883154807a6e9397f4f402318f6.jpg', 216203, 'image/jpeg', '', 1670386632, 1670386632, 1670386632, 'local', '98d7330f56224b69b3fb7f9b681497722fdc921e'),
(106, '', 0, 0, '/uploads/0db9d90eae2cccdecaa09d7a404574c1.jpg', '1080', '1440', 'jpg', 0, '1fbd65c2a10302a81ad7fd0870ff1e0.jpg', 408795, 'image/jpeg', '', 1670386632, 1670386632, 1670386632, 'local', '6c28c2b04f50a0eb8cbdc2bb95b1f9f0dbf312f7'),
(107, '', 1, 0, '/uploads/17f9ab80b376db125b06d88d219d7518.jpg', '1200', '330', 'jpg', 0, 'a.jpg', 149290, 'image/jpeg', '', 1670387460, 1670387460, 1670387460, 'local', '92b0db1c0fd9e9ae61755a379478101dfed019c6'),
(108, '', 0, 0, '/uploads/0d96878a832d6e6a84555b6ab77b8ee7.png', '1080', '1920', 'png', 0, 'Screenshot_2022-12-07-09-32-49-44.png', 75053, 'image/png', '', 1670393976, 1670393976, 1670393976, 'local', 'cc09fc67984495433f2de34d37b9504cfa23c908'),
(109, '', 0, 0, '/uploads/393119f41b99aec7f889401cec34bce8.png', '1080', '1920', 'png', 0, 'Screenshot_2022-12-05-10-30-55-14.png', 538734, 'image/png', '', 1670393980, 1670393980, 1670393980, 'local', '4f9d2c3af25c6131b1038de16737617179af638c'),
(110, '', 0, 0, '/uploads/e52cc099e4d80ad7ab07ddd5e0ce8656.jpg', '720', '720', 'jpg', 0, '1670043578858.jpg', 24153, 'image/jpeg', '', 1670393985, 1670393985, 1670393985, 'local', 'eec2c622fa6d78b20d5588a41e6a8efa3ee6d735'),
(111, '', 0, 0, '/uploads/76f150982c1c306bf44708c7f9fc6a4d.jpg', '600', '800', 'jpg', 0, '4a94a0534a9c209e79003fcbc9c882d.jpg', 89117, 'image/jpeg', '', 1670394014, 1670394014, 1670394014, 'local', '661549045f51fbc40dcb3ac32fc3a8d52c2a9a7b'),
(112, '', 0, 0, '/uploads/d80c171b4bc87dcbd9acc4a1cbbbd8b4.png', '1080', '1920', 'png', 0, 'Screenshot_2022-12-06-11-37-31-21.png', 665535, 'image/png', '', 1670403780, 1670403780, 1670403780, 'local', '8fa9f3d27a2e5c4b20867a091b08c83407c64f0b');

-- --------------------------------------------------------

--
-- 表的结构 `design_auth_group`
--

CREATE TABLE IF NOT EXISTS `design_auth_group` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';

--
-- 转存表中的数据 `design_auth_group`
--

INSERT INTO `design_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal'),
(2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1491635035, 1491635035, 'normal'),
(3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1491635035, 1491635035, 'normal'),
(4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1491635035, 1491635035, 'normal'),
(5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `design_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `design_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';

--
-- 转存表中的数据 `design_auth_group_access`
--

INSERT INTO `design_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `design_auth_rule`
--

CREATE TABLE IF NOT EXISTS `design_auth_rule` (
  `id` int(10) unsigned NOT NULL,
  `type` enum('menu','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

--
-- 转存表中的数据 `design_auth_rule`
--

INSERT INTO `design_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `url`, `condition`, `remark`, `ismenu`, `menutype`, `extend`, `py`, `pinyin`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 'kzt', 'kongzhitai', 1491635035, 1491635035, 143, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', '', 1, NULL, '', 'cggl', 'changguiguanli', 1491635035, 1491635035, 137, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 0, NULL, '', 'flgl', 'fenleiguanli', 1491635035, 1491635035, 119, 'normal'),
(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 0, NULL, '', 'cjgl', 'chajianguanli', 1491635035, 1670394117, 0, 'normal'),
(5, 'file', 0, 'auth', '权限管理', 'fa fa-group', '', '', '', 1, 'addtabs', '', 'qxgl', 'quanxianguanli', 1491635035, 1670400109, 109, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', '', 'Config tips', 1, NULL, '', 'xtpz', 'xitongpeizhi', 1491635035, 1491635035, 60, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 'fjgl', 'fujianguanli', 1491635035, 1491635035, 53, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 'grzl', 'gerenziliao', 1491635035, 1491635035, 34, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 'glygl', 'guanliyuanguanli', 1491635035, 1491635035, 118, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 'glyrz', 'guanliyuanrizhi', 1491635035, 1491635035, 113, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 'jsz', 'juesezu', 1491635035, 1491635035, 109, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 'cdgz', 'caidanguize', 1491635035, 1491635035, 104, 'normal'),
(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 136, 'normal'),
(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 135, 'normal'),
(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 133, 'normal'),
(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 134, 'normal'),
(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 132, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 52, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 51, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 50, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 49, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 48, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', '', '', 1491635035, 1491635035, 59, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 58, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 57, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 56, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 55, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 54, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 33, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 32, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 31, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 30, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 29, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 28, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', '', '', 1491635035, 1491635035, 142, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 141, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 140, 'normal'),
(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 139, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 138, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', '', '', 1491635035, 1491635035, 117, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 116, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 115, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 114, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', '', '', 1491635035, 1491635035, 112, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 111, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 110, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', '', '', 1491635035, 1491635035, 108, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 107, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 106, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 105, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', '', '', 1491635035, 1491635035, 103, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 102, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 101, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 100, 'normal'),
(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(66, 'file', 0, 'user', '会员管理', 'fa fa-user-circle', '', '', '', 1, 'addtabs', '', 'hygl', 'huiyuanguanli', 1491635035, 1670400101, 108, 'normal'),
(67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal'),
(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 1, NULL, '', 'hyfz', 'huiyuanfenzu', 1491635035, 1491635035, 0, 'normal'),
(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'hygz', 'huiyuanguize', 1491635035, 1491635035, 0, 'normal'),
(80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(85, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', '', 0, NULL, '', 'zxmlgl', 'zaixianminglingguanli', 1670313490, 1670400070, 0, 'normal'),
(86, 'file', 85, 'command/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670313490, 1670313490, 0, 'normal'),
(87, 'file', 85, 'command/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670313490, 1670313490, 0, 'normal'),
(88, 'file', 85, 'command/detail', '详情', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'xq', 'xiangqing', 1670313490, 1670313490, 0, 'normal'),
(89, 'file', 85, 'command/execute', '运行', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'yx', 'yunxing', 1670313490, 1670313490, 0, 'normal'),
(90, 'file', 85, 'command/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670313490, 1670313490, 0, 'normal'),
(91, 'file', 85, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670313490, 1670313490, 0, 'normal'),
(92, 'file', 0, 'fontcolor', '文字配色管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'wzpsgl', 'wenzipeiseguanli', 1670314502, 1670314502, 0, 'normal'),
(93, 'file', 92, 'fontcolor/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670314502, 1670314636, 0, 'normal'),
(94, 'file', 92, 'fontcolor/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670314502, 1670314636, 0, 'normal'),
(95, 'file', 92, 'fontcolor/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670314502, 1670314636, 0, 'normal'),
(96, 'file', 92, 'fontcolor/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670314502, 1670314636, 0, 'normal'),
(97, 'file', 92, 'fontcolor/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670314502, 1670314636, 0, 'normal'),
(98, 'file', 0, 'sourcman', '照片墙素材管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'zpqscgl', 'zhaopianqiangsucaiguanli', 1670314537, 1670314537, 0, 'normal'),
(99, 'file', 98, 'sourcman/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670314537, 1670314759, 0, 'normal'),
(100, 'file', 98, 'sourcman/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670314537, 1670314759, 0, 'normal'),
(101, 'file', 98, 'sourcman/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670314537, 1670314759, 0, 'normal'),
(102, 'file', 98, 'sourcman/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670314537, 1670314759, 0, 'normal'),
(103, 'file', 98, 'sourcman/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670314537, 1670314759, 0, 'normal'),
(104, 'file', 0, 'phototem', '照片墙模板管理', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'zpqmbgl', 'zhaopianqiangmubanguanli', 1670315101, 1670315101, 0, 'normal'),
(105, 'file', 104, 'phototem/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670315101, 1670392615, 0, 'normal'),
(106, 'file', 104, 'phototem/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670315101, 1670392615, 0, 'normal'),
(107, 'file', 104, 'phototem/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670315101, 1670392615, 0, 'normal'),
(108, 'file', 104, 'phototem/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670315101, 1670392615, 0, 'normal'),
(109, 'file', 104, 'phototem/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670315101, 1670392615, 0, 'normal'),
(110, 'file', 0, 'actions', '操作手册管理', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'czscgl', 'caozuoshouceguanli', 1670315180, 1670315363, 0, 'normal'),
(111, 'file', 110, 'actions/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670315180, 1670315338, 0, 'normal'),
(112, 'file', 110, 'actions/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670315180, 1670315338, 0, 'normal'),
(113, 'file', 110, 'actions/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670315180, 1670315338, 0, 'normal'),
(114, 'file', 110, 'actions/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670315180, 1670315338, 0, 'normal'),
(115, 'file', 110, 'actions/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670315180, 1670315338, 0, 'normal'),
(116, 'file', 0, 'waterphoto', '洗照片提交记录', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'xzptjjl', 'xizhaopiantijiaojilu', 1670383831, 1670383831, 0, 'normal'),
(117, 'file', 116, 'waterphoto/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670383831, 1670395752, 0, 'normal'),
(118, 'file', 116, 'waterphoto/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670383831, 1670395752, 0, 'normal'),
(119, 'file', 116, 'waterphoto/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670383831, 1670395752, 0, 'normal'),
(120, 'file', 116, 'waterphoto/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670383831, 1670395752, 0, 'normal'),
(121, 'file', 116, 'waterphoto/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670383831, 1670395752, 0, 'normal'),
(122, 'file', 0, 'bannertem', '横幅模板', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'hfmb', 'hengfumuban', 1670387410, 1670395811, 102, 'normal'),
(123, 'file', 122, 'bannertem/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670387410, 1670387410, 0, 'normal'),
(124, 'file', 122, 'bannertem/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670387410, 1670387410, 0, 'normal'),
(125, 'file', 122, 'bannertem/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670387410, 1670387410, 0, 'normal'),
(126, 'file', 122, 'bannertem/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670387410, 1670387410, 0, 'normal'),
(127, 'file', 122, 'bannertem/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670387410, 1670387410, 0, 'normal'),
(128, 'file', 0, 'bannerecore', '横幅提交记录', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'hftjjl', 'hengfutijiaojilu', 1670389037, 1670389037, 0, 'normal'),
(129, 'file', 128, 'bannerecore/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670389037, 1670395899, 0, 'normal'),
(130, 'file', 128, 'bannerecore/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670389037, 1670395899, 0, 'normal'),
(131, 'file', 128, 'bannerecore/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670389037, 1670395899, 0, 'normal'),
(132, 'file', 128, 'bannerecore/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670389037, 1670395899, 0, 'normal'),
(133, 'file', 128, 'bannerecore/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670389037, 1670395899, 0, 'normal'),
(134, 'file', 0, 'photorecore', '照片墙提交记录', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'zpqtjjl', 'zhaopianqiangtijiaojilu', 1670389917, 1670389917, 0, 'normal'),
(135, 'file', 134, 'photorecore/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1670389917, 1670395752, 0, 'normal'),
(136, 'file', 134, 'photorecore/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1670389917, 1670395752, 0, 'normal'),
(137, 'file', 134, 'photorecore/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1670389917, 1670395752, 0, 'normal'),
(138, 'file', 134, 'photorecore/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1670389917, 1670395752, 0, 'normal'),
(139, 'file', 134, 'photorecore/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1670389917, 1670395752, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `design_bannerecore`
--

CREATE TABLE IF NOT EXISTS `design_bannerecore` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `nums` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份编码',
  `phones` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `fonts` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '输入文字',
  `picimage` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '横幅图片',
  `bannertem_id` int(11) DEFAULT NULL COMMENT '用的哪个模板',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '横幅名称',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态:0=待制作横幅,1=已制作横幅,2=已忽略提交',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='横幅提交记录';

--
-- 转存表中的数据 `design_bannerecore`
--

INSERT INTO `design_bannerecore` (`id`, `nums`, `phones`, `fonts`, `picimage`, `bannertem_id`, `name`, `status`, `createtime`, `updatetime`) VALUES
(8, '205376', '15717205710', '模具妥投哦木有你咯他了卡布木有头投61168欧吗女', 'https://zaiercommon.oss-cn-beijing.aliyuncs.com//uploads/17f9ab80b376db125b06d88d219d7518.jpg', 1, '横幅A', '0', '1670436803', '1670436803');

-- --------------------------------------------------------

--
-- 表的结构 `design_bannertem`
--

CREATE TABLE IF NOT EXISTS `design_bannertem` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `picimage` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '横幅图片',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '横幅名称',
  `fontnum` int(11) NOT NULL DEFAULT '0' COMMENT '最多字数',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='横幅模板';

--
-- 转存表中的数据 `design_bannertem`
--

INSERT INTO `design_bannertem` (`id`, `picimage`, `name`, `fontnum`, `createtime`, `updatetime`) VALUES
(1, '/uploads/17f9ab80b376db125b06d88d219d7518.jpg', '横幅A', 25, '1670387463', '1670387506');

-- --------------------------------------------------------

--
-- 表的结构 `design_category`
--

CREATE TABLE IF NOT EXISTS `design_category` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

--
-- 转存表中的数据 `design_category`
--

INSERT INTO `design_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal'),
(12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal'),
(13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `design_command`
--

CREATE TABLE IF NOT EXISTS `design_command` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` bigint(16) unsigned DEFAULT NULL COMMENT '执行时间',
  `createtime` bigint(16) unsigned DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) unsigned DEFAULT NULL COMMENT '更新时间',
  `status` enum('successed','failured') NOT NULL DEFAULT 'failured' COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='在线命令表';

--
-- 转存表中的数据 `design_command`
--

INSERT INTO `design_command` (`id`, `type`, `params`, `command`, `content`, `executetime`, `createtime`, `updatetime`, `status`) VALUES
(1, 'crud', '["--table=design_fontcolor"]', 'php think crud --table=design_fontcolor', 'Build Successed', 1670314487, 1670314487, 1670314487, 'successed'),
(2, 'menu', '["--controller=Fontcolor"]', 'php think menu --controller=Fontcolor', 'Build Successed!', 1670314502, 1670314502, 1670314502, 'successed'),
(3, 'crud', '["--table=design_sourcman"]', 'php think crud --table=design_sourcman', 'Build Successed', 1670314528, 1670314528, 1670314528, 'successed'),
(4, 'menu', '["--controller=Sourcman"]', 'php think menu --controller=Sourcman', 'Build Successed!', 1670314537, 1670314537, 1670314537, 'successed'),
(5, 'crud', '["--force=1","--table=design_fontcolor"]', 'php think crud --force=1 --table=design_fontcolor', 'Build Successed', 1670314628, 1670314628, 1670314628, 'successed'),
(6, 'menu', '["--controller=Fontcolor"]', 'php think menu --controller=Fontcolor', 'Build Successed!', 1670314636, 1670314636, 1670314636, 'successed'),
(7, 'crud', '["--force=1","--table=design_sourcman"]', 'php think crud --force=1 --table=design_sourcman', 'Build Successed', 1670314741, 1670314741, 1670314741, 'successed'),
(8, 'menu', '["--controller=Sourcman"]', 'php think menu --controller=Sourcman', 'Build Successed!', 1670314759, 1670314759, 1670314759, 'successed'),
(9, 'crud', '["--table=design_phototem"]', 'php think crud --table=design_phototem', 'Build Successed', 1670315092, 1670315092, 1670315092, 'successed'),
(10, 'menu', '["--controller=Phototem"]', 'php think menu --controller=Phototem', 'Build Successed!', 1670315101, 1670315101, 1670315101, 'successed'),
(11, 'crud', '["--table=design_actions"]', 'php think crud --table=design_actions', 'Build Successed', 1670315171, 1670315171, 1670315171, 'successed'),
(12, 'menu', '["--controller=Actions"]', 'php think menu --controller=Actions', 'Build Successed!', 1670315180, 1670315180, 1670315180, 'successed'),
(13, 'crud', '["--force=1","--table=design_actions"]', 'php think crud --force=1 --table=design_actions', 'Build Successed', 1670315329, 1670315329, 1670315329, 'successed'),
(14, 'menu', '["--controller=Actions"]', 'php think menu --controller=Actions', 'Build Successed!', 1670315338, 1670315338, 1670315338, 'successed'),
(15, 'crud', '["--table=design_waterphoto"]', 'php think crud --table=design_waterphoto', 'Build Successed', 1670383822, 1670383822, 1670383822, 'successed'),
(16, 'menu', '["--controller=Waterphoto"]', 'php think menu --controller=Waterphoto', 'Build Successed!', 1670383831, 1670383831, 1670383831, 'successed'),
(17, 'crud', '["--table=design_bannertem"]', 'php think crud --table=design_bannertem', 'Build Successed', 1670387402, 1670387402, 1670387402, 'successed'),
(18, 'menu', '["--controller=Bannertem"]', 'php think menu --controller=Bannertem', 'Build Successed!', 1670387410, 1670387410, 1670387410, 'successed'),
(19, 'crud', '["--table=design_bannerecore"]', 'php think crud --table=design_bannerecore', 'Build Successed', 1670389031, 1670389031, 1670389031, 'successed'),
(20, 'menu', '["--controller=Bannerecore"]', 'php think menu --controller=Bannerecore', 'Build Successed!', 1670389037, 1670389037, 1670389037, 'successed'),
(21, 'crud', '["--table=design_photorecore"]', 'php think crud --table=design_photorecore', 'Build Successed', 1670389910, 1670389910, 1670389911, 'successed'),
(22, 'menu', '["--controller=Photorecore"]', 'php think menu --controller=Photorecore', 'Build Successed!', 1670389917, 1670389917, 1670389917, 'successed'),
(23, 'crud', '["--force=1","--table=design_photorecore"]', 'php think crud --force=1 --table=design_photorecore', 'Build Successed', 1670390207, 1670390207, 1670390207, 'successed'),
(24, 'menu', '["--controller=Photorecore"]', 'php think menu --controller=Photorecore', 'Build Successed!', 1670390216, 1670390216, 1670390216, 'successed'),
(25, 'crud', '["--force=1","--table=design_photorecore"]', 'php think crud --force=1 --table=design_photorecore', 'Build Successed', 1670391470, 1670391470, 1670391470, 'successed'),
(26, 'menu', '["--controller=Photorecore"]', 'php think menu --controller=Photorecore', 'Build Successed!', 1670391479, 1670391479, 1670391479, 'successed'),
(27, 'crud', '["--force=1","--table=design_phototem"]', 'php think crud --force=1 --table=design_phototem', 'Build Successed', 1670392455, 1670392455, 1670392455, 'successed'),
(28, 'menu', '["--controller=Phototem"]', 'php think menu --controller=Phototem', 'Build Successed!', 1670392461, 1670392461, 1670392462, 'successed'),
(29, 'menu', '["--controller=Phototem"]', 'php think menu --controller=Phototem', 'Build Successed!', 1670392463, 1670392463, 1670392463, 'successed'),
(30, 'crud', '["--force=1","--table=design_phototem"]', 'php think crud --force=1 --table=design_phototem', 'Build Successed', 1670392613, 1670392613, 1670392613, 'successed'),
(31, 'menu', '["--controller=Phototem"]', 'php think menu --controller=Phototem', 'Build Successed!', 1670392615, 1670392615, 1670392615, 'successed'),
(32, 'crud', '["--force=1","--table=design_bannerecore"]', 'php think crud --force=1 --table=design_bannerecore', 'Build Successed', 1670395707, 1670395707, 1670395707, 'successed'),
(33, 'crud', '["--force=1","--table=design_photorecore"]', 'php think crud --force=1 --table=design_photorecore', 'Build Successed', 1670395720, 1670395720, 1670395720, 'successed'),
(34, 'crud', '["--force=1","--table=design_waterphoto"]', 'php think crud --force=1 --table=design_waterphoto', 'Build Successed', 1670395728, 1670395728, 1670395728, 'successed'),
(35, 'menu', '["--controller=Waterphoto","--controller=Photorecore","--controller=Bannerecore"]', 'php think menu --controller=Waterphoto --controller=Photorecore --controller=Bannerecore', 'Build Successed!', 1670395752, 1670395752, 1670395752, 'successed'),
(36, 'crud', '["--force=1","--table=design_bannerecore"]', 'php think crud --force=1 --table=design_bannerecore', 'Build Successed', 1670395892, 1670395892, 1670395892, 'successed'),
(37, 'menu', '["--controller=Bannerecore"]', 'php think menu --controller=Bannerecore', 'Build Successed!', 1670395899, 1670395899, 1670395899, 'successed');

-- --------------------------------------------------------

--
-- 表的结构 `design_config`
--

CREATE TABLE IF NOT EXISTS `design_config` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '可见条件',
  `value` text COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';

--
-- 转存表中的数据 `design_config`
--

INSERT INTO `design_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `visible`, `value`, `content`, `rule`, `extend`, `setting`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '', '设计师', '', 'required', '', NULL),
(2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '', '', NULL),
(3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '', '1.0.1', '', 'required', '', NULL),
(5, 'timezone', 'basic', 'Timezone', '', 'string', '', 'Asia/Shanghai', '', 'required', '', NULL),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', '', NULL),
(7, 'languages', 'basic', 'Languages', '', 'array', '', '{"backend":"zh-cn","frontend":"zh-cn"}', '', 'required', '', NULL),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', '', 'dashboard', '', 'required', '', NULL),
(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '', '{"default":"Default","page":"Page","article":"Article","test":"Test"}', '', '', '', ''),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '', '{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}', '', '', '', ''),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '', '1', '["请选择","SMTP"]', '', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', '', 'smtp.qq.com', '', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '', '465', '', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '', '10000', '', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', '', 'password', '', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '', '2', '["无","TLS","SSL"]', '', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '', '10000@qq.com', '', '', '', ''),
(18, 'attachmentcategory', 'dictionary', 'Attachment category', '', 'array', '', '{"category1":"Category1","category2":"Category2","custom":"Custom"}', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `design_ems`
--

CREATE TABLE IF NOT EXISTS `design_ems` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `design_fontcolor`
--

CREATE TABLE IF NOT EXISTS `design_fontcolor` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `colors` text COLLATE utf8mb4_unicode_ci COMMENT '颜色值集合',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='文字配色管理';

--
-- 转存表中的数据 `design_fontcolor`
--

INSERT INTO `design_fontcolor` (`id`, `colors`, `createtime`, `updatetime`) VALUES
(1, '#7f284b,#4e172c,#fea002,#fd8c02,#fffd06,#d2ff02,#ff5fcb,#fe798e,#000000,#FFFFFF', '1670314580', '1670317392');

-- --------------------------------------------------------

--
-- 表的结构 `design_photorecore`
--

CREATE TABLE IF NOT EXISTS `design_photorecore` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `nums` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份编码',
  `phones` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '照片墙名称',
  `phototem_id` int(11) DEFAULT NULL COMMENT '用的哪一个照片墙模板',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'status  状态:0=待制作照片墙,1=已制作照片墙,2=已忽略提交',
  `printimage` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '要打印的图片',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='照片墙提交记录';

-- --------------------------------------------------------

--
-- 表的结构 `design_phototem`
--

CREATE TABLE IF NOT EXISTS `design_phototem` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `picimage` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模板配图',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模板名称',
  `coordinate` text COLLATE utf8mb4_unicode_ci COMMENT '模板定位'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='照片墙模板管理';

--
-- 转存表中的数据 `design_phototem`
--

INSERT INTO `design_phototem` (`id`, `picimage`, `createtime`, `updatetime`, `name`, `coordinate`) VALUES
(1, '/uploads/20221206/77c9275b0ca55fcbfa786b77c1b188b4.jpg', '1670315156', '1670393273', '爱心照片墙', '[{"left":93,"top":286,"width":75,"height":117},{"left":108,"top":412,"width":58,"height":62},{"left":171,"top":227,"width":112,"height":119},{"left":171,"top":353,"width":131,"height":143},{"left":197,"top":503,"width":105,"height":62},{"left":236,"top":570,"width":66,"height":63},{"left":288,"top":279,"width":71,"height":67},{"left":307,"top":353,"width":132,"height":143},{"left":307,"top":503,"width":132,"height":142},{"left":338,"top":651,"width":70,"height":67},{"left":464,"top":227,"width":113,"height":119},{"left":443,"top":352,"width":134,"height":143},{"left":443,"top":503,"width":104,"height":62},{"left":444,"top":570,"width":66,"height":63},{"left":582,"top":286,"width":75,"height":117},{"left":582,"top":412,"width":58,"height":62}]');

-- --------------------------------------------------------

--
-- 表的结构 `design_sms`
--

CREATE TABLE IF NOT EXISTS `design_sms` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` bigint(16) unsigned DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `design_sourcman`
--

CREATE TABLE IF NOT EXISTS `design_sourcman` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '素材分类名称',
  `simages` text COLLATE utf8mb4_unicode_ci COMMENT '所有图片',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间',
  `weigh` int(11) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT=' 照片墙素材管理';

--
-- 转存表中的数据 `design_sourcman`
--

INSERT INTO `design_sourcman` (`id`, `name`, `simages`, `createtime`, `updatetime`, `weigh`) VALUES
(1, '爱心', '/uploads/20221206/0a7771bbc80d814176f58e4cd56e70ad.png,/uploads/20221206/4d13235fb17e8874a3313da43fcf3023.png,/uploads/20221206/6abe1512af3f114ed8fe883a172d1264.png,/uploads/20221206/17fce436727364a5ee0734230e108d79.png,/uploads/20221206/4c1e763e3488202a12d4847c605ce1f4.png,/uploads/20221206/60f0c6672c450e7bc2853e0c88bd129b.png,/uploads/20221206/cf36606165dc55ebbb2e11f44ac5b0f3.png', '1670314685', '1670314767', 1),
(2, '表情包', '/uploads/20221206/ae8d3e77c7d518046cbe8b3ac994e170.png,/uploads/20221206/2bedd2e6b6370577aa3fad8336cd6d9d.png,/uploads/20221206/9f789d5766251bad0b073a8cb3a9cb35.png,/uploads/20221206/ca037cb79f81cad193a518e74204bbac.png,/uploads/20221206/acc8fcb8011958ad01640beca1b7f59e.png,/uploads/20221206/2f24ef84ab0a470759535f538f7e6360.png,/uploads/20221206/73ba820e0afdd07fb25f5e93d592c6d3.png,/uploads/20221206/e0a0997fafc807312f4bd923702d5f45.png,/uploads/20221206/95016eb1ff9741bbb83e1475f0279975.png,/uploads/20221206/135b5ec6e0ef38fecff3b6b809aff38a.png,/uploads/20221206/6fb04345cb82a75779a5517dd6c36d75.png,/uploads/20221206/836c6e8708c251ca874c273693cf7d68.png,/uploads/20221206/13133459ef6c01dd05c644d158b54157.png,/uploads/20221206/325ece059a25e17a973244199a4b2ea7.png,/uploads/20221206/ef19af7599a1963f8091c58eb6cad7bc.png', '1670314810', '1670314810', 2),
(3, '氛围点缀', '/uploads/20221206/829ed1872e29e6be4885863d09c0145d.png,/uploads/20221206/1082c42cf2298add532f792973053c62.png,/uploads/20221206/1f1465ac97380c7893b853eae84b626f.png,/uploads/20221206/ed16d2beaf67ad35cad0401ee0f5387d.png,/uploads/20221206/3a64ab77969fcef91c26d4ccaa96f493.png,/uploads/20221206/78c6ee2bb497f691805aef9ee398309b.png,/uploads/20221206/053ff599a03c57dc2c6fbf326315c1d5.png,/uploads/20221206/e35d61f0b915c02efdeb99eb59a1af11.png,/uploads/20221206/b82cb750ed137c57aefb076344b5e240.png,/uploads/20221206/8a586cc04fb8f98a571029cf53df2a20.png', '1670314838', '1670314838', 3),
(4, '父亲节', '/uploads/20221206/1ae215bc685e10bf4f0ddce2e938921d.png,/uploads/20221206/e8dc0f5a6386487833f1e99df0ebc429.png,/uploads/20221206/2bc2a544f8f0c7ae31729f2a067730e8.png,/uploads/20221206/40ca9cde342744d2232f21a3b5acd013.png,/uploads/20221206/30cc0699bf04127028158eb16552422e.png,/uploads/20221206/507a9d9ca796db38883c474046bc4324.png', '1670314868', '1670314868', 4),
(5, '教师节', '/uploads/20221206/42dd83d5ec88244c51b9ef7dbcd50631.png,/uploads/20221206/b02894b28844c0e4617ffc3fdf95f436.png,/uploads/20221206/9a723ad2aa36142ab777a080cf522079.png,/uploads/20221206/69e68b2748e065da474ab4f8fa1a3531.png,/uploads/20221206/0dcc99efc0e0287b69ca34d35ae84d19.png,/uploads/20221206/0a9c70f07adfb24bdab4e78d66bd6b2e.png,/uploads/20221206/63bafe88842dc0cd5265dda0318bb3ba.png', '1670314890', '1670314890', 5),
(6, '母亲节', '/uploads/20221206/646ea81b8eb6c0268062d5c20281f0ce.png,/uploads/20221206/3f5ed6fece62520f04439b7ef2c6ff8f.png,/uploads/20221206/b678ad8252b53065833825b7b5d0d5bd.png,/uploads/20221206/b4323486b0da5f4113b3977340c11b8e.png,/uploads/20221206/9040ebb9177aa26dbf3a475442dbb22f.png,/uploads/20221206/1ce793984551a943c8d9e895325606f9.png,/uploads/20221206/24df5ab9502b5fe33c3613b6e7298066.png,/uploads/20221206/2ca2e90e4538563ac55b00e7ade1f71d.png,/uploads/20221206/c7bccf601e17ba6b47a2970916466fd0.png', '1670314923', '1670314923', 6),
(7, '气球', '/uploads/20221206/01de1d3470efd49b81a2aff09f3929fa.png,/uploads/20221206/71c0f5f2b56576843020c0f063e8b88e.png,/uploads/20221206/056870b2a51f2b8a3b1ad9e98eac3f3b.png,/uploads/20221206/5a74a10368120e639596be821690b5e0.png,/uploads/20221206/5a74a10368120e639596be821690b5e0.png', '1670314942', '1670314942', 7),
(8, '生日快乐', '/uploads/20221206/f279c46e208e42ee843dd38c476c156a.png,/uploads/20221206/016efd06e0692b71df2cef0ccb64257d.png,/uploads/20221206/65df7af9555c0f8f54d0ae5604ecdda4.png,/uploads/20221206/cabd05cae33132eb96d7880c7c6bdf1f.png', '1670314984', '1670314984', 8),
(9, '圣诞', '/uploads/20221206/5c2479da9167a34ab347e62da660629d.png,/uploads/20221206/4f327e42b8436e04acc494964a3c49e5.png,/uploads/20221206/fb324c12e33e93183f9b10afdbb3eb8a.png,/uploads/20221206/49e844fe958c953eebe338d6dd5a9468.png,/uploads/20221206/a53cbd47bb2264eba390aacdbd5306a7.png,/uploads/20221206/3f0430e71bcf7697a19f82611c04a5c7.png,/uploads/20221206/435a8d09ef503443ec3ba702e48740d7.png,/uploads/20221206/5fd133baa8a46694120be6d7fa592ad9.png,/uploads/20221206/4b1b9fb9d815a55982f75cdbc95872da.png,/uploads/20221206/a1303b3f74bc0ddcf3d61f475541f900.png,/uploads/20221206/7fc033905d5a8b03d185a2be0653fe06.png,/uploads/20221206/7e02d5630b7afa62a6e06bf1fc07234e.png', '1670315053', '1670315053', 9),
(10, '喜字素材', '/uploads/20221206/8be0f5ec85e845bd593333eac4cb1a28.png,/uploads/20221206/f54bb00c69a18b316c7633d725559d6d.png,/uploads/20221206/963f7b2287014dc943a22d0450d7229c.png,/uploads/20221206/d456341eaca20e86c1895e7daf936c64.png', '1670315071', '1670315071', 10);

-- --------------------------------------------------------

--
-- 表的结构 `design_test`
--

CREATE TABLE IF NOT EXISTS `design_test` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `user_id` int(10) DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` bigint(16) DEFAULT NULL COMMENT '刷新时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `deletetime` bigint(16) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';

--
-- 转存表中的数据 `design_test`
--

INSERT INTO `design_test` (`id`, `user_id`, `admin_id`, `category_id`, `category_ids`, `tags`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `json`, `multiplejson`, `price`, `views`, `workrange`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `deletetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 1, 1, 12, '12,13', '互联网,计算机', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{"a":"1","b":"2"}', '[{"title":"标题一","intro":"介绍一","author":"小明","age":"21"}]', '0.00', 0, '2020-10-01 00:00:00 - 2021-10-31 23:59:59', '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `design_user`
--

CREATE TABLE IF NOT EXISTS `design_user` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` bigint(16) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` bigint(16) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` bigint(16) DEFAULT NULL COMMENT '加入时间',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

--
-- 转存表中的数据 `design_user`
--

INSERT INTO `design_user` (`id`, `group_id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `money`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
(1, 1, 'admin', 'admin', '533224a3dbb108939e251e1d3502c736', 'd81f36', 'admin@163.com', '13888888888', 'http://design.ztu123.com/assets/img/avatar.png', 0, 0, '2017-04-08', '', '0.00', 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1491635035, '', 'normal', '');

-- --------------------------------------------------------

--
-- 表的结构 `design_user_group`
--

CREATE TABLE IF NOT EXISTS `design_user_group` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci COMMENT '权限节点',
  `createtime` bigint(16) DEFAULT NULL COMMENT '添加时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';

--
-- 转存表中的数据 `design_user_group`
--

INSERT INTO `design_user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1491635035, 1491635035, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `design_user_money_log`
--

CREATE TABLE IF NOT EXISTS `design_user_money_log` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';

-- --------------------------------------------------------

--
-- 表的结构 `design_user_rule`
--

CREATE TABLE IF NOT EXISTS `design_user_rule` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';

--
-- 转存表中的数据 `design_user_rule`
--

INSERT INTO `design_user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'index', 'Frontend', '', 1, 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'api', 'API Interface', '', 1, 1491635035, 1491635035, 2, 'normal'),
(3, 1, 'user', 'User Module', '', 1, 1491635035, 1491635035, 12, 'normal'),
(4, 2, 'user', 'User Module', '', 1, 1491635035, 1491635035, 11, 'normal'),
(5, 3, 'index/user/login', 'Login', '', 0, 1491635035, 1491635035, 5, 'normal'),
(6, 3, 'index/user/register', 'Register', '', 0, 1491635035, 1491635035, 7, 'normal'),
(7, 3, 'index/user/index', 'User Center', '', 0, 1491635035, 1491635035, 9, 'normal'),
(8, 3, 'index/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 4, 'normal'),
(9, 4, 'api/user/login', 'Login', '', 0, 1491635035, 1491635035, 6, 'normal'),
(10, 4, 'api/user/register', 'Register', '', 0, 1491635035, 1491635035, 8, 'normal'),
(11, 4, 'api/user/index', 'User Center', '', 0, 1491635035, 1491635035, 10, 'normal'),
(12, 4, 'api/user/profile', 'Profile', '', 0, 1491635035, 1491635035, 3, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `design_user_score_log`
--

CREATE TABLE IF NOT EXISTS `design_user_score_log` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `design_user_token`
--

CREATE TABLE IF NOT EXISTS `design_user_token` (
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `expiretime` bigint(16) DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';

-- --------------------------------------------------------

--
-- 表的结构 `design_version`
--

CREATE TABLE IF NOT EXISTS `design_version` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `oldversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` bigint(16) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(16) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本表';

-- --------------------------------------------------------

--
-- 表的结构 `design_waterphoto`
--

CREATE TABLE IF NOT EXISTS `design_waterphoto` (
  `id` int(11) NOT NULL COMMENT 'ID标识',
  `phones` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `nums` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份编码',
  `allimages` text COLLATE utf8mb4_unicode_ci COMMENT '待洗照片',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态:0=待洗照片,1=已处理照片,2=已忽略提交',
  `photosize` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '洗照片尺寸',
  `createtime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '添加时间',
  `updatetime` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='洗照片提交记录';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `design_actions`
--
ALTER TABLE `design_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_admin`
--
ALTER TABLE `design_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `design_admin_log`
--
ALTER TABLE `design_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- Indexes for table `design_area`
--
ALTER TABLE `design_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `design_attachment`
--
ALTER TABLE `design_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_auth_group`
--
ALTER TABLE `design_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_auth_group_access`
--
ALTER TABLE `design_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `design_auth_rule`
--
ALTER TABLE `design_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- Indexes for table `design_bannerecore`
--
ALTER TABLE `design_bannerecore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_bannertem`
--
ALTER TABLE `design_bannertem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_category`
--
ALTER TABLE `design_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `design_command`
--
ALTER TABLE `design_command`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `design_config`
--
ALTER TABLE `design_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `design_ems`
--
ALTER TABLE `design_ems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `design_fontcolor`
--
ALTER TABLE `design_fontcolor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_photorecore`
--
ALTER TABLE `design_photorecore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_phototem`
--
ALTER TABLE `design_phototem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_sms`
--
ALTER TABLE `design_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_sourcman`
--
ALTER TABLE `design_sourcman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_test`
--
ALTER TABLE `design_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_user`
--
ALTER TABLE `design_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `design_user_group`
--
ALTER TABLE `design_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_user_money_log`
--
ALTER TABLE `design_user_money_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_user_rule`
--
ALTER TABLE `design_user_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_user_score_log`
--
ALTER TABLE `design_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design_user_token`
--
ALTER TABLE `design_user_token`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `design_version`
--
ALTER TABLE `design_version`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `design_waterphoto`
--
ALTER TABLE `design_waterphoto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `design_actions`
--
ALTER TABLE `design_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `design_admin`
--
ALTER TABLE `design_admin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_admin_log`
--
ALTER TABLE `design_admin_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=357;
--
-- AUTO_INCREMENT for table `design_area`
--
ALTER TABLE `design_area`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `design_attachment`
--
ALTER TABLE `design_attachment`
  MODIFY `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `design_auth_group`
--
ALTER TABLE `design_auth_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `design_auth_rule`
--
ALTER TABLE `design_auth_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `design_bannerecore`
--
ALTER TABLE `design_bannerecore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `design_bannertem`
--
ALTER TABLE `design_bannertem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_category`
--
ALTER TABLE `design_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `design_command`
--
ALTER TABLE `design_command`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `design_config`
--
ALTER TABLE `design_config`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `design_ems`
--
ALTER TABLE `design_ems`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `design_fontcolor`
--
ALTER TABLE `design_fontcolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_photorecore`
--
ALTER TABLE `design_photorecore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `design_phototem`
--
ALTER TABLE `design_phototem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_sms`
--
ALTER TABLE `design_sms`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `design_sourcman`
--
ALTER TABLE `design_sourcman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `design_test`
--
ALTER TABLE `design_test`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_user`
--
ALTER TABLE `design_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_user_group`
--
ALTER TABLE `design_user_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `design_user_money_log`
--
ALTER TABLE `design_user_money_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `design_user_rule`
--
ALTER TABLE `design_user_rule`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `design_user_score_log`
--
ALTER TABLE `design_user_score_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `design_version`
--
ALTER TABLE `design_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- AUTO_INCREMENT for table `design_waterphoto`
--
ALTER TABLE `design_waterphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID标识',AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
