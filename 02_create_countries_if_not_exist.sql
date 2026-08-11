mysql> use dbms_lab
Database changed
mysql> select database();
+------------+
| database() |
+------------+
| dbms_lab   |
+------------+
1 row in set (0.00 sec)

mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
+--------------------+
1 row in set (0.01 sec)

mysql> create table if not exists
    -> countries(
    -> country_id int,
    -> country_name varchar(50),
    -> region_id int);
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
+--------------------+
1 row in set (0.00 sec)

mysql> desc countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql>
