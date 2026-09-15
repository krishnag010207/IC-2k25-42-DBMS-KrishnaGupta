mysql> use dbms_lab;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
| dup_countries      |
+--------------------+
2 rows in set (0.09 sec)

mysql> CREATE TABLE countries (...);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '...)' at line 1
mysql> countries_null
    -> CREATE TABLE countries_null (
    ->     country_id INT,
    ->     country_name VARCHAR(50),
    ->     region_id INT NULL
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'countries_null
CREATE TABLE countries_null (
    country_id INT,
    country_nam' at line 1
mysql> CREATE TABLE countries_null (
    ->     country_id INT,
    ->     country_name VARCHAR(50),
    ->     region_id INT NULL
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> DESC countries_null;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(50) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO countries_null
    -> (country_id, country_name, region_id)
    -> VALUES
    -> (1, 'India', NULL);
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM countries_null;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |      NULL |
+------------+--------------+-----------+
1 row in set (0.00 sec)
