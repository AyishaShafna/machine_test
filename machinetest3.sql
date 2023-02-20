------------------ table tbl_stock recreated because some of it rows deleted from previous questions----
create table tbl_stock(
    pk_int_stock_id serial primary key,
    vchr_name varchar(100),
    int_quantity int,
    int_price float,
    fk_int_supplier int
 );

 alter table tbl_stock add foreign key(fk_int_supplier)references tbl_supplier(pk_int_supplier_id) on delete cascade on update cascade;

insert into tbl_stock(vchr_name,int_quantity,int_price,fk_int_supplier) values ('Mouse',10,501.5,1),
('Keyboard',5,451.5,3),('Modem',10,1201.5,2),('Memory',100,1501.5,5),('Headphone',50,751.5,4),('Memory',2,3501.5,4);

------------------------upto this table tbl_stock recreated because some of it rows deleted from previous questions------- 

select sum(int_quantity * int_price) as totalcost from tbl_stock;

---input
machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4


--output

 totalcost
-----------
  214015.5
(1 row)

select count(*) as total_no_product from tbl_stock;

--input
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4

--output
total_no_product
------------------
                6
(1 row)

select upper(vchr_name) from tbl_stock;

 upper
-----------
 MOUSE
 KEYBOARD
 MODEM
 MEMORY
 HEADPHONE
 MEMORY
(6 rows)

select round(int_price) from tbl_stock;

 round
-------
   502
   452
  1202
  1502
   752
  3502
(6 rows)


select  count(distinct vchr_name) as items from tbl_stock; -- this will count how much different items in vchr_name

 items
-------
     5
(1 row)

select vchr_name,int_price from tbl_stock where int_price= (select max(int_price)from tbl_stock);


----input
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4

----output

 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5
(1 row)

insert into tbl_classes(vchr_class_name,fk_int_dept_id) values('CS100',1),('CS101',1),('CS102',1),('CS103',1),('EC200',2),('CC300',3),('AT400',4);
insert into tbl_enrollment(int_count,fk_int_class_id) values(40,1),(15,2),(10,3),(12,4),(60,2),(14,6),(200,7);

SELECT sum(int_count) as total_enrollment from tbl_enrollment;

----------input
 pk_int_enrollment_id | int_count | fk_int_class_id
----------------------+-----------+-----------------
                    8 |        40 |               1
                    9 |        15 |               2
                   10 |        10 |               3
                   11 |        12 |               4
                   12 |        60 |               2
                   13 |        14 |               6
                   14 |       200 |               7


------output
total_enrollment
------------------
              351
(1 row)

select count(distinct vchr_class_name) as no_of_classes from tbl_classes;

-----input

 pk_int_class_id | vchr_class_name | fk_int_dept_id
-----------------+-----------------+----------------
               1 | CS100           |              1
               2 | CS101           |              1
               3 | CS102           |              1
               4 | CS103           |              1
               5 | EC200           |              2
               6 | CC300           |              3
               7 | AT400           |              4

----output
 no_of_classes
---------------
             7
(1 row)

select concat(vchr_name,int_price) as product_price from tbl_stock;

----input
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4

------output

 product_price
----------------
 Mouse501.5
 Keyboard451.5
 Modem1201.5
 Memory1501.5
 Headphone751.5
 Memory3501.5
(6 rows)


create table tbl_student(
    enrl_no int,
    pk_roll_no int PRIMARY KEY,
    student_name varchar(100),
    city_name varchar(100),
    mobile bigint,
    dob date
);

insert into tbl_student (enrl_no,
    pk_roll_no,
    student_name,
    city_name,
    mobile,
    dob) values(11,2,'akhil','delhi',98756579,'1986-01-12');


    insert into tbl_student (enrl_no,
    pk_roll_no,
    student_name,
    city_name,
    mobile,
    dob) values(6,4,'maya','banglore',98734534,'1987-11-12'),(1,8,'anoop','banglore',93456535,'1990-12-22'),(20,1,'paul','cochin',96754555,'1991-03-13'),
    (3,5,'sandeep','delhi',84865644,'1993-06-14');

