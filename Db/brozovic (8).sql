-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 12. kvě 2022, 21:20
-- Verze serveru: 10.4.17-MariaDB
-- Verze PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `brozovic`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentátor', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-10 14:14:34', '2022-04-10 12:14:34', 'Zdravím, tohle je komentář.\nChcete-li začít se schvalováním, úpravami a mazáním komentářů, pak si prohlédněte sekci Komentáře na nástěnce.\nProfilové obrázky komentujících vám přináší služba <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Nazdar Bazar', 'yes'),
(4, 'blogdescription', 'Další web používající WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'michalhasic03@seznam.cz', 'yes'),
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
(23, 'date_format', 'j. n. Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. n. Y, G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:8:\"kniha/?$\";s:25:\"index.php?post_type=kniha\";s:38:\"kniha/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=kniha&feed=$matches[1]\";s:33:\"kniha/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=kniha&feed=$matches[1]\";s:25:\"kniha/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=kniha&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"kniha/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"kniha/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"kniha/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"kniha/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"kniha/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"kniha/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"kniha/([^/]+)/embed/?$\";s:38:\"index.php?kniha=$matches[1]&embed=true\";s:26:\"kniha/([^/]+)/trackback/?$\";s:32:\"index.php?kniha=$matches[1]&tb=1\";s:46:\"kniha/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?kniha=$matches[1]&feed=$matches[2]\";s:41:\"kniha/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?kniha=$matches[1]&feed=$matches[2]\";s:34:\"kniha/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?kniha=$matches[1]&paged=$matches[2]\";s:41:\"kniha/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?kniha=$matches[1]&cpage=$matches[2]\";s:30:\"kniha/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?kniha=$matches[1]&page=$matches[2]\";s:22:\"kniha/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"kniha/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"kniha/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"kniha/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"kniha/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"kniha/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"kategorie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?kategorie=$matches[1]&feed=$matches[2]\";s:45:\"kategorie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?kategorie=$matches[1]&feed=$matches[2]\";s:26:\"kategorie/([^/]+)/embed/?$\";s:42:\"index.php?kategorie=$matches[1]&embed=true\";s:38:\"kategorie/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?kategorie=$matches[1]&paged=$matches[2]\";s:20:\"kategorie/([^/]+)/?$\";s:31:\"index.php?kategorie=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:74:\"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/acf-extended/acf-extended.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'Theme1', 'yes'),
(41, 'stylesheet', 'Theme1', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
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
(80, 'timezone_string', 'Europe/Prague', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1665144873', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'cs_CZ', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:168:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Nejnovější příspěvky</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:237:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Nejnovější komentáře</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivy</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:147:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Rubriky</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1652386035;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1652400874;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652444074;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652444089;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652703274;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1649593727;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:29:\"Ověření SSL se nezdařilo.\";}s:19:\"bad_response_source\";a:1:{i:0;s:51:\"Vypadá to, že odpověď nepřišla z tohoto webu.\";}}', 'yes'),
(134, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/cs_CZ/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"cs_CZ\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/cs_CZ/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1652379839;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(135, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652379842;s:7:\"checked\";a:1:{s:6:\"Theme1\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(144, 'can_compress_scripts', '1', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(158, 'current_theme', '', 'yes'),
(159, 'theme_mods_Theme1', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(181, 'recently_activated', 'a:1:{s:31:\"cookie-notice/cookie-notice.php\";i:1652039103;}', 'yes'),
(192, 'category_children', 'a:0:{}', 'yes'),
(205, 'new_admin_email', 'michalhasic03@seznam.cz', 'yes'),
(276, 'acf_version', '5.9.6', 'yes'),
(378, 'recovery_mode_email_last_sent', '1652024161', 'yes'),
(391, 'kategorie_children', 'a:0:{}', 'yes'),
(413, 'cookie_notice_options', 'a:33:{s:6:\"app_id\";s:0:\"\";s:7:\"app_key\";s:0:\"\";s:12:\"message_text\";s:153:\"We use cookies to ensure that we give you the best experience on our website. If you continue to use this site we will assume that you are happy with it.\";s:11:\"accept_text\";s:2:\"Ok\";s:12:\"see_more_opt\";a:5:{s:4:\"text\";s:14:\"Privacy policy\";s:9:\"link_type\";s:4:\"page\";s:2:\"id\";i:0;s:4:\"link\";s:0:\"\";s:4:\"sync\";b:0;}s:11:\"link_target\";s:6:\"_blank\";s:13:\"link_position\";s:6:\"banner\";s:11:\"refuse_text\";s:2:\"No\";s:19:\"revoke_message_text\";s:69:\"You can revoke your consent any time using the Revoke consent button.\";s:11:\"revoke_text\";s:14:\"Revoke consent\";s:18:\"revoke_cookies_opt\";s:9:\"automatic\";s:16:\"refuse_code_head\";s:0:\"\";s:11:\"refuse_code\";s:0:\"\";s:16:\"on_scroll_offset\";i:100;s:4:\"time\";s:5:\"month\";s:13:\"time_rejected\";s:5:\"month\";s:16:\"script_placement\";s:6:\"header\";s:8:\"position\";s:6:\"bottom\";s:11:\"hide_effect\";s:4:\"fade\";s:6:\"colors\";a:4:{s:4:\"text\";s:4:\"#fff\";s:6:\"button\";s:7:\"#00a99d\";s:3:\"bar\";s:7:\"#32323a\";s:11:\"bar_opacity\";i:100;}s:9:\"css_class\";s:0:\"\";s:12:\"app_blocking\";b:0;s:11:\"hide_banner\";b:0;s:10:\"refuse_opt\";b:0;s:14:\"revoke_cookies\";b:0;s:11:\"redirection\";b:0;s:9:\"on_scroll\";b:0;s:8:\"on_click\";b:0;s:19:\"deactivation_delete\";b:0;s:8:\"see_more\";b:0;s:14:\"update_version\";i:6;s:13:\"update_notice\";b:1;s:9:\"translate\";b:0;}', 'no'),
(414, 'cookie_notice_version', '2.2.3', 'no'),
(415, 'cookie_notice_status', '', 'yes'),
(424, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1652731360', 'no'),
(425, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(429, '_transient_timeout_acf_plugin_updates', '1652552641', 'no'),
(430, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.6\";}}', 'no'),
(431, '_site_transient_timeout_theme_roots', '1652381641', 'no'),
(432, '_site_transient_theme_roots', 'a:1:{s:6:\"Theme1\";s:7:\"/themes\";}', 'no'),
(433, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652379842;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.6\";s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 10, '_edit_lock', '1650388187:1'),
(10, 10, '_wp_page_template', 'template-main.php'),
(12, 13, '_edit_lock', '1650388246:1'),
(13, 13, '_wp_page_template', 'template-register.php'),
(14, 15, '_edit_lock', '1650388090:1'),
(15, 15, '_wp_page_template', 'template-login.php'),
(19, 20, '_edit_lock', '1652015160:1'),
(20, 20, '_wp_page_template', 'template-kniha.php'),
(21, 23, '_edit_last', '1'),
(22, 23, '_edit_lock', '1652026079:1'),
(25, 28, '_wp_attached_file', '2022/04/Dominik.png'),
(26, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:916;s:6:\"height\";i:664;s:4:\"file\";s:19:\"2022/04/Dominik.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 30, '_edit_lock', '1652038980:1'),
(37, 31, '_wp_attached_file', '2022/05/P_20220220_212902.jpg'),
(38, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:29:\"2022/05/P_20220220_212902.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 30, '_edit_last', '1'),
(40, 30, 'cena', '519'),
(41, 30, '_cena', 'field_626571a287a59'),
(42, 30, 'popisek', '                                                                                                                                                                                                                                                                                                Adsa                                                                                                                                                                                                                                                                '),
(43, 30, '_popisek', 'field_62658ac400cde'),
(44, 30, 'galerie_0_obrazek', '28'),
(45, 30, '_galerie_0_obrazek', 'field_626571c687a5b'),
(46, 30, 'galerie', '1'),
(47, 30, '_galerie', 'field_626571b787a5a'),
(48, 30, 'titulek', ''),
(50, 32, '_edit_lock', '1652036373:1'),
(51, 32, '_edit_last', '1'),
(52, 32, 'cena', '900'),
(53, 32, '_cena', 'field_626571a287a59'),
(54, 32, 'popisek', '                                                                                                                                                                                                                                                                                                Učebnice je v dobrém stavu, používaná 4 roky.                                                                                                                                                                                                                                                        '),
(55, 32, '_popisek', 'field_62658ac400cde'),
(56, 32, 'galerie_0_obrazek', '44'),
(57, 32, '_galerie_0_obrazek', 'field_626571c687a5b'),
(58, 32, 'galerie', '1'),
(59, 32, '_galerie', 'field_626571b787a5a'),
(60, 28, '_wp_attachment_image_alt', 'Domink'),
(61, 33, '_edit_lock', '1652029737:1'),
(62, 33, '_edit_last', '1'),
(63, 33, 'cena', '519'),
(64, 33, '_cena', 'field_626571a287a59'),
(65, 33, 'popisek', '                                                                                                                                                                                                                                                            Adsa                                                                                                                                                                                                                                '),
(66, 33, '_popisek', 'field_62658ac400cde'),
(67, 33, 'galerie_0_obrazek', '28'),
(68, 33, '_galerie_0_obrazek', 'field_626571c687a5b'),
(69, 33, 'galerie', '1'),
(70, 33, '_galerie', 'field_626571b787a5a'),
(71, 32, '_thumbnail_id', '44'),
(72, 34, 'popisek', 'je to kokot                                                    '),
(73, 34, 'cena', '69'),
(74, 34, '_edit_lock', '1652026563:1'),
(75, 35, 'popisek', '                                    tvoje máma                                                                                                                                                                                                                                                  '),
(76, 35, 'cena', '123'),
(77, 35, '_edit_lock', '1652029725:1'),
(78, 36, 'popisek', 'sdgfdstg'),
(79, 36, 'cena', '2200'),
(82, 38, '_wp_attached_file', '2022/05/Pokoj 2.0.png'),
(83, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1088;s:6:\"height\";i:748;s:4:\"file\";s:21:\"2022/05/Pokoj 2.0.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 40, '_wp_attached_file', '2022/05/Pokoj 2.0.png'),
(93, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1088;s:6:\"height\";i:748;s:4:\"file\";s:21:\"2022/05/Pokoj 2.0.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 41, '_edit_lock', '1652026061:1'),
(100, 1, '_edit_lock', '1652026299:1'),
(101, 34, '_edit_last', '1'),
(102, 1, '_wp_trash_meta_status', 'publish'),
(103, 1, '_wp_trash_meta_time', '1652028611'),
(104, 1, '_wp_desired_post_slug', 'ahoj-vsichni'),
(105, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(106, 36, '_wp_trash_meta_status', 'publish'),
(107, 36, '_wp_trash_meta_time', '1652029704'),
(108, 36, '_wp_desired_post_slug', 'bude-lip-3'),
(109, 34, '_wp_trash_meta_status', 'publish'),
(110, 34, '_wp_trash_meta_time', '1652029706'),
(111, 34, '_wp_desired_post_slug', 'bude-lip'),
(112, 35, '_edit_last', '1'),
(113, 43, 'popisek', '                                                                                                                                                                                                                                                                                                Adsa                                                                                                                                                                                                                                                '),
(114, 43, 'cena', '519'),
(115, 44, '_wp_attached_file', '2022/05/aaaa.jpeg'),
(116, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:721;s:6:\"height\";i:1024;s:4:\"file\";s:17:\"2022/05/aaaa.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 43, 'galerie_0_obrazek', '44'),
(118, 43, '_galerie_0_obrazek', 'field_626571c687a5b'),
(119, 43, 'galerie', '1'),
(120, 43, '_galerie', 'field_626571b787a5a'),
(121, 43, '_wp_trash_meta_status', 'publish'),
(122, 43, '_wp_trash_meta_time', '1652036472'),
(123, 43, '_wp_desired_post_slug', 'dsadsd'),
(124, 33, '_wp_trash_meta_status', 'publish'),
(125, 33, '_wp_trash_meta_time', '1652036476'),
(126, 33, '_wp_desired_post_slug', 'dominik-2'),
(127, 30, '_thumbnail_id', '28'),
(128, 46, 'popisek', '              asda                        '),
(129, 46, 'cena', '13232'),
(130, 47, 'popisek', '              asda                        '),
(131, 47, 'cena', '13232'),
(132, 48, 'popisek', '              asda                        '),
(133, 48, 'cena', '13232'),
(134, 49, 'popisek', '              asda                        '),
(135, 49, 'cena', '13232'),
(136, 50, 'popisek', '                     233232'),
(137, 50, 'cena', '3232'),
(138, 49, '_wp_trash_meta_status', 'publish'),
(139, 49, '_wp_trash_meta_time', '1652383196'),
(140, 49, '_wp_desired_post_slug', 'ddsad-4'),
(141, 48, '_wp_trash_meta_status', 'publish'),
(142, 48, '_wp_trash_meta_time', '1652383197'),
(143, 48, '_wp_desired_post_slug', 'ddsad-3'),
(144, 47, '_wp_trash_meta_status', 'publish'),
(145, 47, '_wp_trash_meta_time', '1652383198'),
(146, 47, '_wp_desired_post_slug', 'ddsad-2'),
(147, 46, '_wp_trash_meta_status', 'publish'),
(148, 46, '_wp_trash_meta_time', '1652383200'),
(149, 46, '_wp_desired_post_slug', 'ddsad');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-10 14:14:34', '2022-04-10 12:14:34', '<!-- wp:paragraph -->\n<p>Vítejte ve WordPressu. Toto je váš první příspěvek. Můžete ho upravit, nebo smazat a postupně pak začít s tvorbou vlastního webu.</p>\n<!-- /wp:paragraph -->', 'Ahoj všichni!', '', 'trash', 'open', 'open', '', 'ahoj-vsichni__trashed', '', '', '2022-05-08 18:50:11', '2022-05-08 16:50:11', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2022-04-10 14:14:34', '2022-04-10 12:14:34', '<!-- wp:paragraph -->\n<p>Právě si prohlížíte ukázkovou stránku, která byla vytvořena automaticky během instalace WordPressu. Stránky se liší od příspěvků zejména tím, že obsahují nějaký statický text a jsou zobrazovány na stále stejném místě webu (u většiny šablon jde o navigační menu). Lidé obvykle nejdříve vytvářejí základní informační stránky, kde se představí návštěvníkům webu a seznámí je se svými záměry. Může to být např. něco v následujícím stylu:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Zdravím! Jsem Josef a bydlím v Plzni. Pracuji jako řidič autobusu a po nocích bloguji o, alespoň dle mého, zajímavých věcech...</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...a nebo něco takového:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Společnost XYZ byla založena v roce 1989 a již od počátku nabízí svým zákazníkům vynikající výrobky pro kedsicosi. XYZ se soustředí především na kvalitu a detail za použití nejnovějších technologií a se zajištěním vysoké životnosti. Firma  sídlí v Kocourkově a zaměstnává více než 300 profesionálů ve různých oblastech.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Pokud s WordPressem právě začínáte, měli byste se nejdříve přihlásit do <a href=\"http://localhost/wordpress/wp-admin/\">administrace</a> a tuto stránku smazat (nebo upravit). A nic už vám také nebrání vytvářet další obsah webu v podobě nových stránek a příspěvků. Doufáme, že budete se správou webu v redakčním systému WordPress spokojeni!</p>\n<!-- /wp:paragraph -->', 'Zkušební stránka', '', 'publish', 'closed', 'open', '', 'zkusebni-stranka', '', '', '2022-04-10 14:14:34', '2022-04-10 12:14:34', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-04-10 14:14:34', '2022-04-10 12:14:34', '<!-- wp:heading --><h2>Kdo jsme</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Naše webová adresa je: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentáře</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Když návštěvníci přidají komentář na tento web, jsou shromažďovány údaje zobrazené ve formuláři pro komentář, dále IP adresa návštěvníka a řetězec user agent definující prohlížeč, což pomáhá k detekci spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Službě Gravatar může být poskytnut anonymní řetězec vytvořený z vaší e-mailové adresy (nazývaný také hash), díky kterému lze určit jestli tuto službu používáte. Zásady ochrany osobních údajů služby Gravatar jsou k dispozici zde: https://automattic.com/privacy/. Po schválení vašeho komentáře je váš profilový obrázek viditelný pro veřejnost v kontextu vašeho komentáře.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Média</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Pokud nahráváte obrázky na tento web, měli byste se vyhnout nahrávání obrázků s vloženými údaji o poloze (EXIF GPS). Návštěvníci webu mohou stáhnout a zobrazit libovolné data o poloze z obrázků na webu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Pokud na naše stránky přidáte komentář, můžete povolit uložení jména, e-mailové adresy a webové stránky do cookies. Tímto způsobem se snažíme zvýšit váš komfort, když budete psát nový komentář už pak nebudete muset tyto údaje znovu vyplňovat. Tyto soubory cookies budou mít životnost jeden rok.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pokud navštívíte naši přihlašovací stránku, nastavíme dočasné cookies pro ověření, zda váš prohlížeč přijímá soubory cookies. Tento soubor cookies neobsahuje žádná osobní data a při zavření prohlížeče se zruší.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Při přihlašování vám nastavíme také několik souborů cookies pro uložení vašich přihlašovacích údajů a pro nastavení zobrazení obrazovky. Přihlašovací soubory cookies mají životnost dva dny a cookies pro nastavení zobrazení mají životnost jeden rok. Pokud potvrdíte možnost „Zapamatovat si mě“, vaše přihlášení bude trvat dva týdny. Pokud se ze svého účtu odhlásíte, přihlašovací cookies budou odstraněny.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pokud upravujete nebo publikujete článek, bude ve vašem prohlížeči uložen další cookie. Tento cookie neobsahuje žádná osobní data a jednoduše označuje ID příspěvku, který jste právě upravili. Jeho platnost vyprší po 1 dni.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Vložený obsah z dalších webů</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Příspěvky na těchto stránkách mohou obsahovat vložený obsah (například videa, obrázky, články atd.). Vložený obsah z jiných webových stránek se chová stejným způsobem, jako kdyby návštěvník navštívil jiný web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Tyto webové stránky mohou shromažďovat data o vás, používat soubory cookies, vkládat další sledování od třetích stran a sledovat vaši interakci s tímto vloženým obsahem, včetně sledování interakce s vloženým obsahem, pokud máte účet a jste přihlášeni na danou webovou stránku.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>S kým sdílíme vaše údaje</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Pokud požadujete obnovení hesla, vaše adresa IP bude uvedena v e-mailu pro obnovení hesla.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jak dlouho uchováváme vaše údaje</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Pokud přidáte komentář, komentář a jeho metadata budou uchovávána po dobu neurčitou. Údaje jsou uchovávány za účelem automatického rozpoznání a schválení všech následných komentářů, místo jejich držení ve frontě moderování.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pro uživatele, kteří se registrují na tomto webu (pokud mají tuto možnost), ukládáme také osobní údaje, které uvádějí ve svém uživatelském profilu. Všichni uživatelé mohou kdykoliv vidět, upravovat nebo smazat své osobní údaje (s výjimkou toho, že nemohou změnit své uživatelské jméno). Administrátoři webu mohou také tyto informace zobrazit a upravovat.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jaká máte práva?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Pokud máte na tomto webu účet nebo jste zde přidali komentáře, můžete požádat o obdržení souboru s exportem osobních údajů, které o vás uchováváme, včetně všech údajů, které jste nám poskytli. Můžete také požádat o odstranění veškerých osobních údajů, které o vás uchováváme. Tato možnost nezahrnuje údaje, které jsme povinni uchovávat z administrativních, právních nebo bezpečnostních důvodů.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kam posíláme vaše data?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Doporučený text: </strong>Komentáře návštěvníků mohou být kontrolovány prostřednictvím automatizované služby detekce spamu, která může být umístěna v zahraničí.</p><!-- /wp:paragraph -->', 'Zásady ochrany osobních údajů', '', 'draft', 'closed', 'open', '', 'ochrana-osobnich-udaju', '', '', '2022-04-10 14:14:34', '2022-04-10 12:14:34', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(6, 1, '2022-04-12 13:56:22', '2022-04-12 11:56:22', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-theme1', '', '', '2022-04-12 13:56:22', '2022-04-12 11:56:22', '', 0, 'http://localhost/wordpress/2022/04/12/wp-global-styles-theme1/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-04-17 12:16:43', '2022-04-17 10:16:43', '', 'Hlavní stránka', '', 'publish', 'closed', 'closed', '', 'hlavni-stranka', '', '', '2022-04-17 12:18:23', '2022-04-17 10:18:23', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-04-17 12:16:43', '2022-04-17 10:16:43', '', 'Hlavní stránka', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-04-17 12:16:43', '2022-04-17 10:16:43', '', 10, 'http://localhost/wordpress/?p=11', 0, 'revision', '', 0),
(13, 1, '2022-04-19 19:09:15', '2022-04-19 17:09:15', '', 'Registrace', '', 'publish', 'closed', 'closed', '', 'registrace', '', '', '2022-04-19 19:09:15', '2022-04-19 17:09:15', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-04-19 19:09:15', '2022-04-19 17:09:15', '', 'Registrace', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-04-19 19:09:15', '2022-04-19 17:09:15', '', 13, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-04-19 19:10:25', '2022-04-19 17:10:25', '', 'Přihlášení', '', 'publish', 'closed', 'closed', '', 'prihlaseni', '', '', '2022-04-19 19:10:25', '2022-04-19 17:10:25', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-04-19 19:10:25', '2022-04-19 17:10:25', '', 'Přihlášení', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-04-19 19:10:25', '2022-04-19 17:10:25', '', 15, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(20, 1, '2022-04-24 17:12:36', '2022-04-24 15:12:36', '', 'Kniha', '', 'publish', 'closed', 'closed', '', 'kniha', '', '', '2022-05-08 15:08:24', '2022-05-08 13:08:24', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2022-04-24 17:12:36', '2022-04-24 15:12:36', '', 'Kniha', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-04-24 17:12:36', '2022-04-24 15:12:36', '', 20, 'http://localhost/wordpress/?p=21', 0, 'revision', '', 0),
(23, 1, '2022-04-24 17:46:13', '2022-04-24 15:46:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"kniha\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Knihy', 'knihy', 'publish', 'closed', 'closed', '', 'group_626570b865d3f', '', '', '2022-04-24 19:38:39', '2022-04-24 17:38:39', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=23', 0, 'acf-field-group', '', 0),
(24, 1, '2022-04-24 17:50:53', '2022-04-24 15:50:53', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Cena', 'cena', 'publish', 'closed', 'closed', '', 'field_626571a287a59', '', '', '2022-04-24 17:50:53', '2022-04-24 15:50:53', '', 23, 'http://localhost/wordpress/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2022-04-24 17:50:53', '2022-04-24 15:50:53', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Galerie', 'galerie', 'publish', 'closed', 'closed', '', 'field_626571b787a5a', '', '', '2022-04-24 19:37:18', '2022-04-24 17:37:18', '', 23, 'http://localhost/wordpress/?post_type=acf-field&#038;p=25', 2, 'acf-field', '', 0),
(26, 1, '2022-04-24 17:50:53', '2022-04-24 15:50:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Obrázek', 'obrazek', 'publish', 'closed', 'closed', '', 'field_626571c687a5b', '', '', '2022-04-24 17:50:53', '2022-04-24 15:50:53', '', 25, 'http://localhost/wordpress/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(28, 1, '2022-04-24 17:51:19', '2022-04-24 15:51:19', 'asdasd', 'Dominik', 'obrazek', 'inherit', 'open', 'closed', '', 'dominik', '', '', '2022-05-08 21:03:03', '2022-05-08 19:03:03', '', 30, 'http://localhost/wordpress/wp-content/uploads/2022/04/Dominik.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2022-04-24 19:37:18', '2022-04-24 17:37:18', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Popisek', 'popisek', 'publish', 'closed', 'closed', '', 'field_62658ac400cde', '', '', '2022-04-24 19:38:39', '2022-04-24 17:38:39', '', 23, 'http://localhost/wordpress/?post_type=acf-field&#038;p=29', 1, 'acf-field', '', 0),
(30, 1, '2022-05-01 16:03:21', '2022-05-01 14:03:21', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\"></p>\n<!-- /wp:paragraph -->', 'Ano', '', 'publish', 'closed', 'closed', '', '30-2', '', '', '2022-05-08 21:03:03', '2022-05-08 19:03:03', '', 0, 'http://localhost/wordpress/?post_type=kniha&#038;p=30', 0, 'kniha', '', 0),
(31, 1, '2022-05-01 16:03:04', '2022-05-01 14:03:04', '', 'P_20220220_212902', '', 'inherit', 'open', 'closed', '', 'p_20220220_212902', '', '', '2022-05-01 16:03:04', '2022-05-01 14:03:04', '', 30, 'http://localhost/wordpress/wp-content/uploads/2022/05/P_20220220_212902.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2022-05-01 20:10:01', '2022-05-01 18:10:01', '', 'Český jazyk 1', '', 'publish', 'closed', 'closed', '', 'an', '', '', '2022-05-08 20:59:32', '2022-05-08 18:59:32', '', 0, 'http://localhost/wordpress/?post_type=kniha&#038;p=32', 0, 'kniha', '', 0),
(33, 1, '2022-05-01 20:12:46', '2022-05-01 18:12:46', '', 'Dominik', '', 'trash', 'closed', 'closed', '', 'dominik-2__trashed', '', '', '2022-05-08 21:01:16', '2022-05-08 19:01:16', '', 0, 'http://localhost/wordpress/?post_type=kniha&#038;p=33', 0, 'kniha', '', 0),
(34, 1, '2022-05-08 17:50:45', '2022-05-08 15:50:45', '', 'bude líp', '', 'trash', 'closed', 'closed', '', 'bude-lip__trashed', '', '', '2022-05-08 19:08:26', '2022-05-08 17:08:26', '', 0, 'http://localhost/wordpress/kniha/bude-lip/', 0, 'kniha', '', 0),
(35, 1, '2022-05-08 17:52:36', '2022-05-08 15:52:36', '', 'bude líp', '', 'publish', 'closed', 'closed', '', 'bude-lip-2', '', '', '2022-05-08 19:08:45', '2022-05-08 17:08:45', '', 0, 'http://localhost/wordpress/kniha/bude-lip-2/', 0, 'kniha', '', 0),
(36, 1, '2022-05-08 17:54:25', '2022-05-08 15:54:25', '', 'bude líp', '', 'trash', 'closed', 'closed', '', 'bude-lip-3__trashed', '', '', '2022-05-08 19:08:24', '2022-05-08 17:08:24', '', 0, 'http://localhost/wordpress/kniha/bude-lip-3/', 0, 'kniha', '', 0),
(38, 1, '2022-05-08 17:55:24', '2022-05-08 15:55:24', '', 'Pokoj 2.0', '', 'inherit', 'open', 'closed', '', 'pokoj-2-0', '', '', '2022-05-08 17:55:24', '2022-05-08 15:55:24', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/05/Pokoj%202.0.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2022-05-08 17:56:10', '2022-05-08 15:56:10', '', 'Pokoj 2.0', '', 'inherit', 'open', 'closed', '', 'pokoj-2-0-2', '', '', '2022-05-08 17:56:10', '2022-05-08 15:56:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2022/05/Pokoj%202.0.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2022-05-08 18:10:04', '0000-00-00 00:00:00', '', 'Automaticky vytvořený koncept', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-08 18:10:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=kniha&p=41', 0, 'kniha', '', 0),
(42, 1, '2022-05-08 18:50:11', '2022-05-08 16:50:11', '<!-- wp:paragraph -->\n<p>Vítejte ve WordPressu. Toto je váš první příspěvek. Můžete ho upravit, nebo smazat a postupně pak začít s tvorbou vlastního webu.</p>\n<!-- /wp:paragraph -->', 'Ahoj všichni!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-08 18:50:11', '2022-05-08 16:50:11', '', 1, 'http://localhost/wordpress/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-05-08 19:11:45', '2022-05-08 17:11:45', '', 'dsadsd', '', 'trash', 'closed', 'closed', '', 'dsadsd__trashed', '', '', '2022-05-08 21:01:12', '2022-05-08 19:01:12', '', 0, 'http://localhost/wordpress/kniha/dsadsd/', 0, 'kniha', '', 0),
(44, 1, '2022-05-08 19:11:45', '2022-05-08 17:11:45', '', 'aaaa', '', 'inherit', 'open', 'closed', '', 'aaaa', '', '', '2022-05-08 19:11:45', '2022-05-08 17:11:45', '', 43, 'http://localhost/wordpress/wp-content/uploads/2022/05/aaaa.jpeg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2022-05-12 21:01:03', '2022-05-12 19:01:03', '', 'ddsad', '', 'trash', 'closed', 'closed', '', 'ddsad__trashed', '', '', '2022-05-12 21:20:00', '2022-05-12 19:20:00', '', 0, 'http://localhost/wordpress/kniha/ddsad/', 0, 'kniha', '', 0),
(47, 1, '2022-05-12 21:01:05', '2022-05-12 19:01:05', '', 'ddsad', '', 'trash', 'closed', 'closed', '', 'ddsad-2__trashed', '', '', '2022-05-12 21:19:58', '2022-05-12 19:19:58', '', 0, 'http://localhost/wordpress/kniha/ddsad-2/', 0, 'kniha', '', 0),
(48, 1, '2022-05-12 21:01:08', '2022-05-12 19:01:08', '', 'ddsad', '', 'trash', 'closed', 'closed', '', 'ddsad-3__trashed', '', '', '2022-05-12 21:19:57', '2022-05-12 19:19:57', '', 0, 'http://localhost/wordpress/kniha/ddsad-3/', 0, 'kniha', '', 0),
(49, 1, '2022-05-12 21:01:12', '2022-05-12 19:01:12', '', 'ddsad', '', 'trash', 'closed', 'closed', '', 'ddsad-4__trashed', '', '', '2022-05-12 21:19:56', '2022-05-12 19:19:56', '', 0, 'http://localhost/wordpress/kniha/ddsad-4/', 0, 'kniha', '', 0),
(50, 1, '2022-05-12 21:01:50', '2022-05-12 19:01:50', '', '1323', '', 'publish', 'closed', 'closed', '', '1323-2', '', '', '2022-05-12 21:01:50', '2022-05-12 19:01:50', '', 0, 'http://localhost/wordpress/kniha/1323-2/', 0, 'kniha', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nezařazené', 'nezarazene', 0),
(2, 'Theme1', 'theme1', 0),
(3, '1. ročník', '1-rocnik', 0),
(4, '2. ročník', '2-rocnik', 0),
(6, '3. ročník', '3-rocnik', 0),
(7, '4. ročník', '4-rocnik', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(30, 4, 0),
(32, 6, 0),
(33, 7, 0),
(34, 3, 0),
(35, 7, 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'kategorie', '', 0, 0),
(4, 4, 'kategorie', '', 0, 1),
(6, 6, 'kategorie', '', 0, 1),
(7, 7, 'kategorie', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'brozovic_michal'),
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
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '22'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1650815489'),
(20, 2, 'nickname', 'frantanovak'),
(21, 2, 'first_name', 'Franta'),
(22, 2, 'last_name', 'Novák'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(32, 2, 'wp_user_level', '0'),
(33, 3, 'nickname', 'doemmroz'),
(34, 3, 'first_name', 'Doem'),
(35, 3, 'last_name', 'Mrož'),
(36, 3, 'description', ''),
(37, 3, 'rich_editing', 'true'),
(38, 3, 'syntax_highlighting', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(45, 3, 'wp_user_level', '0'),
(47, 4, 'nickname', 'frantakarel'),
(48, 4, 'first_name', 'Franta'),
(49, 4, 'last_name', 'Karel'),
(50, 4, 'description', ''),
(51, 4, 'rich_editing', 'true'),
(52, 4, 'syntax_highlighting', 'true'),
(53, 4, 'comment_shortcuts', 'false'),
(54, 4, 'admin_color', 'fresh'),
(55, 4, 'use_ssl', '0'),
(56, 4, 'show_admin_bar_front', 'true'),
(57, 4, 'locale', ''),
(58, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(59, 4, 'wp_user_level', '0'),
(60, 5, 'nickname', 'frantabrozovic'),
(61, 5, 'first_name', 'Franta'),
(62, 5, 'last_name', 'Brožovič'),
(63, 5, 'description', ''),
(64, 5, 'rich_editing', 'true'),
(65, 5, 'syntax_highlighting', 'true'),
(66, 5, 'comment_shortcuts', 'false'),
(67, 5, 'admin_color', 'fresh'),
(68, 5, 'use_ssl', '0'),
(69, 5, 'show_admin_bar_front', 'true'),
(70, 5, 'locale', ''),
(71, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(72, 5, 'wp_user_level', '0'),
(73, 6, 'nickname', 'frantamroz'),
(74, 6, 'first_name', 'Franta'),
(75, 6, 'last_name', 'Mrož'),
(76, 6, 'description', ''),
(77, 6, 'rich_editing', 'true'),
(78, 6, 'syntax_highlighting', 'true'),
(79, 6, 'comment_shortcuts', 'false'),
(80, 6, 'admin_color', 'fresh'),
(81, 6, 'use_ssl', '0'),
(82, 6, 'show_admin_bar_front', 'true'),
(83, 6, 'locale', ''),
(84, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(85, 6, 'wp_user_level', '0'),
(86, 7, 'nickname', 'pavelmraz'),
(87, 7, 'first_name', 'Pavel'),
(88, 7, 'last_name', 'Mráz'),
(89, 7, 'description', ''),
(90, 7, 'rich_editing', 'true'),
(91, 7, 'syntax_highlighting', 'true'),
(92, 7, 'comment_shortcuts', 'false'),
(93, 7, 'admin_color', 'fresh'),
(94, 7, 'use_ssl', '0'),
(95, 7, 'show_admin_bar_front', 'true'),
(96, 7, 'locale', ''),
(97, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(98, 7, 'wp_user_level', '0'),
(99, 8, 'nickname', 'kaksdkjakjk'),
(100, 8, 'first_name', 'KAksd'),
(101, 8, 'last_name', 'KJAKJk'),
(102, 8, 'description', ''),
(103, 8, 'rich_editing', 'true'),
(104, 8, 'syntax_highlighting', 'true'),
(105, 8, 'comment_shortcuts', 'false'),
(106, 8, 'admin_color', 'fresh'),
(107, 8, 'use_ssl', '0'),
(108, 8, 'show_admin_bar_front', 'true'),
(109, 8, 'locale', ''),
(110, 8, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(111, 8, 'wp_user_level', '0'),
(116, 9, 'nickname', 'frantanovak'),
(117, 9, 'first_name', 'Franta'),
(118, 9, 'last_name', 'Novák'),
(119, 9, 'description', ''),
(120, 9, 'rich_editing', 'true'),
(121, 9, 'syntax_highlighting', 'true'),
(122, 9, 'comment_shortcuts', 'false'),
(123, 9, 'admin_color', 'fresh'),
(124, 9, 'use_ssl', '0'),
(125, 9, 'show_admin_bar_front', 'true'),
(126, 9, 'locale', ''),
(127, 9, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(128, 9, 'wp_user_level', '0'),
(130, 10, 'nickname', 'frantabrozovic'),
(131, 10, 'first_name', 'Franta'),
(132, 10, 'last_name', 'Brožovič'),
(133, 10, 'description', ''),
(134, 10, 'rich_editing', 'true'),
(135, 10, 'syntax_highlighting', 'true'),
(136, 10, 'comment_shortcuts', 'false'),
(137, 10, 'admin_color', 'fresh'),
(138, 10, 'use_ssl', '0'),
(139, 10, 'show_admin_bar_front', 'true'),
(140, 10, 'locale', ''),
(141, 10, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(142, 10, 'wp_user_level', '0'),
(147, 11, 'nickname', 'karelpetr'),
(148, 11, 'first_name', 'Karel'),
(149, 11, 'last_name', 'Petr'),
(150, 11, 'description', ''),
(151, 11, 'rich_editing', 'true'),
(152, 11, 'syntax_highlighting', 'true'),
(153, 11, 'comment_shortcuts', 'false'),
(154, 11, 'admin_color', 'fresh'),
(155, 11, 'use_ssl', '0'),
(156, 11, 'show_admin_bar_front', 'true'),
(157, 11, 'locale', ''),
(158, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(159, 11, 'wp_user_level', '0'),
(162, 11, 'session_tokens', 'a:1:{s:64:\"88e75a3f66a403367dcb3716858618e6ee49b6bea9f912ccb25876ecec371112\";a:4:{s:10:\"expiration\";i:1652635356;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36\";s:5:\"login\";i:1651425756;}}'),
(163, 1, 'session_tokens', 'a:1:{s:64:\"6e3866ba4bdd641a973f13209ebb04bde8bd3ba261989933d1f7bf9de8b8b2d8\";a:4:{s:10:\"expiration\";i:1653224006;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1652014406;}}');

-- --------------------------------------------------------

--
-- Struktura tabulky `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'brozovic_michal', '$P$BoYwe0pqtEwQzsUkks3p0wnefyTPI0/', 'brozovic_michal', 'michalhasic03@seznam.cz', 'http://localhost/wordpress', '2022-04-10 12:14:34', '', 0, 'brozovic_michal'),
(3, 'doemmroz', '$P$BffWU63DTavx5Zt49k.80ufGtmfMGZ1', 'doemmroz', 'rihakdominik@seznam.cz', '', '2022-04-24 16:44:36', '', 0, 'Doem Mrož'),
(9, 'frantanovak', '$P$BDQ.uQJtUFTsjYziFY5he19.8NGvAv0', 'frantanovak', 'michalhasicedsad03@seznam.cz', '', '2022-05-01 11:53:23', '', 0, 'Franta Novák'),
(10, 'frantabrozovic', '$P$BVNGhIv7K7vRf/ZcH3XGKC2pqcwH79/', 'frantabrozovic', 'adsa@seznam.cz', '', '2022-05-01 11:54:05', '', 0, 'Franta Brožovič'),
(11, 'karelpetr', '$P$Bm89xm8kelIb4sxRqoKz99klsUwsX61', 'karelpetr', 'kokot@seznam.cz', '', '2022-05-01 17:19:25', '', 0, 'Karel Petr');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Klíče pro tabulku `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Klíče pro tabulku `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Klíče pro tabulku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Klíče pro tabulku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Klíče pro tabulku `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Klíče pro tabulku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Klíče pro tabulku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Klíče pro tabulku `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT pro tabulku `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT pro tabulku `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pro tabulku `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pro tabulku `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT pro tabulku `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
