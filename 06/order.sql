CREATE TABLE `t_user` (
  `f_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '用户表主键',
  `f_user_name` varchar(255) NOT NULL COMMENT '用户名称',
  `f_user_no` int(11) DEFAULT NULL COMMENT '用户唯一标识',
  `f_password` varchar(64) DEFAULT NULL COMMENT '用户密码，加密存储',
  `f_phone_no` varchar(11) NOT NULL COMMENT '用户手机号',
  `f_email` varchar(64) DEFAULT NULL COMMENT '用户邮箱',
  `f_create_time` datetime NOT NULL COMMENT '创建时间',
  `f_update_time` datetime NOT NULL COMMENT '修改时间',
  `f_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态:0,无效，1：有效',
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `un_user_no` (`f_user_no`) USING BTREE,
  KEY `idx_user_name` (`f_user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


CREATE TABLE `t_product` (
  `f_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `f_proudct_name` varchar(255) NOT NULL COMMENT '商品名称',
  `f_product_no` varchar(64) NOT NULL COMMENT '用户编号',
  `f_price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `f_product_desc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `f_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态:0,无效，1：有效',
  `f_create_time` datetime NOT NULL COMMENT '创建时间',
  `f_update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `t_order` (
  `f_id` bigint(11) NOT NULL,
  `f_order_no` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `f_user_no` varchar(64) DEFAULT NULL COMMENT '用户编号',
  `f_product_no` varchar(64) DEFAULT NULL COMMENT '商品编号',
  `f_order_amout` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `f_address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `f_notice_url` varchar(255) DEFAULT NULL COMMENT '异步通知地址',
  `f_order_status` int(11) DEFAULT NULL COMMENT '订单状态：0，未支付，1，已支付，2，支付失败，3，订单过期',
  `f_create_time` datetime NOT NULL COMMENT '创建时间',
  `f_update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;