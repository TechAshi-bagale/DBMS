mysql> use emp;
Database changed
mysql> CREATE TABLE emp_details (
    ->     emp_id VARCHAR(10) NOT NULL PRIMARY KEY,
    ->     emp_name VARCHAR(30) NOT NULL,
    ->     mob_no VARCHAR(15) NOT NULL,
    ->     address VARCHAR(40) NOT NULL,
    ->     salary INT NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO emp_details (emp_id, emp_name, mob_no, address, salary)
    -> VALUES
    -> ('E1', 'riya', 1234567890, 'solapur', 10000),
    -> ('E2', 'asavari', 8698985131, 'Akkalkot', 90000),
    -> ('E3', 'sandhya', 1212134550, 'sangli', 40000),
    -> ('E4', 'sam', 4556523212, 'pune', 15000),
    -> ('E5', 'ram', 1213141516, 'mumbai', 45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM emp_details;
+--------+----------+------------+----------+--------+
| emp_id | emp_name | mob_no     | address  | salary |
+--------+----------+------------+----------+--------+
| E1     | riya     | 1234567890 | solapur  |  10000 |
| E2     | asavari  | 8698985131 | Akkalkot |  90000 |
| E3     | sandhya  | 1212134550 | sangli   |  40000 |
| E4     | sam      | 4556523212 | pune     |  15000 |
| E5     | ram      | 1213141516 | mumbai   |  45000 |
+--------+----------+------------+----------+--------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM emp_details WHERE name LIKE 'S%';
ERROR 1054 (42S22): Unknown column 'name' in 'where clause'
mysql> SELECT * FROM emp_details WHERE emp_name LIKE 'S%';
+--------+----------+------------+---------+--------+
| emp_id | emp_name | mob_no     | address | salary |
+--------+----------+------------+---------+--------+
| E3     | sandhya  | 1212134550 | sangli  |  40000 |
| E4     | sam      | 4556523212 | pune    |  15000 |
+--------+----------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM emp_details WHERE address LIKE '%pu%';
+--------+----------+------------+---------+--------+
| emp_id | emp_name | mob_no     | address | salary |
+--------+----------+------------+---------+--------+
| E1     | riya     | 1234567890 | solapur |  10000 |
| E4     | sam      | 4556523212 | pune    |  15000 |
+--------+----------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM emp_details WHERE emp_name LIKE '_a%';
+--------+----------+------------+---------+--------+
| emp_id | emp_name | mob_no     | address | salary |
+--------+----------+------------+---------+--------+
| E3     | sandhya  | 1212134550 | sangli  |  40000 |
| E4     | sam      | 4556523212 | pune    |  15000 |
| E5     | ram      | 1213141516 | mumbai  |  45000 |
+--------+----------+------------+---------+--------+
3 rows in set (0.00 sec)

mysql> DELETE FROM emp_details WHERE emp_id = 'E1';
Query OK, 1 row affected (0.01 sec)

mysql> UPDATE emp_details SET salary = 95000 WHERE emp_id = 'E2';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM emp_details;
+--------+----------+------------+----------+--------+
| emp_id | emp_name | mob_no     | address  | salary |
+--------+----------+------------+----------+--------+
| E2     | asavari  | 8698985131 | Akkalkot |  95000 |
| E3     | sandhya  | 1212134550 | sangli   |  40000 |
| E4     | sam      | 4556523212 | pune     |  15000 |
| E5     | ram      | 1213141516 | mumbai   |  45000 |
+--------+----------+------------+----------+--------+
4 rows in set (0.00 sec)

mysql>