enrl_no | pk_roll_no | student_name | city_name |  mobile  |    dob
---------+------------+--------------+-----------+----------+------------
      20 |          1 | paul         | cochin    | 96754555 | 1991-03-13
       3 |          5 | sandeep      | delhi     | 84865644 | 1993-06-14
      11 |          2 | akhil        | delhi     | 98756579 | 1986-01-12
       6 |          4 | maya         | banglore  | 98734534 | 1987-11-12
       1 |          8 | anoop        | banglore  | 93456535 | 1990-11-22

create table tbl_grade(
    fk_roll_no int,
    course varchar,
    grade varchar,
    foreign key (fk_roll_no) references tbl_student(pk_roll_no)on delete cascade on update cascade
);

insert into tbl_grade(fk_roll_no,course,grade)values (2,'c','A'),(2,'java','B'),(1,'C','B'),(1,'java','A'),(4,'PHP','A'),
(4,'java','A'),(4,'C','B'),(8,'java','B'),(5,'PHP','A'),(5,'java','D');

fk_roll_no | course | grade
------------+--------+-------
          2 | c      | A
          2 | java   | B
          1 | C      | B
          1 | java   | A
          4 | PHP    | A
          4 | java   | A
          4 | C      | B
          8 | java   | B
          5 | PHP    | A
          5 | java   | D

select student_name,course,grade from tbl_student inner join tbl_grade on pk_roll_no = fk_roll_no where grade='A';

 student_name | course | grade
--------------+--------+-------
 paul         | java   | A
 sandeep      | PHP    | A
 akhil        | c      | A
 maya         | java   | A
 maya         | PHP    | A

 select count(distinct student_name) from tbl_student inner join tbl_grade on pk_roll_no = fk_roll_no where grade = 'B';

  count
-------
     4
(1 row)


select student_name,pk_roll_no,count(distinct course) as no_of_courses from tbl_student inner join tbl_grade on pk_roll_no = fk_roll_no group by pk_roll_no;

student_name | pk_roll_no | no_of_courses
--------------+------------+---------------
 paul         |          1 |             2
 akhil        |          2 |             2
 maya         |          4 |             3
 sandeep      |          5 |             2
 anoop        |          8 |             1


select student_name from tbl_student inner join tbl_grade on pk_roll_no = fk_roll_no where city_name = 'banglore' and course = 'java';

-------------input-------
enrl_no | pk_roll_no | student_name | city_name |  mobile  |    dob
---------+------------+--------------+-----------+----------+------------
      20 |          1 | paul         | cochin    | 96754555 | 1991-03-13
       3 |          5 | sandeep      | delhi     | 84865644 | 1993-06-14
      11 |          2 | akhil        | delhi     | 98756579 | 1986-01-12
       6 |          4 | maya         | banglore  | 98734534 | 1987-11-12
       1 |          8 | anoop        | banglore  | 93456535 | 1990-11-22


fk_roll_no | course | grade
------------+--------+-------
          2 | c      | A
          2 | java   | B
          1 | C      | B
          1 | java   | A
          4 | PHP    | A
          4 | java   | A
          4 | C      | B
          8 | java   | B
          5 | PHP    | A
          5 | java   | D


---------------output-----------
machinetest=# select student_name from tbl_student inner join tbl_grade on pk_roll_no = fk_roll_no where city_name = 'banglore' and course = 'java';
 student_name
--------------
 maya
 anoop
(2 rows)

select student_name,course from tbl_student inner join tbl_grade on pk_roll_no = fk_roll_no where student_name like 'a%';

 student_name | course
--------------+--------
 akhil        | c
 akhil        | java
 anoop        | java


SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),dob)), '%Y') + 0 AS age FROM tbl_student;


select student_name, convert(varchar,dob,6) from tbl_student;



