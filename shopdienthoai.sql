-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 06:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_assets`
--

CREATE TABLE `dz8i1_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_assets`
--

INSERT INTO `dz8i1_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 177, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 35, 48, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(17, 1, 49, 50, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 51, 134, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(19, 1, 135, 138, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(20, 1, 139, 140, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(21, 1, 141, 142, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
(22, 1, 143, 144, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 145, 146, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(24, 1, 147, 150, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1,\"9\":1},\"core.manage\":[],\"core.create\":{\"9\":1},\"core.delete\":{\"9\":1},\"core.edit\":{\"9\":1},\"core.edit.state\":{\"9\":1},\"core.options\":{\"9\":1}}'),
(26, 1, 151, 152, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(30, 19, 136, 137, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(32, 24, 148, 149, 1, 'com_users.category.7', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(33, 1, 153, 154, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 155, 156, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
(35, 1, 157, 158, 1, 'com_tags', 'com_tags', '{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
(36, 1, 159, 160, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 161, 162, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 163, 164, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 52, 53, 2, 'com_modules.module.1', 'Main Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(40, 18, 54, 55, 2, 'com_modules.module.2', 'Login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(41, 18, 56, 57, 2, 'com_modules.module.3', 'Popular Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(42, 18, 58, 59, 2, 'com_modules.module.4', 'Recently Added Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(43, 18, 60, 61, 2, 'com_modules.module.8', 'Toolbar', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(44, 18, 62, 63, 2, 'com_modules.module.9', 'Quick Icons', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(45, 18, 64, 65, 2, 'com_modules.module.10', 'Logged-in Users', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(46, 18, 66, 67, 2, 'com_modules.module.12', 'Admin Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(47, 18, 68, 69, 2, 'com_modules.module.13', 'Admin Submenu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(48, 18, 70, 71, 2, 'com_modules.module.14', 'User Status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(49, 18, 72, 73, 2, 'com_modules.module.15', 'Title', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(50, 18, 74, 75, 2, 'com_modules.module.16', 'Login Form', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(51, 18, 76, 77, 2, 'com_modules.module.17', 'Breadcrumbs', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(52, 18, 78, 79, 2, 'com_modules.module.79', 'Multilanguage status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(53, 18, 80, 81, 2, 'com_modules.module.86', 'Joomla Version', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 1, 165, 166, 1, '#__languages.2', '#__languages.2', '{}'),
(57, 18, 82, 83, 2, 'com_modules.module.87', 'Loại điện thoại', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(58, 16, 38, 39, 2, 'com_menus.menu.3', 'menu-didong-thuonghieu', '{}'),
(59, 18, 84, 85, 2, 'com_modules.module.88', 'Thương hiệu điện thoại', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(61, 16, 40, 41, 2, 'com_menus.menu.5', 'menu-tivi-thuonghieu', '{}'),
(62, 18, 86, 87, 2, 'com_modules.module.89', 'Loại ti vi', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(63, 18, 88, 89, 2, 'com_modules.module.90', 'Thương hiệu ti vi', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(64, 16, 42, 43, 2, 'com_menus.menu.6', 'menu-amthanh-loai', '{}'),
(70, 18, 90, 91, 2, 'com_modules.module.91', 'Loại âm thanh', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(67, 16, 44, 45, 2, 'com_menus.menu.9', 'menu-maygiat-thuonghieu', '{}'),
(69, 16, 46, 47, 2, 'com_menus.menu.11', 'menu-tulanh-thuonghieu', '{}'),
(71, 18, 92, 93, 2, 'com_modules.module.92', 'Loại máy giặt', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(72, 18, 94, 95, 2, 'com_modules.module.93', 'Thương hiệu máy giặt', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(73, 18, 96, 97, 2, 'com_modules.module.94', 'Loại tủ lạnh', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(74, 18, 98, 99, 2, 'com_modules.module.95', 'Thương hiệu tủ lạnh', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(75, 18, 100, 101, 2, 'com_modules.module.96', 'slide', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(76, 1, 167, 170, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(77, 18, 102, 103, 2, 'com_modules.module.97', 'DJ-ImageSlider', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(78, 76, 168, 169, 2, 'com_djimageslider.category.8', 'slite-hinh', '{}'),
(79, 18, 104, 105, 2, 'com_modules.module.98', 'aaaa', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(80, 18, 106, 107, 2, 'com_modules.module.99', 'Slide-hinh', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(96, 18, 116, 117, 2, 'com_modules.module.111', 'VM - Search in Shop', '{}'),
(82, 1, 171, 172, 1, 'com_virtuemart_allinone', 'VirtueMart_allinone', '{}'),
(95, 18, 114, 115, 2, 'com_modules.module.110', 'VM - Featured products', '{}'),
(94, 18, 112, 113, 2, 'com_modules.module.109', 'VM - Currencies Selector', '{}'),
(92, 1, 173, 174, 1, 'com_virtuemart', 'VIRTUEMART', '{\"core.admin\":{\"1\":1}}'),
(93, 18, 110, 111, 2, 'com_modules.module.108', 'VM - Administrator Module', '{}'),
(91, 18, 108, 109, 2, 'com_modules.module.107', 'login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(97, 18, 118, 119, 2, 'com_modules.module.112', 'VM - Manufacturer', '{}'),
(98, 18, 120, 121, 2, 'com_modules.module.113', 'VM - Shopping cart', '{}'),
(99, 18, 122, 123, 2, 'com_modules.module.114', 'VM - Category', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(100, 1, 175, 176, 1, 'com_tcpdf', 'tcpdf', '{}'),
(101, 18, 124, 125, 2, 'com_modules.module.115', 'abc', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(102, 18, 126, 127, 2, 'com_modules.module.116', 'ddddđ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(103, 18, 128, 129, 2, 'com_modules.module.117', 'login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(106, 18, 130, 131, 2, 'com_modules.module.118', 'login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(107, 18, 132, 133, 2, 'com_modules.module.119', 'name', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_associations`
--

CREATE TABLE `dz8i1_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_banners`
--

CREATE TABLE `dz8i1_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_banner_clients`
--

CREATE TABLE `dz8i1_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_banner_tracks`
--

CREATE TABLE `dz8i1_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_categories`
--

CREATE TABLE `dz8i1_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_categories`
--

INSERT INTO `dz8i1_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 295, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 295, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 295, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 295, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 295, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 295, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 78, 1, 11, 12, 1, 'slite-hinh', 'com_djimageslider', 'slite-hinh', 'slite-hinh', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 295, '2017-04-15 15:20:30', 0, '2017-04-15 15:20:30', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_contact_details`
--

CREATE TABLE `dz8i1_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_content`
--

CREATE TABLE `dz8i1_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_contentitem_tag_map`
--

CREATE TABLE `dz8i1_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_content_frontpage`
--

CREATE TABLE `dz8i1_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_content_rating`
--

CREATE TABLE `dz8i1_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_content_types`
--

CREATE TABLE `dz8i1_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_content_types`
--

INSERT INTO `dz8i1_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_core_log_searches`
--

CREATE TABLE `dz8i1_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_djimageslider`
--

CREATE TABLE `dz8i1_djimageslider` (
  `id` int(10) UNSIGNED NOT NULL,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_djimageslider`
--

INSERT INTO `dz8i1_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 8, 'Slide', 'slide', 'images/slide/hinh1.jpg', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{\"link_type\":\"\",\"link_menu\":\"101\",\"link_url\":\"images\\/slide\",\"link_article\":\"\",\"link_target\":\"\",\"link_rel\":\"\",\"alt_attr\":\"\",\"title_attr\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_extensions`
--

CREATE TABLE `dz8i1_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_extensions`
--

INSERT INTO `dz8i1_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"vi-VN\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"show_date\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"2\",\"sendpassword\":\"0\",\"useractivation\":\"0\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"1\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"fc8b2779560c8167ef9e7ac95a23e251\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `dz8i1_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.18.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2016\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.4.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 295, '2017-04-20 03:50:45', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"0\",\"forceLogout\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1493008841}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":1,\"lastrun\":1492748670,\"unique_id\":\"378699703700492c784803d0d9aa0a1638fd0fb2\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Vietnamese-VN', 'language', 'vi-VN', '', 0, 1, 0, 0, '{\"name\":\"Vietnamese-VN\",\"type\":\"language\",\"creationDate\":\"December 2013\",\"author\":\"Vietnamese Translation Team Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlaviet.info\",\"authorUrl\":\"http:\\/\\/joomlaviet.info\",\"version\":\"3.2.1.1\",\"description\":\"Vietnamese language pack for Joomla! 3.2\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Vietnamese-VN', 'language', 'vi-VN', '', 1, 1, 0, 0, '{\"name\":\"Vietnamese-VN\",\"type\":\"language\",\"creationDate\":\"December 2013\",\"author\":\"Vietnamese Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlaviet.info\",\"authorUrl\":\"http:\\/\\/joomlaviet.info\",\"version\":\"3.2.1.1\",\"description\":\"Vietnamese administration language for Joomla! 3.2\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Vietnamese Language Pack', 'package', 'pkg_vi-VN', '', 0, 1, 1, 0, '{\"name\":\"Vietnamese Language Pack\",\"type\":\"package\",\"creationDate\":\"December 2013\",\"author\":\"Vietnamese Translation Team\",\"copyright\":\"Copyright (C) 2013 joomlaviet.info and Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlaviet.info\",\"authorUrl\":\"http:\\/\\/joomlaviet.info\",\"version\":\"3.2.1.1\",\"description\":\"3.2.1.1 Joomla Vietnamese Language Package\",\"group\":\"\",\"filename\":\"pkg_vi-VN\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"17 February 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2013-2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.1.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Helix3 - Ajax', 'plugin', 'helix3', 'ajax', 0, 1, 1, 0, '{\"name\":\"Helix3 - Ajax\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.9\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'System - Helix3 Framework', 'plugin', 'helix3', 'system', 0, 1, 1, 0, '{\"name\":\"System - Helix3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.9\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'shaper_helix3', 'template', 'shaper_helix3', '', 0, 1, 1, 0, '{\"name\":\"shaper_helix3\",\"type\":\"template\",\"creationDate\":\"Jan 2016\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2017 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.9\",\"description\":\"Shaper Helix3 - Starter Template of Helix3 framework\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"preloader\":\"0\",\"preloader_animation\":\"circle\",\"preloader_bg\":\"#f5f5f5\",\"preloader_tx\":\"#333333\",\"goto_top\":\"0\",\"sticky_header\":\"1\",\"boxed_layout\":\"0\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_load_pos\":\"default\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"\\u00a9 2015 Your Company. All Rights Reserved. Designed By JoomShaper\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"default\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"comingsoon_mode\":\"0\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"5-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"preset\":\"preset1\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#26aae1\",\"preset1_megabg\":\"#ffffff\",\"preset1_megatx\":\"#333333\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset2_megabg\":\"#ffffff\",\"preset2_megatx\":\"#333333\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset3_megabg\":\"#ffffff\",\"preset3_megatx\":\"#333333\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#000000\",\"preset4_major\":\"#eb4947\",\"preset4_megabg\":\"#ffffff\",\"preset4_megatx\":\"#333333\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"menu_animation\":\"menu-fade\",\"offcanvas_animation\":\"default\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"300\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"0\",\"enable_custom_font\":\"0\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"lessoption\":\"0\",\"show_post_format\":\"1\",\"commenting_engine\":\"disabled\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"1\",\"image_small\":\"0\",\"image_small_size\":\"100X100\",\"image_thumbnail\":\"1\",\"image_thumbnail_size\":\"200X200\",\"image_medium\":\"0\",\"image_medium_size\":\"300X300\",\"image_large\":\"0\",\"image_large_size\":\"600X600\",\"blog_list_image\":\"default\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'tcpdf', 'component', 'com_tcpdf', '', 1, 1, 0, 0, '{\"name\":\"tcpdf\",\"type\":\"component\",\"creationDate\":\"February 2015\",\"author\":\"Nicola Asuni, The VirtueMart Development Team\",\"copyright\":\"Copyright (c) 2001-2013 Nicola Asuni - Tecnick.com LTD - Tutti i diritti riservati - All Rights Reserved. 2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"1.0.2\",\"description\":\"TCPDF 6.2.12 by Nicola Asuni. Joomla Installer by the VirtueMart Team\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{\"name\":\"com_djimageslider\",\"type\":\"component\",\"creationDate\":\"September 2016\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.2.1\",\"description\":\"DJ-ImageSlider component\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{\"name\":\"DJ-ImageSlider\",\"type\":\"module\",\"creationDate\":\"September 2016\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.2.1\",\"description\":\"DJ-ImageSlider Module\",\"group\":\"\",\"filename\":\"mod_djimageslider\"}', '{\"slider_source\":\"0\",\"slider_type\":\"0\",\"theme\":\"default\",\"link_image\":\"1\",\"image_folder\":\"images\\/sampledata\\/fruitshop\",\"link\":\"\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"full_width\":\"0\",\"image_width\":\"240\",\"image_height\":\"180\",\"fit_to\":\"0\",\"image_centering\":\"0\",\"visible_images\":\"3\",\"space_between_images\":\"10\",\"max_images\":\"20\",\"sort_by\":\"1\",\"css3\":\"1\",\"autoplay\":\"1\",\"looponce\":\"0\",\"show_buttons\":\"1\",\"show_arrows\":\"1\",\"show_custom_nav\":\"0\",\"wcag\":\"1\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"40\",\"arrows_horizontal\":\"10\",\"idx_style\":\"0\",\"effect\":\"Expo\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'DJ-ImageSlider Package', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{\"name\":\"DJ-ImageSlider Package\",\"type\":\"package\",\"creationDate\":\"September 2016\",\"author\":\"DJ-Extensions.com\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.2.1\",\"description\":\"\\n\\t\\t<style type=\\\"text\\/css\\\">\\n\\t\\t\\t.djex-info { padding: 20px 30px 10px; margin: 0 0 20px 0; background: #ac00d4; color: #fff; border: 1px solid #81009f; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: normal; -webkit-border-radius: 4px; border-radius: 4px; }\\n\\t\\t\\t.djex-title { text-transform: uppercase; font-weight: bold; font-size: 14px; }\\n\\t\\t\\t.djex-info a:link, .djex-info a:visited, .djex-info a:hover { color:#fff; text-decoration:underline; font-weight: 600; }\\t\\n\\t\\t\\t.djex-info img { float: left; margin: 0 30px 10px 0; }\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\\"djex-info\\\">\\n\\t\\t\\t<a href=\\\"index.php?option=com_djimageslider\\\"><img src=\\\"components\\/com_djimageslider\\/assets\\/ex_slider.png\\\" \\/><\\/a>\\n\\t\\t\\t<p class=\\\"djex-title\\\">Thank you for installing DJ-ImageSlider!<\\/p>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display slideshows containing slides with title and short description linked to any menu item, article or custom url address. \\n\\t\\t\\tIf you want to learn how to use DJ-ImageSlider please read <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/documentation\\\">Documentation<\\/a> and <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\/faq\\\">FAQ section<\\/a><\\/p>\\n\\t\\t\\t<p>Check out our other extensions at <a target=\\\"_blank\\\" href=\\\"http:\\/\\/dj-extensions.com\\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t\\t<div style=\\\"clear:both\\\"><\\/div>\\n\\t\\t<\\/div>\\n\\t\\t\",\"group\":\"\",\"filename\":\"pkg_dj-imageslider\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'mod_virtuemart_category', 'module', 'mod_virtuemart_category', '', 0, 1, 1, 0, '{\"name\":\"mod_virtuemart_category\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VIRTUEMART_CATEGORY_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10013, 'VirtueMart_allinone', 'component', 'com_virtuemart_allinone', '', 1, 0, 0, 0, '{\"name\":\"VirtueMart_allinone\",\"type\":\"component\",\"creationDate\":\"March 29 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'VM Payment - Standard', 'plugin', 'standard', 'vmpayment', 0, 1, 1, 0, '{\"name\":\"Standard\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"Standard payment plugin\",\"group\":\"\",\"filename\":\"standard\"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10015, 'VM Payment - Klarna', 'plugin', 'klarna', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Klarna\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"Klarna VirtueMart Payment Plugin\",\"group\":\"\",\"filename\":\"klarna\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10016, 'VM Payment - KlarnaCheckout', 'plugin', 'klarnacheckout', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Klarna Checkout\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"klarnacheckout\"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10017, 'VM Payment - Sofort Banking/Überweisung', 'plugin', 'sofort', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Sofort\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"sofort\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10018, 'VM Payment - PayPal', 'plugin', 'paypal', 'vmpayment', 0, 1, 1, 0, '{\"name\":\"PayPal\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"PayPal\",\"group\":\"\",\"filename\":\"paypal\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'VM Payment - Heidelpay', 'plugin', 'heidelpay', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Heidelpay\",\"type\":\"plugin\",\"creationDate\":\"12-Sep-2012\",\"author\":\"Heidelberger Payment GmbH\",\"copyright\":\"Copyright Heidelberger Payment GmbH\",\"authorEmail\":\"info@heidelpay.de\",\"authorUrl\":\"http:\\/\\/www.heidelpay.de\",\"version\":\"3.2.1\",\"description\":\"\\n        <h2>Virtuemart Plugin von:<\\/h2><p><a href=\\\"http:\\/\\/www.Heidelpay.de\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.heidelpay.de\\/gfx\\/logo.gif\\\" style=\\\"margin-right:20px;\\\"\\/><\\/a><\\/p> \",\"group\":\"\",\"filename\":\"heidelpay\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10020, 'VM Payment - Paybox', 'plugin', 'paybox', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"VM Payment - Paybox\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"<a href=\\\"http:\\/\\/paybox.com\\\" target=\\\"_blank\\\">Paybox<\\/a> \\n    \",\"group\":\"\",\"filename\":\"paybox\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10021, 'VM Payment - Pay with Amazon', 'plugin', 'amazon', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"AMAZON\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"AMAZON payment plugin\",\"group\":\"\",\"filename\":\"amazon\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10022, 'System - Pay with Amazon', 'plugin', 'amazon', 'system', 0, 0, 1, 0, '{\"name\":\"AMAZON\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"AMAZON payment SYSTEM plugin\",\"group\":\"\",\"filename\":\"amazon\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10023, 'VM Payment - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"realex_hpp_api\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"Realex HPP and API\",\"group\":\"\",\"filename\":\"realex_hpp_api\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `dz8i1_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10024, 'VM UserField - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmuserfield', 0, 0, 1, 0, '{\"name\":\"Realex_hpp_api\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"Card storage plugin for Realex\",\"group\":\"\",\"filename\":\"realex_hpp_api\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10025, 'VM Payment - Skrill', 'plugin', 'skrill', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Skrill\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.skrill.com\",\"version\":\"3.2.1\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">skrill<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\",\"filename\":\"skrill\"}', '', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(10026, 'VM Payment - Authorize.net', 'plugin', 'authorizenet', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Authorize.net AIM\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"Authorize.net AIM\",\"group\":\"\",\"filename\":\"authorizenet\"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10027, 'VM Payment - Sofort iDeal', 'plugin', 'sofort_ideal', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"Sofort Ideal\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"sofort\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10028, 'VM Payment - Klikandpay', 'plugin', 'klikandpay', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"VM Payment - klikandpay\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"<a href=\\\"http:\\/\\/klikandpay.com\\\" target=\\\"_blank\\\">klikandpay<\\/a> \\n    \",\"group\":\"\",\"filename\":\"klikandpay\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10029, 'VM Shipment - By weight, ZIP and countries', 'plugin', 'weight_countries', 'vmshipment', 0, 1, 1, 0, '{\"name\":\"By weight, ZIP and countries\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"weight_countries\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'VM Custom - Customer text input', 'plugin', 'textinput', 'vmcustom', 0, 1, 1, 0, '{\"name\":\"VMCustom - textinput\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"text input plugin for product\",\"group\":\"\",\"filename\":\"textinput\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'VM Custom - Product specification', 'plugin', 'specification', 'vmcustom', 0, 1, 1, 0, '{\"name\":\"plgvm_specification\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"VMCustom - specification; text input plugin for product\",\"group\":\"\",\"filename\":\"specification\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'VM Calculation - Avalara Tax', 'plugin', 'avalara', 'vmcalculation', 0, 0, 1, 0, '{\"name\":\"VM - Calculation Avalara Tax\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"VM - Calculation Avalara Tax; On demand tax calculation for whole U.S.A.\",\"group\":\"\",\"filename\":\"avalara\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'com_virtuemart - vi-VN', 'file', 'com_virtuemart-vi-VN', '', 0, 1, 0, 0, '{\"name\":\"com_virtuemart - vi-VN\",\"type\":\"file\",\"creationDate\":\"14.04.2017\",\"author\":\"VirtueMart language team\",\"copyright\":\"\\u00a9 2008-2017 - compojoom-com. All rights reserved!\",\"authorEmail\":\"max@virtuemart.net\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"2017-04-14-08-05-16\",\"description\":\"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We\'ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to our translation team at (https:\\/\\/www.transifex.com\\/projects\\/p\\/virtuemart\\/) for helping with this VirtueMart translation!\\n    \",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'mod_virtuemart_cart', 'module', 'mod_virtuemart_cart', '', 0, 1, 1, 0, '{\"name\":\"mod_virtuemart_cart\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VIRTUEMART_CART_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_cart\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'mod_virtuemart_manufacturer', 'module', 'mod_virtuemart_manufacturer', '', 0, 1, 1, 0, '{\"name\":\"mod_virtuemart_manufacturer\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VIRTUEMART_MANUFACTURER_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_manufacturer\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10049, 'mod_virtuemart_search', 'module', 'mod_virtuemart_search', '', 0, 1, 1, 0, '{\"name\":\"mod_virtuemart_search\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VIRTUEMART_SEARCH_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10047, 'mod_virtuemart_currencies', 'module', 'mod_virtuemart_currencies', '', 0, 1, 1, 0, '{\"name\":\"mod_virtuemart_currencies\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VIRTUEMART_CURRENCIES_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_currencies\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10048, 'mod_virtuemart_product', 'module', 'mod_virtuemart_product', '', 0, 1, 1, 0, '{\"name\":\"mod_virtuemart_product\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_product\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10043, 'VIRTUEMART', 'component', 'com_virtuemart', '', 1, 1, 0, 0, '{\"name\":\"VIRTUEMART\",\"type\":\"component\",\"creationDate\":\"March 29 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"virtuemart\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'VM Payment - 2Checkout', 'plugin', 'tco', 'vmpayment', 0, 0, 1, 0, '{\"name\":\"2Checkout\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Craig Christenson\",\"copyright\":\"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.2checkout.com\",\"version\":\"3.2.1\",\"description\":\"<a href=\\\"https:\\/\\/www.2checkout.com\\/referral?r=virtuemart\\\" target=\\\"_blank\\\">2Checkout<\\/a> is a popular payment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"tco\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10045, 'VirtueMart Product', 'plugin', 'virtuemart', 'search', 0, 1, 1, 0, '{\"name\":\"Search - VirtueMart\",\"type\":\"plugin\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"PLG_SEARCH_VIRTUEMART_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"virtuemart\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'mod_vmmenu', 'module', 'mod_vmmenu', '', 1, 1, 3, 0, '{\"name\":\"VirtueMart Administrator Menu\",\"type\":\"module\",\"creationDate\":\"March 31 2017\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"3.2.1\",\"description\":\"MOD_VMMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_vmmenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_filters`
--

CREATE TABLE `dz8i1_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links`
--

CREATE TABLE `dz8i1_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms0`
--

CREATE TABLE `dz8i1_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms1`
--

CREATE TABLE `dz8i1_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms2`
--

CREATE TABLE `dz8i1_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms3`
--

CREATE TABLE `dz8i1_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms4`
--

CREATE TABLE `dz8i1_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms5`
--

CREATE TABLE `dz8i1_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms6`
--

CREATE TABLE `dz8i1_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms7`
--

CREATE TABLE `dz8i1_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms8`
--

CREATE TABLE `dz8i1_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_terms9`
--

CREATE TABLE `dz8i1_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_termsa`
--

CREATE TABLE `dz8i1_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_termsb`
--

CREATE TABLE `dz8i1_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_termsc`
--

CREATE TABLE `dz8i1_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_termsd`
--

CREATE TABLE `dz8i1_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_termse`
--

CREATE TABLE `dz8i1_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_links_termsf`
--

CREATE TABLE `dz8i1_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_taxonomy`
--

CREATE TABLE `dz8i1_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dz8i1_finder_taxonomy`
--

INSERT INTO `dz8i1_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_taxonomy_map`
--

CREATE TABLE `dz8i1_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_terms`
--

CREATE TABLE `dz8i1_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_terms_common`
--

CREATE TABLE `dz8i1_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dz8i1_finder_terms_common`
--

INSERT INTO `dz8i1_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_tokens`
--

CREATE TABLE `dz8i1_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_tokens_aggregate`
--

CREATE TABLE `dz8i1_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_finder_types`
--

CREATE TABLE `dz8i1_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_languages`
--

CREATE TABLE `dz8i1_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_languages`
--

INSERT INTO `dz8i1_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1),
(2, 55, 'vi-VN', 'VietNam(VN)', 'VietNam(VN)', 'vi', 'vi', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_menu`
--

CREATE TABLE `dz8i1_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_menu`
--

INSERT INTO `dz8i1_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 153, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 15, 20, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 16, 17, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 18, 19, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 21, 24, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 22, 23, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 25, 30, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 26, 27, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 28, 29, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 31, 32, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 35, 36, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 37, 38, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Trang chủ', 'trang-chu', '', 'trang-chu', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=0&virtuemart_manufacturer_id=0', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"0\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"ggggg\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"101\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 43, 44, 1, '*', 0),
(102, 'mainmenu', 'Ti vi', 'ti-vi', '', 'ti-vi', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&virtuemart_manufacturer_id=0', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":200,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"102\\\",\\\"moduleId\\\":\\\"90\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 45, 46, 0, '*', 0),
(103, 'mainmenu', 'Di động', 'di-dong', '', 'di-dong', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=34&virtuemart_manufacturer_id=0', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":250,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"88\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 47, 48, 0, '*', 0),
(104, 'mainmenu', 'Âm thanh', 'am-thanh', '', 'am-thanh', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=21&virtuemart_manufacturer_id=0', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":200,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"104\\\",\\\"moduleId\\\":\\\"91\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 49, 50, 0, '*', 0),
(105, 'mainmenu', 'Máy giặt', 'may-giat', '', 'may-giat', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=0&virtuemart_manufacturer_id=0', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":254,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"105\\\",\\\"moduleId\\\":\\\"93\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 51, 52, 0, '*', 0),
(106, 'mainmenu', 'tủ lạnh', 'tu-lanh', '', 'tu-lanh', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=0&virtuemart_manufacturer_id=0', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":300,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"106\\\",\\\"moduleId\\\":\\\"95\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 53, 54, 0, '*', 0),
(110, 'menu-didong-thuonghieu', 'Samsung', 'samsung', '', 'samsung', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=34&virtuemart_manufacturer_id=4', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"110\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 61, 62, 0, '*', 0),
(111, 'menu-didong-thuonghieu', 'Apple', 'apple', '', 'apple', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=34&virtuemart_manufacturer_id=11', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"111\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 63, 64, 0, '*', 0),
(112, 'menu-didong-thuonghieu', 'Lenovo', 'levnovo', '', 'levnovo', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=34&virtuemart_manufacturer_id=12', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"112\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 65, 66, 0, '*', 0),
(113, 'menu-didong-thuonghieu', 'Sony', 'sony', '', 'sony', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=34&virtuemart_manufacturer_id=8', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"113\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 67, 68, 0, '*', 0),
(116, 'menu-tivi-thuonghieu', 'LG', 'lg', '', 'lg', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&virtuemart_manufacturer_id=19', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"116\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 73, 74, 0, '*', 0),
(117, 'menu-tivi-thuonghieu', 'Samsung', 'samsungtv', '', 'samsungtv', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&virtuemart_manufacturer_id=3', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"117\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 75, 76, 0, '*', 0),
(118, 'menu-tivi-thuonghieu', 'Sony', 'sonytv', '', 'sonytv', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&virtuemart_manufacturer_id=3', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"118\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 77, 78, 0, '*', 0),
(119, 'menu-tivi-thuonghieu', 'Panasonic', 'panasonictv', '', 'panasonictv', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&virtuemart_manufacturer_id=9', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"119\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 79, 80, 0, '*', 0),
(120, 'menu-amthanh-loai', 'Hệ thống âm thanh', 'he-thong-am-thanh', '', 'he-thong-am-thanh', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=21&virtuemart_manufacturer_id=13', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"120\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 81, 82, 0, '*', 0),
(121, 'menu-amthanh-loai', 'Amply', 'amply', '', 'amply', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=21&virtuemart_manufacturer_id=14', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"121\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 83, 84, 0, '*', 0),
(122, 'menu-amthanh-loai', 'Loa', 'loa', '', 'loa', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=21&virtuemart_manufacturer_id=15', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"122\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 85, 86, 0, '*', 0),
(125, 'menu-maygiat-thuonghieu', 'Panasonic', 'panasonicmg', '', 'panasonicmg', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=25&virtuemart_manufacturer_id=10', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"125\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 91, 92, 0, '*', 0),
(126, 'menu-maygiat-thuonghieu', 'Samsung', 'samsungmg', '', 'samsungmg', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=25&virtuemart_manufacturer_id=5', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"126\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 93, 94, 0, '*', 0),
(127, 'menu-maygiat-thuonghieu', 'Electrolux', 'electrolux-mg', '', 'electrolux-mg', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=25&virtuemart_manufacturer_id=16', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"127\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 95, 96, 0, '*', 0),
(131, 'menu-tulanh-thuonghieu', 'Toshiba', 'toshiba-tl', '', 'toshiba-tl', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=29&virtuemart_manufacturer_id=17', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"131\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 99, 100, 0, '*', 0),
(132, 'menu-tulanh-thuonghieu', 'LG', 'lg-tulanh', '', 'lg-tulanh', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=7&virtuemart_manufacturer_id=2', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"132\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 101, 102, 0, '*', 0),
(133, 'menu-tulanh-thuonghieu', 'Sharp', 'sharp-tulanh', '', 'sharp-tulanh', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=29&virtuemart_manufacturer_id=18', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"133\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 103, 104, 0, '*', 0);
INSERT INTO `dz8i1_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(134, 'menu-tulanh-thuonghieu', 'Samsung', 'samsung-tulanh', '', 'samsung-tulanh', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=29&virtuemart_manufacturer_id=6', 'component', 1, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"134\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 105, 106, 0, '*', 0),
(135, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10009, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '{}', 107, 112, 0, '', 1),
(136, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 135, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '{}', 108, 109, 0, '', 1),
(137, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 135, 2, 10009, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 110, 111, 0, '', 1),
(175, 'main', 'COM_VIRTUEMART_MENU_CONFIGURATION', 'com-virtuemart-menu-configuration', '', 'com-virtuemart/com-virtuemart-menu-configuration', 'index.php?option=com_virtuemart&view=config', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 136, 137, 0, '', 1),
(174, 'main', 'COM_VIRTUEMART_MENU_PAYMENTMETHODS', 'com-virtuemart-menu-paymentmethods', '', 'com-virtuemart/com-virtuemart-menu-paymentmethods', 'index.php?option=com_virtuemart&view=paymentmethod', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png', 0, '{}', 134, 135, 0, '', 1),
(173, 'main', 'COM_VIRTUEMART_MENU_SHIPMENTMETHODS', 'com-virtuemart-menu-shipmentmethods', '', 'com-virtuemart/com-virtuemart-menu-shipmentmethods', 'index.php?option=com_virtuemart&view=shipmentmethod', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png', 0, '{}', 132, 133, 0, '', 1),
(171, 'main', 'COM_VIRTUEMART_MENU_STORE', 'com-virtuemart-menu-store', '', 'com-virtuemart/com-virtuemart-menu-store', 'index.php?option=com_virtuemart&view=user&task=editshop', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png', 0, '{}', 128, 129, 0, '', 1),
(172, 'main', 'COM_VIRTUEMART_MENU_MEDIAFILES', 'com-virtuemart-menu-mediafiles', '', 'com-virtuemart/com-virtuemart-menu-mediafiles', 'index.php?option=com_virtuemart&view=media', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png', 0, '{}', 130, 131, 0, '', 1),
(168, 'main', 'COM_VIRTUEMART_MENU_REPORT', 'com-virtuemart-menu-report', '', 'com-virtuemart/com-virtuemart-menu-report', 'index.php?option=com_virtuemart&view=report', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 122, 123, 0, '', 1),
(169, 'main', 'COM_VIRTUEMART_MENU_USERS', 'com-virtuemart-menu-users', '', 'com-virtuemart/com-virtuemart-menu-users', 'index.php?option=com_virtuemart&view=user', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png', 0, '{}', 124, 125, 0, '', 1),
(170, 'main', 'COM_VIRTUEMART_MENU_MANUFACTURERS', 'com-virtuemart-menu-manufacturers', '', 'com-virtuemart/com-virtuemart-menu-manufacturers', 'index.php?option=com_virtuemart&view=manufacturer', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png', 0, '{}', 126, 127, 0, '', 1),
(167, 'main', 'COM_VIRTUEMART_MENU_ORDERS', 'com-virtuemart-menu-orders', '', 'com-virtuemart/com-virtuemart-menu-orders', 'index.php?option=com_virtuemart&view=orders', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png', 0, '{}', 120, 121, 0, '', 1),
(165, 'main', 'COM_VIRTUEMART_MENU_CATEGORIES', 'com-virtuemart-menu-categories', '', 'com-virtuemart/com-virtuemart-menu-categories', 'index.php?option=com_virtuemart&view=category', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png', 0, '{}', 116, 117, 0, '', 1),
(166, 'main', 'COM_VIRTUEMART_MENU_PRODUCTS', 'com-virtuemart-menu-products', '', 'com-virtuemart/com-virtuemart-menu-products', 'index.php?option=com_virtuemart&view=product', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png', 0, '{}', 118, 119, 0, '', 1),
(176, 'main', 'VirtueMart AIO', 'virtuemart-aio', '', 'virtuemart-aio', 'index.php?option=com_virtuemart_allinone', 'component', 0, 1, 1, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 139, 140, 0, '', 1),
(163, 'main', 'COM_VIRTUEMART', 'com-virtuemart', '', 'com-virtuemart', 'index.php?option=com_virtuemart', 'component', 0, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png', 0, '{}', 113, 138, 0, '', 1),
(164, 'main', 'COM_VIRTUEMART_CONTROL_PANEL', 'com-virtuemart-control-panel', '', 'com-virtuemart/com-virtuemart-control-panel', 'index.php?option=com_virtuemart&view=virtuemart', 'component', 0, 163, 2, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 114, 115, 0, '', 1),
(177, 'main', 'TCPDF', 'tcpdf', '', 'tcpdf', 'index.php?option=com_tcpdf', 'component', 0, 1, 1, 10054, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 141, 142, 0, '', 1),
(178, 'mainmenu', 'aaaa', 'aaaaa', '', 'aaaaa', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=4&virtuemart_manufacturer_id=0', 'component', -2, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"1\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"1\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"178\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 143, 144, 0, '*', 0),
(179, 'mainmenu', 'eeee', 'eeee', '', 'eeee', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=5&virtuemart_manufacturer_id=0', 'component', -2, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"1\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"1\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 145, 146, 0, '*', 0),
(180, 'mainmenu', 'jjjj', 'jjjj', '', 'jjjj', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=6&virtuemart_manufacturer_id=0', 'component', -2, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"180\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 147, 148, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_menu_types`
--

CREATE TABLE `dz8i1_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_menu_types`
--

INSERT INTO `dz8i1_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 58, 'menu-didong-thuonghieu', 'menu-didong-thuonghieu', ''),
(5, 61, 'menu-tivi-thuonghieu', 'menu-tivi-thuonghieu', ''),
(6, 64, 'menu-amthanh-loai', 'menu-amthanh-loai', ''),
(9, 67, 'menu-maygiat-thuonghieu', 'menu-maygiat-thuonghieu', ''),
(11, 69, 'menu-tulanh-thuonghieu', 'menu-tulanh-thuonghieu', '');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_messages`
--

CREATE TABLE `dz8i1_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_messages`
--

INSERT INTO `dz8i1_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(1, 0, 0, 0, '2017-04-19 07:44:27', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: Could not instantiate mail function. Người đăng ký là: truongquoccuongbt'),
(2, 0, 0, 0, '2017-04-19 07:47:36', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: Could not instantiate mail function. Người đăng ký là: huybt'),
(3, 0, 0, 0, '2017-04-20 03:01:17', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: Could not instantiate mail function. Người đăng ký là: trungtin'),
(4, 0, 0, 0, '2017-04-20 03:30:33', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: Could not instantiate mail function. Người đăng ký là: huy'),
(5, 0, 0, 0, '2017-04-20 03:52:56', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: Could not instantiate mail function. Người đăng ký là: cuongbt'),
(6, 0, 0, 0, '2017-04-20 03:55:08', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: Could not instantiate mail function. Người đăng ký là: cuongg'),
(7, 0, 0, 0, '2017-04-20 03:58:49', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: cuonggg'),
(8, 0, 0, 0, '2017-04-20 04:05:34', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: cuongggg'),
(9, 0, 0, 0, '2017-04-20 04:08:48', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: cuonggggg'),
(10, 0, 0, 0, '2017-04-20 05:22:22', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: tinn'),
(11, 0, 0, 0, '2017-04-20 05:59:07', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: SMTP Error: Could not connect to SMTP host. Người đăng ký là: tinnn'),
(12, 0, 0, 0, '2017-04-20 06:00:58', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: tinnnn'),
(13, 0, 0, 0, '2017-04-20 06:03:32', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: tinnnn'),
(14, 0, 0, 0, '2017-04-20 06:04:51', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: SMTP Error: Could not connect to SMTP host. Người đăng ký là: tinn'),
(15, 0, 0, 0, '2017-04-20 06:06:04', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: huyy'),
(16, 0, 0, 0, '2017-04-21 04:24:11', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là:  Người đăng ký là: cuong123'),
(17, 0, 0, 0, '2017-04-21 04:28:02', 0, 0, 'Lỗi gửi email', 'Có một lỗi xảy ra khi gửi email đăng ký tài khoản. Lỗi này là: SMTP Error: Could not connect to SMTP host. Người đăng ký là: cuong1234');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_messages_cfg`
--

CREATE TABLE `dz8i1_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_modules`
--

CREATE TABLE `dz8i1_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_modules`
--

INSERT INTO `dz8i1_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 295, '2017-04-19 06:07:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(88, 59, 'Thương hiệu điện thoại', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"menu-didong-thuonghieu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(90, 63, 'Thương hiệu ti vi', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"menu-tivi-thuonghieu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 70, 'Loại âm thanh', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"menu-amthanh-loai\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 72, 'Thương hiệu máy giặt', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"menu-maygiat-thuonghieu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(95, 74, 'Thương hiệu tủ lạnh', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"menu-tulanh-thuonghieu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(96, 75, 'slide', '', '<p>yt_carousel source=\"media: images/slide/hinh1.jpg,images/slide/hinh2.jpg,images/slide/hinh3.jpg,images/slide/hinh4.jpg\" style=\"1\" limit=\"5\" items=\"4\" margin=\"10\" image=\"yes\" image_height=\"320\" image_width=\"360\" title=\"yes\" title_link=\"yes\" title_limit=\"\" intro_text=\"yes\" intro_text_limit=\"60\" color=\"#FFFFFF\" background=\"#2D89EF\" title_color=\"#FFFFFF\" arrows=\"yes\" arrow_position=\"default\" pagination=\"yes\" autoplay=\"yes\" hoverpause=\"yes\" lazyload=\"yes\" loop=\"yes\" delay=\"4\" speed=\"0.35\"</p>', 1, 'slide', 0, '0000-00-00 00:00:00', '2017-04-15 15:17:41', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(97, 77, 'DJ-ImageSlider', '', '', 1, 'slide', 0, '0000-00-00 00:00:00', '2017-04-15 15:27:28', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 1, '{\"slider_source\":\"0\",\"slider_type\":\"0\",\"theme\":\"default\",\"link_image\":\"1\",\"image_folder\":\"images\\/slide\",\"link\":\"\",\"category\":\"8\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"full_width\":\"1\",\"image_width\":\"600\",\"image_height\":\"180\",\"fit_to\":\"0\",\"image_centering\":\"0\",\"visible_images\":\"3\",\"space_between_images\":\"10\",\"max_images\":\"20\",\"sort_by\":\"1\",\"css3\":\"1\",\"autoplay\":\"1\",\"looponce\":\"0\",\"show_buttons\":\"1\",\"show_arrows\":\"1\",\"show_custom_nav\":\"0\",\"wcag\":\"1\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"40\",\"arrows_horizontal\":\"10\",\"idx_style\":\"0\",\"effect\":\"Expo\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(98, 79, 'aaaa', '', '', 1, 'slide', 0, '0000-00-00 00:00:00', '2017-04-15 15:40:00', '0000-00-00 00:00:00', -2, 'mod_djimageslider', 1, 1, '{\"slider_source\":\"0\",\"slider_type\":\"0\",\"theme\":\"default\",\"link_image\":\"1\",\"image_folder\":\"images\\/sampledata\\/fruitshop\",\"link\":\"\",\"category\":\"8\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"1\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"full_width\":\"0\",\"image_width\":\"240\",\"image_height\":\"180\",\"fit_to\":\"0\",\"image_centering\":\"0\",\"visible_images\":\"3\",\"space_between_images\":\"10\",\"max_images\":\"20\",\"sort_by\":\"1\",\"css3\":\"1\",\"autoplay\":\"1\",\"looponce\":\"0\",\"show_buttons\":\"1\",\"show_arrows\":\"1\",\"show_custom_nav\":\"0\",\"wcag\":\"1\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"40\",\"arrows_horizontal\":\"10\",\"idx_style\":\"0\",\"effect\":\"Expo\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(99, 80, 'Slide-hinh', '', '', 1, 'slide', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 0, '{\"slider_source\":\"0\",\"slider_type\":\"0\",\"theme\":\"default\",\"link_image\":\"1\",\"image_folder\":\"images\\/slide\",\"link\":\"\",\"category\":\"8\",\"show_title\":\"0\",\"show_desc\":\"0\",\"show_readmore\":\"0\",\"readmore_text\":\"\",\"link_title\":\"0\",\"link_desc\":\"0\",\"limit_desc\":\"\",\"full_width\":\"1\",\"image_width\":\"400\",\"image_height\":\"65\",\"fit_to\":\"0\",\"image_centering\":\"0\",\"visible_images\":\"1\",\"space_between_images\":\"5\",\"max_images\":\"20\",\"sort_by\":\"1\",\"css3\":\"1\",\"autoplay\":\"1\",\"looponce\":\"0\",\"show_buttons\":\"1\",\"show_arrows\":\"1\",\"show_custom_nav\":\"0\",\"wcag\":\"1\",\"desc_width\":\"\",\"desc_bottom\":\"0\",\"desc_horizontal\":\"0\",\"left_arrow\":\"\",\"right_arrow\":\"\",\"play_button\":\"\",\"pause_button\":\"\",\"arrows_top\":\"40\",\"arrows_horizontal\":\"10\",\"idx_style\":\"0\",\"effect\":\"Expo\",\"effect_type\":\"0\",\"duration\":\"\",\"delay\":\"\",\"preload\":\"800\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(112, 97, 'VM - Manufacturer', '', '', 8, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_manufacturer', 1, 1, '', 0, '*'),
(111, 96, 'VM - Search in Shop', '', '', 2, 'position-4', 0, '0000-00-00 00:00:00', '2017-04-19 09:17:28', '0000-00-00 00:00:00', 1, 'mod_virtuemart_search', 1, 1, '', 0, '*'),
(110, 95, 'VM - Featured products', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_product', 1, 1, '', 0, '*'),
(108, 93, 'VM - Administrator Module', '', '', 5, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vmmenu', 3, 1, '', 1, '*'),
(109, 94, 'VM - Currencies Selector', '', '', 5, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_currencies', 1, 1, '', 0, '*'),
(107, 91, 'login', '', '', 1, 'top1', 0, '0000-00-00 00:00:00', '2017-04-19 06:12:07', '0000-00-00 00:00:00', -2, 'mod_login', 1, 0, '{\"pretext\":\"\\u0110\\u0103ng nh\\u1eadp\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"1\",\"usesecure\":\"1\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(113, 98, 'VM - Shopping cart', '', '', 0, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 1, 1, '', 0, '*'),
(114, 99, 'VM - Category', '', '', 4, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_category', 1, 1, '{\"Parent_Category_id\":\"0\",\"level\":\"2\",\"layout\":\"_:all\",\"cache\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(115, 101, 'abc', '', '', 1, 'position1', 0, '0000-00-00 00:00:00', '2017-04-18 15:42:05', '0000-00-00 00:00:00', -2, 'mod_virtuemart_category', 1, 1, '{\"Parent_Category_id\":\"0\",\"level\":\"2\",\"layout\":\"_:all\",\"cache\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(116, 102, 'ddddđ', '', '', 1, 'bottom2', 0, '0000-00-00 00:00:00', '2017-04-18 16:17:28', '0000-00-00 00:00:00', -2, 'mod_virtuemart_product', 1, 1, '{\"layout\":\"default\",\"product_group\":\"featured\",\"max_items\":\"5\",\"omitLoaded\":\"\",\"products_per_row\":\"1\",\"display_style\":\"list\",\"show_price\":\"1\",\"show_addtocart\":\"1\",\"headerText\":\"\",\"footerText\":\"\",\"filter_category\":\"0\",\"virtuemart_category_id\":\"6\",\"vmcache\":\"1\",\"vmcachetime\":\"300\",\"cache\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(119, 107, 'name', '', '', 1, 'top2', 0, '0000-00-00 00:00:00', '2017-04-19 09:05:26', '0000-00-00 00:00:00', -2, 'mod_whosonline', 1, 1, '{\"showmode\":\"1\",\"filter_groups\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_modules_menu`
--

CREATE TABLE `dz8i1_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_modules_menu`
--

INSERT INTO `dz8i1_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(98, 0),
(99, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_newsfeeds`
--

CREATE TABLE `dz8i1_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_overrider`
--

CREATE TABLE `dz8i1_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_postinstall_messages`
--

CREATE TABLE `dz8i1_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_postinstall_messages`
--

INSERT INTO `dz8i1_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_redirect_links`
--

CREATE TABLE `dz8i1_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_schemas`
--

CREATE TABLE `dz8i1_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_schemas`
--

INSERT INTO `dz8i1_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16'),
(10009, '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_session`
--

CREATE TABLE `dz8i1_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_session`
--

INSERT INTO `dz8i1_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('295eegnfmrpftlem3lf837bmgl', 0, 0, '1493008984', 'joomla|s:3968:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyMDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0OTMwMDg4Mjc7czo0OiJsYXN0IjtpOjE0OTMwMDg5NzQ7czozOiJub3ciO2k6MTQ5MzAwODk4Mjt9czo1OiJ0b2tlbiI7czozMjoiMndabXVQbUh0RGxkbkFOR2FzamZmb3dENWF6NmhreHoiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxNDoiY29tX3ZpcnR1ZW1hcnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiY2FydCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJsaW1pdCI7czozOiJpbnQiO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6NToidXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NToibG9naW4iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJyZXR1cm4iO3M6ODQ6ImluZGV4LnBocD9vcHRpb249Y29tX3ZpcnR1ZW1hcnQmdmlldz1jYXJ0JmxpbWl0c3RhcnQ9MCZsaW1pdD1pbnQmbWFuYWdlPTAmSXRlbWlkPTEwMSI7czo0OiJkYXRhIjthOjA6e319fX1zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMjoicmVnaXN0cmF0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjMxNiI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO31zOjE1OiJnZXRPcmRlckRldGFpbHMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiREs1SjA3NSI7aTowO319czo0OiJfX3ZtIjtPOjg6InN0ZENsYXNzIjo3OntzOjY6Im1hbmFnZSI7aTowO3M6MTk6InZtbGFzdHZpc2l0ZWRJdGVtaWQiO2k6MTAyO3M6MjM6InZtbGFzdHZpc2l0ZWRjYXRlZ29yeWlkIjtpOjc7czoxOToidm1sYXN0dmlzaXRlZG1hbnVpZCI7aTowO3M6MjM6InZtbGFzdHZpc2l0ZWRwcm9kdWN0aWRzIjthOjI6e2k6MDtpOjk7aToxO2k6MTI7fXM6Njoidm1jYXJ0IjtzOjEyNjM6InsiY2FydFByb2R1Y3RzRGF0YSI6W3sidmlydHVlbWFydF9wcm9kdWN0X2lkIjo5LCJxdWFudGl0eSI6MSwiY3VzdG9tUHJvZHVjdERhdGEiOltdfV0sInZlbmRvcklkIjoxLCJsYXN0VmlzaXRlZENhdGVnb3J5SWQiOjAsInZpcnR1ZW1hcnRfc2hpcG1lbnRtZXRob2RfaWQiOiIxIiwidmlydHVlbWFydF9wYXltZW50bWV0aG9kX2lkIjoiMSIsImF1dG9tYXRpY1NlbGVjdGVkU2hpcG1lbnQiOmZhbHNlLCJhdXRvbWF0aWNTZWxlY3RlZFBheW1lbnQiOmZhbHNlLCJvcmRlcl9udW1iZXIiOiJESzVKMDciLCJCVCI6eyJlbWFpbCI6ImhpZW5AZ21haWwuY29tIiwiY29tcGFueSI6ImQiLCJ0aXRsZSI6IiIsImZpcnN0X25hbWUiOiJzZGYiLCJtaWRkbGVfbmFtZSI6InNkZnNkZiIsImxhc3RfbmFtZSI6InNkYWYiLCJhZGRyZXNzXzEiOiJzZGYiLCJhZGRyZXNzXzIiOiJzZGYiLCJ6aXAiOiJzZGYiLCJjaXR5Ijoic2RmIiwidmlydHVlbWFydF9jb3VudHJ5X2lkIjoyMzAsInZpcnR1ZW1hcnRfc3RhdGVfaWQiOjAsInBob25lXzEiOiJzYWRmc3ciLCJwaG9uZV8yIjoiZHNmIiwiZmF4IjoieHZkIiwiY3VzdG9tZXJfbm90ZSI6IiIsInRvcyI6IjEifSwiU1QiOnsiZW1haWwiOiJoaWVuQGdtYWlsLmNvbSIsImNvbXBhbnkiOiJkIiwidGl0bGUiOiIiLCJmaXJzdF9uYW1lIjoic2RmIiwibWlkZGxlX25hbWUiOiJzZGZzZGYiLCJsYXN0X25hbWUiOiJzZGFmIiwiYWRkcmVzc18xIjoic2RmIiwiYWRkcmVzc18yIjoic2RmIiwiemlwIjoic2RmIiwiY2l0eSI6InNkZiIsInZpcnR1ZW1hcnRfY291bnRyeV9pZCI6MjMwLCJ2aXJ0dWVtYXJ0X3N0YXRlX2lkIjowLCJwaG9uZV8xIjoic2FkZnN3IiwicGhvbmVfMiI6ImRzZiIsImZheCI6Inh2ZCIsImN1c3RvbWVyX25vdGUiOiIiLCJ0b3MiOiIxIn0sImNhcnRmaWVsZHMiOnsiY3VzdG9tZXJfbm90ZSI6IiIsInRvcyI6IjEifSwiY291cG9uQ29kZSI6IiIsIl90cmllc1ZhbGlkYXRlQ291cG9uIjpbXSwib3JkZXJfbGFuZ3VhZ2UiOiJ2aS1WTiIsInByaWNlc0N1cnJlbmN5IjoiMTQ3IiwicGF5bWVudEN1cnJlbmN5IjoiMTQ3IiwiX2d1ZXN0IjowLCJfaW5DaGVja091dCI6ZmFsc2UsIl9pbkNvbmZpcm0iOmZhbHNlLCJfZGF0YVZhbGlkYXRlZCI6ZmFsc2UsIl9jb25maXJtRG9uZSI6ZmFsc2UsIlNUc2FtZUFzQlQiOjEsInNlbGVjdGVkX3NoaXB0byI6MCwiX2Zyb21DYXJ0Ijp0cnVlLCJsYXlvdXQiOiJkZWZhdWx0IiwibGF5b3V0UGF0aCI6IiIsInZpcnR1ZW1hcnRfY2FydF9pZCI6IjQifSI7czo2OiJwYXlwYWwiO3M6Mzk5OiJ7InNlbGVjdGVkX21ldGhvZCI6MCwiY2NfdHlwZSI6IiIsImNjX251bWJlciI6IkFRMkM5YklsdzdVd2dQM0Q0NlwvSHhDclljUVlSeEJadUV4YjR2REFxXC91aWZwSTR0WmxvVXVxd0xCWlhuTDQ3XC9RaGlVR2JZcmdacXhCektFeHNVa0l3PT0iLCJjY19jdnYiOiJhTE91dXI1NjFBeUF2aE1xR0JiZ01yd1BlZFhmbjZxQW5WUHg2WlB5c0hyUjE5RHpoSW5YQ1lXcXBXWXFUOVpzdjhBdGphWE9jTWNPYWo1OVpOc0pCZz09IiwiY2NfZXhwaXJlX21vbnRoIjoiIiwiY2NfZXhwaXJlX3llYXIiOiIiLCJjY192YWxpZCI6ZmFsc2UsImF1dG9iaWxsaW5nX21heF9hbW91bnQiOiIiLCJ0b2tlbiI6IiIsInBheWVyX2lkIjoiIiwiZmlyc3RfbmFtZSI6IiIsImxhc3RfbmFtZSI6IiIsInBheWVyX2VtYWlsIjoiIn0iO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 316, 'hien');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_tags`
--

CREATE TABLE `dz8i1_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_tags`
--

INSERT INTO `dz8i1_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 295, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_template_styles`
--

CREATE TABLE `dz8i1_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_template_styles`
--

INSERT INTO `dz8i1_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'shaper_helix3', 0, '1', 'shaper_helix3 - Default', '{\"preloader\":\"0\",\"preloader_animation\":\"circle\",\"preloader_bg\":\"#f5f5f5\",\"preloader_tx\":\"#333333\",\"goto_top\":\"0\",\"sticky_header\":\"1\",\"favicon\":\"\",\"boxed_layout\":\"1\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_load_pos\":\"default\",\"logo_image\":\"images\\/logonew.png\",\"logo_image_2x\":\"\",\"mobile_logo\":\"\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"\\u00a9 2017 My shop online. All Rights Reserved.\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"default\",\"facebook\":\"\",\"twitter\":\"\",\"googleplus\":\"\",\"pinterest\":\"\",\"linkedin\":\"\",\"dribbble\":\"\",\"behance\":\"\",\"youtube\":\"\",\"flickr\":\"\",\"skype\":\"\",\"whatsapp\":\"\",\"vk\":\"\",\"custom\":\"\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_phone\":\"\",\"contact_mobile\":\"\",\"contact_email\":\"\",\"contact_time\":\"\",\"comingsoon_mode\":\"0\",\"comingsoon_bg\":\"\",\"comingsoon_logo\":\"\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"05-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"error_bg\":\"\",\"error_logo\":\"\",\"preset\":\"preset1\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#26aae1\",\"preset1_megabg\":\"#ffffff\",\"preset1_megatx\":\"#333333\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset2_megabg\":\"#ffffff\",\"preset2_megatx\":\"#333333\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset3_megabg\":\"#ffffff\",\"preset3_megatx\":\"#333333\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#000000\",\"preset4_major\":\"#eb4947\",\"preset4_megabg\":\"#ffffff\",\"preset4_megatx\":\"#333333\",\"layoutlist\":\"default.json\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"66\\\",\\\"settings\\\":{\\\"bg_color\\\":\\\"#f02222\\\",\\\"bg_image\\\":\\\"images\\/powered_by.png\\\",\\\"text_color\\\":\\\"#ffffff\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"bg_repeat\\\":\\\"no-repeat\\\",\\\"bg_img_size\\\":\\\"cover\\\",\\\"bg_position\\\":\\\"contain\\\",\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"#999999\\\",\\\"background_color\\\":\\\"#f5f5f5\\\",\\\"name\\\":\\\"Top Bar\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-6\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"top1\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-6\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"top2\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"39\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"Header\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-8\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"logo\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-9\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"menu\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-4\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Slide\\\",\\\"background_color\\\":\\\"#ffffff\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":1,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"slide\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Main Body\\\",\\\"bg_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"background_color\\\":\\\"#ffffff\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12 column-active\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"custom_class\\\":\\\"custom-class\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"position1\\\",\\\"column_type\\\":1}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"\\\",\\\"background_color\\\":\\\"#29ffa9\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"position2\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3333\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"100px 0px\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"#f5f5f5\\\",\\\"name\\\":\\\"Bottom\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom1\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom2\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom3\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom4\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Footer\\\",\\\"bg_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"footer1\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\"}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega\",\"dropdown_width\":\"\",\"menu_animation\":\"menu-fade\",\"offcanvas_animation\":\"default\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"300\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"0\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"ABeeZee\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_custom_font\":\"0\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"ABeeZee\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"custom_font_selectors\":\"\",\"before_head\":\"\",\"before_body\":\"\",\"custom_css\":\"#sp-menu{\\r\\n   padding-right:200px;\\r\\n}\\r\\n#sp-slide {\\r\\n  height:205px;\\r\\n}\\r\\n\\r\\n.browseProductImage {\\r\\n    max-width: 250px;\\r\\n    max-height: 250px;\\r\\n    display: block;\\r\\n    margin-left: auto;\\r\\n    margin-right: auto;\\r\\n}\\r\\n\\r\\n\",\"custom_js\":\"\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"exclude_js\":\"\",\"lessoption\":\"0\",\"show_post_format\":\"1\",\"commenting_engine\":\"disabled\",\"disqus_subdomain\":\"\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_appID\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"1\",\"image_small\":\"0\",\"image_small_size\":\"100X100\",\"image_thumbnail\":\"1\",\"image_thumbnail_size\":\"200X200\",\"image_medium\":\"0\",\"image_medium_size\":\"300X300\",\"image_large\":\"0\",\"image_large_size\":\"600X600\",\"blog_list_image\":\"default\"}');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_ucm_base`
--

CREATE TABLE `dz8i1_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_ucm_content`
--

CREATE TABLE `dz8i1_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_ucm_history`
--

CREATE TABLE `dz8i1_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_updates`
--

CREATE TABLE `dz8i1_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `dz8i1_updates`
--

INSERT INTO `dz8i1_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(13, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(14, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(15, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(16, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(17, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(18, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(19, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(20, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(21, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(22, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(25, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(31, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.5.3', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(32, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(33, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(34, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(35, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(36, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(37, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(38, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(39, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(40, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(41, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(42, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(43, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(44, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(45, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(46, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(47, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(48, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(49, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(50, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(51, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(52, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(53, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(54, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(55, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(56, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(57, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(58, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(59, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(60, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(61, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(62, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(63, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(64, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(65, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(66, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(67, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(68, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(69, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(70, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(71, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(72, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(73, 27, 0, 'VirtueMart - Shipment, by Weight, country, zip,... ', 'VirtueMart - Shipment, Shipment, by Weight, country, zip,... ', 'standard', 'plugin', 'vmshipment', 0, '3.2.1', '', 'http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml', 'https://docs.virtuemart.net/tutorials/installation-migration-upgrade/226-update-single-plugin-delivered-by-aio.html', ''),
(74, 46, 0, 'VirtueMart Product module', 'VirtueMart Product module', 'mod_virtuemart_product', 'plugin', '', 0, '3.2.1', '', 'http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml', 'https://docs.virtuemart.net/tutorials/installation-migration-upgrade/226-update-single-plugin-delivered-by-aio.html', '');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_update_sites`
--

CREATE TABLE `dz8i1_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `dz8i1_update_sites`
--

INSERT INTO `dz8i1_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1493008843, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1493008843, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1492748674, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1492748674, ''),
(5, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1492748675, ''),
(12, 'VirtueMart plg_vmpayment_standard Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_standard_update.xml', 1, 1492748676, ''),
(6, 'Helix3 - Ajax', 'extension', 'http://www.joomshaper.com/updates/plg-ajax-helix3.xml', 1, 1492748678, ''),
(7, 'System - Helix3 Framework', 'extension', 'http://www.joomshaper.com/updates/plg-system-helix3.xml', 1, 1492748679, ''),
(8, 'shaper_helix3', 'extension', 'https://www.joomshaper.com/updates/shaper-helix3.xml', 1, 1492748681, ''),
(9, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1492748682, ''),
(13, 'VirtueMart plg_vmpayment_klarna Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klarna_update.xml', 1, 1492748683, ''),
(10, 'DJ-ImageSlider Package', 'extension', 'http://dj-extensions.com/updates/djimageslider.xml', 1, 1492748686, ''),
(14, 'VirtueMart plg_vmpayment_klarnacheckout Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klarnacheckout_update.xml', 1, 1492748686, ''),
(15, 'VirtueMart plg_vmpayment_sofort Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_update.xml', 0, 0, ''),
(16, 'VirtueMart plg_vmpayment_paypal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_update.xml', 1, 1492748687, ''),
(17, 'VirtueMart plg_vmpayment_heidelpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_heidelpay_update.xml', 1, 1492748688, ''),
(18, 'VirtueMart plg_vmpayment_paybox Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paybox_update.xml', 1, 1492748689, ''),
(19, 'VirtueMart plg_vmpayment_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_amazon_update.xml', 1, 1492748689, ''),
(20, 'VirtueMart plg_system_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_system_amazon_update.xml', 1, 1492748690, ''),
(21, 'VirtueMart plg_vmpayment_realex_hpp_api Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_realex_hpp_api_update.xml', 1, 1492748691, ''),
(22, 'VirtueMart plg_vmuserfield_realex_hpp_api Update Site', 'extension', '\n            http://virtuemart.net/releases/vm3/plg_vmuserfield_realex_hpp_api_update.xml', 1, 1492748692, ''),
(23, 'VirtueMart3 plg_vmpayment_skrill Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_skrill_update.xml', 1, 1492748693, ''),
(24, 'VirtueMart plg_vmpayment_authorizenet Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_authorisenet_update.xml', 1, 1492748694, ''),
(25, 'VirtueMart plg_vmpayment_sofort_ideal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_ideal_update.xml', 1, 1492748694, ''),
(26, 'VirtueMart plg_vmpayment_klikandpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klikandpay_update.xml', 1, 1492748695, ''),
(27, 'VirtueMart3 plg_vmshipment_weight_countries Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml', 1, 1492748696, ''),
(28, 'VirtueMart3 plg_vmcustom_textinput Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_textinput_update.xml', 1, 1492748697, ''),
(29, 'VirtueMart3 plg_vmcustom_specification Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_specification_update.xml', 1, 1492748699, ''),
(30, 'VirtueMart3 plg_vmcalculation_avalara Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcalculation_avalara_update.xml', 1, 1492748700, ''),
(42, 'VirtueMart3 plg_vmpayment_tco Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_tco_update.xml', 1, 1492748701, ''),
(43, 'VirtueMart3 plg_search_virtuemart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_search_virtuemart_update.xml', 1, 1492748702, ''),
(44, 'VirtueMart3 MOD_VMENU Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_vmmenu_update.xml', 1, 1492748703, ''),
(45, 'VirtueMart3 mod_virtuemart_currencies Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_currencies_update.xml', 1, 1492748704, ''),
(46, 'VirtueMart3 mod_virtuemart_product Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml', 1, 1492748704, ''),
(47, 'VirtueMart3 mod_virtuemart_search Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_search_update.xml', 1, 1492748705, ''),
(48, 'VirtueMart3 mod_virtuemart_manufacturer Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_manufacturer_update.xml', 1, 1492748706, ''),
(39, 'VirtueMart3 AIO Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml', 1, 1492748706, ''),
(50, 'VirtueMart3 mod_virtuemart_category Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_category_update.xml', 1, 1492748707, ''),
(51, 'TCPDF Update Site', 'extension', 'http://virtuemart.net/releases/TCPDF/tcpdf.xml', 1, 1492748708, ''),
(49, 'VirtueMart3 mod_virtuemart_cart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_cart_update.xml', 1, 1492748709, ''),
(41, 'VirtueMart3 Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_update.xml', 1, 1492748710, '');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_update_sites_extensions`
--

CREATE TABLE `dz8i1_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `dz8i1_update_sites_extensions`
--

INSERT INTO `dz8i1_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 10002),
(6, 10004),
(7, 10005),
(8, 10006),
(9, 10007),
(10, 10011),
(12, 10014),
(13, 10015),
(14, 10016),
(15, 10017),
(16, 10018),
(17, 10019),
(18, 10020),
(19, 10021),
(20, 10022),
(21, 10023),
(22, 10024),
(23, 10025),
(24, 10026),
(25, 10027),
(26, 10028),
(27, 10029),
(28, 10030),
(29, 10031),
(30, 10032),
(39, 10013),
(41, 10043),
(42, 10044),
(43, 10045),
(44, 10046),
(45, 10047),
(46, 10048),
(47, 10049),
(48, 10050),
(49, 10051),
(50, 10052),
(51, 10054);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_usergroups`
--

CREATE TABLE `dz8i1_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_usergroups`
--

INSERT INTO `dz8i1_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_users`
--

CREATE TABLE `dz8i1_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_users`
--

INSERT INTO `dz8i1_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(295, 'Super User', 'admin', 'truongquoccuongbt@gmail.com', '$2y$10$KZ6d1yzpLGymWxc/zXudIuEfYY8a2nG/xgmJ.jiT0C0S8ULUJ7BPS', 0, 1, '2017-04-15 11:09:03', '2017-04-21 04:36:46', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(300, 'huy', 'huy', 'huybtt@gmail.com', '$2y$10$mYY.iO6kaMnPrOPINEW7E.7mt4mP4MyRb1r9ZzSXS5ofpScU/SPvS', 0, 0, '2017-04-20 03:30:31', '2017-04-20 03:52:25', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(299, 'tin', 'trungtin', 'huybt@gmail.com', '$2y$10$lw1uqsb08WVBWJDPJYggzunsA0gjBa94KjQ.6/oh4Y5q2Q4IbItCO', 0, 0, '2017-04-20 03:01:15', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(301, 'cuong', 'cuongbt', 'cuongbt@gmail.com', '$2y$10$OyrZMHukjbWRRIx/nh4ceOvjH07dgGDNxYriZ5LSc1X5/c16X8HrO', 0, 0, '2017-04-20 03:52:54', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(302, 'cuongg', 'cuongg', 'cuongbt1@gmail.com', '$2y$10$GGbzCxMAI.WMJNbGVh41jODaWALWYJM9jERBF0tc8pQDWrJDnw/JO', 0, 0, '2017-04-20 03:55:06', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(303, 'cuonggg', 'cuonggg', 'cuongbtt1@gmail.com', '$2y$10$EyT8hce8sUWtWIWB9kIRLeSotX3DtKaeCGs.mnRrA4l/L0/wbDPVq', 0, 0, '2017-04-20 03:58:49', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(314, 'cuong12344', 'cuong12344', 'cuong12345@gmail.com', '$2y$10$bhhqDMyeZ22A9ZNqBHMwueD.dhSkrvRtbiaec8uWOzLt5JRewnknS', 0, 0, '2017-04-21 04:35:20', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(309, 'tinnnn', 'tinnnn', 'tinnnn@gmail.com', '$2y$10$xiQctD0xML5QZhC0ibbQnOW0Fw/Tk/qkHOyvAhcdTV4ZKzrBAUMqm', 1, 0, '2017-04-20 06:03:32', '0000-00-00 00:00:00', '0917301ddd04d24ee12e16c6c88e7744', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(310, 'tinn', 'tinn', 'tinn@gmail.com', '$2y$10$m1CcGzEVnEvCUiB6r3b16OoKFE4Gotr.v3OwWZY/3QRhj0QJa2n5O', 0, 0, '2017-04-20 06:04:30', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(311, 'huyy', 'huyy', 'huy@gmail.com', '$2y$10$ph9XD7Jkh7uko.4LTTEtt.goLOgCK8TIvChv9HOiGNaSZiY5bM8YC', 0, 0, '2017-04-20 06:06:03', '2017-04-20 06:06:33', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(312, 'cuong123', 'cuong123', 'cuong123@gmail.com', '$2y$10$amb8TZ7mRDkh/RdE94H1qeiPHM9y6jdEMRHzYE/ltahs3MmBOZQoW', 0, 0, '2017-04-21 04:24:11', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(313, 'cuong1234', 'cuong1234', 'cuong1234@gmail.com', '$2y$10$zQcY4yXCxi8BolRE6o8TVeFdeyv4KPwWkVFZ4JwemUvAQcvxMpIkS', 0, 0, '2017-04-21 04:27:40', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(315, 'HANG', 'abcdef', '123456a@gmail.com', '$2y$10$CKDGiqIfZ.V8zfoqpqRdWuSCmJjGbjeRGuTrVrRq2TFnZ8vdLg4JO', 0, 0, '2017-04-21 04:36:16', '0000-00-00 00:00:00', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(316, 'hien', 'hien', 'hien@gmail.com', '$2y$10$zbRiJ3cAEzJ5vxULcO/A5Ohfn9YUxhcBd7TeH8UdVG3D5AfpnO59e', 0, 0, '2017-04-24 04:42:00', '2017-04-24 04:42:10', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_user_keys`
--

CREATE TABLE `dz8i1_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_user_notes`
--

CREATE TABLE `dz8i1_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_user_profiles`
--

CREATE TABLE `dz8i1_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_user_usergroup_map`
--

CREATE TABLE `dz8i1_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_user_usergroup_map`
--

INSERT INTO `dz8i1_user_usergroup_map` (`user_id`, `group_id`) VALUES
(295, 8),
(299, 9),
(300, 2),
(301, 2),
(302, 2),
(303, 2),
(309, 2),
(310, 2),
(311, 2),
(312, 2),
(313, 2),
(314, 2),
(315, 2),
(316, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_utf8_conversion`
--

CREATE TABLE `dz8i1_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_utf8_conversion`
--

INSERT INTO `dz8i1_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_viewlevels`
--

CREATE TABLE `dz8i1_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dz8i1_viewlevels`
--

INSERT INTO `dz8i1_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_adminmenuentries`
--

CREATE TABLE `dz8i1_virtuemart_adminmenuentries` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `module_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';

--
-- Dumping data for table `dz8i1_virtuemart_adminmenuentries`
--

INSERT INTO `dz8i1_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-chart_bar', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-document_editing', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 0, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 10, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 5, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 7, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 1, 1, '', 'virtuemart', ''),
(28, 11, 0, 'COM_VIRTUEMART_LOG', '', '', 'vmicon vmicon-16-info', 2, 1, '', 'log', ''),
(29, 11, 0, 'COM_VIRTUEMART_SUPPORT', '', '', 'vmicon vmicon-16-help', 3, 1, '', 'support', '');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_calcs`
--

CREATE TABLE `dz8i1_virtuemart_calcs` (
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'BELONGS TO VENDOR',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `calc_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'NAME OF THE RULE',
  `calc_descr` varchar(128) NOT NULL DEFAULT '' COMMENT 'DESCRIPTION',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'DISCOUNT/TAX/MARGIN/COMMISSION',
  `calc_value_mathop` varchar(8) NOT NULL DEFAULT '' COMMENT 'THE MATHEMATICAL OPERATION LIKE (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(15359) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_calc_categories`
--

CREATE TABLE `dz8i1_virtuemart_calc_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_calc_countries`
--

CREATE TABLE `dz8i1_virtuemart_calc_countries` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_calc_manufacturers`
--

CREATE TABLE `dz8i1_virtuemart_calc_manufacturers` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_calc_shoppergroups`
--

CREATE TABLE `dz8i1_virtuemart_calc_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_calc_states`
--

CREATE TABLE `dz8i1_virtuemart_calc_states` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_state_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_carts`
--

CREATE TABLE `dz8i1_virtuemart_carts` (
  `virtuemart_cart_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store the cart';

--
-- Dumping data for table `dz8i1_virtuemart_carts`
--

INSERT INTO `dz8i1_virtuemart_carts` (`virtuemart_cart_id`, `virtuemart_user_id`, `virtuemart_vendor_id`, `cartData`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 295, 1, 0x7b226361727450726f647563747344617461223a5b7b227669727475656d6172745f70726f647563745f6964223a392c227175616e74697479223a322c22637573746f6d50726f6475637444617461223a5b5d7d2c7b227669727475656d6172745f70726f647563745f6964223a382c227175616e74697479223a312c22637573746f6d50726f6475637444617461223a5b5d7d2c7b227669727475656d6172745f70726f647563745f6964223a33322c227175616e74697479223a322c22637573746f6d50726f6475637444617461223a5b5d7d2c7b227669727475656d6172745f70726f647563745f6964223a33332c227175616e74697479223a312c22637573746f6d50726f6475637444617461223a5b5d7d2c7b227669727475656d6172745f70726f647563745f6964223a392c227175616e74697479223a312c22637573746f6d50726f6475637444617461223a5b5d7d5d2c2276656e646f724964223a312c226c6173745669736974656443617465676f72794964223a302c227669727475656d6172745f736869706d656e746d6574686f645f6964223a2231222c227669727475656d6172745f7061796d656e746d6574686f645f6964223a2231222c226175746f6d6174696353656c6563746564536869706d656e74223a66616c73652c226175746f6d6174696353656c65637465645061796d656e74223a66616c73652c226f726465725f6e756d626572223a22504356503036222c224254223a7b22656d61696c223a227472756f6e6771756f6363756f6e67627440676d61696c2e636f6d222c22636f6d70616e79223a22636f6e67207479206469656e206d6179222c227469746c65223a224d72222c2266697273745f6e616d65223a227472756f6e67222c226d6964646c655f6e616d65223a2271756f63222c226c6173745f6e616d65223a2263756f6e67222c22616464726573735f31223a22323536206e6775795c75316563356e20685c7531656566752074685c7531656364222c22616464726573735f32223a22222c227a6970223a22383030303030222c2263697479223a2268636d222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a2232333234222c2270686f6e655f32223a22323334222c22666178223a22323334227d2c225354223a7b22656d61696c223a227472756f6e6771756f6363756f6e67627440676d61696c2e636f6d222c22636f6d70616e79223a22636f6e67207479206469656e206d6179222c227469746c65223a224d72222c2266697273745f6e616d65223a227472756f6e67222c226d6964646c655f6e616d65223a2271756f63222c226c6173745f6e616d65223a2263756f6e67222c22616464726573735f31223a22323536206e6775795c75316563356e20685c7531656566752074685c7531656364222c22616464726573735f32223a22222c227a6970223a22383030303030222c2263697479223a2268636d222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a2232333234222c2270686f6e655f32223a22323334222c22666178223a22323334227d2c22636172746669656c6473223a7b22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c22636f75706f6e436f6465223a22222c225f747269657356616c6964617465436f75706f6e223a5b5d2c226f726465725f6c616e6775616765223a2276692d564e222c2270726963657343757272656e6379223a22313437222c227061796d656e7443757272656e6379223a22313437222c225f6775657374223a302c225f696e436865636b4f7574223a66616c73652c225f696e436f6e6669726d223a66616c73652c225f6461746156616c696461746564223a226434316438636439386630306232303465393830303939386563663834323765222c225f636f6e6669726d446f6e65223a66616c73652c22535473616d6541734254223a312c2273656c65637465645f73686970746f223a302c225f66726f6d43617274223a747275652c226c61796f7574223a2264656661756c74222c226c61796f757450617468223a22222c227669727475656d6172745f636172745f6964223a2231227d, '0000-00-00 00:00:00', 0, '2017-04-21 04:37:29', 295),
(2, 300, 1, 0x7b226361727450726f647563747344617461223a5b7b227669727475656d6172745f70726f647563745f6964223a382c227175616e74697479223a322c22637573746f6d50726f6475637444617461223a5b5d7d2c7b227669727475656d6172745f70726f647563745f6964223a392c227175616e74697479223a312c22637573746f6d50726f6475637444617461223a5b5d7d5d2c2276656e646f724964223a312c226c6173745669736974656443617465676f72794964223a302c227669727475656d6172745f736869706d656e746d6574686f645f6964223a2231222c227669727475656d6172745f7061796d656e746d6574686f645f6964223a2231222c226175746f6d6174696353656c6563746564536869706d656e74223a66616c73652c226175746f6d6174696353656c65637465645061796d656e74223a66616c73652c226f726465725f6e756d626572223a223154564b3034222c224254223a7b22656d61696c223a2268757962747440676d61696c2e636f6d222c22636f6d70616e79223a2264736673222c227469746c65223a224d72222c2266697273745f6e616d65223a2273646166222c226d6964646c655f6e616d65223a2273646166222c226c6173745f6e616d65223a22647366222c22616464726573735f31223a2261647366222c22616464726573735f32223a22647366222c227a6970223a22736466222c2263697479223a2273616466222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a225c75303065316466222c2270686f6e655f32223a2273646166222c22666178223a22647366647366227d2c225354223a7b22656d61696c223a2268757962747440676d61696c2e636f6d222c22636f6d70616e79223a2264736673222c227469746c65223a224d72222c2266697273745f6e616d65223a2273646166222c226d6964646c655f6e616d65223a2273646166222c226c6173745f6e616d65223a22647366222c22616464726573735f31223a2261647366222c22616464726573735f32223a22647366222c227a6970223a22736466222c2263697479223a2273616466222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a225c75303065316466222c2270686f6e655f32223a2273646166222c22666178223a22647366647366227d2c22636172746669656c6473223a7b22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c22636f75706f6e436f6465223a22222c225f747269657356616c6964617465436f75706f6e223a5b5d2c226f726465725f6c616e6775616765223a2276692d564e222c2270726963657343757272656e6379223a22313437222c227061796d656e7443757272656e6379223a22313437222c225f6775657374223a302c225f696e436865636b4f7574223a66616c73652c225f696e436f6e6669726d223a66616c73652c225f6461746156616c696461746564223a226434316438636439386630306232303465393830303939386563663834323765222c225f636f6e6669726d446f6e65223a66616c73652c22535473616d6541734254223a312c2273656c65637465645f73686970746f223a302c225f66726f6d43617274223a747275652c226c61796f7574223a2264656661756c74222c226c61796f757450617468223a22222c227669727475656d6172745f636172745f6964223a2232227d, '0000-00-00 00:00:00', 0, '2017-04-20 03:52:15', 300),
(3, 311, 1, 0x7b226361727450726f647563747344617461223a5b7b227669727475656d6172745f70726f647563745f6964223a382c227175616e74697479223a332c22637573746f6d50726f6475637444617461223a5b5d7d2c7b227669727475656d6172745f70726f647563745f6964223a32372c227175616e74697479223a312c22637573746f6d50726f6475637444617461223a5b5d7d5d2c2276656e646f724964223a312c226c6173745669736974656443617465676f72794964223a302c227669727475656d6172745f736869706d656e746d6574686f645f6964223a2231222c227669727475656d6172745f7061796d656e746d6574686f645f6964223a2231222c226175746f6d6174696353656c6563746564536869706d656e74223a66616c73652c226175746f6d6174696353656c65637465645061796d656e74223a66616c73652c226f726465725f6e756d626572223a6e756c6c2c224254223a7b22656d61696c223a2268757940676d61696c2e636f6d222c22636f6d70616e79223a2264222c227469746c65223a22222c2266697273745f6e616d65223a2264222c226d6964646c655f6e616d65223a2264222c226c6173745f6e616d65223a2264222c22616464726573735f31223a225c7530313131222c22616464726573735f32223a2264222c227a6970223a2264222c2263697479223a2264222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a22343233343332222c2270686f6e655f32223a22333234222c22666178223a22222c22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c225354223a7b22656d61696c223a2268757940676d61696c2e636f6d222c22636f6d70616e79223a2264222c227469746c65223a22222c2266697273745f6e616d65223a2264222c226d6964646c655f6e616d65223a2264222c226c6173745f6e616d65223a2264222c22616464726573735f31223a225c7530313131222c22616464726573735f32223a2264222c227a6970223a2264222c2263697479223a2264222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a22343233343332222c2270686f6e655f32223a22333234222c22666178223a22222c22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c22636172746669656c6473223a7b22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c22636f75706f6e436f6465223a22222c225f747269657356616c6964617465436f75706f6e223a5b5d2c226f726465725f6c616e6775616765223a2276692d564e222c2270726963657343757272656e6379223a22313437222c227061796d656e7443757272656e6379223a22313437222c225f6775657374223a302c225f696e436865636b4f7574223a66616c73652c225f696e436f6e6669726d223a66616c73652c225f6461746156616c696461746564223a226434316438636439386630306232303465393830303939386563663834323765222c225f636f6e6669726d446f6e65223a66616c73652c22535473616d6541734254223a312c2273656c65637465645f73686970746f223a302c225f66726f6d43617274223a747275652c226c61796f7574223a2264656661756c74222c226c61796f757450617468223a22222c227669727475656d6172745f636172745f6964223a2233227d, '0000-00-00 00:00:00', 0, '2017-04-20 06:07:22', 311),
(4, 316, 1, 0x7b226361727450726f647563747344617461223a5b7b227669727475656d6172745f70726f647563745f6964223a392c227175616e74697479223a312c22637573746f6d50726f6475637444617461223a5b5d7d5d2c2276656e646f724964223a312c226c6173745669736974656443617465676f72794964223a302c227669727475656d6172745f736869706d656e746d6574686f645f6964223a2231222c227669727475656d6172745f7061796d656e746d6574686f645f6964223a2231222c226175746f6d6174696353656c6563746564536869706d656e74223a66616c73652c226175746f6d6174696353656c65637465645061796d656e74223a66616c73652c226f726465725f6e756d626572223a6e756c6c2c224254223a7b22656d61696c223a226869656e40676d61696c2e636f6d222c22636f6d70616e79223a2264222c227469746c65223a22222c2266697273745f6e616d65223a22736466222c226d6964646c655f6e616d65223a22736466736466222c226c6173745f6e616d65223a2273646166222c22616464726573735f31223a22736466222c22616464726573735f32223a22736466222c227a6970223a22736466222c2263697479223a22736466222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a22736164667377222c2270686f6e655f32223a22647366222c22666178223a22787664222c22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c225354223a7b22656d61696c223a226869656e40676d61696c2e636f6d222c22636f6d70616e79223a2264222c227469746c65223a22222c2266697273745f6e616d65223a22736466222c226d6964646c655f6e616d65223a22736466736466222c226c6173745f6e616d65223a2273646166222c22616464726573735f31223a22736466222c22616464726573735f32223a22736466222c227a6970223a22736466222c2263697479223a22736466222c227669727475656d6172745f636f756e7472795f6964223a3233302c227669727475656d6172745f73746174655f6964223a302c2270686f6e655f31223a22736164667377222c2270686f6e655f32223a22647366222c22666178223a22787664222c22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c22636172746669656c6473223a7b22637573746f6d65725f6e6f7465223a22222c22746f73223a2231227d2c22636f75706f6e436f6465223a22222c225f747269657356616c6964617465436f75706f6e223a5b5d2c226f726465725f6c616e6775616765223a2276692d564e222c2270726963657343757272656e6379223a22313437222c227061796d656e7443757272656e6379223a22313437222c225f6775657374223a302c225f696e436865636b4f7574223a66616c73652c225f696e436f6e6669726d223a66616c73652c225f6461746156616c696461746564223a226434316438636439386630306232303465393830303939386563663834323765222c225f636f6e6669726d446f6e65223a66616c73652c22535473616d6541734254223a312c2273656c65637465645f73686970746f223a302c225f66726f6d43617274223a747275652c226c61796f7574223a2264656661756c74222c226c61796f757450617468223a22222c227669727475656d6172745f636172745f6964223a2234227d, '0000-00-00 00:00:00', 0, '2017-04-24 04:43:02', 316);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_categories`
--

CREATE TABLE `dz8i1_virtuemart_categories` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'BELONGS TO VENDOR',
  `category_template` varchar(128) DEFAULT NULL,
  `category_layout` varchar(64) DEFAULT NULL,
  `category_product_layout` varchar(64) DEFAULT NULL,
  `products_per_row` varchar(1) NOT NULL DEFAULT '',
  `limit_list_step` varchar(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) UNSIGNED DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `cat_params` varchar(15359) NOT NULL DEFAULT '',
  `metarobot` varchar(40) NOT NULL DEFAULT '',
  `metaauthor` varchar(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

--
-- Dumping data for table `dz8i1_virtuemart_categories`
--

INSERT INTO `dz8i1_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `cat_params`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(7, 1, '', '', '', '', '0', 0, 0, 'show_store_desc=\"\"|showcategory_desc=\"\"|showcategory=\"\"|categories_per_row=\"\"|showproducts=\"\"|omitLoaded=\"\"|showsearch=\"\"|productsublayout=\"\"|featured=\"\"|featured_rows=\"\"|omitLoaded_featured=\"\"|discontinued=\"\"|discontinued_rows=\"\"|omitLoaded_discontinued=\"\"|latest=\"\"|latest_rows=\"\"|omitLoaded_latest=\"\"|topten=\"\"|topten_rows=\"\"|omitLoaded_topten=\"\"|recent=\"\"|recent_rows=\"\"|omitLoaded_recent=\"\"|', '', '', 0, 0, 1, '2017-04-19 12:34:24', 295, '2017-04-19 12:34:24', 295, '0000-00-00 00:00:00', 0),
(21, 1, '', '', '', '', '0', 0, 0, 'show_store_desc=\"\"|showcategory_desc=\"\"|showcategory=\"\"|categories_per_row=\"\"|showproducts=\"\"|omitLoaded=\"\"|showsearch=\"\"|productsublayout=\"\"|featured=\"\"|featured_rows=\"\"|omitLoaded_featured=\"\"|discontinued=\"\"|discontinued_rows=\"\"|omitLoaded_discontinued=\"\"|latest=\"\"|latest_rows=\"\"|omitLoaded_latest=\"\"|topten=\"\"|topten_rows=\"\"|omitLoaded_topten=\"\"|recent=\"\"|recent_rows=\"\"|omitLoaded_recent=\"\"|', '', '', 0, 0, 1, '2017-04-19 12:45:28', 295, '2017-04-19 12:45:33', 295, '0000-00-00 00:00:00', 0),
(34, 1, '', '', '', '', '0', 0, 0, 'show_store_desc=\"\"|showcategory_desc=\"\"|showcategory=\"\"|categories_per_row=\"\"|showproducts=\"\"|omitLoaded=\"\"|showsearch=\"\"|productsublayout=\"\"|featured=\"\"|featured_rows=\"\"|omitLoaded_featured=\"\"|discontinued=\"\"|discontinued_rows=\"\"|omitLoaded_discontinued=\"\"|latest=\"\"|latest_rows=\"\"|omitLoaded_latest=\"\"|topten=\"\"|topten_rows=\"\"|omitLoaded_topten=\"\"|recent=\"\"|recent_rows=\"\"|omitLoaded_recent=\"\"|', '', '', 0, 0, 1, '2017-04-19 12:57:14', 295, '2017-04-19 12:57:18', 295, '0000-00-00 00:00:00', 0),
(25, 1, '', '', '', '', '0', 0, 0, 'show_store_desc=\"\"|showcategory_desc=\"\"|showcategory=\"\"|categories_per_row=\"\"|showproducts=\"\"|omitLoaded=\"\"|showsearch=\"\"|productsublayout=\"\"|featured=\"\"|featured_rows=\"\"|omitLoaded_featured=\"\"|discontinued=\"\"|discontinued_rows=\"\"|omitLoaded_discontinued=\"\"|latest=\"\"|latest_rows=\"\"|omitLoaded_latest=\"\"|topten=\"\"|topten_rows=\"\"|omitLoaded_topten=\"\"|recent=\"\"|recent_rows=\"\"|omitLoaded_recent=\"\"|', '', '', 0, 0, 1, '2017-04-19 12:46:39', 295, '2017-04-19 12:46:53', 295, '0000-00-00 00:00:00', 0),
(29, 1, '', '', '', '', '0', 0, 0, 'show_store_desc=\"\"|showcategory_desc=\"\"|showcategory=\"\"|categories_per_row=\"\"|showproducts=\"\"|omitLoaded=\"\"|showsearch=\"\"|productsublayout=\"\"|featured=\"\"|featured_rows=\"\"|omitLoaded_featured=\"\"|discontinued=\"\"|discontinued_rows=\"\"|omitLoaded_discontinued=\"\"|latest=\"\"|latest_rows=\"\"|omitLoaded_latest=\"\"|topten=\"\"|topten_rows=\"\"|omitLoaded_topten=\"\"|recent=\"\"|recent_rows=\"\"|omitLoaded_recent=\"\"|', '', '', 0, 0, 1, '2017-04-19 12:48:52', 295, '2017-04-19 12:49:04', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_categories_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_categories_en_gb` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_categories_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_categories_vi_vn` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `category_name` varchar(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_categories_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_categories_vi_vn` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(7, 'Ti vi', '', '', '', '', 'tivi01'),
(21, 'Âm Thanh', '', '', '', '', 'amthanh01'),
(34, 'Di Động', '', '', '', '', 'didong01'),
(25, 'Máy giặt', '', '', '', '', 'maygiat01'),
(29, 'Tủ lạnh', '', '', '', '', 'tulanh01');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_category_categories`
--

CREATE TABLE `dz8i1_virtuemart_category_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `category_parent_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `category_child_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Dumping data for table `dz8i1_virtuemart_category_categories`
--

INSERT INTO `dz8i1_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(7, 0, 7, 0),
(21, 0, 21, 0),
(34, 0, 34, 0),
(25, 0, 25, 0),
(29, 0, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_category_medias`
--

CREATE TABLE `dz8i1_virtuemart_category_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_configs`
--

CREATE TABLE `dz8i1_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';

--
-- Dumping data for table `dz8i1_virtuemart_configs`
--

INSERT INTO `dz8i1_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'useSSL=\"0\"|dangeroustools=\"0\"|debug_enable=\"none\"|vmdev=\"none\"|google_jquery=\"0\"|multix=\"none\"|usefancy=\"1\"|jchosen=\"1\"|enableEnglish=\"1\"|shop_is_offline=\"0\"|offline_message=\"Our Shop is currently down for maintenance. Please check back again soon.\"|use_as_catalog=\"0\"|currency_converter_module=\"convertECB.php\"|order_mail_html=\"1\"|useVendorEmail=\"0\"|pdf_button_enable=\"1\"|show_emailfriend=\"0\"|show_printicon=\"1\"|show_out_of_stock_products=\"1\"|ask_captcha=\"0\"|coupons_enable=\"1\"|show_uncat_products=\"0\"|show_uncat_child_products=\"0\"|show_unpub_cat_products=\"1\"|coupons_default_expire=\"1,M\"|weight_unit_default=\"KG\"|lwh_unit_default=\"M\"|list_limit=\"30\"|showReviewFor=\"none\"|reviewMode=\"none\"|showRatingFor=\"none\"|ratingMode=\"none\"|reviews_autopublish=\"0\"|reviews_minimum_comment_length=\"0\"|reviews_maximum_comment_length=\"2000\"|product_navigation=\"1\"|display_stock=\"0\"|vmtemplate=\"\"|categorytemplate=\"\"|showcategory=\"1\"|categorylayout=\"\"|categories_per_row=\"3\"|productlayout=\"\"|products_per_row=\"3\"|llimit_init_FE=\"24\"|vmlayout=\"\"|show_store_desc=\"1\"|show_categories=\"0\"|featured_rows=\"1\"|topten=\"1\"|topten_rows=\"1\"|recent=\"1\"|recent_rows=\"1\"|latest=\"1\"|latest_rows=\"1\"|legacylayouts=\"1\"|assets_general_path=\"components\\/com_virtuemart\\/assets\\/\"|media_category_path=\"images\\/stories\\/virtuemart\\/category\\/\"|media_product_path=\"images\\/stories\\/virtuemart\\/product\\/\"|media_manufacturer_path=\"images\\/stories\\/virtuemart\\/manufacturer\\/\"|media_vendor_path=\"images\\/stories\\/virtuemart\\/vendor\\/\"|forSale_path_thumb=\"images\\/stories\\/virtuemart\\/forSale\\/resized\\/\"|img_resize_enable=\"1\"|img_width=\"600\"|img_height=\"600\"|no_image_set=\"warning.png\"|no_image_found=\"warning.png\"|browse_orderby_field=\"pc.ordering\"|browse_cat_orderby_field=\"c.ordering,category_name\"|browse_orderby_fields=[\"product_name\",\"`p`.product_sku\",\"category_name\",\"mf_name\",\"pc.ordering\"]|browse_search_fields=[\"product_name\",\"`p`.product_sku\",\"product_s_desc\",\"product_desc\",\"category_name\",\"category_description\",\"mf_name\"]|askprice=\"1\"|roundindig=\"1\"|show_prices=\"1\"|price_show_packaging_pricelabel=\"0\"|show_tax=\"0\"|basePrice=\"0\"|basePriceText=\"1\"|basePriceRounding=\"-1\"|variantModification=\"0\"|variantModificationText=\"1\"|variantModificationRounding=\"-1\"|basePriceVariant=\"0\"|basePriceVariantText=\"1\"|basePriceVariantRounding=\"-1\"|basePriceWithTax=\"0\"|basePriceWithTaxText=\"1\"|basePriceWithTaxRounding=\"-1\"|discountedPriceWithoutTax=\"0\"|discountedPriceWithoutTaxText=\"1\"|discountedPriceWithoutTaxRounding=\"-1\"|salesPriceWithDiscount=\"0\"|salesPriceWithDiscountText=\"1\"|salesPriceWithDiscountRounding=\"-1\"|salesPrice=\"1\"|salesPriceText=\"1\"|salesPriceRounding=\"-1\"|priceWithoutTax=\"0\"|priceWithoutTaxText=\"1\"|priceWithoutTaxRounding=\"-1\"|discountAmount=\"0\"|discountAmountText=\"1\"|discountAmountRounding=\"-1\"|taxAmount=\"0\"|taxAmountText=\"1\"|taxAmountRounding=\"-1\"|unitPrice=\"1\"|unitPriceText=\"1\"|unitPriceRounding=\"-1\"|addtocart_popup=\"0\"|check_stock=\"0\"|automatic_payment=\"0\"|automatic_shipment=\"0\"|oncheckout_opc=\"1\"|oncheckout_ajax=\"1\"|oncheckout_show_legal_info=\"1\"|oncheckout_show_register=\"1\"|oncheckout_show_steps=\"0\"|oncheckout_show_register_text=\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\"|oncheckout_show_images=\"1\"|inv_os=[\"C\"]|email_os_s=[\"U\",\"C\",\"X\",\"R\",\"S\"]|email_os_v=[\"U\",\"C\",\"X\",\"R\"]|seo_disabled=\"0\"|seo_translate=\"0\"|seo_use_id=\"0\"|enable_content_plugin=\"0\"|reg_captcha=\"0\"|handle_404=\"1\"|member_access_number=\"\"|active_languages=[\"vi-VN\"]|debug_enable_methods=\"0\"|revproxvar=\"\"|multixcart=\"0\"|invoiceInUserLang=\"0\"|debug_mail=\"0\"|attach=\"\"|attach_os=[\"U\",\"C\",\"X\",\"R\"]|pdf_icon=\"0\"|recommend_unauth=\"0\"|ask_question=\"0\"|asks_minimum_comment_length=\"50\"|asks_maximum_comment_length=\"2000\"|cp_rm=[\"C\"]|show_pcustoms=\"0\"|show_subcat_products=\"0\"|show_uncat_parent_products=\"0\"|latest_products_days=\"7\"|latest_products_orderBy=\"created_on\"|lstockmail=\"0\"|stockhandle_products=\"0\"|stockhandle=\"none\"|rised_availability=\"\"|image=\"\"|rr_os=[\"C\"]|showcategory_desc=\"1\"|showsearch=\"1\"|showproducts=\"1\"|omitLoaded=\"1\"|show_manufacturers=\"1\"|manufacturer_per_row=\"3\"|featured=\"1\"|omitLoaded_featured=\"1\"|discontinued=\"0\"|discontinued_rows=\"1\"|omitLoaded_discontinued=\"1\"|omitLoaded_topten=\"1\"|omitLoaded_recent=\"1\"|omitLoaded_latest=\"1\"|cartlayout=\"\"|productsublayout=\"\"|homepage_categories_per_row=\"3\"|homepage_products_per_row=\"3\"|add_img_main=\"0\"|forSale_path=\"C:\\\\xampp\\\\htdocs\\\\shopdienthoai\\\\tmp\\\\\"|mediaLimit=\"10\"|llimit_init_BE=\"30\"|pagseq=\"\"|pagseq_1=\"\"|pagseq_2=\"\"|pagseq_3=\"\"|pagseq_4=\"\"|pagseq_5=\"\"|css=\"1\"|jquery=\"1\"|jprice=\"1\"|jsite=\"1\"|jdynupdate=\"1\"|rappenrundung=\"0\"|cVarswT=\"0\"|price_orderby=\"DESC\"|discountedPriceWithoutTaxTt=\"0\"|discountedPriceWithoutTaxTtText=\"0\"|discountedPriceWithoutTaxTtRounding=\"-1\"|priceWithoutTaxTt=\"0\"|priceWithoutTaxTtText=\"0\"|priceWithoutTaxTtRounding=\"-1\"|taxAmountTt=\"0\"|taxAmountTtText=\"0\"|taxAmountTtRounding=\"-1\"|salesPriceTt=\"0\"|salesPriceTtText=\"0\"|salesPriceTtRounding=\"-1\"|discountAmountTt=\"0\"|discountAmountTtText=\"0\"|discountAmountTtRounding=\"-1\"|popup_rel=\"1\"|set_automatic_shipment=\"1\"|set_automatic_payment=\"1\"|agree_to_tos_onorder=\"0\"|oncheckout_only_registered=\"1\"|oncheckout_change_shopper=\"0\"|del_date_type=\"m\"|prd_brws_orderby_dir=\"ASC\"|cat_brws_orderby_dir=\"ASC\"|feed_latest_published=\"0\"|feed_latest_nb=\"5\"|feed_topten_published=\"0\"|feed_topten_nb=\"5\"|feed_featured_published=\"0\"|feed_featured_nb=\"5\"|feed_home_show_images=\"1\"|feed_home_show_prices=\"1\"|feed_home_show_description=\"0\"|feed_home_description_type=\"product_s_desc\"|feed_home_max_text_length=\"500\"|feed_cat_published=\"0\"|feed_cat_show_images=\"0\"|feed_cat_show_prices=\"0\"|feed_cat_show_description=\"0\"|feed_cat_description_type=\"product_s_desc\"|feed_cat_max_text_length=\"500\"|use_seo_suffix=\"1\"|seo_sufix=\"-detail\"|seo_full=\"1\"|router_by_menu=\"0\"|sef_for_cart_links=\"1\"|task=\"apply\"|option=\"com_virtuemart\"|view=\"config\"|1141a0581e1d8a1f8377a0b634118eeb=\"1\"', '0000-00-00 00:00:00', 0, '2017-04-20 02:55:18', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_countries`
--

CREATE TABLE `dz8i1_virtuemart_countries` (
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT '1',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Country records';

--
-- Dumping data for table `dz8i1_virtuemart_countries`
--

INSERT INTO `dz8i1_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'Albania', 'ALB', 'AL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Algeria', 'DZA', 'DZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'American Samoa', 'ASM', 'AS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Andorra', 'AND', 'AD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Angola', 'AGO', 'AO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Anguilla', 'AIA', 'AI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Argentina', 'ARG', 'AR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Armenia', 'ARM', 'AM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Aruba', 'ABW', 'AW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Australia', 'AUS', 'AU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Austria', 'AUT', 'AT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Bahamas', 'BHS', 'BS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bahrain', 'BHR', 'BH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Barbados', 'BRB', 'BB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Belarus', 'BLR', 'BY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Belgium', 'BEL', 'BE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Belize', 'BLZ', 'BZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Benin', 'BEN', 'BJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Bermuda', 'BMU', 'BM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Bhutan', 'BTN', 'BT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Bolivia', 'BOL', 'BO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Botswana', 'BWA', 'BW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Brazil', 'BRA', 'BR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Burundi', 'BDI', 'BI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Cambodia', 'KHM', 'KH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Cameroon', 'CMR', 'CM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Canada', 'CAN', 'CA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Cape Verde', 'CPV', 'CV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Central African Republic', 'CAF', 'CF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Chad', 'TCD', 'TD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Chile', 'CHL', 'CL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'China', 'CHN', 'CN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Colombia', 'COL', 'CO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Comoros', 'COM', 'KM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Congo', 'COG', 'CG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Cook Islands', 'COK', 'CK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'Cote D\'Ivoire', 'CIV', 'CI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 'Croatia', 'HRV', 'HR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Cuba', 'CUB', 'CU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Cyprus', 'CYP', 'CY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 'Denmark', 'DNK', 'DK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 'Dominica', 'DMA', 'DM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'East Timor', 'TLS', 'TL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Ecuador', 'ECU', 'EC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Egypt', 'EGY', 'EG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'El Salvador', 'SLV', 'SV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 'Eritrea', 'ERI', 'ER', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Estonia', 'EST', 'EE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 'Fiji', 'FJI', 'FJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 'Finland', 'FIN', 'FI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'France', 'FRA', 'FR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'French Guiana', 'GUF', 'GF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Gabon', 'GAB', 'GA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'Gambia', 'GMB', 'GM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'Georgia', 'GEO', 'GE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Germany', 'DEU', 'DE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Ghana', 'GHA', 'GH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Greece', 'GRC', 'GR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Greenland', 'GRL', 'GL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Grenada', 'GRD', 'GD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 'Guam', 'GUM', 'GU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Guatemala', 'GTM', 'GT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Guinea', 'GIN', 'GN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Guyana', 'GUY', 'GY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Haiti', 'HTI', 'HT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 'Honduras', 'HND', 'HN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Hungary', 'HUN', 'HU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Iceland', 'ISL', 'IS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 'India', 'IND', 'IN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Indonesia', 'IDN', 'ID', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 'Ireland', 'IRL', 'IE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 'Israel', 'ISR', 'IL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Italy', 'ITA', 'IT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Jamaica', 'JAM', 'JM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'Japan', 'JPN', 'JP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Jordan', 'JOR', 'JO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Kenya', 'KEN', 'KE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Kiribati', 'KIR', 'KI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Korea, Democratic People\'s Republic of', 'PRK', 'KP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Kuwait', 'KWT', 'KW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Lao People\'s Democratic Republic', 'LAO', 'LA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Latvia', 'LVA', 'LV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Lebanon', 'LBN', 'LB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Lesotho', 'LSO', 'LS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Liberia', 'LBR', 'LR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Libya', 'LBY', 'LY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 'Lithuania', 'LTU', 'LT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Macau', 'MAC', 'MO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Madagascar', 'MDG', 'MG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Malawi', 'MWI', 'MW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 'Malaysia', 'MYS', 'MY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'Maldives', 'MDV', 'MV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Mali', 'MLI', 'ML', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Malta', 'MLT', 'MT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Mauritania', 'MRT', 'MR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Mauritius', 'MUS', 'MU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Mayotte', 'MYT', 'YT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 'Mexico', 'MEX', 'MX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'Monaco', 'MCO', 'MC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Mongolia', 'MNG', 'MN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 'Montserrat', 'MSR', 'MS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'Morocco', 'MAR', 'MA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 'Myanmar', 'MMR', 'MM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Namibia', 'NAM', 'NA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Nauru', 'NRU', 'NR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Nepal', 'NPL', 'NP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 'Netherlands', 'NLD', 'NL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 'Niger', 'NER', 'NE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Nigeria', 'NGA', 'NG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 'Niue', 'NIU', 'NU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Norway', 'NOR', 'NO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Oman', 'OMN', 'OM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Pakistan', 'PAK', 'PK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Palau', 'PLW', 'PW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Panama', 'PAN', 'PA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Paraguay', 'PRY', 'PY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Peru', 'PER', 'PE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Philippines', 'PHL', 'PH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Poland', 'POL', 'PL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Portugal', 'PRT', 'PT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Qatar', 'QAT', 'QA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Reunion', 'REU', 'RE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Romania', 'ROM', 'RO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Russian Federation', 'RUS', 'RU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Rwanda', 'RWA', 'RW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Samoa', 'WSM', 'WS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'San Marino', 'SMR', 'SM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'Senegal', 'SEN', 'SN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'Seychelles', 'SYC', 'SC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Singapore', 'SGP', 'SG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Slovakia', 'SVK', 'SK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Slovenia', 'SVN', 'SI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Somalia', 'SOM', 'SO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Spain', 'ESP', 'ES', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'St. Helena', 'SHN', 'SH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Sudan', 'SDN', 'SD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Suriname', 'SUR', 'SR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 'Sweden', 'SWE', 'SE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 'Switzerland', 'CHE', 'CH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 'Taiwan', 'TWN', 'TW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 'Thailand', 'THA', 'TH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 'Togo', 'TGO', 'TG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 'Tokelau', 'TKL', 'TK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 'Tonga', 'TON', 'TO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 'Tunisia', 'TUN', 'TN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 'Turkey', 'TUR', 'TR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 'Uganda', 'UGA', 'UG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 'Ukraine', 'UKR', 'UA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 'United Kingdom', 'GBR', 'GB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 'United States', 'USA', 'US', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 'Uruguay', 'URY', 'UY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 'Venezuela', 'VEN', 'VE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 0, 'Viet Nam', 'VNM', 'VN', 0, 1, '0000-00-00 00:00:00', 0, '2017-04-15 16:54:30', 295, '0000-00-00 00:00:00', 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 'Western Sahara', 'ESH', 'EH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 'Yemen', 'YEM', 'YE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 'Jersey', 'JEY', 'JE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 'St. Barthelemy', 'XSB', 'XB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 'St. Eustatius', 'XSE', 'XU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 'Canary Islands', 'XCA', 'XC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 'Serbia', 'SRB', 'RS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 'Sint Maarten (French Antilles)', 'MAF', 'MF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 'Sint Maarten (Netherlands Antilles)', 'SXM', 'SX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 'Palestinian Territory, occupied', 'PSE', 'PS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_coupons`
--

CREATE TABLE `dz8i1_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_currencies`
--

CREATE TABLE `dz8i1_virtuemart_currencies` (
  `virtuemart_currency_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` varchar(8) DEFAULT NULL,
  `currency_decimal_place` varchar(8) DEFAULT NULL,
  `currency_decimal_symbol` varchar(8) DEFAULT NULL,
  `currency_thousands` varchar(8) DEFAULT NULL,
  `currency_positive_style` varchar(64) DEFAULT NULL,
  `currency_negative_style` varchar(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';

--
-- Dumping data for table `dz8i1_virtuemart_currencies`
--

INSERT INTO `dz8i1_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, '0.00000', 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, '0.00000', 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, '0.00000', '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, '0.00000', '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, '0.00000', 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, '0.00000', '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, '0.00000', 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, '0.00000', 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, '0.00000', 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, '0.00000', 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, '0.00000', 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, '0.00000', 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Colombian peso', '', 'COP', 170, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, '0.00000', '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, '0.00000', 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, '0.00000', '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Danish krone', '', 'DKK', 208, '0.00000', 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, '0.00000', 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, '0.00000', 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, '0.00000', 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Euro', '', 'EUR', 978, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'British pound', '', 'GBP', 826, '0.00000', '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, '0.00000', 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, '0.00000', 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, '0.00000', 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, '0.00000', 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, '0.00000', 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, '0.00000', '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Indian rupee', '', 'INR', 356, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, '0.00000', 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symb0l}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, '0.00000', 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, '0.00000', 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, '0.00000', '¥', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, '0.00000', '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'North Korean won', '', 'KPW', 408, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'South Korean won', '', 'KRW', 410, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, '0.00000', 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Lao kip', '', 'LAK', 418, '0.00000', '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, '0.00000', '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, '0.00000', 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, '0.00000', 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, '0.00000', '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, '0.00000', 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, '0.00000', 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, '0.00000', 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, '0.00000', 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, '0.00000', 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, '0.00000', '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, '0.00000', 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Omani rial', '', 'OMR', 512, '0.00000', '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, '0.00000', 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, '0.00000', 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, '0.00000', 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, '0.00000', '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Romanian leu', '', 'RON', 946, '0.00000', 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, '0.00000', 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, '0.00000', 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, '0.00000', 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, '0.00000', 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, '0.00000', 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Thai baht', '', 'THB', 764, '0.00000', '฿', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, '0.00000', 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, '0.00000', 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Turkish new lira', '', 'TRY', 949, '0.00000', 'YTL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, '0.00000', 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, '0.00000', 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'United States dollar', '', 'USD', 840, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, '0.00000', '₫', '0', '.', ',', '{number} {symbol}', '{sign}{number} {symbol}', 0, 0, 1, '0000-00-00 00:00:00', 0, '2017-04-17 16:37:29', 295, '0000-00-00 00:00:00', 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, '0.00000', 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Samoan tala', '', 'WST', 882, '0.00000', 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, '0.00000', 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'South African rand', '', 'ZAR', 710, '0.00000', 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, '0.00000', 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, '0.00000', 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, '0.00000', 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, '0.00000', 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, '0.00000', 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, '0.00000', 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, '0.00000', 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, '0.00000', 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, '0.00000', 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, '0.00000', 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, '0.00000', '$', '0', '', '', '{symbol}number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, '0.00000', 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, '0.00000', '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, '0.00000', 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, '0.00000', 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, '0.00000', 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, '0.00000', 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'CFP franc', '', 'XPF', 953, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, '0.00000', 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, '0.00000', 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, '0.00000', '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, '0.00000', 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, '0.00000', 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, '0.00000', 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, '0.00000', 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, '0.00000', 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, '0.00000', '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, '0.00000', 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Mvdol', '', 'BOV', 984, '0.00000', 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_customs`
--

CREATE TABLE `dz8i1_virtuemart_customs` (
  `virtuemart_custom_id` int(1) UNSIGNED NOT NULL,
  `custom_parent_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `custom_element` varchar(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'FIELD TITLE',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_tip` varchar(255) NOT NULL DEFAULT '' COMMENT 'TIP',
  `custom_value` varchar(4095) DEFAULT NULL COMMENT 'DEFAULT VALUE',
  `custom_desc` varchar(4095) DEFAULT NULL COMMENT 'DESCRIPTION OR UNIT',
  `field_type` varchar(2) NOT NULL DEFAULT '0' COMMENT 'S:STRING,I:INT,P:PARENT, B:BOOL,D:DATE,T:TIME,H:HIDDEN',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add input to cart',
  `searchable` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Available as search filter',
  `layout_pos` varchar(24) DEFAULT NULL COMMENT 'LAYOUT POSITION',
  `custom_params` text NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valid for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

--
-- Dumping data for table `dz8i1_virtuemart_customs`
--

INSERT INTO `dz8i1_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `searchable`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_PRODUCTS', 1, 'COM_VIRTUEMART_RELATED_PRODUCTS_TIP', 'related_products', 'COM_VIRTUEMART_RELATED_PRODUCTS_DESC', 'R', 0, 0, 0, 0, 0, 'related_products', 'wPrice=\"1\"|wImage=\"1\"|wDescr=\"1\"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_CATEGORIES', 1, 'COM_VIRTUEMART_RELATED_CATEGORIES_TIP', 'related_categories', 'COM_VIRTUEMART_RELATED_CATEGORIES_DESC', 'Z', 0, 0, 0, 0, 0, 'related_categories', 'wImage=\"1\"|wDescr=\"1\"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_invoices`
--

CREATE TABLE `dz8i1_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `invoice_number` varchar(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturercategories`
--

CREATE TABLE `dz8i1_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';

--
-- Dumping data for table `dz8i1_virtuemart_manufacturercategories`
--

INSERT INTO `dz8i1_virtuemart_manufacturercategories` (`virtuemart_manufacturercategories_id`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '2017-04-19 12:58:03', 295, '2017-04-19 12:58:03', 295, '0000-00-00 00:00:00', 0),
(2, 1, '2017-04-19 14:30:37', 295, '2017-04-19 14:30:37', 295, '0000-00-00 00:00:00', 0),
(3, 1, '2017-04-19 14:34:16', 295, '2017-04-19 14:34:20', 295, '0000-00-00 00:00:00', 0),
(4, 1, '2017-04-19 14:35:46', 295, '2017-04-19 14:35:46', 295, '0000-00-00 00:00:00', 0),
(5, 1, '2017-04-19 14:37:43', 295, '2017-04-19 14:37:43', 295, '0000-00-00 00:00:00', 0),
(6, 1, '2017-04-19 14:38:15', 295, '2017-04-19 14:38:15', 295, '0000-00-00 00:00:00', 0),
(7, 1, '2017-04-19 14:39:22', 295, '2017-04-19 14:39:22', 295, '0000-00-00 00:00:00', 0),
(8, 1, '2017-04-19 14:40:24', 295, '2017-04-19 14:40:32', 295, '0000-00-00 00:00:00', 0),
(9, 1, '2017-04-19 14:41:09', 295, '2017-04-19 14:41:09', 295, '0000-00-00 00:00:00', 0),
(10, 1, '2017-04-19 14:41:48', 295, '2017-04-19 14:41:48', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturercategories_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_manufacturercategories_en_gb` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturercategories_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_manufacturercategories_vi_vn` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `mf_category_name` varchar(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_manufacturercategories_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_manufacturercategories_vi_vn` (`virtuemart_manufacturercategories_id`, `mf_category_name`, `mf_category_desc`, `slug`) VALUES
(1, 'LG', '', 'lg'),
(2, 'Samsung', '', 'samsung'),
(3, 'Sony', '', 'sony'),
(4, 'Panasonic', '', 'panasonic'),
(5, 'Apple', '', 'apple'),
(6, 'Lenovo', '', 'lenovo'),
(7, 'Âm Thanh', '', 'âm-thanh'),
(8, 'Electrolux', '', 'electrolux'),
(9, 'Toshiba', '', 'toshiba'),
(10, 'Sharp', '', 'sharp');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturers`
--

CREATE TABLE `dz8i1_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';

--
-- Dumping data for table `dz8i1_virtuemart_manufacturers`
--

INSERT INTO `dz8i1_virtuemart_manufacturers` (`virtuemart_manufacturer_id`, `virtuemart_manufacturercategories_id`, `metarobot`, `metaauthor`, `hits`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '', '', 0, 1, '2017-04-19 12:59:04', 295, '2017-04-19 12:59:04', 295, '0000-00-00 00:00:00', 0),
(2, 1, '', '', 0, 1, '2017-04-19 12:59:56', 295, '2017-04-19 13:00:30', 295, '0000-00-00 00:00:00', 0),
(3, 2, '', '', 0, 1, '2017-04-19 14:31:03', 295, '2017-04-19 14:31:03', 295, '0000-00-00 00:00:00', 0),
(4, 2, '', '', 0, 1, '2017-04-19 14:31:43', 295, '2017-04-19 14:31:43', 295, '0000-00-00 00:00:00', 0),
(5, 2, '', '', 0, 1, '2017-04-19 14:32:05', 295, '2017-04-19 14:32:05', 295, '0000-00-00 00:00:00', 0),
(6, 2, '', '', 0, 1, '2017-04-19 14:32:23', 295, '2017-04-19 14:32:23', 295, '0000-00-00 00:00:00', 0),
(7, 3, '', '', 0, 1, '2017-04-19 14:34:51', 295, '2017-04-19 14:34:51', 295, '0000-00-00 00:00:00', 0),
(8, 3, '', '', 0, 1, '2017-04-19 14:35:16', 295, '2017-04-19 14:35:16', 295, '0000-00-00 00:00:00', 0),
(9, 4, '', '', 0, 1, '2017-04-19 14:36:11', 295, '2017-04-19 14:37:11', 295, '0000-00-00 00:00:00', 0),
(10, 4, '', '', 0, 1, '2017-04-19 14:36:32', 295, '2017-04-19 14:37:22', 295, '0000-00-00 00:00:00', 0),
(11, 5, '', '', 0, 1, '2017-04-19 14:38:01', 295, '2017-04-19 14:38:01', 295, '0000-00-00 00:00:00', 0),
(12, 6, '', '', 0, 1, '2017-04-19 14:38:41', 295, '2017-04-19 14:38:41', 295, '0000-00-00 00:00:00', 0),
(13, 7, '', '', 0, 1, '2017-04-19 14:39:41', 295, '2017-04-19 14:39:41', 295, '0000-00-00 00:00:00', 0),
(14, 7, '', '', 0, 1, '2017-04-19 14:39:52', 295, '2017-04-19 14:39:52', 295, '0000-00-00 00:00:00', 0),
(15, 7, '', '', 0, 1, '2017-04-19 14:40:05', 295, '2017-04-19 14:40:05', 295, '0000-00-00 00:00:00', 0),
(16, 8, '', '', 0, 1, '2017-04-19 14:40:48', 295, '2017-04-19 14:40:48', 295, '0000-00-00 00:00:00', 0),
(17, 9, '', '', 0, 1, '2017-04-19 14:41:28', 295, '2017-04-19 14:41:28', 295, '0000-00-00 00:00:00', 0),
(18, 10, '', '', 0, 1, '2017-04-19 14:42:25', 295, '2017-04-19 14:42:25', 295, '0000-00-00 00:00:00', 0),
(19, 1, '', '', 0, 1, '2017-04-19 14:45:17', 295, '2017-04-19 14:45:17', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturers_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_manufacturers_en_gb` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturers_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_manufacturers_vi_vn` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `mf_name` varchar(180) NOT NULL DEFAULT '',
  `mf_email` varchar(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_manufacturers_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_manufacturers_vi_vn` (`virtuemart_manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_url`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Di Động LG', '', '', '', '', '', '', 'didonglg'),
(2, 'Tủ Lạnh LG', '', '', '', '', '', '', 'tu-lanh-lg'),
(3, 'Ti vi Samsung', '', '', '', '', '', '', 'ti-vi-samsung'),
(4, 'Di Động Samsung', '', '', '', '', '', '', 'di-động-samsung'),
(5, 'Máy Giặt Samsung', '', '', '', '', '', '', 'máy-giặt-samsung'),
(6, 'Tủ lạnh Samsung', '', '', '', '', '', '', 'tủ-lạnh-samsung'),
(7, 'Ti vi Sony', '', '', '', '', '', '', 'ti-vi-sony'),
(8, 'Di Động Sony', '', '', '', '', '', '', 'di-động-sony'),
(9, 'Ti Vi Panasonic', '', '', '', '', '', '', 'ti-vi-panasonic'),
(10, 'Máy giặc Panasonic', '', '', '', '', '', '', 'máy-giặc-panasonic'),
(11, 'Di Động Apple', '', '', '', '', '', '', 'di-động-apple'),
(12, 'Di Động Lenovo', '', '', '', '', '', '', 'di-động-lenovo'),
(13, 'Hệ thống âm thanh', '', '', '', '', '', '', 'he-thong-am-thanh'),
(14, 'Amply', '', '', '', '', '', '', 'amply'),
(15, 'Loa', '', '', '', '', '', '', 'loa'),
(16, 'Máy giặt Electrolux', '', '', '', '', '', '', 'máy-giặt-electrolux'),
(17, 'Tủ lạnh Toshiba', '', '', '', '', '', '', 'tủ-lạnh-toshiba'),
(18, 'Tủ Lạnh Sharp', '', '', '', '', '', '', 'tủ-lạnh-sharp'),
(19, 'Ti Vi LG', '', '', '', '', '', '', 'ti-vi-lg');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_manufacturer_medias`
--

CREATE TABLE `dz8i1_virtuemart_manufacturer_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_medias`
--

CREATE TABLE `dz8i1_virtuemart_medias` (
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `file_title` varchar(126) NOT NULL DEFAULT '',
  `file_description` varchar(254) NOT NULL DEFAULT '',
  `file_meta` varchar(254) NOT NULL DEFAULT '',
  `file_class` varchar(64) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_type` varchar(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(12287) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';

--
-- Dumping data for table `dz8i1_virtuemart_medias`
--

INSERT INTO `dz8i1_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'ipad-mini-4-wifi-cellular-64gb-400x460.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/ipad-mini-4-wifi-cellular-64gb-400x460.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-17 16:47:30', 295, '2017-04-18 15:13:34', 295, '0000-00-00 00:00:00', 0),
(7, 1, 'tivi-lcd-led-lg-60uh650t.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tivi-lcd-led-lg-60uh650t.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:47:47', 295, '2017-04-19 14:47:47', 295, '0000-00-00 00:00:00', 0),
(3, 1, 'lenovo-ideapad-110-14ibr-80t6006yvn-400-400x400_05.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/lenovo-ideapad-110-14ibr-80t6006yvn-400-400x400_05.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-18 15:32:31', 295, '2017-04-18 15:33:38', 295, '0000-00-00 00:00:00', 0),
(4, 1, 'ipad-mini-4-wifi-cellular-64gb-400x4608.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/ipad-mini-4-wifi-cellular-64gb-400x4608.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-18 15:40:44', 295, '2017-04-19 00:56:11', 295, '0000-00-00 00:00:00', 0),
(5, 1, 'ipad-pro-97-inch-1-400x460.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/ipad-pro-97-inch-1-400x460.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-18 15:47:35', 295, '2017-04-19 00:55:58', 295, '0000-00-00 00:00:00', 0),
(6, 1, 'iphone-7-plus-256gb-2-400x460.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/iphone-7-plus-256gb-2-400x460.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 01:12:13', 295, '2017-04-19 01:12:58', 295, '0000-00-00 00:00:00', 0),
(8, 1, 'tivi-led-lg-49lh511t-atv.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tivi-led-lg-49lh511t-atv.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:49:25', 295, '2017-04-19 14:49:25', 295, '0000-00-00 00:00:00', 0),
(9, 1, 'tivi-led-samsung-k6300.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tivi-led-samsung-k6300.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:53:05', 295, '2017-04-19 14:53:15', 295, '0000-00-00 00:00:00', 0),
(10, 1, 'tivi-led-samsung-ua32j4303akxxv.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tivi-led-samsung-ua32j4303akxxv.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:54:49', 295, '2017-04-19 14:54:49', 295, '0000-00-00 00:00:00', 0),
(11, 1, 'sony_kd_55x8500d.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/sony_kd_55x8500d.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:56:00', 295, '2017-04-19 14:56:00', 295, '0000-00-00 00:00:00', 0),
(12, 1, 'sony_kd_55x9300d.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/sony_kd_55x9300d.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:57:15', 295, '2017-04-19 14:57:15', 295, '0000-00-00 00:00:00', 0),
(13, 1, 'tivi-led-panasonic-th-32d300v-8.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tivi-led-panasonic-th-32d300v-8.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:58:32', 295, '2017-04-19 14:58:32', 295, '0000-00-00 00:00:00', 0),
(14, 1, 'tivi-led-panasonic-th-32ds500v-01.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tivi-led-panasonic-th-32ds500v-01.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 14:59:59', 295, '2017-04-19 14:59:59', 295, '0000-00-00 00:00:00', 0),
(15, 1, 'samsung_galaxy_a3_2016.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/samsung_galaxy_a3_2016.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:41:25', 295, '2017-04-19 15:43:23', 295, '0000-00-00 00:00:00', 0),
(16, 1, 'samsung_galaxy_a5_2017.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/samsung_galaxy_a5_2017.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:43:09', 295, '2017-04-19 15:43:09', 295, '0000-00-00 00:00:00', 0),
(17, 1, 'iphone_6s_plus__64GB.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/iphone_6s_plus__64GB.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:45:55', 295, '2017-04-19 15:45:55', 295, '0000-00-00 00:00:00', 0),
(18, 1, 'iphone_7_plus_256GB.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/iphone_7_plus_256GB.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:47:05', 295, '2017-04-19 15:47:05', 295, '0000-00-00 00:00:00', 0),
(19, 1, 'lenovo_a5000.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/lenovo_a5000.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:50:11', 295, '2017-04-19 15:50:11', 295, '0000-00-00 00:00:00', 0),
(20, 1, 'lenovo_a6600_plus.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/lenovo_a6600_plus.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:51:18', 295, '2017-04-19 15:51:18', 295, '0000-00-00 00:00:00', 0),
(21, 1, 'sony_xperia_m5_dual.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/sony_xperia_m5_dual.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:52:30', 295, '2017-04-19 15:52:30', 295, '0000-00-00 00:00:00', 0),
(22, 1, 'sony_xperia_x__black.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/sony_xperia_x__black.png', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 15:53:23', 295, '2017-04-19 15:53:23', 295, '0000-00-00 00:00:00', 0),
(23, 1, 'SAMSUNG-HT-J5550WK.1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/SAMSUNG-HT-J5550WK.1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:12:20', 295, '2017-04-19 16:12:20', 295, '0000-00-00 00:00:00', 0),
(24, 1, 'SAMSUNG-MX-HS7000.1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/SAMSUNG-MX-HS7000.1.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:13:22', 295, '2017-04-19 16:13:22', 295, '0000-00-00 00:00:00', 0),
(25, 1, 'may-tang-am-arirang-pa-203-eco.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/may-tang-am-arirang-pa-203-eco.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:15:34', 295, '2017-04-19 16:16:00', 295, '0000-00-00 00:00:00', 0),
(26, 1, 'LOA SONY HT-CT180.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/LOA SONY HT-CT180.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:16:54', 295, '2017-04-19 16:16:54', 295, '0000-00-00 00:00:00', 0),
(27, 1, 'loa-thanh-samsung-hw-k950.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/loa-thanh-samsung-hw-k950.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:17:46', 295, '2017-04-19 16:17:46', 295, '0000-00-00 00:00:00', 0),
(28, 1, 'may-giat-panasonic-na-f70vb7hrv.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/may-giat-panasonic-na-f70vb7hrv.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:22:18', 295, '2017-04-19 16:22:18', 295, '0000-00-00 00:00:00', 0),
(29, 1, 'may-giat-panasonic-na-f80vs7wcv.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/may-giat-panasonic-na-f80vs7wcv.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:23:04', 295, '2017-04-19 16:23:04', 295, '0000-00-00 00:00:00', 0),
(30, 1, 'may-giat-samsung-ww80j4233gw-sv.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/may-giat-samsung-ww80j4233gw-sv.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:24:10', 295, '2017-04-19 16:24:10', 295, '0000-00-00 00:00:00', 0),
(31, 1, 'samsung-WA72H4200SW.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/samsung-WA72H4200SW.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:25:02', 295, '2017-04-19 16:25:02', 295, '0000-00-00 00:00:00', 0),
(32, 1, 'may-giat-electrolux-ewf10744.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/may-giat-electrolux-ewf10744.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:26:19', 295, '2017-04-19 16:26:19', 295, '0000-00-00 00:00:00', 0),
(33, 1, 'may-giat-electrolux-ewf80743_9gsl-t3.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/may-giat-electrolux-ewf80743_9gsl-t3.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:27:56', 295, '2017-04-19 16:27:56', 295, '0000-00-00 00:00:00', 0),
(34, 1, 'TOSHIBA_GR-V906VN_thumb.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/TOSHIBA_GR-V906VN_thumb.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:43:57', 295, '2017-04-19 16:43:57', 295, '0000-00-00 00:00:00', 0),
(35, 1, 'tu-lanh-toshiba-gr-s19vpp-2.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tu-lanh-toshiba-gr-s19vpp-2.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:45:03', 295, '2017-04-19 16:45:03', 295, '0000-00-00 00:00:00', 0),
(36, 1, 'tu-lanh-lg-gn-l205ps.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tu-lanh-lg-gn-l205ps.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:46:20', 295, '2017-04-19 16:46:20', 295, '0000-00-00 00:00:00', 0),
(37, 1, 'tu-lanh-lg-gn-l333ps.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tu-lanh-lg-gn-l333ps.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:47:08', 295, '2017-04-19 16:47:08', 295, '0000-00-00 00:00:00', 0),
(38, 1, 'tu-lanh-sharp-sj-16vf3-cms-01.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tu-lanh-sharp-sj-16vf3-cms-01.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:48:07', 295, '2017-04-19 16:48:07', 295, '0000-00-00 00:00:00', 0),
(39, 1, 'tu-lanh-sharp-sj-16vf4-vms.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tu-lanh-sharp-sj-16vf4-vms.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:49:27', 295, '2017-04-19 16:49:27', 295, '0000-00-00 00:00:00', 0),
(40, 1, 'samsung-RT22FARBDSA.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/samsung-RT22FARBDSA.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:50:48', 295, '2017-04-19 16:50:48', 295, '0000-00-00 00:00:00', 0),
(41, 1, 'tu-lanh-samsung-rt20farwdsa.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tu-lanh-samsung-rt20farwdsa.jpg', '', 0, 0, 0, '', '', 0, 1, '2017-04-19 16:51:45', 295, '2017-04-19 16:51:45', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_migration_oldtonew_ids`
--

CREATE TABLE `dz8i1_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) UNSIGNED NOT NULL,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `attributes` longblob,
  `relatedproducts` longblob,
  `orders_start` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_modules`
--

CREATE TABLE `dz8i1_virtuemart_modules` (
  `module_id` int(1) UNSIGNED NOT NULL,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(15359) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Dumping data for table `dz8i1_virtuemart_modules`
--

INSERT INTO `dz8i1_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes, Product Types, Product Files (view=media), Inventory, Calculation Rules, Customer Reviews  ', 'storeadmin,admin', 1, '', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '0', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '', 99),
(10, 'checkout', '', 'none', 0, '', 99),
(11, 'tools', 'Tools', 'admin', 1, '0', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_orders`
--

CREATE TABLE `dz8i1_virtuemart_orders` (
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `order_number` varchar(64) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  `order_pass` varchar(34) DEFAULT NULL,
  `order_create_invoice_pass` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,5) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `payment_currency_id` smallint(1) DEFAULT NULL,
  `payment_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` varchar(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';

--
-- Dumping data for table `dz8i1_virtuemart_orders`
--

INSERT INTO `dz8i1_virtuemart_orders` (`virtuemart_order_id`, `virtuemart_user_id`, `virtuemart_vendor_id`, `order_number`, `customer_number`, `order_pass`, `order_create_invoice_pass`, `order_total`, `order_salesPrice`, `order_billTaxAmount`, `order_billTax`, `order_billDiscountAmount`, `order_discountAmount`, `order_subtotal`, `order_tax`, `order_shipment`, `order_shipment_tax`, `order_payment`, `order_payment_tax`, `coupon_discount`, `coupon_code`, `order_discount`, `order_currency`, `order_status`, `user_currency_id`, `user_currency_rate`, `payment_currency_id`, `payment_currency_rate`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `delivery_date`, `order_language`, `ip_address`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 300, 1, '9WQT03', 'HU11967d5', 'p_heNji8NQ', 'nwqN2YN3', '14060000.00000', '14000000.00000', '0.00000', '0', '0.00000', '0.00000', '14000000.00000', '0.00000', '60000.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'P', 147, '1.00000', 147, '1.00000', 1, 1, NULL, 'vi-VN', 'xx', '2017-04-20 03:33:21', 300, '2017-04-20 03:33:21', 300, '0000-00-00 00:00:00', 0),
(2, 300, 1, '1TVK04', 'HU11967d5', 'p_pLfy814L', 'vXWrMq4j', '20500000.00000', '20500000.00000', '0.00000', '0', '0.00000', '0.00000', '20500000.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'P', 147, '1.00000', 147, '1.00000', 1, 1, NULL, 'vi-VN', 'xx', '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(3, 311, 1, 'KL3S05', 'HU4cd079b', 'p_zwyqSJFJ', 'u5a6MyoA', '24400000.00000', '24400000.00000', '0.00000', '0', '0.00000', '0.00000', '24400000.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'P', 147, '1.00000', 147, '1.00000', 1, 1, NULL, 'vi-VN', 'xx', '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(4, 295, 1, 'PCVP06', 'AD21232f297', 'p_et6psmuM', 'vFgh1H39', '87700000.00000', '87700000.00000', '0.00000', '0', '0.00000', '0.00000', '87700000.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'P', 147, '1.00000', 147, '1.00000', 1, 1, NULL, 'vi-VN', 'xx', '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(5, 316, 1, 'DK5J07', 'HI380a767', 'p_6qr1643D', 'gO52W8C2', '6560000.00000', '6500000.00000', '0.00000', '0', '0.00000', '0.00000', '6500000.00000', '0.00000', '60000.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 147, 'P', 147, '1.00000', 147, '1.00000', 1, 1, NULL, 'vi-VN', 'xx', '2017-04-24 04:43:02', 316, '2017-04-24 04:43:02', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_orderstates`
--

CREATE TABLE `dz8i1_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_color` varchar(64) DEFAULT NULL,
  `order_status_description` varchar(15359) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All available order statuses';

--
-- Dumping data for table `dz8i1_virtuemart_orderstates`
--

INSERT INTO `dz8i1_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_color`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', NULL, '', 'R', 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', NULL, '', 'R', 2, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED', NULL, '', 'R', 3, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELLED', NULL, '', 'A', 4, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', NULL, '', 'A', 5, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', NULL, '', 'O', 6, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'D', 'COM_VIRTUEMART_ORDER_STATUS_DENIED', NULL, '', 'A', 7, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'F', 'COM_VIRTUEMART_ORDER_STATUS_COMPLETED', NULL, '', 'R', 7, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_order_calc_rules`
--

CREATE TABLE `dz8i1_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'NAME OF THE RULE',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'DISCOUNT/TAX/MARGIN/COMMISSION',
  `calc_mathop` varchar(16) NOT NULL DEFAULT '' COMMENT 'DISCOUNT/TAX/MARGIN/COMMISSION',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` int(1) DEFAULT NULL,
  `calc_params` varchar(15359) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_order_histories`
--

CREATE TABLE `dz8i1_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(15359) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';

--
-- Dumping data for table `dz8i1_virtuemart_order_histories`
--

INSERT INTO `dz8i1_virtuemart_order_histories` (`virtuemart_order_history_id`, `virtuemart_order_id`, `order_status_code`, `customer_notified`, `comments`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 0, '', 1, '2017-04-20 03:33:21', 300, '2017-04-20 03:33:21', 300, '0000-00-00 00:00:00', 0),
(2, 2, 'P', 0, '', 1, '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(3, 3, 'P', 0, '', 1, '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(4, 4, 'P', 0, '', 1, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(5, 5, 'P', 0, '', 1, '2017-04-24 04:43:02', 316, '2017-04-24 04:43:02', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_order_items`
--

CREATE TABLE `dz8i1_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` varchar(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` mediumtext,
  `delivery_date` varchar(200) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';

--
-- Dumping data for table `dz8i1_virtuemart_order_items`
--

INSERT INTO `dz8i1_virtuemart_order_items` (`virtuemart_order_item_id`, `virtuemart_order_id`, `virtuemart_vendor_id`, `virtuemart_product_id`, `order_item_sku`, `order_item_name`, `product_quantity`, `product_item_price`, `product_priceWithoutTax`, `product_tax`, `product_basePriceWithTax`, `product_discountedPriceWithoutTax`, `product_final_price`, `product_subtotal_discount`, `product_subtotal_with_tax`, `order_item_currency`, `order_status`, `product_attribute`, `delivery_date`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 1, 8, 'tiviLG01', 'tivi-lcd-led-lg-60uh650t', 2, '7000000.00000', '7000000.00000', '0.00000', '0.00000', '7000000.00000', '7000000.00000', '0.00000', '14000000.00000', NULL, 'P', '', NULL, '2017-04-20 03:33:21', 300, '2017-04-20 03:33:21', 300, '0000-00-00 00:00:00', 0),
(2, 2, 1, 8, 'tiviLG01', 'tivi-lcd-led-lg-60uh650t', 2, '7000000.00000', '7000000.00000', '0.00000', '0.00000', '7000000.00000', '7000000.00000', '0.00000', '14000000.00000', NULL, 'P', '', NULL, '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(3, 2, 1, 9, 'tiviled02', 'tivi-led-lg-49lh511t-atv', 1, '6500000.00000', '6500000.00000', '0.00000', '0.00000', '6500000.00000', '6500000.00000', '0.00000', '6500000.00000', NULL, 'P', '', NULL, '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(4, 3, 1, 8, 'tiviLG01', 'tivi-lcd-led-lg-60uh650t', 3, '7000000.00000', '7000000.00000', '0.00000', '0.00000', '7000000.00000', '7000000.00000', '0.00000', '21000000.00000', NULL, 'P', '', NULL, '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(5, 3, 1, 27, 'loa01', 'LOA SONY HT-CT180', 1, '3400000.00000', '3400000.00000', '0.00000', '0.00000', '3400000.00000', '3400000.00000', '0.00000', '3400000.00000', NULL, 'P', '', NULL, '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(6, 4, 1, 9, 'tiviled02', 'tivi-led-lg-49lh511t-atv', 2, '6500000.00000', '6500000.00000', '0.00000', '0.00000', '6500000.00000', '6500000.00000', '0.00000', '13000000.00000', NULL, 'P', '', NULL, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(7, 4, 1, 8, 'tiviLG01', 'tivi-lcd-led-lg-60uh650t', 1, '7000000.00000', '7000000.00000', '0.00000', '0.00000', '7000000.00000', '7000000.00000', '0.00000', '7000000.00000', NULL, 'P', '', NULL, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(8, 4, 1, 32, 'maygiatss02', 'samsung-WA72H4200SW', 2, '30000000.00000', '30000000.00000', '0.00000', '0.00000', '30000000.00000', '30000000.00000', '0.00000', '60000000.00000', NULL, 'P', '', NULL, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(9, 4, 1, 33, 'maygiatelec01', 'may-giat-electrolux-ewf10744', 1, '1200000.00000', '1200000.00000', '0.00000', '0.00000', '1200000.00000', '1200000.00000', '0.00000', '1200000.00000', NULL, 'P', '', NULL, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(10, 4, 1, 9, 'tiviled02', 'tivi-led-lg-49lh511t-atv', 1, '6500000.00000', '6500000.00000', '0.00000', '0.00000', '6500000.00000', '6500000.00000', '0.00000', '6500000.00000', NULL, 'P', '', NULL, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(11, 5, 1, 9, 'tiviled02', 'tivi-led-lg-49lh511t-atv', 1, '6500000.00000', '6500000.00000', '0.00000', '0.00000', '6500000.00000', '6500000.00000', '0.00000', '6500000.00000', NULL, 'P', '', NULL, '2017-04-24 04:43:02', 316, '2017-04-24 04:43:02', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_order_userinfos`
--

CREATE TABLE `dz8i1_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` char(32) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `zip` char(16) NOT NULL DEFAULT '',
  `email` char(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(2500) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';

--
-- Dumping data for table `dz8i1_virtuemart_order_userinfos`
--

INSERT INTO `dz8i1_virtuemart_order_userinfos` (`virtuemart_order_userinfo_id`, `virtuemart_order_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `email`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 300, 'BT', NULL, 'dsfs', 'Mr', 'dsf', 'sdaf', 'sdaf', 'ádf', 'sdaf', 'dsfdsf', 'adsf', 'dsf', 'sadf', 0, 230, 'sdf', 'huybtt@gmail.com', 0, 1, '', '2017-04-20 03:33:21', 300, '2017-04-20 03:33:21', 300, '0000-00-00 00:00:00', 0),
(2, 2, 300, 'BT', NULL, 'dsfs', 'Mr', 'dsf', 'sdaf', 'sdaf', 'ádf', 'sdaf', 'dsfdsf', 'adsf', 'dsf', 'sadf', 0, 230, 'sdf', 'huybtt@gmail.com', 0, 1, '', '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(3, 3, 311, 'BT', NULL, 'd', NULL, 'd', 'd', 'd', '423432', '324', NULL, 'đ', 'd', 'd', 0, 230, 'd', 'huy@gmail.com', 0, 1, '', '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(4, 4, 295, 'BT', NULL, 'cong ty dien may', 'Mr', 'cuong', 'truong', 'quoc', '2324', '234', '234', '256 nguyễn hữu thọ', NULL, 'hcm', 0, 230, '800000', 'truongquoccuongbt@gmail.com', 0, 1, '', '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(5, 5, 316, 'BT', NULL, 'd', NULL, 'sdaf', 'sdf', 'sdfsdf', 'sadfsw', 'dsf', 'xvd', 'sdf', 'sdf', 'sdf', 0, 230, 'sdf', 'hien@gmail.com', 0, 1, '', '2017-04-24 04:43:02', 316, '2017-04-24 04:43:02', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_paymentmethods`
--

CREATE TABLE `dz8i1_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `payment_element` varchar(50) NOT NULL DEFAULT '',
  `payment_params` text,
  `currency_id` int(1) UNSIGNED DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';

--
-- Dumping data for table `dz8i1_virtuemart_paymentmethods`
--

INSERT INTO `dz8i1_virtuemart_paymentmethods` (`virtuemart_paymentmethod_id`, `virtuemart_vendor_id`, `payment_jplugin_id`, `payment_element`, `payment_params`, `currency_id`, `shared`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10018, 'paypal', 'paypal_merchant_email=\"truongquoccuongbt@gmail.com\"|accelerated_onboarding=\"0\"|api_login_id=\"\"|api_password=\"\"|authentication=\"signature\"|api_signature=\"\"|api_certificate=\"0\"|sandbox=\"0\"|sandbox_merchant_email=\"\"|sandbox_api_login_id=\"\"|sandbox_api_password=\"\"|sandbox_api_signature=\"\"|sandbox_api_certificate=\"0\"|sandbox_payflow_vendor=\"\"|sandbox_payflow_partner=\"PayPal\"|payflow_vendor=\"\"|payflow_partner=\"\"|creditcards=\"\"|cvv_required=\"1\"|cvv_images=\"\"|paypalproduct=\"std\"|paypal_verified_only=\"\"|payment_currency=\"0\"|email_currency=\"vendor\"|log_ipn=\"\"|payment_logos=\"\"|debug=\"0\"|log=\"0\"|status_pending=\"U\"|status_success=\"C\"|status_canceled=\"X\"|status_expired=\"\"|status_capture=\"S\"|status_refunded=\"R\"|status_denied=\"D\"|status_partial_refunded=\"R\"|expected_maxamount=\"\"|secure_post=\"\"|ipn_test=\"\"|no_shipping=\"0\"|address_override=\"0\"|payment_type=\"_xclick\"|subcription_trials=0|trial1_price=\"\"|trial1_duration=\"\"|subscription_duration=\"\"|subscription_term=\"\"|payment_plan_duration=\"\"|payment_plan_term=\"\"|payment_plan_defer=\"\"|payment_plan_defer_duration=\"\"|payment_plan_defer_strtotime=\"\"|billing_max_amount_type=\"cart\"|billing_max_amount=\"\"|sftp_login=\"\"|sftp_password=\"\"|sftp_host=\"\"|sftp_sandbox_login=\"\"|sftp_sandbox_password=\"\"|countries=\"\"|min_amount=\"\"|max_amount=\"\"|publishup=\"\"|publishdown=\"\"|virtuemart_shipmentmethod_ids=\"\"|cost_per_transaction=\"\"|cost_percent_total=\"\"|cost_method=\"1\"|tax_id=\"0\"|headerBgColor=\"\"|headerHeight=\"\"|logoFont=\"\"|logoFontColor=\"\"|logoFontSize=\"\"|bodyBgImg=\"\"|bodyBgColor=\"\"|PageTitleTextColor=\"\"|PageCollapseBgColor=\"\"|PageCollapseTextColor=\"\"|orderSummaryBgColor=\"\"|orderSummaryBgImage=\"\"|footerTextColor=\"\"|footerTextlinkColor=\"\"|pageButtonBgColor=\"\"|pageButtonTextColor=\"\"|pageTitleTextColor=\"\"|sectionBorder=\"\"|bordercolor=\"\"|headerimg=\"-1\"|logoimg=\"\"|payment_action=\"Sale\"|template=\"templateA\"|add_prices_api=\"0\"|noStandardChoice=\"1\"|', 147, 0, 1, 1, '2017-04-20 02:39:44', 295, '2017-04-20 02:41:24', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_paymentmethods_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_paymentmethods_en_gb` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_paymentmethods_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_paymentmethods_vi_vn` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `payment_name` varchar(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_paymentmethods_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_paymentmethods_vi_vn` (`virtuemart_paymentmethod_id`, `payment_name`, `payment_desc`, `slug`) VALUES
(1, 'Thanh toán qua thẻ', 'Thanh toán trực tuyến', 'thanh-toán-qua-thẻ');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_paymentmethod_shoppergroups`
--

CREATE TABLE `dz8i1_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';

--
-- Dumping data for table `dz8i1_virtuemart_paymentmethod_shoppergroups`
--

INSERT INTO `dz8i1_virtuemart_paymentmethod_shoppergroups` (`id`, `virtuemart_paymentmethod_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_payment_plg_paypal`
--

CREATE TABLE `dz8i1_virtuemart_payment_plg_paypal` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL,
  `payment_currency` smallint(1) DEFAULT NULL,
  `email_currency` smallint(1) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `paypal_custom` varchar(255) DEFAULT NULL,
  `paypal_method` varchar(200) DEFAULT NULL,
  `paypal_response_mc_gross` decimal(10,2) DEFAULT NULL,
  `paypal_response_mc_currency` char(10) DEFAULT NULL,
  `paypal_response_invoice` char(32) DEFAULT NULL,
  `paypal_response_protection_eligibility` char(128) DEFAULT NULL,
  `paypal_response_payer_id` char(13) DEFAULT NULL,
  `paypal_response_tax` decimal(10,2) DEFAULT NULL,
  `paypal_response_payment_date` char(28) DEFAULT NULL,
  `paypal_response_payment_status` char(50) DEFAULT NULL,
  `paypal_response_pending_reason` char(50) DEFAULT NULL,
  `paypal_response_mc_fee` decimal(10,2) DEFAULT NULL,
  `paypal_response_payer_email` char(128) DEFAULT NULL,
  `paypal_response_last_name` char(64) DEFAULT NULL,
  `paypal_response_first_name` char(64) DEFAULT NULL,
  `paypal_response_business` char(128) DEFAULT NULL,
  `paypal_response_receiver_email` char(128) DEFAULT NULL,
  `paypal_response_transaction_subject` char(128) DEFAULT NULL,
  `paypal_response_residence_country` char(2) DEFAULT NULL,
  `paypal_response_txn_id` char(32) DEFAULT NULL,
  `paypal_response_txn_type` char(32) DEFAULT NULL,
  `paypal_response_parent_txn_id` char(32) DEFAULT NULL,
  `paypal_response_case_creation_date` char(32) DEFAULT NULL,
  `paypal_response_case_id` char(32) DEFAULT NULL,
  `paypal_response_case_type` char(32) DEFAULT NULL,
  `paypal_response_reason_code` char(32) DEFAULT NULL,
  `paypalresponse_raw` varchar(512) DEFAULT NULL,
  `paypal_fullresponse` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_payment_plg_paypal`
--

INSERT INTO `dz8i1_virtuemart_payment_plg_paypal` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `email_currency`, `cost_per_transaction`, `cost_percent_total`, `tax_id`, `paypal_custom`, `paypal_method`, `paypal_response_mc_gross`, `paypal_response_mc_currency`, `paypal_response_invoice`, `paypal_response_protection_eligibility`, `paypal_response_payer_id`, `paypal_response_tax`, `paypal_response_payment_date`, `paypal_response_payment_status`, `paypal_response_pending_reason`, `paypal_response_mc_fee`, `paypal_response_payer_email`, `paypal_response_last_name`, `paypal_response_first_name`, `paypal_response_business`, `paypal_response_receiver_email`, `paypal_response_transaction_subject`, `paypal_response_residence_country`, `paypal_response_txn_id`, `paypal_response_txn_type`, `paypal_response_parent_txn_id`, `paypal_response_case_creation_date`, `paypal_response_case_id`, `paypal_response_case_type`, `paypal_response_reason_code`, `paypalresponse_raw`, `paypal_fullresponse`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '9WQT03', 1, '<span class=\"vmpayment_name\">Thanh toán qua thẻ</span><span class=\"vmpayment_description\">Thanh toán trực tuyến</span>', '14060000.00000', 147, 147, '0.00', '0.00', 0, 'jmajebvj5k1l9fnucerm61q6sm', '0', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-04-20 03:33:21', 300, '2017-04-20 03:33:21', 300, '0000-00-00 00:00:00', 0),
(2, 2, '1TVK04', 1, '<span class=\"vmpayment_name\">Thanh toán qua thẻ</span><span class=\"vmpayment_description\">Thanh toán trực tuyến</span>', '20500000.00000', 147, 147, '0.00', '0.00', 0, 'jmajebvj5k1l9fnucerm61q6sm', '0', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(3, 3, 'KL3S05', 1, '<span class=\"vmpayment_name\">Thanh toán qua thẻ</span><span class=\"vmpayment_description\">Thanh toán trực tuyến</span>', '24400000.00000', 147, 147, '0.00', '0.00', 0, 'ig2gfhkekbnfbrikiels5p3f9t', '0', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(4, 4, 'PCVP06', 1, '<span class=\"vmpayment_name\">Thanh toán qua thẻ</span><span class=\"vmpayment_description\">Thanh toán trực tuyến</span>', '87700000.00000', 147, 147, '0.00', '0.00', 0, '997a1g5qkbr8hmoqglje3d10er', '0', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(5, 5, 'DK5J07', 1, '<span class=\"vmpayment_name\">Thanh toán qua thẻ</span><span class=\"vmpayment_description\">Thanh toán trực tuyến</span>', '6560000.00000', 147, 147, '0.00', '0.00', 0, '295eegnfmrpftlem3lf837bmgl', '0', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2017-04-24 04:43:02', 316, '2017-04-24 04:43:02', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_products`
--

CREATE TABLE `dz8i1_virtuemart_products` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `product_parent_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `product_stockhandle` varchar(24) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` varchar(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_discontinued` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) UNSIGNED DEFAULT NULL,
  `product_params` varchar(255) NOT NULL,
  `hits` int(1) UNSIGNED DEFAULT NULL,
  `intnotes` text,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` varchar(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

--
-- Dumping data for table `dz8i1_virtuemart_products`
--

INSERT INTO `dz8i1_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `product_stockhandle`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_discontinued`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(11, 1, 0, 'tiviss02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:54:49', 295, '2017-04-19 14:54:49', 295, '0000-00-00 00:00:00', 0),
(8, 1, 0, 'tiviLG01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 12, 8, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:47:47', 295, '2017-04-19 14:47:47', 295, '0000-00-00 00:00:00', 0),
(9, 1, 0, 'tiviled02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 5, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:49:25', 295, '2017-04-19 14:49:25', 295, '0000-00-00 00:00:00', 0),
(10, 1, 0, 'tiviss01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:53:05', 295, '2017-04-19 14:53:15', 295, '0000-00-00 00:00:00', 0),
(12, 1, 0, 'tivisony01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:56:00', 295, '2017-04-19 14:56:00', 295, '0000-00-00 00:00:00', 0),
(13, 1, 0, 'tivisony02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:57:15', 295, '2017-04-19 14:57:15', 295, '0000-00-00 00:00:00', 0),
(14, 1, 0, 'tivipana01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:58:32', 295, '2017-04-19 14:58:32', 295, '0000-00-00 00:00:00', 0),
(15, 1, 0, 'tivipana02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 14:59:59', 295, '2017-04-19 14:59:59', 295, '0000-00-00 00:00:00', 0),
(16, 1, 0, 'dienthoaiss01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:41:25', 295, '2017-04-19 15:43:23', 295, '0000-00-00 00:00:00', 0),
(17, 1, 0, 'dienthoaiss02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 44, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:43:09', 295, '2017-04-19 15:43:09', 295, '0000-00-00 00:00:00', 0),
(18, 1, 0, 'dienthoaiip01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:45:55', 295, '2017-04-19 15:45:55', 295, '0000-00-00 00:00:00', 0),
(19, 1, 0, 'dienthoaiip02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:47:05', 295, '2017-04-19 15:47:05', 295, '0000-00-00 00:00:00', 0),
(20, 1, 0, 'dienthoailenovo01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:50:11', 295, '2017-04-19 15:50:11', 295, '0000-00-00 00:00:00', 0),
(21, 1, 0, 'dienthoailenovo02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:51:18', 295, '2017-04-19 15:51:18', 295, '0000-00-00 00:00:00', 0),
(22, 1, 0, 'dienthoaisony01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:52:30', 295, '2017-04-19 15:52:30', 295, '0000-00-00 00:00:00', 0),
(23, 1, 0, 'dienthoaisony02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 15:53:23', 295, '2017-04-19 15:53:23', 295, '0000-00-00 00:00:00', 0),
(24, 1, 0, 'at01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:12:20', 295, '2017-04-19 16:12:20', 295, '0000-00-00 00:00:00', 0),
(25, 1, 0, 'at02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:13:22', 295, '2017-04-19 16:13:22', 295, '0000-00-00 00:00:00', 0),
(26, 1, 0, 'amply01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:14:44', 295, '2017-04-19 16:16:00', 295, '0000-00-00 00:00:00', 0),
(27, 1, 0, 'loa01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 20, 1, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:16:54', 295, '2017-04-19 16:16:54', 295, '0000-00-00 00:00:00', 0),
(28, 1, 0, 'loa02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 22, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:17:46', 295, '2017-04-19 16:17:46', 295, '0000-00-00 00:00:00', 0),
(29, 1, 0, 'maygiatpana01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:22:18', 295, '2017-04-19 16:22:18', 295, '0000-00-00 00:00:00', 0),
(30, 1, 0, 'maygiatpana02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:23:04', 295, '2017-04-19 16:23:04', 295, '0000-00-00 00:00:00', 0),
(31, 1, 0, 'maygiatss01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 22, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:24:10', 295, '2017-04-19 16:24:10', 295, '0000-00-00 00:00:00', 0),
(32, 1, 0, 'maygiatss02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 22, 2, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:25:02', 295, '2017-04-19 16:25:02', 295, '0000-00-00 00:00:00', 0),
(33, 1, 0, 'maygiatelec01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 1, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:26:19', 295, '2017-04-19 16:26:19', 295, '0000-00-00 00:00:00', 0),
(34, 1, 0, 'maygiatelec02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 22, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:27:56', 295, '2017-04-19 16:27:56', 295, '0000-00-00 00:00:00', 0),
(35, 1, 0, 'tulanhtoshiba01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:43:57', 295, '2017-04-19 16:43:57', 295, '0000-00-00 00:00:00', 0),
(36, 1, 0, 'tulanhtoshiba02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 44, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:45:03', 295, '2017-04-19 16:45:03', 295, '0000-00-00 00:00:00', 0),
(37, 1, 0, 'tulanhlg01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:46:20', 295, '2017-04-19 16:46:20', 295, '0000-00-00 00:00:00', 0),
(38, 1, 0, 'tulanhlg02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 44, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:47:08', 295, '2017-04-19 16:47:08', 295, '0000-00-00 00:00:00', 0),
(39, 1, 0, 'tulanhsharp01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:48:07', 295, '2017-04-19 16:48:07', 295, '0000-00-00 00:00:00', 0),
(40, 1, 0, 'tulanhsharp02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:49:27', 295, '2017-04-19 16:49:27', 295, '0000-00-00 00:00:00', 0),
(41, 1, 0, 'tulanhss01', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 22, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:50:48', 295, '2017-04-19 16:50:48', 295, '0000-00-00 00:00:00', 0),
(42, 1, 0, 'tulanhss02', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 33, 0, '0', 0, '2017-04-19 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|product_box=\"\"|', NULL, '', '', '', '', 1, 0, '2017-04-19 16:51:45', 295, '2017-04-19 16:51:45', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_products_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_products_en_gb` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_products_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_products_vi_vn` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` varchar(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_products_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_products_vi_vn` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(8, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình 60 inches độ phân giải 4K UHD (3840 x 2160 pixels) cho hình ảnh sắc nét</li>\r\n<li>Khả năng kết nối phong phú, đem đến nguồn giải trí đa dạng</li>\r\n<li>Tích hợp nhiều tính năng tiện lợi mang đến cho không gian giải trí của bạn thêm thú vị</li>\r\n<li>Bộ xử lý Quad-Core mạnh mẽ tích hợp đầu thu KTS DVB-T2 phong phú</li>\r\n<li>Thiết kế mỏng, sang trọng và có độ bền cao</li>\r\n</ul>', 'tivi-lcd-led-lg-60uh650t', '', '', '', 'tivi-lcd-led-lg-60uh650t'),
(9, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình 49 inches cùng thiết kế nổi bật, tạo nét sang trọng và hiện đại</li>\r\n<li>Độ Phân Giải Full HD (1920 x 1080 pixels) mang hình ảnh sống động, chân thật</li>\r\n<li>Tích hợp đầu thu KTS DVT-T2 mang đến cho bạn các kênh truyền hình giải trí thú vị.</li>\r\n<li>Kết nối USB, HDMI tiện lợi cùng công suất loa 10W.</li>\r\n</ul>', 'tivi-led-lg-49lh511t-atv', '', '', '', 'tivi-led-lg-49lh511t-atv'),
(10, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế siêu mỏng đầy sang trọng cùng với chất liệu cao cấp mang lại sự cứng cáp.</li>\r\n<li>Màn hình cong kích thước 55 inches mang lại cảm giác xem tốt hơn.</li>\r\n<li>Độ phân giải FHD cùng những công nghệ hiện đại cho khả năng hiển thị hình ảnh cực nét.</li>\r\n<li>Trang bị kết nối đa dạng, truy cập vào thế giới Internet nhanh chóng, tiện lợi.</li>\r\n<li>Chip xử lý 4 nhân, giúp bạn thao tác trên tivi dễ dàng.</li>\r\n<li>Nâng cấp chất lượng hình ảnh lên chuẩn gần nhất với FHD.</li>\r\n</ul>', 'tivi-led-samsung-k6300', '', '', '', 'tivi-led-samsung-k6300'),
(11, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế mỏng, hiện đại, mang lại vẻ nổi bật cho không gian phòng bạn</li>\r\n<li>Màn hình 32 inches độ phân giải HD cho khả năng hiển thị hình ảnh rõ nét</li>\r\n<li>Tích hợp đầu thu KTS DVB-T2 giúp bạn thu được nhiều kênh miễn phí</li>\r\n<li>Thoải mái kết nối và lướt Internet dễ dàng, nhanh chóng</li>\r\n<li>Tivi có hỗ trợ các cổng kết nối USB, HDMI</li>\r\n</ul>', 'tivi-led-samsung-ua32j4303akxxv', '', '', '', 'tivi-led-samsung-ua32j4303akxxv'),
(12, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: 55 inch</li>\r\n<li>Loại tivi Smart Tivi, HDR</li>\r\n<li>Android tivi với kho giải trí khổng lồ.</li>\r\n<li>Trải nghiệm màu sắc rực rỡ với tivi 4K chuẩn HDR.</li>\r\n<li>Chip xử lý hình ảnh 4K X1 cho hình ảnh sắc nét.</li>\r\n<li>Công nghệ TRILUMINOS Display mang đến màu sắc tự nhiên, chân thật.</li>\r\n<li>Bảo hành chính hãng.</li>\r\n<li>Bảo hành 24 tháng</li>\r\n</ul>', 'sony_kd_55x8500d', '', '', '', 'sony_kd_55x8500d'),
(13, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: 55 inch</li>\r\n<li>Loại tivi Android Tivi</li>\r\n<li>Trải nghiệm màu sắc rực rỡ, độ tương phản ấn tượng với công nghệ HDR.</li>\r\n<li>Android tivi với kho ứng dụng khổng lồ.</li>\r\n<li>Bộ xử lý 4K X1 cho hình ảnh sắc nét.</li>\r\n<li>Công nghệ TRILUMINOS Display tái tạo màu sắc ấn tượng.</li>\r\n<li>Bảo hành chính hãng.</li>\r\n<li>Bảo hành 24 tháng</li>\r\n</ul>', 'sony_kd_55x9300d', '', '', '', 'sony_kd_55x9300d'),
(14, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế mỏng, hiện đại, mang lại vẻ nổi bật cho không gian phòng bạn</li>\r\n<li>Màn hình 32 inches độ phân giải HD cho khả năng hiển thị hình ảnh rõ nét</li>\r\n<li>Tích hợp đầu thu KTS DVB-T2 giúp bạn thu được nhiều kênh miễn phí</li>\r\n<li>Hệ thống 2 loa tổng công suất 10W cho âm thanh trong trẻo</li>\r\n<li>Công nghệ hiện đại cho khả năng xử lý hình ảnh thông minh</li>\r\n</ul>', 'tivi-led-panasonic-th-32d300v-8', '', '', '', 'tivi-led-panasonic-th-32d300v-8'),
(15, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế mỏng, hiện đại, mang lại vẻ nổi bật cho không gian phòng bạn</li>\r\n<li>Màn hình 32 inches độ phân giải HD cho khả năng hiển thị hình ảnh rõ nét</li>\r\n<li>Tích hợp đầu thu KTS DVB-T2 giúp bạn thu được nhiều kênh miễn phí</li>\r\n<li>Hệ thống 2 loa tổng công suất 20W cho âm thanh trong trẻo</li>\r\n<li>Công nghệ hiện đại cho khả năng xử lý hình ảnh thông minh</li>\r\n<li>Khả năng kết nối Internet giúp bạn khai thác được khả năng giải trí tối ưu</li>\r\n</ul>', 'tivi-led-panasonic-th-32ds500v-01', '', '', '', 'tivi-led-panasonic-th-32ds500v-01'),
(16, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: HD; 4.7\"; Quay phim FullHD 1080p @ 30fps</li>\r\n<li>RAM: 1.5 GB; Bộ nhớ trong: 16 GB</li>\r\n<li>Camera sau: 13.0 MP; Quay phim FullHD 1080p @ 30fps</li>\r\n<li>Camera trước: 5 MP</li>\r\n<li>Dung lượng pin: 2300 mAh</li>\r\n<li>Hệ điều hành: Android OS, v5.1.1 (Lollipop)</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Củ sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim</li>\r\n</ul>', 'samsung_galaxy_a3_2016', '', '', '', 'samsung_galaxy_a3_2016'),
(17, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: Full HD; 5.2\"; 1080 x 1920 pixels</li>\r\n<li>RAM: 3 GB; Bộ nhớ trong: 32 GB</li>\r\n<li>Camera sau: 16.0 MP; Quay phim FullHD 1080p@30fps</li>\r\n<li>Camera trước: 16.0 MP</li>\r\n<li>Dung lượng pin: 3000 mAh</li>\r\n<li>Hệ điều hành: Android OS, v6.0.1 (Marshmallow)</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Củ sạc, Tai nghe, Sách hướng dẫn, Cáp</li>\r\n</ul>', 'samsung_galaxy_a5_2017', '', '', '', 'samsung_galaxy_a5_2017'),
(18, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: FullHD; 5.5\"; 1080 x 1920 pixels</li>\r\n<li>RAM: 2 GB; Bộ nhớ trong: 64 GB</li>\r\n<li>Camera sau: 12.0 MP; Quay phim 4K 2160p@30fps</li>\r\n<li>Camera trước: 5 MP</li>\r\n<li>Dung lượng pin: 2750 mAh</li>\r\n<li>Hệ điều hành: iOS 9, có thể nâng cấp lên iOS 9.3</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Củ sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim</li>\r\n</ul>', 'iphone_6s_plus__64GB', '', '', '', 'iphone_6s_plus__64gb'),
(19, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: 4.7\"; 750 x 1334 pixels</li>\r\n<li>RAM: 3 GB; Bộ nhớ trong: 256 GB</li>\r\n<li>Camera sau: 12 MP; Quay phim 4K 2160p@30fps</li>\r\n<li>Camera trước: 7 MP</li>\r\n<li>Hệ điều hành: iOS 10</li>\r\n<li>Khả năng kháng bụi và nước IP67</li>\r\n<li>Cảm biến vân tay 1 chạm</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Củ sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim</li>\r\n</ul>', 'iphone_7_plus_256GB', '', '', '', 'iphone_7_plus_256gb'),
(20, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: HD; 5.0\"; 720 x 1280 pixels</li>\r\n<li>RAM: 1 GB; Bộ nhớ trong: 8 GB</li>\r\n<li>Camera sau: 8.0 MP; Quay phim FullHD 1080p@30fps</li>\r\n<li>Camera trước: 2 MP</li>\r\n<li>Dung lượng pin: 4000 mAh</li>\r\n<li>Hệ điều hành: Hệ điều hành Android, v4.4.2 (KitKat), nâng cấp lên v5.0.2 (Lollipop)</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Củ sạc, Tai nghe, Sách hướng dẫn, Cáp</li>\r\n</ul>', 'lenovo_a5000', '', '', '', 'lenovo_a5000'),
(21, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: LCD 5.0\", 720x1280 pixels</li>\r\n<li>RAM: 2 GB; Bộ nhớ trong: 16 GB</li>\r\n<li>Camera sau: 8 MP; Quay phim FullHD 1080p@30fps</li>\r\n<li>Camera trước: 2 MP</li>\r\n<li>Dung lượng pin: 2300 mAh</li>\r\n<li>Hệ điều hành: Android 6.0 (Marshmallow)</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Pin, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Miếng dán màn hình</li>\r\n</ul>', 'lenovo_a6600_plus', '', '', '', 'lenovo_a6600_plus'),
(22, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: FullHD; 5.0\"; 1080 x 1920 pixels</li>\r\n<li>RAM: 3 GB; Bộ nhớ trong: 16 GB</li>\r\n<li>Camera sau: 21.2 MP; Quay phim 4K 2160p@30fps</li>\r\n<li>Camera trước: 13 MP</li>\r\n<li>Dung lượng pin: 2600 mAh</li>\r\n<li>Hệ điều hành: Android, v5.0 (Lollipop), nâng cấp lên v5.1 (Lollipop</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Sạc, Tai nghe, Sách hướng dẫn</li>\r\n</ul>', 'sony_xperia_m5_dual', '', '', '', 'sony_xperia_m5_dual'),
(23, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Màn hình: FullHD; 5.0\"; 1080 x 1920 pixels</li>\r\n<li>RAM: 3 GB; Bộ nhớ trong: 64 GB</li>\r\n<li>Camera sau: 23.0 MP; Quay phim FullHD 1080p@30fps</li>\r\n<li>Camera trước: 13 MP</li>\r\n<li>Dung lượng pin: 2620 mAh</li>\r\n<li>Hệ điều hành: Android OS, v6.0.1 (Marshmallow)</li>\r\n<li>Hàng chính hãng, bảo hành toàn quốc</li>\r\n<li>Sản phẩm bao gồm: Thân máy, Củ sạc, Tai nghe, Sách hướng dẫn, Cáp</li>\r\n</ul>', 'sony_xperia_x__black', '', '', '', 'sony_xperia_x__black'),
(24, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Hệ thống loa 5.1</li>\r\n<li>Cho bạn những trải nghiệm âm thanh tuyệt hảo</li>\r\n<li>Tương tác với điện thoại thông minh</li>\r\n<li>Dễ dàng điều khiển thông qua Bluetooth</li>\r\n<li>Thiết kế trong suốt tinh tế</li>\r\n<li>Làm nổi bật thêm không gian phòng bạn</li>\r\n<li>Đầu Bluray xem phim 3D</li>\r\n<li>Bạn sẽ có thể cảm nhận được thế giới siêu thực ngay tại nhà</li>\r\n</ul>', 'SAMSUNG-HT-J5550WK.1', '', '', '', 'samsung-ht-j5550wk-1'),
(25, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Chế độ bóng đá mang cả sân vận động vào nhà bạn</li>\r\n<li>Chức năng DJ cho bạn những bữa tiệc quẩy tưng bừng</li>\r\n<li>Kích hoạt loa điện tử bằng chiếc smartphone của bạn</li>\r\n<li>Kiểu dáng sang trọng, đẳng cấp cho cuộc sống của bạn</li>\r\n<li>Chức năng chơi nhạc liên tục không ngừng nghỉ của máy</li>\r\n</ul>', 'SAMSUNG-MX-HS7000.1', '', '', '', 'samsung-mx-hs7000-1'),
(26, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Hệ thống tỏa nhiệt thông minh.</li>\r\n<li>Khả năng kết nối đa dạng.</li>\r\n<li>Công suất hoạt động mạnh mẽ.</li>\r\n<li>Tránh tình trạng méo âm, cho âm thanh trung thực.</li>\r\n</ul>', 'amply-guinness-spa-680d.', '', '', '', 'amply-guinness-spa-680d'),
(27, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Kết nối Bluetooth và TV.</li>\r\n<li>Hệ thống âm thanh Hifi với công suất cực lớn 100W (RMS).</li>\r\n<li>Âm thanh rạp hát 3D giả lập với công nghệ âm thanh S-Force Front Surrond.</li>\r\n<li>Hòa hợp TV kích thước mỏng với loa Subwoofer kết nối không dây.</li>\r\n</ul>', 'LOA SONY HT-CT180', '', '', '', 'loa-sony-ht-ct180'),
(28, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế hiện đại, đem lại không gian sang trọng cho nội thất nhà</li>\r\n<li>Âm thanh chất lượng, sống động, mang tính giải trí cao</li>\r\n<li>Sở hữu âm thanh vòm 5.1.4ch sống động</li>\r\n<li>Thiết kế 15 loa ấn tượng</li>\r\n<li>Kết nối không dây đỉnh cao</li>\r\n</ul>', 'loa-thanh-samsung-hw-k950', '', '', '', 'loa-thanh-samsung-hw-k950'),
(29, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Máy giặt cửa trên thiết kế thân thiện người dùng</li>\r\n<li>Khối lượng giặt 7 kg phù hợp với gia đình nhỏ</li>\r\n<li>Có đến 10 chương trình giặt tự động</li>\r\n<li>Lồng giặt bằng thép không gỉ rất bền và còn bảo vệ quần áo tốt</li>\r\n<li>Sử dụng an toàn cùng khóa trẻ em</li>\r\n<li>Có tính năng tự khởi động lại khi có điện</li>\r\n<li>Có chức năng hẹn giờ thông minh</li>\r\n<li>Tốc độ quay vắt 730 vòng/phút</li>\r\n<li>Công nghệ giặt: Eco AquaBeat, Aqua spin rinse, cảm biến Econavi</li>\r\n</ul>', 'may-giat-panasonic-na-f70vb7hrv', '', '', '', 'may-giat-panasonic-na-f70vb7hrv'),
(30, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế sang trọng, phù hợp mọi không gian</li>\r\n<li>Lồng giặt đứng chứa được 8kg quần áo</li>\r\n<li>10 chế độ giặt thông minh</li>\r\n<li>Tốc độ giặt 730 vòng/phút</li>\r\n<li>Động cơ truyền động dây Curoa</li>\r\n</ul>', 'may-giat-panasonic-na-f80vs7wcv', '', '', '', 'may-giat-panasonic-na-f80vs7wcv'),
(31, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Máy giặt cửa trước hiện đại, khối lượng giặt 8 kg</li>\r\n<li>Lồng giặt kim cương độc đáo giúp quần áo luôn mới</li>\r\n<li>Công nghệ Inverter vận hành êm ái, tiết kiệm điện</li>\r\n<li>Trang bị 14 chương trình giặt sạch tiên tiến, bảo vệ quần áo bền tốt</li>\r\n<li>Tốc độ vắt khô mạnh mẽ, tiết kiệm thời gian phơi khô quần áo</li>\r\n</ul>', 'may-giat-samsung-ww80j4233gw-sv', '', '', '', 'may-giat-samsung-ww80j4233gw-sv'),
(32, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế sang trọng, phù hợp mọi khung cảnh</li>\r\n<li>Khối lượng giặt 7.2kg</li>\r\n<li>5 chương trình giặt tiện dụng</li>\r\n<li>Khóa trẻ em an toàn</li>\r\n</ul>', 'samsung-WA72H4200SW', '', '', '', 'samsung-wa72h4200sw'),
(33, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Là loại máy giặt cửa trước có thiết kế hiện đại</li>\r\n<li>Khối lượng giặt 7.5 kg sử dụng tốt cho gia đình ít thành viên</li>\r\n<li>Tiết kiệm điện cùng công nghệ Inverter tiên tiến của Electrolux</li>\r\n<li>Bảng điều khiển có tiếng Việt và tiếng Anh cùng màn hình hiển thị</li>\r\n<li>Tốc độ vòng quay vắt 1000 vòng/phút</li>\r\n<li>Lồng giặt HIVE hình tổ ong bằng thép không gỉ có tuổi thọ cao</li>\r\n<li>Các chương trình giặt: Đồ cotton; Tổng hợp; Giặt nhanh 20\'; Giặt tấm trải giường; Đồ mỏng; Đồ len; Đồ em bé; Giặt Tiết Kiệm</li>\r\n</ul>', 'may-giat-electrolux-ewf10744', '', '', '', 'may-giat-electrolux-ewf10744'),
(34, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế hiện đại làm nổi bật lên không gian nội thất phòng bạn</li>\r\n<li>Tích hợp nhiều chế độ giặt</li>\r\n<li>Khối lượng giặt 7 kg phù hợp với gia đình 3-4 người</li>\r\n<li>Lồng giặt thép không gỉ đảm bảo vệ sinh quần áo</li>\r\n</ul>', 'may-giat-electrolux-ewf80743_9gsl-t3', '', '', '', 'may-giat-electrolux-ewf80743_9gsl-t3'),
(35, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Dung tích 88.6 lít dành cho người độc thân</li>\r\n<li>Đèn LED chiếu sang cho độ bền cao</li>\r\n<li>Thiết kế kệ tủ hiện đại, nhiều tiện ích</li>\r\n</ul>', 'TOSHIBA_GR-V906VN_thumb', '', '', '', 'toshiba_gr-v906vn_thumb'),
(36, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Dung tích nồi 171 lít</li>\r\n<li>Công nghệ Hybrid Bio</li>\r\n<li>Hoạt động rất êm ái</li>\r\n<li>Khử mùi và diệt khuẩn</li>\r\n<li>Làm lạnh, làm đá nhanh</li>\r\n</ul>', 'tu-lanh-toshiba-gr-s19vpp-2', '', '', '', 'tu-lanh-toshiba-gr-s19vpp-2'),
(37, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Tủ lạnh công nghệ Inverter tiết kiệm đến 36% năng lượng</li>\r\n<li>Luồng khí lạnh đa chiều cho thực phẩm lạnh đều mọi góc ngách</li>\r\n<li>Ngăn đựng rau quả lớn bảo quản được nhiều rau quả hơn</li>\r\n<li>Hệ thống đèn LED hình tháp chiếu sáng hơn nhưng vẫn tiết kiệm điện hơn</li>\r\n</ul>', 'tu-lanh-lg-gn-l205ps', '', '', '', 'tu-lanh-lg-gn-l205ps'),
(38, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Thiết kế hiện đại và sang trọng</li>\r\n<li>Hệ thống làm lạnh đa chiều giúp thực phẩm tươi ngon hơn</li>\r\n<li>Công nghệ Inverter hoạt động bền bỉ, tiết kiệm điện</li>\r\n<li>Ngăn rau quả rộng rãi</li>\r\n<li>Khay kệ dễ dàng di chuyển và sắp đặt lại</li>\r\n<li>Hệ thống đèn LED chiếu sáng thông minh</li>\r\n</ul>', 'tu-lanh-lg-gn-l333ps', '', '', '', 'tu-lanh-lg-gn-l333ps'),
(39, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Tủ lạnh Sharp SJ-16VF3 150 lít có thiết kế 2 cửa</li>\r\n<li>Dung tích 150 lít thích hợp cho 2 người dùng</li>\r\n<li>Là loại tủ lạnh không đóng tuyết</li>\r\n<li>Diệt khuẩn và khử mùi cùng phân tử Nano Ag+</li>\r\n<li>Làm đá nhanh chóng hơn</li>\r\n<li>Sử dụng hệ thống đèn LED chiếu sáng</li>\r\n</ul>', 'tu-lanh-sharp-sj-16vf3-cms-01', '', '', '', 'tu-lanh-sharp-sj-16vf3-cms-01'),
(40, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Tủ lạnh không đóng tuyết có thiết kế 2 cửa</li>\r\n<li>Dung tích chứa 150 lít</li>\r\n<li>Hệ thống làm lạnh gián tiếp</li>\r\n<li>Kháng khuẩn và khử mùi tối ưu</li>\r\n<li>Tính năng làm đá nhanh và hệ thống đèn LED</li>\r\n</ul>', 'tu-lanh-sharp-sj-16vf4-vms', '', '', '', 'tu-lanh-sharp-sj-16vf4-vms'),
(41, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Tủ lạnh 234 lít</li>\r\n<li>Công nghệ Mr.Coolpack</li>\r\n<li>Khử mùi, lọc không khí</li>\r\n<li>Dễ dàng tìm và lấy thực phẩm</li>\r\n<li>Duy trì độ ẩm tối ưu giúp bảo quản thực phẩm được tươi lâu hơn</li>\r\n</ul>', 'samsung-RT22FARBDSA', '', '', '', 'samsung-rt22farbdsa'),
(42, '', '<p>Thông tin</p>\r\n<ul>\r\n<li>Tủ lạnh 234 lít</li>\r\n<li>Công nghệ Mr.Coolpack</li>\r\n<li>Khử mùi, lọc không khí</li>\r\n<li>Dễ dàng tìm và lấy thực phẩm</li>\r\n<li>Duy trì độ ẩm tối ưu giúp bảo quản thực phẩm được tươi lâu hơn</li>\r\n</ul>', 'tu-lanh-samsung-rt20farwdsa', '', '', '', 'tu-lanh-samsung-rt20farwdsa');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_product_categories`
--

CREATE TABLE `dz8i1_virtuemart_product_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `dz8i1_virtuemart_product_categories`
--

INSERT INTO `dz8i1_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(13, 10, 7, 0),
(12, 9, 7, 0),
(11, 8, 7, 0),
(14, 11, 7, 0),
(15, 12, 7, 0),
(16, 13, 7, 0),
(17, 14, 7, 0),
(18, 15, 7, 0),
(19, 16, 34, 0),
(20, 17, 34, 0),
(21, 18, 34, 0),
(22, 19, 34, 0),
(23, 20, 34, 0),
(24, 21, 34, 0),
(25, 22, 34, 0),
(26, 23, 34, 0),
(27, 24, 21, 0),
(28, 25, 21, 0),
(29, 26, 21, 0),
(30, 27, 21, 0),
(31, 28, 21, 0),
(32, 29, 25, 0),
(33, 30, 25, 0),
(34, 31, 25, 0),
(35, 32, 25, 0),
(36, 33, 25, 0),
(37, 34, 25, 0),
(38, 35, 29, 0),
(39, 36, 29, 0),
(40, 37, 29, 0),
(41, 38, 29, 0),
(42, 39, 29, 0),
(43, 40, 29, 0),
(44, 41, 29, 0),
(45, 42, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_product_customfields`
--

CREATE TABLE `dz8i1_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) UNSIGNED NOT NULL COMMENT 'field id',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `override` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `customfield_params` text COMMENT 'PARAM FOR PLUGINS',
  `product_sku` varchar(64) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_product_manufacturers`
--

CREATE TABLE `dz8i1_virtuemart_product_manufacturers` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` int(1) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

--
-- Dumping data for table `dz8i1_virtuemart_product_manufacturers`
--

INSERT INTO `dz8i1_virtuemart_product_manufacturers` (`id`, `virtuemart_product_id`, `virtuemart_manufacturer_id`) VALUES
(1, 8, 19),
(2, 9, 19),
(3, 10, 3),
(4, 11, 3),
(5, 12, 7),
(6, 13, 7),
(7, 14, 9),
(8, 15, 9),
(9, 16, 4),
(10, 17, 4),
(11, 18, 11),
(12, 19, 11),
(13, 20, 12),
(14, 21, 12),
(15, 22, 8),
(16, 23, 8),
(17, 24, 13),
(18, 25, 13),
(19, 26, 14),
(20, 27, 15),
(21, 28, 15),
(22, 29, 10),
(23, 30, 10),
(24, 31, 5),
(25, 32, 5),
(26, 33, 16),
(27, 34, 16),
(28, 35, 17),
(29, 36, 17),
(30, 37, 2),
(31, 38, 2),
(32, 39, 18),
(33, 40, 18),
(34, 41, 6),
(35, 42, 6);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_product_medias`
--

CREATE TABLE `dz8i1_virtuemart_product_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_product_medias`
--

INSERT INTO `dz8i1_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(8, 8, 7, 1),
(9, 9, 8, 1),
(10, 10, 9, 1),
(11, 11, 10, 1),
(12, 12, 11, 1),
(13, 13, 12, 1),
(14, 14, 13, 1),
(15, 15, 14, 1),
(16, 16, 15, 1),
(17, 17, 16, 1),
(18, 18, 17, 1),
(19, 19, 18, 1),
(20, 20, 19, 1),
(21, 21, 20, 1),
(22, 22, 21, 1),
(23, 23, 22, 1),
(24, 24, 23, 1),
(25, 25, 24, 1),
(26, 26, 25, 1),
(27, 27, 26, 1),
(28, 28, 27, 1),
(29, 29, 28, 1),
(30, 30, 29, 1),
(31, 31, 30, 1),
(32, 32, 31, 1),
(33, 33, 32, 1),
(34, 34, 33, 1),
(35, 35, 34, 1),
(36, 36, 35, 1),
(37, 37, 36, 1),
(38, 38, 37, 1),
(39, 39, 38, 1),
(40, 40, 39, 1),
(41, 41, 40, 1),
(42, 42, 41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_product_prices`
--

CREATE TABLE `dz8i1_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_price_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_quantity_start` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `price_quantity_end` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';

--
-- Dumping data for table `dz8i1_virtuemart_product_prices`
--

INSERT INTO `dz8i1_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(8, 8, 0, '7000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:47:47', 295, '2017-04-19 14:47:47', 295, '0000-00-00 00:00:00', 0),
(9, 9, 0, '6500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:49:25', 295, '2017-04-19 14:49:25', 295, '0000-00-00 00:00:00', 0),
(10, 10, 0, '8500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:53:05', 295, '2017-04-19 14:53:15', 295, '0000-00-00 00:00:00', 0),
(11, 11, 0, '50000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:54:49', 295, '2017-04-19 14:54:49', 295, '0000-00-00 00:00:00', 0),
(12, 13, 0, '7300000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:57:15', 295, '2017-04-19 14:57:15', 295, '0000-00-00 00:00:00', 0),
(13, 14, 0, '6800000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:58:32', 295, '2017-04-19 14:58:32', 295, '0000-00-00 00:00:00', 0),
(14, 15, 0, '9000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 14:59:59', 295, '2017-04-19 14:59:59', 295, '0000-00-00 00:00:00', 0),
(15, 17, 0, '5500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:43:09', 295, '2017-04-19 15:43:09', 295, '0000-00-00 00:00:00', 0),
(16, 16, 0, '3000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:43:23', 295, '2017-04-19 15:43:23', 295, '0000-00-00 00:00:00', 0),
(17, 18, 0, '15000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:45:55', 295, '2017-04-19 15:45:55', 295, '0000-00-00 00:00:00', 0),
(18, 19, 0, '170000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:47:05', 295, '2017-04-19 15:47:05', 295, '0000-00-00 00:00:00', 0),
(19, 20, 0, '5800000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:50:11', 295, '2017-04-19 15:50:11', 295, '0000-00-00 00:00:00', 0),
(20, 21, 0, '3600000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:51:18', 295, '2017-04-19 15:51:18', 295, '0000-00-00 00:00:00', 0),
(21, 22, 0, '2000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:52:30', 295, '2017-04-19 15:52:30', 295, '0000-00-00 00:00:00', 0),
(22, 23, 0, '7000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 15:53:23', 295, '2017-04-19 15:53:23', 295, '0000-00-00 00:00:00', 0),
(23, 24, 0, '50000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:12:20', 295, '2017-04-19 16:12:20', 295, '0000-00-00 00:00:00', 0),
(24, 25, 0, '2000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:13:22', 295, '2017-04-19 16:13:22', 295, '0000-00-00 00:00:00', 0),
(25, 26, 0, '500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:14:44', 295, '2017-04-19 16:16:00', 295, '0000-00-00 00:00:00', 0),
(26, 27, 0, '3400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:16:54', 295, '2017-04-19 16:16:54', 295, '0000-00-00 00:00:00', 0),
(27, 28, 0, '6000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:17:46', 295, '2017-04-19 16:17:46', 295, '0000-00-00 00:00:00', 0),
(28, 29, 0, '5800000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:22:18', 295, '2017-04-19 16:22:18', 295, '0000-00-00 00:00:00', 0),
(29, 30, 0, '1500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:23:04', 295, '2017-04-19 16:23:04', 295, '0000-00-00 00:00:00', 0),
(30, 31, 0, '4500000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:24:10', 295, '2017-04-19 16:24:10', 295, '0000-00-00 00:00:00', 0),
(31, 32, 0, '30000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:25:02', 295, '2017-04-19 16:25:02', 295, '0000-00-00 00:00:00', 0),
(32, 33, 0, '1200000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:26:19', 295, '2017-04-19 16:26:19', 295, '0000-00-00 00:00:00', 0),
(33, 34, 0, '4400000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:27:56', 295, '2017-04-19 16:27:56', 295, '0000-00-00 00:00:00', 0),
(34, 35, 0, '2000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:43:57', 295, '2017-04-19 16:43:57', 295, '0000-00-00 00:00:00', 0),
(35, 36, 0, '3200000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:45:03', 295, '2017-04-19 16:45:03', 295, '0000-00-00 00:00:00', 0),
(36, 37, 0, '1900000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:46:20', 295, '2017-04-19 16:46:20', 295, '0000-00-00 00:00:00', 0),
(37, 38, 0, '900000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:47:08', 295, '2017-04-19 16:47:08', 295, '0000-00-00 00:00:00', 0),
(38, 39, 0, '50000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:48:07', 295, '2017-04-19 16:48:07', 295, '0000-00-00 00:00:00', 0),
(39, 40, 0, '4000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:49:27', 295, '2017-04-19 16:49:27', 295, '0000-00-00 00:00:00', 0),
(40, 41, 0, '1000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:50:48', 295, '2017-04-19 16:50:48', 295, '0000-00-00 00:00:00', 0),
(41, 42, 0, '4000000.000000', 0, '0.00000', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2017-04-19 16:51:45', 295, '2017-04-19 16:51:45', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_product_shoppergroups`
--

CREATE TABLE `dz8i1_virtuemart_product_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_ratings`
--

CREATE TABLE `dz8i1_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `rates` int(1) NOT NULL DEFAULT '0',
  `ratingcount` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_rating_reviews`
--

CREATE TABLE `dz8i1_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_rating_vote_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `comment` varchar(15359) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `customer` varchar(128) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_rating_votes`
--

CREATE TABLE `dz8i1_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_shipmentmethods`
--

CREATE TABLE `dz8i1_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `shipment_element` varchar(50) NOT NULL DEFAULT '',
  `shipment_params` text,
  `currency_id` int(1) UNSIGNED DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';

--
-- Dumping data for table `dz8i1_virtuemart_shipmentmethods`
--

INSERT INTO `dz8i1_virtuemart_shipmentmethods` (`virtuemart_shipmentmethod_id`, `virtuemart_vendor_id`, `shipment_jplugin_id`, `shipment_element`, `shipment_params`, `currency_id`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10029, 'weight_countries', 'shipment_logos=\"\"|show_on_pdetails=\"0\"|categories=[\n    \"21\",\n    \"34\",\n    \"25\",\n    \"7\",\n    \"29\"\n]|blocking_categories=\"\"|countries=[\n    \"230\"\n]|zip_start=\"\"|zip_stop=\"\"|weight_start=\"\"|weight_stop=\"\"|weight_unit=\"KG\"|nbproducts_start=1|nbproducts_stop=4|orderamount_start=\"500000\"|orderamount_stop=\"20000000\"|shipment_cost=\"50000\"|package_fee=\"10000\"|tax_id=\"-1\"|free_shipment=\"\"|', 147, 0, 0, 1, '2017-04-20 02:38:06', 295, '2017-04-20 02:48:16', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_shipmentmethods_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_shipmentmethods_en_gb` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_shipmentmethods_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_shipmentmethods_vi_vn` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `shipment_name` varchar(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_shipmentmethods_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_shipmentmethods_vi_vn` (`virtuemart_shipmentmethod_id`, `shipment_name`, `shipment_desc`, `slug`) VALUES
(1, 'Giao qua bưu điện', 'Giao tận nhà nhanh', 'giao-tận-nhà-nhanh');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_shipmentmethod_shoppergroups`
--

CREATE TABLE `dz8i1_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';

--
-- Dumping data for table `dz8i1_virtuemart_shipmentmethod_shoppergroups`
--

INSERT INTO `dz8i1_virtuemart_shipmentmethod_shoppergroups` (`id`, `virtuemart_shipmentmethod_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_shipment_plg_weight_countries`
--

CREATE TABLE `dz8i1_virtuemart_shipment_plg_weight_countries` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(11) UNSIGNED DEFAULT NULL,
  `order_number` char(32) DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `shipment_name` varchar(5000) DEFAULT NULL,
  `order_weight` decimal(10,4) DEFAULT NULL,
  `shipment_weight_unit` char(3) DEFAULT 'KG',
  `shipment_cost` decimal(10,2) DEFAULT NULL,
  `shipment_package_fee` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_shipment_plg_weight_countries`
--

INSERT INTO `dz8i1_virtuemart_shipment_plg_weight_countries` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_shipmentmethod_id`, `shipment_name`, `order_weight`, `shipment_weight_unit`, `shipment_cost`, `shipment_package_fee`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '9WQT03', 1, '<span class=\"vmshipment_name\">Giao qua bưu điện</span><span class=\"vmshipment_description\">Giao tận nhà nhanh</span>', '0.0000', 'KG', '50000.00', '10000.00', -1, '2017-04-20 03:33:21', 300, '2017-04-20 03:33:21', 300, '0000-00-00 00:00:00', 0),
(2, 2, '1TVK04', 1, '<span class=\"vmshipment_name\">Giao qua bưu điện</span><span class=\"vmshipment_description\">Giao tận nhà nhanh</span>', '0.0000', 'KG', '50000.00', '10000.00', -1, '2017-04-20 03:52:07', 300, '2017-04-20 03:52:07', 300, '0000-00-00 00:00:00', 0),
(3, 3, 'KL3S05', 1, '<span class=\"vmshipment_name\">Giao qua bưu điện</span><span class=\"vmshipment_description\">Giao tận nhà nhanh</span>', '0.0000', 'KG', '50000.00', '10000.00', -1, '2017-04-20 06:07:22', 311, '2017-04-20 06:07:22', 311, '0000-00-00 00:00:00', 0),
(4, 4, 'PCVP06', 1, '<span class=\"vmshipment_name\">Giao qua bưu điện</span><span class=\"vmshipment_description\">Giao tận nhà nhanh</span>', '0.0000', 'KG', '50000.00', '10000.00', -1, '2017-04-21 04:37:15', 295, '2017-04-21 04:37:15', 295, '0000-00-00 00:00:00', 0),
(5, 5, 'DK5J07', 1, '<span class=\"vmshipment_name\">Giao qua bưu điện</span><span class=\"vmshipment_description\">Giao tận nhà nhanh</span>', '0.0000', 'KG', '50000.00', '10000.00', -1, '2017-04-24 04:43:02', 316, '2017-04-24 04:43:02', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_shoppergroups`
--

CREATE TABLE `dz8i1_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `shopper_group_name` varchar(128) DEFAULT NULL,
  `shopper_group_desc` varchar(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

--
-- Dumping data for table `dz8i1_virtuemart_shoppergroups`
--

INSERT INTO `dz8i1_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT', 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_TIP', 0, '', 1, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(1, 1, 'COM_VIRTUEMART_SHOPPERGROUP_GUEST', 'COM_VIRTUEMART_SHOPPERGROUP_GUEST_TIP', 0, '', 2, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_states`
--

CREATE TABLE `dz8i1_virtuemart_states` (
  `virtuemart_state_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_worldzone_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

--
-- Dumping data for table `dz8i1_virtuemart_states`
--

INSERT INTO `dz8i1_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(255, 1, 105, 0, 'L\'Aquila', 'AQU', 'AQ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(318, 1, 105, 0, 'Vibo Valenzia', 'VIV', 'VV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `dz8i1_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 3, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 5, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 7, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 9, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 11, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 15, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 17, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 19, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 21, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 23, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 25, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 27, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 29, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 31, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 33, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 35, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 37, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 39, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 41, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 43, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 45, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 47, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 48, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 49, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 50, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 51, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 52, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 53, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 54, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 55, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 56, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 57, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 58, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 59, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 60, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 61, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 62, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 63, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 64, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 65, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 66, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 67, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 68, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 69, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 70, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 71, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 72, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 73, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 74, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 75, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 76, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 77, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 78, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 79, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 80, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 81, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 82, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 83, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(730, 1, 150, 0, 'Drenthe', 'DR', 'DR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(731, 1, 150, 0, 'Flevoland', 'FLV', 'FL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(732, 1, 150, 0, 'Friesland', 'FR', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(733, 1, 150, 0, 'Gelderland', 'GLD', 'GL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(734, 1, 150, 0, 'Groningen', 'GR', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(735, 1, 150, 0, 'Limburg', 'LB', 'LB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(736, 1, 150, 0, 'Noord-Brabant', 'NB', 'NB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(737, 1, 150, 0, 'Noord-Holland', 'NH', 'NH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(738, 1, 150, 0, 'Overijssel', 'OVR', 'OV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(739, 1, 150, 0, 'Utrecht', 'UT', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(740, 1, 150, 0, 'Zuid-Holland', 'ZH', 'ZH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(741, 1, 150, 0, 'Zeeland', 'ZL', 'ZL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(742, 1, 21, 0, 'Antwerpen', 'ant', 'AW', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(743, 1, 21, 0, 'Limburg', 'lim', 'LI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(744, 1, 21, 0, 'Oost-Vlaanderen', 'ov', 'OV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(745, 1, 21, 0, 'Vlaams-Brabant', 'vb', 'VB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(746, 1, 21, 0, 'West-Vlaanderen', 'wv', 'WV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(747, 1, 21, 0, 'Waals-Brabant (Brabant wallon)', 'wb', 'WB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(748, 1, 21, 0, 'Henegouwen (Hainaut),', 'he', 'HE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(749, 1, 21, 0, 'Luik (Liège/Lüttich)', 'lui', 'LU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(750, 1, 21, 0, 'Luxemburg (Luxembourg)', 'lux', 'LX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_userfields`
--

CREATE TABLE `dz8i1_virtuemart_userfields` (
  `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` varchar(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `default` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `cart` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `userfield_params` varchar(12287) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';

--
-- Dumping data for table `dz8i1_virtuemart_userfields`
--

INSERT INTO `dz8i1_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 0, 0, 'email', 'COM_VIRTUEMART_REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 0, 0, 'name', 'COM_VIRTUEMART_USER_DISPLAYED_NAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 0, 0, 'username', 'COM_VIRTUEMART_USERNAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 0, 0, 'password', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 0, 0, 'password2', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 0, 0, 'tos', 'COM_VIRTUEMART_STORE_FORM_TOS', '', 'custom', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 0, 0, 'customer_note', 'COM_VIRTUEMART_CNOTES_CART', '', 'textarea', 2500, NULL, 0, 60, 1, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, NULL, NULL, NULL, 'COM_VIRTUEMART_USER_FORM_ST_LABEL', 0, 1, 0, 0, 0, 0, 1, '', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 0, 0, 'company', 'COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 0, 0, 'title', 'COM_VIRTUEMART_SHOPPER_FORM_TITLE', '', 'select', 0, 210, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 0, 0, 'first_name', 'COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 0, 0, 'middle_name', 'COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 0, 0, 'last_name', 'COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 0, 0, 'address_1', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 0, 0, 'address_2', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 0, 0, 'zip', 'COM_VIRTUEMART_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 0, 0, 'city', 'COM_VIRTUEMART_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 0, 0, 'virtuemart_country_id', 'COM_VIRTUEMART_SHOPPER_FORM_COUNTRY', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 0, 0, 'virtuemart_state_id', 'COM_VIRTUEMART_SHOPPER_FORM_STATE', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 0, 0, 'phone_1', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 0, 0, 'phone_2', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 0, 0, 'fax', 'COM_VIRTUEMART_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 0, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 0, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 0, 0, 'tax_exemption_number', 'COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR', 'Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.', 'text', 10, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 48, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 0, 0, 'tax_usage_type', 'COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE', 'Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.', 'select', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 50, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_userfield_values`
--

CREATE TABLE `dz8i1_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';

--
-- Dumping data for table `dz8i1_virtuemart_userfield_values`
--

INSERT INTO `dz8i1_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MR', 'Mr', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MRS', 'Mrs', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 51, 'None', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 51, 'Non-resident (Canada)', 'R', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 51, 'Federal government (United States)', 'A', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 51, 'State government (United States)', 'B', 0, 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 51, 'Tribe / Status Indian / Indian Band (both)', 'C', 0, 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 51, 'Foreign diplomat (both)', 'D', 0, 4, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 51, 'Charitable or benevolent org (both)', 'E', 0, 5, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 51, 'Religious or educational org (both)', 'F', 0, 6, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 51, 'Resale (both)', 'G', 0, 7, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 51, 'Commercial agricultural production (both)', 'H', 0, 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 51, 'Industrial production / manufacturer (both)', 'I', 0, 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 51, 'Direct pay permit (United States)', 'J', 0, 10, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 51, 'Direct mail (United States)', 'K', 0, 11, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 51, 'Other (both)', 'L', 0, 12, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 51, 'Local government (United States)', 'N', 0, 13, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 51, 'Commercial aquaculture (Canada)', 'P', 0, 14, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 51, 'Commercial Fishery (Canada)', 'Q', 0, 15, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_userinfos`
--

CREATE TABLE `dz8i1_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` char(32) NOT NULL DEFAULT '',
  `name` char(64) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `zip` char(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(2500) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `dz8i1_virtuemart_userinfos`
--

INSERT INTO `dz8i1_virtuemart_userinfos` (`virtuemart_userinfo_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 295, 'BT', '', 'Super User', 'cong ty dien may', 'Mr', 'cuong', 'truong', 'quoc', '2324', '234', '234', '256 nguyễn hữu thọ', '', 'hcm', 0, 230, '800000', 0, 0, '', '2017-04-17 07:45:52', 295, '2017-04-21 04:37:00', 295, '0000-00-00 00:00:00', 0),
(2, 300, 'ST', 'ádf', NULL, 'adsf', NULL, 'adsf', 'ádf', 'adsf', 'adsf', 'adsf', 'adsf', 'ádf', 'ádsf', 'adsf', 0, 204, 'ádf', 0, 0, '', '2017-04-20 03:31:32', 300, '2017-04-20 03:31:32', 300, '0000-00-00 00:00:00', 0),
(3, 300, 'BT', '', 'huy', 'dsfs', 'Mr', 'dsf', 'sdaf', 'sdaf', 'ádf', 'sdaf', 'dsfdsf', 'adsf', 'dsf', 'sadf', 0, 230, 'sdf', 0, 0, '', '2017-04-20 03:32:09', 300, '2017-04-20 03:32:33', 300, '0000-00-00 00:00:00', 0),
(4, 311, 'BT', '', 'huyy', 'd', '', 'd', 'd', 'd', '423432', '324', '', 'đ', 'd', 'd', 0, 230, 'd', 0, 0, '', '2017-04-20 06:07:15', 311, '2017-04-20 06:07:15', 311, '0000-00-00 00:00:00', 0),
(5, 316, 'BT', '', 'hien', 'd', '', 'sdaf', 'sdf', 'sdfsdf', 'sadfsw', 'dsf', 'xvd', 'sdf', 'sdf', 'sdf', 0, 230, 'sdf', 0, 0, '', '2017-04-24 04:42:53', 316, '2017-04-24 04:42:53', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vendors`
--

CREATE TABLE `dz8i1_virtuemart_vendors` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_name` varchar(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(14335) NOT NULL DEFAULT '',
  `metarobot` varchar(20) DEFAULT NULL,
  `metaauthor` varchar(64) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';

--
-- Dumping data for table `dz8i1_virtuemart_vendors`
--

INSERT INTO `dz8i1_virtuemart_vendors` (`virtuemart_vendor_id`, `vendor_name`, `vendor_currency`, `vendor_accepted_currencies`, `vendor_params`, `metarobot`, `metaauthor`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'shop dien may', 147, '', 'max_cats_per_product=-1|vendor_min_pov=\"0\"|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=\"\"|vendor_date_format=\"\"|vendor_letter_format=\"A4\"|vendor_letter_orientation=\"P\"|vendor_letter_margin_top=\"55\"|vendor_letter_margin_left=\"25\"|vendor_letter_margin_right=\"25\"|vendor_letter_margin_bottom=\"25\"|vendor_letter_margin_header=\"20\"|vendor_letter_margin_footer=\"20\"|vendor_letter_font=\"helvetica\"|vendor_letter_font_size=\"8\"|vendor_letter_header_font_size=\"7\"|vendor_letter_footer_font_size=\"6\"|vendor_letter_header=\"1\"|vendor_letter_header_line=\"1\"|vendor_letter_header_line_color=\"#000000\"|vendor_letter_header_image=\"1\"|vendor_letter_header_imagesize=\"60\"|vendor_letter_header_cell_height_ratio=\"1\"|vendor_letter_footer=\"1\"|vendor_letter_footer_line=\"1\"|vendor_letter_footer_line_color=\"#000000\"|vendor_letter_footer_cell_height_ratio=\"1\"|vendor_letter_add_tos=\"0\"|vendor_letter_add_tos_newpage=\"1\"|vendor_letter_for_product_pdf=\"0\"|vendor_mail_width=640|vendor_mail_header=1|vendor_mail_tos=1|vendor_mail_logo=1|vendor_mail_logo_width=200|vendor_mail_font=\"helvetica\"|vendor_mail_header_font_size=11|vendor_mail_font_size=12|vendor_mail_footer_font_size=10|', '', '', '0000-00-00 00:00:00', 0, '2017-04-17 16:17:51', 295, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vendors_en_gb`
--

CREATE TABLE `dz8i1_virtuemart_vendors_en_gb` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_css` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vendors_vi_vn`
--

CREATE TABLE `dz8i1_virtuemart_vendors_vi_vn` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` varchar(180) NOT NULL DEFAULT '',
  `vendor_phone` varchar(26) NOT NULL DEFAULT '',
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_css` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dz8i1_virtuemart_vendors_vi_vn`
--

INSERT INTO `dz8i1_virtuemart_vendors_vi_vn` (`virtuemart_vendor_id`, `vendor_store_desc`, `vendor_terms_of_service`, `vendor_legal_info`, `vendor_letter_css`, `vendor_letter_header_html`, `vendor_letter_footer_html`, `vendor_store_name`, `vendor_phone`, `vendor_url`, `metadesc`, `metakey`, `customtitle`, `vendor_invoice_free1`, `vendor_invoice_free2`, `vendor_mail_free1`, `vendor_mail_free2`, `vendor_mail_css`, `slug`) VALUES
(1, '', '', '', '', '', '', 'shop dien may', '', '', '', '', '', '', '', '', '', '', 'shop-dien-may');

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vendor_medias`
--

CREATE TABLE `dz8i1_virtuemart_vendor_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vendor_users`
--

CREATE TABLE `dz8i1_virtuemart_vendor_users` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vmusers`
--

CREATE TABLE `dz8i1_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` varchar(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';

--
-- Dumping data for table `dz8i1_virtuemart_vmusers`
--

INSERT INTO `dz8i1_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(295, 1, 1, 'AD21232f297', 0, 0, 0, '2017-04-17 07:45:52', 295, '2017-04-21 04:37:00', 295, '0000-00-00 00:00:00', 0),
(300, 0, 0, 'HU11967d5', 0, 0, 0, '2017-04-20 03:32:33', 300, '2017-04-20 03:32:33', 300, '0000-00-00 00:00:00', 0),
(311, 0, 0, 'HU4cd079b', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-04-20 06:07:15', 311, '0000-00-00 00:00:00', 0),
(316, 0, 0, 'HI380a767', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-04-24 04:42:53', 316, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_vmuser_shoppergroups`
--

CREATE TABLE `dz8i1_virtuemart_vmuser_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';

--
-- Dumping data for table `dz8i1_virtuemart_vmuser_shoppergroups`
--

INSERT INTO `dz8i1_virtuemart_vmuser_shoppergroups` (`id`, `virtuemart_user_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 295, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_waitingusers`
--

CREATE TABLE `dz8i1_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Table structure for table `dz8i1_virtuemart_worldzones`
--

CREATE TABLE `dz8i1_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED DEFAULT NULL,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(14335) DEFAULT NULL,
  `zone_tax_rate` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dz8i1_assets`
--
ALTER TABLE `dz8i1_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `dz8i1_associations`
--
ALTER TABLE `dz8i1_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `dz8i1_banners`
--
ALTER TABLE `dz8i1_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `dz8i1_banner_clients`
--
ALTER TABLE `dz8i1_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `dz8i1_banner_tracks`
--
ALTER TABLE `dz8i1_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `dz8i1_categories`
--
ALTER TABLE `dz8i1_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `dz8i1_contact_details`
--
ALTER TABLE `dz8i1_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `dz8i1_content`
--
ALTER TABLE `dz8i1_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `dz8i1_contentitem_tag_map`
--
ALTER TABLE `dz8i1_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `dz8i1_content_frontpage`
--
ALTER TABLE `dz8i1_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `dz8i1_content_rating`
--
ALTER TABLE `dz8i1_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `dz8i1_content_types`
--
ALTER TABLE `dz8i1_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `dz8i1_djimageslider`
--
ALTER TABLE `dz8i1_djimageslider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`);

--
-- Indexes for table `dz8i1_extensions`
--
ALTER TABLE `dz8i1_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `dz8i1_finder_filters`
--
ALTER TABLE `dz8i1_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `dz8i1_finder_links`
--
ALTER TABLE `dz8i1_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `dz8i1_finder_links_terms0`
--
ALTER TABLE `dz8i1_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms1`
--
ALTER TABLE `dz8i1_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms2`
--
ALTER TABLE `dz8i1_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms3`
--
ALTER TABLE `dz8i1_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms4`
--
ALTER TABLE `dz8i1_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms5`
--
ALTER TABLE `dz8i1_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms6`
--
ALTER TABLE `dz8i1_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms7`
--
ALTER TABLE `dz8i1_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms8`
--
ALTER TABLE `dz8i1_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_terms9`
--
ALTER TABLE `dz8i1_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_termsa`
--
ALTER TABLE `dz8i1_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_termsb`
--
ALTER TABLE `dz8i1_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_termsc`
--
ALTER TABLE `dz8i1_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_termsd`
--
ALTER TABLE `dz8i1_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_termse`
--
ALTER TABLE `dz8i1_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_links_termsf`
--
ALTER TABLE `dz8i1_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `dz8i1_finder_taxonomy`
--
ALTER TABLE `dz8i1_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `dz8i1_finder_taxonomy_map`
--
ALTER TABLE `dz8i1_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `dz8i1_finder_terms`
--
ALTER TABLE `dz8i1_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `dz8i1_finder_terms_common`
--
ALTER TABLE `dz8i1_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `dz8i1_finder_tokens`
--
ALTER TABLE `dz8i1_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `dz8i1_finder_tokens_aggregate`
--
ALTER TABLE `dz8i1_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `dz8i1_finder_types`
--
ALTER TABLE `dz8i1_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `dz8i1_languages`
--
ALTER TABLE `dz8i1_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `dz8i1_menu`
--
ALTER TABLE `dz8i1_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `dz8i1_menu_types`
--
ALTER TABLE `dz8i1_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `dz8i1_messages`
--
ALTER TABLE `dz8i1_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `dz8i1_messages_cfg`
--
ALTER TABLE `dz8i1_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `dz8i1_modules`
--
ALTER TABLE `dz8i1_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `dz8i1_modules_menu`
--
ALTER TABLE `dz8i1_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `dz8i1_newsfeeds`
--
ALTER TABLE `dz8i1_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `dz8i1_overrider`
--
ALTER TABLE `dz8i1_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dz8i1_postinstall_messages`
--
ALTER TABLE `dz8i1_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `dz8i1_redirect_links`
--
ALTER TABLE `dz8i1_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `dz8i1_schemas`
--
ALTER TABLE `dz8i1_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `dz8i1_session`
--
ALTER TABLE `dz8i1_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `dz8i1_tags`
--
ALTER TABLE `dz8i1_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `dz8i1_template_styles`
--
ALTER TABLE `dz8i1_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `dz8i1_ucm_base`
--
ALTER TABLE `dz8i1_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `dz8i1_ucm_content`
--
ALTER TABLE `dz8i1_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `dz8i1_ucm_history`
--
ALTER TABLE `dz8i1_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `dz8i1_updates`
--
ALTER TABLE `dz8i1_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `dz8i1_update_sites`
--
ALTER TABLE `dz8i1_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `dz8i1_update_sites_extensions`
--
ALTER TABLE `dz8i1_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `dz8i1_usergroups`
--
ALTER TABLE `dz8i1_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `dz8i1_users`
--
ALTER TABLE `dz8i1_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `dz8i1_user_keys`
--
ALTER TABLE `dz8i1_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `dz8i1_user_notes`
--
ALTER TABLE `dz8i1_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `dz8i1_user_profiles`
--
ALTER TABLE `dz8i1_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `dz8i1_user_usergroup_map`
--
ALTER TABLE `dz8i1_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `dz8i1_viewlevels`
--
ALTER TABLE `dz8i1_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `dz8i1_virtuemart_adminmenuentries`
--
ALTER TABLE `dz8i1_virtuemart_adminmenuentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_calcs`
--
ALTER TABLE `dz8i1_virtuemart_calcs`
  ADD PRIMARY KEY (`virtuemart_calc_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `calc_kind` (`calc_kind`),
  ADD KEY `shared` (`shared`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `publish_down` (`publish_down`);

--
-- Indexes for table `dz8i1_virtuemart_calc_categories`
--
ALTER TABLE `dz8i1_virtuemart_calc_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`);

--
-- Indexes for table `dz8i1_virtuemart_calc_countries`
--
ALTER TABLE `dz8i1_virtuemart_calc_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`);

--
-- Indexes for table `dz8i1_virtuemart_calc_manufacturers`
--
ALTER TABLE `dz8i1_virtuemart_calc_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `dz8i1_virtuemart_calc_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_calc_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `dz8i1_virtuemart_calc_states`
--
ALTER TABLE `dz8i1_virtuemart_calc_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`);

--
-- Indexes for table `dz8i1_virtuemart_carts`
--
ALTER TABLE `dz8i1_virtuemart_carts`
  ADD PRIMARY KEY (`virtuemart_cart_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`);

--
-- Indexes for table `dz8i1_virtuemart_categories`
--
ALTER TABLE `dz8i1_virtuemart_categories`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `shared` (`shared`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_categories_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_categories_en_gb`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_categories_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_categories_vi_vn`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_category_categories`
--
ALTER TABLE `dz8i1_virtuemart_category_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`),
  ADD KEY `category_child_id` (`category_child_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_category_medias`
--
ALTER TABLE `dz8i1_virtuemart_category_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  ADD KEY `ordering` (`virtuemart_category_id`,`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_configs`
--
ALTER TABLE `dz8i1_virtuemart_configs`
  ADD PRIMARY KEY (`virtuemart_config_id`);

--
-- Indexes for table `dz8i1_virtuemart_countries`
--
ALTER TABLE `dz8i1_virtuemart_countries`
  ADD PRIMARY KEY (`virtuemart_country_id`),
  ADD KEY `country_3_code` (`country_3_code`),
  ADD KEY `country_2_code` (`country_2_code`),
  ADD KEY `country_name` (`country_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_coupons`
--
ALTER TABLE `dz8i1_virtuemart_coupons`
  ADD PRIMARY KEY (`virtuemart_coupon_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `coupon_type` (`coupon_type`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_currencies`
--
ALTER TABLE `dz8i1_virtuemart_currencies`
  ADD PRIMARY KEY (`virtuemart_currency_id`),
  ADD UNIQUE KEY `currency_code_3` (`currency_code_3`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `currency_name` (`currency_name`),
  ADD KEY `published` (`published`),
  ADD KEY `shared` (`shared`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `currency_numeric_code` (`currency_numeric_code`);

--
-- Indexes for table `dz8i1_virtuemart_customs`
--
ALTER TABLE `dz8i1_virtuemart_customs`
  ADD PRIMARY KEY (`virtuemart_custom_id`),
  ADD KEY `custom_parent_id` (`custom_parent_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `custom_element` (`custom_element`),
  ADD KEY `field_type` (`field_type`),
  ADD KEY `is_cart_attribute` (`is_cart_attribute`),
  ADD KEY `is_input` (`is_input`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `searchable` (`searchable`);

--
-- Indexes for table `dz8i1_virtuemart_invoices`
--
ALTER TABLE `dz8i1_virtuemart_invoices`
  ADD PRIMARY KEY (`virtuemart_invoice_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturercategories`
--
ALTER TABLE `dz8i1_virtuemart_manufacturercategories`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturercategories_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_manufacturercategories_en_gb`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturercategories_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_manufacturercategories_vi_vn`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturers`
--
ALTER TABLE `dz8i1_virtuemart_manufacturers`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturers_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_manufacturers_en_gb`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturers_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_manufacturers_vi_vn`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_manufacturer_medias`
--
ALTER TABLE `dz8i1_virtuemart_manufacturer_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_medias`
--
ALTER TABLE `dz8i1_virtuemart_medias`
  ADD PRIMARY KEY (`virtuemart_media_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `file_type` (`file_type`),
  ADD KEY `shared` (`shared`);

--
-- Indexes for table `dz8i1_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `dz8i1_virtuemart_migration_oldtonew_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dz8i1_virtuemart_modules`
--
ALTER TABLE `dz8i1_virtuemart_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `module_name` (`module_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_orders`
--
ALTER TABLE `dz8i1_virtuemart_orders`
  ADD PRIMARY KEY (`virtuemart_order_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  ADD KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`),
  ADD KEY `created_on` (`created_on`);

--
-- Indexes for table `dz8i1_virtuemart_orderstates`
--
ALTER TABLE `dz8i1_virtuemart_orderstates`
  ADD PRIMARY KEY (`virtuemart_orderstate_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_order_calc_rules`
--
ALTER TABLE `dz8i1_virtuemart_order_calc_rules`
  ADD PRIMARY KEY (`virtuemart_order_calc_rule_id`),
  ADD KEY `virtuemart_calc_id` (`virtuemart_calc_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `dz8i1_virtuemart_order_histories`
--
ALTER TABLE `dz8i1_virtuemart_order_histories`
  ADD PRIMARY KEY (`virtuemart_order_history_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`);

--
-- Indexes for table `dz8i1_virtuemart_order_items`
--
ALTER TABLE `dz8i1_virtuemart_order_items`
  ADD PRIMARY KEY (`virtuemart_order_item_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `order_status` (`order_status`);

--
-- Indexes for table `dz8i1_virtuemart_order_userinfos`
--
ALTER TABLE `dz8i1_virtuemart_order_userinfos`
  ADD PRIMARY KEY (`virtuemart_order_userinfo_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  ADD KEY `address_type` (`address_type`);

--
-- Indexes for table `dz8i1_virtuemart_paymentmethods`
--
ALTER TABLE `dz8i1_virtuemart_paymentmethods`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD KEY `payment_jplugin_id` (`payment_jplugin_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `dz8i1_virtuemart_paymentmethods_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_paymentmethods_en_gb`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_paymentmethods_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_paymentmethods_vi_vn`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_paymentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `dz8i1_virtuemart_payment_plg_paypal`
--
ALTER TABLE `dz8i1_virtuemart_payment_plg_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dz8i1_virtuemart_products`
--
ALTER TABLE `dz8i1_virtuemart_products`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `product_parent_id` (`product_parent_id`),
  ADD KEY `product_special` (`product_special`),
  ADD KEY `published` (`published`),
  ADD KEY `pordering` (`pordering`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `modified_on` (`modified_on`),
  ADD KEY `product_discontinued` (`product_discontinued`),
  ADD KEY `product_in_stock` (`product_in_stock`),
  ADD KEY `product_ordered` (`product_ordered`);

--
-- Indexes for table `dz8i1_virtuemart_products_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_products_en_gb`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_products_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_products_vi_vn`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_product_categories`
--
ALTER TABLE `dz8i1_virtuemart_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_product_customfields`
--
ALTER TABLE `dz8i1_virtuemart_product_customfields`
  ADD PRIMARY KEY (`virtuemart_customfield_id`),
  ADD KEY `virtuemart_custom_id` (`virtuemart_custom_id`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_product_manufacturers`
--
ALTER TABLE `dz8i1_virtuemart_product_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `dz8i1_virtuemart_product_medias`
--
ALTER TABLE `dz8i1_virtuemart_product_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  ADD KEY `virtuemart_media_id` (`virtuemart_media_id`),
  ADD KEY `ordering` (`virtuemart_product_id`,`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_product_prices`
--
ALTER TABLE `dz8i1_virtuemart_product_prices`
  ADD PRIMARY KEY (`virtuemart_product_price_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`),
  ADD KEY `product_price_publish_up` (`product_price_publish_up`),
  ADD KEY `product_price_publish_down` (`product_price_publish_down`),
  ADD KEY `price_quantity_start` (`price_quantity_start`),
  ADD KEY `price_quantity_end` (`price_quantity_end`),
  ADD KEY `product_price` (`product_price`);

--
-- Indexes for table `dz8i1_virtuemart_product_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_product_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `dz8i1_virtuemart_ratings`
--
ALTER TABLE `dz8i1_virtuemart_ratings`
  ADD PRIMARY KEY (`virtuemart_rating_id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_rating_reviews`
--
ALTER TABLE `dz8i1_virtuemart_rating_reviews`
  ADD PRIMARY KEY (`virtuemart_rating_review_id`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `published` (`published`),
  ADD KEY `virtuemart_rating_vote_id` (`virtuemart_rating_vote_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`);

--
-- Indexes for table `dz8i1_virtuemart_rating_votes`
--
ALTER TABLE `dz8i1_virtuemart_rating_votes`
  ADD PRIMARY KEY (`virtuemart_rating_vote_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`);

--
-- Indexes for table `dz8i1_virtuemart_shipmentmethods`
--
ALTER TABLE `dz8i1_virtuemart_shipmentmethods`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD KEY `shipment_jplugin_id` (`shipment_jplugin_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `dz8i1_virtuemart_shipmentmethods_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_shipmentmethods_en_gb`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_shipmentmethods_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_shipmentmethods_vi_vn`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_shipmentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `dz8i1_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `dz8i1_virtuemart_shipment_plg_weight_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dz8i1_virtuemart_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_shoppergroups`
  ADD PRIMARY KEY (`virtuemart_shoppergroup_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `shopper_group_name` (`shopper_group_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_states`
--
ALTER TABLE `dz8i1_virtuemart_states`
  ADD PRIMARY KEY (`virtuemart_state_id`),
  ADD UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  ADD UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `virtuemart_country_id` (`virtuemart_country_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `dz8i1_virtuemart_userfields`
--
ALTER TABLE `dz8i1_virtuemart_userfields`
  ADD PRIMARY KEY (`virtuemart_userfield_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`),
  ADD KEY `account` (`account`),
  ADD KEY `shipment` (`shipment`),
  ADD KEY `cart` (`cart`);

--
-- Indexes for table `dz8i1_virtuemart_userfield_values`
--
ALTER TABLE `dz8i1_virtuemart_userfield_values`
  ADD PRIMARY KEY (`virtuemart_userfield_value_id`),
  ADD KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`);

--
-- Indexes for table `dz8i1_virtuemart_userinfos`
--
ALTER TABLE `dz8i1_virtuemart_userinfos`
  ADD PRIMARY KEY (`virtuemart_userinfo_id`),
  ADD KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  ADD KEY `address_type` (`address_type`),
  ADD KEY `address_type_name` (`address_type_name`);

--
-- Indexes for table `dz8i1_virtuemart_vendors`
--
ALTER TABLE `dz8i1_virtuemart_vendors`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD KEY `vendor_name` (`vendor_name`),
  ADD KEY `vendor_currency` (`vendor_currency`);

--
-- Indexes for table `dz8i1_virtuemart_vendors_en_gb`
--
ALTER TABLE `dz8i1_virtuemart_vendors_en_gb`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_vendors_vi_vn`
--
ALTER TABLE `dz8i1_virtuemart_vendors_vi_vn`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `dz8i1_virtuemart_vendor_medias`
--
ALTER TABLE `dz8i1_virtuemart_vendor_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`);

--
-- Indexes for table `dz8i1_virtuemart_vendor_users`
--
ALTER TABLE `dz8i1_virtuemart_vendor_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_user_id`);

--
-- Indexes for table `dz8i1_virtuemart_vmusers`
--
ALTER TABLE `dz8i1_virtuemart_vmusers`
  ADD PRIMARY KEY (`virtuemart_user_id`),
  ADD UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `user_is_vendor` (`user_is_vendor`);

--
-- Indexes for table `dz8i1_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_vmuser_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `dz8i1_virtuemart_waitingusers`
--
ALTER TABLE `dz8i1_virtuemart_waitingusers`
  ADD PRIMARY KEY (`virtuemart_waitinguser_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `dz8i1_virtuemart_worldzones`
--
ALTER TABLE `dz8i1_virtuemart_worldzones`
  ADD PRIMARY KEY (`virtuemart_worldzone_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dz8i1_assets`
--
ALTER TABLE `dz8i1_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `dz8i1_banners`
--
ALTER TABLE `dz8i1_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_banner_clients`
--
ALTER TABLE `dz8i1_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_categories`
--
ALTER TABLE `dz8i1_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dz8i1_contact_details`
--
ALTER TABLE `dz8i1_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_content`
--
ALTER TABLE `dz8i1_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_content_types`
--
ALTER TABLE `dz8i1_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;
--
-- AUTO_INCREMENT for table `dz8i1_djimageslider`
--
ALTER TABLE `dz8i1_djimageslider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_extensions`
--
ALTER TABLE `dz8i1_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10055;
--
-- AUTO_INCREMENT for table `dz8i1_finder_filters`
--
ALTER TABLE `dz8i1_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_finder_links`
--
ALTER TABLE `dz8i1_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_finder_taxonomy`
--
ALTER TABLE `dz8i1_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_finder_terms`
--
ALTER TABLE `dz8i1_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_finder_types`
--
ALTER TABLE `dz8i1_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_languages`
--
ALTER TABLE `dz8i1_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dz8i1_menu`
--
ALTER TABLE `dz8i1_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `dz8i1_menu_types`
--
ALTER TABLE `dz8i1_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dz8i1_messages`
--
ALTER TABLE `dz8i1_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `dz8i1_modules`
--
ALTER TABLE `dz8i1_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `dz8i1_newsfeeds`
--
ALTER TABLE `dz8i1_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_overrider`
--
ALTER TABLE `dz8i1_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `dz8i1_postinstall_messages`
--
ALTER TABLE `dz8i1_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dz8i1_redirect_links`
--
ALTER TABLE `dz8i1_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_tags`
--
ALTER TABLE `dz8i1_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_template_styles`
--
ALTER TABLE `dz8i1_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dz8i1_ucm_content`
--
ALTER TABLE `dz8i1_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_ucm_history`
--
ALTER TABLE `dz8i1_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_updates`
--
ALTER TABLE `dz8i1_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `dz8i1_update_sites`
--
ALTER TABLE `dz8i1_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `dz8i1_usergroups`
--
ALTER TABLE `dz8i1_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dz8i1_users`
--
ALTER TABLE `dz8i1_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
--
-- AUTO_INCREMENT for table `dz8i1_user_keys`
--
ALTER TABLE `dz8i1_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_user_notes`
--
ALTER TABLE `dz8i1_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_viewlevels`
--
ALTER TABLE `dz8i1_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_adminmenuentries`
--
ALTER TABLE `dz8i1_virtuemart_adminmenuentries`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_calcs`
--
ALTER TABLE `dz8i1_virtuemart_calcs`
  MODIFY `virtuemart_calc_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_calc_categories`
--
ALTER TABLE `dz8i1_virtuemart_calc_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_calc_countries`
--
ALTER TABLE `dz8i1_virtuemart_calc_countries`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_calc_manufacturers`
--
ALTER TABLE `dz8i1_virtuemart_calc_manufacturers`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_calc_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_calc_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_calc_states`
--
ALTER TABLE `dz8i1_virtuemart_calc_states`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_carts`
--
ALTER TABLE `dz8i1_virtuemart_carts`
  MODIFY `virtuemart_cart_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_categories`
--
ALTER TABLE `dz8i1_virtuemart_categories`
  MODIFY `virtuemart_category_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_category_categories`
--
ALTER TABLE `dz8i1_virtuemart_category_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_category_medias`
--
ALTER TABLE `dz8i1_virtuemart_category_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_configs`
--
ALTER TABLE `dz8i1_virtuemart_configs`
  MODIFY `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_countries`
--
ALTER TABLE `dz8i1_virtuemart_countries`
  MODIFY `virtuemart_country_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_coupons`
--
ALTER TABLE `dz8i1_virtuemart_coupons`
  MODIFY `virtuemart_coupon_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_currencies`
--
ALTER TABLE `dz8i1_virtuemart_currencies`
  MODIFY `virtuemart_currency_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_customs`
--
ALTER TABLE `dz8i1_virtuemart_customs`
  MODIFY `virtuemart_custom_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_invoices`
--
ALTER TABLE `dz8i1_virtuemart_invoices`
  MODIFY `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_manufacturercategories`
--
ALTER TABLE `dz8i1_virtuemart_manufacturercategories`
  MODIFY `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_manufacturers`
--
ALTER TABLE `dz8i1_virtuemart_manufacturers`
  MODIFY `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_manufacturer_medias`
--
ALTER TABLE `dz8i1_virtuemart_manufacturer_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_medias`
--
ALTER TABLE `dz8i1_virtuemart_medias`
  MODIFY `virtuemart_media_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `dz8i1_virtuemart_migration_oldtonew_ids`
  MODIFY `id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_modules`
--
ALTER TABLE `dz8i1_virtuemart_modules`
  MODIFY `module_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_orders`
--
ALTER TABLE `dz8i1_virtuemart_orders`
  MODIFY `virtuemart_order_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_orderstates`
--
ALTER TABLE `dz8i1_virtuemart_orderstates`
  MODIFY `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_order_calc_rules`
--
ALTER TABLE `dz8i1_virtuemart_order_calc_rules`
  MODIFY `virtuemart_order_calc_rule_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_order_histories`
--
ALTER TABLE `dz8i1_virtuemart_order_histories`
  MODIFY `virtuemart_order_history_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_order_items`
--
ALTER TABLE `dz8i1_virtuemart_order_items`
  MODIFY `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_order_userinfos`
--
ALTER TABLE `dz8i1_virtuemart_order_userinfos`
  MODIFY `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_paymentmethods`
--
ALTER TABLE `dz8i1_virtuemart_paymentmethods`
  MODIFY `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_paymentmethod_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_payment_plg_paypal`
--
ALTER TABLE `dz8i1_virtuemart_payment_plg_paypal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_products`
--
ALTER TABLE `dz8i1_virtuemart_products`
  MODIFY `virtuemart_product_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_product_categories`
--
ALTER TABLE `dz8i1_virtuemart_product_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_product_customfields`
--
ALTER TABLE `dz8i1_virtuemart_product_customfields`
  MODIFY `virtuemart_customfield_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'field id';
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_product_manufacturers`
--
ALTER TABLE `dz8i1_virtuemart_product_manufacturers`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_product_medias`
--
ALTER TABLE `dz8i1_virtuemart_product_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_product_prices`
--
ALTER TABLE `dz8i1_virtuemart_product_prices`
  MODIFY `virtuemart_product_price_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_product_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_product_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_ratings`
--
ALTER TABLE `dz8i1_virtuemart_ratings`
  MODIFY `virtuemart_rating_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_rating_reviews`
--
ALTER TABLE `dz8i1_virtuemart_rating_reviews`
  MODIFY `virtuemart_rating_review_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_rating_votes`
--
ALTER TABLE `dz8i1_virtuemart_rating_votes`
  MODIFY `virtuemart_rating_vote_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_shipmentmethods`
--
ALTER TABLE `dz8i1_virtuemart_shipmentmethods`
  MODIFY `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_shipmentmethod_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `dz8i1_virtuemart_shipment_plg_weight_countries`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_shoppergroups`
  MODIFY `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_states`
--
ALTER TABLE `dz8i1_virtuemart_states`
  MODIFY `virtuemart_state_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_userfields`
--
ALTER TABLE `dz8i1_virtuemart_userfields`
  MODIFY `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_userfield_values`
--
ALTER TABLE `dz8i1_virtuemart_userfield_values`
  MODIFY `virtuemart_userfield_value_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_userinfos`
--
ALTER TABLE `dz8i1_virtuemart_userinfos`
  MODIFY `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_vendors`
--
ALTER TABLE `dz8i1_virtuemart_vendors`
  MODIFY `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_vendor_medias`
--
ALTER TABLE `dz8i1_virtuemart_vendor_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_vendor_users`
--
ALTER TABLE `dz8i1_virtuemart_vendor_users`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_vmusers`
--
ALTER TABLE `dz8i1_virtuemart_vmusers`
  MODIFY `virtuemart_user_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `dz8i1_virtuemart_vmuser_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_waitingusers`
--
ALTER TABLE `dz8i1_virtuemart_waitingusers`
  MODIFY `virtuemart_waitinguser_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dz8i1_virtuemart_worldzones`
--
ALTER TABLE `dz8i1_virtuemart_worldzones`
  MODIFY `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
