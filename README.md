Query OK, 2 rows affected (1.16 sec)

Query OK, 1 row affected (0.00 sec)

Database changed
Query OK, 0 rows affected (0.40 sec)

Query OK, 0 rows affected (0.35 sec)

Query OK, 16 rows affected (0.09 sec)
Records: 16  Duplicates: 0  Warnings: 0

Query OK, 16 rows affected (0.10 sec)
Records: 16  Duplicates: 0  Warnings: 0

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`Project02`.`#sql-4b8_9`, CONSTRAINT `fk_GameName` FOREIGN KEY (`Name`) REFERENCES `OpponentTeam` (`Name`))
+-----------+-----------------+
| Name      | ScoreDifference |
+-----------+-----------------+
| Texans    |               7 |
| Jaguars   |             -11 |
| Lions     |             -16 |
| Dolphins1 |              31 |
| Colts     |              14 |
| Chiefs    |               3 |
| Bears     |               7 |
| Bills1    |              19 |
| Packers   |              14 |
| Titans    |             -24 |
| Jets1     |              14 |
| Vikings   |              14 |
| Dolphins2 |              -1 |
| Steelers  |              -7 |
| Bills2    |              12 |
| Jets2     |              35 |
+-----------+-----------------+
16 rows in set (0.06 sec)

+-----------+------------+------------------+-------------------+-----------------------+-----------------+
| Name      | Nickname   | Town             | Stadium           | TeamOwner             | ScoreDifference |
+-----------+------------+------------------+-------------------+-----------------------+-----------------+
| Jaguars   | Jags       | Jacksonville, FL | TIAA Bank Field   | Shahid Khan           |             -11 |
| Lions     |            | Detroit, MI      | Ford Field        | Martha Firestone Ford |             -16 |
| Titans    |            | Tennessee, TN    | Nissan Stadium    | KSA Industries        |             -24 |
| Dolphins2 |            | Miami, FL        | Hard Rock Stadium | Stephen M. Ross       |              -1 |
| Steelers  | Blitzburgh | Pittsburgh, PA   | Heinz Field       | The Rooney Family     |              -7 |
+-----------+------------+------------------+-------------------+-----------------------+-----------------+
5 rows in set (0.01 sec)

+-----------+----------------------------+--------+--------+------------------+-----------------+
| Name      | GameDate                   | Score1 | Score2 | Stadium          | ScoreDifference |
+-----------+----------------------------+--------+--------+------------------+-----------------+
| Texans    | 2018-09-09 00:00:00.000000 |     27 |    -20 | Gillette Stadium |               7 |
| Dolphins1 | 2018-09-30 00:00:00.000000 |     38 |     -7 | Gillette Stadium |              31 |
| Colts     | 2018-10-04 00:00:00.000000 |     38 |    -24 | Gillette Stadium |              14 |
| Chiefs    | 2018-10-14 00:00:00.000000 |     43 |    -40 | Gillette Stadium |               3 |
| Packers   | 2018-11-04 00:00:00.000000 |     31 |    -17 | Gillette Stadium |              14 |
| Vikings   | 2018-12-02 00:00:00.000000 |     24 |    -10 | Gillette Stadium |              14 |
| Bills2    | 2018-12-23 00:00:00.000000 |     24 |    -12 | Gillette Stadium |              12 |
| Jets2     | 2018-12-30 00:00:00.000000 |     38 |     -3 | Gillette Stadium |              35 |
+-----------+----------------------------+--------+--------+------------------+-----------------+
8 rows in set (0.00 sec)

+----------+-----------------+
| Name     | ScoreDifference |
+----------+-----------------+
| Jaguars  |             -11 |
| Lions    |             -16 |
| Titans   |             -24 |
| Steelers |              -7 |
+----------+-----------------+
4 rows in set (0.00 sec)
