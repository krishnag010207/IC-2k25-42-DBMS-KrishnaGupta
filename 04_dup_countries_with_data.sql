mysql> use dbms_lab;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
| dup_countries      |
+--------------------+
2 rows in set (0.04 sec)

mysql> select*from countries;
Empty set (0.00 sec)

mysql> insert into countries (country_id,country_name,region_id)
    -> value (1, 'India' , 1),
    ->       (2, 'South korea' , 2),
    ->       (3, 'Japan' , 3),
    ->       (4, 'Thailand' , 4);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |         1 |
|          2 | South korea  |         2 |
|          3 | Japan        |         3 |
|          4 | Thailand     |         4 |
+------------+--------------+-----------+
4 rows in set (0.01 sec)

mysql> drop table dup_countries;
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
+--------------------+
1 row in set (0.00 sec)

mysql> create table dup_countries as select*from countries;
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> show tables;
+--------------------+
| Tables_in_dbms_lab |
+--------------------+
| countries          |
| dup_countries      |
+--------------------+
2 rows in set (0.00 sec)

mysql> select*from dup_countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |         1 |
|          2 | South korea  |         2 |
|          3 | Japan        |         3 |
|          4 | Thailand     |         4 |
+------------+--------------+-----------+
4 rows in set (0.01 sec)

mysql>