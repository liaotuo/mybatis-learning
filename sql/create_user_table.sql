create database mybatis_test;

use `mybatis_test`;

drop table if exists `user`;

create table `user` (
	`id` int(11) not null auto_increment,
    `username` varchar(120) collate utf8_bin default null comment '用户名',
    `password` varchar(50) collate utf8_bin default null comment '密码',
    `gender` varchar(5) collate utf8_bin default null comment '性别',
    `email` varchar(100) collate utf8_bin default null comment '邮箱',
    `province` varchar(50) collate utf8_bin default null comment '省份',
    `city` varchar(50) collate utf8_bin default null comment '城市',
    `birthday` date default null comment '省份',
    primary key (`id`)
) engine=InnoDB default charset=utf8 collate=utf8_bin;

-- 初始化数据
insert into `user`(`id`, `username`, `password`, `gender`, `email`, `province`, `city`, `birthday`) values
(1, '张三', '111', '男', '1111@163.com', '河南省', '郑州市', '1991-04-23'),
(2, '李四', '222', '女', '2222@163.com', '河北省', '邯郸市', '1989-10-13'),
(3, '王五', '333', '男', '3333@163.com', '江苏省', '苏州市', '1994-06-09'),
(4, '赵六', '444', '女', '4444@163.com', '四川省', '成都市', '1992-11-07');

select * from user;