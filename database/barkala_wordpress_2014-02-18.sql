# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.29)
# Database: barkala_wordpress
# Generation Time: 2014-02-18 02:59:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wp_contact_form_7
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_contact_form_7`;

CREATE TABLE `wp_contact_form_7` (
  `cf7_unit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `form` text NOT NULL,
  `mail` text NOT NULL,
  `mail_2` text NOT NULL,
  `messages` text NOT NULL,
  `additional_settings` text NOT NULL,
  PRIMARY KEY (`cf7_unit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_contact_form_7` WRITE;
/*!40000 ALTER TABLE `wp_contact_form_7` DISABLE KEYS */;

INSERT INTO `wp_contact_form_7` (`cf7_unit_id`, `title`, `form`, `mail`, `mail_2`, `messages`, `additional_settings`)
VALUES
	(1,'Gallery 88 Contact Form','<div class=\"form-item\"><label>Name*</label>[text* your-name]</div>\r\n<div class=\"form-item\"><label>Email*</label>[email* your-email]</div>\r\n<div class=\"form-item\"><label>Phone</label>[text your-phone]</div>\r\n<div class=\"form-item\"><label>Enquiry</label>[textarea your-message]</div>\r\n<div class=\"form-item\">[checkbox marketing-material class:checkbox use_label_element \"Yes, please send me marketing material\"]</div>\r\n<div class=\"form-item\">[submit class:btn-submit \"Send\"]</div>','a:7:{s:7:\"subject\";s:30:\"Enquiry from Gallery88 Website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:192:\"From: [your-name] <[your-email]>\r\n\r\nPhone: [your-phone]\r\nMessage Body: [your-message]\r\n[marketing-material]\r\n\r\n--\r\nThis mail is sent via contact form on Gallery 88 http://www.gallery88.com.au/\";s:9:\"recipient\";s:47:\"Oscar@2020projects.com.au, matt@thesquad.com.au\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";s:0:\"\";}','a:8:{s:6:\"active\";s:0:\"\";s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:114:\"Message body:\r\n[your-message]\r\n\r\n--\r\nThis mail is sent via contact form on Gallery 88 http://www.gallery88.com.au/\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";s:0:\"\";}','a:13:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:84:\"Failed to send your message. Please try later or contact administrator by other way.\";s:17:\"akismet_says_spam\";s:84:\"Failed to send your message. Please try later or contact administrator by other way.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}','');

/*!40000 ALTER TABLE `wp_contact_form_7` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`)
VALUES
	(1,'http://codex.wordpress.org/','Documentation','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
	(2,'http://wordpress.org/news/','WordPress Blog','','','','Y',1,0,'0000-00-00 00:00:00','','','http://wordpress.org/news/feed/'),
	(3,'http://wordpress.org/extend/ideas/','Suggest Ideas','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
	(4,'http://wordpress.org/support/','Support Forum','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
	(5,'http://wordpress.org/extend/plugins/','Plugins','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
	(6,'http://wordpress.org/extend/themes/','Themes','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
	(7,'http://planet.wordpress.org/','WordPress Planet','','','','Y',1,0,'0000-00-00 00:00:00','','','');

/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://www.barkala.net','yes'),
	(2,'blogname','Barkala','yes'),
	(3,'blogdescription','131-135 Mona Vale Road, St Ives','yes'),
	(4,'users_can_register','0','yes'),
	(5,'admin_email','matt@thesquad.com.au','yes'),
	(6,'start_of_week','1','yes'),
	(7,'use_balanceTags','','yes'),
	(8,'use_smilies','1','yes'),
	(9,'require_name_email','1','yes'),
	(10,'comments_notify','1','yes'),
	(11,'posts_per_rss','10','yes'),
	(12,'rss_use_excerpt','0','yes'),
	(13,'mailserver_url','mail.example.com','yes'),
	(14,'mailserver_login','login@example.com','yes'),
	(15,'mailserver_pass','password','yes'),
	(16,'mailserver_port','110','yes'),
	(17,'default_category','1','yes'),
	(18,'default_comment_status','open','yes'),
	(19,'default_ping_status','open','yes'),
	(20,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'links_recently_updated_prepend','<em>','yes'),
	(27,'links_recently_updated_append','</em>','yes'),
	(28,'links_recently_updated_time','120','yes'),
	(29,'comment_moderation','0','yes'),
	(30,'moderation_notify','1','yes'),
	(31,'permalink_structure','/%postname%/','yes'),
	(32,'gzipcompression','0','yes'),
	(33,'hack_file','0','yes'),
	(34,'blog_charset','UTF-8','yes'),
	(35,'moderation_keys','','no'),
	(36,'active_plugins','a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:43:\"google-analyticator/google-analyticator.php\";}','yes'),
	(37,'home','http://www.barkala.net','yes'),
	(38,'category_base','','yes'),
	(39,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(40,'advanced_edit','0','yes'),
	(41,'comment_max_links','2','yes'),
	(42,'gmt_offset','0','yes'),
	(43,'default_email_category','1','yes'),
	(44,'recently_edited','a:5:{i:0;s:69:\"/home/gallery8/public_html/wp-content/themes/twentytwenty/contact.php\";i:2;s:67:\"/home/gallery8/public_html/wp-content/themes/twentytwenty/style.css\";i:3;s:67:\"/home/gallery8/public_html/wp-content/themes/twentytwenty/index.php\";i:4;s:78:\"/home/gallery8/public_html/wp-content/themes/twentytwenty/apartment-detail.php\";i:5;s:69:\"/home/gallery8/public_html/wp-content/themes/twentytwenty/gallery.php\";}','yes'),
	(45,'template','barkala_2014','yes'),
	(46,'stylesheet','barkala_2014','yes'),
	(47,'comment_whitelist','1','yes'),
	(48,'blacklist_keys','','no'),
	(49,'comment_registration','0','yes'),
	(51,'html_type','text/html','yes'),
	(52,'use_trackback','0','yes'),
	(53,'default_role','subscriber','yes'),
	(54,'db_version','26691','yes'),
	(55,'uploads_use_yearmonth_folders','1','yes'),
	(56,'upload_path','','yes'),
	(57,'blog_public','1','yes'),
	(58,'default_link_category','2','yes'),
	(59,'show_on_front','page','yes'),
	(60,'tag_base','','yes'),
	(61,'show_avatars','1','yes'),
	(62,'avatar_rating','G','yes'),
	(63,'upload_url_path','','yes'),
	(64,'thumbnail_size_w','150','yes'),
	(65,'thumbnail_size_h','150','yes'),
	(66,'thumbnail_crop','1','yes'),
	(67,'medium_size_w','300','yes'),
	(68,'medium_size_h','300','yes'),
	(69,'avatar_default','mystery','yes'),
	(72,'large_size_w','1024','yes'),
	(73,'large_size_h','1024','yes'),
	(74,'image_default_link_type','file','yes'),
	(75,'image_default_size','','yes'),
	(76,'image_default_align','','yes'),
	(77,'close_comments_for_old_posts','0','yes'),
	(78,'close_comments_days_old','14','yes'),
	(79,'thread_comments','1','yes'),
	(80,'thread_comments_depth','5','yes'),
	(81,'page_comments','0','yes'),
	(82,'comments_per_page','50','yes'),
	(83,'default_comments_page','newest','yes'),
	(84,'comment_order','asc','yes'),
	(85,'sticky_posts','a:0:{}','yes'),
	(86,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(87,'widget_text','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(88,'widget_rss','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(89,'timezone_string','','yes'),
	(91,'embed_size_w','','yes'),
	(92,'embed_size_h','600','yes'),
	(93,'page_for_posts','0','yes'),
	(94,'page_on_front','4','yes'),
	(95,'default_post_format','0','yes'),
	(96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:7:\"pages-2\";i:1;s:10:\"calendar-2\";i:2;s:7:\"links-2\";i:3;s:6:\"text-2\";i:4;s:5:\"rss-2\";i:5;s:11:\"tag_cloud-2\";i:6;s:10:\"nav_menu-2\";}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
	(103,'cron','a:5:{i:1392708540;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1392734308;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1392768902;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1392777529;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(633,'ga_sitespeed','enabled','yes'),
	(107,'widget_pages','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_calendar','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_links','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_tag_cloud','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'widget_nav_menu','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(115,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:22:\"http://www.barkala.net\";s:4:\"link\";s:98:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://www.barkala.net/\";s:3:\"url\";s:142:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://www.gallery88.com.au/stage/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),
	(3792,'_site_transient_timeout_theme_roots','1392692877','yes'),
	(3793,'_site_transient_theme_roots','a:4:{s:12:\"barkala_2014\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes'),
	(114,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1392692030;s:7:\"checked\";a:4:{s:12:\"barkala_2014\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.0\";s:14:\"twentythirteen\";s:3:\"1.1\";s:12:\"twentytwelve\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),
	(240,'_transient_random_seed','7b387c2258c6e6413a526d34b2bc9c4f','yes'),
	(757,'ga_status','disabled','yes'),
	(758,'ga_uid','UA-XXXXXXXX-X','yes'),
	(759,'ga_admin_status','enabled','yes'),
	(760,'ga_admin_disable','remove','yes'),
	(761,'ga_admin_role','a:1:{i:0;s:13:\"administrator\";}','yes'),
	(762,'ga_dashboard_role','a:1:{i:0;s:13:\"administrator\";}','yes'),
	(763,'ga_adsense','','yes'),
	(764,'ga_extra','','yes'),
	(765,'ga_extra_after','','yes'),
	(766,'ga_event','enabled','yes'),
	(767,'ga_outbound','enabled','yes'),
	(768,'ga_outbound_prefix','outgoing','yes'),
	(769,'ga_downloads','','yes'),
	(770,'ga_downloads_prefix','download','yes'),
	(771,'ga_widgets','enabled','yes'),
	(772,'ga_annon','','yes'),
	(773,'ga_defaults','yes','yes'),
	(774,'ga_google_token','','yes'),
	(484,'db_upgraded','','yes'),
	(3771,'can_compress_scripts','1','yes'),
	(142,'_transient_timeout_plugin_slugs','1392778446','no'),
	(143,'_transient_plugin_slugs','a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"google-analyticator/google-analyticator.php\";i:3;s:47:\"simple-google-sitemap/simple-google-sitemap.php\";}','no'),
	(144,'recently_activated','a:0:{}','yes'),
	(162,'ga_compatibility','off','yes'),
	(163,'widget_googlestats','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(167,'theme_mods_twentytwenty','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1392606660;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}}}}','yes'),
	(250,'google_stats_siteUsage_ga:45739309','a:2:{s:5:\"stats\";a:1:{i:0;a:7:{s:5:\"title\";s:0:\"\";s:9:\"ga:visits\";s:2:\"16\";s:10:\"ga:bounces\";s:1:\"7\";s:12:\"ga:entrances\";s:2:\"16\";s:12:\"ga:pageviews\";s:2:\"60\";s:13:\"ga:timeOnSite\";s:5:\"838.0\";s:12:\"ga:newVisits\";s:1:\"9\";}}s:10:\"lastcalled\";i:1316993073;}','yes'),
	(251,'google_stats_topPages_ga:45739309','a:2:{s:5:\"stats\";a:10:{i:0;a:4:{s:5:\"title\";s:81:\"ga:pageTitle=Gallery 88 | 88 Berry Street, North Sydney | ga:pagePath=/full-site/\";s:12:\"ga:pageTitle\";s:42:\"Gallery 88 | 88 Berry Street, North Sydney\";s:11:\"ga:pagePath\";s:11:\"/full-site/\";s:12:\"ga:pageviews\";s:2:\"15\";}i:1;a:4:{s:5:\"title\";s:81:\"ga:pageTitle=The Apartments | Gallery 88 | ga:pagePath=/full-site/the-apartments/\";s:12:\"ga:pageTitle\";s:27:\"The Apartments | Gallery 88\";s:11:\"ga:pagePath\";s:26:\"/full-site/the-apartments/\";s:12:\"ga:pageviews\";s:1:\"9\";}i:2;a:4:{s:5:\"title\";s:67:\"ga:pageTitle=Gallery | Gallery 88 | ga:pagePath=/full-site/gallery/\";s:12:\"ga:pageTitle\";s:20:\"Gallery | Gallery 88\";s:11:\"ga:pagePath\";s:19:\"/full-site/gallery/\";s:12:\"ga:pageviews\";s:1:\"7\";}i:3;a:4:{s:5:\"title\";s:69:\"ga:pageTitle=Location | Gallery 88 | ga:pagePath=/full-site/location/\";s:12:\"ga:pageTitle\";s:21:\"Location | Gallery 88\";s:11:\"ga:pagePath\";s:20:\"/full-site/location/\";s:12:\"ga:pageviews\";s:1:\"6\";}i:4;a:4:{s:5:\"title\";s:104:\"ga:pageTitle=Apartment 2 | Gallery 88 | ga:pagePath=/full-site/the-apartments/apartment-2/?KeepThis=true\";s:12:\"ga:pageTitle\";s:24:\"Apartment 2 | Gallery 88\";s:11:\"ga:pagePath\";s:52:\"/full-site/the-apartments/apartment-2/?KeepThis=true\";s:12:\"ga:pageviews\";s:1:\"3\";}i:5;a:4:{s:5:\"title\";s:104:\"ga:pageTitle=Apartment 3 | Gallery 88 | ga:pagePath=/full-site/the-apartments/apartment-3/?KeepThis=true\";s:12:\"ga:pageTitle\";s:24:\"Apartment 3 | Gallery 88\";s:11:\"ga:pagePath\";s:52:\"/full-site/the-apartments/apartment-3/?KeepThis=true\";s:12:\"ga:pageviews\";s:1:\"2\";}i:6;a:4:{s:5:\"title\";s:104:\"ga:pageTitle=Apartment 5 | Gallery 88 | ga:pagePath=/full-site/the-apartments/apartment-5/?KeepThis=true\";s:12:\"ga:pageTitle\";s:24:\"Apartment 5 | Gallery 88\";s:11:\"ga:pagePath\";s:52:\"/full-site/the-apartments/apartment-5/?KeepThis=true\";s:12:\"ga:pageviews\";s:1:\"2\";}i:7;a:4:{s:5:\"title\";s:91:\"ga:pageTitle=Gallery 88 | 88 Berry Street, North Sydney | ga:pagePath=/~gallery8/full-site/\";s:12:\"ga:pageTitle\";s:42:\"Gallery 88 | 88 Berry Street, North Sydney\";s:11:\"ga:pagePath\";s:21:\"/~gallery8/full-site/\";s:12:\"ga:pageviews\";s:1:\"2\";}i:8;a:4:{s:5:\"title\";s:66:\"ga:pageTitle=Page not found | Gallery 88 | ga:pagePath=/full-site/\";s:12:\"ga:pageTitle\";s:27:\"Page not found | Gallery 88\";s:11:\"ga:pagePath\";s:11:\"/full-site/\";s:12:\"ga:pageviews\";s:1:\"2\";}i:9;a:4:{s:5:\"title\";s:104:\"ga:pageTitle=Apartment 4 | Gallery 88 | ga:pagePath=/full-site/the-apartments/apartment-4/?KeepThis=true\";s:12:\"ga:pageTitle\";s:24:\"Apartment 4 | Gallery 88\";s:11:\"ga:pagePath\";s:52:\"/full-site/the-apartments/apartment-4/?KeepThis=true\";s:12:\"ga:pageviews\";s:1:\"1\";}}s:10:\"lastcalled\";i:1316993074;}','yes'),
	(252,'google_stats_topReferrers_ga:45739309','a:2:{s:5:\"stats\";a:0:{}s:10:\"lastcalled\";i:1316993076;}','yes'),
	(253,'google_stats_topSearches_ga:45739309','a:2:{s:5:\"stats\";a:0:{}s:10:\"lastcalled\";i:1316993076;}','yes'),
	(288,'category_children','a:0:{}','yes'),
	(747,'initial_db_version','18226','yes'),
	(746,'uninstall_plugins','a:0:{}','no'),
	(694,'_transient_plugins_delete_result_1','1','yes'),
	(745,'current_theme','Barkala_2014','yes'),
	(3769,'rewrite_rules','a:69:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}','yes'),
	(3770,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:41:\"https://wordpress.org/wordpress-3.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:41:\"https://wordpress.org/wordpress-3.8.1.zip\";s:10:\"no_content\";s:52:\"https://wordpress.org/wordpress-3.8.1-no-content.zip\";s:11:\"new_bundled\";s:53:\"https://wordpress.org/wordpress-3.8.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.8.1\";s:7:\"version\";s:5:\"3.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1392692028;s:15:\"version_checked\";s:5:\"3.8.1\";s:12:\"translations\";a:0:{}}','yes'),
	(751,'ga_version','6.4.1','yes'),
	(755,'wpcf7','a:1:{s:7:\"version\";s:3:\"3.7\";}','yes'),
	(3802,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1392692039;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"2.5.9\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"3.7\";s:43:\"google-analyticator/google-analyticator.php\";s:7:\"6.4.7.3\";s:47:\"simple-google-sitemap/simple-google-sitemap.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),
	(3795,'ga_analytic_snippet','enabled','yes'),
	(3796,'ga_admin_disable_DimentionIndex','','yes'),
	(3797,'key_ga_show_ad','1','yes'),
	(3798,'ga_enhanced_link_attr','disabled','yes'),
	(3768,'link_manager_enabled','1','yes'),
	(3744,'_site_transient_timeout_browser_d609e07d377d40fed0f8487a4505742c','1393203911','yes'),
	(3745,'_site_transient_browser_d609e07d377d40fed0f8487a4505742c','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"32.0.1700.107\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),
	(3794,'ga_disable_gasites','disabled','yes'),
	(3753,'theme_mods_twentyeleven','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1392606672;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:7:\"pages-2\";i:1;s:10:\"calendar-2\";i:2;s:7:\"links-2\";i:3;s:6:\"text-2\";i:4;s:5:\"rss-2\";i:5;s:11:\"tag_cloud-2\";i:6;s:10:\"nav_menu-2\";}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}}}}','yes'),
	(3754,'theme_switched','','yes'),
	(3757,'theme_mods_barkala_2014','a:1:{i:0;b:0;}','yes');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(2,4,'_edit_last','1'),
	(3,4,'_edit_lock','1392607887:1'),
	(4,4,'_wp_page_template','homepage.php'),
	(7,8,'_edit_last','1'),
	(8,8,'_edit_lock','1392690721:1'),
	(93,130,'_wp_page_template','contact.php'),
	(11,8,'_wp_page_template','location.php'),
	(12,14,'_edit_last','1'),
	(13,14,'_wp_page_template','the-apartments.php'),
	(14,14,'_edit_lock','1392690649:1'),
	(15,18,'_edit_last','1'),
	(16,18,'_edit_lock','1392684606:1'),
	(17,18,'_wp_page_template','apartment-detail.php'),
	(18,28,'_edit_last','1'),
	(19,28,'_edit_lock','1392615531:1'),
	(92,130,'_edit_lock','1392616853:1'),
	(91,130,'_edit_last','1'),
	(22,28,'_wp_page_template','gallery.php'),
	(23,32,'_edit_last','1'),
	(24,32,'_edit_lock','1354598489:1'),
	(25,32,'_wp_page_template','gallery-lifestyle.php'),
	(26,34,'_edit_last','1'),
	(27,34,'_edit_lock','1310108905:2'),
	(28,34,'_wp_page_template','gallery-interiors.php'),
	(29,36,'_edit_last','1'),
	(30,36,'_edit_lock','1392690927:1'),
	(31,36,'_wp_page_template','contact.php'),
	(35,18,'Bedrooms','2'),
	(36,18,'Bathrooms','2'),
	(37,18,'Cars','1'),
	(38,18,'Filename','apartment-1'),
	(39,44,'_edit_last','1'),
	(40,44,'_edit_lock','1392617075:1'),
	(41,44,'_wp_page_template','floorplan.php'),
	(42,58,'_edit_last','1'),
	(43,58,'_edit_lock','1392684665:1'),
	(44,58,'Bedrooms','2'),
	(45,58,'Bathrooms','2'),
	(46,58,'Cars','1'),
	(47,58,'Filename','apartment-2'),
	(48,58,'_wp_page_template','apartment-detail.php'),
	(49,60,'_edit_last','1'),
	(50,60,'_edit_lock','1392684739:1'),
	(51,60,'Bedrooms','2'),
	(52,60,'Bathrooms','2'),
	(53,60,'Cars','1'),
	(54,60,'Filename','apartment-3'),
	(55,60,'_wp_page_template','apartment-detail.php'),
	(56,63,'_edit_last','1'),
	(57,63,'_edit_lock','1392685107:1'),
	(58,63,'Bedrooms','2'),
	(59,63,'Bathrooms','2'),
	(60,63,'Cars','1'),
	(61,63,'Filename','apartment-4'),
	(62,63,'_wp_page_template','apartment-detail.php'),
	(63,65,'_edit_last','1'),
	(64,65,'_edit_lock','1392685807:1'),
	(65,65,'Bedrooms','2'),
	(66,65,'Bathrooms','2'),
	(67,65,'Cars','1'),
	(68,65,'Filename','apartment-5'),
	(69,65,'_wp_page_template','apartment-detail.php'),
	(70,67,'_edit_last','1'),
	(71,67,'_edit_lock','1392685864:1'),
	(72,67,'Bedrooms','2'),
	(73,67,'Bathrooms','2'),
	(74,67,'Cars','1'),
	(75,67,'Filename','apartment-6'),
	(76,67,'_wp_page_template','apartment-detail.php'),
	(77,69,'_edit_last','1'),
	(78,69,'_edit_lock','1392685910:1'),
	(79,69,'Bedrooms','2'),
	(80,69,'Bathrooms','2'),
	(81,69,'Cars','1'),
	(82,69,'Filename','apartment-7'),
	(83,69,'_wp_page_template','apartment-detail.php'),
	(84,71,'_edit_last','1'),
	(85,71,'_edit_lock','1392686009:1'),
	(86,71,'Bedrooms','2'),
	(87,71,'Bathrooms','2'),
	(88,71,'Cars','1'),
	(89,71,'Filename','apartment-8'),
	(90,71,'_wp_page_template','apartment-detail.php'),
	(94,134,'_edit_last','1'),
	(95,134,'_edit_lock','1392674851:1'),
	(96,134,'_wp_page_template','default'),
	(97,137,'_edit_last','1'),
	(98,137,'_edit_lock','1355171403:1'),
	(99,137,'_wp_page_template','default'),
	(100,139,'_edit_last','1'),
	(101,139,'_edit_lock','1355171381:1'),
	(102,139,'_wp_page_template','default'),
	(103,141,'_edit_last','1'),
	(104,141,'_edit_lock','1392674975:1'),
	(105,141,'_wp_page_template','default'),
	(106,162,'_old_cf7_unit_id','1'),
	(107,162,'_form','<div class=\"form-item\"><label>Name*</label>[text* your-name]</div>\n<div class=\"form-item\"><label>Email*</label>[email* your-email]</div>\n<div class=\"form-item\"><label>Phone</label>[text your-phone]</div>\n<div class=\"form-item\"><label>Enquiry</label>[textarea your-message]</div>\n<div class=\"form-item\">[checkbox marketing-material class:checkbox use_label_element \"Yes, please send me marketing material\"]</div>\n<div class=\"form-item\">[submit class:btn-submit \"Submit\"]</div>'),
	(108,162,'_mail','a:7:{s:7:\"subject\";s:28:\"Enquiry from Barkala Website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:177:\"From: [your-name] <[your-email]>\n\nPhone: [your-phone]\nMessage Body: [your-message]\n[marketing-material]\n\n--\nThis mail is sent via contact form on Barkala http://www.barkala.net/\";s:9:\"recipient\";s:16:\"test@test.com.au\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
	(109,162,'_mail_2','a:8:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:110:\"Message body:\n[your-message]\n\n--\nThis mail is sent via contact form on Gallery 88 http://www.gallery88.com.au/\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
	(110,162,'_messages','a:14:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:84:\"Failed to send your message. Please try later or contact administrator by other way.\";s:17:\"akismet_says_spam\";s:84:\"Failed to send your message. Please try later or contact administrator by other way.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";}'),
	(111,162,'_additional_settings',''),
	(112,175,'_edit_last','1'),
	(113,175,'_edit_lock','1392686087:1'),
	(114,175,'Filename','apartment-9'),
	(115,175,'_wp_page_template','apartment-detail.php'),
	(116,175,'Bedrooms','2'),
	(117,175,'Cars','1'),
	(118,175,'Bathrooms','2'),
	(119,182,'_edit_last','1'),
	(120,182,'_edit_lock','1392686155:1'),
	(121,182,'Filename','apartment-10'),
	(122,182,'_wp_page_template','apartment-detail.php'),
	(123,182,'Cars','1'),
	(124,182,'Bedrooms','2'),
	(125,182,'Bathrooms','2'),
	(126,220,'_edit_last','1'),
	(127,220,'_edit_lock','1392686293:1'),
	(128,220,'_wp_page_template','apartment-detail.php'),
	(129,220,'Bedrooms','2'),
	(130,220,'Bathrooms','2'),
	(131,220,'Cars','1'),
	(132,220,'Filename','apartment-11'),
	(133,246,'_edit_last','1'),
	(134,246,'_edit_lock','1392686437:1'),
	(135,246,'Bathrooms','2'),
	(136,246,'Bedrooms','2'),
	(137,246,'Cars','1'),
	(138,246,'Filename','apartment-12'),
	(139,246,'_wp_page_template','apartment-detail.php'),
	(140,249,'_edit_last','1'),
	(141,249,'_edit_lock','1392686524:1'),
	(142,249,'Bathrooms','2'),
	(143,249,'Bedrooms','2'),
	(144,249,'Cars','1'),
	(145,249,'Filename','apartment-13'),
	(146,249,'_wp_page_template','apartment-detail.php'),
	(147,251,'_edit_last','1'),
	(148,251,'_edit_lock','1392686615:1'),
	(149,251,'Bathrooms','2'),
	(150,251,'Bedrooms','2'),
	(151,251,'Cars','1'),
	(152,251,'Filename','apartment-14'),
	(153,251,'_wp_page_template','apartment-detail.php'),
	(154,253,'_edit_last','1'),
	(155,253,'_edit_lock','1392686711:1'),
	(156,253,'Bathrooms','2'),
	(157,253,'Bedrooms','2'),
	(158,253,'Cars','1'),
	(159,253,'Filename','apartment-15'),
	(160,253,'_wp_page_template','apartment-detail.php'),
	(161,255,'_edit_last','1'),
	(162,255,'_edit_lock','1392687100:1'),
	(163,255,'Bathrooms','2'),
	(164,255,'Bedrooms','2'),
	(165,255,'Cars','1'),
	(166,255,'Filename','apartment-16'),
	(167,255,'_wp_page_template','apartment-detail.php'),
	(168,257,'_edit_last','1'),
	(169,257,'_edit_lock','1392687901:1'),
	(170,257,'Bathrooms','2'),
	(171,257,'Bedrooms','2'),
	(172,257,'Cars','1'),
	(173,257,'Filename','apartment-17'),
	(174,257,'_wp_page_template','apartment-detail.php'),
	(175,259,'_edit_last','1'),
	(176,259,'_edit_lock','1392688066:1'),
	(177,259,'Bathrooms','2'),
	(178,259,'Bedrooms','2'),
	(179,259,'Cars','1'),
	(180,259,'Filename','apartment-18'),
	(181,259,'_wp_page_template','apartment-detail.php'),
	(182,261,'_edit_last','1'),
	(183,261,'_edit_lock','1392688144:1'),
	(184,261,'Bathrooms','2'),
	(185,261,'Bedrooms','2'),
	(186,261,'Cars','1'),
	(187,261,'Filename','apartment-19'),
	(188,261,'_wp_page_template','apartment-detail.php'),
	(189,263,'_edit_last','1'),
	(190,263,'_edit_lock','1392688231:1'),
	(191,263,'Bathrooms','2'),
	(192,263,'Bedrooms','2'),
	(193,263,'Cars','1'),
	(194,263,'Filename','apartment-20'),
	(195,263,'_wp_page_template','apartment-detail.php'),
	(196,265,'_edit_last','1'),
	(197,265,'_edit_lock','1392688367:1'),
	(198,265,'Bathrooms','2'),
	(199,265,'Bedrooms','2'),
	(200,265,'Cars','1'),
	(201,265,'Filename','apartment-21'),
	(202,265,'_wp_page_template','apartment-detail.php'),
	(203,267,'_edit_last','1'),
	(204,267,'_edit_lock','1392690598:1'),
	(205,267,'Bathrooms','2'),
	(206,267,'Bedrooms','2'),
	(207,267,'Cars','1'),
	(208,267,'Filename','apartment-22'),
	(209,267,'_wp_page_template','apartment-detail.php');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(106,1,'2011-05-27 03:33:19','2011-05-27 03:33:19','<strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest.\r\n\r\n&nbsp;\r\n\r\nOr call <strong>1300 GALLERY</strong> or 1300 425 537 for further information.\r\n\r\n&nbsp;\r\n\r\nShowroom <strong>COMING SOON!</strong>\r\n\r\n&nbsp;','Contact','','inherit','open','open','','36-revision-v1','','','2011-05-27 03:33:19','2011-05-27 03:33:19','',36,'http://www.gallery88.com.au/stage/36-revision-5/',0,'revision','',0),
	(119,1,'2011-07-07 23:35:12','2011-07-07 23:35:12','<p><strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.</p>\r\n\r\n<p>Or call <strong>9997 8800</strong> for further information.</p>\r\n\r\n<p>Showroom <strong>COMING SOON!</strong></p>','Contact','','inherit','open','open','','36-revision-v1','','','2011-07-07 23:35:12','2011-07-07 23:35:12','',36,'http://www.gallery88.com.au/36-revision-7/',0,'revision','',0),
	(107,1,'2011-05-27 03:53:45','2011-05-27 03:53:45','This light filled north facing apartment with its flowing floor plan is beautifully appointed. With living areas flowing from the kitchen, this apartment also includes a media area for those needing to work or study from home.','Apartment 1','','inherit','open','open','','18-revision-13','','','2011-05-27 03:53:45','2011-05-27 03:53:45','',18,'http://www.gallery88.com.au/18-revision-13/',0,'revision','',0),
	(108,1,'2011-05-27 05:05:59','2011-05-27 05:05:59','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-7','','','2011-05-27 05:05:59','2011-05-27 05:05:59','',58,'http://www.gallery88.com.au/58-revision-7/',0,'revision','',0),
	(4,1,'2011-05-17 02:39:29','2011-05-17 02:39:29','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien.\r\n\r\nDonec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.','131-135 Mona Vale Road, St Ives','','publish','open','open','','home','','','2014-02-17 03:33:17','2014-02-17 03:33:17','',0,'http://www.gallery88.com.au/stage/?page_id=4',0,'page','',0),
	(5,1,'2011-05-17 02:39:25','2011-05-17 02:39:25','','Home','','inherit','open','open','','4-revision','','','2011-05-17 02:39:25','2011-05-17 02:39:25','',4,'http://www.gallery88.com.au/stage/?p=5',0,'revision','',0),
	(110,1,'2011-05-27 04:49:23','2011-05-27 04:49:23','Combining highly desired north and east aspects, this home offers exceptional space and privacy.  Entertain or just enjoy the over sized terrace which runs almost the full length of the home or simply relax in your spa!','Apartment 4','','inherit','open','open','','63-revision-5','','','2011-05-27 04:49:23','2011-05-27 04:49:23','',63,'http://www.gallery88.com.au/63-revision-5/',0,'revision','',0),
	(111,1,'2011-07-07 06:47:35','2011-07-07 06:47:35','Combining highly desired north and east aspects, this home offers exceptional space and privacy.  Entertain or just enjoy the over sized terrace which runs almost the full length of the home or simply relax in your spa!','Apartment 4','','inherit','open','open','','63-revision-6','','','2011-07-07 06:47:35','2011-07-07 06:47:35','',63,'http://www.gallery88.com.au/63-revision-6/',0,'revision','',0),
	(112,1,'2011-07-07 06:47:51','2011-07-07 06:47:51','Combining highly desired north and east aspects, this home offers exceptional space and privacy.  Entertain or just enjoy the over sized terrace which runs almost the full length of the home or simply relax in your spa!','Apartment 4','','inherit','open','open','','63-revision-7','','','2011-07-07 06:47:51','2011-07-07 06:47:51','',63,'http://www.gallery88.com.au/63-revision-7/',0,'revision','',0),
	(7,1,'2011-05-17 02:39:29','2011-05-17 02:39:29','','Home','','inherit','open','open','','4-revision-2','','','2011-05-17 02:39:29','2011-05-17 02:39:29','',4,'http://www.gallery88.com.au/stage/2011/05/17/4-revision-2/',0,'revision','',0),
	(8,1,'2011-05-17 02:56:27','2011-05-17 02:56:27','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Location','','publish','open','open','','location','','','2014-02-18 02:32:53','2014-02-18 02:32:53','',0,'http://www.gallery88.com.au/stage/?page_id=8',0,'page','',0),
	(272,1,'2014-02-18 02:32:53','2014-02-18 02:32:53','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Location','','inherit','open','open','','8-revision-v1','','','2014-02-18 02:32:53','2014-02-18 02:32:53','',8,'http://www.barkala.net/8-revision-v1/',0,'revision','',0),
	(134,1,'2012-12-06 04:25:52','2012-12-06 04:25:52','<h1>Congratulations!</h1>\r\nYou have won First Prize in the Gallery 88 lucky door prize.\r\n\r\nYour prize is 10% off the price of an available Gallery 88 apartment.\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','First Prize','','publish','open','open','','first','','','2012-12-10 20:30:55','2012-12-10 20:30:55','',0,'http://www.gallery88.com.au/full-site/?page_id=134',0,'page','',0),
	(10,1,'2011-05-17 02:55:57','2011-05-17 02:55:57','','Location','','inherit','open','open','','8-revision-v1','','','2011-05-17 02:55:57','2011-05-17 02:55:57','',8,'http://www.gallery88.com.au/stage/2011/05/17/8-revision/',0,'revision','',0),
	(271,1,'2012-12-06 05:16:52','2012-12-06 05:16:52','The tranquillity inside these rare homes belies GALLERY 88’s cosmopolitan location. North Sydney provides all the resources of a major centre.\r\n\r\nA plethora of cafés, fine restaurants, bars and fantastic shopping is at your door. Excellent private hospitals, numerous specialist medical practices, Stanton Library, exclusive schools and tertiary education facilities are all nearby.','Location','','inherit','open','open','','8-revision-v1','','','2012-12-06 05:16:52','2012-12-06 05:16:52','',8,'http://www.barkala.net/8-revision-v1/',0,'revision','',0),
	(156,1,'2012-12-06 05:14:35','2012-12-06 05:14:35','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize. Your prize is 10% off the price of any available apartment at Gallery 88!','First Prize','','inherit','open','open','','134-revision-6','','','2012-12-06 05:14:35','2012-12-06 05:14:35','',134,'http://www.gallery88.com.au/134-revision-6/',0,'revision','',0),
	(12,1,'2011-05-17 02:56:27','2011-05-17 02:56:27','','Location','','inherit','open','open','','8-revision-v1','','','2011-05-17 02:56:27','2011-05-17 02:56:27','',8,'http://www.gallery88.com.au/stage/2011/05/17/8-revision-2/',0,'revision','',0),
	(13,1,'2011-05-17 02:54:00','2011-05-17 02:54:00','<h1>88 Berry Street, North Sydney</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien risus luctus.</p>\r\n<p>Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa. Curabitur congue vehicula lacus, non varius tellus blandit vel pharetra in tempus.</p>','Home','','inherit','open','open','','4-revision-3','','','2011-05-17 02:54:00','2011-05-17 02:54:00','',4,'http://www.gallery88.com.au/stage/2011/05/17/4-revision-3/',0,'revision','',0),
	(14,1,'2011-05-17 03:19:16','2011-05-17 03:19:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. \r\n\r\nFusce dolor dolor, lacinia ac interdum vitae, consequat at risus.\r\n\r\n<strong>Select an apartment below for a more detailed overview.</strong>','The Apartments','','publish','open','open','','the-apartments','','','2014-02-18 02:32:26','2014-02-18 02:32:26','',0,'http://www.gallery88.com.au/stage/?page_id=14',0,'page','',0),
	(15,1,'2011-05-17 03:18:55','2011-05-17 03:18:55','','Auto Draft','','inherit','open','open','','14-revision-v1','','','2011-05-17 03:18:55','2011-05-17 03:18:55','',14,'http://www.gallery88.com.au/stage/2011/05/17/14-revision/',0,'revision','',0),
	(16,1,'2011-05-17 03:19:16','2011-05-17 03:19:16','','The Apartments','','inherit','open','open','','14-revision-v1','','','2011-05-17 03:19:16','2011-05-17 03:19:16','',14,'http://www.gallery88.com.au/stage/2011/05/17/14-revision-2/',0,'revision','',0),
	(17,1,'2011-05-17 03:21:40','2011-05-17 03:21:40','','The Apartments','','inherit','open','open','','14-revision-v1','','','2011-05-17 03:21:40','2011-05-17 03:21:40','',14,'http://www.gallery88.com.au/stage/2011/05/17/14-revision-3/',0,'revision','',0),
	(55,1,'2011-05-18 01:52:08','2011-05-18 01:52:08','Equal emphasis has been placed on style and functionality, creating spaces both beautiful and easy to live within.\r\n\r\nThe design is modern grandeur, a fusion of contemporary urban and elegant sophistication.\r\n\r\n&nbsp;','The Apartments','','inherit','open','open','','14-revision-v1','','','2011-05-18 01:52:08','2011-05-18 01:52:08','',14,'http://www.gallery88.com.au/stage/2011/05/18/14-revision-5/',0,'revision','',0),
	(18,1,'2011-05-17 03:30:45','2011-05-17 03:30:45','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 1','','publish','open','open','','apartment-1','','','2014-02-18 00:51:55','2014-02-18 00:51:55','',14,'http://www.gallery88.com.au/stage/?page_id=18',0,'page','',0),
	(19,1,'2011-05-17 03:30:38','2011-05-17 03:30:38','','Apartment 1','','inherit','open','open','','18-revision','','','2011-05-17 03:30:38','2011-05-17 03:30:38','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision/',0,'revision','',0),
	(20,1,'2011-05-17 03:30:45','2011-05-17 03:30:45','','Apartment 1','','inherit','open','open','','18-revision-2','','','2011-05-17 03:30:45','2011-05-17 03:30:45','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-2/',0,'revision','',0),
	(21,1,'2011-05-17 03:34:57','2011-05-17 03:34:57','','Apartment 1','','inherit','open','open','','18-revision-3','','','2011-05-17 03:34:57','2011-05-17 03:34:57','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-3/',0,'revision','',0),
	(22,1,'2011-05-17 03:36:40','2011-05-17 03:36:40','Testing shit here','Apartment 1','','inherit','open','open','','18-revision-4','','','2011-05-17 03:36:40','2011-05-17 03:36:40','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-4/',0,'revision','',0),
	(92,1,'2013-01-09 00:19:43','2013-01-09 00:19:43','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms and a flex room, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-autosave','','','2013-01-09 00:19:43','2013-01-09 00:19:43','',58,'http://www.gallery88.com.au/stage/58-autosave/',0,'revision','',0),
	(27,1,'2011-05-17 03:49:12','2011-05-17 03:49:12','<dl> <dt class=\"bed-data\">Bedrooms</dt> <dd>3</dd> <dt class=\"bath-data\">Bathrooms</dt> <dd>3</dd> <dt class=\"car-data\">Cars</dt> <dd>2</dd> </dl>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.\r\n<div class=\"apartment-detail-links\"><a href=\"apartment-1-schedule.pdf\">Download Finish Schedule (pdf)</a>\r\n<a href=\"apartment-1-floorplan.pdf\">Download Floorplan (pdf)</a></div>\r\n<div class=\"apartment-detail-floorplan\"><a href=\"floorplan-1.html\" target=\"_parent\"><img src=\"apartments/floorplan-1.png\" alt=\"Enlarge Floorplan\" width=\"450\" height=\"450\" /></a></div>','Apartment 1','','inherit','open','open','','18-revision-8','','','2011-05-17 03:49:12','2011-05-17 03:49:12','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-8/',0,'revision','',0),
	(23,1,'2011-05-17 03:46:08','2011-05-17 03:46:08','		<div class=\"apartment-detail-content\">\r\n			<h1>Apartment 1</h1>\r\n			<dl>\r\n				<dt class=\"bed-data\">Bedrooms</dt>\r\n				<dd>3</dd>\r\n				<dt class=\"bath-data\">Bathrooms</dt>\r\n				<dd>3</dd>\r\n				<dt class=\"car-data\">Cars</dt>\r\n				<dd>2</dd>\r\n			</dl>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.</p>\r\n			<div class=\"apartment-detail-links\">\r\n				<a href=\"apartment-1-schedule.pdf\">Download Finish Schedule (pdf)</a>\r\n				<a href=\"apartment-1-floorplan.pdf\">Download Floorplan (pdf)</a>\r\n			</div>\r\n		</div>\r\n		<div class=\"apartment-detail-floorplan\">\r\n			<a target=\"_parent\" href=\"floorplan-1.html\"><img src=\"apartments/floorplan-1.png\" alt=\"Enlarge Floorplan\" width=\"450\" height=\"450\" /></a>\r\n		</div>','Apartment 1','','inherit','open','open','','18-revision-5','','','2011-05-17 03:46:08','2011-05-17 03:46:08','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-5/',0,'revision','',0),
	(24,1,'2014-02-18 00:48:55','2014-02-18 00:48:55','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 1','','inherit','open','open','','18-autosave','','','2014-02-18 00:48:55','2014-02-18 00:48:55','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-autosave/',0,'revision','',0),
	(91,1,'2011-05-17 23:43:40','2011-05-17 23:43:40','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.\r\n\r\n','Apartment 1','','inherit','open','open','','18-revision-12','','','2011-05-17 23:43:40','2011-05-17 23:43:40','',18,'http://www.gallery88.com.au/stage/18-revision-12/',0,'revision','',0),
	(59,1,'2011-05-18 03:41:10','2011-05-18 03:41:10','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 2','','inherit','open','open','','58-revision','','','2011-05-18 03:41:10','2011-05-18 03:41:10','',58,'http://www.gallery88.com.au/stage/2011/05/18/58-revision/',0,'revision','',0),
	(60,1,'2011-05-18 03:53:46','2011-05-18 03:53:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 3','','publish','open','open','','apartment-3','','','2014-02-18 00:53:50','2014-02-18 00:53:50','',14,'http://www.gallery88.com.au/stage/?page_id=60',0,'page','',0),
	(195,1,'2013-01-09 00:42:48','2013-01-09 00:42:48','Combining highly desired north and east aspects, this home offers exceptional space and privacy.  Entertain or just enjoy the over sized terrace which runs almost the full length of the home or simply relax in your spa!','Apartment 4','','inherit','open','open','','63-revision-9','','','2013-01-09 00:42:48','2013-01-09 00:42:48','',63,'http://www.gallery88.com.au/63-revision-9/',0,'revision','',0),
	(25,1,'2011-05-17 03:46:43','2011-05-17 03:46:43','		<div class=\"apartment-detail-content\">\r\n			<h1>Apartment 1</h1>\r\n			<dl>\r\n				<dt class=\"bed-data\">Bedrooms</dt>\r\n				<dd>3</dd>\r\n				<dt class=\"bath-data\">Bathrooms</dt>\r\n				<dd>3</dd>\r\n				<dt class=\"car-data\">Cars</dt>\r\n				<dd>2</dd>\r\n			</dl>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.</p>\r\n			<div class=\"apartment-detail-links\">\r\n				<a href=\"apartment-1-schedule.pdf\">Download Finish Schedule (pdf)</a>\r\n				<a href=\"apartment-1-floorplan.pdf\">Download Floorplan (pdf)</a>\r\n			</div>\r\n		</div>\r\n		<div class=\"apartment-detail-floorplan\">\r\n			<a target=\"_parent\" href=\"floorplan-1.html\"><img src=\"apartments/floorplan-1.png\" alt=\"Enlarge Floorplan\" width=\"450\" height=\"450\" /></a>\r\n		</div>','Apartment 1','','inherit','open','open','','18-revision-6','','','2011-05-17 03:46:43','2011-05-17 03:46:43','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-6/',0,'revision','',0),
	(26,1,'2011-05-17 03:48:44','2011-05-17 03:48:44','			<h1>Apartment 1</h1>\r\n			<dl>\r\n				<dt class=\"bed-data\">Bedrooms</dt>\r\n				<dd>3</dd>\r\n				<dt class=\"bath-data\">Bathrooms</dt>\r\n				<dd>3</dd>\r\n				<dt class=\"car-data\">Cars</dt>\r\n				<dd>2</dd>\r\n			</dl>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.</p>\r\n			<div class=\"apartment-detail-links\">\r\n				<a href=\"apartment-1-schedule.pdf\">Download Finish Schedule (pdf)</a>\r\n				<a href=\"apartment-1-floorplan.pdf\">Download Floorplan (pdf)</a>\r\n			</div>\r\n		</div>\r\n		<div class=\"apartment-detail-floorplan\">\r\n			<a target=\"_parent\" href=\"floorplan-1.html\"><img src=\"apartments/floorplan-1.png\" alt=\"Enlarge Floorplan\" width=\"450\" height=\"450\" /></a>\r\n		</div>','Apartment 1','','inherit','open','open','','18-revision-7','','','2011-05-17 03:48:44','2011-05-17 03:48:44','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-7/',0,'revision','',0),
	(42,1,'2011-05-17 23:41:14','2011-05-17 23:41:14','\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.\r\n\r\n','Apartment 1','','inherit','open','open','','18-revision-10','','','2011-05-17 23:41:14','2011-05-17 23:41:14','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-10/',0,'revision','',0),
	(28,1,'2011-05-17 04:20:52','2011-05-17 04:20:52','','Gallery','','publish','open','open','','gallery','','','2011-05-17 04:20:52','2011-05-17 04:20:52','',0,'http://www.gallery88.com.au/stage/?page_id=28',0,'page','',0),
	(177,1,'2013-01-09 00:16:20','2013-01-09 00:16:20','','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-09 00:16:20','2013-01-09 00:16:20','',175,'http://www.gallery88.com.au/175-revision-2/',0,'revision','',0),
	(176,1,'2013-01-09 00:15:11','2013-01-09 00:15:11','','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-09 00:15:11','2013-01-09 00:15:11','',175,'http://www.gallery88.com.au/175-revision/',0,'revision','',0),
	(30,1,'2011-05-17 04:19:21','2011-05-17 04:19:21','','Gallery','','inherit','open','open','','28-revision','','','2011-05-17 04:19:21','2011-05-17 04:19:21','',28,'http://www.gallery88.com.au/stage/2011/05/17/28-revision/',0,'revision','',0),
	(32,1,'2011-05-17 04:29:59','2011-05-17 04:29:59','','Gallery - lifestyle','','publish','open','open','','gallery-lifestyle','','','2011-05-17 04:29:59','2011-05-17 04:29:59','',0,'http://www.gallery88.com.au/stage/?page_id=32',0,'page','',0),
	(33,1,'2011-05-17 04:29:49','2011-05-17 04:29:49','','Gallery - Interiors','','inherit','open','open','','32-revision','','','2011-05-17 04:29:49','2011-05-17 04:29:49','',32,'http://www.gallery88.com.au/stage/2011/05/17/32-revision/',0,'revision','',0),
	(34,1,'2011-05-17 04:33:23','2011-05-17 04:33:23','','Gallery - Interiors','','publish','open','open','','gallery-interiors','','','2011-05-17 04:33:23','2011-05-17 04:33:23','',0,'http://www.gallery88.com.au/stage/?page_id=34',0,'page','',0),
	(35,1,'2011-05-17 04:33:16','2011-05-17 04:33:16','','Gallery - Interiors','','inherit','open','open','','34-revision','','','2011-05-17 04:33:16','2011-05-17 04:33:16','',34,'http://www.gallery88.com.au/stage/2011/05/17/34-revision/',0,'revision','',0),
	(36,1,'2011-05-17 04:38:50','2011-05-17 04:38:50','<strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.\r\n\r\nVicky Capar:  <strong>0123 456 789</strong>','Contact','','publish','open','open','','contact','','','2014-02-18 02:37:14','2014-02-18 02:37:14','',0,'http://www.gallery88.com.au/stage/?page_id=36',0,'page','',0),
	(273,1,'2014-02-18 02:37:14','2014-02-18 02:37:14','<strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.\r\n\r\nVicky Capar:  <strong>0123 456 789</strong>','Contact','','inherit','open','open','','36-revision-v1','','','2014-02-18 02:37:14','2014-02-18 02:37:14','',36,'http://www.barkala.net/36-revision-v1/',0,'revision','',0),
	(37,1,'2011-05-17 04:38:21','2011-05-17 04:38:21','','Contact','','inherit','open','open','','36-revision-v1','','','2011-05-17 04:38:21','2011-05-17 04:38:21','',36,'http://www.gallery88.com.au/stage/2011/05/17/36-revision/',0,'revision','',0),
	(90,1,'2011-05-27 02:22:00','2011-05-27 02:22:00','<strong>Register now</strong> - for the first opportunity to purchase!\r\n\r\nCall <strong>1300 GALLERY</strong> or 1300 425 537 for further information.\r\n\r\nOr complete our online form to register your interest.\r\n\r\n&nbsp;\r\n\r\nShowroom <strong>COMING SOON!</strong>\r\n\r\n&nbsp;','Contact','','inherit','open','open','','36-revision-v1','','','2011-05-27 02:22:00','2011-05-27 02:22:00','',36,'http://www.gallery88.com.au/stage/36-revision-4/',0,'revision','',0),
	(38,1,'2011-05-17 04:38:50','2011-05-17 04:38:50','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien risus luctus.\r\n\r\nDonec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa. Curabitur congue vehicula lacus, non varius tellus blandit vel pharetra in tempus.','Contact','','inherit','open','open','','36-revision-v1','','','2011-05-17 04:38:50','2011-05-17 04:38:50','',36,'http://www.gallery88.com.au/stage/2011/05/17/36-revision-2/',0,'revision','',0),
	(109,1,'2011-05-27 04:51:09','2011-05-27 04:51:09','Elegantly appointed and generous proportions best describe this apartment.  The stunning kitchen over looks the north facing living areas which flow on to a large terrace.  The media area is large enough to offer a third living space.','Apartment 3','','inherit','open','open','','60-revision-5','','','2011-05-27 04:51:09','2011-05-27 04:51:09','',60,'http://www.gallery88.com.au/60-revision-5/',0,'revision','',0),
	(131,1,'2012-12-06 00:59:28','2012-12-06 00:59:28','','John Benton','','inherit','open','open','','130-revision','','','2012-12-06 00:59:28','2012-12-06 00:59:28','',130,'http://www.gallery88.com.au/full-site/130-revision/',0,'revision','',0),
	(41,1,'2011-05-17 03:56:41','2011-05-17 03:56:41','<dl> <dt class=\"bed-data\">Bedrooms</dt> <dd>3</dd> <dt class=\"bath-data\">Bathrooms</dt> <dd>3</dd> <dt class=\"car-data\">Cars</dt> <dd>2</dd> </dl>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.\r\n<div class=\"apartment-detail-links\"><a href=\"apartment-1-schedule.pdf\">Download Finish Schedule (pdf)</a>\r\n<a href=\"apartment-1-floorplan.pdf\">Download Floorplan (pdf)</a></div>\r\n<div class=\"apartment-detail-floorplan\"><a href=\"floorplan-1.html\" target=\"_parent\"><img src=\"http://www.gallery88.com.au/stage/wp-content/themes/twentytwenty/apartments/floorplan-1.png\" alt=\"Enlarge Floorplan\" width=\"450\" height=\"450\" /></a></div>','Apartment 1','','inherit','open','open','','18-revision-9','','','2011-05-17 03:56:41','2011-05-17 03:56:41','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-9/',0,'revision','',0),
	(43,1,'2011-05-17 23:41:28','2011-05-17 23:41:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.\r\n\r\n','Apartment 1','','inherit','open','open','','18-revision-11','','','2011-05-17 23:41:28','2011-05-17 23:41:28','',18,'http://www.gallery88.com.au/stage/2011/05/17/18-revision-11/',0,'revision','',0),
	(44,1,'2011-05-18 00:19:38','2011-05-18 00:19:38','','Floorplan','','publish','open','open','','floorplan','','','2011-05-18 01:12:52','2011-05-18 01:12:52','',0,'http://www.gallery88.com.au/stage/?page_id=44',0,'page','',0),
	(45,1,'2011-05-18 00:10:42','2011-05-18 00:10:42','','Floorplan','','inherit','open','open','','44-revision','','','2011-05-18 00:10:42','2011-05-18 00:10:42','',44,'http://www.gallery88.com.au/stage/2011/05/18/44-revision/',0,'revision','',0),
	(46,1,'2011-05-18 00:26:48','2011-05-18 00:26:48','','Floorplan','','inherit','open','open','','44-autosave','','','2011-05-18 00:26:48','2011-05-18 00:26:48','',44,'http://www.gallery88.com.au/stage/2011/05/18/44-autosave/',0,'revision','',0),
	(47,1,'2011-05-18 00:19:38','2011-05-18 00:19:38','','Floorplan','','inherit','open','open','','44-revision-2','','','2011-05-18 00:19:38','2011-05-18 00:19:38','',44,'http://www.gallery88.com.au/stage/2011/05/18/44-revision-2/',0,'revision','',0),
	(48,1,'2011-05-18 01:12:21','2011-05-18 01:12:21','','Floorplan','','inherit','open','open','','44-revision-3','','','2011-05-18 01:12:21','2011-05-18 01:12:21','',44,'http://www.gallery88.com.au/stage/2011/05/18/44-revision-3/',0,'revision','',0),
	(49,1,'2011-05-17 03:18:19','2011-05-17 03:18:19','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien risus luctus.</p>\r\n<p>Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa. Curabitur congue vehicula lacus, non varius tellus blandit vel pharetra in tempus.</p>','88 Berry Street, North Sydney','','inherit','open','open','','4-revision-4','','','2011-05-17 03:18:19','2011-05-17 03:18:19','',4,'http://www.gallery88.com.au/stage/2011/05/17/4-revision-4/',0,'revision','',0),
	(51,1,'2011-05-17 03:17:02','2011-05-17 03:17:02','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien risus luctus.</p>\r\n<p>Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa. Curabitur congue vehicula lacus, non varius tellus blandit vel pharetra in tempus.</p>','Location','','inherit','open','open','','8-revision-v1','','','2011-05-17 03:17:02','2011-05-17 03:17:02','',8,'http://www.gallery88.com.au/stage/2011/05/17/8-revision-3/',0,'revision','',0),
	(50,1,'2011-05-18 01:46:52','2011-05-18 01:46:52','Space – so coveted in Sydney’s inner suburbs, so seldom found. Welcome to GALLERY 88, a boutique development of ingeniously designed, superbly finished, enduringly modern and truly spacious homes.\r\n\r\nEach	apartment	has	been	tailored architecturally within the building, maximising the natural sunlight, harbour views and leafy outlooks. Substantial living areas flow harmoniously, integrating seamlessly yet with definition of purpose. Expansive walls rising up to lofty ceilings [up to 3m in height] are an ideal canvas for any genre of art. Sublime attention to detail and exquisite finishes and inclusions elevate Gallery 88 apartments to their position among the most sophisticated and contemporary in Sydney.\r\n\r\n&nbsp;','88 Berry Street, North Sydney','','inherit','open','open','','4-revision-5','','','2011-05-18 01:46:52','2011-05-18 01:46:52','',4,'http://www.gallery88.com.au/stage/2011/05/18/4-revision-5/',0,'revision','',0),
	(54,1,'2011-05-17 03:22:12','2011-05-17 03:22:12','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien risus luctus.</p>\r\n<p>Donec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa. Curabitur congue vehicula lacus, non varius tellus blandit vel pharetra in tempus.</p>','The Apartments','','inherit','open','open','','14-revision-v1','','','2011-05-17 03:22:12','2011-05-17 03:22:12','',14,'http://www.gallery88.com.au/stage/2011/05/17/14-revision-4/',0,'revision','',0),
	(53,1,'2011-05-18 01:50:21','2011-05-18 01:50:21','The tranquillity inside these rare homes belies GALLERY 88’s cosmopolitan location. North Sydney provides all the resources of a major centre.\r\n\r\nA plethora of cafés, fine restaurants, bars and fantastic shopping is at your door. Excellent private hospitals, numerous specialist medical practices, Stanton Library, exclusive schools and tertiary education facilities are all nearby. Sydney’s CBD and Greater Sydney are easily accessible by North Sydney train station and nearby major arterial roads.\r\n\r\n&nbsp;','Location','','inherit','open','open','','8-revision-v1','','','2011-05-18 01:50:21','2011-05-18 01:50:21','',8,'http://www.gallery88.com.au/stage/2011/05/18/8-revision-5/',0,'revision','',0),
	(52,1,'2011-05-18 01:49:34','2011-05-18 01:49:34','The tranquillity inside these rare homes belies GALLERY 88’s cosmopolitan location. North Sydney provides all the resources of a major centre.\r\n\r\nA plethora of cafés, fine restaurants, bars and fantastic shopping is at your door. Excellent private hospitals, numerous specialist medical practices, Stanton Library, exclusive schools and tertiary education facilities are all nearby. And for those who love the outdoors and sports, North Sydney Oval and Olympic Pool, harbour side heritage walks and some of Sydney’s best beaches are just a short driveaway.. Sydney’s CBD and Greater Sydney are easily accessible by North Sydney train station and nearby major arterial roads.\r\n\r\n&nbsp;','Location','','inherit','open','open','','8-revision-v1','','','2011-05-18 01:49:34','2011-05-18 01:49:34','',8,'http://www.gallery88.com.au/stage/2011/05/18/8-revision-4/',0,'revision','',0),
	(56,1,'2014-02-18 02:36:59','2014-02-18 02:36:59','<strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.\n\nVicky Capar:  <strong>01234 56789</strong>','Contact','','inherit','open','open','','36-autosave-v1','','','2014-02-18 02:36:59','2014-02-18 02:36:59','',36,'http://www.gallery88.com.au/stage/2011/05/18/36-autosave/',0,'revision','',0),
	(89,1,'2011-05-17 04:38:57','2011-05-17 04:38:57','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien risus luctus.\r\n\r\nDonec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa. Curabitur congue vehicula lacus, non varius tellus blandit vel pharetra in tempus.','Contact','','inherit','open','open','','36-revision-v1','','','2011-05-17 04:38:57','2011-05-17 04:38:57','',36,'http://www.gallery88.com.au/stage/36-revision-3/',0,'revision','',0),
	(132,1,'2012-12-06 00:59:31','2012-12-06 00:59:31','','John Benton','','inherit','open','open','','130-revision-2','','','2012-12-06 00:59:31','2012-12-06 00:59:31','',130,'http://www.gallery88.com.au/full-site/130-revision-2/',0,'revision','',0),
	(58,1,'2011-05-18 03:41:38','2011-05-18 03:41:38','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 2','','publish','open','open','','apartment-2','','','2014-02-18 00:52:12','2014-02-18 00:52:12','',14,'http://www.gallery88.com.au/stage/?page_id=58',0,'page','',0),
	(97,1,'2011-05-27 04:54:41','2011-05-27 04:54:41','','Apartment 2','','inherit','open','open','','58-revision-5','','','2011-05-27 04:54:41','2011-05-27 04:54:41','',58,'http://www.gallery88.com.au/stage/58-revision-5/',0,'revision','',0),
	(61,1,'2011-05-18 03:42:49','2011-05-18 03:42:49','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','','','inherit','open','open','','60-revision','','','2011-05-18 03:42:49','2011-05-18 03:42:49','',60,'http://www.gallery88.com.au/stage/2011/05/18/60-revision/',0,'revision','',0),
	(62,1,'2011-05-27 04:35:19','2011-05-27 04:35:19','Elegantly appointed and generous proportions best describe this apartment.  The stunning kitchen over looks the north facing living areas which flow on to a large terrace.  The media area is large enough to offer a third living space.','Apartment 3','','inherit','open','open','','60-autosave','','','2011-05-27 04:35:19','2011-05-27 04:35:19','',60,'http://www.gallery88.com.au/stage/2011/05/18/60-autosave/',0,'revision','',0),
	(93,1,'2011-05-27 04:49:03','2011-05-27 04:49:03','Combining highly desired north and east aspects, this home offers exceptional space and privacy.  Entertain or just enjoy the over sized terrace which runs almost the full length of the home or simply relax in your spa!','Apartment 4','','inherit','open','open','','63-autosave','','','2011-05-27 04:49:03','2011-05-27 04:49:03','',63,'http://www.gallery88.com.au/stage/63-autosave/',0,'revision','',0),
	(63,1,'2011-05-18 03:54:33','2011-05-18 03:54:33','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 4','','publish','open','open','','apartment-4','','','2014-02-18 00:59:54','2014-02-18 00:59:54','',14,'http://www.gallery88.com.au/stage/?page_id=63',0,'page','',0),
	(64,1,'2011-05-18 03:53:56','2011-05-18 03:53:56','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 4','','inherit','open','open','','63-revision','','','2011-05-18 03:53:56','2011-05-18 03:53:56','',63,'http://www.gallery88.com.au/stage/2011/05/18/63-revision/',0,'revision','',0),
	(65,1,'2011-05-18 03:55:14','2011-05-18 03:55:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 5','','publish','open','open','','apartment-5','','','2014-02-18 01:11:43','2014-02-18 01:11:43','',14,'http://www.gallery88.com.au/stage/?page_id=65',0,'page','',0),
	(66,1,'2011-05-18 03:54:45','2011-05-18 03:54:45','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2011-05-18 03:54:45','2011-05-18 03:54:45','',65,'http://www.gallery88.com.au/stage/2011/05/18/65-revision/',0,'revision','',0),
	(67,1,'2011-05-18 03:55:46','2011-05-18 03:55:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 6','','publish','open','open','','apartment-6','','','2014-02-18 01:12:52','2014-02-18 01:12:52','',14,'http://www.gallery88.com.au/stage/?page_id=67',0,'page','',0),
	(238,1,'2014-02-18 01:12:15','2014-02-18 01:12:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2014-02-18 01:12:15','2014-02-18 01:12:15','',67,'http://www.barkala.net/67-revision-v1/',0,'revision','',0),
	(68,1,'2011-05-18 03:55:25','2011-05-18 03:55:25','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-05-18 03:55:25','2011-05-18 03:55:25','',67,'http://www.gallery88.com.au/stage/2011/05/18/67-revision/',0,'revision','',0),
	(69,1,'2011-05-18 03:56:16','2011-05-18 03:56:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 7','','publish','open','open','','apartment-7','','','2014-02-18 01:13:25','2014-02-18 01:13:25','',14,'http://www.gallery88.com.au/stage/?page_id=69',0,'page','',0),
	(240,1,'2014-02-18 01:13:25','2014-02-18 01:13:25','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2014-02-18 01:13:25','2014-02-18 01:13:25','',69,'http://www.barkala.net/69-revision-v1/',0,'revision','',0),
	(70,1,'2011-05-18 03:55:57','2011-05-18 03:55:57','','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-05-18 03:55:57','2011-05-18 03:55:57','',69,'http://www.gallery88.com.au/stage/2011/05/18/69-revision/',0,'revision','',0),
	(71,1,'2011-05-18 03:57:02','2011-05-18 03:57:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 8','','publish','open','open','','apartment-8','','','2014-02-18 01:14:51','2014-02-18 01:14:51','',14,'http://www.gallery88.com.au/stage/?page_id=71',0,'page','',0),
	(241,1,'2014-02-18 01:14:51','2014-02-18 01:14:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2014-02-18 01:14:51','2014-02-18 01:14:51','',71,'http://www.barkala.net/71-revision-v1/',0,'revision','',0),
	(72,1,'2011-05-18 03:56:34','2011-05-18 03:56:34','','Apartment 8','','inherit','open','open','','71-revision-v1','','','2011-05-18 03:56:34','2011-05-18 03:56:34','',71,'http://www.gallery88.com.au/stage/2011/05/18/71-revision/',0,'revision','',0),
	(73,1,'2013-01-14 04:40:20','2013-01-14 04:40:20','At just under 300sqm, this 2 level luxuriously appointed apartment enjoys views over Kirribilli and the harbour.  All the living areas are on one level with the media/gym/games room perfectly located downstairs.\n\n&nbsp;\n\none of three superior penthouse style homes with a stunning sense of space rarely found','Apartment 8','','inherit','open','open','','71-autosave-v1','','','2013-01-14 04:40:20','2013-01-14 04:40:20','',71,'http://www.gallery88.com.au/stage/2011/05/18/71-autosave/',0,'revision','',0),
	(105,1,'2011-05-18 04:00:55','2011-05-18 04:00:55','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2011-05-18 04:00:55','2011-05-18 04:00:55','',71,'http://www.gallery88.com.au/stage/71-revision-4/',0,'revision','',0),
	(74,1,'2011-05-18 03:57:02','2011-05-18 03:57:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2011-05-18 03:57:02','2011-05-18 03:57:02','',71,'http://www.gallery88.com.au/stage/2011/05/18/71-revision-2/',0,'revision','',0),
	(75,1,'2011-05-18 03:41:38','2011-05-18 03:41:38','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 2','','inherit','open','open','','58-revision-2','','','2011-05-18 03:41:38','2011-05-18 03:41:38','',58,'http://www.gallery88.com.au/stage/2011/05/18/58-revision-2/',0,'revision','',0),
	(76,1,'2011-05-18 03:53:46','2011-05-18 03:53:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 3','','inherit','open','open','','60-revision-2','','','2011-05-18 03:53:46','2011-05-18 03:53:46','',60,'http://www.gallery88.com.au/stage/2011/05/18/60-revision-2/',0,'revision','',0),
	(77,1,'2011-05-18 03:54:33','2011-05-18 03:54:33','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 4','','inherit','open','open','','63-revision-2','','','2011-05-18 03:54:33','2011-05-18 03:54:33','',63,'http://www.gallery88.com.au/stage/2011/05/18/63-revision-2/',0,'revision','',0),
	(78,1,'2011-05-18 03:55:14','2011-05-18 03:55:14','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2011-05-18 03:55:14','2011-05-18 03:55:14','',65,'http://www.gallery88.com.au/stage/2011/05/18/65-revision-2/',0,'revision','',0),
	(79,1,'2011-05-18 03:55:46','2011-05-18 03:55:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-05-18 03:55:46','2011-05-18 03:55:46','',67,'http://www.gallery88.com.au/stage/2011/05/18/67-revision-2/',0,'revision','',0),
	(80,1,'2011-05-18 03:56:16','2011-05-18 03:56:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-05-18 03:56:16','2011-05-18 03:56:16','',69,'http://www.gallery88.com.au/stage/2011/05/18/69-revision-2/',0,'revision','',0),
	(81,1,'2011-05-18 03:58:38','2011-05-18 03:58:38','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 2','','inherit','open','open','','58-revision-3','','','2011-05-18 03:58:38','2011-05-18 03:58:38','',58,'http://www.gallery88.com.au/stage/2011/05/18/58-revision-3/',0,'revision','',0),
	(82,1,'2011-05-18 03:58:41','2011-05-18 03:58:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 3','','inherit','open','open','','60-revision-3','','','2011-05-18 03:58:41','2011-05-18 03:58:41','',60,'http://www.gallery88.com.au/stage/2011/05/18/60-revision-3/',0,'revision','',0),
	(83,1,'2011-05-18 03:58:46','2011-05-18 03:58:46','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 4','','inherit','open','open','','63-revision-3','','','2011-05-18 03:58:46','2011-05-18 03:58:46','',63,'http://www.gallery88.com.au/stage/2011/05/18/63-revision-3/',0,'revision','',0),
	(95,1,'2011-05-18 04:00:34','2011-05-18 04:00:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 3','','inherit','open','open','','60-revision-4','','','2011-05-18 04:00:34','2011-05-18 04:00:34','',60,'http://www.gallery88.com.au/stage/60-revision-4/',0,'revision','',0),
	(84,1,'2011-05-18 03:58:49','2011-05-18 03:58:49','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2011-05-18 03:58:49','2011-05-18 03:58:49','',65,'http://www.gallery88.com.au/stage/2011/05/18/65-revision-3/',0,'revision','',0),
	(101,1,'2011-05-27 05:21:09','2011-05-27 05:21:09','The generous kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will see the large media room that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-autosave-v1','','','2011-05-27 05:21:09','2011-05-27 05:21:09','',67,'http://www.gallery88.com.au/stage/67-autosave/',0,'revision','',0),
	(85,1,'2011-05-18 03:58:52','2011-05-18 03:58:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-05-18 03:58:52','2011-05-18 03:58:52','',67,'http://www.gallery88.com.au/stage/2011/05/18/67-revision-3/',0,'revision','',0),
	(103,1,'2011-07-13 06:18:49','2011-07-13 06:18:49','Generously proportioned with city vistas.  East facing dining and living areas, whilst the kitchen is adjacent to the family room.  All 3 bedrooms have opening windows, at the same time 2 enjoy the freedom of Juliet balconies.','Apartment 7','','inherit','open','open','','69-autosave-v1','','','2011-07-13 06:18:49','2011-07-13 06:18:49','',69,'http://www.gallery88.com.au/stage/69-autosave/',0,'revision','',0),
	(86,1,'2011-05-18 03:58:56','2011-05-18 03:58:56','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-05-18 03:58:56','2011-05-18 03:58:56','',69,'http://www.gallery88.com.au/stage/2011/05/18/69-revision-3/',0,'revision','',0),
	(87,1,'2011-05-18 03:58:11','2011-05-18 03:58:11','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2011-05-18 03:58:11','2011-05-18 03:58:11','',71,'http://www.gallery88.com.au/stage/2011/05/18/71-revision-3/',0,'revision','',0),
	(130,1,'2012-12-06 00:59:31','2012-12-06 00:59:31','','John Benton','','publish','open','open','','john-benton','','','2012-12-06 00:59:51','2012-12-06 00:59:51','',0,'http://www.gallery88.com.au/full-site/?page_id=130',0,'page','',0),
	(96,1,'2011-05-18 04:00:29','2011-05-18 04:00:29','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 2','','inherit','open','open','','58-revision-4','','','2011-05-18 04:00:29','2011-05-18 04:00:29','',58,'http://www.gallery88.com.au/stage/58-revision-4/',0,'revision','',0),
	(94,1,'2011-05-18 04:00:40','2011-05-18 04:00:40','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 4','','inherit','open','open','','63-revision-4','','','2011-05-18 04:00:40','2011-05-18 04:00:40','',63,'http://www.gallery88.com.au/stage/63-revision-4/',0,'revision','',0),
	(98,1,'2011-05-27 05:04:35','2011-05-27 05:04:35','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-6','','','2011-05-27 05:04:35','2011-05-27 05:04:35','',58,'http://www.gallery88.com.au/stage/58-revision-6/',0,'revision','',0),
	(99,1,'2011-05-27 05:14:18','2011-05-27 05:14:18','With an easterly aspect that runs the full length of the home, the living and dinning areas are the hub of this beautiful design.  You can even escape to your very own master retreat complete with balcony.','Apartment 5','','inherit','open','open','','65-autosave-v1','','','2011-05-27 05:14:18','2011-05-27 05:14:18','',65,'http://www.gallery88.com.au/stage/65-autosave/',0,'revision','',0),
	(100,1,'2011-05-18 04:00:44','2011-05-18 04:00:44','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2011-05-18 04:00:44','2011-05-18 04:00:44','',65,'http://www.gallery88.com.au/stage/65-revision-4/',0,'revision','',0),
	(102,1,'2011-05-18 04:00:48','2011-05-18 04:00:48','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-05-18 04:00:48','2011-05-18 04:00:48','',67,'http://www.gallery88.com.au/stage/67-revision-4/',0,'revision','',0),
	(104,1,'2011-05-18 04:00:51','2011-05-18 04:00:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet  arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor  nulla pretium nibh feugiat rutrum sed non sapien. Donec dignissim arcu  ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a  sollicitudin blandit, odio leo eleifend massa.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-05-18 04:00:51','2011-05-18 04:00:51','',69,'http://www.gallery88.com.au/stage/69-revision-4/',0,'revision','',0),
	(113,1,'2011-05-27 05:14:58','2011-05-27 05:14:58','With an easterly aspect that runs the full length of the home, the living and dinning areas are the hub of this beautiful design.  You can even escape to your very own master retreat complete with balcony.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2011-05-27 05:14:58','2011-05-27 05:14:58','',65,'http://www.gallery88.com.au/65-revision-5/',0,'revision','',0),
	(114,1,'2011-05-27 05:21:58','2011-05-27 05:21:58','The generously appointed kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large media room that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-05-27 05:21:58','2011-05-27 05:21:58','',67,'http://www.gallery88.com.au/67-revision-5/',0,'revision','',0),
	(115,1,'2011-05-27 05:30:41','2011-05-27 05:30:41','Lavishly proportioned east facing dinning and living areas provide the gallery spaces you would expect.  The media room provides flexibility to the floor plan or a permanent home for your office or home entertainment system.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-05-27 05:30:41','2011-05-27 05:30:41','',69,'http://www.gallery88.com.au/69-revision-5/',0,'revision','',0),
	(116,1,'2011-07-07 06:49:49','2011-07-07 06:49:49','Lavishly proportioned east facing dinning and living areas provide the gallery spaces you would expect.  The media room provides flexibility to the floor plan or a permanent home for your office or home entertainment system.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-07-07 06:49:49','2011-07-07 06:49:49','',69,'http://www.gallery88.com.au/69-revision-6/',0,'revision','',0),
	(117,1,'2011-05-27 05:49:54','2011-05-27 05:49:54','At just under 300sqm, this 2 level luxuriously appointed apartment enjoys views over Kirribilli and the harbour.  All the living areas are on one level with the media/gym/games room perfectly located downstairs.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2011-05-27 05:49:54','2011-05-27 05:49:54','',71,'http://www.gallery88.com.au/71-revision-5/',0,'revision','',0),
	(118,1,'2011-06-20 07:05:48','2011-06-20 07:05:48','<strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.\r\n\r\n&nbsp;\r\n\r\nOr call <strong><span style=\"color: #000000;\">9997 88 00</span></strong> for further information.\r\n\r\n&nbsp;\r\n\r\nShowroom <strong>COMING SOON!</strong>\r\n\r\n&nbsp;','Contact','','inherit','open','open','','36-revision-v1','','','2011-06-20 07:05:48','2011-06-20 07:05:48','',36,'http://www.gallery88.com.au/36-revision-6/',0,'revision','',0),
	(121,1,'2011-07-07 06:50:07','2011-07-07 06:50:07','Lavishly proportioned east facing dinning and living areas provide the gallery spaces you would expect.  The media room provides flexibility to the floor plan or a permanent home for your office or home entertainment system.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-07-07 06:50:07','2011-07-07 06:50:07','',69,'http://www.gallery88.com.au/69-revision-7/',0,'revision','',0),
	(120,1,'2011-07-07 23:36:49','2011-07-07 23:36:49','<p><strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.</p>\r\n\r\n<p>Or call <strong style=\"color:#B99086; font-family:\'TeXGyreAdventorRegular\',Arial,sans-serif;\">9997 8800</strong> for further information.</p>\r\n\r\n<p>Showroom <strong>COMING SOON!</strong></p>','Contact','','inherit','open','open','','36-revision-v1','','','2011-07-07 23:36:49','2011-07-07 23:36:49','',36,'http://www.gallery88.com.au/36-revision-8/',0,'revision','',0),
	(122,1,'2011-07-13 05:57:35','2011-07-13 05:57:35','Lavishly proportioned east facing dinning and living areas provide the gallery spaces you would expect.  The media room provides flexibility to the floor plan or a permanent home for your office or home entertainment system.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-07-13 05:57:35','2011-07-13 05:57:35','',69,'http://www.gallery88.com.au/69-revision-8/',0,'revision','',0),
	(123,1,'2011-07-07 06:45:38','2011-07-07 06:45:38','This light filled north facing apartment with its flowing floor plan is beautifully appointed. With living areas flowing from the kitchen, this apartment also includes a media area for those needing to work or study from home.','Apartment 1','','inherit','open','open','','18-revision-14','','','2011-07-07 06:45:38','2011-07-07 06:45:38','',18,'http://www.gallery88.com.au/18-revision-14/',0,'revision','',0),
	(124,1,'2011-07-07 06:46:51','2011-07-07 06:46:51','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms and a flex room, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-8','','','2011-07-07 06:46:51','2011-07-07 06:46:51','',58,'http://www.gallery88.com.au/58-revision-8/',0,'revision','',0),
	(125,1,'2011-07-07 06:49:25','2011-07-07 06:49:25','The generously appointed kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large media room that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-07-07 06:49:25','2011-07-07 06:49:25','',67,'http://www.gallery88.com.au/67-revision-6/',0,'revision','',0),
	(126,1,'2011-07-13 06:19:21','2011-07-13 06:19:21','Generously proportioned with city vistas.  East facing dining and living areas, whilst the kitchen is adjacent to the family room.  All 3 bedrooms have opening windows, at the same time 2 enjoy the freedom of Juliet balconies.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-07-13 06:19:21','2011-07-13 06:19:21','',69,'http://www.gallery88.com.au/69-revision-9/',0,'revision','',0),
	(127,1,'2011-07-07 06:47:20','2011-07-07 06:47:20','Elegantly appointed and generous proportions best describe this apartment.  The stunning kitchen over looks the north facing living areas which flow on to a large terrace.  The media area is large enough to offer a third living space.','Apartment 3','','inherit','open','open','','60-revision-6','','','2011-07-07 06:47:20','2011-07-07 06:47:20','',60,'http://www.gallery88.com.au/60-revision-6/',0,'revision','',0),
	(128,1,'2011-07-13 06:22:31','2011-07-13 06:22:31','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms and a flex room, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-9','','','2011-07-13 06:22:31','2011-07-13 06:22:31','',58,'http://www.gallery88.com.au/58-revision-9/',0,'revision','',0),
	(129,1,'2011-07-13 06:20:44','2011-07-13 06:20:44','This light filled north facing apartment with its flowing floor plan is beautifully appointed. With living areas flowing from the kitchen, this apartment also includes a media area for those needing to work or study from home.','Apartment 1','','inherit','open','open','','18-revision-15','','','2011-07-13 06:20:44','2011-07-13 06:20:44','',18,'http://www.gallery88.com.au/18-revision-15/',0,'revision','',0),
	(135,1,'2012-12-06 04:25:09','2012-12-06 04:25:09','','first','','inherit','open','open','','134-revision','','','2012-12-06 04:25:09','2012-12-06 04:25:09','',134,'http://www.gallery88.com.au/full-site/134-revision/',0,'revision','',0),
	(145,1,'2012-12-06 05:13:15','2012-12-06 05:13:15','abc','first','','inherit','open','open','','134-revision-4','','','2012-12-06 05:13:15','2012-12-06 05:13:15','',134,'http://www.gallery88.com.au/134-revision-4/',0,'revision','',0),
	(136,1,'2012-12-06 04:25:52','2012-12-06 04:25:52','<img class=\"alignnone\" title=\"ed\" src=\"http://www.ed.com.au/images/ED_Logo.png\" alt=\"\" width=\"1606\" height=\"865\" />','first','','inherit','open','open','','134-revision-2','','','2012-12-06 04:25:52','2012-12-06 04:25:52','',134,'http://www.gallery88.com.au/full-site/134-revision-2/',0,'revision','',0),
	(137,1,'2012-12-06 04:26:42','2012-12-06 04:26:42','<h1>Congratulations!</h1>\r\nYou have won Second Prize in the Gallery 88 lucky door prize.\r\nYour prize is 5 nights accommodation in a homestead at Mystery Bay on the NSW South Coast\r\n\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\" target=\"_blank\">info@2020projects.com.au</a>','Second Prize','','publish','open','open','','second','','','2012-12-10 20:31:45','2012-12-10 20:31:45','',0,'http://www.gallery88.com.au/full-site/?page_id=137',0,'page','',0),
	(138,1,'2012-12-06 04:26:27','2012-12-06 04:26:27','','second','','inherit','open','open','','137-revision','','','2012-12-06 04:26:27','2012-12-06 04:26:27','',137,'http://www.gallery88.com.au/full-site/137-revision/',0,'revision','',0),
	(139,1,'2012-12-06 04:26:59','2012-12-06 04:26:59','<h1>Congratulations!</h1>\r\nYou have won First Prize in the Gallery 88 lucky door prize.\r\n\r\nYour prize is 1 nights accommodation in a Gallery 88 apartment and dinner for two at\r\nBambini Restaurant in Sydney CBD.\r\n\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','Third Prize','','publish','open','open','','third','','','2012-12-10 20:31:25','2012-12-10 20:31:25','',0,'http://www.gallery88.com.au/full-site/?page_id=139',0,'page','',0),
	(140,1,'2012-12-06 04:26:51','2012-12-06 04:26:51','','third','','inherit','open','open','','139-revision','','','2012-12-06 04:26:51','2012-12-06 04:26:51','',139,'http://www.gallery88.com.au/full-site/139-revision/',0,'revision','',0),
	(141,1,'2012-12-06 04:27:55','2012-12-06 04:27:55','Sorry, you have been unsuccessful in the Gallery 88 lucky door prize.\r\n\r\nTo discover more about Gallery 88 please <a href=\"/\">click here</a>','Unsuccessful','','publish','open','open','','unsuccessful','','','2012-12-10 20:26:41','2012-12-10 20:26:41','',0,'http://www.gallery88.com.au/full-site/?page_id=141',0,'page','',0),
	(142,1,'2012-12-06 04:27:14','2012-12-06 04:27:14','','unsuccessful','','inherit','open','open','','141-revision','','','2012-12-06 04:27:14','2012-12-06 04:27:14','',141,'http://www.gallery88.com.au/full-site/141-revision/',0,'revision','',0),
	(143,1,'2012-12-06 04:27:55','2012-12-06 04:27:55','Page is successful.','unsuccessful','','inherit','open','open','','141-revision-2','','','2012-12-06 04:27:55','2012-12-06 04:27:55','',141,'http://www.gallery88.com.au/full-site/141-revision-2/',0,'revision','',0),
	(144,1,'2012-12-06 04:26:06','2012-12-06 04:26:06','<img class=\"alignnone\" title=\"ed\" src=\"http://www.ed.com.au/images/ED_Logo.png\" alt=\"\" width=\"1606\" height=\"865\" />','first','','inherit','open','open','','134-revision-3','','','2012-12-06 04:26:06','2012-12-06 04:26:06','',134,'http://www.gallery88.com.au/134-revision-3/',0,'revision','',0),
	(147,1,'2012-12-06 04:26:42','2012-12-06 04:26:42','<img class=\"alignnone\" title=\"ed\" src=\"http://www.ed.com.au/images/ED_Logo.png\" alt=\"\" width=\"1606\" height=\"865\" />','second','','inherit','open','open','','137-revision-2','','','2012-12-06 04:26:42','2012-12-06 04:26:42','',137,'http://www.gallery88.com.au/137-revision-2/',0,'revision','',0),
	(148,1,'2012-12-06 05:13:42','2012-12-06 05:13:42','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize. Your prize is 10% off the price of any available apartment at Gallery 88!','first','','inherit','open','open','','134-revision-5','','','2012-12-06 05:13:42','2012-12-06 05:13:42','',134,'http://www.gallery88.com.au/134-revision-5/',0,'revision','',0),
	(149,1,'2012-12-06 04:26:59','2012-12-06 04:26:59','<img class=\"alignnone\" title=\"ed\" src=\"http://www.ed.com.au/images/ED_Logo.png\" alt=\"\" width=\"1606\" height=\"865\" />','third','','inherit','open','open','','139-revision-2','','','2012-12-06 04:26:59','2012-12-06 04:26:59','',139,'http://www.gallery88.com.au/139-revision-2/',0,'revision','',0),
	(150,1,'2012-12-06 04:28:05','2012-12-06 04:28:05','Page is successful.','unsuccessful','','inherit','open','open','','141-revision-3','','','2012-12-06 04:28:05','2012-12-06 04:28:05','',141,'http://www.gallery88.com.au/141-revision-3/',0,'revision','',0),
	(151,1,'2012-12-06 05:15:39','2012-12-06 05:15:39','Sorry,you have been unsuccessful in the Gallery 88 lucky door prize.\r\n\r\nTo discover more about Gallery 88 please <a href=\"/\">click here</a>','Unsuccessful','','inherit','open','open','','141-revision-4','','','2012-12-06 05:15:39','2012-12-06 05:15:39','',141,'http://www.gallery88.com.au/141-revision-4/',0,'revision','',0),
	(152,1,'2012-12-06 05:15:51','2012-12-06 05:15:51','Sorry,you have been unsuccessful in the Gallery 88 lucky door prize.\r\n\r\nTo discover more about Gallery 88 please <a href=\"/\">click here</a>','Unsuccessful','','inherit','open','open','','141-revision-5','','','2012-12-06 05:15:51','2012-12-06 05:15:51','',141,'http://www.gallery88.com.au/141-revision-5/',0,'revision','',0),
	(153,1,'2012-12-06 05:15:58','2012-12-06 05:15:58','Sorry,you have been unsuccessful in the Gallery 88 lucky door prize.\r\n\r\nTo discover more about Gallery 88 please <a href=\"/\">click here</a>','Unsuccessful','','inherit','open','open','','141-revision-6','','','2012-12-06 05:15:58','2012-12-06 05:15:58','',141,'http://www.gallery88.com.au/141-revision-6/',0,'revision','',0),
	(154,1,'2011-05-18 01:50:57','2011-05-18 01:50:57','The tranquillity inside these rare homes belies GALLERY 88’s cosmopolitan location. North Sydney provides all the resources of a major centre.\r\n\r\nA plethora of cafés, fine restaurants, bars and fantastic shopping is at your door. Excellent private hospitals, numerous specialist medical practices, Stanton Library, exclusive schools and tertiary education facilities are all nearby.\r\n\r\n&nbsp;','Location','','inherit','open','open','','8-revision-v1','','','2011-05-18 01:50:57','2011-05-18 01:50:57','',8,'http://www.gallery88.com.au/8-revision-6/',0,'revision','',0),
	(155,1,'2012-12-10 20:27:41','2012-12-10 20:27:41','Sorry, you have been unsuccessful in the Gallery 88 lucky door prize.\n\nTo discover more about Gallery 88 please <a href=\"/\">click here</a>','Unsuccessful','','inherit','open','open','','141-autosave','','','2012-12-10 20:27:41','2012-12-10 20:27:41','',141,'http://www.gallery88.com.au/141-autosave/',0,'revision','',0),
	(157,1,'2012-12-06 05:14:58','2012-12-06 05:14:58','<h2>Congratulations!</h2>\r\nYou have won Third Prize in the Gallery 88 lucky door prize. Your prize is','Third Prize','','inherit','open','open','','139-revision-3','','','2012-12-06 05:14:58','2012-12-06 05:14:58','',139,'http://www.gallery88.com.au/139-revision-3/',0,'revision','',0),
	(158,1,'2012-12-06 05:14:23','2012-12-06 05:14:23','<h2>Congratulations!</h2>\r\nYou have won Second Prize in the Gallery 88 lucky door prize. Your prize is','Second Prize','','inherit','open','open','','137-revision-3','','','2012-12-06 05:14:23','2012-12-06 05:14:23','',137,'http://www.gallery88.com.au/137-revision-3/',0,'revision','',0),
	(159,1,'2012-12-10 20:26:39','2012-12-10 20:26:39','<h2>Congratulations!</h2>\nYou have won First Prize in the Gallery 88 lucky door prize.\n\nYour prize is 10% off the price of an available Gallery 88 apartment.\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','First Prize','','inherit','open','open','','134-autosave','','','2012-12-10 20:26:39','2012-12-10 20:26:39','',134,'http://www.gallery88.com.au/134-autosave/',0,'revision','',0),
	(160,1,'2012-12-10 20:27:17','2012-12-10 20:27:17','<h2>Congratulations!</h2>\nYou have won First Prize in the Gallery 88 lucky door prize.\n\nYour prize is 1 nights accommodation in a Gallery 88 apartment and dinner for two at\nBambini Restaurant in Sydney CBD.\n\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','Third Prize','','inherit','open','open','','139-autosave','','','2012-12-10 20:27:17','2012-12-10 20:27:17','',139,'http://www.gallery88.com.au/139-autosave/',0,'revision','',0),
	(161,1,'2012-12-10 20:26:31','2012-12-10 20:26:31','<h2>Congratulations!</h2>\nYou have won Second Prize in the Gallery 88 lucky door prize.\nYour prize is 5 nights accommodation in a homestead at Mystery Bay on the NSW South Coast\n\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\" target=\"_blank\">info@2020projects.com.au</a>','Second Prize','','inherit','open','open','','137-autosave','','','2012-12-10 20:26:31','2012-12-10 20:26:31','',137,'http://www.gallery88.com.au/137-autosave/',0,'revision','',0),
	(162,1,'2012-12-10 00:28:02','2012-12-10 00:28:02','<div class=\"form-item\"><label>Name*</label>[text* your-name]</div>\r\n<div class=\"form-item\"><label>Email*</label>[email* your-email]</div>\r\n<div class=\"form-item\"><label>Phone</label>[text your-phone]</div>\r\n<div class=\"form-item\"><label>Enquiry</label>[textarea your-message]</div>\r\n<div class=\"form-item\">[checkbox marketing-material class:checkbox use_label_element \"Yes, please send me marketing material\"]</div>\r\n<div class=\"form-item\">[submit class:btn-submit \"Submit\"]</div>\nEnquiry from Barkala Website\n[your-name] <[your-email]>\nFrom: [your-name] <[your-email]>\r\n\r\nPhone: [your-phone]\r\nMessage Body: [your-message]\r\n[marketing-material]\r\n\r\n--\r\nThis mail is sent via contact form on Barkala http://www.barkala.net/\ntest@test.com.au\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nMessage body:\r\n[your-message]\r\n\r\n--\r\nThis mail is sent via contact form on Gallery 88 http://www.gallery88.com.au/\n[your-email]\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact administrator by other way.\nFailed to send your message. Please try later or contact administrator by other way.\nValidation errors occurred. Please confirm the fields and submit it again.\nPlease accept the terms to proceed.\nEmail address seems invalid.\nPlease fill the required field.\nYour entered code is incorrect.\nYour answer is not correct.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nFailed to send your message. Please try later or contact the administrator by another method.','Barkala Contact Form','','publish','open','open','','gallery-88-contact-form','','','2014-02-18 02:48:32','2014-02-18 02:48:32','',0,'http://www.gallery88.com.au/?post_type=wpcf7_contact_form&#038;p=162',0,'wpcf7_contact_form','',0),
	(163,1,'2012-12-06 05:22:55','2012-12-06 05:22:55','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize. Your prize is 10% off the price of any available apartment at Gallery 88!','First Prize','','inherit','open','open','','134-revision-7','','','2012-12-06 05:22:55','2012-12-06 05:22:55','',134,'http://www.gallery88.com.au/134-revision-7/',0,'revision','',0),
	(164,1,'2012-12-10 20:23:36','2012-12-10 20:23:36','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize.\r\nYour prize is 10% off the price of an available Gallery 88 apartment.\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email info@2020projects.com.au','First Prize','','inherit','open','open','','134-revision-8','','','2012-12-10 20:23:36','2012-12-10 20:23:36','',134,'http://www.gallery88.com.au/134-revision-8/',0,'revision','',0),
	(165,1,'2012-12-06 05:23:06','2012-12-06 05:23:06','<h2>Congratulations!</h2>\r\nYou have won Second Prize in the Gallery 88 lucky door prize. Your prize is','Second Prize','','inherit','open','open','','137-revision-4','','','2012-12-06 05:23:06','2012-12-06 05:23:06','',137,'http://www.gallery88.com.au/137-revision-4/',0,'revision','',0),
	(166,1,'2012-12-10 20:24:18','2012-12-10 20:24:18','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize.\r\nYour prize is 10% off the price of an available Gallery 88 apartment.\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','First Prize','','inherit','open','open','','134-revision-9','','','2012-12-10 20:24:18','2012-12-10 20:24:18','',134,'http://www.gallery88.com.au/134-revision-9/',0,'revision','',0),
	(167,1,'2012-12-06 05:22:59','2012-12-06 05:22:59','<h2>Congratulations!</h2>\r\nYou have won Third Prize in the Gallery 88 lucky door prize. Your prize is','Third Prize','','inherit','open','open','','139-revision-4','','','2012-12-06 05:22:59','2012-12-06 05:22:59','',139,'http://www.gallery88.com.au/139-revision-4/',0,'revision','',0),
	(168,1,'2012-12-06 05:16:06','2012-12-06 05:16:06','Sorry,you have been unsuccessful in the Gallery 88 lucky door prize.\r\n\r\nTo discover more about Gallery 88 please <a href=\"/\">click here</a>','Unsuccessful','','inherit','open','open','','141-revision-7','','','2012-12-06 05:16:06','2012-12-06 05:16:06','',141,'http://www.gallery88.com.au/141-revision-7/',0,'revision','',0),
	(169,1,'2012-12-10 20:25:38','2012-12-10 20:25:38','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize.\r\n\r\nYour prize is 10% off the price of an available Gallery 88 apartment.\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','First Prize','','inherit','open','open','','134-revision-10','','','2012-12-10 20:25:38','2012-12-10 20:25:38','',134,'http://www.gallery88.com.au/134-revision-10/',0,'revision','',0),
	(170,1,'2012-12-10 20:26:16','2012-12-10 20:26:16','<h2>Congratulations!</h2>\r\nYou have won First Prize in the Gallery 88 lucky door prize.\r\n\r\nYour prize is 1 nights accommodation in a Gallery 88 apartment and dinner for two at\r\nBambini Restaurant in Sydney CBD.\r\n\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\">info@2020projects.com.au</a>','Third Prize','','inherit','open','open','','139-revision-5','','','2012-12-10 20:26:16','2012-12-10 20:26:16','',139,'http://www.gallery88.com.au/139-revision-5/',0,'revision','',0),
	(171,1,'2012-12-10 20:25:30','2012-12-10 20:25:30','<h2>Congratulations!</h2>\r\nYou have won Second Prize in the Gallery 88 lucky door prize.\r\nYour prize is 5 nights accommodation in a homestead at Mystery Bay on the NSW South Coast\r\n\r\nTo redeem your prize please retain your entry card and present to a Gallery 88 representative or email <a href=\"mailto:info@2020projects.com.au\" target=\"_blank\">info@2020projects.com.au</a>','Second Prize','','inherit','open','open','','137-revision-5','','','2012-12-10 20:25:30','2012-12-10 20:25:30','',137,'http://www.gallery88.com.au/137-revision-5/',0,'revision','',0),
	(269,1,'2011-05-18 01:52:44','2011-05-18 01:52:44','Equal emphasis has been placed on style and functionality, creating spaces both beautiful and easy to live within.\r\n\r\nThe design is modern grandeur, a fusion of contemporary urban and elegant sophistication.\r\n\r\n<strong>Select an apartment below for a more detailed overview.</strong>','The Apartments','','inherit','open','open','','14-revision-v1','','','2011-05-18 01:52:44','2011-05-18 01:52:44','',14,'http://www.barkala.net/14-revision-v1/',0,'revision','',0),
	(173,1,'2012-12-11 02:47:46','2012-12-11 02:47:46','Space – so coveted in Sydney’s inner suburbs, so seldom found. Welcome to GALLERY 88, a boutique development of ingeniously designed, superbly finished, enduringly modern and truly spacious homes.\n\nEach apartment has been tailored architecturally within the building, maximising the natural sunlight, harbour views and leafy outlooks.','88 Berry Street, North Sydney','','inherit','open','open','','4-autosave','','','2012-12-11 02:47:46','2012-12-11 02:47:46','',4,'http://www.gallery88.com.au/4-autosave/',0,'revision','',0),
	(175,1,'2013-01-09 00:16:20','2013-01-09 00:16:20','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 9','','publish','open','open','','apartment-9','','','2014-02-18 01:16:32','2014-02-18 01:16:32','',14,'http://www.gallery88.com.au/?page_id=175',0,'page','',0),
	(243,1,'2014-02-18 01:15:48','2014-02-18 01:15:48','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 9','','inherit','open','open','','175-revision-v1','','','2014-02-18 01:15:48','2014-02-18 01:15:48','',175,'http://www.barkala.net/175-revision-v1/',0,'revision','',0),
	(178,1,'2013-01-09 00:16:44','2013-01-09 00:16:44','','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-09 00:16:44','2013-01-09 00:16:44','',175,'http://www.gallery88.com.au/175-revision-3/',0,'revision','',0),
	(179,1,'2013-01-09 00:16:59','2013-01-09 00:16:59','','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-09 00:16:59','2013-01-09 00:16:59','',175,'http://www.gallery88.com.au/175-revision-4/',0,'revision','',0),
	(180,1,'2011-07-13 06:43:45','2011-07-13 06:43:45','This light filled north facing apartment with its flowing floor plan is beautifully appointed. With living areas flowing from the kitchen, this apartment also includes a media area for those needing to work or study from home.','Apartment 1','','inherit','open','open','','18-revision-16','','','2011-07-13 06:43:45','2011-07-13 06:43:45','',18,'http://www.gallery88.com.au/18-revision-16/',0,'revision','',0),
	(181,1,'2011-07-13 06:43:24','2011-07-13 06:43:24','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms and a flex room, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-10','','','2011-07-13 06:43:24','2011-07-13 06:43:24','',58,'http://www.gallery88.com.au/58-revision-10/',0,'revision','',0),
	(182,1,'2013-01-09 00:20:34','2013-01-09 00:20:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 10','','publish','open','open','','apartment-10','','','2014-02-18 01:17:48','2014-02-18 01:17:48','',14,'http://www.gallery88.com.au/?page_id=182',0,'page','',0),
	(245,1,'2014-02-18 01:17:22','2014-02-18 01:17:22','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 10','','inherit','open','open','','182-revision-v1','','','2014-02-18 01:17:22','2014-02-18 01:17:22','',182,'http://www.barkala.net/182-revision-v1/',0,'revision','',0),
	(183,1,'2013-01-09 00:20:16','2013-01-09 00:20:16','','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-09 00:20:16','2013-01-09 00:20:16','',182,'http://www.gallery88.com.au/182-revision/',0,'revision','',0),
	(184,1,'2013-01-09 00:20:34','2013-01-09 00:20:34','','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-09 00:20:34','2013-01-09 00:20:34','',182,'http://www.gallery88.com.au/182-revision-2/',0,'revision','',0),
	(185,1,'2013-01-09 00:20:49','2013-01-09 00:20:49','','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-09 00:20:49','2013-01-09 00:20:49','',182,'http://www.gallery88.com.au/182-revision-3/',0,'revision','',0),
	(186,1,'2013-01-09 00:20:58','2013-01-09 00:20:58','','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-09 00:20:58','2013-01-09 00:20:58','',182,'http://www.gallery88.com.au/182-revision-4/',0,'revision','',0),
	(187,1,'2011-07-13 06:43:04','2011-07-13 06:43:04','Elegantly appointed and generous proportions best describe this apartment.  The stunning kitchen over looks the north facing living areas which flow on to a large terrace.  The media area is large enough to offer a third living space.','Apartment 3','','inherit','open','open','','60-revision-7','','','2011-07-13 06:43:04','2011-07-13 06:43:04','',60,'http://www.gallery88.com.au/60-revision-7/',0,'revision','',0),
	(188,1,'2011-07-07 06:48:08','2011-07-07 06:48:08','Combining highly desired north and east aspects, this home offers exceptional space and privacy.  Entertain or just enjoy the over sized terrace which runs almost the full length of the home or simply relax in your spa!','Apartment 4','','inherit','open','open','','63-revision-8','','','2011-07-07 06:48:08','2011-07-07 06:48:08','',63,'http://www.gallery88.com.au/63-revision-8/',0,'revision','',0),
	(189,1,'2011-07-07 06:48:41','2011-07-07 06:48:41','With an easterly aspect that runs the full length of the home, the living and dinning areas are the hub of this beautiful design.  You can even escape to your very own master retreat complete with balcony.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2011-07-07 06:48:41','2011-07-07 06:48:41','',65,'http://www.gallery88.com.au/65-revision-6/',0,'revision','',0),
	(190,1,'2011-07-13 06:42:04','2011-07-13 06:42:04','The generously appointed kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large media room that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2011-07-13 06:42:04','2011-07-13 06:42:04','',67,'http://www.gallery88.com.au/67-revision-7/',0,'revision','',0),
	(191,1,'2011-07-13 06:42:22','2011-07-13 06:42:22','Generously proportioned with city vistas.  East facing dining and living areas, whilst the kitchen is adjacent to the family room.  All 3 bedrooms have opening windows, at the same time 2 enjoy the freedom of Juliet balconies.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2011-07-13 06:42:22','2011-07-13 06:42:22','',69,'http://www.gallery88.com.au/69-revision-10/',0,'revision','',0),
	(192,1,'2011-07-07 06:50:47','2011-07-07 06:50:47','At just under 300sqm, this 2 level luxuriously appointed apartment enjoys views over Kirribilli and the harbour.  All the living areas are on one level with the media/gym/games room perfectly located downstairs.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2011-07-07 06:50:47','2011-07-07 06:50:47','',71,'http://www.gallery88.com.au/71-revision-6/',0,'revision','',0),
	(193,1,'2013-01-09 00:17:59','2013-01-09 00:17:59','This light filled north facing apartment with its flowing floor plan is beautifully appointed. With living areas flowing from the kitchen, this apartment also includes a media area for those needing to work or study from home.','Apartment 1','','inherit','open','open','','18-revision-17','','','2013-01-09 00:17:59','2013-01-09 00:17:59','',18,'http://www.gallery88.com.au/18-revision-17/',0,'revision','',0),
	(194,1,'2013-01-09 00:42:31','2013-01-09 00:42:31','Elegantly appointed and generous proportions best describe this apartment.  The stunning kitchen over looks the north facing living areas which flow on to a large terrace.  The media area is large enough to offer a third living space.','Apartment 3','','inherit','open','open','','60-revision-8','','','2013-01-09 00:42:31','2013-01-09 00:42:31','',60,'http://www.gallery88.com.au/60-revision-8/',0,'revision','',0),
	(196,1,'2013-01-09 03:41:00','2013-01-09 03:41:00','The large 3 bedroom home boasts a flexible, north facing living and dining area. With main bedroom offering a luxurious ensuite as well as providing a generous main bathroom. This apartment offers something for everyone.','Apartment 4','','inherit','open','open','','63-revision-10','','','2013-01-09 03:41:00','2013-01-09 03:41:00','',63,'http://www.gallery88.com.au/63-revision-10/',0,'revision','',0),
	(197,1,'2013-01-09 03:41:21','2013-01-09 03:41:21','The large 3 bedroom home boasts a flexible, north facing living and dining area. With main bedroom offering a luxurious ensuite as well as providing a generous main bathroom. This apartment offers something for everyone.','Apartment 4','','inherit','open','open','','63-revision-11','','','2013-01-09 03:41:21','2013-01-09 03:41:21','',63,'http://www.gallery88.com.au/63-revision-11/',0,'revision','',0),
	(198,1,'2013-01-09 00:18:42','2013-01-09 00:18:42','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms and a flex room, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-11','','','2013-01-09 00:18:42','2013-01-09 00:18:42','',58,'http://www.gallery88.com.au/58-revision-11/',0,'revision','',0),
	(199,1,'2013-01-09 00:42:59','2013-01-09 00:42:59','With an easterly aspect that runs the full length of the home, the living and dinning areas are the hub of this beautiful design.  You can even escape to your very own master retreat complete with balcony.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2013-01-09 00:42:59','2013-01-09 00:42:59','',65,'http://www.gallery88.com.au/65-revision-7/',0,'revision','',0),
	(200,1,'2013-01-09 00:43:09','2013-01-09 00:43:09','The generously appointed kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large media room that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2013-01-09 00:43:09','2013-01-09 00:43:09','',67,'http://www.gallery88.com.au/67-revision-8/',0,'revision','',0),
	(201,1,'2013-01-09 00:43:24','2013-01-09 00:43:24','Generously proportioned with city vistas.  East facing dining and living areas, whilst the kitchen is adjacent to the family room.  All 3 bedrooms have opening windows, at the same time 2 enjoy the freedom of Juliet balconies.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2013-01-09 00:43:24','2013-01-09 00:43:24','',69,'http://www.gallery88.com.au/69-revision-11/',0,'revision','',0),
	(202,1,'2013-01-09 00:43:39','2013-01-09 00:43:39','At just under 300sqm, this 2 level luxuriously appointed apartment enjoys views over Kirribilli and the harbour.  All the living areas are on one level with the media/gym/games room perfectly located downstairs.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2013-01-09 00:43:39','2013-01-09 00:43:39','',71,'http://www.gallery88.com.au/71-revision-7/',0,'revision','',0),
	(203,1,'2013-01-09 00:21:06','2013-01-09 00:21:06','','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-09 00:21:06','2013-01-09 00:21:06','',182,'http://www.gallery88.com.au/182-revision-5/',0,'revision','',0),
	(204,1,'2013-01-09 00:17:31','2013-01-09 00:17:31','','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-09 00:17:31','2013-01-09 00:17:31','',175,'http://www.gallery88.com.au/175-revision-5/',0,'revision','',0),
	(206,1,'2013-01-09 03:40:46','2013-01-09 03:40:46','This light filled north facing apartment with its efficient floor plan is beautifully appointed. With living areas flowing from the kitchen out onto a sunny yet private north facing terrace.','Apartment 3','','inherit','open','open','','60-revision-9','','','2013-01-09 03:40:46','2013-01-09 03:40:46','',60,'http://www.gallery88.com.au/60-revision-9/',0,'revision','',0),
	(207,1,'2013-01-09 03:43:23','2013-01-09 03:43:23','The generously appointed kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large media room that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2013-01-09 03:43:23','2013-01-09 03:43:23','',67,'http://www.gallery88.com.au/67-revision-9/',0,'revision','',0),
	(208,1,'2013-01-14 04:40:24','2013-01-14 04:40:24','This contemporary 3 bedroom apartment boasts both east and west aspects. The main living areas give a New York loft appeal with full height glazing and soaring ceilings up to 4.2m.','Apartment 10','','inherit','open','open','','182-autosave-v1','','','2013-01-14 04:40:24','2013-01-14 04:40:24','',182,'http://www.gallery88.com.au/182-autosave/',0,'revision','',0),
	(209,1,'2013-01-09 03:44:11','2013-01-09 03:44:11','At just under 300sqm, this 2 level luxuriously appointed apartment enjoys views over Kirribilli and the harbour.  All the living areas are on one level with the media/gym/games room perfectly located downstairs.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2013-01-09 03:44:11','2013-01-09 03:44:11','',71,'http://www.gallery88.com.au/71-revision-8/',0,'revision','',0),
	(210,1,'2013-01-09 03:44:44','2013-01-09 03:44:44','This contemporary 3 bedroom apartment boasts both east and west aspects. The main living areas give a New York loft appeal with full height glazing and soaring ceilings up to 4.2m.','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-09 03:44:44','2013-01-09 03:44:44','',182,'http://www.gallery88.com.au/182-revision-6/',0,'revision','',0),
	(211,1,'2013-01-09 03:45:09','2013-01-09 03:45:09','This apartment offers a generous east facing living and dining area, with lofty 4.2m high ceilings, whilst the kitchen is adjacent to the large family room. 2 of the bedrooms have an east facing Juliet balcony and are superbly appointed, with a 5 star ensuite accompanying the master bedroom with a flexible east facing third bedroom with its own ensuite. Perfect for that interstate guest.','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-09 03:45:09','2013-01-09 03:45:09','',175,'http://www.gallery88.com.au/175-revision-6/',0,'revision','',0),
	(212,1,'2013-01-14 04:39:04','2013-01-14 04:39:04','The generously appointed kitchen overlooks the dinning and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large second living space that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2013-01-14 04:39:04','2013-01-14 04:39:04','',67,'http://www.gallery88.com.au/67-revision-10/',0,'revision','',0),
	(213,1,'2013-01-14 04:40:36','2013-01-14 04:40:36','At just under 300sqm, this 2 level luxuriously appointed apartment enjoys views over Kirribilli and the harbour.  All the living areas are on one level with the media/gym/games room perfectly located downstairs.\r\n\r\nOne of three superior penthouse style homes with a stunning sense of space rarely found.','Apartment 8','','inherit','open','open','','71-revision-v1','','','2013-01-14 04:40:36','2013-01-14 04:40:36','',71,'http://www.gallery88.com.au/71-revision-9/',0,'revision','',0),
	(215,1,'2011-07-07 23:37:21','2011-07-07 23:37:21','<p><strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.</p>\r\n\r\n<p>Or call <strong style=\"color:#B99086\">9997 8800</strong> for further information.</p>\r\n\r\n<p>Showroom <strong>COMING SOON!</strong></p>','Contact','','inherit','open','open','','36-revision-v1','','','2011-07-07 23:37:21','2011-07-07 23:37:21','',36,'http://www.gallery88.com.au/36-revision-9/',0,'revision','',0),
	(216,1,'2013-05-01 22:35:20','2013-05-01 22:35:20','<strong>Register now</strong> - for the first opportunity to purchase! Simply complete our online form to register your interest and our agents will contact you.\r\n\r\nOr call for further information.\r\n\r\nMarcello Bo:  <strong>0425 343 406</strong>\r\n\r\nPeter Apostolou: <strong>0414 796 877</strong>\r\n\r\nRoxanne Camilleri: <strong>0433 599 091</strong>','Contact','','inherit','open','open','','36-revision-v1','','','2013-05-01 22:35:20','2013-05-01 22:35:20','',36,'http://www.gallery88.com.au/36-revision-10/',0,'revision','',0),
	(217,1,'2014-02-17 00:57:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-02-17 00:57:04','0000-00-00 00:00:00','',0,'http://www.gallery88.com.au/?p=217',0,'post','',0),
	(218,1,'2011-05-18 01:47:35','2011-05-18 01:47:35','Space – so coveted in Sydney’s inner suburbs, so seldom found. Welcome to GALLERY 88, a boutique development of ingeniously designed, superbly finished, enduringly modern and truly spacious homes.\r\n\r\nEach	apartment	has	been	tailored architecturally within the building, maximising the natural sunlight, harbour views and leafy outlooks.','88 Berry Street, North Sydney','','inherit','open','open','','4-revision-6','','','2011-05-18 01:47:35','2011-05-18 01:47:35','',4,'http://www.barkala.net/4-revision-6/',0,'revision','',0),
	(219,1,'2014-02-17 03:32:19','2014-02-17 03:32:19','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed laoreet arcu sit amet risus luctus imperdiet in id tortor. Aenean porttitor nulla pretium nibh feugiat rutrum sed non sapien.\r\n\r\nDonec dignissim arcu ut augue pharetra in tempus tortor suscipit. Morbi hendrerit, odio a sollicitudin blandit, odio leo eleifend massa.','88 Berry Street, North Sydney','','inherit','open','open','','4-revision-7','','','2014-02-17 03:32:19','2014-02-17 03:32:19','',4,'http://www.barkala.net/4-revision-7/',0,'revision','',0),
	(220,1,'2014-02-17 22:30:15','2014-02-17 22:30:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 11','','publish','open','open','','apartment-11','','','2014-02-18 01:18:05','2014-02-18 01:18:05','',14,'http://www.barkala.net/?page_id=220',0,'page','',0),
	(221,1,'2014-02-17 22:29:42','2014-02-17 22:29:42','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 11','','inherit','open','open','','220-revision-v1','','','2014-02-17 22:29:42','2014-02-17 22:29:42','',220,'http://www.barkala.net/220-revision/',0,'revision','',0),
	(222,1,'2014-02-17 22:30:15','2014-02-17 22:30:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 11','','inherit','open','open','','220-revision-v1','','','2014-02-17 22:30:15','2014-02-17 22:30:15','',220,'http://www.barkala.net/220-revision-2/',0,'revision','',0),
	(223,1,'2014-02-17 22:32:55','2014-02-17 22:32:55','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 11','','inherit','open','open','','220-revision-v1','','','2014-02-17 22:32:55','2014-02-17 22:32:55','',220,'http://www.barkala.net/220-revision-3/',0,'revision','',0),
	(224,1,'2014-02-17 22:34:57','2014-02-17 22:34:57','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 11','','inherit','open','open','','220-revision-v1','','','2014-02-17 22:34:57','2014-02-17 22:34:57','',220,'http://www.barkala.net/220-revision-4/',0,'revision','',0),
	(225,1,'2014-02-17 22:35:22','2014-02-17 22:35:22','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 11','','inherit','open','open','','220-revision-v1','','','2014-02-17 22:35:22','2014-02-17 22:35:22','',220,'http://www.barkala.net/220-revision-5/',0,'revision','',0),
	(226,1,'2013-01-09 03:40:18','2013-01-09 03:40:18','This light filled north facing apartment with its flowing floor plan is beautifully appointed. With living areas flowing from the kitchen, this apartment also includes a media area for those needing to work or study from home.','Apartment 1','','inherit','open','open','','18-revision-18','','','2013-01-09 03:40:18','2013-01-09 03:40:18','',18,'http://www.barkala.net/18-revision-18/',0,'revision','',0),
	(227,1,'2014-02-18 00:49:35','2014-02-18 00:49:35','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 1','','inherit','open','open','','18-revision-19','','','2014-02-18 00:49:35','2014-02-18 00:49:35','',18,'http://www.barkala.net/18-revision-19/',0,'revision','',0),
	(228,1,'2013-01-09 03:42:26','2013-01-09 03:42:26','The large north facing terrace seamlessly meets the master bedroom and living areas. Offering 2 spacious bedrooms and a flex room, main with en-suite, the elevated media room provides a stunning feature to this apartment.','Apartment 2','','inherit','open','open','','58-revision-12','','','2013-01-09 03:42:26','2013-01-09 03:42:26','',58,'http://www.barkala.net/58-revision-12/',0,'revision','',0),
	(229,1,'2013-01-14 04:38:02','2013-01-14 04:38:02','This light filled north facing apartment with its efficient floor plan is beautifully appointed. With living areas flowing from the kitchen out onto a sunny yet private north facing terrace.','Apartment 3','','inherit','open','open','','60-revision-10','','','2013-01-14 04:38:02','2013-01-14 04:38:02','',60,'http://www.barkala.net/60-revision-10/',0,'revision','',0),
	(230,1,'2014-02-18 00:53:09','2014-02-18 00:53:09','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 3','','inherit','open','open','','60-revision-11','','','2014-02-18 00:53:09','2014-02-18 00:53:09','',60,'http://www.barkala.net/60-revision-11/',0,'revision','',0),
	(231,1,'2013-01-09 03:42:08','2013-01-09 03:42:08','The large 3 bedroom home boasts a flexible, north facing living and dining area. With main bedroom offering a luxurious ensuite as well as providing a generous main bathroom. This apartment offers something for everyone.','Apartment 4','','inherit','open','open','','63-revision-12','','','2013-01-09 03:42:08','2013-01-09 03:42:08','',63,'http://www.barkala.net/63-revision-12/',0,'revision','',0),
	(232,1,'2014-02-18 00:54:32','2014-02-18 00:54:32','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 4','','inherit','open','open','','63-revision-13','','','2014-02-18 00:54:32','2014-02-18 00:54:32','',63,'http://www.barkala.net/63-revision-13/',0,'revision','',0),
	(233,1,'2014-02-18 00:55:18','2014-02-18 00:55:18','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 4','','inherit','open','open','','63-revision-14','','','2014-02-18 00:55:18','2014-02-18 00:55:18','',63,'http://www.barkala.net/63-revision-14/',0,'revision','',0),
	(234,1,'2014-02-18 00:55:33','2014-02-18 00:55:33','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 4','','inherit','open','open','','63-revision-15','','','2014-02-18 00:55:33','2014-02-18 00:55:33','',63,'http://www.barkala.net/63-revision-15/',0,'revision','',0),
	(235,1,'2013-01-09 03:43:01','2013-01-09 03:43:01','This spacious 1 bed plus flex room is the perfect urban retreat. The galley kitchen and living areas spilling out onto a generous east facing terrace that boasts harbour glimpses.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2013-01-09 03:43:01','2013-01-09 03:43:01','',65,'http://www.barkala.net/65-revision-8/',0,'revision','',0),
	(236,1,'2014-02-18 01:00:39','2014-02-18 01:00:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 5','','inherit','open','open','','65-revision-v1','','','2014-02-18 01:00:39','2014-02-18 01:00:39','',65,'http://www.barkala.net/65-revision-v1/',0,'revision','',0),
	(237,1,'2013-01-14 04:41:48','2013-01-14 04:41:48','The generously appointed kitchen overlooks the dining and living areas and further east over Kirribilli and beyond.  As you enter the apartment you will pass the large second living space that could double as a bedroom for those interstate guests.','Apartment 6','','inherit','open','open','','67-revision-v1','','','2013-01-14 04:41:48','2013-01-14 04:41:48','',67,'http://www.barkala.net/67-revision-v1/',0,'revision','',0),
	(239,1,'2013-01-09 03:43:51','2013-01-09 03:43:51','This generous 3 bedroom home has been appointed with only the best finishes and features. The master suite provides a ‘day spa’ feel with its elegant ensuite and north facing terrace. 3 bathrooms in total plus a second living room which is perfect for either your home cinema or a kids retreat. There is also a huge north facing terrace off the living and dining areas, simply perfect for entertaining.','Apartment 7','','inherit','open','open','','69-revision-v1','','','2013-01-09 03:43:51','2013-01-09 03:43:51','',69,'http://www.barkala.net/69-revision-v1/',0,'revision','',0),
	(242,1,'2013-01-14 04:40:53','2013-01-14 04:40:53','This apartment offers a generous east facing living and dining area, with lofty 4.2m high ceilings, whilst the kitchen is adjacent to the large family room. 2 of the bedrooms have an east facing Juliet balcony and are superbly appointed, with a 5 star ensuite accompanying the master bedroom with a flexible east facing third bedroom with its own ensuite. Perfect for that interstate guest.\r\n\r\nOne of three superior penthouse style homes with a stunning sense of space rarely found.','Apartment 9','','inherit','open','open','','175-revision-v1','','','2013-01-14 04:40:53','2013-01-14 04:40:53','',175,'http://www.barkala.net/175-revision-v1/',0,'revision','',0),
	(244,1,'2013-01-14 04:40:41','2013-01-14 04:40:41','This contemporary 3 bedroom apartment boasts both east and west aspects. The main living areas give a New York loft appeal with full height glazing and soaring ceilings up to 4.2m.\r\n\r\nOne of three superior penthouse style homes with a stunning sense of space rarely found.','Apartment 10','','inherit','open','open','','182-revision-v1','','','2013-01-14 04:40:41','2013-01-14 04:40:41','',182,'http://www.barkala.net/182-revision-v1/',0,'revision','',0),
	(246,1,'2014-02-18 01:22:07','2014-02-18 01:22:07','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 12','','publish','open','open','','apartment-12','','','2014-02-18 01:22:07','2014-02-18 01:22:07','',14,'http://www.barkala.net/?page_id=246',0,'page','',0),
	(247,1,'2014-02-18 01:22:07','2014-02-18 01:22:07','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 12','','inherit','open','open','','246-revision-v1','','','2014-02-18 01:22:07','2014-02-18 01:22:07','',246,'http://www.barkala.net/246-revision-v1/',0,'revision','',0),
	(248,1,'2014-02-18 01:22:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-02-18 01:22:31','0000-00-00 00:00:00','',0,'http://www.barkala.net/?page_id=248',0,'page','',0),
	(249,1,'2014-02-18 01:23:48','2014-02-18 01:23:48','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 13','','publish','open','open','','apartment-13','','','2014-02-18 01:23:48','2014-02-18 01:23:48','',14,'http://www.barkala.net/?page_id=249',0,'page','',0),
	(250,1,'2014-02-18 01:23:48','2014-02-18 01:23:48','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 13','','inherit','open','open','','249-revision-v1','','','2014-02-18 01:23:48','2014-02-18 01:23:48','',249,'http://www.barkala.net/249-revision-v1/',0,'revision','',0),
	(251,1,'2014-02-18 01:24:56','2014-02-18 01:24:56','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 14','','publish','open','open','','apartment-14','','','2014-02-18 01:24:56','2014-02-18 01:24:56','',14,'http://www.barkala.net/?page_id=251',0,'page','',0),
	(252,1,'2014-02-18 01:24:56','2014-02-18 01:24:56','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 14','','inherit','open','open','','251-revision-v1','','','2014-02-18 01:24:56','2014-02-18 01:24:56','',251,'http://www.barkala.net/251-revision-v1/',0,'revision','',0),
	(253,1,'2014-02-18 01:26:25','2014-02-18 01:26:25','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 15','','publish','open','open','','apartment-15','','','2014-02-18 01:26:25','2014-02-18 01:26:25','',14,'http://www.barkala.net/?page_id=253',0,'page','',0),
	(254,1,'2014-02-18 01:26:25','2014-02-18 01:26:25','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 15','','inherit','open','open','','253-revision-v1','','','2014-02-18 01:26:25','2014-02-18 01:26:25','',253,'http://www.barkala.net/253-revision-v1/',0,'revision','',0),
	(255,1,'2014-02-18 01:29:41','2014-02-18 01:29:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 16','','publish','open','open','','apartment-16','','','2014-02-18 01:33:08','2014-02-18 01:33:08','',14,'http://www.barkala.net/?page_id=255',0,'page','',0),
	(256,1,'2014-02-18 01:29:41','2014-02-18 01:29:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 16','','inherit','open','open','','255-revision-v1','','','2014-02-18 01:29:41','2014-02-18 01:29:41','',255,'http://www.barkala.net/255-revision-v1/',0,'revision','',0),
	(257,1,'2014-02-18 01:34:44','2014-02-18 01:34:44','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 17','','publish','open','open','','apartment-17','','','2014-02-18 01:46:34','2014-02-18 01:46:34','',14,'http://www.barkala.net/?page_id=257',0,'page','',0),
	(258,1,'2014-02-18 01:34:44','2014-02-18 01:34:44','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 17','','inherit','open','open','','257-revision-v1','','','2014-02-18 01:34:44','2014-02-18 01:34:44','',257,'http://www.barkala.net/257-revision-v1/',0,'revision','',0),
	(259,1,'2014-02-18 01:48:26','2014-02-18 01:48:26','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 18','','publish','open','open','','apartment-18','','','2014-02-18 01:49:37','2014-02-18 01:49:37','',14,'http://www.barkala.net/?page_id=259',0,'page','',0),
	(260,1,'2014-02-18 01:48:26','2014-02-18 01:48:26','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 18','','inherit','open','open','','259-revision-v1','','','2014-02-18 01:48:26','2014-02-18 01:48:26','',259,'http://www.barkala.net/259-revision-v1/',0,'revision','',0),
	(261,1,'2014-02-18 01:50:39','2014-02-18 01:50:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 19','','publish','open','open','','apartment-19','','','2014-02-18 01:50:39','2014-02-18 01:50:39','',14,'http://www.barkala.net/?page_id=261',0,'page','',0),
	(262,1,'2014-02-18 01:50:39','2014-02-18 01:50:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 19','','inherit','open','open','','261-revision-v1','','','2014-02-18 01:50:39','2014-02-18 01:50:39','',261,'http://www.barkala.net/261-revision-v1/',0,'revision','',0),
	(263,1,'2014-02-18 01:51:49','2014-02-18 01:51:49','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 20','','publish','open','open','','apartment-20','','','2014-02-18 01:51:49','2014-02-18 01:51:49','',14,'http://www.barkala.net/?page_id=263',0,'page','',0),
	(264,1,'2014-02-18 01:51:49','2014-02-18 01:51:49','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 20','','inherit','open','open','','263-revision-v1','','','2014-02-18 01:51:49','2014-02-18 01:51:49','',263,'http://www.barkala.net/263-revision-v1/',0,'revision','',0),
	(265,1,'2014-02-18 01:53:21','2014-02-18 01:53:21','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 21','','publish','open','open','','apartment-21','','','2014-02-18 01:53:49','2014-02-18 01:53:49','',14,'http://www.barkala.net/?page_id=265',0,'page','',0),
	(266,1,'2014-02-18 01:53:21','2014-02-18 01:53:21','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 21','','inherit','open','open','','265-revision-v1','','','2014-02-18 01:53:21','2014-02-18 01:53:21','',265,'http://www.barkala.net/265-revision-v1/',0,'revision','',0),
	(267,1,'2014-02-18 01:55:31','2014-02-18 01:55:31','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 22','','publish','open','open','','apartment-22','','','2014-02-18 01:55:31','2014-02-18 01:55:31','',14,'http://www.barkala.net/?page_id=267',0,'page','',0),
	(268,1,'2014-02-18 01:55:31','2014-02-18 01:55:31','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. Fusce dolor dolor, lacinia ac interdum vitae, consequat at risus.','Apartment 22','','inherit','open','open','','267-revision-v1','','','2014-02-18 01:55:31','2014-02-18 01:55:31','',267,'http://www.barkala.net/267-revision-v1/',0,'revision','',0),
	(270,1,'2014-02-18 02:32:11','2014-02-18 02:32:11','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dolor ipsum, ultricies eu porttitor laoreet, pellentesque nec purus. \r\n\r\nFusce dolor dolor, lacinia ac interdum vitae, consequat at risus.\r\n\r\n<strong>Select an apartment below for a more detailed overview.</strong>','The Apartments','','inherit','open','open','','14-revision-v1','','','2014-02-18 02:32:11','2014-02-18 02:32:11','',14,'http://www.barkala.net/14-revision-v1/',0,'revision','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,2,0),
	(2,2,0),
	(3,2,0),
	(4,2,0),
	(5,2,0),
	(6,2,0),
	(7,2,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,0),
	(2,2,'link_category','',0,7);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'Blogroll','blogroll',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'first_name',''),
	(2,1,'last_name',''),
	(3,1,'nickname','admin'),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','false'),
	(11,1,'aim',''),
	(12,1,'yim',''),
	(13,1,'jabber',''),
	(14,1,'wp_capabilities','a:1:{s:13:\"administrator\";s:1:\"1\";}'),
	(15,1,'wp_user_level','10'),
	(16,1,'wp_user-settings','m5=c&m9=o&m8=o&editor=html&m6=c&m4=o&hidetb=1'),
	(17,1,'wp_user-settings-time','1367447715'),
	(18,1,'wp_dashboard_quick_press_last_post_id','217'),
	(19,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
	(20,1,'metaboxhidden_nav-menus','a:2:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";}'),
	(21,1,'closedpostboxes_page','a:2:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"commentsdiv\";}'),
	(22,1,'metaboxhidden_page','a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
	(23,1,'closedpostboxes_dashboard','a:0:{}'),
	(24,1,'metaboxhidden_dashboard','a:8:{i:0;s:19:\"dashboard_right_now\";i:1;s:25:\"dashboard_recent_comments\";i:2;s:24:\"dashboard_incoming_links\";i:3;s:17:\"dashboard_plugins\";i:4;s:21:\"dashboard_quick_press\";i:5;s:23:\"dashboard_recent_drafts\";i:6;s:17:\"dashboard_primary\";i:7;s:19:\"dashboard_secondary\";}'),
	(25,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:197:\"dashboard_right_now,dashboard_recent_comments,dashboard_incoming_links,dashboard_plugins,google-analytics-summary,dashboard_quick_press,dashboard_recent_drafts,dashboard_primary,dashboard_secondary\";s:4:\"side\";s:0:\"\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
	(26,1,'screen_layout_dashboard','1'),
	(53,1,'dismissed_wp_pointers','wp330_toolbar,wp330_media_uploader,wp340_customize_current_theme_link,wp330_saving_widgets,wp360_revisions,wp350_media');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$Bk7crb1bjAN8/v5OYvL/BHCPbBVIzS.','admin','matt@thesquad.com.au','','2011-05-17 02:38:00','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
