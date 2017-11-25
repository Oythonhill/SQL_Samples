--SQL_Server表连接操作


--1.内连接
SELECT *
FROM table1 INNER JOIN table2 ON table1.col = table2.col;
--上述查询等价于
SELECT *
FROM table1, talbe2
WHERE table1.col = table2.col;
--内连接查询仅提取两个数据集都包含的数据
--即只要table1.col匹配了table.col,那么两表中的其他字段就会进行连接

--2.外连接
--2.1 左/右外连接
SELECT *
FROM table1 LEFT OUTER JOIN table2 ON table1.col = table2.col;
--上述查询等价于
SELECT *
FROM table2 RIGHT OUTER JOIN table1 ON table1.col = table2.col;
--LEFT和RIGHT指的是表在SQL代码中的相对位置

--2.2 全外连接
SELECT *
FROM table2 FULL OUTER JOIN table1 ON table1.col = table2.col;