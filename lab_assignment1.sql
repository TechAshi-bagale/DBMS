Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount Table: 

● Columns: account_id (Primary Key), account_holder_name, account_balance


mysql> CREATE DATABASE bank;
Query OK, 1 row affected (0.02 sec)

mysql> use bank;
Database changed
mysql> CREATE TABLE BankAccount (
    ->     account_id INT PRIMARY KEY,
    ->     account_holder_name VARCHAR(50),
    ->     account_balance DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> Desc BankAccount;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | int           | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50)   | YES  |     | NULL    |       |
| account_balance     | decimal(10,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 
mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES (101, 'Aahan', 45000.00),
    ->        (102, 'sam', 22000.00),
    ->        (103, 'Charlie Brown', 60000.00),
    ->        (104, 'Diya', 30000.00),
    ->        (105, 'samarth', 22000.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from bankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Aahan               |        45000.00 |
|        102 | sam                 |        22000.00 |
|        103 | Charlie Brown       |        60000.00 |
|        104 | Diya                |        30000.00 |
|        105 | samarth             |        22000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Aahan               |        45000.00 |
| sam                 |        22000.00 |
| Charlie Brown       |        60000.00 |
| Diya                |        30000.00 |
| samarth             |        22000.00 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Aahan               |        45000.00 |
| Charlie Brown       |        60000.00 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
mysql> UPDATE BankAccount
    -> SET account_balance = 50000.00
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Aahan               |        50000.00 |
|        102 | sam                 |        22000.00 |
|        103 | Charlie Brown       |        60000.00 |
|        104 | Diya                |        30000.00 |
|        105 | samarth             |        22000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>