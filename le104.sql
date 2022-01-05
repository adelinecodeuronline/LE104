-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 04 jan. 2022 à 13:38
-- Version du serveur : 5.7.33
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `le104`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-22 12:59:03', '2021-12-22 11:59:03', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/le104', 'yes'),
(2, 'home', 'http://localhost/le104', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'a.bonnard@codeur.online', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:16:\"104Form/form.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:39:\"wp-booking-system/wp-booking-system.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:52:\"C:\\laragon\\www\\le104/wp-content/themes/104/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', '104', 'yes'),
(41, 'stylesheet', '104', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '29', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1655726342', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1641304743;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641340743;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1641383943;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641383983;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641383986;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641470343;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640174723;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(156, 'current_theme', 'Le 104', 'yes'),
(157, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640611237;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(160, 'category_children', 'a:0:{}', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(179, 'acf_version', '5.11.4', 'yes'),
(184, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1641298249;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(185, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641298251;s:7:\"checked\";a:2:{i:104;s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(187, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":3,\"critical\":0}', 'yes'),
(188, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'theme_mods_104', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:39;}', 'yes'),
(214, '_site_transient_timeout_browser_b39078c92d6f71b2291aafac6db60f8f', '1641389195', 'no'),
(215, '_site_transient_browser_b39078c92d6f71b2291aafac6db60f8f', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"95.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(216, '_site_transient_timeout_php_check_26328e95a1a09d326a615e4b43668741', '1641389196', 'no'),
(217, '_site_transient_php_check_26328e95a1a09d326a615e4b43668741', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(234, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641298251;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:39:\"wp-booking-system/wp-booking-system.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/wp-booking-system\";s:4:\"slug\";s:17:\"wp-booking-system\";s:6:\"plugin\";s:39:\"wp-booking-system/wp-booking-system.php\";s:11:\"new_version\";s:6:\"2.0.15\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-booking-system/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-booking-system.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-booking-system/assets/icon-256x256.png?rev=974608\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-booking-system/assets/icon-128x128.png?rev=974608\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wp-booking-system/assets/banner-1544x500.png?rev=2138047\";s:2:\"1x\";s:72:\"https://ps.w.org/wp-booking-system/assets/banner-772x250.png?rev=2138063\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:16:\"104Form/form.php\";s:3:\"1.0\";s:39:\"wp-booking-system/wp-booking-system.php\";s:6:\"2.0.15\";}}', 'no'),
(235, 'wpbs_version', '2.0.15', 'yes'),
(236, 'wpbs_first_activation', '1640881505', 'yes'),
(237, 'widget_wpbs_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'widget_wpbs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'wpbs_settings', 'a:7:{s:29:\"booking_selection_hover_color\";s:7:\"#dd9933\";s:32:\"booking_selection_selected_color\";s:7:\"#3fcca1\";s:16:\"active_languages\";a:1:{i:0;s:2:\"fr\";}s:12:\"form_styling\";s:5:\"theme\";s:21:\"recaptcha_v2_site_key\";s:0:\"\";s:23:\"recaptcha_v2_secret_key\";s:0:\"\";s:13:\"always_update\";s:1:\"1\";}', 'yes'),
(253, '_site_transient_timeout_wp_remote_block_patterns_9576c79e4c39db1221d8550037cd4945', '1641302536', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(254, '_site_transient_wp_remote_block_patterns_9576c79e4c39db1221d8550037cd4945', 'a:26:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:1332;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:8:\"Citation\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:671:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"Un portrait de profil d’une femme portant un pull à col roulé ocre et un sac blanc. Elle regarde en l’air et ferme les yeux.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>« Contribuer me donne l’impression d’être utile à la planète »</p><cite>— Anna Wong, <em>Bénévole</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1045:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"Un portrait de profil d’une femme portant un pull à col roulé ocre et un sac blanc. Elle regarde en l’air et ferme les yeux.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>« Contribuer me donne l’impression d’être utile à la planète »</p><cite>— Anna Wong, <em>Bénévole</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:1322;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:48:\"Deux colonnes de texte avec des titres décalés\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2114:\"\n<div class=\"wp-container-61d43be81b647 wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Inspiration océanique</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Enroulant des voiles autour de leurs têtes, les femmes marchèrent sur le pont. Ils descendaient maintenant progressivement le fleuve, dépassant les formes sombres des navires à l’ancre, et Londres était un fourmillement de lumières avec une voûte jaune pâle qui tombait au-dessus. Il y avait les lumières des grands théâtres, les lumières des longues rues, les lumières qui indiquaient d’immenses espaces de confort domestique, les lumières qui pendaient haut dans l’air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Aucune obscurité ne s’installerait jamais sur ces lampes, comme aucune obscurité ne s’était installée sur elles depuis des centaines d’années. Il semblait effrayant que la ville flambât à jamais au même endroit ; effrayant du moins pour les gens qui partaient à l’aventure sur la mer, et qui la voyaient comme un monticule circonscrit, éternellement brûlé, éternellement balafré. Du pont du navire, la grande ville apparaissait comme une figure recroquevillée et frêle, un miséreux sédentaire.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:46:\"Deux colonnes de texte avec un titre décalé.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3036:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Inspiration océanique</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Enroulant des voiles autour de leurs têtes, les femmes marchèrent sur le pont. Ils descendaient maintenant progressivement le fleuve, dépassant les formes sombres des navires à l’ancre, et Londres était un fourmillement de lumières avec une voûte jaune pâle qui tombait au-dessus. Il y avait les lumières des grands théâtres, les lumières des longues rues, les lumières qui indiquaient d’immenses espaces de confort domestique, les lumières qui pendaient haut dans l’air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Aucune obscurité ne s’installerait jamais sur ces lampes, comme aucune obscurité ne s’était installée sur elles depuis des centaines d’années. Il semblait effrayant que la ville flambât à jamais au même endroit ; effrayant du moins pour les gens qui partaient à l’aventure sur la mer, et qui la voyaient comme un monticule circonscrit, éternellement brûlé, éternellement balafré. Du pont du navire, la grande ville apparaissait comme une figure recroquevillée et frêle, un miséreux sédentaire.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:1334;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Deux colonnes de texte et titre\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1509:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>Le voyage avait commencé, et avait commencé heureusement avec un ciel bleu doux, et une mer calme.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">Ils la suivirent sur le pont. Toute la fumée et les maisons avaient disparu, et le navire se trouvait dans un large espace de mer très frais et clair, bien que pâle dans la lumière du matin. Ils avaient laissé Londres assise dans sa boue. Une ligne d’ombre très mince s’effilait à l’horizon, à peine assez épaisse pour soutenir le poids de Paris, qui pourtant reposait dessus. Ils étaient libres des routes, libres des hommes, et la même exaltation de leur liberté les traversait tous.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">Le navire avançait tranquillement à travers de petites vagues qui le giflaient puis pétillaient comme de l’eau effervescente, laissant une petite bordure de bulles et d’écume de chaque côté. Au-dessus, le ciel incolore d’octobre était finement voilé comme par la traînée de fumée d’un feu de bois, et l’air était merveilleusement salé et vivifiant. En effet, il faisait trop froid pour rester immobile. Mme Ambrose avait glissé son bras dans celui de son mari, et tandis qu’ils s’éloignaient, on pouvait voir à la façon dont sa joue inclinée se tournait vers la sienne qu’elle avait quelque chose de personnel à lui confier.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:54:\"Deux colonnes de texte précédées par un long titre.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1889:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>Le voyage avait commencé, et avait commencé heureusement avec un ciel bleu doux, et une mer calme.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">Ils la suivirent sur le pont. Toute la fumée et les maisons avaient disparu, et le navire se trouvait dans un large espace de mer très frais et clair, bien que pâle dans la lumière du matin. Ils avaient laissé Londres assise dans sa boue. Une ligne d’ombre très mince s’effilait à l’horizon, à peine assez épaisse pour soutenir le poids de Paris, qui pourtant reposait dessus. Ils étaient libres des routes, libres des hommes, et la même exaltation de leur liberté les traversait tous.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">Le navire avançait tranquillement à travers de petites vagues qui le giflaient puis pétillaient comme de l’eau effervescente, laissant une petite bordure de bulles et d’écume de chaque côté. Au-dessus, le ciel incolore d’octobre était finement voilé comme par la traînée de fumée d’un feu de bois, et l’air était merveilleusement salé et vivifiant. En effet, il faisait trop froid pour rester immobile. Mme Ambrose avait glissé son bras dans celui de son mari, et tandis qu’ils s’éloignaient, on pouvait voir à la façon dont sa joue inclinée se tournait vers la sienne qu’elle avait quelque chose de personnel à lui confier.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:1272;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Deux images côte à côte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:674:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"Une vue aérienne de vagues s’écrasant sur le bord de mer.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"Une vue aérienne d’un champ. Une route est visible dans le coin en haut à droite.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:52:\"Une galerie d’images avec deux images d’exemple.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:764:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"Une vue aérienne de vagues s’écrasant sur le bord de mer.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"Une vue aérienne d’un champ. Une route est visible dans le coin en haut à droite.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:1325;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:44:\"Large en-tête avec texte aligné à gauche.\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1098:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forêt.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Même un enfant sait combien la forêt est précieuse. L’odeur fraîche des arbres, à vous couper le souffle. L’écho des oiseaux volant au-dessus de cette magnitude dense. Un climat stable, une vie durable et diversifiée et une source de culture. Pourtant, les forêts et d’autres écosystèmes sont en péril, menacés de devenir des terres de culture, des pâturages ou des plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:35:\"Bannière avec une citation en haut\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1689:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forêt.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Même un enfant sait combien la forêt est précieuse. L’odeur fraîche des arbres, à vous couper le souffle. L’écho des oiseaux volant au-dessus de cette magnitude dense. Un climat stable, une vie durable et diversifiée et une source de culture. Pourtant, les forêts et d’autres écosystèmes sont en péril, menacés de devenir des terres de culture, des pâturages ou des plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:1324;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large en-tête avec texte et bouton\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1114:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Outre-mer :</em></strong><br><strong><em>de 1500 à 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">Une exposition sur les différentes représentations de l’océan à travers le temps, entre le seizième et le vingtième siècle. Elle se déroule dans notre salle ouverte au <em>deuxième étage</em>.</p>\n\n\n\n<div class=\"wp-container-61d43be81e62d wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visitez</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:84:\"Une grande en-tête avec une image d’arrière-plan, un texte et un bouton en haut.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1897:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Outre-mer :</em></strong><br><strong><em>de 1500 à 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">Une exposition sur les différentes représentations de l’océan à travers le temps, entre le seizième et le vingtième siècle. Elle se déroule dans notre salle ouverte au <em>deuxième étage</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visitez</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:1803;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Média et texte avec image sur la droite\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:700:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"Un paysage vert et marron avec un océan bleu brillant et un ciel plutôt nuageux, réalisé à la peinture à l’huile.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Rivage avec une mer bleue</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris (Américaine, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:74:\"Bloc média et bloc texte, avec l’image à droite et le texte à gauche.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1153:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"Un paysage vert et marron avec un océan bleu brillant et un ciel plutôt nuageux, réalisé à la peinture à l’huile.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Rivage avec une mer bleue</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris (Américaine, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:1355;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Média et texte avec image sur la gauche\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:534:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Espaces ouverts</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Voir l’étude de cas ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:74:\"Bloc média et bloc texte, avec l’image à gauche et le texte à droite.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:841:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Espaces ouverts</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Voir l’étude de cas ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:1323;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:82:\"Média et texte dans un conteneur prenant la totalité de la hauteur de l’écran\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1332:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Détail d’une terre sèche, craquelée.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>Quel est le problème ?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Les arbres sont aujourd’hui plus importants que jamais. Plus de 10 000 produits seraient fabriqués à partir d’arbres. Les procédés chimiques permettent à l’humble tas de bois de produire des substances synthétiques, des plastiques et des tissus qui dépassaient l’entendement lorsqu’une hache a abattu pour la première fois un arbre du Texas.</p>\n\n\n\n<div class=\"wp-container-61d43be8209ad wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">En savoir plus</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:90:\"Bloc média et bloc texte, avec l’image à gauche et le texte à droite, dont un bouton.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1975:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Détail d’une terre sèche, craquelée.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>Quel est le problème ?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Les arbres sont aujourd’hui plus importants que jamais. Plus de 10 000 produits seraient fabriqués à partir d’arbres. Les procédés chimiques permettent à l’humble tas de bois de produire des substances synthétiques, des plastiques et des tissus qui dépassaient l’entendement lorsqu’une hache a abattu pour la première fois un arbre du Texas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">En savoir plus</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:1326;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Titre\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:372:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">Nous sommes un studio situé à Berlin, avec une forte expérience internationale dans les domaines de l’architecture, de l’urbanisme et de l’aménagement intérieur. Nous croyons au partage des connaissances et à la promotion du dialogue pour accroître le potentiel créatif de la collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:14:\"Texte du titre\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:490:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">Nous sommes un studio situé à Berlin, avec une forte expérience internationale dans les domaines de l’architecture, de l’urbanisme et de l’aménagement intérieur. Nous croyons au partage des connaissances et à la promotion du dialogue pour accroître le potentiel créatif de la collaboration.</h2>\n<!-- /wp:heading -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:4952;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Trois colonnes avec des images décalées\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1053:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Détail d’une fenêtre d’un immeuble blanc.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Détail du coin d’un immeuble blanc avec des points saillants et des coins arrondis.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:50:\"Trois colonnes avec des images ayant un décalage.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1729:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Détail d’une fenêtre d’un immeuble blanc.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Détail du coin d’un immeuble blanc avec des points saillants et des coins arrondis.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:1321;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Trois colonnes avec images et texte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2835:\"\n<div class=\"wp-container-61d43be822e73 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ÉCOSYSTÈME</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Croissance positive.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>La Nature</em>, dans le sens courant, désigne les essences inchangées par l’homme ; l’espace, l’air, le fleuve, la feuille.&nbsp;<em>L’Art</em>&nbsp;s’applique au mélange de sa volonté avec les mêmes choses, comme dans une maison, un canal, une statue, un tableau. Mais ses opérations prises ensemble sont si insignifiantes, un peu d’écaillage, de cuisson, de rapiéçage, de lavage, que dans une impression aussi grandiose que celle du monde sur l’esprit humain, elles ne changent pas le résultat.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Le soleil se frayant un chemin à travers une forêt dense.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Des éoliennes se tiennent sur une plaine herbeuse, avec un ciel bleu en arrière-plan.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Le soleil brille au dessus d’une crête donnant sur le bord de mer. Plus loin, une voiture est visible.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Sans doute n’avons-nous pas de questions à poser qui soient sans réponse. Nous devons faire confiance à la perfection de la création au point de croire que, quelle que soit la curiosité que l’ordre des choses a éveillée dans notre esprit, l’ordre des choses peut la satisfaire. La condition de chaque homme est une solution en hiéroglyphes aux questions qu’il poserait.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:96:\"Trois colonnes avec des images et du texte, avec un espacement vertical pour un aspect décalé.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:4175:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ÉCOSYSTÈME</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Croissance positive.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>La Nature</em>, dans le sens courant, désigne les essences inchangées par l’homme ; l’espace, l’air, le fleuve, la feuille.&nbsp;<em>L’Art</em>&nbsp;s’applique au mélange de sa volonté avec les mêmes choses, comme dans une maison, un canal, une statue, un tableau. Mais ses opérations prises ensemble sont si insignifiantes, un peu d’écaillage, de cuisson, de rapiéçage, de lavage, que dans une impression aussi grandiose que celle du monde sur l’esprit humain, elles ne changent pas le résultat.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Le soleil se frayant un chemin à travers une forêt dense.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Des éoliennes se tiennent sur une plaine herbeuse, avec un ciel bleu en arrière-plan.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Le soleil brille au dessus d’une crête donnant sur le bord de mer. Plus loin, une voiture est visible.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Sans doute n’avons-nous pas de questions à poser qui soient sans réponse. Nous devons faire confiance à la perfection de la création au point de croire que, quelle que soit la curiosité que l’ordre des choses a éveillée dans notre esprit, l’ordre des choses peut la satisfaire. La condition de chaque homme est une solution en hiéroglyphes aux questions qu’il poserait.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:1320;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Trois colonnes de texte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:869:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Visite virtuelle ↗</a></strong></h3>\n\n\n\n<p>Parcourez le musée depuis votre ordinateur. Idéal pour les écoles et les événements.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Expos actuelles ↗</a></strong></h3>\n\n\n\n<p>Suivez nos actualités et parcourez nos expositions en cours ici.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Infos utiles ↗</a></strong></h3>\n\n\n\n<p>Découvrez nos horaires d’ouverture, les prix des billets et les réductions.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:24:\"Trois colonnes de texte.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1564:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Visite virtuelle ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Parcourez le musée depuis votre ordinateur. Idéal pour les écoles et les événements.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Expos actuelles ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Suivez nos actualités et parcourez nos expositions en cours ici.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Infos utiles ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Découvrez nos horaires d’ouverture, les prix des billets et les réductions.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&rsquo;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:14;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:15;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1082:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-container-61d43be826354 wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:16;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1221:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&rsquo;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-container-61d43be827240 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:17;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:18;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:19;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:650:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>« Contributing makes me feel like I&rsquo;m being useful to the planet. »</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:20;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:21;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2646:\"\n<div class=\"wp-container-61d43be82af8c wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&rsquo;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:22;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:23;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&rsquo;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:24;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1915:\"\n<div class=\"wp-container-61d43be82db5f wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:25;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(256, '_site_transient_timeout_theme_roots', '1641303675', 'no'),
(257, '_site_transient_theme_roots', 'a:2:{i:104;s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1640174424'),
(5, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1640174435'),
(9, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(10, 3, '_wp_trash_meta_status', 'draft'),
(11, 3, '_wp_trash_meta_time', '1640174435'),
(12, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(13, 8, '_wp_trash_meta_status', 'publish'),
(14, 8, '_wp_trash_meta_time', '1640611223'),
(21, 12, '_wp_attached_file', '2021/12/formesgeometriques.svg'),
(22, 13, '_wp_attached_file', '2021/12/quadrillage.svg'),
(23, 14, '_wp_attached_file', '2021/12/fond-voiture.svg'),
(24, 16, '_edit_lock', '1640885347:1'),
(25, 16, '_wp_page_template', 'template-page.php'),
(26, 25, '_edit_last', '1'),
(27, 25, '_edit_lock', '1641301859:1'),
(28, 29, '_edit_lock', '1641302269:1'),
(29, 31, '_wp_trash_meta_status', 'publish'),
(30, 31, '_wp_trash_meta_time', '1641299112'),
(31, 29, '_edit_last', '1'),
(32, 29, 'cards_titre-carte1', 'Solidarité'),
(33, 29, '_cards_titre-carte1', 'field_61d43b3c80b80'),
(34, 29, 'cards_description-carte1', 'Un tiers-lieu qui vous rassemble via une volonté d\'écologie et d\'économie sociale. Réparez et partagez ! '),
(35, 29, '_cards_description-carte1', 'field_61d43b5080b81'),
(36, 29, 'cards', ''),
(37, 29, '_cards', 'field_61d43b2680b7f'),
(38, 32, 'cards_titre-carte1', 'Solidarité'),
(39, 32, '_cards_titre-carte1', 'field_61d43b3c80b80'),
(40, 32, 'cards_description-carte1', 'Un tiers-lieu qui vous rassemble via une volonté d\'écologie et d\'économie sociale. Réparez et partagez ! '),
(41, 32, '_cards_description-carte1', 'field_61d43b5080b81'),
(42, 32, 'cards', ''),
(43, 32, '_cards', 'field_61d43b2680b7f'),
(44, 34, 'cards_titre-carte1', 'Solidarité'),
(45, 34, '_cards_titre-carte1', 'field_61d43b3c80b80'),
(46, 34, 'cards_description-carte1', 'Un tiers-lieu qui vous rassemble via une volonté d\'écologie et d\'économie sociale. Réparez et partagez ! '),
(47, 34, '_cards_description-carte1', 'field_61d43b5080b81'),
(48, 34, 'cards', ''),
(49, 34, '_cards', 'field_61d43b2680b7f'),
(50, 35, 'cards_titre-carte1', 'Solidarité'),
(51, 35, '_cards_titre-carte1', 'field_61d43b3c80b80'),
(52, 35, 'cards_description-carte1', 'Un tiers-lieu qui vous rassemble via une volonté d\'écologie et d\'économie sociale. Réparez et partagez ! '),
(53, 35, '_cards_description-carte1', 'field_61d43b5080b81'),
(54, 35, 'cards', ''),
(55, 35, '_cards', 'field_61d43b2680b7f'),
(56, 36, 'cards_titre-carte1', 'Solidarité'),
(57, 36, '_cards_titre-carte1', 'field_61d43b3c80b80'),
(58, 36, 'cards_description-carte1', 'Un tiers-lieu qui vous rassemble via une volonté d\'écologie et d\'économie sociale. Réparez et partagez ! '),
(59, 36, '_cards_description-carte1', 'field_61d43b5080b81'),
(60, 36, 'cards', ''),
(61, 36, '_cards', 'field_61d43b2680b7f'),
(62, 37, 'cards_titre-carte1', 'Solidarité'),
(63, 37, '_cards_titre-carte1', 'field_61d43b3c80b80'),
(64, 37, 'cards_description-carte1', 'Un tiers-lieu qui vous rassemble via une volonté d\'écologie et d\'économie sociale. Réparez et partagez ! '),
(65, 37, '_cards_description-carte1', 'field_61d43b5080b81'),
(66, 37, 'cards', ''),
(67, 37, '_cards', 'field_61d43b2680b7f'),
(68, 38, '_wp_trash_meta_status', 'publish'),
(69, 38, '_wp_trash_meta_time', '1641302305'),
(70, 41, '_wp_trash_meta_status', 'publish'),
(71, 41, '_wp_trash_meta_time', '1641302324');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-22 12:59:03', '2021-12-22 11:59:03', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2021-12-22 13:00:24', '2021-12-22 12:00:24', '', 0, 'http://localhost/le104/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-22 12:59:03', '2021-12-22 11:59:03', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/le104/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2021-12-22 13:00:35', '2021-12-22 12:00:35', '', 0, 'http://localhost/le104/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-22 12:59:03', '2021-12-22 11:59:03', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/le104.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2021-12-22 13:00:35', '2021-12-22 12:00:35', '', 0, 'http://localhost/le104/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-12-22 13:00:24', '2021-12-22 12:00:24', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-12-22 13:00:24', '2021-12-22 12:00:24', '', 1, 'http://localhost/le104/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-12-22 13:00:35', '2021-12-22 12:00:35', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/le104/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-22 13:00:35', '2021-12-22 12:00:35', '', 2, 'http://localhost/le104/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-12-22 13:00:35', '2021-12-22 12:00:35', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/le104.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-12-22 13:00:35', '2021-12-22 12:00:35', '', 3, 'http://localhost/le104/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-12-27 14:20:22', '2021-12-27 13:20:22', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-27 13:20:22\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-27 13:20:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '530a74d9-b936-4bc2-8f9c-a60c84266dfb', '', '', '2021-12-27 14:20:22', '2021-12-27 13:20:22', '', 0, 'http://localhost/le104/530a74d9-b936-4bc2-8f9c-a60c84266dfb/', 0, 'customize_changeset', '', 0),
(12, 1, '2021-12-29 12:36:17', '2021-12-29 11:36:17', '', 'formesgeometriques', '', 'inherit', 'open', 'closed', '', 'formesgeometriques-2', '', '', '2021-12-29 12:36:17', '2021-12-29 11:36:17', '', 0, 'http://localhost/le104/wp-content/uploads/2021/12/formesgeometriques.svg', 0, 'attachment', 'image/svg+xml', 0),
(13, 1, '2021-12-29 12:38:10', '2021-12-29 11:38:10', '', 'quadrillage', '', 'inherit', 'open', 'closed', '', 'quadrillage-2', '', '', '2021-12-29 12:38:10', '2021-12-29 11:38:10', '', 0, 'http://localhost/le104/wp-content/uploads/2021/12/quadrillage.svg', 0, 'attachment', 'image/svg+xml', 0),
(14, 1, '2021-12-29 12:39:04', '2021-12-29 11:39:04', '', 'fond-voiture', '', 'inherit', 'open', 'closed', '', 'fond-voiture-2', '', '', '2021-12-29 12:39:04', '2021-12-29 11:39:04', '', 0, 'http://localhost/le104/wp-content/uploads/2021/12/fond-voiture.svg', 0, 'attachment', 'image/svg+xml', 0),
(15, 1, '2021-12-29 14:26:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-29 14:26:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/le104/?p=15', 0, 'post', '', 0),
(16, 1, '2021-12-30 17:37:06', '2021-12-30 16:37:06', '', 'Réservation', '', 'publish', 'closed', 'closed', '', 'reservation', '', '', '2021-12-30 17:51:37', '2021-12-30 16:51:37', '', 0, 'http://localhost/le104/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-12-30 17:37:06', '2021-12-30 16:37:06', '', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-12-30 17:37:06', '2021-12-30 16:37:06', '', 16, 'http://localhost/le104/?p=17', 0, 'revision', '', 0),
(19, 1, '2021-12-30 17:38:39', '2021-12-30 16:38:39', '<!-- wp:wp-booking-system/single-calendar /-->', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-12-30 17:38:39', '2021-12-30 16:38:39', '', 16, 'http://localhost/le104/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-12-30 17:41:25', '2021-12-30 16:41:25', '<!-- wp:wp-booking-system/single-calendar {\"id\":\"1\",\"form_id\":\"1\",\"language\":\"fr\"} /-->', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-12-30 17:41:25', '2021-12-30 16:41:25', '', 16, 'http://localhost/le104/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-12-30 17:47:09', '2021-12-30 16:47:09', '<!-- wp:wp-booking-system/single-calendar {\"id\":\"1\",\"form_id\":\"1\",\"language\":\"fr\"} /-->\n\n<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-12-30 17:47:09', '2021-12-30 16:47:09', '', 16, 'http://localhost/le104/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-12-30 17:51:37', '2021-12-30 16:51:37', '', 'Réservation', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-12-30 17:51:37', '2021-12-30 16:51:37', '', 16, 'http://localhost/le104/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-01-04 13:11:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-01-04 13:11:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/le104/?post_type=acf-field-group&p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2022-01-04 13:11:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-01-04 13:11:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/le104/?post_type=acf-field-group&p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2022-01-04 13:20:52', '2022-01-04 12:20:52', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'services', 'services', 'publish', 'closed', 'closed', '', 'group_61d43b1b3c87b', '', '', '2022-01-04 14:12:53', '2022-01-04 13:12:53', '', 0, 'http://localhost/le104/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2022-01-04 13:20:52', '2022-01-04 12:20:52', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Cards', 'cards', 'publish', 'closed', 'closed', '', 'field_61d43b2680b7f', '', '', '2022-01-04 13:20:52', '2022-01-04 12:20:52', '', 25, 'http://localhost/le104/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2022-01-04 13:20:52', '2022-01-04 12:20:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:10:\"titre-card\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre-carte1', 'titre-carte1', 'publish', 'closed', 'closed', '', 'field_61d43b3c80b80', '', '', '2022-01-04 14:12:53', '2022-01-04 13:12:53', '', 26, 'http://localhost/le104/?post_type=acf-field&#038;p=27', 0, 'acf-field', '', 0),
(28, 1, '2022-01-04 13:20:52', '2022-01-04 12:20:52', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:10:\"texte-card\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'description-carte1', 'description-carte1', 'publish', 'closed', 'closed', '', 'field_61d43b5080b81', '', '', '2022-01-04 14:12:53', '2022-01-04 13:12:53', '', 26, 'http://localhost/le104/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2022-01-04 13:24:47', '2022-01-04 12:24:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'index', '', '', '2022-01-04 14:17:48', '2022-01-04 13:17:48', '', 0, 'http://localhost/le104/?page_id=29', 0, 'page', '', 0),
(30, 1, '2022-01-04 13:24:47', '2022-01-04 12:24:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-01-04 13:24:47', '2022-01-04 12:24:47', '', 29, 'http://localhost/le104/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-01-04 13:25:12', '2022-01-04 12:25:12', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-04 12:25:12\"\n    },\n    \"page_on_front\": {\n        \"value\": \"29\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-04 12:25:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd894af6-fcd7-4926-9254-ed52ea088113', '', '', '2022-01-04 13:25:12', '2022-01-04 12:25:12', '', 0, 'http://localhost/le104/dd894af6-fcd7-4926-9254-ed52ea088113/', 0, 'customize_changeset', '', 0),
(32, 1, '2022-01-04 13:32:37', '2022-01-04 12:32:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-01-04 13:32:37', '2022-01-04 12:32:37', '', 29, 'http://localhost/le104/?p=32', 0, 'revision', '', 0),
(34, 1, '2022-01-04 14:16:22', '2022-01-04 13:16:22', '<style>\n@import url(\'https://fonts.googleapis.com/css2?family=Georama&display=swap\');<br />\n.titre-card, .texte-card {<br />\n        font-family: \'Georama\', sans-serif;<br />\n}<br />\n</style>', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-01-04 14:16:22', '2022-01-04 13:16:22', '', 29, 'http://localhost/le104/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-01-04 14:16:47', '2022-01-04 13:16:47', '<style>\n@import url(\'https://fonts.googleapis.com/css2?family=Georama&display=swap\');<br />\n.titre-card, .texte-card {<br />\n        font-family: \'Georama\', sans-serif !important;<br />\n}<br />\n</style>', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-01-04 14:16:47', '2022-01-04 13:16:47', '', 29, 'http://localhost/le104/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-01-04 14:17:26', '2022-01-04 13:17:26', '<style>@import url(\'https://fonts.googleapis.com/css2?family=Georama&display=swap\'); .titre-card, .texte-card {font-family: \'Georama\', sans-serif !important;}</style>', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-01-04 14:17:26', '2022-01-04 13:17:26', '', 29, 'http://localhost/le104/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-01-04 14:17:48', '2022-01-04 13:17:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-01-04 14:17:48', '2022-01-04 13:17:48', '', 29, 'http://localhost/le104/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-01-04 14:18:25', '2022-01-04 13:18:25', '{\n    \"custom_css[104]\": {\n        \"value\": \"@import url(\'https://fonts.googleapis.com/css2?family=Georama&display=swap\'); \\n\\n.titre-card, .texte-card {font-family: \'Georama\', sans-serif !important;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-04 13:18:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5530de72-9448-4f61-b1f0-2e761396b47c', '', '', '2022-01-04 14:18:25', '2022-01-04 13:18:25', '', 0, 'http://localhost/le104/5530de72-9448-4f61-b1f0-2e761396b47c/', 0, 'customize_changeset', '', 0),
(39, 1, '2022-01-04 14:18:25', '2022-01-04 13:18:25', '', '104', '', 'publish', 'closed', 'closed', '', '104', '', '', '2022-01-04 14:18:44', '2022-01-04 13:18:44', '', 0, 'http://localhost/le104/104/', 0, 'custom_css', '', 0),
(40, 1, '2022-01-04 14:18:25', '2022-01-04 13:18:25', '@import url(\'https://fonts.googleapis.com/css2?family=Georama&display=swap\'); \n\n.titre-card, .texte-card {font-family: \'Georama\', sans-serif !important;}', '104', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-01-04 14:18:25', '2022-01-04 13:18:25', '', 39, 'http://localhost/le104/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-01-04 14:18:44', '2022-01-04 13:18:44', '{\n    \"custom_css[104]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-01-04 13:18:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0c45f20-1031-4389-93c2-b337bac53cd5', '', '', '2022-01-04 14:18:44', '2022-01-04 13:18:44', '', 0, 'http://localhost/le104/e0c45f20-1031-4389-93c2-b337bac53cd5/', 0, 'customize_changeset', '', 0),
(42, 1, '2022-01-04 14:18:44', '2022-01-04 13:18:44', '', '104', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-01-04 14:18:44', '2022-01-04 13:18:44', '', 39, 'http://localhost/le104/?p=42', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', '104garage'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'coffee'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"7570af33ae2543fb6157bf4b8f18c1d24bc5b1692b7e0c3f11289da0a0b1a7be\";a:4:{s:10:\"expiration\";i:1641383983;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0\";s:5:\"login\";i:1640174383;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '15'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, '104garage', '$P$Be5p/Tz8dahzyVRd4FYgb6DhqpmSOA1', '104garage', 'a.bonnard@codeur.online', 'http://localhost/le104', '2021-12-22 11:59:03', '', 0, '104garage');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_bookings`
--

CREATE TABLE `wp_wpbs_bookings` (
  `id` bigint(10) NOT NULL,
  `calendar_id` bigint(10) NOT NULL,
  `form_id` bigint(10) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_bookings`
--

INSERT INTO `wp_wpbs_bookings` (`id`, `calendar_id`, `form_id`, `start_date`, `end_date`, `fields`, `status`, `is_read`, `date_created`, `date_modified`) VALUES
(1, 1, 1, '2022-01-13 00:00:00', '2022-01-13 00:00:00', '[{\"type\":\"dropdown\",\"id\":\"1\",\"values\":{\"default\":{\"label\":\"Domaine d&#039;intervention\",\"required\":\"on\",\"options\":[\"Feux\",\"Vitre\",\"Roues\",\"Autre\"],\"placeholder\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\"}},\"user_value\":\"Feux\"},{\"type\":\"textarea\",\"id\":\"2\",\"values\":{\"default\":{\"label\":\"Précisions\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}},\"user_value\":\"dsd\"},{\"type\":\"text\",\"id\":\"3\",\"values\":{\"default\":{\"label\":\"Nom\",\"required\":\"on\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}},\"user_value\":\"dsdsd\"},{\"type\":\"text\",\"id\":\"4\",\"values\":{\"default\":{\"label\":\"Téléphone\",\"required\":\"on\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}},\"user_value\":\"025896321552\"}]', 'trash', 1, '2021-12-30 18:25:48', '2021-12-30 18:29:31'),
(2, 1, 1, '2022-01-14 00:00:00', '2022-01-14 00:00:00', '[{\"type\":\"dropdown\",\"id\":\"1\",\"values\":{\"default\":{\"label\":\"Domaine d&#039;intervention\",\"required\":\"on\",\"options\":[\"Feux\",\"Vitre\",\"Roues\",\"Autre\"],\"placeholder\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\"}},\"user_value\":\"Feux\"},{\"type\":\"textarea\",\"id\":\"2\",\"values\":{\"default\":{\"label\":\"Précisions\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}},\"user_value\":\"dsd\"},{\"type\":\"text\",\"id\":\"3\",\"values\":{\"default\":{\"label\":\"Nom\",\"required\":\"on\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}},\"user_value\":\"dsdsd\"},{\"type\":\"text\",\"id\":\"4\",\"values\":{\"default\":{\"label\":\"Téléphone\",\"required\":\"on\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}},\"user_value\":\"025896321552\"}]', 'trash', 1, '2021-12-30 18:27:42', '2021-12-30 18:29:25');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_booking_meta`
--

CREATE TABLE `wp_wpbs_booking_meta` (
  `meta_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_booking_meta`
--

INSERT INTO `wp_wpbs_booking_meta` (`meta_id`, `booking_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'before_trash_status', 'pending'),
(2, 1, 'before_trash_status', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_calendars`
--

CREATE TABLE `wp_wpbs_calendars` (
  `id` bigint(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ical_hash` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_calendars`
--

INSERT INTO `wp_wpbs_calendars` (`id`, `name`, `date_created`, `date_modified`, `status`, `ical_hash`) VALUES
(1, 'Réservation', '2021-12-30 17:25:47', '2021-12-30 18:29:31', 'active', 'slbj1Cm1LYsbUOz0Bt761cddd8b30f6c');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_calendar_meta`
--

CREATE TABLE `wp_wpbs_calendar_meta` (
  `meta_id` bigint(20) NOT NULL,
  `calendar_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_calendar_meta`
--

INSERT INTO `wp_wpbs_calendar_meta` (`meta_id`, `calendar_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'calendar_name_translation_fr', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_events`
--

CREATE TABLE `wp_wpbs_events` (
  `id` bigint(10) NOT NULL,
  `date_year` smallint(4) NOT NULL,
  `date_month` smallint(2) NOT NULL,
  `date_day` smallint(2) NOT NULL,
  `calendar_id` bigint(10) NOT NULL,
  `booking_id` bigint(10) NOT NULL,
  `legend_item_id` bigint(10) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tooltip` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_events`
--

INSERT INTO `wp_wpbs_events` (`id`, `date_year`, `date_month`, `date_day`, `calendar_id`, `booking_id`, `legend_item_id`, `description`, `tooltip`, `price`) VALUES
(1, 2021, 12, 1, 1, 0, 2, '', '', ''),
(2, 2021, 12, 3, 1, 0, 2, '', '', ''),
(3, 2021, 12, 9, 1, 0, 2, '', '', ''),
(4, 2022, 1, 4, 1, 0, 2, '', '', ''),
(5, 2022, 1, 9, 1, 0, 2, '', '', ''),
(6, 2022, 2, 15, 1, 0, 2, '', '', ''),
(7, 2022, 2, 20, 1, 0, 2, '', '', ''),
(8, 2022, 2, 21, 1, 0, 2, '', '', ''),
(9, 2022, 2, 26, 1, 0, 2, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_event_meta`
--

CREATE TABLE `wp_wpbs_event_meta` (
  `meta_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_forms`
--

CREATE TABLE `wp_wpbs_forms` (
  `id` bigint(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `status` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_forms`
--

INSERT INTO `wp_wpbs_forms` (`id`, `name`, `date_created`, `date_modified`, `status`, `fields`) VALUES
(1, 'Réservation', '2021-12-30 17:25:24', '2021-12-30 17:36:22', 'active', '[{\"type\":\"dropdown\",\"id\":\"1\",\"values\":{\"default\":{\"label\":\"Domaine d&#039;intervention\",\"required\":\"on\",\"options\":[\"Feux\",\"Vitre\",\"Roues\",\"Autre\"],\"placeholder\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\"}}},{\"type\":\"textarea\",\"id\":\"2\",\"values\":{\"default\":{\"label\":\"Précisions\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}}},{\"type\":\"text\",\"id\":\"3\",\"values\":{\"default\":{\"label\":\"Nom\",\"required\":\"on\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}}},{\"type\":\"text\",\"id\":\"4\",\"values\":{\"default\":{\"label\":\"Téléphone\",\"required\":\"on\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\",\"class\":\"\"},\"fr\":{\"label\":\"\",\"placeholder\":\"\",\"value\":\"\",\"description\":\"\"}}}]');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_form_meta`
--

CREATE TABLE `wp_wpbs_form_meta` (
  `meta_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_form_meta`
--

INSERT INTO `wp_wpbs_form_meta` (`meta_id`, `form_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'submit_button_label', 'Prendre RDV'),
(2, 1, 'form_confirmation_type', 'message'),
(3, 1, 'form_confirmation_message', 'Votre demande de réservation a été envoyée.\r\nNous reviendrons vers vous au plus vite pour confirmer.'),
(4, 1, 'wpbs_form_field_id_index', '5'),
(5, 1, 'form_strings_required_field', 'Ce champs est requis'),
(6, 1, 'form_strings_invalid_email', 'Adresse e-mail invalide'),
(7, 1, 'form_strings_select_date', 'Aucune date sélectionnée'),
(8, 1, 'form_strings_validation_errors', 'Merci de vérifier vos champs'),
(9, 1, 'admin_notification_enable', 'on'),
(10, 1, 'admin_notification_send_to', 'a.bonnard@codeur.online');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_legend_items`
--

CREATE TABLE `wp_wpbs_legend_items` (
  `id` bigint(10) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `color` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `color_text` text COLLATE utf8mb4_unicode_520_ci,
  `is_default` tinyint(1) NOT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `is_bookable` tinyint(1) NOT NULL,
  `auto_pending` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `calendar_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_legend_items`
--

INSERT INTO `wp_wpbs_legend_items` (`id`, `type`, `name`, `color`, `color_text`, `is_default`, `is_visible`, `is_bookable`, `auto_pending`, `calendar_id`) VALUES
(1, 'single', 'Available', '[\"#ddffcc\"]', NULL, 1, 1, 1, NULL, 1),
(2, 'single', 'Booked', '[\"#ffc0bd\"]', NULL, 0, 1, 0, 'booked', 1),
(3, 'split', 'Changeover 1', '[\"#ddffcc\",\"#ffc0bd\"]', NULL, 0, 0, 1, 'changeover_start', 1),
(4, 'split', 'Changeover 2', '[\"#ffc0bd\",\"#ddffcc\"]', NULL, 0, 0, 1, 'changeover_end', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpbs_legend_item_meta`
--

CREATE TABLE `wp_wpbs_legend_item_meta` (
  `meta_id` bigint(20) NOT NULL,
  `legend_item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wpbs_legend_item_meta`
--

INSERT INTO `wp_wpbs_legend_item_meta` (`meta_id`, `legend_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'translation_en', 'Available'),
(2, 1, 'translation_bg', 'Свободен'),
(3, 1, 'translation_ca', 'Disponible'),
(4, 1, 'translation_zh', '有空'),
(5, 1, 'translation_hr', 'Dostupno'),
(6, 1, 'translation_cz', 'Dostupný'),
(7, 1, 'translation_da', 'Ledig'),
(8, 1, 'translation_nl', 'Beschikbaar'),
(9, 1, 'translation_et', 'Saadaval'),
(10, 1, 'translation_fi', 'Käytettävissä'),
(11, 1, 'translation_fr', 'Disponible'),
(12, 1, 'translation_gl', 'Dispoñible'),
(13, 1, 'translation_de', 'Verfügbar'),
(14, 1, 'translation_el', 'Διαθέσιμος'),
(15, 1, 'translation_hu', 'Elérhető'),
(16, 1, 'translation_it', 'Disponibile'),
(17, 1, 'translation_jp', '利用可能'),
(18, 1, 'translation_lv', 'Brīvas vietas'),
(19, 1, 'translation_lt', 'Yra'),
(20, 1, 'translation_no', 'Tilgjengelig'),
(21, 1, 'translation_pl', 'Dostępny'),
(22, 1, 'translation_pt', 'Disponível'),
(23, 1, 'translation_ro', 'Disponibil'),
(24, 1, 'translation_ru', 'Доступный'),
(25, 1, 'translation_sr', 'Доступан'),
(26, 1, 'translation_sk', 'Dostupný'),
(27, 1, 'translation_sl', 'Veljaven'),
(28, 1, 'translation_es', 'Disponible'),
(29, 1, 'translation_sv', 'Tillgängliga'),
(30, 1, 'translation_tr', 'Mevcut'),
(31, 1, 'translation_ua', 'Доступні'),
(32, 2, 'translation_en', 'Booked'),
(33, 2, 'translation_bg', 'Резервирано'),
(34, 2, 'translation_ca', 'Reservat'),
(35, 2, 'translation_zh', '已訂'),
(36, 2, 'translation_hr', 'Rezerviran'),
(37, 2, 'translation_cz', 'Rezervováno'),
(38, 2, 'translation_da', 'Reserveret'),
(39, 2, 'translation_nl', 'Geboekt'),
(40, 2, 'translation_et', 'Broneeritud'),
(41, 2, 'translation_fi', 'Varattu'),
(42, 2, 'translation_fr', 'Réservé'),
(43, 2, 'translation_gl', 'Reservado'),
(44, 2, 'translation_de', 'Gebucht'),
(45, 2, 'translation_el', 'Κράτηση'),
(46, 2, 'translation_hu', 'Foglalt'),
(47, 2, 'translation_it', 'Riservato'),
(48, 2, 'translation_jp', '予約済み'),
(49, 2, 'translation_lv', 'Viss aizņemts'),
(50, 2, 'translation_lt', 'Užsakyta'),
(51, 2, 'translation_no', 'Bestilt'),
(52, 2, 'translation_pl', 'Zarezerwowane'),
(53, 2, 'translation_pt', 'Reservado'),
(54, 2, 'translation_ro', 'Rezervat'),
(55, 2, 'translation_ru', 'Бронирования'),
(56, 2, 'translation_sr', 'Резервисан'),
(57, 2, 'translation_sk', 'Rezervovaný'),
(58, 2, 'translation_sl', 'Rezervirano'),
(59, 2, 'translation_es', 'Reservado'),
(60, 2, 'translation_sv', 'Bokad'),
(61, 2, 'translation_tr', 'Rezervasyon'),
(62, 2, 'translation_ua', 'Забронювали');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_wpbs_bookings`
--
ALTER TABLE `wp_wpbs_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpbs_booking_meta`
--
ALTER TABLE `wp_wpbs_booking_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wpbs_calendars`
--
ALTER TABLE `wp_wpbs_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpbs_calendar_meta`
--
ALTER TABLE `wp_wpbs_calendar_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `calendar_id` (`calendar_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wpbs_events`
--
ALTER TABLE `wp_wpbs_events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpbs_event_meta`
--
ALTER TABLE `wp_wpbs_event_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wpbs_forms`
--
ALTER TABLE `wp_wpbs_forms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpbs_form_meta`
--
ALTER TABLE `wp_wpbs_form_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wpbs_legend_items`
--
ALTER TABLE `wp_wpbs_legend_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_wpbs_legend_item_meta`
--
ALTER TABLE `wp_wpbs_legend_item_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `legend_item_id` (`legend_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_bookings`
--
ALTER TABLE `wp_wpbs_bookings`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_booking_meta`
--
ALTER TABLE `wp_wpbs_booking_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_calendars`
--
ALTER TABLE `wp_wpbs_calendars`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_calendar_meta`
--
ALTER TABLE `wp_wpbs_calendar_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_events`
--
ALTER TABLE `wp_wpbs_events`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_event_meta`
--
ALTER TABLE `wp_wpbs_event_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_forms`
--
ALTER TABLE `wp_wpbs_forms`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_form_meta`
--
ALTER TABLE `wp_wpbs_form_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_legend_items`
--
ALTER TABLE `wp_wpbs_legend_items`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_wpbs_legend_item_meta`
--
ALTER TABLE `wp_wpbs_legend_item_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
