Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use dbms_lab;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
+--------------------+
1 row in set (0.01 sec)

mysql> desc countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table dup_countries
    -> like countries;
Query OK, 0 rows affected (0.06 sec)

mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
| dup_countries      |
+--------------------+
2 rows in set (0.01 sec)

mysql> desc dup_countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> select*from dup_countries;
Empty set (0.01 sec)

mysql>