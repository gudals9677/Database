#날짜 : 2024/01/02
#이름 : 김형민
#내용 : 2장 SQL 기초

#실습 2-1
CREATE TABLE `User1`(
	`uid`	varchar(10),
    `name`	varchar(10),
    `hp`	CHAR(13),
    `age`	INT
    );
#실습 2-2
insert into `User1` values ('A101', '김유신', '010-1234-1111',25);
insert into `User1` values ('A102', '김춘추', '010-1234-2222',23);
insert into `User1` values ('A103', '장보고', '010-1234-3333',32);
insert into `User1` (`uid`, `name`, `age`) values ('A104','강감찬',45);
insert into `User1` SET `uid`='A105', `name`='이순신', `hp`='010-1234-5555';
#실습 2-3
select * from `User1`;
select * from `User1` where `uid`='A101';
select * from `User1` where `name`='김춘추';
select * from `User1` where `age` < 30;
select * from `User1` where `age` >=30;
select `uid`,`name`,`age` from `user1`;
#실습 2-4
update `User1` set `hp`='010-1234-4444' where `uid`='A104';
update `user1` set `age`=51 where `uid`='A105';
update `user1` set `hp`='010-1234-1001', `age`=27 where `uid`='A101';
#실습 2-5
delete from `user1` where `uid`='A101';
delete from `user1` where `uid`='A102' AND `age`=25;
delete from `user1` where `age` >= 30;
select * from `user1`;
delete from `user1` where `uid`='A102';
select * from `user1`;
#실습 2-6
alter table `user1` add `gender` tinyint;
select * from `user1`;
alter table `user1` add `birth` char(10) after `name`;
select * from `user1`;
alter table `user1` modify `gender` char(1);
select * from `user1`;
alter table `user1` modify `age` tinyint;
alter table `user1` drop `gender`;
select * from `user1`;
#실습 2-7
create table `User1Copy` like `user1`;
select * from `user1copy`;
insert into `user1copy` select * from `user1`;
select * from `user1copy`;
#실습 2-8
create table `Tb1User`(
	`uid` varchar(10),
    `name` varchar(10),
    `hp` char(13),
    `age` int,
    `addr` varchar(10)
    );
    
insert into `tb1user` set `uid`='p101', `name`='김유신',`hp`='010-1234-1001',`age`=25,`addr`='경남 김해시';
insert into `tb1user` set `uid`='p102', `name`='김춘추',`hp`='010-1234-1002',`age`=23,`addr`='경남 경주시';
insert into `tb1user` set `uid`='p103', `name`='장보고',`age`='31',`addr`='전남 완도군';
insert into `tb1user` set `uid`='p104', `name`='강감찬',`addr`='서울시 중구';
insert into `tb1user` set `uid`='p105', `name`='이순신',`hp`='010-1234-1005',`age`='50';

create table `Tb1Product` (
	`prod_no` int,
    `prod_name` varchar(10),
    `prod_price` int,
    `prod_stock` int,
    `prod_company` varchar(10),
    `prod_date` date
);

insert into `tb1product` values ('1001','냉장고', 800000,'25','LG전자','2022-01-06');
insert into `tb1product` values ('1002','노트북', 1200000,'120','삼성전자','2022-01-07');
insert into `tb1product` values ('1003','모니터',350000,'35','LG전자','2023-01-13');
insert into `tb1product` values ('1004','세탁기',1000000,'80','삼성전자','2021-01-01');
insert into `tb1product` values ('1005','컴퓨터',1500000,'20','삼성전자','2023-10-01');
insert into `tb1product` set `prod_no`='1006',`prod_name`='휴대폰',`prod_price`='950000',`prod_stock`='102';
select *from `tb1product`;
#실습 2-9

