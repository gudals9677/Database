#날짜 : 2024/01/11
#이름 : 김형민
#내용 : SQL 연습문제4

#실습 4-1
create database BookStore;
create user 'bookstore'@'%' identified by '1234';
grant all privileges on BookStore.*TO 'bookstore'@'%';
grant all privileges on BookStore.*TO 'gudals'@'%';
flush privileges;

#실습 4-2
create table Customer (
	`custId`	int auto_increment primary key,
    `name`	varchar(10) not null,
    `address`	varchar(20) default null,
    `phone`	varchar(13) default null
    );
    select * from customer;

create table Product (
	`bookId`		int primary key,
    `bookName`	varchar(20) not null,
    `publisher`	varchar(20) not null,
    `price`		int default null
    );
    drop table `customer`;
create table `Order` (
	`orderId`	int auto_increment primary key,
    `custId`	int not null,
    `bookId`	int not null,
    `salePrice`	int not null,
    `orderDate`	date not null
    );

#실습 4-3
insert into customer values(1,'박지성','영국 맨체스타','000-5000-0001');
insert into customer values(2,'김연아','대한민국 서울','000-6000-0001');
insert into customer values(3,'장미란','대한민국 강원도','000-7000-0001');
insert into customer values(4,'추신수','미국 클리블랜드','000-8000-0001');
insert into customer (custid,name,address) values (5,'박세리','대한민국 대전');

insert into Product values(1,'축구의 역사','굿스포츠',7000);
insert into Product values(2,'축구아는 여자','나무수',13000);
insert into Product values(3,'축구의 이해','대한미디어',22000);
insert into Product values(4,'골프 바이블','대한미디어',35000);
insert into Product values(5,'피겨 교본','굿스포츠',8000);
insert into Product values(6,'역도 단계별기술','굿스포츠',6000);
insert into Product values(7,'야구의 추억','이상미디어',20000);
insert into Product values(8,'야구를 부탁해','이상미디어',13000);
insert into Product values(9,'올림픽 이야기','삼성당',7500);
insert into Product values(10,'Olympic Champions','Pearson',13000);

select * from product;

insert into `Order` values(1,1,1,6000,'2014-07-01');
insert into `Order` values(2,1,3,21000,'2014-07-03');
insert into `Order` values(3,2,5,8000,'2014-07-03');
insert into `Order` values(4,3,6,6000,'2014-07-04');
insert into `Order` values(5,4,7,20000,'2014-07-05');
insert into `Order` values(6,1,2,12000,'2014-07-07');
insert into `Order` values(7,4,8,13000,'2014-07-07');
insert into `Order` values(8,3,10,12000,'2014-07-08');
insert into `Order` values(9,2,10,7000,'2014-07-09');
insert into `Order` values(10,3,8,13000,'2014-07-10');

select * from `order`;

#실습 4-4
select custId,name,address from `customer`;

#실습 4-5
select `bookname`,`price` from `product`;

#실습 4-6
select price,bookname from product;

#실습 4-7
select bookid,bookname,publisher,price from product;

#실습 4-8
select publisher from product;

#실습 4-9
select distinct publisher from product;

#실습 4-10
select * from product where price >=20000;

#실습 4-11
select * from product where price <=20000;

#실습 4-12
select * from product where price between 10000 and 20000;

#실습 4-13
select bookid,bookname,price from product where price between 15000 and 30000;

#실습 4-14
select * from product where bookid in(2,3,5);

#실습 4-15
select * from product where bookid % 2 = 0 ;
select * from product where mod(bookid,2) = 0;

#실습 4-16
select * from customer where `name` like '박%';

#실습 4-17
select * from customer where address like '대한민국%';

#실습 4-18
select * from customer where phone is not null;

#실습 4-19
select * from product where publisher in ('굿스포츠' , '대한미디어');

#실습 4-20
select publisher from product where bookname = '축구의 역사';

#실습 4-21
select publisher from product where bookname like '축구%';

#실습 4-22
select * from product where bookname like '_구%';

#실습 4-23
select * from product where bookname like '축구%' and price >=20000;

#실습 4-24
select * from product order by bookname;

#실습 4-25
select * from product order by price, bookname;

#실습 4-26
select * from product order by price desc,publisher;

#실습 4-27
select * from product order by price desc limit 3;

#실습 4-28
select * from product order by price limit 3;
#실습 4-29
select sum(saleprice) as '총판매액' from `order`;

#실습 4-30
select sum(saleprice) as '총판매액' ,
		avg(saleprice) as '평균값',
        min(saleprice) as '최저가',
        max(saleprice) as '최고가' 
        from `order`;

#실습 4-31
select count(*) as '판매건수' from `order`;

#실습 4-32
update product set bookname='농구의 추억' where bookname='야구의 추석';
update product set bookname='농구를 부탁해' where bookname='야구를 부탁해';
select * from product;
select bookid, replace(bookname,'야구','농구') as bookname , publisher,price from product;

#실습 4-33
select custId, count(bookid) as '수량' from `Order` where saleprice >= 8000 group by custid having 2;
select custId, count(*) as '수량' from `order` where saleprice >= 8000 group by custid having  '수량' >= 2 order by custid;

#실습 4-34
select * from customer as a join `order` as b on a.custid = b.custid;
select * from customer join `order` using(custid);
select * from customer as a, `order` as b where a.custid = b.custid;

#실습 4-35
select * from customer as a join `order` as b on a.custid = b.custid order by a.custid;

#실습 4-36 
select `name`,`saleprice`
	from `customer` as a join
    `order` as b on a.custid = b.custid;
#실습 4-37
select `name`,sum(saleprice)
	from `customer` as a join
    `order` as b on a.custid = b.custid
    group by `name` order by `name`;

#실습 4-38
select `name`,`bookname`
	from customer as a join
    `order` as b on a.custid = b.custid
    join `product` as c on b.orderid = c.bookid;

#실습 4-39
select `name`,`bookname`
	from customer as a join
    `order` as b on a.custid = b.custid
    join `product` as c on b.orderid = c.bookid
    where price = 20000;
#실습 4-40
select 
	*    
FROM `Customer` AS a 
LEFT JOIN `Order` AS b ON a.custId = b.custId;

#실습 4-41
select sum(saleprice) as '총매출'
from customer as a join `order` as b on
a.custid = b.custid where `name` = '김연아';
#실습 4-42
select bookname from product order by price desc limit 1;
#실습 4-43
select `name` from customer
	where custid not in(select custid from `order`);


#실습 4-44
insert into `product` set bookid =11,
bookname='스포츠의학',
publisher = '한솔의학서적';

#실습 4-45
UPDATE `Customer` SET `address`='대한민국 부산' WHERE `custId`=5;

#실습 4-46

DELETE FROM `Customer` WHERE `custId`=5;
