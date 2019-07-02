-- **数据库级别：** 
-- ddldb为数据库名
--  显示所有数据库  
 show databases;
--  进入某个数据库 
 use ddldb;
--  创建一个数据库  
 create database ddldb;
--  创建指定字符集的数据库  
 create database ddldb default character set = 'utf8';
--  显示数据库的创建信息   
 show create database ddldb;
--  修改数据库的编码  
 alter database ddldb character set utf8;
--  删除一个数据库   
 drop database ddldb;
-- **表级别**
--  修改表名
 rename table student to students;
--  修改字段的数据类型
 alter table student modify column age varchar(5);
--  修改字段名
 alter table student change name names varchar(40);
--  添加字段
 alter table student add hobby varchar(255);
--  删除字段
 alter table student drop hobby;
--  修改表的存储引擎
 alter table student engine=myisam;
--  删除表的外键约束(创建了一个user表，student表的user_id关联到user表的id)
 alter table student drop foreign key user_id;
--  删除一张表
 drop table student;