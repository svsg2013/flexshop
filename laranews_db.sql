-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 06:38 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laranews_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `metaName`, `description`, `alias`, `weight`, `created_at`, `updated_at`) VALUES
(3, 'Thế giới xe', 'Thế giới xe mô-tô', 'thế giới xe môtô phân khối lớn và phân khối nhỏ', 'the-gioi-xe', 1, '2018-05-30 07:46:22', '2018-05-30 07:46:22'),
(4, 'Thị trường xe', 'Thị trường xe Việt Nam và Thế giới', 'Tin thị trường về thế giới xe trong nước và ngoài nước', 'thi-truong-xe', 1, '2018-05-30 07:46:59', '2018-05-30 07:46:59'),
(5, 'Góc chia sẻ', 'Góc chia sẻ kiến thức về xe và luật giao thông', 'Thảo luận kiến thức về kỹ thuật xe và luật giao thông Việt Nam', 'goc-chia-se', 1, '2018-05-30 07:48:09', '2018-05-30 07:48:09'),
(6, 'Kinh nghiệm', 'Kinh nghiệm về xe máy', 'Kỹ thuật về xe máy và kinh nghiệm', 'kinh-nghiem', 1, '2018-05-30 07:49:13', '2018-05-30 07:49:13'),
(7, 'Kỹ thuật', 'Kỹ thuật về xe máy', 'Kiến thức kỹ thuật cơ bản về cách bảo trì bảo dưỡng cũng như thay thế linh kiện', 'ky-thuat', 1, '2018-05-30 07:50:03', '2018-05-30 07:50:03'),
(8, 'Xe độ', 'Xe cải tiến kỹ thuật', 'Tập họp những xe độ đẹp mắt trong nước cũng như nước ngoài', 'xe-do', 1, '2018-05-30 07:51:20', '2018-05-30 07:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `cate_prods`
--

CREATE TABLE `cate_prods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cate_prods`
--

INSERT INTO `cate_prods` (`id`, `name`, `metaName`, `description`, `alias`, `weight`, `created_at`, `updated_at`) VALUES
(6, 'Umaracing', 'Umaracing', 'Umaracing', 'umaracing', 1, '2018-06-01 07:53:41', '2018-06-01 07:53:41'),
(7, 'Racing Boy', 'Racing Boy', 'Racing Boy', 'racing-boy', 1, '2018-06-01 07:53:55', '2018-06-01 07:53:55'),
(8, 'Nitron', 'Nitron', 'Nitron', 'nitron', 1, '2018-06-01 07:54:58', '2018-06-01 07:54:58'),
(9, 'YSS', 'YSS', 'YSS', 'yss', 1, '2018-06-01 07:55:14', '2018-06-01 07:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `child_cates`
--

CREATE TABLE `child_cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `cateParen_id` int(10) UNSIGNED NOT NULL,
  `lvl` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `child_cates`
--

INSERT INTO `child_cates` (`id`, `cateParen_id`, `lvl`, `created_at`, `updated_at`) VALUES
(3, 3, 0, '2018-05-30 07:46:22', '2018-05-30 07:46:22'),
(4, 4, 0, '2018-05-30 07:46:59', '2018-05-30 07:46:59'),
(5, 5, 0, '2018-05-30 07:48:09', '2018-05-30 07:48:09'),
(6, 6, 5, '2018-05-30 07:49:13', '2018-05-30 07:49:13'),
(7, 7, 5, '2018-05-30 07:50:03', '2018-05-30 07:50:03'),
(8, 8, 0, '2018-05-30 07:51:20', '2018-05-30 07:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `child_prods`
--

CREATE TABLE `child_prods` (
  `id` int(10) UNSIGNED NOT NULL,
  `cateParen_id` int(10) UNSIGNED NOT NULL,
  `lvl` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `child_prods`
--

INSERT INTO `child_prods` (`id`, `cateParen_id`, `lvl`, `created_at`, `updated_at`) VALUES
(6, 6, 0, '2018-06-01 07:53:41', '2018-06-01 07:53:41'),
(7, 7, 0, '2018-06-01 07:53:55', '2018-06-01 07:53:55'),
(8, 8, 0, '2018-06-01 07:54:58', '2018-06-01 07:54:58'),
(9, 9, 0, '2018-06-01 07:55:14', '2018-06-01 07:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `images_prods`
--

CREATE TABLE `images_prods` (
  `id` int(10) UNSIGNED NOT NULL,
  `Prod_id` int(10) UNSIGNED NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images_prods`
--

INSERT INTO `images_prods` (`id`, `Prod_id`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'Phuoc-JDS-BD-2M-600x600.jpg', '2018-06-04 08:31:54', '2018-06-04 08:31:54'),
(2, 1, 'Phuoc-JDS-BD-3M-600x600.jpg', '2018-06-04 08:31:54', '2018-06-04 08:31:54'),
(3, 1, 'Phuoc-JDS-BD-4M-600x600.jpg', '2018-06-04 08:31:54', '2018-06-04 08:31:54'),
(4, 9, 'Tay-Brembo-19RSC-Corsa-Costa-2M-600x600.jpg', '2018-06-04 08:52:44', '2018-06-04 08:52:44'),
(5, 9, 'Tay-Brembo-19RSC-Corsa-Costa-3M-600x600.jpg', '2018-06-04 08:52:44', '2018-06-04 08:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_resets_table', 1),
(57, '2017_10_17_045358_create_categories_table', 1),
(58, '2017_10_17_045423_create_child_cates_table', 1),
(59, '2017_10_17_045443_create_news_table', 1),
(60, '2017_10_17_045505_create_tags_table', 1),
(61, '2017_10_17_045524_create_news_tags_table', 1),
(62, '2017_10_17_045704_create_roles_table', 1),
(63, '2017_10_17_045741_create_user_roles_table', 1),
(64, '2017_10_17_081851_create_news_users_table', 1),
(65, '2018_05_03_132748_create_cate_prods_table', 1),
(66, '2018_05_03_134653_create_products_table', 1),
(67, '2018_05_03_134715_create_images_prods_table', 1),
(68, '2018_05_11_140625_create_child_prods_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `Cate_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(1) DEFAULT '0',
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hot` tinyint(1) DEFAULT '0',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `view` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `Cate_id`, `title`, `metaTitle`, `alias`, `summary`, `description`, `content`, `feature`, `images`, `hot`, `sort`, `view`, `active`, `relation`, `created_at`, `updated_at`) VALUES
(2, 3, 'Điểm thu hút nam giới của Yamaha Janus Boys', 'Điểm thu hút nam giới của Yamaha Janus Boys', 'diem-thu-hut-nam-gioi-cua-yamaha-janus-boys', 'Janus Boys là phiên bản hướng đến người dùng nam của hãng xe Nhật Bản với động cơ Blue Core 125, giá vẫn 31,99 triệu đồng.', 'Janus Boys là phiên bản hướng đến người dùng nam của hãng xe Nhật Bản với động cơ Blue Core 125, giá vẫn 31,99 triệu đồng.', '<p>Ra mắt vào 2016, Yamaha Janus tạo được sức hút ở phân khúc xe ga phổ thông với nhiều tính năng đáng chú ý như khóa thông minh Smartkey, hệ thống ngắt động cơ tạm thời SSS, động cơ Blue Core 125 với giá bán khá dễ chịu. Đầu năm nay, Yamaha tiếp tục giới thiệu màu mới của phiên bản Janus Boys, được thiết kế đặc biệt dành riêng cho khách hàng nam giới.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nam ca sĩ Only C bên Janus Boys màu trắng-xanh.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/30/557516213-w500-5295-1527667725.png\" style=\"text-align:center\" /></p>\r\n\r\n<p>Yamaha Janus Boys vẫn giữ nguyên thiết kế của dòng xe tay ga Janus. Gây ấn tượng là phần mặt nạ lớn với dải đèn nổi bật. Cụm đồng hồ với màn hình báo hiệu mức nhiên liệu, thời gian hay số km hành trình dễ quan sát khi điều khiển.</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\nTuy nhiên, màu sắc mới là điểm nổi bật của phiên bản giới hạn lần này, giúp tạo sự mạnh mẽ và phong cách, phù hợp với nam giới thích các màu tối giản, đường nét dứt khoát.&nbsp;Janus Boys trắng-xanh trẻ trung là sự kết hợp giữa màu trắng cùng xanh lam ở mặt nạ và yên xe. Ngược lại, Janus Boys đen nhám cuốn hút với toàn bộ phần thân xe màu đen, yên màu nâu kết hợp đường sọc cam ở thân và vành xe. Thân xe có gắn logo họa tiết 3D.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Mặt đồng hồ hiển thị những thông tin cần thiết.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/30/JANUS-countermeter-1-3467-1527667725.png\" /></p>\r\n\r\n<p>Vừa qua, Yamaha cũng mang đến cho những bạn trẻ yêu thích xe MV &ldquo;Quan trọng là thần thái&rdquo; phiên bản Janus Boys vui nhộn với sự tham gia của ba gương mặt đình đám hiện nay là Isaac, Chi Pu và Only C. Trong MV, cả hai chàng đều ra sức tán tỉnh Chi Pu, nhưng cuối cùng nhờ vào chiếc Janus Boys mà Isaac đã chiếm được trái tim cô nàng.Yamaha Janus phiên bản nam giữ nguyên động cơ Blue Core 125 phân khối với hệ thống phun xăng điện tử giúp tiết kiệm nhiên liệu tối ưu. Xe còn trang bị công nghệ ngắt động cơ tạm thời SSS (Stop &amp; Start System) cùng hệ thống khóa thông minh (Smart Key System) có chức năng định vị xe từ xa,&nbsp;khởi động không cần tra chìa vào ổ, mặt đồng hồ với nhiều thông số dễ quan sát, cốp xe đủ chỗ cho 2 mũ bảo hiểm nửa đầu.</p>\r\n\r\n<p>Với giai điệu bắt tai từ &ldquo;phù thủy âm nhạc&rdquo; Only C, MV nhắn nhủ các anh chàng nên biết thay đổi để tạo sức hút, thần thái là quan trọng và chiếc xe ga Janus Boys cũng quan trọng không kém. Một chiếc xe ga tốt đồng hành sẽ tạo thêm sức hút cho các chàng trai.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nam ca sĩ Isaac với Janus Boys màu đen nhám.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/30/229652165-w500-1636-1527667725.png\" /></p>', 0, '229652165-w500-1636-1527667725.png', 1, 1, 1, 1, 'a:1:{i:0;s:1:\"9\";}', '2018-05-30 07:57:44', '2018-06-01 07:52:39'),
(3, 3, 'Những thành phố tắc đường nhất thế giới', 'Những thành phố tắc đường nhất thế giới', 'nhung-thanh-pho-tac-duong-nhat-the-gioi', 'Los Angeles (Mỹ) chiếm ngôi quán quân trong Top 7 với kết quả từ 1.360 thành phố trên thế giới được nghiên cứu.', 'Los Angeles (Mỹ) chiếm ngôi quán quân trong Top 7 với kết quả từ 1.360 thành phố trên thế giới được nghiên cứu.', '<p style=\"text-align:center\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_0\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-2-1527583319_680x0.jpg\" /></p>\r\n\r\n<div>\r\n<div>\r\n<p>Inrix - hãng&nbsp;dịch vụ giải pháp trên nền Cloud (SaaS) và dịch vụ máy tính di động (DaaS) - công bố danh sách những thành phố tắc đường nhất thế giới dựa trên những thống kê trong năm 2017. Trên toàn cầu, tắc đường là vấn nạn ngày một gia tăng và khó giải quyết, khiến tài xế ở một số thành phố phải mất tới 100 giờ mỗi năm để chôn chân giữa các đám tắc nghẽn. Không chỉ làm phí phạm thời gian, mà vấn đề này còn khiến các quốc gia tiêu tốn hàng tỷ USD.<br />\r\nTrong số 1.360 thành phố được nghiên cứu, Los Angeles là nơi xảy ra tắc đường trầm trọng nhất. Ảnh:&nbsp;NBC.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_1\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-3-1527584079_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>1. Los Angeles (Mỹ)</p>\r\n\r\n<p>Thành phố Mỹ chiếm vị trí số một do các tài xế phải dành ra trung bình 102 giờ mỗi năm ở các đám tắc vào những giờ cao điểm. Thậm chí có những con đường tới 8 làn cũng bị tắc. Ảnh:&nbsp;AP.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_2\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-4-1527584314_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>2. Moskva (Nga)</p>\r\n\r\n<p>Thủ đô nước Nga, là thành phố tắc đường nhất châu Âu khi các tài xế phải dành tới 26% thời gian lái xe để ngồi im trên đường. Ảnh:&nbsp;Shutterstock.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_3\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-6-1527584819_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>3. New York (Mỹ)</p>\r\n\r\n<p>Ở New York, các lái xe mất tới 91 giờ cho các đám tắc, tăng so với 89 giờ của năm 2016. Ảnh:&nbsp;Flickr.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_4\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-8-1527585389_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>4. Sao Paolo (Brazil)</p>\r\n\r\n<p>Các tài xế ở đây phải tốn 22% thời gian đi lại ở các đám tắc, tức khoảng 86 giờ trong năm 2017. Ảnh:&nbsp;Dfic.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_5\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-10-1527585820_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>5. San Francisco (California, Mỹ)</p>\r\n\r\n<p>Trong khi đó, San Francisco chiếm vị trí thứ 5 khi các tài xế phí phạm khoảng 79 giờ do tắc đường, nhưng con số đã giảm so với năm trước. Ảnh:&nbsp;Shutterstock.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_6\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-11-1527586050_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>6. Bogota (Colombia)&nbsp;</p>\r\n\r\n<p>Tài xế ở đây phải chia sẻ 30% thời gian lái xe cho các đám tắc, tuy nhiên con số đã giảm từ mức 32% của 2016. Ảnh:&nbsp;Panampost.</p>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"text-align: center;\"><img alt=\"Những thành phố tắc đường nhất thế giới\" id=\"vne_slide_image_7\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/traffic-jam-12-1527586480_680x0.jpg\" /></div>\r\n\r\n<div>\r\n<p>7. London (Anh)</p>\r\n\r\n<p>London là thành phố tắc đường thứ 7 trên thế giới và là thành phố tắc nghẽn thứ hai ở châu Âu. Tài xế ở đây phải dành khoảng 74 giờ mỗi năm cho các đám tắc. Ảnh:&nbsp;PA.&nbsp;</p>\r\n</div>\r\n</div>', 0, 'traffic-jam-12-1527586480_680x0.jpg', 1, 1, 1, 1, NULL, '2018-05-30 07:59:38', '2018-05-30 08:25:11'),
(4, 6, 'Ducati Monster 821 bản 2018 về Việt Nam, giá 400 triệu', 'Ducati Monster 821 bản 2018 về Việt Nam, giá 400 triệu', 'ducati-monster-821-ban-2018-ve-viet-nam-gia-400-trieu', 'Mẫu nakedbike bản nâng cấp thay đổi nhẹ về thiết kế, thêm tùy chọn chức năng sang số nhanh và hệ thống giải trí đa phương tiện.', 'Mẫu nakedbike bản nâng cấp thay đổi nhẹ về thiết kế, thêm tùy chọn chức năng sang số nhanh và hệ thống giải trí đa phương tiện.', '<p>Monster 821 bản nâng cấp là sản phẩm mới đầu tiên của thương hiệu Italy trong 2018 ở thị trường Việt Nam. So với bản tiền nhiệm, mẫu nakedbike mới có một số thay đổi về ngoại hình như bình xăng và đuôi xe thiết kế lại, lấy cảm hứng từ mẫu Monster thế hệ đầu tiên ra mắt năm 1992.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Ducati Monster 821 đời 2018 tại Việt Nam.&nbsp;\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/IMG-6722-JPG-9262-1527572171.jpg\" /></p>\r\n\r\n<p>Ngoài những thay đổi kể trên về ngoại hình, Monster 821 mới giữ kiểu dáng truyền thống góc cạnh và khá cơ bắp. Xe đi kèm vành 17 inch, phanh đĩa tích hợp hệ thống ABS 3 cấp tiêu chuẩn. Chiều cao yên có thể điều chỉnh, thấp nhất 785 mm. Phuộc trước hành trình ngược (Upside Down) đường kính 43 mm, bộ giảm chấn phía sau có thể điều chỉnh.</p>\r\n\r\n<p>Tương tự phiên bản cũ, lần nâng cấp trên Monster 821 2018 không thay đổi về động cơ, loại Testastretta xi-lanh đôi, dung tích 821 phân khối làm mát bằng dung dịch. Công suất 109 mã lực tại vòng tua máy 9.250 vòng/phút, mô-men xoắn cực đại 86 Nm tại 7.750 vòng/phút. Hộp số 6 cấp.&nbsp;Ba chế độ lái: đường trường, thể thao và thành thị.</p>\r\n\r\n<p>Công suất động cơ bản nâng cấp giảm khoảng 3 mã lực so với bản tiền nhiệm để đáp ứng tiêu chuẩn khí thải Euro4. Công nghệ an toàn gồm kiểm soát bướm ga điện tử, kiểm soát lực kéo tám cấp. Chức năng sang số nhanh Quick Shift và hệ thống giải trí đa phương tiện là các trang bị tùy chọn.</p>\r\n\r\n<p>Ducati Monster 821 đời 2018 nhập khẩu Thái Lan, giá 400 triệu đồng, tùy chọn ba màu: đỏ, đen nhám và vàng (màu kỷ niệm 25 năm dòng Monster có mặt trên thị trường). Các đối thủ của Monster 821 tại Việt Nam có thể kể đến như Triumph Street Triple R (399 triệu đồng), Kawasaki Z900 RS chưa có giá bán chính thức, dự kiến dưới 400 triệu đồng.</p>\r\n\r\n<p>Thị trường môtô Việt Nam trong 2018 bắt đầu sôi động khi mới đây Honda chính thức gia nhập với các mẫu xe từ 500 phân khối trở lên, giá thấp nhất 172 triệu đồng. Trường Hải tiếp quản BMW Motorrad từ Euro Auto với mức giá mới giảm nhiều nhất gần 200 triệu đồng. Phiên bản rẻ nhất BMW G310 R giá 189 triệu đồng, nhập khẩu Ấn Độ.&nbsp;</p>\r\n\r\n<p>Cho đến nay, hầu như các thương hiệu môtô lớn đã hiện diện tại Việt Nam, thị trường được đánh giá có nhiều tiềm năng nhưng chưa thể bứt phá ngay vì giá xe còn khá cao so với thu nhập người dân, dung lượng người chơi mới tăng trưởng chậm.</p>\r\n\r\n<div>&nbsp;</div>', 1, 'IMG-6722-JPG-9262-1527572171.jpg', 1, 1, 1, 1, NULL, '2018-05-30 08:01:09', '2018-06-01 22:43:58'),
(5, 6, 'Nissan Terra ra mắt Đông Nam Á, sắp về Việt Nam', 'Nissan Terra ra mắt Đông Nam Á, sắp về Việt Nam', 'nissan-terra-ra-mat-dong-nam-a-sap-ve-viet-nam', 'SUV của hãng xe Nhật Bản ra mắt tại Philippines, dự kiến về Việt Nam cuối 2018 hoặc đầu 2019, cạnh tranh với Toyota Fortuner.', 'SUV của hãng xe Nhật Bản ra mắt tại Philippines, dự kiến về Việt Nam cuối 2018 hoặc đầu 2019, cạnh tranh với Toyota Fortuner.', '<p>Sáng 28/5, Nissan châu Á ra mắt SUV Terra mới tại Philippines sau khi giới thiệu tại Trung Quốc hồi tháng giữa tháng 4. Đây là một trong những sản phẩm chủ lực của hãng xe Nhật Bản tại thị trường Đông Nam Á, nơi Toyota Fortuner đang đứng đầu về doanh số trong phân khúc.&nbsp;</p>\r\n\r\n<p>Terra được phát triển từ dòng xe bán tải Navara của Nissan, tương tự cách các đối thủ làm với sản phẩm SUV ở phân khúc này. Chevrolet phát triển Trailblazer từ xe bán tải Colorado, hay Fortuner thiết kế từ khung gầm của dòng xe bán tải Hilux.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Nissan Terra dự kiến về Việt Nam cuối năm nay. Ảnh: Car magazine.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/29/nissan-terra-800x480-2698-1527570797.jpg\" /></p>\r\n\r\n<p>Terra trang bị động cơ dầu 2.5 YD25, công suất cực đại 190 mã lực tại 3.600 vòng/phút và mô-men xoắn cực đại 450 Nm tại 2.000 vòng/phút, hộp số tự động 7 cấp hoặc số sàn 6 cấp. SUV mới của Nissan có khoảng sáng gầm xe 225 mm, phù hợp với những cung đường gồ ghề, mấp mô. So với Navara, Terra được cải tiến ở nhiều bộ phận như hệ thống treo đa điểm, hệ thống khoá vi sai 4WD. Ngoài ra, mẫu SUV của Nissan còn được trang bị các công nghệ như cảnh báo điểm mù, hỗ trợ đổ đèo, khởi hành ngang dốc, camera quan sát quanh thân xe.&nbsp;</p>\r\n\r\n<p>Nissan Việt Nam cho biết hãng này đang lên kế hoạch đưa xe nhập khẩu từ Thái Lan về nước. Thời gian xuất hiện có thể cuối 2018 hoặc chậm sang đầu 2019.</p>\r\n\r\n<p>Phân khúc SUV 7 chỗ tại Việt Nam hiện có sự cạnh tranh và lựa chọn khá đa dạng từ các hãng xe. Chevrolet đưa dòng Trailblazer về phân phối hồi đầu tháng 5, nhằm cạnh trạnh với các đối thủ như Mitsubishi Pajero Sport, Isuzu mu-X hay Hyundai Santa Fe. Trong khi đó, ông vua doanh số phân khúc này là Toyota Fortuner vẫn trong tình trạng khan hàng kể từ đầu năm, do vướng những quy định tại Nghị định 116.&nbsp;</p>', 0, 'nissan-terra-800x480-2698-1527570797.jpg', 1, 1, 1, 1, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"3\";}', '2018-05-30 08:02:13', '2018-05-30 08:25:27'),
(6, 8, 'Xế độc Honda Cross Cub 2018 đầu tiên về Việt Nam giá hơn 100 triệu', 'Xế độc Honda Cross Cub 2018 đầu tiên về Việt Nam giá hơn 100 triệu', 'xe-doc-honda-cross-cub-2018-dau-tien-ve-viet-nam-gia-hon-100-trieu', 'Mẫu xe hai bánh 110 phân khối kiểu dáng off-road xuất hiện tại Hà Nội, thuộc hàng nội địa Nhật Bản.', 'Mẫu xe hai bánh 110 phân khối kiểu dáng off-road xuất hiện tại Hà Nội, thuộc hàng nội địa Nhật Bản.', '<p>Cross Cub thuộc dòng Cub huyền thoại của Honda. Chiếc Cross Cub xuất hiện tại Hà Nội thuộc phiên bản 2018, xe còn gọi là CC110. Cross Cub phát triển cho đô thị, phong cách off-road. Chữ Cross là viết tắt của Crossover.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Honda Cross Cub phiên bản 2018 đầu tiên ở Hà Nội. Ảnh: Lương Dũng.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/27/Cross-Cub-2018-VnE-TOP-2-6932-1527418241.jpg\" /></p>\r\n\r\n<p>CC110 phiên bản 2018 đầu tiên về Việt Nam được nhập khẩu tư nhân. Thiết kế thon gọn, tay lái chữ U rộng và cao, yên đơn bọc giả da thiết kế rộng cho tư thế ngồi lái thoải mái.</p>\r\n\r\n<p>Honda trang bị cho Cross Cub 2018 đèn pha tròn LED, bảng đồng hồ tách biệt, yếm loại bỏ để phô trương động cơ, cặp giảm xóc trước hầm hố, ống xả ốp miếng mạ crôm. Xe dài 1.935 mm, rộng 795 mm, cao 1.090 mm. Chiều dài cơ sở 1.230, khoảng sáng gầm 157 mm, độ cao yên 784 mm, trọng lượng 106 kg.</p>\r\n\r\n<p>Cross Cub CC110 2018 sử dụng động cơ một xi-lanh dung tích 110 phân khối, làm mát bằng gió, phun xăng điện tử, công suất 8 mã lực ở vòng tua máy 7.500 vòng/phút, mô-men xoắn cực đại 8,5 Nm tại 5.500 vòng/phút. Hộp số tròn 4 cấp.</p>\r\n\r\n<p>Chiếc Cub kiểu dáng lạ dùng phanh tang trống cả hai bánh, cặp vành nan hoa 17 inch. Cặp lốp địa hình chung kích thước 80/90 44P.</p>\r\n\r\n<p>Honda Cross Cub 2018 về Việt Nam với 3 màu gồm vàng, đỏ và xanh lá mạ. Hiện đơn vị nhập xe tư nhân không tiết lộ giá cụ thể, nhưng khoảng ngưỡng hơn 100 triệu. Trong khi tại Nhật Bản, Cross Cub 2018 bản CC110 giá 3.100 USD và bản CC50 giá 2.700 USD.</p>\r\n\r\n<p>Lương Dũng</p>', 0, 'Cross-Cub-2018-VnE-TOP-2-6932-1527418241.jpg', 1, 1, 1, 1, NULL, '2018-05-30 08:05:23', '2018-05-30 08:05:23'),
(7, 6, 'Zongshen Sinski 250 - \'bản sao\' Kawasaki Z1000 đến Việt Nam', 'Zongshen Sinski 250 - \'bản sao\' Kawasaki Z1000 đến Việt Nam', 'zongshen-sinski-250-ban-sao-kawasaki-z1000-den-viet-nam', 'Mẫu xe Trung Quốc 250 phân khối với ngoại hình giống chiếc nakedbike Kawasaki Z1000 trưng bày tại một triển lãm ở TP HCM.', 'Mẫu xe Trung Quốc 250 phân khối với ngoại hình giống chiếc nakedbike Kawasaki Z1000 trưng bày tại một triển lãm ở TP HCM.', '<p>Chiếc môtô Sinski mang mã XSJ250-E có ngoại hình tương tự như chiếc xe phân khối lớn Kawasaki Z1000 của hãng xe Nhật Bản. Thiết kế đầu đèn, bình xăng, yên xe hay cụm đồng hồ khá giống với các chi tiết trên chiếc xe 1.000 phân khối của Kawasaki.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Chiếc Zongshen Sinski XSJ250-E tại triển lãm Saigon Autotech 2018 đang diễn ra tại TP HCM.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/sinski-7839-1527162238.jpg\" /></p>\r\n\r\n<p>Sinski là thương hiệu xe máy Trung Quốc, sử dụng động cơ do Zongshen sản xuất. Chiếc XSJ250-E có kích thước dài 2.030 mm, rộng 810 mm, cao 1.100 mm. Xe sử dụng động cơ xăng 4 thì làm mát bằng gió dung tích 250 phân khối, tốc độ tối đa 120 km/h. mức tiêu thụ nhiên liệu theo công bố của nhà sản xuất là 2 lít/100 km.</p>\r\n\r\n<p>Đèn pha thiết kế kiểu &quot;mắt híp&quot; tương tự như Z1000, bảng đồng hồ trung tâm dạng LCD, với vị trí thể hiện vòng tua máy, kiểu dáng giống chiếc xe Nhật Bản. Ngoài ra, thiết kế cụm đèn hậu, yên xe, bình xăng... cũng tương tự như chiếc xe Kawasaki.&nbsp;</p>\r\n\r\n<p>Mẫu xe Sinski XSJ250-E được một doanh nghiệp đưa về Việt Nam, tham gia triển lãm tại Sài Gòn. Mức giá và thời điểm bán chưa tiết lộ.</p>', 0, 'sinski-7839-1527162238.jpg', 1, 1, 1, 1, NULL, '2018-05-30 08:12:35', '2018-06-01 09:19:33'),
(8, 8, 'Vespa GTS 125 bản đặc biệt giá 94 triệu', 'Vespa GTS 125 bản đặc biệt giá 94 triệu', 'vespa-gts-125-ban-dac-biet-gia-94-trieu', 'Phiên bản đặc biệt của mẫu scooter nâng cấp màu sơn cùng tem xe, những yếu tố kỹ thuật khác không đổi.', 'Phiên bản đặc biệt của mẫu scooter nâng cấp màu sơn cùng tem xe, những yếu tố kỹ thuật khác không đổi.', '<p>Từ tháng 6/2018, Piaggio Việt Nam bán ra Vespa GTS Super Sport iGet 125 mới. Phiên bản đặc biệt thiết kế tem thể thao chạy dọc thân xe, vành đen trang trí tem chữ S đỏ. Yếm viền đỏ, yên bọc da cao cấp hai tông màu kết hợp với chỉ khâu nổi, giảm xóc trước mới.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"box-sizing:border-box; font-family:arial; font-size:14px; margin:10px auto; max-width:100%; padding:0px; text-rendering:geometricPrecision; width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vespa GTS iGet 2018 thêm lựa chọn\" src=\"https://i-vnexpress.vnecdn.net/2018/05/27/GTS-Super-Sport-TOP-9007-1527369173.jpg\" style=\"border:0px; box-sizing:border-box; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-rendering:geometricPrecision\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Vespa GTS Super 2018.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>GTS Super Sport iGet 125 trang bị động cơ một xi-lanh dung tích 125 phân khối, làm mát bằng dung dịch, phun xăng điện tử. Xe bán ra với 3 màu xám, đỏ, vàng. Giá 93,9 triệu đồng.</p>\r\n\r\n<p>Ngoài phiên bản đặc biệt của bản 125, Piaggio bổ sung bản động cơ iGet 150 phân khối. Xe bán ra với giá 115 triệu đồng, kèm 5 màu lựa chọn gồm xanh lá, xanh da trời, đen, đỏ, trắng.</p>\r\n\r\n<p>Vespa GTS Super 150 iGet trang bị động cơ một xi-lanh dung tích 150 phân khối, làm mát bằng dung dịch, phun xăng điện tử, công suất 14,4 mã lực tại vòng tua máy 8.250 vòng/phút, mô-men xoắn cực đại 13,5 Nm tại 6.750 vòng/phút.</p>\r\n\r\n<p>GTS Super 150 iGet dài 1.950 mm, rộng 740 mm, cao 1.350 mm. Trọng lượng 140 kg, bình xăng dung tích 7 lít. Xe sử dụng phanh đĩa cả hai bánh, kích thước 220 mm. Cặp vành đúc 12 inch, kết hợp với lốp không săm, lốp trước 120/70 và lốp sau 130/70.</p>\r\n\r\n<p>Tại Việt Nam, Vespa GTS cạnh tranh với đối thủ Honda SH, tuy doanh số không thể so với mẫu xe Nhật.&nbsp;</p>', 0, 'GTS-Super-Sport-TOP-9007-1527369173.jpg', 1, 1, 1, 1, 'a:5:{i:0;s:1:\"4\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"5\";i:4;s:1:\"6\";}', '2018-05-30 08:13:50', '2018-05-30 08:25:42'),
(9, 7, 'Xe điện ZS800TD - bản sao Honda Cub xuất hiện tại Việt Nam', 'Xe điện ZS800TD - bản sao Honda Cub xuất hiện tại Việt Nam', 'xe-dien-zs800td-ban-sao-honda-cub-xuat-hien-tai-viet-nam', 'Mẫu xe điện Trung Quốc thiết kế tương tự Honda EV-Cub, có tốc độ tối đa 50 km/h và đi được 70 km sau mỗi lần sạc đầy.', 'Mẫu xe điện Trung Quốc thiết kế tương tự Honda EV-Cub, có tốc độ tối đa 50 km/h và đi được 70 km sau mỗi lần sạc đầy.', '<p>Chiếc xe điện Trung Quốc trưng bày tại triển lãm công nghiệp phụ trợ Saigon Autotech 2018 đang diễn ra có ngoại hình giống hệt mẫu thiết kế xe điện Honda EV-Cub của hãng xe Nhật Bản. ZS800TD có kích thước dài 1.888 mm, rộng 682 mm và cao 1.230 mm. Chiều dài trục cơ sở 1.235 mm và chiều cao yên xe tính từ mặt đất ở mức 755 mm.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Mẫu xe điện Trung Quốc ZS800TD tại TP HCM.\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/IMG-29711-3598-1527153628.jpg\" /></p>\r\n\r\n<p><br />\r\nPhiên bản xe điện ZS800TD giống với chiếc Honda EV-Cub, mẫu thiết kế xe Cub chạy điện của hãng xe Honda.&nbsp;Phiên bản EV-Cub có hai động cơ lắp ở từng trục bánh trước và sau, khối pin đặt ở giữa khung. Vì không còn động cơ xăng nên không gian để chân của người lái rộng rãi.Xe sử dụng mô-tơ điện72V công suất 800 W, bình ắc-quy axit. Phanh trước và sau đều là loại phanh tang trống (phanh đùm). Bánh trước kích thước 70/90-R17, bánh sau cỡ 80/90-R17.</p>\r\n\r\n<p>Ra đời từ 1958, Honda Cub trở thành biểu tượng, huyền thoại xe hai bánh trên toàn thế giới, phù hợp với hầu hết các thị trường. Cũng bởi vậy, nhiều mẫu xe xuất xứ Trung Quốc, Đài Loan nhái thiết kế để dễ tiếp cận khách hàng.</p>\r\n\r\n<div>&nbsp;</div>', 0, 'IMG-29711-3598-1527153628.jpg', 1, 1, 1, 1, 'a:4:{i:0;s:1:\"2\";i:1;s:1:\"5\";i:2;s:1:\"8\";i:3;s:1:\"7\";}', '2018-05-30 08:15:09', '2018-05-30 08:46:28'),
(10, 4, 'Kymco AK550 độ phong cách Nhật Bản', 'Kymco AK550 độ phong cách Nhật Bản', 'kymco-ak550-do-phong-cach-nhat-ban', 'Mẫu xe ga 550 phân khối tinh chỉnh lại dàn áo, lắp thêm nhiều đồ chơi và phụ kiện thể thao.', 'Mẫu xe ga 550 phân khối tinh chỉnh lại dàn áo, lắp thêm nhiều đồ chơi và phụ kiện thể thao.', '<p>&nbsp;</p>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_0\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-1-1527148858_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Wu Jianhong, một tay chơi người Đài Loan trang trí cho chiếc Kymco AK550 của mình theo phong cách thể thao và độc đáo.</p>\r\n\r\n<p>Kymco AK550 là mẫu xe ga cỡ lớn mới ra mắt tại Đài Loan, cạnh tranh với đối thủ Yamaha TMax. Tại Việt Nam, Kymco AK550 có giá 375 triệu đồng.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_1\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-1-1-1527148858_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Chiếc xe ga 550 phân khối dán decal theo phong cách tranh nghệ thuật ukiyo-e của Nhật Bản. Tay dắt và cặp vành sơn màu cam.</p>\r\n\r\n<p>AK550 trang bị động cơ xi-lanh đôi DOHC dung tích 550 phân khối, làm mát bằng dung dịch, công suất 52,7 mã lực, mô-men xoắn cực đại 55,6 Nm. Truyền động bằng dây đai.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_2\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-2-1527148858_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Kính chắn gió dán decal đen mờ, trong khi nguyên bản trong suốt.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_3\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-3-1527148859_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Hai bên yếm dán hình thiếu nữ, đặc trưng của tranh ukiyo-e.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_4\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-4-1527148859_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Hai bên hông sau dán hình họa tiết.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_5\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-5-1527148860_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Cặp vành sơn cam, tay chơi trang trí thêm ốc titan bảy màu.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_6\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-6-1527148860_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Bản độ lắp ống xả thể thao Akrapovic.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_7\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-7-1527148861_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Giảm xóc X2 thay cho giảm xóc sau nguyên bản.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_8\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-10-1527148863_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Bánh sau lắp thêm chắn bùn carbon.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_9\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-12-1527148864_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Tay lái bắt thêm thanh rằng và móc treo đồ.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"item_slide_show clearfix\" style=\"margin: 0px auto 10px; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; max-width: 100%; overflow: hidden; font-family: arial; font-size: 14px;\">\r\n<div class=\"block_thumb_slide_show\" style=\"margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: geometricPrecision; width: 680px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0; overflow: hidden;\"><img alt=\"Kymco AK550 độ phong cách Nhật Bản\" class=\"displayAfterResize displayAfterResize\" id=\"vne_slide_image_10\" src=\"https://i-vnexpress.vnecdn.net/2018/05/24/Kymco-AK550-Do-13-1527148864_680x0.jpg\" style=\"border:0px; box-sizing:border-box; cursor:url(\" /></div>\r\n\r\n<div class=\"desc_cation\" style=\"margin: 0px; padding: 10px 10px 0px; box-sizing: border-box; text-rendering: geometricPrecision; background: rgb(245, 245, 245); clear: both; width: 680px; float: left;\">\r\n<p>Đầu xe gắn camera hành trình.</p>\r\n</div>\r\n</div>', 0, 'Kymco-AK550-Do-1-1-1527148858_680x0.jpg', 1, 1, 1, 1, 'a:2:{i:0;s:1:\"8\";i:1;s:1:\"9\";}', '2018-05-30 08:16:21', '2018-05-30 08:26:49'),
(11, 4, 'GPX Demon 150GR giá 63 triệu - tham vọng xe máy Thái Lan tại Việt Nam', 'GPX Demon 150GR giá 63 triệu - tham vọng xe máy Thái Lan tại Việt Nam', 'gpx-demon-150gr-gia-63-trieu-tham-vong-xe-may-thai-lan-tai-viet-nam', 'Demon 150GR cùng nhiều mẫu GPX khác đánh dấu việc thâm nhập thị trường xe máy Việt Nam của hãng xe xứ chùa vàng.', 'Demon 150GR cùng nhiều mẫu GPX khác đánh dấu việc thâm nhập thị trường xe máy Việt Nam của hãng xe xứ chùa vàng.', '<p>Hãng xe Thái Lan GPX chính thức gia nhập thị trường Việt Nam bằng việc khai trương cửa hàng đầu tiên tại Quận Bình Thạnh, TP. HCM hôm 20/5. Trong số các sản phẩm, mẫu xe kiểu dáng sportbike GPX Demon 150GR giá 63 triệu đồng cho bản tiêu chuẩn, 64 triệu đồng bản thể thao (SE). Hai bản chỉ khác biệt về màu sơn, bản thể thao có khung sườn sơn đỏ và mâm sơn vàng đồng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"GPX Demon 150GR giá 63-64 triệu đồng tại Việt Nam.&nbsp;\" src=\"https://i-vnexpress.vnecdn.net/2018/05/21/IMG-6398-JPG-4980-1526894395.jpg\" /></p>\r\n\r\n<p>Mẫu xe Thái Lan&nbsp;khởi động điện, màn hình tốc độ LCD, đèn chiếu sáng công nghệ LED. Phuộc trước loại hành trình ngược (Upside Down), giảm xóc trụ đơn phía sau. Phanh đĩa đơn cho cả hai bánh, kích thước bánh trước 120/70, bánh sau 140/70, chung vành 14 inch.&nbsp;</p>\r\n\r\n<p>Demon 150GR trang bị động cơ xi-lanh đơn, dung tích thực 149 phân khối. Nhà sản xuất chưa thông tin mức công suất và mô-men xoắn của động cơ. Hộp số 6 cấp. Tốc độ tối đa hơn 125 km/h.&nbsp;</p>\r\n\r\n<p>GPX bắt đầu mảng kinh doanh tại Việt Nam với nhiều sản phẩm thuộc các phân khúc 125, 150 và 200 phân khối. Trong bối cảnh thị trường xe máy đang có những bước chuyển dịch từ xe số, xe ga phổ thông lên môtô, GPX hướng đến đối tượng khách hàng trẻ mong muốn một sản phẩm kiểu dáng thể thao, cá tính nhưng mức giá không quá cao.&nbsp;Honda vừa khai trương cửa hàng môtô nhưng chỉ bán xe từ 500 phân khối trở lên, giá thấp nhất 172 triệu đồng. Giá rẻ nhất dòng sportbike của Yamaha có R15 (93 triệu đồng), Suzuki có GSX-R150 giá 75 triệu đồng.&nbsp;</p>\r\n\r\n<p>Thua kém về sức mạnh thương hiệu và các trang bị đi kèm, GPX tận dụng lợi thế mức giá cạnh tranh để tiếp cận khách hàng. Tuy vậy, hãng xe Thái khá thận trọng khi nói về kỳ vọng doanh số bởi vừa chân ướt chân ráo đến Việt Nam.</p>\r\n\r\n<p>&quot;Muốn hiện diện lâu dài tại Việt Nam, chúng tôi chọn hướng đi ngách bằng việc giới thiệu ra thị trường những mẫu xe có kiểu dáng môtô kèm mức giá rẻ&quot;, ông Apichart Naknouvatim, giám đốc đối ngoại GPX Thái Lan nói với&nbsp;VnExpress. &quot;Mục tiêu của GPX trong ba năm tiếp theo là chiếm khoảng 0,5% doanh số toàn thị trường&quot;.</p>\r\n\r\n<p>GPX thành lập vào 2007, sản phẩm đầu tiên có mặt trên thị trường vào 2009. Trong 2017, thị phần GPX tại Thái Lan xếp thứ ba sau Honda và Yamaha.&nbsp;Theo đại diện GPX Thái Lan, mức nội địa hóa linh kiện đối với các sản phẩm của hãng trung bình khoảng 45-50%. Trong 2018, thêm một nhà máy đi vào hoạt động với quy mô lớn hơn kỳ vọng đẩy mức nội địa hóa lên 50-60%.</p>\r\n\r\n<p>Tại Thái Lan, GPX không sản xuất các dòng xe số phổ thông mà chọn hướng phát triển các sản phẩm kiểu dáng thể thao, cổ điển thuộc phân khúc động cơ 125-200 phân khối. Những mẫu xe như Demon X thiết kế khá tương đồng với Honda MSX, hay Razer 220, CR5 EFI gợi liên tưởng đến dòng nakedbike của Yamaha, Honda.&nbsp;Ngoài ra, dòng xe kiểu dáng cổ điển với Legend, Gentleman bóng dáng sản phẩm của Brixton.</p>', 1, 'IMG-6398-JPG-4980-1526894395.jpg', 1, 1, 1, 1, 'a:4:{i:0;s:1:\"4\";i:1;s:2:\"10\";i:2;s:1:\"3\";i:3;s:1:\"9\";}', '2018-05-30 08:18:26', '2018-06-01 22:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

CREATE TABLE `news_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_tags`
--

INSERT INTO `news_tags` (`id`, `news_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(29, 3, 5, '2018-05-30 08:25:11', '2018-05-30 08:25:11'),
(30, 3, 6, '2018-05-30 08:25:11', '2018-05-30 08:25:11'),
(31, 5, 6, '2018-05-30 08:25:27', '2018-05-30 08:25:27'),
(32, 5, 7, '2018-05-30 08:25:27', '2018-05-30 08:25:27'),
(33, 8, 6, '2018-05-30 08:25:42', '2018-05-30 08:25:42'),
(34, 8, 7, '2018-05-30 08:25:42', '2018-05-30 08:25:42'),
(39, 10, 4, '2018-05-30 08:26:49', '2018-05-30 08:26:49'),
(40, 10, 5, '2018-05-30 08:26:49', '2018-05-30 08:26:49'),
(41, 10, 6, '2018-05-30 08:26:49', '2018-05-30 08:26:49'),
(42, 10, 7, '2018-05-30 08:26:49', '2018-05-30 08:26:49'),
(58, 9, 4, '2018-05-30 08:46:28', '2018-05-30 08:46:28'),
(59, 9, 5, '2018-05-30 08:46:28', '2018-05-30 08:46:28'),
(60, 9, 6, '2018-05-30 08:46:28', '2018-05-30 08:46:28'),
(63, 2, 4, '2018-06-01 07:52:39', '2018-06-01 07:52:39'),
(64, 2, 5, '2018-06-01 07:52:39', '2018-06-01 07:52:39'),
(65, 7, 4, '2018-06-01 09:19:33', '2018-06-01 09:19:33'),
(66, 7, 5, '2018-06-01 09:19:33', '2018-06-01 09:19:33'),
(67, 4, 6, '2018-06-01 22:43:58', '2018-06-01 22:43:58'),
(68, 11, 6, '2018-06-01 22:44:19', '2018-06-01 22:44:19'),
(69, 11, 7, '2018-06-01 22:44:19', '2018-06-01 22:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `news_users`
--

CREATE TABLE `news_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `Cate_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(1) DEFAULT '0',
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prices` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `hot` tinyint(1) DEFAULT '0',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `view` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Cate_id`, `title`, `metaTitle`, `alias`, `summary`, `description`, `content`, `feature`, `images`, `prices`, `discount`, `new`, `hot`, `sort`, `view`, `active`, `created_at`, `updated_at`) VALUES
(1, 6, 'JDS – phuộc đua có bình dầu cao cấp đài loan', 'JDS – phuộc đua có bình dầu cao cấp đài loan', 'jds-phuoc-dua-co-binh-dau-cao-cap-dai-loan', 'JDS – PHUỘC ĐUA CÓ BÌNH DẦU CAO CẤP ĐÀI LOAN', 'JDS – PHUỘC ĐUA CÓ BÌNH DẦU CAO CẤP ĐÀI LOAN', '<p>&diams; Công dụng:&nbsp;Thay thế phuộc ZIN<br />\r\n&diams; Thông số:<br />\r\n&bull; Áp dụng cho xe: Exc 150<br />\r\n&bull; Chiều cao phuộc: 208mm cho Ex 150<br />\r\n&bull; Tầm hoạt động: 30mm cho Exc 150<br />\r\n&bull; Điều chỉnh Rebound: 39 nấc / Bình dầu 16 nấc.<br />\r\nLò xo vàng: trọng tải 1.8kg/mm (Phuộc bình dầu).<br />\r\nLò xo xanh: 2.1kg/mm (Phuộc bình dầu).<br />\r\nMàu sắc thân phuộc: Đen<br />\r\n+ Cân nặng:<br />\r\n&ndash; 1.70 cho Phuộc bình dầu (siêu nhẹ)&nbsp;+ Cân nặng:<br />\r\n&ndash; 1.25kg cho Phuộc thường (siêu nhẹ)<br />\r\n&diams; Ưu điểm:&nbsp;Phuộc đua JDS RACING (100% SX TẠI ĐÀI LOAN) do SCK Malaysia phân phối. Với ưu điểm trọng lượng nhẹ, dàn hơi cực chuẩn, đáp ứng nhanh khả năng giảm chấn ở mọi thể loại đường chạy.<br />\r\nĐặc biệt khả năng tự tháo lắp thay thế lò xo bằng thao tác đơn giản, giúp bạn dễ dàng cân chỉnh hiệu quả làm việc của phuộc theo cân nặng.<br />\r\n&diams; Áp dụng cho:&nbsp;Yamaha Exciter 150<br />\r\n&diams;&nbsp;Trọn bộ bao gồm:&nbsp;Phuộc / Lò xo rời</p>', 0, 'Phuoc-JDS-BD-1M-600x600.jpg', 5500000, 0, 0, 1, 1, 1, 1, '2018-06-04 08:31:33', '2018-06-04 08:31:33'),
(2, 6, 'Phuộc RPM monoshock dòng phổ thông cho Exciter 135', 'Phuộc RPM monoshock dòng phổ thông cho Exciter 135', 'phuoc-rpm-monoshock-dong-pho-thong-cho-exciter-135', 'Phuộc RPM monoshock dòng phổ thông cho Exciter 135, Phuộc RPM monoshock dòng phổ thông cho Exciter 135', 'Phuộc RPM monoshock dòng phổ thông cho Exciter 135, Phuộc RPM monoshock dòng phổ thông cho Exciter 135', '<p>&nbsp;Công dụng:&nbsp;Thay thế phuộc ZIN<br />\r\n&diams; Thông số:<br />\r\n+ Chiều dài phuộc: 200 mm<br />\r\n+ Rebound: 32 nấc<br />\r\n+ Màu sắc: Vàng / Đỏ<br />\r\n&diams; Ưu điểm:&nbsp;Phuộc RPM có tác dụng chống shock, chống sàn cực tốt, thiết kế cực đẹp và cứng cáp, bền bỉ theo thời gian. Chức năng Rebound cho phép tinh chỉnh khả năng hồi nhanh hoặc chậm, tùy vào nhu cầu sử dụng.<br />\r\n&diams; Áp dụng cho: Yamaha Exciter 135 / 150<br />\r\n&diams;&nbsp;Trọn bộ bao gồm:&nbsp;Phuộc / Cần tăng lò xo.<br />\r\n&diams;&nbsp;Chế độ bảo hành:&nbsp;3 tháng sửa chữa.</p>', 0, 'Phuoc-RPM-Exc-3-M-600x600.jpg', 3850000, 0, 0, 0, 1, 1, 1, '2018-06-04 08:33:57', '2018-06-04 08:33:57'),
(3, 7, 'Mobin Sườn MC Racing Cho Xe Phun Xăng Fi', 'Mobin Sườn MC Racing Cho Xe Phun Xăng Fi', 'mobin-suon-mc-racing-cho-xe-phun-xang-fi', 'Mobin Sườn MC Racing Cho Xe Phun Xăng Fi', 'Mobin Sườn MC Racing Cho Xe Phun Xăng Fi', '<p>&diams; Công dụng:&nbsp;Mobin sườn đánh lửa<br />\r\n&diams; Ưu điểm:&nbsp;Tăng khả năng đánh lửa, hổ trợ đốt sạch nhiên liệu, tiết kiệm nhiên liệu. Giúp xe vọt hơn, máy lanh hơn.<br />\r\n&diams; Áp dụng cho:&nbsp;Các loại xe phun xăng điện tử.</p>', 0, 'Mobin-MC-FI-M-600x600.jpg', 300000, 0, 0, 0, 1, 1, 1, '2018-06-04 08:36:13', '2018-06-04 08:36:13'),
(4, 7, 'Mobin Sườn MSD – 8207 Chuyên Cho Dòng Xe Fi', 'Mobin Sườn MSD – 8207 Chuyên Cho Dòng Xe Fi', 'mobin-suon-msd-8207-chuyen-cho-dong-xe-fi', 'Mobin Sườn MSD – 8207 Chuyên Cho Dòng Xe Fi', 'Mobin Sườn MSD – 8207 Chuyên Cho Dòng Xe Fi', '<p>&diams; Công dụng: Thay thế mobin sườn ZIN<br />\r\n&diams; Thông số:<br />\r\n+ Cảm biến điện: 6.9 mH<br />\r\n+ Dòng tải cao nhất: 300 mA<br />\r\n+ Điện trở chính: 0.355 OHMs<br />\r\n+ Điện trở phụ: 4.4K OHMs<br />\r\n+ Dòng điện ra mạnh nhất: 35.000 Volte<br />\r\n&diams; Ưu điểm: Dòng điện cực mạnh, điện trở thấp, giúp nhạy xe lanh máy, tăng khả năng đốt hết nhiên liệu.<br />\r\n&diams; Áp dụng cho: Các dòng xe FI<br />\r\n&diams; Lưu ý: Mobin chỉ áp dụng cho các dòng ECU độ có công suất lớn, chịu tải cao. Mọi lý do hư hỏng ECU do lắp đặt không đúng cách đều không có trách nhiệm bồi thường.<br />\r\n&diams; Trọn bộ bao gồm: Mobin MSD + Dây tăng áp MSD</p>', 0, 'Mobin-MSD-Fi-M-600x600.jpg', 2600000, 0, 0, 1, 1, 1, 1, '2018-06-04 08:37:34', '2018-06-04 08:37:34'),
(5, 8, 'Đĩa tải nhôm CNC 7075-t651 cho Winner 150 / Sonic 150', 'Đĩa tải nhôm CNC 7075-t651 cho Winner 150 / Sonic 150', 'dia-tai-nhom-cnc-7075-t651-cho-winner-150-sonic-150', 'Đĩa tải nhôm CNC 7075-t651 cho Winner 150 / Sonic 150', 'Đĩa tải nhôm CNC 7075-t651 cho Winner 150 / Sonic 150', '<p>Đĩa tải nhôm 7075/T651 đúng chất cho Honda Winner / Sonic 150 (42 &ndash; 43 &ndash; 44 &ndash; 45). Thiết kế mới lạ, độc đáo và đầy phá cách. Đặc biệt trọng lượng siêu nhẹ chỉ 434gr cho cả bộ đĩa, giúp giảm tải đáng kể cho xe bạn.<br />\r\n+ Màu sắc vô cùng phong phú, phối màu theo ý thích.<br />\r\n+ Dễ dàng vệ sinh và tháo ráp.<br />\r\n+ Bền bỉ theo thời gian (30.000 ~ 50.000 km tùy điều kiện sử dụng)<br />\r\n+ Lòng đĩa có thể tái sử dụng để tiết kiệm chi phí<br />\r\n+ Gia công 100% CNC, chính xác tuyệt đối, châu chuốt cực kỹ, nhìn là thích ngay.<br />\r\n+ Màu sắc: Có hơn 30 màu sắc cho các bạn phối trộn<br />\r\n+Lưu ý: Các bạn cẩn thận, xem kỹ mặt hàng chính phẩm do P1 phát triển và phân phối, tránh mua nhầm hàng giả, kém chất lượng nhé.</p>', 0, 'Den-Vang-Xanh-M-600x600.jpg', 1200000, 0, 0, 0, 1, 1, 1, '2018-06-04 08:38:59', '2018-06-04 08:38:59'),
(7, 8, 'Đĩa tải nhôm CNC 7075-T651 cho Winner 150 / Sonic 150 đen', 'Đĩa tải nhôm CNC 7075-T651 cho Winner 150 / Sonic 150', 'dia-tai-nhom-cnc-7075-t651-cho-winner-150-sonic-150-den', 'Đĩa tải nhôm CNC 7075-T651 cho Winner 150 / Sonic 150', 'Đĩa tải nhôm CNC 7075-T651 cho Winner 150 / Sonic 150', '<p>Đĩa tải nhôm 7075/T651 đúng chất cho Honda Winner / Sonic 150 (42 &ndash; 43 &ndash; 44 &ndash; 45). Thiết kế mới lạ, độc đáo và đầy phá cách. Đặc biệt trọng lượng siêu nhẹ chỉ 434gr cho cả bộ đĩa, giúp giảm tải đáng kể cho xe bạn.<br />\r\n+ Màu sắc vô cùng phong phú, phối màu theo ý thích.<br />\r\n+ Dễ dàng vệ sinh và tháo ráp.<br />\r\n+ Bền bỉ theo thời gian (30.000 ~ 50.000 km tùy điều kiện sử dụng)<br />\r\n+ Lòng đĩa có thể tái sử dụng để tiết kiệm chi phí<br />\r\n+ Gia công 100% CNC, chính xác tuyệt đối, châu chuốt cực kỹ, nhìn là thích ngay.<br />\r\n+ Màu sắc: Có hơn 30 màu để các bạn phối trộn.<br />\r\n+ Lưu ý:&nbsp;Các bạn cẩn thận, xem kỹ mặt hàng chính phẩm do P1 phát triển và phân phối, tránh mua nhầm hàng giả, kém chất lượng nhé.</p>', 0, 'Den-Den-Do-M-600x600.jpg', 1200000, 0, 0, 1, 1, 1, 1, '2018-06-04 08:43:21', '2018-06-04 08:43:21'),
(8, 9, 'Koso – bơm nhớt độ cho Honda Winner / Sonic 150', 'Koso – bơm nhớt độ cho Honda Winner / Sonic 150', 'koso-bom-nhot-do-cho-honda-winner-sonic-150', 'Koso – bơm nhớt độ cho Honda Winner / Sonic 150', 'Koso – bơm nhớt độ cho Honda Winner / Sonic 150', '<p>&diams; Công dụng: Thay thế bơm nhớt ZIN<br />\r\n&diams; Ưu điểm: Tăng thêm 40% lượng nhớt cũng như thời gian bơm nhớt lên bôi trơn đầu quilat. Giúp bôi trơn ngay lặp tức cho bộ phận Cam / Cò / Xupap và Dên, hạn chế tình trạng mòn cam, hư cò và lột dên.<br />\r\n&diams; Áp dụng cho: Honda Winner / Sonic 150<br />\r\n&diams; Trọn bộ bao gồm: Bơm nhớt</p>', 0, 'Bom-nhot-Koso-Win-M-600x600.jpg', 1000000, 0, 0, 1, 1, 1, 1, '2018-06-04 08:51:06', '2018-06-04 08:51:06'),
(9, 9, 'Cùm tay thắng Brembo 19 RCS Corsa Costa (Chính Hãng)', 'Cùm tay thắng Brembo 19 RCS Corsa Costa (Chính Hãng)', 'cum-tay-thang-brembo-19-rcs-corsa-costa-chinh-hang-', 'Cùm tay thắng Brembo 19 RCS Corsa Costa (Chính Hãng)', 'Cùm tay thắng Brembo 19 RCS Corsa Costa (Chính Hãng)', '<p>&diams; Công dụng: Thay thế cùm tay zin<br />\r\n&diams; Ưu điểm: 3 chế độ phanh: Sport / Rain / Normal. Thích hợp công nghệ nén dầu tiên tiến nhất hiện nay, giúp phanh mượt mà, độ an toàn cao. Cho phép điều chỉnh độ nặng pen dầu tùy theo yêu cầu của từng người. Thiết kế cực đẹp, hầm hố và sắc sảo.<br />\r\n&diams; Áp dụng cho: Các loại xe máy.<br />\r\n&diams; Trọn bộ bao gồm: Cùm tay phanh / Vít dẹp / Sách hướng dẫn.</p>', 0, 'Tay-Brembo-19RSC-Corsa-Costa-1M-600x600.jpg', 8600000, 0, 0, 1, 1, 1, 1, '2018-06-04 08:52:44', '2018-06-04 08:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `portray` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `htmlCoder` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `alias`, `metaTitle`, `created_at`, `updated_at`) VALUES
(4, 'Xe Exciter 150', 'xe-exciter-150', 'Exciter 150', '2018-05-30 07:53:07', '2018-05-30 07:53:07'),
(5, 'Xe Winner 150', 'xe-winner-150', 'Winner 150', '2018-05-30 07:53:19', '2018-05-30 07:53:19'),
(6, 'Xe Exciter 135 5 số', 'xe-exciter-135-5-so', 'Exciter 135 5 số', '2018-05-30 07:53:46', '2018-05-30 07:53:46'),
(7, 'Xe Exciter 135 4 số', 'xe-exciter-135-4-so', 'Exciter 135 4 số', '2018-05-30 07:54:04', '2018-05-30 07:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lvl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `lvl`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'conmeo', 'conmeo@gaumeo.com', '0123456789', '$2y$12$E.5pUNZS2hYypk6nrVk3Fuc/y1O3jVdynEw6Cc.So3a5w.nJZDCcC', '1', 'G3ZdaAPkDGcQWM7kNhkSmS2gW4YcgoLNIRcNOxka', NULL, '2018-05-11 07:36:04'),
(2, 'superbar', 'superbar@gmail.com', '123456789', '$2y$10$HSYbkJpu0zulihbj457V.ujLmN9NvAv/h30gDsf1r0H2TnvsynyrK', '1', 'Bdllmu4gyTGl9CRwXDrd3WXvyPnXIoorLZ4um7ss', '2018-05-16 07:32:02', '2018-05-16 07:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `cate_prods`
--
ALTER TABLE `cate_prods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cate_prods_name_unique` (`name`);

--
-- Indexes for table `child_cates`
--
ALTER TABLE `child_cates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_cates_cateparen_id_foreign` (`cateParen_id`);

--
-- Indexes for table `child_prods`
--
ALTER TABLE `child_prods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_prods_cateparen_id_foreign` (`cateParen_id`);

--
-- Indexes for table `images_prods`
--
ALTER TABLE `images_prods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_prods_prod_id_foreign` (`Prod_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_title_unique` (`title`),
  ADD KEY `news_cate_id_foreign` (`Cate_id`);

--
-- Indexes for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_tags_news_id_foreign` (`news_id`),
  ADD KEY `news_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `news_users`
--
ALTER TABLE `news_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_users_user_id_foreign` (`user_id`),
  ADD KEY `news_users_news_id_foreign` (`news_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_cate_id_foreign` (`Cate_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cate_prods`
--
ALTER TABLE `cate_prods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `child_cates`
--
ALTER TABLE `child_cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `child_prods`
--
ALTER TABLE `child_prods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images_prods`
--
ALTER TABLE `images_prods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `news_users`
--
ALTER TABLE `news_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_cates`
--
ALTER TABLE `child_cates`
  ADD CONSTRAINT `child_cates_cateparen_id_foreign` FOREIGN KEY (`cateParen_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `child_prods`
--
ALTER TABLE `child_prods`
  ADD CONSTRAINT `child_prods_cateparen_id_foreign` FOREIGN KEY (`cateParen_id`) REFERENCES `cate_prods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images_prods`
--
ALTER TABLE `images_prods`
  ADD CONSTRAINT `images_prods_prod_id_foreign` FOREIGN KEY (`Prod_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_cate_id_foreign` FOREIGN KEY (`Cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD CONSTRAINT `news_tags_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_users`
--
ALTER TABLE `news_users`
  ADD CONSTRAINT `news_users_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`Cate_id`) REFERENCES `cate_prods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
