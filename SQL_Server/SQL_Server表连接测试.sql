CREATE DATABASE test;

use test;

CREATE TABLE t_students(id int,studentName varchar(10),classID int);
CREATE TABLE t_class(c_classID int,className varchar(10));

INSERT INTO t_students VALUES('1','张三','12');
INSERT INTO t_students VALUES('2','李四','13');
INSERT INTO t_students VALUES('3','王五','14');
INSERT INTO t_students VALUES('4','马六','15');
INSERT INTO t_students VALUES('5','丘八','0');

INSERT INTO t_class VALUES('12','12班');
INSERT INTO t_class VALUES('13','13班');
INSERT INTO t_class VALUES('14','14班');
INSERT INTO t_class VALUES('15','15班');
INSERT INTO t_class VALUES('16','16班');

--内连接
SELECT * 
FROM t_students inner join t_class ON classID=c_classID;
SELECT * 
FROM t_students, t_class WHERE classID=c_classID;

--外连接
--左/右外连接
SELECT * 
FROM t_students left outer join t_class ON classID=c_classID;
SELECT *
FROM t_students right outer join t_class ON classID=c_classID;

--全外连接
SELECT *
FROM t_students FULL outer join t_class ON classID=c_classID;