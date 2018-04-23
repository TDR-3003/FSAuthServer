DROP TABLE IF EXISTS `xathx_accs`, `xathx_info`, `xathx_key`;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "UTC";


CREATE TABLE IF NOT EXISTS `xathx_accs` (
  `id` int(5) NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `uniquex` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `xathx_info` (
  `id` int(5) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1.0.0',
  `server` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regprogl` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CUSTOM',
  `regdate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `xathx_key` (
  `id` int(5) NOT NULL,
  `license` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `server` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniquex` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


ALTER TABLE `xathx_accs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `xathx_info`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `xathx_key`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `xathx_accs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `xathx_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

ALTER TABLE `xathx_key`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;