-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 06, 2022 at 02:55 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `optimum`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_commentmeta`
--

CREATE TABLE `wp_opti_commentmeta` (
                                       `meta_id` bigint(20) UNSIGNED NOT NULL,
                                       `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                       `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                                       `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_comments`
--

CREATE TABLE `wp_opti_comments` (
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
-- Dumping data for table `wp_opti_comments`
--

INSERT INTO `wp_opti_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-24 00:44:46', '2021-11-23 23:44:46', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_contacts`
--

CREATE TABLE `wp_opti_contacts` (
                                    `id` mediumint(9) NOT NULL,
                                    `first_name` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                    `last_name` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                    `mail` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                    `phone` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                    `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_contacts`
--

INSERT INTO `wp_opti_contacts` (`id`, `first_name`, `last_name`, `mail`, `phone`, `message`) VALUES
(1, 'Jean', 'Masso', 'jeanmasso06@gmail.com', '520772', 'khejkzahejbzadjskan dkslad d\r\ndjadl \r\ndajdlmaklmkz');

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_links`
--

CREATE TABLE `wp_opti_links` (
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
-- Table structure for table `wp_opti_options`
--

CREATE TABLE `wp_opti_options` (
                                   `option_id` bigint(20) UNSIGNED NOT NULL,
                                   `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                                   `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                   `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_options`
--

INSERT INTO `wp_opti_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress-optimum', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress-optimum', 'yes'),
(3, 'blogname', 'Optimum', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jeanmasso.pro@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:137:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"cours/?$\";s:25:\"index.php?post_type=cours\";s:38:\"cours/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=cours&feed=$matches[1]\";s:33:\"cours/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=cours&feed=$matches[1]\";s:25:\"cours/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=cours&paged=$matches[1]\";s:9:\"offres/?$\";s:26:\"index.php?post_type=offres\";s:39:\"offres/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=offres&feed=$matches[1]\";s:34:\"offres/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=offres&feed=$matches[1]\";s:26:\"offres/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=offres&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"cours/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"cours/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"cours/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cours/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"cours/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"cours/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"cours/([^/]+)/embed/?$\";s:38:\"index.php?cours=$matches[1]&embed=true\";s:26:\"cours/([^/]+)/trackback/?$\";s:32:\"index.php?cours=$matches[1]&tb=1\";s:46:\"cours/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?cours=$matches[1]&feed=$matches[2]\";s:41:\"cours/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?cours=$matches[1]&feed=$matches[2]\";s:34:\"cours/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?cours=$matches[1]&paged=$matches[2]\";s:41:\"cours/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?cours=$matches[1]&cpage=$matches[2]\";s:30:\"cours/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?cours=$matches[1]&page=$matches[2]\";s:22:\"cours/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"cours/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"cours/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cours/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"cours/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"cours/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"offres/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"offres/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"offres/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"offres/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"offres/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"offres/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"offres/([^/]+)/embed/?$\";s:39:\"index.php?offres=$matches[1]&embed=true\";s:27:\"offres/([^/]+)/trackback/?$\";s:33:\"index.php?offres=$matches[1]&tb=1\";s:47:\"offres/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?offres=$matches[1]&feed=$matches[2]\";s:42:\"offres/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?offres=$matches[1]&feed=$matches[2]\";s:35:\"offres/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?offres=$matches[1]&paged=$matches[2]\";s:42:\"offres/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?offres=$matches[1]&cpage=$matches[2]\";s:31:\"offres/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?offres=$matches[1]&page=$matches[2]\";s:23:\"offres/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"offres/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"offres/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"offres/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"offres/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"offres/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:27:\"optimum-contact/contact.php\";i:1;s:38:\"optimum-cours/reservations-lessons.php\";i:2;s:38:\"optimum-offres/reservations-offers.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:86:\"/Applications/MAMP/htdocs/wordpress-optimum/wp-content/themes/gymfitness/functions.php\";i:2;s:82:\"/Applications/MAMP/htdocs/wordpress-optimum/wp-content/themes/gymfitness/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'mythemeoptimum', 'yes'),
(41, 'stylesheet', 'mythemeoptimum', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1653263086', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_opti_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'widget_block', 'a:4:{i:5;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;i:8;a:1:{s:7:\"content\";s:90:\"<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\";}}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:7:\"block-8\";i:1;s:7:\"block-5\";i:2;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1641440687;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641440925;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1641469487;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1641512687;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641512755;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641516022;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1642031087;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1637714329;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(151, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"jeanmasso.pro@gmail.com\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1637711115;}', 'no'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(164, 'recovery_mode_email_last_sent', '1637807908', 'yes'),
(165, 'contact_db_version', '1.0', 'yes'),
(173, 'current_theme', 'Optimum Fitness', 'yes'),
(174, 'theme_mods_gymfitness', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:6;s:4:\"main\";i:6;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:9:\"logo_size\";i:35;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1637810228;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:7:\"block-8\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:11:\"social-icon\";a:0:{}s:24:\"woocommerce-shop-sidebar\";a:0:{}s:26:\"woocommerce-single-sidebar\";a:0:{}}}}', 'yes'),
(175, 'theme_switched', '', 'yes'),
(176, 'widget_vw_fitness_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_vw_fitness_about_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'widget_vw_fitness_contact_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(187, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(207, 'theme_mods_vw-fitness', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:6;s:6:\"footer\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:31:\"vw_fitness_logo_title_hide_show\";i:1;s:28:\"vw_fitness_tagline_hide_show\";i:0;s:32:\"vw_fitness_slider_content_option\";s:6:\"Center\";s:23:\"vw_fitness_width_option\";s:10:\"Full Width\";s:24:\"vw_fitness_theme_options\";s:10:\"One Column\";s:22:\"vw_fitness_page_layout\";s:10:\"One Column\";s:24:\"vw_fitness_loader_enable\";i:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1639613368;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:7:\"block-8\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:11:\"social-icon\";a:0:{}s:24:\"woocommerce-shop-sidebar\";a:0:{}s:26:\"woocommerce-single-sidebar\";a:0:{}}}}', 'yes'),
(239, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(282, 'category_children', 'a:0:{}', 'yes'),
(345, 'theme_mods_mythemeoptimum', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:0;s:4:\"main\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(397, '_site_transient_timeout_theme_roots', '1641439130', 'no'),
(398, '_site_transient_theme_roots', 'a:6:{s:10:\"gymfitness\";s:7:\"/themes\";s:14:\"mythemeoptimum\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:10:\"vw-fitness\";s:7:\"/themes\";}', 'no'),
(400, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1641437350;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.8.2\";s:7:\"updated\";s:19:\"2021-12-25 12:20:46\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.2/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(401, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641437355;s:7:\"checked\";a:6:{s:10:\"gymfitness\";s:3:\"0.2\";s:14:\"mythemeoptimum\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:10:\"vw-fitness\";s:5:\"3.5.4\";}s:8:\"response\";a:1:{s:10:\"vw-fitness\";a:6:{s:5:\"theme\";s:10:\"vw-fitness\";s:11:\"new_version\";s:5:\"3.5.5\";s:3:\"url\";s:40:\"https://wordpress.org/themes/vw-fitness/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/vw-fitness.3.5.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"7.2\";}}s:9:\"no_update\";a:4:{s:10:\"gymfitness\";a:6:{s:5:\"theme\";s:10:\"gymfitness\";s:11:\"new_version\";s:3:\"0.2\";s:3:\"url\";s:40:\"https://wordpress.org/themes/gymfitness/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/gymfitness.0.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(402, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641437357;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:38:\"optimum-offres/reservations-offers.php\";s:5:\"1.0.0\";s:27:\"optimum-contact/contact.php\";s:5:\"1.0.0\";s:38:\"optimum-cours/reservations-lessons.php\";s:5:\"1.0.0\";}}', 'no'),
(403, '_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', '1642042163', 'no'),
(404, '_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_postmeta`
--

CREATE TABLE `wp_opti_postmeta` (
                                    `meta_id` bigint(20) UNSIGNED NOT NULL,
                                    `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                    `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                                    `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_postmeta`
--

INSERT INTO `wp_opti_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'lesson.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1639698389:1'),
(4, 6, '_edit_lock', '1639702895:1'),
(5, 8, '_edit_lock', '1639713060:1'),
(6, 10, '_edit_lock', '1639713610:1'),
(7, 12, '_edit_lock', '1639717388:1'),
(8, 15, '_menu_item_type', 'custom'),
(9, 15, '_menu_item_menu_item_parent', '0'),
(10, 15, '_menu_item_object_id', '15'),
(11, 15, '_menu_item_object', 'custom'),
(12, 15, '_menu_item_target', ''),
(13, 15, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(14, 15, '_menu_item_xfn', ''),
(15, 15, '_menu_item_url', 'http://localhost:8888/wordpress-optimum'),
(24, 17, '_menu_item_type', 'post_type'),
(25, 17, '_menu_item_menu_item_parent', '66'),
(26, 17, '_menu_item_object_id', '6'),
(27, 17, '_menu_item_object', 'page'),
(28, 17, '_menu_item_target', ''),
(29, 17, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(30, 17, '_menu_item_xfn', ''),
(31, 17, '_menu_item_url', ''),
(32, 18, '_menu_item_type', 'post_type'),
(33, 18, '_menu_item_menu_item_parent', '66'),
(34, 18, '_menu_item_object_id', '2'),
(35, 18, '_menu_item_object', 'page'),
(36, 18, '_menu_item_target', ''),
(37, 18, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(38, 18, '_menu_item_xfn', ''),
(39, 18, '_menu_item_url', ''),
(48, 20, '_menu_item_type', 'post_type'),
(49, 20, '_menu_item_menu_item_parent', '0'),
(50, 20, '_menu_item_object_id', '10'),
(51, 20, '_menu_item_object', 'page'),
(52, 20, '_menu_item_target', ''),
(53, 20, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(54, 20, '_menu_item_xfn', ''),
(55, 20, '_menu_item_url', ''),
(56, 21, '_menu_item_type', 'post_type'),
(57, 21, '_menu_item_menu_item_parent', '0'),
(58, 21, '_menu_item_object_id', '12'),
(59, 21, '_menu_item_object', 'page'),
(60, 21, '_menu_item_target', ''),
(61, 21, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(62, 21, '_menu_item_xfn', ''),
(63, 21, '_menu_item_url', ''),
(66, 22, '_edit_lock', '1639698402:1'),
(67, 25, '_menu_item_type', 'post_type'),
(68, 25, '_menu_item_menu_item_parent', '66'),
(69, 25, '_menu_item_object_id', '22'),
(70, 25, '_menu_item_object', 'page'),
(71, 25, '_menu_item_target', ''),
(72, 25, '_menu_item_classes', 'a:1:{i:0;s:13:\"dropdown-item\";}'),
(73, 25, '_menu_item_xfn', ''),
(74, 25, '_menu_item_url', ''),
(81, 30, '_edit_lock', '1637815844:1'),
(82, 31, '_wp_attached_file', '2021/11/optimum-1.jpg'),
(83, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:21:\"2021/11/optimum-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"optimum-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"optimum-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"optimum-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"optimum-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"optimum-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"vw-fitness-homepage-thumb\";a:4:{s:4:\"file\";s:21:\"optimum-1-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 32, '_wp_attached_file', '2021/11/optimum-2.jpg'),
(85, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2021/11/optimum-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"optimum-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"optimum-2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"optimum-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"optimum-2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"optimum-2-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"vw-fitness-homepage-thumb\";a:4:{s:4:\"file\";s:21:\"optimum-2-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 33, '_wp_attached_file', '2021/11/optimum-3.jpg'),
(87, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:21:\"2021/11/optimum-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"optimum-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"optimum-3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"optimum-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"optimum-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"optimum-3-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"vw-fitness-homepage-thumb\";a:4:{s:4:\"file\";s:21:\"optimum-3-240x145.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS-1Ds Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 30, '_thumbnail_id', '32'),
(89, 30, '_edit_last', '1'),
(90, 30, 'price', '4000'),
(91, 30, 'places', '10'),
(92, 34, '_edit_lock', '1637815839:1'),
(93, 34, '_thumbnail_id', '31'),
(94, 34, '_edit_last', '1'),
(95, 34, 'price', '3000'),
(96, 34, 'places', '10'),
(97, 35, '_edit_lock', '1637815835:1'),
(98, 35, '_edit_last', '1'),
(99, 35, 'price', '6000'),
(100, 36, '_edit_lock', '1639711418:1'),
(101, 36, '_edit_last', '1'),
(102, 36, 'price', '6000'),
(103, 37, '_edit_lock', '1639711733:1'),
(104, 37, '_thumbnail_id', '33'),
(105, 37, '_edit_last', '1'),
(106, 37, 'price', '5000'),
(107, 37, 'places', '6'),
(119, 43, '_edit_lock', '1639711641:1'),
(120, 43, '_edit_last', '1'),
(121, 43, 'price', '9000'),
(122, 44, '_edit_lock', '1639711512:1'),
(123, 44, '_edit_last', '1'),
(124, 44, 'price', '110000'),
(133, 49, '_menu_item_type', 'post_type'),
(134, 49, '_menu_item_menu_item_parent', '0'),
(135, 49, '_menu_item_object_id', '8'),
(136, 49, '_menu_item_object', 'page'),
(137, 49, '_menu_item_target', ''),
(138, 49, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(139, 49, '_menu_item_xfn', ''),
(140, 49, '_menu_item_url', ''),
(142, 15, '_wp_old_date', '2021-11-24'),
(144, 17, '_wp_old_date', '2021-11-24'),
(145, 18, '_wp_old_date', '2021-11-24'),
(146, 25, '_wp_old_date', '2021-11-24'),
(147, 20, '_wp_old_date', '2021-11-24'),
(148, 21, '_wp_old_date', '2021-11-24'),
(150, 8, '_wp_page_template', 'offer.php'),
(158, 8, '_edit_last', '1'),
(159, 66, '_menu_item_type', 'custom'),
(160, 66, '_menu_item_menu_item_parent', '0'),
(161, 66, '_menu_item_object_id', '66'),
(162, 66, '_menu_item_object', 'custom'),
(163, 66, '_menu_item_target', ''),
(164, 66, '_menu_item_classes', 'a:2:{i:0;s:8:\"nav-item\";i:1;s:8:\"dropdown\";}'),
(165, 66, '_menu_item_xfn', ''),
(166, 66, '_menu_item_url', '#'),
(169, 15, '_wp_old_date', '2021-11-25'),
(170, 66, '_wp_old_date', '2021-11-25'),
(171, 17, '_wp_old_date', '2021-11-25'),
(172, 18, '_wp_old_date', '2021-11-25'),
(173, 25, '_wp_old_date', '2021-11-25'),
(174, 49, '_wp_old_date', '2021-11-25'),
(175, 20, '_wp_old_date', '2021-11-25'),
(176, 21, '_wp_old_date', '2021-11-25'),
(177, 71, '_wp_trash_meta_status', 'publish'),
(178, 71, '_wp_trash_meta_time', '1639614365'),
(179, 72, '_wp_attached_file', '2021/12/logo-e1639630866703.png'),
(180, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:31:\"2021/12/logo-e1639630866703.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 72, '_edit_lock', '1639630576:1'),
(186, 72, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:8:\"logo.png\";}s:18:\"full-1639630866703\";a:3:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:23:\"logo-e1639630698800.png\";}}'),
(187, 72, '_edit_last', '1'),
(189, 6, '_wp_page_template', 'lesson.php'),
(190, 6, '_edit_last', '1'),
(191, 22, '_wp_page_template', 'lesson.php'),
(192, 10, '_wp_page_template', 'form.php'),
(193, 12, '_wp_page_template', 'form.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_posts`
--

CREATE TABLE `wp_opti_posts` (
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
-- Dumping data for table `wp_opti_posts`
--

INSERT INTO `wp_opti_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-24 00:44:46', '2021-11-23 23:44:46', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2021-11-24 00:44:46', '2021-11-23 23:44:46', '', 0, 'http://localhost:8888/wordpress-optimum/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-24 00:44:46', '2021-11-23 23:44:46', '<!-- wp:shortcode -->\n[show_lessons][/show_lessons]\n<!-- /wp:shortcode -->', 'Cours particuliers', '', 'publish', 'closed', 'open', '', 'cours-particuliers', '', '', '2021-12-17 00:48:52', '2021-12-16 23:48:52', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-24 00:44:46', '2021-11-23 23:44:46', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/wordpress-optimum.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2021-11-24 00:44:46', '2021-11-23 23:44:46', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-11-24 01:40:11', '2021-11-24 00:40:11', '', 'Cours particuliers', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-11-24 01:40:11', '2021-11-24 00:40:11', '', 2, 'http://localhost:8888/wordpress-optimum/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-11-24 01:40:52', '2021-11-24 00:40:52', '<!-- wp:shortcode -->\n[show_lessons][/show_lessons]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cours collectifs', '', 'publish', 'closed', 'closed', '', 'cours-collectifs', '', '', '2021-12-16 23:50:03', '2021-12-16 22:50:03', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-11-24 01:40:52', '2021-11-24 00:40:52', '', 'Cours collectifs', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-11-24 01:40:52', '2021-11-24 00:40:52', '', 6, 'http://localhost:8888/wordpress-optimum/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-11-24 01:41:08', '2021-11-24 00:41:08', '', 'Offres', '', 'publish', 'closed', 'closed', '', 'les-offres', '', '', '2021-12-17 04:47:08', '2021-12-17 03:47:08', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-11-24 01:41:08', '2021-11-24 00:41:08', '', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-24 01:41:08', '2021-11-24 00:41:08', '', 8, 'http://localhost:8888/wordpress-optimum/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-11-24 01:41:41', '2021-11-24 00:41:41', '<!-- wp:shortcode -->\n[show_reservation_lesson_form][/show_reservation_lesson_form]\n<!-- /wp:shortcode -->', 'Réservations', '', 'publish', 'closed', 'closed', '', 'reservations', '', '', '2021-12-17 04:52:03', '2021-12-17 03:52:03', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-11-24 01:41:41', '2021-11-24 00:41:41', '', 'Réservations', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-24 01:41:41', '2021-11-24 00:41:41', '', 10, 'http://localhost:8888/wordpress-optimum/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-11-24 01:41:59', '2021-11-24 00:41:59', '<!-- wp:shortcode -->\n[show_contact_form][/show_contact_form]\n<!-- /wp:shortcode -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-12-17 05:07:35', '2021-12-17 04:07:35', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-11-24 01:41:59', '2021-11-24 00:41:59', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-11-24 01:41:59', '2021-11-24 00:41:59', '', 12, 'http://localhost:8888/wordpress-optimum/?p=13', 0, 'revision', '', 0),
(15, 1, '2021-12-16 01:26:05', '2021-11-24 00:46:59', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/2021/11/24/accueil/', 1, 'nav_menu_item', '', 0),
(17, 1, '2021-12-16 01:26:05', '2021-11-24 00:46:59', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/2021/11/24/17/', 3, 'nav_menu_item', '', 0),
(18, 1, '2021-12-16 01:26:05', '2021-11-24 00:46:59', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/2021/11/24/18/', 4, 'nav_menu_item', '', 0),
(20, 1, '2021-12-16 01:26:05', '2021-11-24 00:46:59', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/2021/11/24/20/', 7, 'nav_menu_item', '', 0),
(21, 1, '2021-12-16 01:26:05', '2021-11-24 00:46:59', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/2021/11/24/21/', 8, 'nav_menu_item', '', 0),
(22, 1, '2021-11-24 01:47:25', '2021-11-24 00:47:25', '', 'Séances', '', 'publish', 'closed', 'closed', '', 'seances', '', '', '2021-12-17 00:49:05', '2021-12-16 23:49:05', '', 0, 'http://localhost:8888/wordpress-optimum/?page_id=22', 0, 'page', '', 0),
(23, 1, '2021-11-24 01:47:25', '2021-11-24 00:47:25', '', 'Séances', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-11-24 01:47:25', '2021-11-24 00:47:25', '', 22, 'http://localhost:8888/wordpress-optimum/?p=23', 0, 'revision', '', 0),
(25, 1, '2021-12-16 01:26:05', '2021-11-24 00:47:54', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/2021/11/24/25/', 5, 'nav_menu_item', '', 0),
(27, 1, '2021-11-24 01:53:53', '2021-11-24 00:53:53', '<!-- wp:shortcode -->\n[show_contact_form][/show_contact_form]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-11-24 01:53:53', '2021-11-24 00:53:53', '', 12, 'http://localhost:8888/wordpress-optimum/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-11-24 01:54:12', '2021-11-24 00:54:12', '<!-- wp:shortcode /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-11-24 01:54:12', '2021-11-24 00:54:12', '', 12, 'http://localhost:8888/wordpress-optimum/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-11-24 01:54:17', '2021-11-24 00:54:17', '<!-- wp:shortcode -->\n[show_contact_form][/show_contact_form]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-11-24 01:54:17', '2021-11-24 00:54:17', '', 12, 'http://localhost:8888/wordpress-optimum/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-11-24 03:26:04', '2021-11-24 02:26:04', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Cross training', '', 'publish', 'closed', 'closed', '', 'cross-training', '', '', '2021-11-25 05:50:44', '2021-11-25 04:50:44', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=cours&#038;p=30', 0, 'cours', '', 0),
(31, 1, '2021-11-24 03:24:50', '2021-11-24 02:24:50', '', 'Cardio training', '', 'inherit', 'open', 'closed', '', 'optimum-1', '', '', '2021-11-24 03:26:57', '2021-11-24 02:26:57', '', 30, 'http://localhost:8888/wordpress-optimum/wp-content/uploads/2021/11/optimum-1.jpg', 0, 'attachment', 'image/jpeg', 0),
 (32, 1, '2021-11-24 03:24:54', '2021-11-24 02:24:54', '', 'Cross training', '', 'inherit', 'open', 'closed', '', 'optimum-2', '', '', '2021-11-24 03:25:26', '2021-11-24 02:25:26', '', 30, 'http://localhost:8888/wordpress-optimum/wp-content/uploads/2021/11/optimum-2.jpg', 0, 'attachment', 'image/jpeg', 0),
 (33, 1, '2021-11-24 03:24:55', '2021-11-24 02:24:55', '', 'Yoga', '', 'inherit', 'open', 'closed', '', 'optimum-3', '', '', '2021-11-24 03:29:35', '2021-11-24 02:29:35', '', 30, 'http://localhost:8888/wordpress-optimum/wp-content/uploads/2021/11/optimum-3.jpg', 0, 'attachment', 'image/jpeg', 0),
 (34, 1, '2021-11-24 03:27:11', '2021-11-24 02:27:11', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Cardio training', '', 'publish', 'closed', 'closed', '', 'cardio-training', '', '', '2021-11-25 05:50:39', '2021-11-25 04:50:39', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=cours&#038;p=34', 0, 'cours', '', 0),
     (35, 1, '2021-11-24 03:28:01', '2021-11-24 02:28:01', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Préparation physique', '', 'publish', 'closed', 'closed', '', 'preparation-physique', '', '', '2021-11-25 05:50:35', '2021-11-25 04:50:35', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=cours&#038;p=35', 0, 'cours', '', 0),
     (36, 1, '2021-11-24 03:28:49', '2021-11-24 02:28:49', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Renforcement musculaire', '', 'publish', 'closed', 'closed', '', 'renforcement-musculaire', '', '', '2021-12-17 04:23:36', '2021-12-17 03:23:36', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=cours&#038;p=36', 0, 'cours', '', 0),
     (37, 1, '2021-11-24 03:29:51', '2021-11-24 02:29:51', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Séance de Yoga', '', 'publish', 'closed', 'closed', '', 'seance-de-yoga', '', '', '2021-12-17 04:28:03', '2021-12-17 03:28:03', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=cours&#038;p=37', 0, 'cours', '', 0),
     (42, 1, '2021-11-24 04:38:34', '2021-11-24 03:38:34', '<!-- wp:shortcode -->\n[show_reservation_lesson_form][/show_reservation_lesson_form]\n<!-- /wp:shortcode -->', 'Réservations', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-11-24 04:38:34', '2021-11-24 03:38:34', '', 10, 'http://localhost:8888/wordpress-optimum/?p=42', 0, 'revision', '', 0),
     (43, 1, '2021-11-24 06:32:16', '2021-11-24 05:32:16', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n<!-- /wp:paragraph -->', 'Abonnement mensuel à la salle de musculation', '', 'publish', 'closed', 'closed', '', 'abonnement-mensuel-a-la-salle-de-musculation', '', '', '2021-12-17 04:26:31', '2021-12-17 03:26:31', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=offres&#038;p=43', 0, 'offres', '', 0),
     (44, 1, '2021-11-24 06:33:05', '2021-11-24 05:33:05', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s </p>\n<!-- /wp:paragraph -->', 'Abonnement annuel à la salle de musculation', '', 'publish', 'closed', 'closed', '', 'abonnement-annuel-a-la-salle-de-musculation', '', '', '2021-12-17 04:25:11', '2021-12-17 03:25:11', '', 0, 'http://localhost:8888/wordpress-optimum/?post_type=offres&#038;p=44', 0, 'offres', '', 0),
     (45, 1, '2021-11-24 06:36:04', '2021-11-24 05:36:04', '<!-- wp:shortcode -->\n[show_reservation_offer_form][/show_reservation_offer_form]\n<!-- /wp:shortcode -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-24 06:36:04', '2021-11-24 05:36:04', '', 8, 'http://localhost:8888/wordpress-optimum/?p=45', 0, 'revision', '', 0),
     (49, 1, '2021-12-16 01:26:05', '2021-11-25 02:48:35', '', 'Les offres', '', 'publish', 'closed', 'closed', '', '49', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/?p=49', 6, 'nav_menu_item', '', 0),
     (52, 1, '2021-11-25 03:50:20', '2021-11-25 02:50:20', '<!-- wp:shortcode -->\n[show_reservation_offer_form][/show_reservation_offer_form]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 03:50:20', '2021-11-25 02:50:20', '', 8, 'http://localhost:8888/wordpress-optimum/?p=52', 0, 'revision', '', 0),
     (54, 1, '2021-11-25 04:58:41', '2021-11-25 03:58:41', '<!-- wp:shortcode -->\n[show_lessons][/show_lessons]\n<!-- /wp:shortcode -->', 'Cours collectifs', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-11-25 04:58:41', '2021-11-25 03:58:41', '', 6, 'http://localhost:8888/wordpress-optimum/?p=54', 0, 'revision', '', 0),
     (56, 1, '2021-11-25 06:08:21', '2021-11-25 05:08:21', '<!-- wp:shortcode -->\n[show_lessons][/show_lessons]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cours collectifs', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-11-25 06:08:21', '2021-11-25 05:08:21', '', 6, 'http://localhost:8888/wordpress-optimum/?p=56', 0, 'revision', '', 0),
     (58, 1, '2021-11-25 06:09:27', '2021-11-25 05:09:27', '<!-- wp:shortcode -->\n[show_lessons][/show_lessons]\n<!-- /wp:shortcode -->', 'Cours particuliers', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-11-25 06:09:27', '2021-11-25 05:09:27', '', 2, 'http://localhost:8888/wordpress-optimum/?p=58', 0, 'revision', '', 0),
     (59, 1, '2021-11-25 06:11:44', '2021-11-25 05:11:44', '<!-- wp:shortcode -->\n[show_offers][/show_offers]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[show_reservation_offer_form][/show_reservation_offer_form]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:11:44', '2021-11-25 05:11:44', '', 8, 'http://localhost:8888/wordpress-optimum/?p=59', 0, 'revision', '', 0),
     (60, 1, '2021-11-25 06:13:37', '2021-11-25 05:13:37', '<!-- wp:shortcode -->\n[show_offers][/show_offers]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[show_reservation_offer_form][/show_reservation_offer_form]\n<!-- /wp:shortcode -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:13:37', '2021-11-25 05:13:37', '', 8, 'http://localhost:8888/wordpress-optimum/?p=60', 0, 'revision', '', 0),
     (61, 1, '2021-11-25 06:17:39', '2021-11-25 05:17:39', '<!-- wp:shortcode -->\n[show_offers]\n<!-- /wp:shortcode -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:17:39', '2021-11-25 05:17:39', '', 8, 'http://localhost:8888/wordpress-optimum/?p=61', 0, 'revision', '', 0),
     (62, 1, '2021-11-25 06:20:34', '2021-11-25 05:20:34', '<!-- wp:shortcode -->\n[show_offers][/show_offers]\n<!-- /wp:shortcode -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:20:34', '2021-11-25 05:20:34', '', 8, 'http://localhost:8888/wordpress-optimum/?p=62', 0, 'revision', '', 0),
     (65, 1, '2021-11-25 06:34:46', '2021-11-25 05:34:46', '', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:34:46', '2021-11-25 05:34:46', '', 8, 'http://localhost:8888/wordpress-optimum/?p=65', 0, 'revision', '', 0),
     (66, 1, '2021-12-16 01:26:05', '2021-11-25 05:41:40', '', 'Les cours', '', 'publish', 'closed', 'closed', '', 'les-cours', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/?p=66', 2, 'nav_menu_item', '', 0),
     (67, 1, '2021-11-25 06:44:46', '2021-11-25 05:44:46', '<!-- wp:shortcode -->\n[show_offers][\\show_offers]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[show_reservation_offer_form][\\show_reservation_offer_form]\n<!-- /wp:shortcode -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:44:46', '2021-11-25 05:44:46', '', 8, 'http://localhost:8888/wordpress-optimum/?p=67', 0, 'revision', '', 0),
     (68, 1, '2021-11-25 06:44:50', '2021-11-25 05:44:50', '<!-- wp:shortcode -->\n[show_offers][\\show_offers]\n<!-- /wp:shortcode -->\n\n<!-- wp:shortcode -->\n[show_reservation_offer_form][\\show_reservation_offer_form]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-11-25 06:44:50', '2021-11-25 05:44:50', '', 8, 'http://localhost:8888/wordpress-optimum/?p=68', 0, 'revision', '', 0),
     (71, 1, '2021-12-16 01:26:05', '2021-12-16 00:26:05', '{\n    \"nav_menu_item[15]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Lien personnalis\\u00e9\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost:8888/wordpress-optimum\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"nav-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[66]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 66,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Lien personnalis\\u00e9\",\n            \"title\": \"Les cours\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"nav-item dropdown\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[17]\": {\n        \"value\": {\n            \"menu_item_parent\": 66,\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8888/wordpress-optimum/cours-collectifs/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"dropdown-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Cours collectifs\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[18]\": {\n        \"value\": {\n            \"menu_item_parent\": 66,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8888/wordpress-optimum/cours-particuliers/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"dropdown-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Cours particuliers\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"menu_item_parent\": 66,\n            \"object_id\": 22,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8888/wordpress-optimum/seances/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"dropdown-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"S\\u00e9ances\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[49]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8888/wordpress-optimum/les-offres/\",\n            \"title\": \"Les offres\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"nav-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"Offres\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[20]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8888/wordpress-optimum/reservations/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"nav-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"R\\u00e9servations\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    },\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost:8888/wordpress-optimum/contact/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"nav-item\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 6,\n            \"position\": 8,\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-16 00:26:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd85cba66-2df9-450c-90dd-67e5d1cbbbc7', '', '', '2021-12-16 01:26:05', '2021-12-16 00:26:05', '', 0, 'http://localhost:8888/wordpress-optimum/d85cba66-2df9-450c-90dd-67e5d1cbbbc7/', 0, 'customize_changeset', '', 0),
     (72, 1, '2021-12-16 05:57:09', '2021-12-16 04:57:09', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-12-16 05:58:24', '2021-12-16 04:58:24', '', 0, 'http://localhost:8888/wordpress-optimum/wp-content/uploads/2021/12/logo.png', 0, 'attachment', 'image/png', 0),
     (75, 1, '2021-12-17 04:47:08', '2021-12-17 03:47:08', '', 'Offres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-12-17 04:47:08', '2021-12-17 03:47:08', '', 8, 'http://localhost:8888/wordpress-optimum/?p=75', 0, 'revision', '', 0),
     (77, 1, '2021-12-17 05:04:07', '2021-12-17 04:04:07', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-12-17 05:04:07', '2021-12-17 04:04:07', '', 12, 'http://localhost:8888/wordpress-optimum/?p=77', 0, 'revision', '', 0),
     (78, 1, '2021-12-17 05:04:31', '2021-12-17 04:04:31', '<!-- wp:shortcode -->\n[show_contact_form][/show_contact_form]\n<!-- /wp:shortcode -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-12-17 05:04:31', '2021-12-17 04:04:31', '', 12, 'http://localhost:8888/wordpress-optimum/?p=78', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_reservations_lessons`
--

  CREATE TABLE `wp_opti_reservations_lessons` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mail` varchar(155) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lesson_id` int(9) NOT NULL
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_reservations_lessons`
--

  INSERT INTO `wp_opti_reservations_lessons` (`id`, `name`, `mail`, `phone`, `lesson_id`) VALUES
     (1, 'Jean Masso', 'jeanmasso06@gmail.com', '520772', 37),
     (2, 'test2', 'test2.oui2@test.nc', '022222', 30);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_reservations_offers`
--

  CREATE TABLE `wp_opti_reservations_offers` (
  `id` mediumint(9) NOT NULL,
  `first_name` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mail` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `offer_id` int(9) NOT NULL
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_reservations_offers`
--

  INSERT INTO `wp_opti_reservations_offers` (`id`, `first_name`, `last_name`, `mail`, `phone`, `offer_id`) VALUES
     (1, 'Jean', 'Masso', 'test2.oui2@test.nc', '520772', 44),
     (2, 'test', 'test1', 'test.oui@test.nc', '520772', 43);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_termmeta`
--

  CREATE TABLE `wp_opti_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_terms`
--

  CREATE TABLE `wp_opti_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_terms`
--

  INSERT INTO `wp_opti_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
     (1, 'Non classé', 'non-classe', 0),
     (2, 'Cours particuliers', 'cours-particuliers', 0),
     (3, 'Cours collectifs', 'cours-collectifs', 0),
     (4, 'Séances', 'seances', 0),
     (5, 'Offres', 'offres', 0),
     (6, 'Menu principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_term_relationships`
--

  CREATE TABLE `wp_opti_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_term_relationships`
--

  INSERT INTO `wp_opti_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
     (1, 1, 0),
     (15, 6, 0),
     (17, 6, 0),
     (18, 6, 0),
     (20, 6, 0),
     (21, 6, 0),
     (25, 6, 0),
     (30, 3, 0),
     (34, 3, 0),
     (35, 2, 0),
     (36, 2, 0),
     (37, 4, 0),
     (43, 5, 0),
     (44, 5, 0),
     (49, 6, 0),
     (66, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_term_taxonomy`
--

  CREATE TABLE `wp_opti_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_term_taxonomy`
--

  INSERT INTO `wp_opti_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
     (1, 1, 'category', '', 0, 1),
     (2, 2, 'category', '', 0, 2),
     (3, 3, 'category', '', 0, 2),
     (4, 4, 'category', '', 0, 1),
     (5, 5, 'category', '', 0, 2),
     (6, 6, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_usermeta`
--

  CREATE TABLE `wp_opti_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_opti_usermeta`
--

  INSERT INTO `wp_opti_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
     (1, 1, 'nickname', 'optimum'),
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
     (12, 1, 'wp_opti_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
     (13, 1, 'wp_opti_user_level', '10'),
     (14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
     (15, 1, 'show_welcome_panel', '1'),
     (16, 1, 'session_tokens', 'a:1:{s:64:\"8cabbbc132856ea75a84958d535bd3d09e5b990acea30a5c169cbc7dc6302e47\";a:4:{s:10:\"expiration\";i:1639781489;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639608689;}}'),
     (17, 1, 'wp_opti_dashboard_quick_press_last_post_id', '69'),
     (18, 1, 'nav_menu_recently_edited', '6'),
     (19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
     (20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
     (21, 1, 'closedpostboxes_cours', 'a:0:{}'),
     (22, 1, 'metaboxhidden_cours', 'a:0:{}'),
     (23, 1, 'wp_opti_user-settings', 'libraryContent=browse&mfold=o'),
     (24, 1, 'wp_opti_user-settings-time', '1637731686');

-- --------------------------------------------------------

--
-- Table structure for table `wp_opti_users`
--

  CREATE TABLE `wp_opti_users` (
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
-- Dumping data for table `wp_opti_users`
--

  INSERT INTO `wp_opti_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
     (1, 'optimum', '$P$B/T506cLMNHqtwwiaMzX8FII1xoqFk/', 'optimum', 'jeanmasso.pro@gmail.com', 'http://localhost:8888/wordpress-optimum', '2021-11-23 23:44:46', '', 0, 'optimum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_opti_commentmeta`
--
  ALTER TABLE `wp_opti_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_opti_comments`
--
  ALTER TABLE `wp_opti_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_opti_contacts`
--
  ALTER TABLE `wp_opti_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_opti_links`
--
  ALTER TABLE `wp_opti_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_opti_options`
--
  ALTER TABLE `wp_opti_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_opti_postmeta`
--
  ALTER TABLE `wp_opti_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_opti_posts`
--
  ALTER TABLE `wp_opti_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_opti_reservations_lessons`
--
  ALTER TABLE `wp_opti_reservations_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_opti_reservations_offers`
--
  ALTER TABLE `wp_opti_reservations_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_opti_termmeta`
--
  ALTER TABLE `wp_opti_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_opti_terms`
--
  ALTER TABLE `wp_opti_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_opti_term_relationships`
--
  ALTER TABLE `wp_opti_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_opti_term_taxonomy`
--
  ALTER TABLE `wp_opti_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_opti_usermeta`
--
  ALTER TABLE `wp_opti_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_opti_users`
--
  ALTER TABLE `wp_opti_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_opti_commentmeta`
--
  ALTER TABLE `wp_opti_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_opti_comments`
--
  ALTER TABLE `wp_opti_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_opti_contacts`
--
  ALTER TABLE `wp_opti_contacts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_opti_links`
--
  ALTER TABLE `wp_opti_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_opti_options`
--
  ALTER TABLE `wp_opti_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `wp_opti_postmeta`
--
  ALTER TABLE `wp_opti_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `wp_opti_posts`
--
  ALTER TABLE `wp_opti_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_opti_reservations_lessons`
--
  ALTER TABLE `wp_opti_reservations_lessons`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_opti_reservations_offers`
--
  ALTER TABLE `wp_opti_reservations_offers`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_opti_termmeta`
--
  ALTER TABLE `wp_opti_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_opti_terms`
--
  ALTER TABLE `wp_opti_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_opti_term_taxonomy`
--
  ALTER TABLE `wp_opti_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_opti_usermeta`
--
  ALTER TABLE `wp_opti_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_opti_users`
--
  ALTER TABLE `wp_opti_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
