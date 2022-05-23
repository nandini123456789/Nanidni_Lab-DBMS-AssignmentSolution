create database ecommerce;
USE ecommerce;

-- create table Supplier
create table Supplier (
SUPP_ID INT,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL,
primary key(SUPP_ID));

-- create table Customer
create table Customer (
CUS_ID INT, 
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY VARCHAR(30) NOT NULL,
CUS_GENDER CHAR,
PRIMARY KEY(CUS_ID)
);

-- create table Category
create table Category (
CAT_ID INT,
CAT_NAME VARCHAR(20) NOT NULL,
primary key(cat_id));

-- create table product
create table product (
PRO_ID INT,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
PRO_DESC VARCHAR(60),
CAT_ID INT,
primary key(pro_id),
foreign Key(cat_id) references Category(cat_id) );

-- create table supplier_pricing
create table supplier_pricing (
PRICING_ID INT,
PRO_ID INT,
SUPP_ID INT,
SUPP_PRICE INT DEFAULT 0,
primary key(PRICING_ID),
foreign Key(PRO_ID) references product(pro_id) ,
foreign Key(SUPP_ID) references supplier(supp_id));

-- create table order
create table ordertable (
ORD_ID INT,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL,
CUS_ID INT,
PRICING_ID INT,
primary key(ORD_ID),
foreign Key(CUS_ID) references Customer(cus_id),
foreign Key(PRICING_ID) references supplier_pricing(pricing_id));

-- create table rating
create table rating (
RAT_ID INT,
ORD_ID INT,
RAT_RATSTARS INT NOT NULL,
primary key(RAT_ID),
foreign Key(ORD_ID) references ordertable(ord_id));

-- insert in suppliers
insert into supplier (SUPP_ID ,SUPP_NAME, SUPP_CITY , SUPP_PHONE) values ('1', 'Rajesh Retails', 'Delhi', '1234567890');
insert into supplier (SUPP_ID ,SUPP_NAME, SUPP_CITY , SUPP_PHONE) values ('2', 'Appario Ltd.', 'Mumbai', '2589631470');
insert into supplier (SUPP_ID ,SUPP_NAME, SUPP_CITY , SUPP_PHONE) values ('3', 'Knome products', 'Banglore', '9785462315');
insert into supplier (SUPP_ID ,SUPP_NAME, SUPP_CITY , SUPP_PHONE) values ('4', 'Bansal Retails', 'Kochi', '8975463285');
insert into supplier (SUPP_ID ,SUPP_NAME, SUPP_CITY , SUPP_PHONE) values('5', 'Mittal Ltd.', 'Lucknow', '7898456532');

-- insert into customers
insert into customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values ('1', 'AAKASH', '9999999999', 'DELHI', 'M');
insert into customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values ('2', 'AMAN', '9785463215', 'NOIDA', 'M');
insert into customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values ('3', 'NEHA', '9999999999', 'MUMBAI', 'F');
insert into customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values ('4', 'MEGHA', '9994562399' ,'KOLKATA', 'F');
insert into customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) values ('5', 'PULKIT', '7895999999', 'LUCKNOW', 'M');

-- insert values in category
insert into category (CAT_ID, CAT_NAME) values ('1', 'BOOKS');
insert into category (CAT_ID, CAT_NAME) values ('2', 'GAMES');
insert into category (CAT_ID, CAT_NAME) values ('3', 'GROCERIES');
insert into category (CAT_ID, CAT_NAME) values ('4', 'ELECTRONICS');
insert into category (CAT_ID, CAT_NAME) values ('5', 'CLOTHES');

