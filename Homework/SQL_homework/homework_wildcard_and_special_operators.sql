use W3Resource

--1
select salesman_id, name, city, commission from Inventory.Salesman
where city in ('Paris', 'Rome')

--3
select salesman_id, name, city, commission from Inventory.Salesman
where city in ('Paris', 'Rome')

--3
select salesman_id, name, city, commission from Inventory.Salesman
where city not in ('Paris', 'Rome')


--4
select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
where customer_id in (3007,3008,3009)

--5
select salesman_id, name, city,  commission from Inventory.Salesman
where commission between 0.12 and 0.14

--6
select ord_no, purch_amt, ord_date, customer_id,  salesman_id from Inventory.Orders
where (purch_amt between 500 and 4000) and (purch_amt not in (948.50, 1983.43))

--7 
select  salesman_id, name, city, commission from Inventory.Salesman
where name>'A' and name<'l'

--8

select  salesman_id, name, city, commission from Inventory.Salesman
where name>'A' or name<'M'

--9
select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
where cust_name like 'B%'

--10
select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
where cust_name like '%n'


--11
select salesman_id, name, city, commission from Inventory.Salesman
where name like 'N__l%'

--12
create table testtable2(col1 varchar(200))
insert into testtable2 values 
('A001/DJ-402\\44_/100/2015'),
('A001_\\DJ-402\\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\\44'),
('A001/DJ_402\\44\\2015'),
('A001/DJ-402%45\\2015/200'),
('A001/DJ_402\\45\\2015%100'),
('A001/DJ_402%45\\2015/300'),
('A001/DJ-402\\44');

select * from testtable2
where col1 like '%\_%' escape '\'

--13
select * from testtable2
where col1 not like '%\_%' escape '\'

--14
select * from testtable2
where col1 like '%//%' escape '/'

--15
select * from testtable2
where col1 not like '%//%' escape '/'

--16
select * from testtable2
where col1 like '%/_//%' escape '/'

--17
select * from testtable2
where col1 not like '%/_//%' escape '/'

--18
select * from testtable2
where col1 like '%/%%' escape '/'

--19
select * from testtable2
where col1 not like '%/%%' escape '/'

--20
select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
where grade is null

--21
select customer_id, cust_name, city, grade, salesman_id from Inventory.Customer
where grade is not null

--22
select emp_idno, emp_fname, emp_lname, emp_dept from emp_details
where emp_lname like 'D%'






















