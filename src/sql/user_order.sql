--使用SpringCloud微服务架构完成登录订单查询工作脚本
--用户表
create table t_user(
id varchar(32) comment '用户编号',
name varchar(100) comment '用户名称',
nick_name varchar(100) comment '用户昵称',
id_card varchar(18) comment '身份证号',
mobile varchar(20) comment '手机号',
email varchar(20) comment '邮箱',
login_name varchar(50) comment '登录账号',
login_pwd varchar(50) comment '登录密码(MD5加密存储)',
user_img varchar(200) comment '用户头像',
status varchar(1) comment '用户状态,0-停用,1-启用,9注销',
remark varchar(1000) comment '备注',
create_time datetime comment '创建时间',
create_user varchar(100) comment '创建人',
update_time datetime comment '修改时间',
update_user varchar(100) comment '修改人'
);
--订单表(关联商品编号暂时不填)
create table t_order(
id varchar(32) comment '订单编号',
user_id varchar(32) comment '用户编号',
merchant_id varchar(32) comment '商品编号',
create_time datetime comment '下单时间',
pay_time datetime comment '支付时间',
status varchar(2) comment '支付状态,0-未付款,1-待发货,2-待收货,3-完成,4-已取消,5-退款中,6-已退款'
);