-- insert into product
insert into product values('1', 'GTA V' ,'Windows 7 and above with i5 processor and 8GB RAM', '2');
insert into product values('2', 'TSHIRT' ,'SIZE-L with Black, Blue and White variations', '5');
insert into product values('3', 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', '4');
insert into product values('4', 'OATS', 'Highly Nutritious from Nestle', '3');
insert into product values('5', 'HARRY POTTER' ,'Best Collection of all time by J.K Rowling', '1');
insert into product values('6', 'MILK', '1L Toned MIlk' ,'3');
insert into product values('7', 'Boat Earphones', '1.5Meter long Dolby Atmos', '4');
insert into product values('8', 'Jeans', 'Stretchable Denim Jeans with various sizes and color' ,'5');
insert into product values('9', 'Project IGI', 'compatible with windows 7 and above', '2');
insert into product values('10' ,'Hoodie', 'Black GUCCI for 13 yrs and above', '5');
insert into product values('11', 'Rich Dad Poor Dad', 'Written by RObert Kiyosaki' ,'1');
insert into product values('12', 'Train Your Brain', 'By Shireen Stephen' ,'1');

-- insert values to supplier_pricing table
insert into supplier_pricing values ('1', '1', '2', '1500');
insert into supplier_pricing values ('2', '3', '5', '30000');
insert into supplier_pricing values ('3', '5', '1', '3000');
insert into supplier_pricing values ('4', '2', '3', '2500');
insert into supplier_pricing values ('5', '4', '1', '1000');
insert into supplier_pricing values ('9', '7', '4', '1450');
insert into supplier_pricing values ('7', '8', '3', '789');
insert into supplier_pricing values ('8', '9', '3', '31000');
insert into supplier_pricing values ('14', '6', '2', '99');
insert into supplier_pricing values ('6', '12', '5', '780');

-- insert into ordertable
insert into ordertable values ('101', '1500', '2021-10-06' ,'2' ,'1');
insert into ordertable values ('102', '1000', '2021-10-12' ,'3', '5');
insert into ordertable values ('103', '30000', '2021-09-16', '5' ,'2');
insert into ordertable values ('104', '1500', '2021-10-05' ,'1', '1');
insert into ordertable values ('105', 'categorycategory3000', '2021-08-16' ,'4' ,'3');
insert into ordertable values ('106', '1450', '2021-08-18', '1', '9');
insert into ordertable values ('107', '789', '2021-09-01' ,'3' ,'7');
insert into ordertable values ('108', '780', '2021-09-07' ,'5' ,'6');
insert into ordertable values ('109', '3000', '2021-00-10', '5', '3');
insert into ordertable values ('110', '2500', '2021-09-10' ,'2' ,'4');
insert into ordertable values ('111', '1000', '2021-09-15', '4', '5');
insert into ordertable values ('112', '789' ,'2021-09-16' ,'4' ,'7');
insert into ordertable values ('113', '31000', '2021-09-16', '1', '8');
insert into ordertable values ('114', '1000', '2021-09-16', '3' ,'5');
insert into ordertable values ('115', '3000', '2021-09-16' ,'5', '3');
insert into ordertable values ('116', '99' ,'2021-09-17' ,'2' ,'14');

-- insert into rating
insert into rating values ('1' ,'101', '4');
insert into rating values ('2', '102' ,'3');
insert into rating values ('3', '103', '1');
insert into rating values ('4' ,'104', '2');
insert into rating values ('5', '105', '4');
insert into rating values ('6', '106', '3');
insert into rating values ('7' ,'107', '4');
insert into rating values ('8', '108', '4');
insert into rating values ('9', '109' ,'3');
insert into rating values ('10' ,'110' ,'5');
insert into rating values ('11', '111', '3');
insert into rating values ('12', '112', '4');
insert into rating values ('13', '113' ,'2');
insert into rating values ('14', '114' ,'1');
insert into rating values ('15', '115', '1');
insert into rating values ('16', '116' ,'0');

-- Display the total number of customers based on gender who have placed orders of worth at least Rs.3000
select count(*) as total ,cus_gender from customer where cus_id in (select cus_id from ordertable where ord_amount>=3000)  group by cus_gender;

-- Display all the orders along with product name ordered by a customer having Customer_Id=2
select ord_id , ord_date, ord_amount, pro_name from ordertable
inner join supplier_pricing
on supplier_pricing.pricing_id=ordertable.pricing_id
inner join product
on supplier_pricing.pro_id=product.pro_id
where cus_id=2;

-- Display the Supplier details who can supply more than one product.
select supplier.supp_id, supp_name, supp_city, supp_phone from (select supp_id from supplier_pricing  group by supp_id having count(pro_id) >1) as tb 
inner join supplier
on supplier.supp_id=tb.supp_id;

-- Find the least expensive product from each category and print the table with category id, name, product name and price of the product
select tb.cat_id, tb.cat_name, tb.pro_name, min(tb.supp_price) 
from 
    (select category.cat_id, category.cat_name, product.pro_name, supplier_pricing.supp_price from supplier_pricing 
	 inner join product
	 on product.pro_id=supplier_pricing.pro_id
     inner join category 
	 on category.cat_id=product.cat_id) as tb 
group by tb.cat_id;

-- Display the Id and Name of the Product ordered after “2021-10-05”
select supplier_pricing.pro_id, product.pro_name from ordertable 
inner join supplier_pricing
on supplier_pricing.pricing_id=ordertable.pricing_id
inner join product
on product.pro_id=supplier_pricing.pro_id
where ord_date >='2021-10-05' group by supplier_pricing.pro_id;

-- Display customer name and gender whose names start or end with character 'A'.
select cus_name, cus_gender from customer where cus_name like'A%' or cus_name like '%A';

-- Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent
-- Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.
DELIMITER //
CREATE PROCEDURE rating_query()
begin
select supplier.supp_id, supplier.supp_name, rating.rat_ratstars, 
CASE 
when (rating.rat_ratstars) >=5
then "excellent"
when (rating.rat_ratstars) <5 and (rating.rat_ratstars)>=4
then "good Service"
when (rating.rat_ratstars)<4 and (rating.rat_ratstars)>2
then "Average service"
else "poorservice"
end as Type_of_Service  from rating 
inner join ordertable
on ordertable.ord_id=rating.ord_id
inner join supplier_pricing
on supplier_pricing.pricing_id= ordertable.pricing_id
inner join supplier
on supplier.supp_id= supplier_pricing.supp_id ;
end //
DELIMITER ;

call rating_query()