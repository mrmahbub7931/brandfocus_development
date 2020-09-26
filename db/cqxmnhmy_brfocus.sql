-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2020 at 05:19 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cqxmnhmy_brfocus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_commentmeta`
--

CREATE TABLE `bfocus_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_comments`
--

CREATE TABLE `bfocus_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_comments`
--

INSERT INTO `bfocus_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-09 08:54:29', '2020-09-09 08:54:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_links`
--

CREATE TABLE `bfocus_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_options`
--

CREATE TABLE `bfocus_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_options`
--

INSERT INTO `bfocus_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://brandfocus.xyz', 'yes'),
(2, 'home', 'http://brandfocus.xyz', 'yes'),
(3, 'blogname', 'Brand Focus', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'md.mahbub7931@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '7', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '9', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:180:{s:14:\"team_member/?$\";s:31:\"index.php?post_type=team_member\";s:44:\"team_member/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=team_member&feed=$matches[1]\";s:39:\"team_member/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=team_member&feed=$matches[1]\";s:31:\"team_member/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=team_member&paged=$matches[1]\";s:17:\"tm_testimonial/?$\";s:34:\"index.php?post_type=tm_testimonial\";s:47:\"tm_testimonial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=tm_testimonial&feed=$matches[1]\";s:42:\"tm_testimonial/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=tm_testimonial&feed=$matches[1]\";s:34:\"tm_testimonial/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=tm_testimonial&paged=$matches[1]\";s:14:\"tm_services/?$\";s:31:\"index.php?post_type=tm_services\";s:44:\"tm_services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=tm_services&feed=$matches[1]\";s:39:\"tm_services/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=tm_services&feed=$matches[1]\";s:31:\"tm_services/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=tm_services&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"team_member/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"team_member/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"team_member/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"team_member/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"team_member/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"team_member/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"team_member/([^/]+)/embed/?$\";s:44:\"index.php?team_member=$matches[1]&embed=true\";s:32:\"team_member/([^/]+)/trackback/?$\";s:38:\"index.php?team_member=$matches[1]&tb=1\";s:52:\"team_member/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?team_member=$matches[1]&feed=$matches[2]\";s:47:\"team_member/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?team_member=$matches[1]&feed=$matches[2]\";s:40:\"team_member/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?team_member=$matches[1]&paged=$matches[2]\";s:47:\"team_member/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?team_member=$matches[1]&cpage=$matches[2]\";s:36:\"team_member/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?team_member=$matches[1]&page=$matches[2]\";s:28:\"team_member/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"team_member/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"team_member/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"team_member/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"team_member/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"team_member/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"tm_testimonial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"tm_testimonial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"tm_testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"tm_testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"tm_testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"tm_testimonial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"tm_testimonial/([^/]+)/embed/?$\";s:47:\"index.php?tm_testimonial=$matches[1]&embed=true\";s:35:\"tm_testimonial/([^/]+)/trackback/?$\";s:41:\"index.php?tm_testimonial=$matches[1]&tb=1\";s:55:\"tm_testimonial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?tm_testimonial=$matches[1]&feed=$matches[2]\";s:50:\"tm_testimonial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?tm_testimonial=$matches[1]&feed=$matches[2]\";s:43:\"tm_testimonial/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?tm_testimonial=$matches[1]&paged=$matches[2]\";s:50:\"tm_testimonial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?tm_testimonial=$matches[1]&cpage=$matches[2]\";s:39:\"tm_testimonial/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?tm_testimonial=$matches[1]&page=$matches[2]\";s:31:\"tm_testimonial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"tm_testimonial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"tm_testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"tm_testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"tm_testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"tm_testimonial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"tm_services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"tm_services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"tm_services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"tm_services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"tm_services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"tm_services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"tm_services/([^/]+)/embed/?$\";s:44:\"index.php?tm_services=$matches[1]&embed=true\";s:32:\"tm_services/([^/]+)/trackback/?$\";s:38:\"index.php?tm_services=$matches[1]&tb=1\";s:52:\"tm_services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?tm_services=$matches[1]&feed=$matches[2]\";s:47:\"tm_services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?tm_services=$matches[1]&feed=$matches[2]\";s:40:\"tm_services/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?tm_services=$matches[1]&paged=$matches[2]\";s:47:\"tm_services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?tm_services=$matches[1]&cpage=$matches[2]\";s:36:\"tm_services/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?tm_services=$matches[1]&page=$matches[2]\";s:28:\"tm_services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"tm_services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"tm_services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"tm_services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"tm_services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"tm_services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"brands/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"brands/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"brands/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"brands/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"brands/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"brands/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"brands/([^/]+)/embed/?$\";s:39:\"index.php?brands=$matches[1]&embed=true\";s:27:\"brands/([^/]+)/trackback/?$\";s:33:\"index.php?brands=$matches[1]&tb=1\";s:35:\"brands/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?brands=$matches[1]&paged=$matches[2]\";s:42:\"brands/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?brands=$matches[1]&cpage=$matches[2]\";s:31:\"brands/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?brands=$matches[1]&page=$matches[2]\";s:23:\"brands/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"brands/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"brands/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"brands/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"brands/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"brands/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=82&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:38:\"post-duplicator/m4c-postduplicator.php\";i:2;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tm_marketing', 'yes'),
(41, 'stylesheet', 'tm_marketing', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '79', 'yes'),
(82, 'page_on_front', '82', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615193668', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'bfocus_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-3\";i:3;s:11:\"tag_cloud-2\";}s:12:\"left-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1601121270;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601153670;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601196869;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601197253;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601197256;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601542469;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', 'qq#iF<r@h:X<`NFQj{];[L%4_KR:x(,)Gh%iZyl[a}.`Z+{eIHLK|r{B?-zCDT`m', 'no'),
(112, 'nonce_salt', '4 $6#vR.+I%On[fIUJ/+c%7=R@.{Z,G LP;.XFwQ(I9N<WZ)6R=C(_4Th8kW!Lnp', 'no'),
(113, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:4:\"Tags\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601110470;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599642223;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601110470;s:7:\"checked\";a:2:{s:12:\"tm_marketing\";s:5:\"0.9.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'auth_key', 'Ot[9bp+0u,~`AjJ/qPZb3.h3t%|fB+~h+gFiz&4>Uy:C9O)aXJAymS8W:! @<*p_', 'no'),
(126, 'auth_salt', '0hpcI?EMB9P9O;|3ji/n NN*b`Urb@lYeXLG[ (/2?Gm{Qu_@gQ#T;AI7]#3gn*X', 'no'),
(127, 'logged_in_key', 'r)Rxq 20(sj?qTZQb`(9Ywny9`j(HGyO?iy^Rr0-%6l~,[*Un?yW>?G4ZcC~F/KS', 'no'),
(128, 'logged_in_salt', 'K{97=hV*OtCyc;owxip+d$^TITr2g[^F~TQsRv=i^d-H#Rj,{@<?!6=gfjS|-BCs', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'current_theme', 'TM Marketing', 'yes'),
(151, 'theme_mods_tm_marketing', 'a:6:{i:0;b:0;s:30:\"tm_marketing_posts_index_style\";s:7:\"default\";s:29:\"tm_marketing_sidebar_position\";s:5:\"right\";s:27:\"tm_marketing_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'tm_marketing', 'a:23:{s:10:\"_want_logo\";s:1:\"1\";s:4:\"logo\";s:60:\"http://brandfocus.xyz/wp-content/uploads/2020/09/BF-Logo.png\";s:9:\"logo_text\";s:0:\"\";s:10:\"_want_team\";s:1:\"1\";s:14:\"_want_branding\";s:1:\"1\";s:6:\"banner\";a:1:{i:0;a:2:{s:19:\"banner-left-content\";a:1:{i:0;a:7:{s:9:\"span-text\";s:11:\"brand focus\";s:12:\"heading-text\";s:27:\"One stop marketing solution\";s:9:\"para-text\";s:137:\"We are specialized in marketing and branding solution. We can deliver the best brand promotion solution to local and international arena.\";s:14:\"color-btn-text\";s:10:\"Learn More\";s:13:\"color-btn-url\";s:9:\"/about-us\";s:15:\"normal-btn-text\";s:0:\"\";s:14:\"normal-btn-url\";s:0:\"\";}}s:20:\"banner-right-content\";s:66:\"http://brandfocus.xyz/wp-content/uploads/2020/09/illustration2.png\";}}s:16:\"featured-section\";a:1:{i:0;a:3:{s:10:\"small-text\";s:0:\"\";s:12:\"heading-text\";s:24:\"Let\'s check our services\";s:9:\"para-text\";s:73:\"We are ready to serve you with the best result in shortest possible time.\";}}s:16:\"workflow-section\";a:1:{i:0;a:3:{s:10:\"small-text\";s:9:\"work flow\";s:12:\"heading-text\";s:22:\"How we develop project\";s:9:\"para-text\";s:111:\"Our state of the art work process will give you the best marketing &amp; branding solution with highest impact.\";}}s:17:\"work-flow-section\";a:4:{i:0;a:2:{s:16:\"s-work-flow-text\";s:8:\"Research\";s:16:\"s-work-flow-icon\";s:19:\"fab fa-researchgate\";}i:1;a:2:{s:16:\"s-work-flow-text\";s:7:\"Concept\";s:16:\"s-work-flow-icon\";s:16:\"fas fa-allergies\";}i:2;a:2:{s:16:\"s-work-flow-text\";s:11:\"Development\";s:16:\"s-work-flow-icon\";s:16:\"far fa-chart-bar\";}i:3;a:2:{s:16:\"s-work-flow-text\";s:9:\"In Action\";s:16:\"s-work-flow-icon\";s:25:\"fas fa-chalkboard-teacher\";}}s:11:\"h-posts-f-s\";s:3:\"104\";s:11:\"h-posts-s-s\";s:3:\"106\";s:19:\"testimonial-section\";a:1:{i:0;a:3:{s:10:\"small-text\";s:12:\"testimonials\";s:12:\"heading-text\";s:18:\"Customers Feedback\";s:9:\"para-text\";s:38:\"Read what our customers says about us.\";}}s:12:\"team-section\";a:1:{i:0;a:3:{s:10:\"small-text\";s:8:\"Our Best\";s:12:\"heading-text\";s:14:\"Dedicated Team\";s:9:\"para-text\";s:118:\"Lorem Ipsum is simply dummy text of the printing and typesetting has been the industrys standard dummy text ever since\";}}s:13:\"price-section\";a:1:{i:0;a:3:{s:10:\"small-text\";s:12:\"Pricing Plan\";s:12:\"heading-text\";s:18:\"No Hidden Charges!\";s:9:\"para-text\";s:66:\"We only charge you when you get the impact &amp; the vendors bill.\";}}s:11:\"price-plans\";a:3:{i:0;a:7:{s:13:\"price-heading\";s:12:\"Startup Plan\";s:10:\"price-icon\";s:18:\"far fa-paper-plane\";s:8:\"pkg-list\";a:5:{i:0;a:1:{s:15:\"single-pkg-list\";s:18:\"10K Facebook Reach\";}i:1;a:1:{s:15:\"single-pkg-list\";s:30:\"Social Media Strategy building\";}i:2;a:1:{s:15:\"single-pkg-list\";s:25:\"5 Graphics Design support\";}i:3;a:1:{s:15:\"single-pkg-list\";s:12:\"2 PR Support\";}i:4;a:1:{s:15:\"single-pkg-list\";s:27:\"1 Year Domain &amp; Hosting\";}}s:12:\"price-amount\";s:9:\"10,000 TK\";s:8:\"pkg-type\";s:13:\"One Time Plan\";s:8:\"btn-text\";s:9:\"Order Now\";s:7:\"btn-url\";s:1:\"#\";}i:1;a:7:{s:13:\"price-heading\";s:11:\"Silver Plan\";s:10:\"price-icon\";s:15:\"far fa-bookmark\";s:8:\"pkg-list\";a:5:{i:0;a:1:{s:15:\"single-pkg-list\";s:18:\"25K Facebook Reach\";}i:1;a:1:{s:15:\"single-pkg-list\";s:30:\"Social Media Strategy building\";}i:2;a:1:{s:15:\"single-pkg-list\";s:25:\"8 Graphics Design support\";}i:3;a:1:{s:15:\"single-pkg-list\";s:27:\"1 Year Domain &amp; Hosting\";}i:4;a:1:{s:15:\"single-pkg-list\";s:19:\"1 Portfolio Website\";}}s:12:\"price-amount\";s:9:\"20,000 TK\";s:8:\"pkg-type\";s:13:\"One Time Plan\";s:8:\"btn-text\";s:9:\"Order Now\";s:7:\"btn-url\";s:1:\"#\";}i:2;a:7:{s:13:\"price-heading\";s:15:\"Enterprise Plan\";s:10:\"price-icon\";s:17:\"fas fa-chess-king\";s:8:\"pkg-list\";a:5:{i:0;a:1:{s:15:\"single-pkg-list\";s:18:\"50K Facebook Reach\";}i:1;a:1:{s:15:\"single-pkg-list\";s:30:\"Social Media Strategy building\";}i:2;a:1:{s:15:\"single-pkg-list\";s:26:\"10 Graphics Design support\";}i:3;a:1:{s:15:\"single-pkg-list\";s:27:\"1 Year Domain &amp; Hosting\";}i:4;a:1:{s:15:\"single-pkg-list\";s:16:\"1 Custom Website\";}}s:12:\"price-amount\";s:9:\"50,000 TK\";s:8:\"pkg-type\";s:13:\"One Time Plan\";s:8:\"btn-text\";s:9:\"Order Now\";s:7:\"btn-url\";s:1:\"#\";}}s:13:\"service_block\";s:11:\"tm_services\";s:14:\"footer_contact\";a:1:{i:0;a:3:{s:6:\"f-logo\";s:60:\"http://brandfocus.xyz/wp-content/uploads/2020/09/BF-Logo.png\";s:6:\"f-desc\";s:69:\"We are specialized in Brand promotion and digital marketing solution.\";s:13:\"footer_social\";a:5:{i:0;a:2:{s:5:\"s_url\";s:37:\"https://www.facebook.com/brandfocusbd\";s:6:\"s_icon\";s:17:\"fab fa-facebook-f\";}i:1;a:2:{s:5:\"s_url\";s:1:\"#\";s:6:\"s_icon\";s:14:\"fab fa-twitter\";}i:2;a:2:{s:5:\"s_url\";s:1:\"#\";s:6:\"s_icon\";s:18:\"fab fa-linkedin-in\";}i:3;a:2:{s:5:\"s_url\";s:1:\"#\";s:6:\"s_icon\";s:18:\"fab fa-pinterest-p\";}i:4;a:2:{s:5:\"s_url\";s:56:\"https://www.youtube.com/channel/UCqv6bl_pDCoJQ_H28mvQ-4w\";s:6:\"s_icon\";s:14:\"fab fa-youtube\";}}}}s:14:\"widget_title_1\";s:12:\"Our Services\";s:13:\"fservice_menu\";s:1:\"3\";s:14:\"widget_title_2\";s:29:\"Marketing &amp; Branding Tips\";s:10:\"flink_menu\";s:1:\"4\";s:14:\"widget_title_3\";s:12:\"Contact Info\";s:19:\"footer_contact_info\";a:1:{i:0;a:4:{s:12:\"contact_desc\";s:42:\"Get connected to us whenever you need us. \";s:10:\"f_location\";s:60:\"Midas Center, Level 3, House# 5, Road# 16, Dhanmondi , Dhaka\";s:8:\"f_number\";s:15:\" +880-160002993\";s:6:\"f_mail\";s:20:\" info@brandfocus.xyz\";}}}', 'yes'),
(156, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(168, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"7\",\"critical\":\"2\"}', 'yes'),
(248, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1601113742', 'no'),
(249, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(301, 'recently_activated', 'a:1:{s:29:\"acf-extended/acf-extended.php\";i:1600592883;}', 'yes'),
(302, 'recovery_mode_email_last_sent', '1600592062', 'yes'),
(314, '_site_transient_timeout_php_check_8706d9e16ec2aa6542c624d1e3c9facd', '1601210644', 'no'),
(315, '_site_transient_php_check_8706d9e16ec2aa6542c624d1e3c9facd', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(353, 'mtphr_post_duplicator_settings', '', 'yes'),
(358, 'WPLANG', '', 'yes'),
(359, 'new_admin_email', 'md.mahbub7931@gmail.com', 'yes'),
(360, 'whl_page', 'bpanel', 'yes'),
(361, 'whl_redirect_admin', '404', 'yes'),
(364, 'dnh_dismissed_notices', 'a:1:{i:0;s:24:\"wrm_1e278f4992d8bb3f1f0b\";}', 'yes'),
(403, '_site_transient_timeout_browser_4243c5bad934d66f978f6ee6e569fdad', '1601354599', 'no'),
(404, '_site_transient_browser_4243c5bad934d66f978f6ee6e569fdad', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(465, 'category_children', 'a:0:{}', 'yes'),
(533, '_site_transient_timeout_browser_ce4e9e986b0fbc713624d54b83c36283', '1601698075', 'no'),
(534, '_site_transient_browser_ce4e9e986b0fbc713624d54b83c36283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(574, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1601112239', 'no');
INSERT INTO `bfocus_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(575, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4724;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4370;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2684;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2563;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1976;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1825;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1805;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1490;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1488;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1482;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1458;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1455;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1443;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1223;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1205;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1158;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1134;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1105;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1013;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:903;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:900;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:882;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:881;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:811;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:802;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:793;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:782;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:775;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:753;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:750;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:726;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:720;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:704;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:702;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:686;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:663;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:663;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:657;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:650;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:636;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:635;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:613;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:600;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:589;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:583;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:581;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:578;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:563;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:561;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:557;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:556;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:552;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:551;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:543;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:533;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:532;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:525;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:522;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:520;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:520;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:505;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:492;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:483;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:478;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:477;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:463;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:455;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:440;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:433;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:432;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:425;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:423;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:418;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:415;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:414;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:412;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:403;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:398;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:392;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:387;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:384;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:379;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:378;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:375;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:372;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:366;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:360;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:355;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:349;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:345;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:343;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:341;}}', 'no'),
(579, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601110470;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.21\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.5.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.21\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(580, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1601101506;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(589, 'secret_key', ' IZL2h$`6]+U-s8!^&=h%!N-;,uOO@;d RX^Gy&1KWgJ~+Mzi;$fJz`854uow]~S', 'no'),
(601, '_site_transient_timeout_theme_roots', '1601112270', 'no'),
(602, '_site_transient_theme_roots', 'a:2:{s:12:\"tm_marketing\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(614, '_transient_is_multi_author', '0', 'yes'),
(615, '_transient_tm_marketing_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_postmeta`
--

CREATE TABLE `bfocus_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_postmeta`
--

INSERT INTO `bfocus_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(21, 7, '_wp_attached_file', '2020/09/logo.png'),
(22, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:73;s:4:\"file\";s:16:\"2020/09/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x73.png\";s:5:\"width\";i:150;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 16, '_menu_item_type', 'custom'),
(96, 16, '_menu_item_menu_item_parent', '0'),
(97, 16, '_menu_item_object_id', '16'),
(98, 16, '_menu_item_object', 'custom'),
(99, 16, '_menu_item_target', ''),
(100, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 16, '_menu_item_xfn', ''),
(102, 16, '_menu_item_url', 'http://brandfocus.xyz/'),
(104, 17, '_menu_item_type', 'post_type'),
(105, 17, '_menu_item_menu_item_parent', '0'),
(106, 17, '_menu_item_object_id', '2'),
(107, 17, '_menu_item_object', 'page'),
(108, 17, '_menu_item_target', ''),
(109, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 17, '_menu_item_xfn', ''),
(111, 17, '_menu_item_url', ''),
(203, 29, '_edit_lock', '1600576995:1'),
(204, 30, '_edit_lock', '1600577007:1'),
(205, 31, '_edit_lock', '1600576876:1'),
(206, 32, '_edit_lock', '1600577023:1'),
(207, 33, '_edit_lock', '1600577081:1'),
(208, 34, '_edit_last', '1'),
(209, 34, '_edit_lock', '1600590513:1'),
(212, 34, 'designation', 'UI/UX Designer'),
(214, 33, '_wp_trash_meta_status', 'draft'),
(215, 33, '_wp_trash_meta_time', '1600577359'),
(216, 33, '_wp_desired_post_slug', ''),
(217, 34, 'facebook', 'https://facebook.com'),
(218, 34, 'linkedin', 'https://linkedin.com'),
(219, 34, 'instagram', '#'),
(220, 34, 'youtube', '#'),
(221, 40, '_edit_lock', '1601111491:1'),
(223, 42, '_edit_lock', '1600585437:1'),
(224, 40, 'designation', 'Product Manager'),
(225, 40, '_edit_last', '1'),
(226, 43, '_edit_lock', '1601112485:1'),
(227, 43, 'designation', 'Project Manager'),
(228, 43, '_edit_last', '1'),
(229, 43, 'designation', 'Project Manager'),
(231, 45, '_wp_attached_file', '2020/09/team1.jpg'),
(232, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:400;s:4:\"file\";s:17:\"2020/09/team1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"team1-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:15:\"team1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 43, '_thumbnail_id', '120'),
(234, 40, '_thumbnail_id', '117'),
(235, 34, '_thumbnail_id', '45'),
(236, 47, '_wp_attached_file', '2020/09/illustration2.png'),
(237, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:807;s:6:\"height\";i:622;s:4:\"file\";s:25:\"2020/09/illustration2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"illustration2-300x231.png\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"illustration2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"illustration2-768x592.png\";s:5:\"width\";i:768;s:6:\"height\";i:592;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:23:\"illustration2-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 48, '_wp_attached_file', '2020/09/welcome-bg.png'),
(239, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:22:\"2020/09/welcome-bg.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"welcome-bg-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"welcome-bg-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"welcome-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"welcome-bg-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"welcome-bg-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:20:\"welcome-bg-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 50, '_wp_attached_file', '2020/09/b1.png'),
(241, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:81;s:4:\"file\";s:14:\"2020/09/b1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"b1-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:12:\"b1-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 49, '_edit_last', '1'),
(243, 49, '_thumbnail_id', '50'),
(244, 49, '_edit_lock', '1600600283:1'),
(245, 53, '_wp_attached_file', '2020/09/b2.png'),
(246, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:81;s:4:\"file\";s:14:\"2020/09/b2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"b2-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:12:\"b2-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 52, '_edit_last', '1'),
(248, 52, '_thumbnail_id', '53'),
(249, 52, '_edit_lock', '1600600301:1'),
(250, 55, '_edit_lock', '1600602385:1'),
(251, 56, '_edit_lock', '1600602281:1'),
(252, 57, '_edit_lock', '1600602338:1'),
(253, 58, '_edit_lock', '1601094512:1'),
(254, 60, '_edit_lock', '1601094265:1'),
(255, 2, '_edit_lock', '1600670818:1'),
(256, 64, '_wp_attached_file', '2020/09/JE32lmBSrX.jpg'),
(257, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:22:\"2020/09/JE32lmBSrX.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"JE32lmBSrX-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"JE32lmBSrX-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"JE32lmBSrX-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:20:\"JE32lmBSrX-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:21:\"JE32lmBSrX-220x80.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 65, '_wp_attached_file', '2020/09/about2.png'),
(259, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:614;s:6:\"height\";i:525;s:4:\"file\";s:18:\"2020/09/about2.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"about2-300x257.png\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"about2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:16:\"about2-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:17:\"about2-220x80.png\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 70, '_wp_attached_file', '2020/09/about-back.jpg'),
(261, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2020/09/about-back.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"about-back-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"about-back-1024x853.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"about-back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"about-back-768x640.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:20:\"about-back-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:21:\"about-back-220x80.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 72, '_edit_lock', '1600671032:1'),
(263, 73, '_edit_lock', '1600849531:1'),
(264, 74, '_wp_attached_file', '2020/09/01_Blog-1210x660-1.jpg'),
(265, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1210;s:6:\"height\";i:660;s:4:\"file\";s:30:\"2020/09/01_Blog-1210x660-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"01_Blog-1210x660-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"01_Blog-1210x660-1-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"01_Blog-1210x660-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"01_Blog-1210x660-1-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:28:\"01_Blog-1210x660-1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:29:\"01_Blog-1210x660-1-220x80.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 73, '_thumbnail_id', '74'),
(268, 76, '_edit_lock', '1600838026:1'),
(269, 77, '_wp_attached_file', '2020/09/02_Blog-1210x660-1.jpg'),
(270, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1210;s:6:\"height\";i:660;s:4:\"file\";s:30:\"2020/09/02_Blog-1210x660-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"02_Blog-1210x660-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"02_Blog-1210x660-1-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"02_Blog-1210x660-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"02_Blog-1210x660-1-768x419.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:419;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:28:\"02_Blog-1210x660-1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:29:\"02_Blog-1210x660-1-220x80.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 76, '_thumbnail_id', '77'),
(273, 79, '_edit_lock', '1600750122:1'),
(274, 81, '_edit_lock', '1600750205:1'),
(275, 82, '_edit_lock', '1600750367:1'),
(276, 82, '_wp_page_template', 'front-page.php'),
(277, 84, '_menu_item_type', 'post_type'),
(278, 84, '_menu_item_menu_item_parent', '0'),
(279, 84, '_menu_item_object_id', '79'),
(280, 84, '_menu_item_object', 'page'),
(281, 84, '_menu_item_target', ''),
(282, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 84, '_menu_item_xfn', ''),
(284, 84, '_menu_item_url', ''),
(288, 73, 'post_views_count', '76'),
(291, 76, 'post_views_count', '22'),
(292, 87, '_wp_attached_file', '2020/09/BF-Logo.png'),
(293, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:70;s:4:\"file\";s:19:\"2020/09/BF-Logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"BF-Logo-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:17:\"BF-Logo-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 88, '_edit_lock', '1601093626:1'),
(295, 88, '_edit_last', '1'),
(305, 58, 'post_views_count', '1'),
(306, 94, '_edit_lock', '1601094452:1'),
(307, 97, '_edit_lock', '1601094531:1'),
(308, 98, '_menu_item_type', 'post_type_archive'),
(309, 98, '_menu_item_menu_item_parent', '0'),
(310, 98, '_menu_item_object_id', '-26'),
(311, 98, '_menu_item_object', 'tm_services'),
(312, 98, '_menu_item_target', ''),
(313, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(314, 98, '_menu_item_xfn', ''),
(315, 98, '_menu_item_url', ''),
(317, 99, '_menu_item_type', 'post_type'),
(318, 99, '_menu_item_menu_item_parent', '0'),
(319, 99, '_menu_item_object_id', '58'),
(320, 99, '_menu_item_object', 'tm_services'),
(321, 99, '_menu_item_target', ''),
(322, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(323, 99, '_menu_item_xfn', ''),
(324, 99, '_menu_item_url', ''),
(326, 100, '_menu_item_type', 'post_type'),
(327, 100, '_menu_item_menu_item_parent', '0'),
(328, 100, '_menu_item_object_id', '94'),
(329, 100, '_menu_item_object', 'tm_services'),
(330, 100, '_menu_item_target', ''),
(331, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(332, 100, '_menu_item_xfn', ''),
(333, 100, '_menu_item_url', ''),
(335, 101, '_menu_item_type', 'post_type'),
(336, 101, '_menu_item_menu_item_parent', '0'),
(337, 101, '_menu_item_object_id', '60'),
(338, 101, '_menu_item_object', 'tm_services'),
(339, 101, '_menu_item_target', ''),
(340, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(341, 101, '_menu_item_xfn', ''),
(342, 101, '_menu_item_url', ''),
(344, 102, '_menu_item_type', 'post_type'),
(345, 102, '_menu_item_menu_item_parent', '0'),
(346, 102, '_menu_item_object_id', '76'),
(347, 102, '_menu_item_object', 'post'),
(348, 102, '_menu_item_target', ''),
(349, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(350, 102, '_menu_item_xfn', ''),
(351, 102, '_menu_item_url', ''),
(353, 103, '_menu_item_type', 'post_type'),
(354, 103, '_menu_item_menu_item_parent', '0'),
(355, 103, '_menu_item_object_id', '73'),
(356, 103, '_menu_item_object', 'post'),
(357, 103, '_menu_item_target', ''),
(358, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(359, 103, '_menu_item_xfn', ''),
(360, 103, '_menu_item_url', ''),
(362, 104, '_edit_lock', '1601111046:1'),
(364, 104, '_edit_last', '1'),
(366, 106, '_edit_lock', '1601110997:1'),
(368, 106, '_edit_last', '1'),
(370, 108, '_edit_lock', '1601096870:1'),
(371, 109, '_menu_item_type', 'custom'),
(372, 109, '_menu_item_menu_item_parent', '0'),
(373, 109, '_menu_item_object_id', '109'),
(374, 109, '_menu_item_object', 'custom'),
(375, 109, '_menu_item_target', ''),
(376, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(377, 109, '_menu_item_xfn', ''),
(378, 109, '_menu_item_url', '#services'),
(380, 110, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(381, 110, '_mail', 'a:8:{s:7:\"subject\";s:28:\"Brand Focus \"[your-subject]\"\";s:6:\"sender\";s:38:\"Brand Focus <wordpress@brandfocus.xyz>\";s:4:\"body\";s:171:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Brand Focus (http://brandfocus.xyz)\";s:9:\"recipient\";s:23:\"md.mahbub7931@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(382, 110, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"Brand Focus \"[your-subject]\"\";s:6:\"sender\";s:38:\"Brand Focus <wordpress@brandfocus.xyz>\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Brand Focus (http://brandfocus.xyz)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: md.mahbub7931@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(383, 110, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(384, 110, '_additional_settings', NULL),
(385, 110, '_locale', 'en_US'),
(386, 111, '_form', '<label> Your Name\n    [text* your-name] </label>\n\n<label> Your Email\n    [email* your-email] </label>\n<label>Your Company Name\n[text text-157 id:company_name]\n</label>\n<label> Subject\n    [text your-subject] </label>\n\n<label> What you need?\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(387, 111, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:16:\"\"[your-subject]\"\";s:6:\"sender\";s:33:\"[your-name] <info@brandfocus.xyz>\";s:9:\"recipient\";s:23:\"md.mahbub7931@gmail.com\";s:4:\"body\";s:111:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\nCompany Name: [text-157]\n\nMessage Body:\n[your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(388, 111, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"Brand Focus \"[your-subject]\"\";s:6:\"sender\";s:38:\"Brand Focus <wordpress@brandfocus.xyz>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:113:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Brand Focus (http://brandfocus.xyz)\";s:18:\"additional_headers\";s:33:\"Reply-To: md.mahbub7931@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(389, 111, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(390, 111, '_additional_settings', ''),
(391, 111, '_locale', 'en_US'),
(397, 104, '_thumbnail_id', '115'),
(400, 104, 'post_views_count', '4'),
(403, 114, '_wp_attached_file', '2020/09/feature5.png'),
(404, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:562;s:6:\"height\";i:408;s:4:\"file\";s:20:\"2020/09/feature5.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"feature5-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"feature5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:18:\"feature5-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:19:\"feature5-220x80.png\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"blog-img\";a:4:{s:4:\"file\";s:20:\"feature5-545x405.png\";s:5:\"width\";i:545;s:6:\"height\";i:405;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(405, 106, '_thumbnail_id', '114'),
(407, 115, '_wp_attached_file', '2020/09/feature4.png'),
(408, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:543;s:6:\"height\";i:399;s:4:\"file\";s:20:\"2020/09/feature4.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"feature4-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"feature4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:18:\"feature4-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:19:\"feature4-220x80.png\";s:5:\"width\";i:220;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(410, 104, '_encloseme', '1'),
(411, 106, 'post_views_count', '0'),
(412, 117, '_wp_attached_file', '2020/09/tips-for-professional-portraits.jpg'),
(413, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:43:\"2020/09/tips-for-professional-portraits.jpg\";s:5:\"sizes\";a:2:{s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:41:\"tips-for-professional-portraits-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:42:\"tips-for-professional-portraits-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"ILCE-7RM3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539080806\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(414, 40, '_wp_old_slug', 'robert-chelly'),
(415, 120, '_wp_attached_file', '2020/09/jahidur.jpg'),
(416, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2020/09/jahidur.jpg\";s:5:\"sizes\";a:2:{s:16:\"testimonial-size\";a:4:{s:4:\"file\";s:17:\"jahidur-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"brand-size\";a:4:{s:4:\"file\";s:18:\"jahidur-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(417, 43, '_wp_old_slug', 'robert-bruce');

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_posts`
--

CREATE TABLE `bfocus_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_posts`
--

INSERT INTO `bfocus_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-09 08:54:29', '2020-09-09 08:54:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-09 08:54:29', '2020-09-09 08:54:29', '', 0, 'http://localhost/brandfocus/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-09 08:54:29', '2020-09-09 08:54:29', '<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Exclusive Agency For Technology Provide Soluation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. The Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit. Grursus mal suada faci lisis Lorem dolarorit the ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">844</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Happy clients</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">1240</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">1541</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":70,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about-back-1024x853.jpg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>We Work With 20 Years Of Experience</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion that consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:list -->\n<ul><li>Web Design &amp; Development</li><li>Offerdable Price</li><li>Online Support</li><li>Quick Access</li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:list -->\n<ul><li>Best Leadership Ideas</li><li>Pixel Perfect</li><li>Expert Team</li><li>Creativity and Clarity.</li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'open', '', 'about-us', '', '', '2020-09-21 06:45:55', '2020-09-21 06:45:55', '', 0, 'http://localhost/brandfocus/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-09 08:54:29', '2020-09-09 08:54:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/brandfocus.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-09 08:54:29', '2020-09-09 08:54:29', '', 0, 'http://localhost/brandfocus/?page_id=3', 0, 'page', '', 0),
(7, 1, '2020-09-09 09:31:40', '2020-09-09 09:31:40', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-09-09 09:31:40', '2020-09-09 09:31:40', '', 0, 'http://localhost/brandfocus/wp-content/uploads/2020/09/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-09-09 09:39:44', '2020-09-09 09:39:44', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2020-09-26 06:21:44', '2020-09-26 06:21:44', '', 0, 'http://localhost/brandfocus/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2020-09-09 09:39:44', '2020-09-09 09:39:44', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-09-26 06:21:44', '2020-09-26 06:21:44', '', 0, 'http://localhost/brandfocus/?p=17', 2, 'nav_menu_item', '', 0),
(28, 1, '2020-09-20 04:42:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-20 04:42:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?p=28', 0, 'post', '', 0),
(29, 1, '2020-09-20 04:43:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 04:43:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=team_member&p=29', 0, 'team_member', '', 0),
(30, 1, '2020-09-20 04:43:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 04:43:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=team_member&p=30', 0, 'team_member', '', 0),
(31, 1, '2020-09-20 04:43:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-20 04:43:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?p=31', 0, 'post', '', 0),
(32, 1, '2020-09-20 04:43:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 04:43:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=team_member&p=32', 0, 'team_member', '', 0),
(33, 1, '2020-09-20 04:49:19', '2020-09-20 04:49:19', '', 'Michael Jackson', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-09-20 04:49:19', '2020-09-20 04:49:19', '', 0, 'http://localhost/brandfocus/?post_type=team_member&#038;p=33', 0, 'team_member', '', 0),
(34, 1, '2020-09-20 04:49:01', '2020-09-20 04:49:01', '', 'Michael Jackson', '', 'publish', 'closed', 'closed', '', 'michael-jackson', '', '', '2020-09-20 08:30:43', '2020-09-20 08:30:43', '', 0, 'http://localhost/brandfocus/?post_type=team_member&#038;p=34', 0, 'team_member', '', 0),
(36, 1, '2020-09-20 04:49:01', '2020-09-20 04:49:01', '', 'Michael Jackson', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-09-20 04:49:01', '2020-09-20 04:49:01', '', 34, 'http://localhost/brandfocus/2020/09/20/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-09-20 04:49:19', '2020-09-20 04:49:19', '', 'Michael Jackson', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-09-20 04:49:19', '2020-09-20 04:49:19', '', 33, 'http://localhost/brandfocus/2020/09/20/33-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-20 05:02:17', '2020-09-20 05:02:17', '', 'Michael Jacksonn', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-09-20 05:02:17', '2020-09-20 05:02:17', '', 34, 'http://localhost/brandfocus/2020/09/20/34-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-09-20 05:02:25', '2020-09-20 05:02:25', '', 'Michael Jackson', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-09-20 05:02:25', '2020-09-20 05:02:25', '', 34, 'http://localhost/brandfocus/2020/09/20/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-09-20 07:06:00', '2020-09-20 07:06:00', '<!-- wp:paragraph -->\n<p>Thrive is a much needed blessing and exceeded our expectations in every way. They are honest, straightforward, they take care of ALL your needs quickly, they are reliable, you can count on them and most of all, they do everything they say they will do, no BS.</p>\n<!-- /wp:paragraph -->', 'Mahbubar Rahman', '', 'publish', 'closed', 'closed', '', 'mahbubar-rahman', '', '', '2020-09-26 09:10:16', '2020-09-26 09:10:16', '', 0, 'http://localhost/brandfocus/?post_type=tm_testimonial&#038;p=40', 0, 'tm_testimonial', '', 0),
(41, 1, '2020-09-20 07:06:00', '2020-09-20 07:06:00', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting has been the industrys standard dummy text ever since</p>\n<!-- /wp:paragraph -->', 'Robert Chelly', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-09-20 07:06:00', '2020-09-20 07:06:00', '', 40, 'http://localhost/brandfocus/2020/09/20/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-09-20 07:06:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 07:06:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=tm_testimonial&p=42', 0, 'tm_testimonial', '', 0),
(43, 1, '2020-09-20 08:29:17', '2020-09-20 08:29:17', '<!-- wp:paragraph -->\n<p>The Web Guys walked us through the entire process of website design from start to end. The final product was delivered on time, but best of all, we are immediately getting web site requests for our services. So glad we found these guys…</p>\n<!-- /wp:paragraph -->', 'Jahidur Rahman', '', 'publish', 'closed', 'closed', '', 'jahidur-rahman', '', '', '2020-09-26 09:26:19', '2020-09-26 09:26:19', '', 0, 'http://localhost/brandfocus/?post_type=tm_testimonial&#038;p=43', 0, 'tm_testimonial', '', 0),
(44, 1, '2020-09-20 08:27:27', '2020-09-20 08:27:27', '', 'Draft created on September 20, 2020 at 8:27 am', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-09-20 08:27:27', '2020-09-20 08:27:27', '', 43, 'http://localhost/brandfocus/2020/09/20/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-09-20 08:29:01', '2020-09-20 08:29:01', '', 'team1', '', 'inherit', 'open', 'closed', '', 'team1', '', '', '2020-09-20 08:29:01', '2020-09-20 08:29:01', '', 43, 'http://localhost/brandfocus/wp-content/uploads/2020/09/team1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-09-20 08:29:17', '2020-09-20 08:29:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. A pariatur necessitatibus sunt accusantium quis quam?</p>\n<!-- /wp:paragraph -->', 'Robert Bruce', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-09-20 08:29:17', '2020-09-20 08:29:17', '', 43, 'http://localhost/brandfocus/2020/09/20/43-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-09-20 09:42:24', '2020-09-20 09:42:24', '', 'illustration2', '', 'inherit', 'open', 'closed', '', 'illustration2', '', '', '2020-09-20 09:42:24', '2020-09-20 09:42:24', '', 0, 'http://localhost/brandfocus/wp-content/uploads/2020/09/illustration2.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2020-09-20 09:42:40', '2020-09-20 09:42:40', '', 'welcome-bg', '', 'inherit', 'open', 'closed', '', 'welcome-bg', '', '', '2020-09-20 09:42:40', '2020-09-20 09:42:40', '', 0, 'http://localhost/brandfocus/wp-content/uploads/2020/09/welcome-bg.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-09-20 11:13:46', '2020-09-20 11:13:46', '', 'News Digital Tv', '', 'publish', 'closed', 'closed', '', 'news-digital-tv', '', '', '2020-09-20 11:13:46', '2020-09-20 11:13:46', '', 0, 'http://localhost/brandfocus/?post_type=brands&#038;p=49', 0, 'brands', '', 0),
(50, 1, '2020-09-20 11:13:32', '2020-09-20 11:13:32', '', 'b1', '', 'inherit', 'open', 'closed', '', 'b1', '', '', '2020-09-20 11:13:32', '2020-09-20 11:13:32', '', 49, 'http://localhost/brandfocus/wp-content/uploads/2020/09/b1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2020-09-20 11:13:46', '2020-09-20 11:13:46', '', 'News Digital Tv', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-09-20 11:13:46', '2020-09-20 11:13:46', '', 49, 'http://localhost/brandfocus/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-09-20 11:14:04', '2020-09-20 11:14:04', '', 'Natural', '', 'publish', 'closed', 'closed', '', 'natural', '', '', '2020-09-20 11:14:04', '2020-09-20 11:14:04', '', 0, 'http://localhost/brandfocus/?post_type=brands&#038;p=52', 0, 'brands', '', 0),
(53, 1, '2020-09-20 11:13:55', '2020-09-20 11:13:55', '', 'b2', '', 'inherit', 'open', 'closed', '', 'b2', '', '', '2020-09-20 11:13:55', '2020-09-20 11:13:55', '', 52, 'http://localhost/brandfocus/wp-content/uploads/2020/09/b2.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-09-20 11:14:04', '2020-09-20 11:14:04', '', 'Natural', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-09-20 11:14:04', '2020-09-20 11:14:04', '', 52, 'http://localhost/brandfocus/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-20 11:46:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 11:46:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=tm_services&p=55', 0, 'tm_services', '', 0),
(56, 1, '2020-09-20 11:46:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 11:46:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=tm_services&p=56', 0, 'tm_services', '', 0),
(57, 1, '2020-09-20 11:47:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-20 11:47:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/brandfocus/?post_type=tm_services&p=57', 0, 'tm_services', '', 0),
(58, 1, '2020-09-20 11:51:17', '2020-09-20 11:51:17', '', 'Brand Promotion', 'Our expert team of marketing and branding is capable to serve you any time.', 'publish', 'closed', 'closed', '', 'market-research', '', '', '2020-09-26 04:30:39', '2020-09-26 04:30:39', '', 0, 'http://localhost/brandfocus/?post_type=tm_services&#038;p=58', 0, 'tm_services', '', 0),
(59, 1, '2020-09-20 11:51:17', '2020-09-20 11:51:17', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odioGrursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odioGrursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odioGrursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odio</p>\n<!-- /wp:paragraph -->', 'Market Research', 'Grursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odio', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-09-20 11:51:17', '2020-09-20 11:51:17', '', 58, 'http://localhost/brandfocus/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-09-20 12:32:20', '2020-09-20 12:32:20', '', 'Event & Activation', 'We are ready to serve any type of event & activation facilities at any scale 24/7.', 'publish', 'closed', 'closed', '', 'creative-layout', '', '', '2020-09-26 04:26:42', '2020-09-26 04:26:42', '', 0, 'http://localhost/brandfocus/?post_type=tm_services&#038;p=60', 0, 'tm_services', '', 0),
(61, 1, '2020-09-20 12:32:20', '2020-09-20 12:32:20', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odioGrursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odioGrursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odio</p>\n<!-- /wp:paragraph -->', 'Creative Layout', 'Grursus mal suada faci ipsum to and the and dolarorit ametion consectetur elitto more bulum that odio', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-20 12:32:20', '2020-09-20 12:32:20', '', 60, 'http://localhost/brandfocus/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-09-21 06:07:24', '2020-09-21 06:07:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/brandfocus/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:07:24', '2020-09-21 06:07:24', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-09-21 06:07:45', '2020-09-21 06:07:45', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:07:45', '2020-09-21 06:07:45', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-09-21 06:12:11', '2020-09-21 06:12:11', '', 'JE32lmBSrX', '', 'inherit', 'open', 'closed', '', 'je32lmbsrx', '', '', '2020-09-21 06:12:11', '2020-09-21 06:12:11', '', 2, 'http://brandfocus.xyz/wp-content/uploads/2020/09/JE32lmBSrX.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-09-21 06:12:52', '2020-09-21 06:12:52', '', 'about2', '', 'inherit', 'open', 'closed', '', 'about2', '', '', '2020-09-21 06:12:52', '2020-09-21 06:12:52', '', 2, 'http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-09-21 06:14:36', '2020-09-21 06:14:36', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Exclusive Agency For Technology Provide Soluation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. The Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit. Grursus mal suada faci lisis Lorem dolarorit the ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:14:36', '2020-09-21 06:14:36', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-09-21 06:20:32', '2020-09-21 06:20:32', '<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Exclusive Agency For Technology Provide Soluation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. The Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit. Grursus mal suada faci lisis Lorem dolarorit the ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:20:32', '2020-09-21 06:20:32', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-09-21 06:29:02', '2020-09-21 06:29:02', '<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Exclusive Agency For Technology Provide Soluation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. The Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit. Grursus mal suada faci lisis Lorem dolarorit the ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>844</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Happy clients</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>1240</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>1541</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:29:02', '2020-09-21 06:29:02', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-09-21 06:36:28', '2020-09-21 06:36:28', '<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Exclusive Agency For Technology Provide Soluation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. The Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit. Grursus mal suada faci lisis Lorem dolarorit the ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">844</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Happy clients</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">1240</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">1541</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:36:28', '2020-09-21 06:36:28', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-09-21 06:39:40', '2020-09-21 06:39:40', '', 'about-back', '', 'inherit', 'open', 'closed', '', 'about-back', '', '', '2020-09-21 06:39:40', '2020-09-21 06:39:40', '', 2, 'http://brandfocus.xyz/wp-content/uploads/2020/09/about-back.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-09-21 06:42:23', '2020-09-21 06:42:23', '<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":65,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about2.png\" alt=\"\" class=\"wp-image-65\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Exclusive Agency For Technology Provide Soluation</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. The Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit. Grursus mal suada faci lisis Lorem dolarorit the ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum dolocons is suada a and fadolorit to the consectetur elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">844</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Happy clients</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">1240</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2><span style=\"color:#5a49f8\" class=\"has-inline-color\">1541</span></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Project Done</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":70,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://brandfocus.xyz/wp-content/uploads/2020/09/about-back-1024x853.jpg\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>We Work With 20 Years Of Experience</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion that consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:list -->\n<ul><li>Web Design &amp; Development</li><li>Offerdable Price</li><li>Online Support</li><li>Quick Access</li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:list -->\n<ul><li>Best Leadership Ideas</li><li>Pixel Perfect</li><li>Expert Team</li><li>Creativity and Clarity.</li></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-21 06:42:23', '2020-09-21 06:42:23', '', 2, 'http://brandfocus.xyz/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-09-21 06:49:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-21 06:49:24', '0000-00-00 00:00:00', '', 0, 'http://brandfocus.xyz/?page_id=72', 0, 'page', '', 0),
(73, 1, '2020-09-22 04:47:04', '2020-09-22 04:47:04', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p><em>A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things we</em></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada.</p>\n<!-- /wp:paragraph -->', '5 Ways Technology Today at Improved Business.', 'Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm', 'publish', 'open', 'open', '', '5-ways-technology-today-at-improved-business', '', '', '2020-09-23 05:17:04', '2020-09-23 05:17:04', '', 0, 'http://brandfocus.xyz/?p=73', 0, 'post', '', 0),
(74, 1, '2020-09-22 04:44:49', '2020-09-22 04:44:49', '', '01_Blog-1210x660', '', 'inherit', 'open', 'closed', '', '01_blog-1210x660', '', '', '2020-09-22 04:44:49', '2020-09-22 04:44:49', '', 73, 'http://brandfocus.xyz/wp-content/uploads/2020/09/01_Blog-1210x660-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-09-22 04:47:04', '2020-09-22 04:47:04', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p><em>A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things we</em></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada.</p>\n<!-- /wp:paragraph -->', '5 Ways Technology Today at Improved Business.', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2020-09-22 04:47:04', '2020-09-22 04:47:04', '', 73, 'http://brandfocus.xyz/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-09-22 04:50:23', '2020-09-22 04:50:23', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p><em>A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things we.</em></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada.</p>\n<!-- /wp:paragraph -->', 'How Wireless Technology more Changing Business.', 'Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm', 'publish', 'open', 'open', '', 'how-wireless-technology-more-changing-business', '', '', '2020-09-23 05:15:50', '2020-09-23 05:15:50', '', 0, 'http://brandfocus.xyz/?p=76', 0, 'post', '', 0),
(77, 1, '2020-09-22 04:48:51', '2020-09-22 04:48:51', '', '02_Blog-1210x660', '', 'inherit', 'open', 'closed', '', '02_blog-1210x660', '', '', '2020-09-22 04:48:51', '2020-09-22 04:48:51', '', 76, 'http://brandfocus.xyz/wp-content/uploads/2020/09/02_Blog-1210x660-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-09-22 04:50:23', '2020-09-22 04:50:23', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p><em>A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things we.</em></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada.</p>\n<!-- /wp:paragraph -->', 'How Wireless Technology more Changing Business.', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-09-22 04:50:23', '2020-09-22 04:50:23', '', 76, 'http://brandfocus.xyz/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-09-22 04:51:01', '2020-09-22 04:51:01', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-22 04:51:01', '2020-09-22 04:51:01', '', 0, 'http://brandfocus.xyz/?page_id=79', 0, 'page', '', 0),
(80, 1, '2020-09-22 04:51:01', '2020-09-22 04:51:01', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-09-22 04:51:01', '2020-09-22 04:51:01', '', 79, 'http://brandfocus.xyz/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-09-22 04:52:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-22 04:52:09', '0000-00-00 00:00:00', '', 0, 'http://brandfocus.xyz/?page_id=81', 0, 'page', '', 0),
(82, 1, '2020-09-22 04:54:14', '2020-09-22 04:54:14', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-22 04:54:14', '2020-09-22 04:54:14', '', 0, 'http://brandfocus.xyz/?page_id=82', 0, 'page', '', 0),
(83, 1, '2020-09-22 04:54:14', '2020-09-22 04:54:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2020-09-22 04:54:14', '2020-09-22 04:54:14', '', 82, 'http://brandfocus.xyz/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-09-22 10:02:48', '2020-09-22 10:02:48', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2020-09-26 06:21:44', '2020-09-26 06:21:44', '', 0, 'http://brandfocus.xyz/?p=84', 4, 'nav_menu_item', '', 0),
(85, 1, '2020-09-22 10:32:03', '2020-09-22 10:32:03', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p><em>A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things we</em></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada.</p>\n<!-- /wp:paragraph -->', '5 Ways Technology Today at Improved Business.', 'Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2020-09-22 10:32:03', '2020-09-22 10:32:03', '', 73, 'http://brandfocus.xyz/73-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `bfocus_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2020-09-22 10:32:28', '2020-09-22 10:32:28', '<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p><em>A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things we.</em></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true is generator on the Internet. It uses a dictionary of over 200 Latin words.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada.</p>\n<!-- /wp:paragraph -->', 'How Wireless Technology more Changing Business.', 'Grursus mal suada faci lisis Lorem ipsum dolarorit more a ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-09-22 10:32:28', '2020-09-22 10:32:28', '', 76, 'http://brandfocus.xyz/76-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-09-26 04:13:09', '2020-09-26 04:13:09', '', 'BF Logo', '', 'inherit', 'open', 'closed', '', 'bf-logo', '', '', '2020-09-26 04:13:09', '2020-09-26 04:13:09', '', 0, 'http://brandfocus.xyz/wp-content/uploads/2020/09/BF-Logo.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2020-09-26 04:14:29', '2020-09-26 04:14:29', '', 'Our services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-09-26 04:14:30', '2020-09-26 04:14:30', '', 0, 'http://brandfocus.xyz/?page_id=88', 0, 'page', '', 0),
(89, 1, '2020-09-26 04:14:29', '2020-09-26 04:14:29', '', 'Our services', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-09-26 04:14:29', '2020-09-26 04:14:29', '', 88, 'http://brandfocus.xyz/88-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-09-26 04:24:13', '2020-09-26 04:24:13', '', 'Brand Promotion', 'Our expert team of marketing and branding are capable to serve you.', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-09-26 04:24:13', '2020-09-26 04:24:13', '', 58, 'http://brandfocus.xyz/58-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-09-26 04:26:42', '2020-09-26 04:26:42', '', 'Event & Activation', 'We are ready to serve any type of event & activation facilities at any scale 24/7.', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-26 04:26:42', '2020-09-26 04:26:42', '', 60, 'http://brandfocus.xyz/60-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-09-26 04:29:45', '2020-09-26 04:29:45', '', 'Digital Marketing', 'Our capacity of building online branding & marketing promotion is unbeatable in market.', 'publish', 'closed', 'closed', '', 'digital-marketing', '', '', '2020-09-26 04:29:45', '2020-09-26 04:29:45', '', 0, 'http://brandfocus.xyz/?post_type=tm_services&#038;p=94', 0, 'tm_services', '', 0),
(95, 1, '2020-09-26 04:29:45', '2020-09-26 04:29:45', '', 'Digital Marketing', 'Our capacity of building online branding & marketing promotion is unbeatable in market.', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-09-26 04:29:45', '2020-09-26 04:29:45', '', 94, 'http://brandfocus.xyz/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-09-26 04:30:39', '2020-09-26 04:30:39', '', 'Brand Promotion', 'Our expert team of marketing and branding is capable to serve you any time.', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-09-26 04:30:39', '2020-09-26 04:30:39', '', 58, 'http://brandfocus.xyz/58-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2020-09-26 04:30:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-26 04:30:57', '0000-00-00 00:00:00', '', 0, 'http://brandfocus.xyz/?post_type=tm_services&p=97', 0, 'tm_services', '', 0),
(98, 1, '2020-09-26 04:49:19', '2020-09-26 04:49:19', 'Add Service', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2020-09-26 04:49:19', '2020-09-26 04:49:19', '', 0, 'http://brandfocus.xyz/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2020-09-26 04:49:19', '2020-09-26 04:49:19', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2020-09-26 04:49:19', '2020-09-26 04:49:19', '', 0, 'http://brandfocus.xyz/?p=99', 2, 'nav_menu_item', '', 0),
(100, 1, '2020-09-26 04:49:19', '2020-09-26 04:49:19', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2020-09-26 04:49:19', '2020-09-26 04:49:19', '', 0, 'http://brandfocus.xyz/?p=100', 3, 'nav_menu_item', '', 0),
(101, 1, '2020-09-26 04:49:19', '2020-09-26 04:49:19', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2020-09-26 04:49:19', '2020-09-26 04:49:19', '', 0, 'http://brandfocus.xyz/?p=101', 4, 'nav_menu_item', '', 0),
(102, 1, '2020-09-26 05:02:24', '2020-09-26 05:02:24', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2020-09-26 05:02:24', '2020-09-26 05:02:24', '', 0, 'http://brandfocus.xyz/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2020-09-26 05:02:24', '2020-09-26 05:02:24', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2020-09-26 05:02:24', '2020-09-26 05:02:24', '', 0, 'http://brandfocus.xyz/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2020-09-26 05:06:16', '2020-09-26 05:06:16', '<!-- wp:paragraph -->\n<p>There is no doubt that digital marketing or online marketing is crucial when it comes to the success of any business no matter what industry you are in. Unlike the past where businesses used traditional advertising, today, they are not as effective as online advertising and this has pushed many businesses to adopt online advertising to reach customers. Online marketing is the way to go if you want to reach and create a connection with customers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gone are the days when it was difficult to understand what customers want. Today, with the increase in tools such as analytics and digital marketing software, it is far easier to guess — nay, estimate — customer behavior… and cater to it! Online marketing has enabled businesses to gain treasured insights to customers’ minds.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When implemented in the right way, digital marketing will enable your business to target and reach its customers, classify new ones, increase sales, and experience lasting growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These digital marketing approaches will make your business visible to your existing customers online and connect you with new ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Digital Marketing Tips and Tricks', 'There is no doubt that digital marketing or online marketing is crucial when it comes to the success of any business no matter what industry you are in. Unlike the past where businesses used traditional advertising, today, they are not as effective as online advertising and this has pushed many businesses to adopt online advertising to reach customers. Online marketing is the way to go if you want to reach and create a connection with customers.', 'publish', 'open', 'open', '', 'digital-marketing-tips-and-tricks', '', '', '2020-09-26 09:03:45', '2020-09-26 09:03:45', '', 0, 'http://brandfocus.xyz/?p=104', 0, 'post', '', 0),
(105, 1, '2020-09-26 05:06:16', '2020-09-26 05:06:16', '<!-- wp:paragraph -->\n<p>There is no doubt that digital marketing or online marketing is crucial when it comes to the success of any business no matter what industry you are in. Unlike the past where businesses used traditional advertising, today, they are not as effective as online advertising and this has pushed many businesses to adopt online advertising to reach customers. Online marketing is the way to go if you want to reach and create a connection with customers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gone are the days when it was difficult to understand what customers want. Today, with the increase in tools such as analytics and digital marketing software, it is far easier to guess — nay, estimate — customer behavior… and cater to it! Online marketing has enabled businesses to gain treasured insights to customers’ minds.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When implemented in the right way, digital marketing will enable your business to target and reach its customers, classify new ones, increase sales, and experience lasting growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These digital marketing approaches will make your business visible to your existing customers online and connect you with new ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Digital Marketing Tips and Tricks', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2020-09-26 05:06:16', '2020-09-26 05:06:16', '', 104, 'http://brandfocus.xyz/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-09-26 05:07:45', '2020-09-26 05:07:45', '<!-- wp:paragraph -->\n<p>The terms “brand” and “business” are often used interchangeably. While the dictionary definitions might be similar, I don’t think this is a fair swap.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Anyone can create a business. But building a brand goes far and beyond filing your LLC paperwork and opening a business checking account. A brand is more than just a company logo or slogan. It’s how people feel when they see your logo or hear your name.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Branding is the most powerful marketing tool in the world. For individuals and businesses alike, establishing your brand can the difference between success, mediocrity, and failure.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re launching a startup or rebranding your existing business, this beginner’s guide to branding will help you establish a successful brand that will stand the test of time.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Build Your Own Brand', 'The terms “brand” and “business” are often used interchangeably. While the dictionary definitions might be similar, I don’t think this is a fair swap.\nAnyone can create a business. But building a brand goes far and beyond filing your LLC paperwork and opening a business checking account. A brand is more than just a company logo or slogan. It’s how people feel when they see your logo or hear your name. ', 'publish', 'open', 'open', '', 'build-your-own-brand', '', '', '2020-09-26 09:03:15', '2020-09-26 09:03:15', '', 0, 'http://brandfocus.xyz/?p=106', 0, 'post', '', 0),
(107, 1, '2020-09-26 05:07:45', '2020-09-26 05:07:45', '<!-- wp:paragraph -->\n<p>The terms “brand” and “business” are often used interchangeably. While the dictionary definitions might be similar, I don’t think this is a fair swap.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Anyone can create a business. But building a brand goes far and beyond filing your LLC paperwork and opening a business checking account. A brand is more than just a company logo or slogan. It’s how people feel when they see your logo or hear your name.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Branding is the most powerful marketing tool in the world. For individuals and businesses alike, establishing your brand can the difference between success, mediocrity, and failure.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re launching a startup or rebranding your existing business, this beginner’s guide to branding will help you establish a successful brand that will stand the test of time.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Build Your Own Brand', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2020-09-26 05:07:45', '2020-09-26 05:07:45', '', 106, 'http://brandfocus.xyz/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-09-26 05:07:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-26 05:07:50', '0000-00-00 00:00:00', '', 0, 'http://brandfocus.xyz/?p=108', 0, 'post', '', 0),
(109, 1, '2020-09-26 06:21:44', '2020-09-26 06:21:44', '', 'Our Services', '', 'publish', 'closed', 'closed', '', 'our-services', '', '', '2020-09-26 06:21:44', '2020-09-26 06:21:44', '', 0, 'http://brandfocus.xyz/?p=109', 3, 'nav_menu_item', '', 0),
(110, 1, '2020-09-26 06:25:05', '2020-09-26 06:25:05', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nBrand Focus \"[your-subject]\"\nBrand Focus <wordpress@brandfocus.xyz>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Brand Focus (http://brandfocus.xyz)\nmd.mahbub7931@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nBrand Focus \"[your-subject]\"\nBrand Focus <wordpress@brandfocus.xyz>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Brand Focus (http://brandfocus.xyz)\n[your-email]\nReply-To: md.mahbub7931@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-26 06:25:05', '2020-09-26 06:25:05', '', 0, 'http://brandfocus.xyz/?post_type=wpcf7_contact_form&p=110', 0, 'wpcf7_contact_form', '', 0),
(111, 1, '2020-09-26 06:33:51', '2020-09-26 06:33:51', '<label> Your Name\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email\r\n    [email* your-email] </label>\r\n<label>Your Company Name\r\n[text text-157 id:company_name]\r\n</label>\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> What you need?\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\n\"[your-subject]\"\n[your-name] <info@brandfocus.xyz>\nmd.mahbub7931@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\nCompany Name: [text-157]\r\n\r\nMessage Body:\r\n[your-message]\nReply-To: [your-email]\n\n1\n\n\nBrand Focus \"[your-subject]\"\nBrand Focus <wordpress@brandfocus.xyz>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Brand Focus (http://brandfocus.xyz)\nReply-To: md.mahbub7931@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Brand Focus', '', 'publish', 'closed', 'closed', '', 'brand-focus', '', '', '2020-09-26 07:46:38', '2020-09-26 07:46:38', '', 0, 'http://brandfocus.xyz/?post_type=wpcf7_contact_form&#038;p=111', 0, 'wpcf7_contact_form', '', 0),
(112, 1, '2020-09-26 08:48:25', '2020-09-26 08:48:25', '<!-- wp:paragraph -->\n<p>There is no doubt that digital marketing or online marketing is crucial when it comes to the success of any business no matter what industry you are in. Unlike the past where businesses used traditional advertising, today, they are not as effective as online advertising and this has pushed many businesses to adopt online advertising to reach customers. Online marketing is the way to go if you want to reach and create a connection with customers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Gone are the days when it was difficult to understand what customers want. Today, with the increase in tools such as analytics and digital marketing software, it is far easier to guess — nay, estimate — customer behavior… and cater to it! Online marketing has enabled businesses to gain treasured insights to customers’ minds.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When implemented in the right way, digital marketing will enable your business to target and reach its customers, classify new ones, increase sales, and experience lasting growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These digital marketing approaches will make your business visible to your existing customers online and connect you with new ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Digital Marketing Tips and Tricks', 'There is no doubt that digital marketing or online marketing is crucial when it comes to the success of any business no matter what industry you are in. Unlike the past where businesses used traditional advertising, today, they are not as effective as online advertising and this has pushed many businesses to adopt online advertising to reach customers. Online marketing is the way to go if you want to reach and create a connection with customers.', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2020-09-26 08:48:25', '2020-09-26 08:48:25', '', 104, 'http://brandfocus.xyz/104-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-09-26 09:02:01', '2020-09-26 09:02:01', '<!-- wp:paragraph -->\n<p>The terms “brand” and “business” are often used interchangeably. While the dictionary definitions might be similar, I don’t think this is a fair swap.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Anyone can create a business. But building a brand goes far and beyond filing your LLC paperwork and opening a business checking account. A brand is more than just a company logo or slogan. It’s how people feel when they see your logo or hear your name.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Branding is the most powerful marketing tool in the world. For individuals and businesses alike, establishing your brand can the difference between success, mediocrity, and failure.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re launching a startup or rebranding your existing business, this beginner’s guide to branding will help you establish a successful brand that will stand the test of time.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Build Your Own Brand', 'The terms “brand” and “business” are often used interchangeably. While the dictionary definitions might be similar, I don’t think this is a fair swap.\nAnyone can create a business. But building a brand goes far and beyond filing your LLC paperwork and opening a business checking account. A brand is more than just a company logo or slogan. It’s how people feel when they see your logo or hear your name. ', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2020-09-26 09:02:01', '2020-09-26 09:02:01', '', 106, 'http://brandfocus.xyz/106-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-09-26 09:03:04', '2020-09-26 09:03:04', '', 'feature5', '', 'inherit', 'open', 'closed', '', 'feature5', '', '', '2020-09-26 09:03:04', '2020-09-26 09:03:04', '', 106, 'http://brandfocus.xyz/wp-content/uploads/2020/09/feature5.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2020-09-26 09:03:38', '2020-09-26 09:03:38', '', 'feature4', '', 'inherit', 'open', 'closed', '', 'feature4', '', '', '2020-09-26 09:03:38', '2020-09-26 09:03:38', '', 104, 'http://brandfocus.xyz/wp-content/uploads/2020/09/feature4.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2020-09-26 09:09:44', '2020-09-26 09:09:44', '', 'tips-for-professional-portraits', '', 'inherit', 'open', 'closed', '', 'tips-for-professional-portraits', '', '', '2020-09-26 09:09:44', '2020-09-26 09:09:44', '', 40, 'http://brandfocus.xyz/wp-content/uploads/2020/09/tips-for-professional-portraits.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2020-09-26 09:09:53', '2020-09-26 09:09:53', '<!-- wp:paragraph -->\n<p>Thrive is a much needed blessing and exceeded our expectations in every way. They are honest, straightforward, they take care of ALL your needs quickly, they are reliable, you can count on them and most of all, they do everything they say they will do, no BS.</p>\n<!-- /wp:paragraph -->', 'Mahbubar Rahman', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-09-26 09:09:53', '2020-09-26 09:09:53', '', 40, 'http://brandfocus.xyz/40-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-09-26 09:26:11', '2020-09-26 09:26:11', '', 'jahidur', '', 'inherit', 'open', 'closed', '', 'jahidur', '', '', '2020-09-26 09:26:11', '2020-09-26 09:26:11', '', 43, 'http://brandfocus.xyz/wp-content/uploads/2020/09/jahidur.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-09-26 09:26:18', '2020-09-26 09:26:18', '<!-- wp:paragraph -->\n<p>The Web Guys walked us through the entire process of website design from start to end. The final product was delivered on time, but best of all, we are immediately getting web site requests for our services. So glad we found these guys…</p>\n<!-- /wp:paragraph -->', 'Jahidur Rahman', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-09-26 09:26:18', '2020-09-26 09:26:18', '', 43, 'http://brandfocus.xyz/43-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_termmeta`
--

CREATE TABLE `bfocus_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_terms`
--

CREATE TABLE `bfocus_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_terms`
--

INSERT INTO `bfocus_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'Footer Service Menu', 'footer-service-menu', 0),
(4, 'Footer Important Link', 'footer-important-link', 0),
(5, 'Corporate Business', 'corporate-business', 0),
(6, 'Adventure', 'adventure', 0),
(7, 'Digital', 'digital', 0),
(8, 'Project Business', 'project-business', 0),
(9, 'Technology', 'technology', 0),
(10, 'Phone', 'phone', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_term_relationships`
--

CREATE TABLE `bfocus_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_term_relationships`
--

INSERT INTO `bfocus_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(73, 8, 0),
(73, 9, 0),
(73, 10, 0),
(76, 5, 0),
(76, 6, 0),
(76, 7, 0),
(84, 2, 0),
(98, 3, 0),
(99, 3, 0),
(100, 3, 0),
(101, 3, 0),
(102, 4, 0),
(103, 4, 0),
(104, 1, 0),
(106, 1, 0),
(109, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_term_taxonomy`
--

CREATE TABLE `bfocus_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_term_taxonomy`
--

INSERT INTO `bfocus_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_usermeta`
--

CREATE TABLE `bfocus_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_usermeta`
--

INSERT INTO `bfocus_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminn'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'bfocus_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'bfocus_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8c85a039620ed44b22e9673bd53b0cf6d2977dcf0d21c95ab3665e33dc231b9d\";a:4:{s:10:\"expiration\";i:1601266074;s:2:\"ip\";s:14:\"162.210.194.37\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601093274;}}'),
(17, 1, 'bfocus_dashboard_quick_press_last_post_id', '28'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'bfocus_user-settings', 'libraryContent=browse'),
(22, 1, 'bfocus_user-settings-time', '1599644325'),
(23, 1, 'enable_custom_fields', '1'),
(24, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"162.210.194.0\";}'),
(25, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(26, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- Table structure for table `bfocus_users`
--

CREATE TABLE `bfocus_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bfocus_users`
--

INSERT INTO `bfocus_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BbFL78XSGMuw0654dQ6/SfUX27llaZ/', 'admin', 'md.mahbub7931@gmail.com', 'http://localhost/brandfocus', '2020-09-09 08:54:28', '', 0, 'adminn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bfocus_commentmeta`
--
ALTER TABLE `bfocus_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `bfocus_comments`
--
ALTER TABLE `bfocus_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `bfocus_links`
--
ALTER TABLE `bfocus_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `bfocus_options`
--
ALTER TABLE `bfocus_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `bfocus_postmeta`
--
ALTER TABLE `bfocus_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `bfocus_posts`
--
ALTER TABLE `bfocus_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `bfocus_termmeta`
--
ALTER TABLE `bfocus_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `bfocus_terms`
--
ALTER TABLE `bfocus_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `bfocus_term_relationships`
--
ALTER TABLE `bfocus_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `bfocus_term_taxonomy`
--
ALTER TABLE `bfocus_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `bfocus_usermeta`
--
ALTER TABLE `bfocus_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `bfocus_users`
--
ALTER TABLE `bfocus_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bfocus_commentmeta`
--
ALTER TABLE `bfocus_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bfocus_comments`
--
ALTER TABLE `bfocus_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bfocus_links`
--
ALTER TABLE `bfocus_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bfocus_options`
--
ALTER TABLE `bfocus_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;

--
-- AUTO_INCREMENT for table `bfocus_postmeta`
--
ALTER TABLE `bfocus_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `bfocus_posts`
--
ALTER TABLE `bfocus_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `bfocus_termmeta`
--
ALTER TABLE `bfocus_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bfocus_terms`
--
ALTER TABLE `bfocus_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bfocus_term_taxonomy`
--
ALTER TABLE `bfocus_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bfocus_usermeta`
--
ALTER TABLE `bfocus_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bfocus_users`
--
ALTER TABLE `bfocus_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
