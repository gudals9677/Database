#날짜 : 2024/01/02
#이름 : 김형민
#내용 : 2장 SQL 기초

#실습 2-1
create table `user1` (
	`uid` varchar(10),
    `name` varchar(10),
    `hp` char(13),
    `age` int
    );
#실습 2-2
insert into `user1` values('A101','김유신','010-1234-1111',25);
insert into `user1` values('A102','김춘추','010-1234-2222',23);
insert into `user1` values('A103','장보고','010-1234-3333',32);
insert into `user1` (`uid`,`name`,`age`) values('A104','강감찬',45);
insert into `user1` set `uid`='A105',`name`='이순신',`hp`='010-1234-5555';
#실습 2-3
select * from `user1`;
select * from `user1` where `uid`='A101';
select * from `user1` where `name`='김춘추';
select * from `user1` where `age` < 30;
select * from `user1` where `age` > 30;
select `uid`,`name`,`age` from `user1`;
#실습 2-4
update `user1` set `hp`='010-1234-4444' where `uid`='A104';
update `user1` set `age`=51 where `uid`='A105';
update `user1` set `hp`='010-1234-1001',`age`=27 where `uid`='A101';
#실습 2-5
delete from `user1` where `uid`='A101';
delete from `user1` where `uid`='A102' AND `age`=25;
delete from `user1` where `age` >=30;
#실습 2-6
alter table `user1` add `gender` tinyint;
alter table `user1` add `birth` char(10) after `name`;
alter table `user1` modify `gender` char(1);
alter table `user1` modify `age` tinyint;
alter table `user1` drop `gender`;
#실습 2-7
create table `user1copy` like `user1`;
insert into `user1copy` select * from `user1`;
select * from `user1copy`;
#실습 2-8
create table `Tb1user` (
	`user_id` varchar(10),
    `user_name` varchar(10),
    `user_hp` varchar(20),
    `user_age` int,
    `user_addr` varchar(10)
    );
insert into `tb1user` values('p101','김유신','010-1234-1101',25,'경남 김해시');
insert into `tb1user` values('p102','김춘추','010-1234-1002',23,'경남 경주시');
insert into `tb1user` (`user_id`,`user_name`,`user_age`,`user_addr`) values('p103','장보고',31,'전남 완도군');
insert into `tb1user` (`user_id`,`user_name`,`user_addr`) values ('p104','강감찬','서울시 중구');
insert into `tb1user` set `user_id`='p105',`user_name`='이순신',`user_hp`='010-1234-1005',`user_age`=50;

create table `Tb1Product`(
	`prod_no` int,
    `prod_name` varchar(10),
    `prod_price` int,
    `prod_stock` int,
    `prod_company` varchar(20),
    `prod_date` date);
    
    insert into `tb1product` values(1001,'냉장고',800000,25,'LG전자','2022-01-06');
    insert into `tb1product` values(1002,'노트북',1200000,120,'삼성전자','2022-01-07');
    insert into `tb1product` values(1003,'모니터',350000,35,'LG전자','2023-01-13');
    insert into `tb1product` values(1004,'세탁기',1000000,80,'삼성전자','2021-01-01');
    insert into `tb1product` values(1005,'컴퓨터',1500000,20,'삼성전자','2023-10-01');
    insert into `tb1product` set `prod_no`='1006',`prod_name`='휴대폰',`prod_price`='950000',`prod_stock`='102';
    select * from `tb1product`;
    alter table `tb1product` add `prdCode` int;
    update `tb1product` set `prdCode`=1006 where `prod_no`=1001;
#실습 2-9
select * from `tb1user`;
select `user_name` from `tb1user`;
select `user_name`,`user_hp` from `tb1user`;
select * from `tb1user` where `user_id` = 'p102';
select * from `tb1user` where `user_id` = 'p104' or `user_id`='p105';
select * from `tb1user` where `user_addr`='부산시 금정구';
select * from `tb1user` where `user_age` > 30;
select * from `tb1user` where `user_hp` is null;
update `tb1user` set `user_age`=42 where `user_id` = 'p104';
update `tb1user` set `user_addr`='부산시 진구' where `user_id` = 'p105';
delete from `tb1user` where `user_id`='p103';
select * from `tb1user`;

select * from `tb1product`;
select `prod_name` from `tb1product`;
select `prod_name`, `prod_company`,`prod_price` from `tb1product`;
select * from `tb1product` where `prod_company` = 'LG전자';
select * from `tb1product` where `prod_company` = '삼성전자';
update `tb1product` set `prod_company`='삼성전자',`prod_date`='2024-01-01' where `prdCode`=1006;

