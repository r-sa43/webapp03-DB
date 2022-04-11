DROP TABLE IF EXISTS `m_users`;
CREATE TABLE `m_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ユーザID',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '氏名',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'メールアドレス',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `m_users_un` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `m_posts`;
DROP TABLE IF EXISTS `d_posts`;
CREATE TABLE `d_posts` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '投稿ID',
  `user_id` int(11) NOT NULL COMMENT 'ユーザID',
  `contents` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `m_good`;
DROP TABLE IF EXISTS `d_good`;
CREATE TABLE `d_good` (
  `post_id` bigint(20) NOT NULL COMMENT '投稿ID',
  `user_id` int(11) NOT NULL COMMENT 'ユーザID',
  UNIQUE KEY `d_good_un` (`post_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;