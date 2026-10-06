-- 移动端最小会员表。
-- 仅覆盖手机号登录与个人基础信息；如后续启用等级、签到、积分等会员功能，
-- 请补充对应的业务表结构。

CREATE TABLE IF NOT EXISTS `member_user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '会员编号',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态（0 正常）',
  `register_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '注册 IP',
  `register_terminal` int DEFAULT NULL COMMENT '注册终端',
  `login_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '最后登录 IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `nickname` varchar(30) NOT NULL COMMENT '昵称',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '头像',
  `name` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `area_id` int DEFAULT NULL COMMENT '所在地',
  `mark` varchar(255) DEFAULT NULL COMMENT '备注',
  `point` int NOT NULL DEFAULT 0 COMMENT '积分',
  `tag_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '标签编号列表',
  `level_id` bigint DEFAULT NULL COMMENT '等级编号',
  `experience` int NOT NULL DEFAULT 0 COMMENT '经验值',
  `group_id` bigint DEFAULT NULL COMMENT '分组编号',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint NOT NULL DEFAULT 1 COMMENT '租户编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_mobile_deleted` (`tenant_id`, `mobile`, `deleted`),
  KEY `idx_nickname` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员用户';
