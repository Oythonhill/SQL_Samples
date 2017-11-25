--SQL Server 主外键约束命令
--Oythonhill 2017-11-25 整理
--Email: hyhyin@163.com

--查看数据表中所有列的约束 
sp_helpconstraint 表名;

--添加主键约束 
ALTER TABLE 表名 
ADD CONSTRAINT 约束名 PRIMARY KEY (主键);

--添加唯一约束 
ALTER TABLE 表名
ADD CONSTRAINT 约束名 UNIQUE (字段);

--添加默认约束 
ALTER TABLE 表名 ADD CONSTRAINT 约束名 default ('默认内容') for 字段;

--添加check约束(check约束可以对特定字段的范围作出限定) 
ALTER TABLE 表名 ADD CONSTRAINT 约束名 check (字段1> 1 and 字段2<100 );

--添加外键约束(关联字段要用括号括起来)
ALTER TABLE 从表 ADD CONSTRAINT 约束名 FOREIGN KEY (关联字段) references 主表(关联字段);

--删除约束 
ALTER TABLE 表名 DROP CONSTRAINT 约束名;
