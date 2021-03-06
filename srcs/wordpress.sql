-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2019 at 07:50 PM
-- Server version: 10.3.18-MariaDB-0+deb10u1
-- PHP Version: 7.3.11-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-25 19:45:42', '2019-11-25 19:45:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://localhost', 'yes'),
(2, 'home', 'https://localhost', 'yes'),
(3, 'blogname', 'hello', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test@gamil.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_salt', 'F_#jP_Cv/5zT4S-<7OIT~-ZXDtzbPZF_]~(+v|;x@E>8bDr~!#A8kTfx9y#~qI/$', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1574714743;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574754343;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574797551;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'secure_auth_salt', '=:/g!3@J]F6?TCt<w1{hyFHLX%Dif314v8}b&P}$UjZosh+nbgn(A;`~W(|f*k[{', 'no'),
(115, 'logged_in_salt', '(U|Uq!,)b*TP,[H<D7U*IBm,oO0lbG@.W#6f3L6<$2l)a6uX7Z:zZ~H,AkOe3cP8', 'no'),
(119, '_site_transient_timeout_theme_roots', '1574712947', 'no'),
(120, '_site_transient_theme_roots', 'a:1:{s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(123, '_site_transient_timeout_browser_4cb4ef0395058221e4095cf76ed755fc', '1575315948', 'no'),
(124, '_site_transient_browser_4cb4ef0395058221e4095cf76ed755fc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.80\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1574754348', 'no'),
(127, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div><div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div>', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(129, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.3\";s:7:\"version\";s:5:\"5.1.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0.7-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.7-rollback-4.zip\";}s:7:\"current\";s:5:\"5.0.7\";s:7:\"version\";s:5:\"5.0.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.0.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1574711149;s:15:\"version_checked\";s:5:\"5.0.4\";s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1574754349', 'no'),
(131, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Granada, Spain\";s:3:\"url\";s:33:\"https://2019.granada.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-11-29 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Granada, Spain\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:37.165983;s:9:\"longitude\";d:-3.5986223;}}}}', 'no'),
(132, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574711150;s:7:\"checked\";a:1:{s:14:\"twentynineteen\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:36:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-09 07:43:13\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/ar.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-05 11:44:00\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/bg_BG.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-16 07:03:53\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/ca.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-21 21:14:46\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-04 15:37:30\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/cy.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-29 05:12:48\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-24 14:16:16\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/el.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-09 23:47:21\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/en_CA.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-19 15:48:41\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/eo.zip\";s:10:\"autoupdate\";b:1;}i:9;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-15 19:34:15\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:10;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-05 17:48:06\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/fi.zip\";s:10:\"autoupdate\";b:1;}i:11;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-10 12:30:55\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:12;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-11 02:38:12\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/gl_ES.zip\";s:10:\"autoupdate\";b:1;}i:13;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-07 14:19:07\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/hr.zip\";s:10:\"autoupdate\";b:1;}i:14;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-05 09:06:41\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/hu_HU.zip\";s:10:\"autoupdate\";b:1;}i:15;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-01 10:46:53\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/it_IT.zip\";s:10:\"autoupdate\";b:1;}i:16;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-11 05:10:35\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/ja.zip\";s:10:\"autoupdate\";b:1;}i:17;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-26 07:43:23\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/lv.zip\";s:10:\"autoupdate\";b:1;}i:18;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-20 16:48:38\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/nb_NO.zip\";s:10:\"autoupdate\";b:1;}i:19;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-16 06:37:00\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:20;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-05 12:18:17\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:21;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2018-12-11 13:39:55\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.0/pt_PT.zip\";s:10:\"autoupdate\";b:1;}i:22;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-07 12:16:43\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/ro_RO.zip\";s:10:\"autoupdate\";b:1;}i:23;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-09 23:39:31\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:24;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-18 18:00:05\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/si_LK.zip\";s:10:\"autoupdate\";b:1;}i:25;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-14 14:54:37\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/sk_SK.zip\";s:10:\"autoupdate\";b:1;}i:26;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-11 19:34:24\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/sq.zip\";s:10:\"autoupdate\";b:1;}i:27;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-21 21:53:40\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/sr_RS.zip\";s:10:\"autoupdate\";b:1;}i:28;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-02-19 10:17:42\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/sv_SE.zip\";s:10:\"autoupdate\";b:1;}i:29;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-06 19:08:27\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/tr_TR.zip\";s:10:\"autoupdate\";b:1;}i:30;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-10 07:05:20\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/uk.zip\";s:10:\"autoupdate\";b:1;}i:31;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-19 06:10:22\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/ur.zip\";s:10:\"autoupdate\";b:1;}i:32;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-08 04:24:04\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/vi.zip\";s:10:\"autoupdate\";b:1;}i:33;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-21 00:24:44\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/zh_CN.zip\";s:10:\"autoupdate\";b:1;}i:34;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2018-12-07 06:04:34\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/zh_HK.zip\";s:10:\"autoupdate\";b:1;}i:35;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2019-01-10 04:54:00\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.2/zh_TW.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(133, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1574711150;s:7:\"checked\";a:1:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:46:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-12-31 20:35:58\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/ar.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.0.8\";s:7:\"updated\";s:19:\"2017-09-30 13:25:05\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.8/bg_BG.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-05-12 18:03:35\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/bs_BA.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:08\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/ca.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2017-01-30 12:29:04\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:01:37\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/cy.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-13 17:42:38\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/da_DK.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:30\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:33\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/el.zip\";s:10:\"autoupdate\";b:1;}i:9;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:18\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/en_CA.zip\";s:10:\"autoupdate\";b:1;}i:10;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:22\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/eo.zip\";s:10:\"autoupdate\";b:1;}i:11;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-06 16:48:55\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_CL.zip\";s:10:\"autoupdate\";b:1;}i:12;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:01:22\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:13;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-09 10:48:54\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_PE.zip\";s:10:\"autoupdate\";b:1;}i:14;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-06 16:48:48\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/eu.zip\";s:10:\"autoupdate\";b:1;}i:15;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-13 22:37:00\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/fa_IR.zip\";s:10:\"autoupdate\";b:1;}i:16;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-12-06 06:15:43\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/fi.zip\";s:10:\"autoupdate\";b:1;}i:17;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:27\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:18;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-16 13:29:22\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/gl_ES.zip\";s:10:\"autoupdate\";b:1;}i:19;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-05-28 18:40:57\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/he_IL.zip\";s:10:\"autoupdate\";b:1;}i:20;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:13\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/hr.zip\";s:10:\"autoupdate\";b:1;}i:21;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2019-01-04 16:32:35\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/hu_HU.zip\";s:10:\"autoupdate\";b:1;}i:22;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-21 23:53:01\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/id_ID.zip\";s:10:\"autoupdate\";b:1;}i:23;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:42\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/it_IT.zip\";s:10:\"autoupdate\";b:1;}i:24;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-29 05:47:59\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/ja.zip\";s:10:\"autoupdate\";b:1;}i:25;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.0.8\";s:7:\"updated\";s:19:\"2017-10-23 07:18:11\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.8/jv_ID.zip\";s:10:\"autoupdate\";b:1;}i:26;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-22 14:17:52\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/ko_KR.zip\";s:10:\"autoupdate\";b:1;}i:27;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-10-09 10:28:44\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/lv.zip\";s:10:\"autoupdate\";b:1;}i:28;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-12-06 20:03:15\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/nb_NO.zip\";s:10:\"autoupdate\";b:1;}i:29;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:15\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:30;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"3.1.11\";s:7:\"updated\";s:19:\"2016-05-12 18:05:47\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:31;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-12-08 12:30:17\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:32;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:01:07\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/pt_PT.zip\";s:10:\"autoupdate\";b:1;}i:33;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2019-01-08 10:13:57\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/ro_RO.zip\";s:10:\"autoupdate\";b:1;}i:34;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2019-01-14 18:46:01\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:35;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-07-17 06:50:38\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/sk_SK.zip\";s:10:\"autoupdate\";b:1;}i:36;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 19:59:57\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/sq.zip\";s:10:\"autoupdate\";b:1;}i:37;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.0.8\";s:7:\"updated\";s:19:\"2018-01-21 15:49:15\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.8/sr_RS.zip\";s:10:\"autoupdate\";b:1;}i:38;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-23 13:10:36\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/sv_SE.zip\";s:10:\"autoupdate\";b:1;}i:39;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"3.1.11\";s:7:\"updated\";s:19:\"2016-05-12 18:06:30\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/th.zip\";s:10:\"autoupdate\";b:1;}i:40;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-11-06 11:02:23\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/tr_TR.zip\";s:10:\"autoupdate\";b:1;}i:41;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2019-01-14 18:45:15\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/uk.zip\";s:10:\"autoupdate\";b:1;}i:42;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:01:36\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/vi.zip\";s:10:\"autoupdate\";b:1;}i:43;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-12-10 19:59:21\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/zh_CN.zip\";s:10:\"autoupdate\";b:1;}i:44;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"3.3.4\";s:7:\"updated\";s:19:\"2017-08-03 04:32:01\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.4/zh_HK.zip\";s:10:\"autoupdate\";b:1;}i:45;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"4.1\";s:7:\"updated\";s:19:\"2018-11-12 20:00:11\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1/zh_TW.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:0:{}}', 'no'),
(135, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-25 19:45:42', '2019-11-25 19:45:42', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-11-25 19:45:42', '2019-11-25 19:45:42', '', 0, 'https://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-25 19:45:42', '2019-11-25 19:45:42', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-11-25 19:45:42', '2019-11-25 19:45:42', '', 0, 'https://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-25 19:45:42', '2019-11-25 19:45:42', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-25 19:45:42', '2019-11-25 19:45:42', '', 0, 'https://localhost/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-11-25 19:45:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-11-25 19:45:48', '0000-00-00 00:00:00', '', 0, 'https://localhost/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'test'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"66a576bd1dfa27c6ace65211089626cf7011abfbac5a52e1cbc054d6dfca0141\";a:4:{s:10:\"expiration\";i:1574883946;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36\";s:5:\"login\";i:1574711146;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'test', '$P$BnyszHCS4Xdl2Wwpq86w8WUAI.GLMW/', 'test', 'test@gamil.com', '', '2019-11-25 19:45:42', '', 0, 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
