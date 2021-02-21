CREATE TABLE `user` (
                        `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id自增',
                        `username` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '用户名称',
                        `password` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '密码',
                        `created_at` datetime(6) NOT NULL COMMENT '创建时间',
                        `modify_time` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;
CREATE TABLE `video` (
                         `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id自增',
                         `video_id` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频id',
                         `video_cluster` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频簇',
                         `video_rank` int(1) NOT NULL COMMENT '视频集数',
                         `video_type` varchar(10) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频类型',
                         `video_name` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频名称',
                         `author_name` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '作者名称',
                         `video_info` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频简介',
                         `video_content_url` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频源url',
                         `video_img` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频封面地址',
                         `get_like_number` int(1) NOT NULL COMMENT '获得点赞个数',
                         `get_collect_number` int(1) NOT NULL COMMENT '获得收藏个数',
                         `stopped_at` int(11) NOT NULL COMMENT '禁用时间',
                         `created_at` datetime(5) NOT NULL COMMENT '创建时间',
                         `modify_time` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;
CREATE TABLE `cluster` (
                           `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id自增',
                           `title` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '连续视频标题',
                           `content` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '连续视频简介',
                           `count` int(1) NOT NULL COMMENT '视频总数',
                           `author_name` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '作者用户名',
                           `video_img` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频封面地址',
                           `get_like_number` int(1) NOT NULL COMMENT '获得点赞个数',
                           `get_collect_number` int(1) NOT NULL COMMENT '获得收藏个数',
                           `video_type` varchar(10) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '视频类型',
                           `created_at` datetime(5) NOT NULL COMMENT '创建时间',
                           `modify_time` datetime(6) NOT NULL ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '修改时间',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;
CREATE TABLE `danmu` (
                         `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id自增',
                         `content` varchar(10) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '弹幕',
                         `author` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '发送者',
                         `video_id` varchar(30) COLLATE utf8mb4_german2_ci NOT NULL COMMENT '所属视频id',
                         `stopped_at` int(11) NOT NULL COMMENT '禁用时间',
                         `created_at` datetime(5) NOT NULL COMMENT '创建时间',
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;