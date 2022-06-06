-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2022 at 10:20 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `country_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_code`, `country_name`) VALUES
(1, 'AFG', 'Afghanistan'),
(2, 'ALA', 'Åland'),
(3, 'ALB', 'Albania'),
(4, 'DZA', 'Algeria'),
(5, 'ASM', 'American Samoa'),
(6, 'AND', 'Andorra'),
(7, 'AGO', 'Angola'),
(8, 'AIA', 'Anguilla'),
(9, 'ATA', 'Antarctica'),
(10, 'ATG', 'Antigua and Barbuda'),
(11, 'ARG', 'Argentina'),
(12, 'ARM', 'Armenia'),
(13, 'ABW', 'Aruba'),
(14, 'AUS', 'Australia'),
(15, 'AUT', 'Austria'),
(16, 'AZE', 'Azerbaijan'),
(17, 'BHS', 'Bahamas'),
(18, 'BHR', 'Bahrain'),
(19, 'BGD', 'Bangladesh'),
(20, 'BRB', 'Barbados'),
(21, 'BLR', 'Belarus'),
(22, 'BEL', 'Belgium'),
(23, 'BLZ', 'Belize'),
(24, 'BEN', 'Benin'),
(25, 'BMU', 'Bermuda'),
(26, 'BTN', 'Bhutan'),
(27, 'BOL', 'Bolivia'),
(28, 'BES', 'Bonaire'),
(29, 'BIH', 'Bosnia and Herzegovi'),
(30, 'BWA', 'Botswana'),
(31, 'BVT', 'Bouvet Island'),
(32, 'BRA', 'Brazil'),
(33, 'IOT', 'British Indian Ocean'),
(34, 'VGB', 'British Virgin Islan'),
(35, 'BRN', 'Brunei'),
(36, 'BGR', 'Bulgaria'),
(37, 'BFA', 'Burkina Faso'),
(38, 'BDI', 'Burundi'),
(39, 'KHM', 'Cambodia'),
(40, 'CMR', 'Cameroon'),
(41, 'CAN', 'Canada'),
(42, 'CPV', 'Cape Verde'),
(43, 'CYM', 'Cayman Islands'),
(44, 'CAF', 'Central African Repu'),
(45, 'TCD', 'Chad'),
(46, 'CHL', 'Chile'),
(47, 'CHN', 'China'),
(48, 'CXR', 'Christmas Island'),
(49, 'CCK', 'Cocos [Keeling] Isla'),
(50, 'COL', 'Colombia'),
(51, 'COM', 'Comoros'),
(52, 'COK', 'Cook Islands'),
(53, 'CRI', 'Costa Rica'),
(54, 'HRV', 'Croatia'),
(55, 'CUB', 'Cuba'),
(56, 'CUW', 'Curacao'),
(57, 'CYP', 'Cyprus'),
(58, 'CZE', 'Czech Republic'),
(59, 'COD', 'Democratic Republic '),
(60, 'DNK', 'Denmark'),
(61, 'DJI', 'Djibouti'),
(62, 'DMA', 'Dominica'),
(63, 'DOM', 'Dominican Republic'),
(64, 'TLS', 'East Timor'),
(65, 'ECU', 'Ecuador'),
(66, 'EGY', 'Egypt'),
(67, 'SLV', 'El Salvador'),
(68, 'GNQ', 'Equatorial Guinea'),
(69, 'ERI', 'Eritrea'),
(70, 'EST', 'Estonia'),
(71, 'ETH', 'Ethiopia'),
(72, 'FLK', 'Falkland Islands'),
(73, 'FRO', 'Faroe Islands'),
(74, 'FJI', 'Fiji'),
(75, 'FIN', 'Finland'),
(76, 'FRA', 'France'),
(77, 'GUF', 'French Guiana'),
(78, 'PYF', 'French Polynesia'),
(79, 'ATF', 'French Southern Terr'),
(80, 'GAB', 'Gabon'),
(81, 'GMB', 'Gambia'),
(82, 'GEO', 'Georgia'),
(83, 'DEU', 'Germany'),
(84, 'GHA', 'Ghana'),
(85, 'GIB', 'Gibraltar'),
(86, 'GRC', 'Greece'),
(87, 'GRL', 'Greenland'),
(88, 'GRD', 'Grenada'),
(89, 'GLP', 'Guadeloupe'),
(90, 'GUM', 'Guam'),
(91, 'GTM', 'Guatemala'),
(92, 'GGY', 'Guernsey'),
(93, 'GIN', 'Guinea'),
(94, 'GNB', 'Guinea-Bissau'),
(95, 'GUY', 'Guyana'),
(96, 'HTI', 'Haiti'),
(97, 'HMD', 'Heard Island and McD'),
(98, 'HND', 'Honduras'),
(99, 'HKG', 'Hong Kong'),
(100, 'HUN', 'Hungary'),
(101, 'ISL', 'Iceland'),
(102, 'IND', 'India'),
(103, 'IDN', 'Indonesia'),
(104, 'IRN', 'Iran'),
(105, 'IRQ', 'Iraq'),
(106, 'IRL', 'Ireland'),
(107, 'IMN', 'Isle of Man'),
(108, 'ISR', 'Israel'),
(109, 'ITA', 'Italy'),
(110, 'CIV', 'Ivory Coast'),
(111, 'JAM', 'Jamaica'),
(112, 'JPN', 'Japan'),
(113, 'JEY', 'Jersey'),
(114, 'JOR', 'Jordan'),
(115, 'KAZ', 'Kazakhstan'),
(116, 'KEN', 'Kenya'),
(117, 'KIR', 'Kiribati'),
(118, 'XKX', 'Kosovo'),
(119, 'KWT', 'Kuwait'),
(120, 'KGZ', 'Kyrgyzstan'),
(121, 'LAO', 'Laos'),
(122, 'LVA', 'Latvia'),
(123, 'LBN', 'Lebanon'),
(124, 'LSO', 'Lesotho'),
(125, 'LBR', 'Liberia'),
(126, 'LBY', 'Libya'),
(127, 'LIE', 'Liechtenstein'),
(128, 'LTU', 'Lithuania'),
(129, 'LUX', 'Luxembourg'),
(130, 'MAC', 'Macao'),
(131, 'MKD', 'Macedonia'),
(132, 'MDG', 'Madagascar'),
(133, 'MWI', 'Malawi'),
(134, 'MYS', 'Malaysia'),
(135, 'MDV', 'Maldives'),
(136, 'MLI', 'Mali'),
(137, 'MLT', 'Malta'),
(138, 'MHL', 'Marshall Islands'),
(139, 'MTQ', 'Martinique'),
(140, 'MRT', 'Mauritania'),
(141, 'MUS', 'Mauritius'),
(142, 'MYT', 'Mayotte'),
(143, 'MEX', 'Mexico'),
(144, 'FSM', 'Micronesia'),
(145, 'MDA', 'Moldova'),
(146, 'MCO', 'Monaco'),
(147, 'MNG', 'Mongolia'),
(148, 'MNE', 'Montenegro'),
(149, 'MSR', 'Montserrat'),
(150, 'MAR', 'Morocco'),
(151, 'MOZ', 'Mozambique'),
(152, 'MMR', 'Myanmar [Burma]'),
(153, 'NAM', 'Namibia'),
(154, 'NRU', 'Nauru'),
(155, 'NPL', 'Nepal'),
(156, 'NLD', 'Netherlands'),
(157, 'NCL', 'New Caledonia'),
(158, 'NZL', 'New Zealand'),
(159, 'NIC', 'Nicaragua'),
(160, 'NER', 'Niger'),
(161, 'NGA', 'Nigeria'),
(162, 'NIU', 'Niue'),
(163, 'NFK', 'Norfolk Island'),
(164, 'PRK', 'North Korea'),
(165, 'MNP', 'Northern Mariana Isl'),
(166, 'NOR', 'Norway'),
(167, 'OMN', 'Oman'),
(168, 'PAK', 'Pakistan'),
(169, 'PLW', 'Palau'),
(170, 'PSE', 'Palestine'),
(171, 'PAN', 'Panama'),
(172, 'PNG', 'Papua New Guinea'),
(173, 'PRY', 'Paraguay'),
(174, 'PER', 'Peru'),
(175, 'PHL', 'Philippines'),
(176, 'PCN', 'Pitcairn Islands'),
(177, 'POL', 'Poland'),
(178, 'PRT', 'Portugal'),
(179, 'PRI', 'Puerto Rico'),
(180, 'QAT', 'Qatar'),
(181, 'COG', 'Republic of the Cong'),
(182, 'REU', 'Réunion'),
(183, 'ROU', 'Romania'),
(184, 'RUS', 'Russia'),
(185, 'RWA', 'Rwanda'),
(186, 'BLM', 'Saint Barthélemy'),
(187, 'SHN', 'Saint Helena'),
(188, 'KNA', 'Saint Kitts and Nevi'),
(189, 'LCA', 'Saint Lucia'),
(190, 'MAF', 'Saint Martin'),
(191, 'SPM', 'Saint Pierre and Miq'),
(192, 'VCT', 'Saint Vincent and th'),
(193, 'WSM', 'Samoa'),
(194, 'SMR', 'San Marino'),
(195, 'STP', 'São Tomé and Príncip'),
(196, 'SAU', 'Saudi Arabia'),
(197, 'SEN', 'Senegal'),
(198, 'SRB', 'Serbia'),
(199, 'SYC', 'Seychelles'),
(200, 'SLE', 'Sierra Leone'),
(201, 'SGP', 'Singapore'),
(202, 'SXM', 'Sint Maarten'),
(203, 'SVK', 'Slovakia'),
(204, 'SVN', 'Slovenia'),
(205, 'SLB', 'Solomon Islands'),
(206, 'SOM', 'Somalia'),
(207, 'ZAF', 'South Africa'),
(208, 'SGS', 'South Georgia and th'),
(209, 'KOR', 'South Korea'),
(210, 'SSD', 'South Sudan'),
(211, 'ESP', 'Spain'),
(212, 'LKA', 'Sri Lanka'),
(213, 'SDN', 'Sudan'),
(214, 'SUR', 'Suriname'),
(215, 'SJM', 'Svalbard and Jan May'),
(216, 'SWZ', 'Swaziland'),
(217, 'SWE', 'Sweden'),
(218, 'CHE', 'Switzerland'),
(219, 'SYR', 'Syria'),
(220, 'TWN', 'Taiwan'),
(221, 'TJK', 'Tajikistan'),
(222, 'TZA', 'Tanzania'),
(223, 'THA', 'Thailand'),
(224, 'TGO', 'Togo'),
(225, 'TKL', 'Tokelau'),
(226, 'TON', 'Tonga'),
(227, 'TTO', 'Trinidad and Tobago'),
(228, 'TUN', 'Tunisia'),
(229, 'TUR', 'Turkey'),
(230, 'TKM', 'Turkmenistan'),
(231, 'TCA', 'Turks and Caicos Isl'),
(232, 'TUV', 'Tuvalu'),
(233, 'UMI', 'U.S. Minor Outlying '),
(234, 'VIR', 'U.S. Virgin Islands'),
(235, 'UGA', 'Uganda'),
(236, 'UKR', 'Ukraine'),
(237, 'ARE', 'United Arab Emirates'),
(238, 'GBR', 'United Kingdom'),
(239, 'USA', 'United States'),
(240, 'URY', 'Uruguay'),
(241, 'UZB', 'Uzbekistan'),
(242, 'VUT', 'Vanuatu'),
(243, 'VAT', 'Vatican City'),
(244, 'VEN', 'Venezuela'),
(245, 'VNM', 'Vietnam'),
(246, 'WLF', 'Wallis and Futuna'),
(247, 'ESH', 'Western Sahara'),
(248, 'YEM', 'Yemen'),
(249, 'ZMB', 'Zambia'),
(250, 'ZWE', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journeys`
--

CREATE TABLE `journeys` (
  `user_id` int(11) DEFAULT NULL,
  `journey_id` int(11) NOT NULL,
  `journey_date` date NOT NULL,
  `location` varchar(20) NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journeys`
--

INSERT INTO `journeys` (`user_id`, `journey_id`, `journey_date`, `location`, `time`, `created_at`, `updated_at`) VALUES
(NULL, 1, '2022-06-04', 'United States', '13:34:00', '2022-06-06 06:06:38', '2022-06-04 02:34:29'),
(NULL, 2, '2022-06-11', 'India', '22:40:00', '2022-06-06 06:06:42', '2022-06-04 05:33:39'),
(NULL, 3, '2022-06-07', 'Aruba', '12:36:00', '2022-06-06 00:33:09', '2022-06-06 00:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'John', 'john@gmail.com', NULL, 'john123', NULL, NULL, NULL),
(2, 2, 'Michael ', 'michael@gmail.com', NULL, 'michael123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `journeys`
--
ALTER TABLE `journeys`
  ADD PRIMARY KEY (`journey_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journeys`
--
ALTER TABLE `journeys`
  MODIFY `journey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
