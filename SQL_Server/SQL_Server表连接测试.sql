CREATE DATABASE test;

use test;

CREATE TABLE t_students(id int,studentName varchar(10),classID int);
CREATE TABLE t_class(c_classID int,className varchar(10));

INSERT INTO t_students VALUES('1','����','12');
INSERT INTO t_students VALUES('2','����','13');
INSERT INTO t_students VALUES('3','����','14');
INSERT INTO t_students VALUES('4','����','15');
INSERT INTO t_students VALUES('5','���','0');

INSERT INTO t_class VALUES('12','12��');
INSERT INTO t_class VALUES('13','13��');
INSERT INTO t_class VALUES('14','14��');
INSERT INTO t_class VALUES('15','15��');
INSERT INTO t_class VALUES('16','16��');

--������
SELECT * 
FROM t_students inner join t_class ON classID=c_classID;
SELECT * 
FROM t_students, t_class WHERE classID=c_classID;

--������
--��/��������
SELECT * 
FROM t_students left outer join t_class ON classID=c_classID;
SELECT *
FROM t_students right outer join t_class ON classID=c_classID;

--ȫ������
SELECT *
FROM t_students FULL outer join t_class ON classID=c_classID;