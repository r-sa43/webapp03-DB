DROP TABLE IF EXISTS `m_users`;
CREATE TABLE `m_users`(
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'ユーザID',
    `user_cognito_id` varchar(255) NOT NULL COMMENT 'Cognito ID',
    `name` varchar(255) NOT NULL COMMENT '氏名',
    `email` varchar(255) NOT NULL COMMENT 'メールアドレス',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `m_posts`;
DROP TABLE IF EXISTS `d_posts`;
CREATE TABLE `d_posts`(
    `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '投稿ID',
    `user_id` int NOT NULL COMMENT 'ユーザID',
    `contents` varchar(255) NOT NULL COMMENT '内容',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日',
    PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `m_good`;
CREATE TABLE `m_good`(
    `post_id` bigint NOT NULL COMMENT '投稿ID',
    `user_id` int NOT NULL COMMENT 'ユーザID',
    PRIMARY KEY (`post_id`, `user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;