insert into tbl_stock(vchr_name,int_quantity,int_price,fk_int_supplier) values ('Mouse',10,500,1),
('Keyboard',5,450,3),('Modem',10,1200,2),('Memory',100,1500,5),('Headphone',50,750,4),('Memory',2,3500,4);



machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | Keyboard  |            5 |       450 |               3
               3 | Modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | Memory    |            2 |      3500 |               4



update tbl_stock set int_price = 501.5 where pk_int_stock_id = 1;
update tbl_stock set int_price = 451.5 where pk_int_stock_id = 2;
update tbl_stock set int_price = 1201.5 where pk_int_stock_id = 3;
update tbl_stock set int_price = 1501.5 where pk_int_stock_id = 4;
update tbl_stock set int_price = 751.5 where pk_int_stock_id = 5;
update tbl_stock set int_price = 3501.5 where pk_int_stock_id = 6;

machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4


select * from tbl_stock where int_price >1000;

machinetest=# select * from tbl_stock where int_price >1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4


select * from tbl_stock order by vchr_name asc;   --select items from table sort by alphabetically column vchr_name


machinetest=# select * from tbl_stock order by vchr_name asc;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1


select * from tbl_stock order by vchr_name asc limit 3;  -- to select first 3 rows after sort ascending order: 'order by'
                                                         -- 'asc' is used to sort and 'limit' to select limited rows


machinetest=# select * from tbl_stock order by vchr_name asc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5



 select * from tbl_stock order by vchr_name desc limit 3;

 machinetest=#  select * from tbl_stock order by vchr_name desc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5


select int_quantity,int_price,int_quantity * int_price as total_price from tbl_stock;


machinetest=# select int_quantity,int_price,int_quantity * int_price as total_price from tbl_stock;
 int_quantity | int_price | total_price
--------------+-----------+-------------
           10 |     501.5 |        5015
            5 |     451.5 |      2257.5
           10 |    1201.5 |       12015
          100 |    1501.5 |      150150
           50 |     751.5 |       37575
            2 |    3501.5 |        7003


delete from tbl_stock where fk_int_supplier=5;

machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4



insert into tbl_dpt(vchr_dept_name,vchr_dept_description) values('Computer Science','CS'),
                                                                ('Electronics','EC'),
                                                                ('Commerce','CC'),
                                                                ('Arts','AR');


 select * from tbl_dpt;
 pk_int_dpt_id |  vchr_dept_name  | vchr_dept_description
---------------+------------------+-----------------------
             1 | Computer Science | CS
             2 | Electronics      | EC
             3 | Commerce         | CC
             4 | Arts             | AR



