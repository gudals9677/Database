#날짜 : 2024/01/03
#이름 : 김형민
#내용 : 4장 SQL 고급

#실습 4-1 ##직원 테이블
create table `member` (
	`uid`	varchar(10) primary key,
    `name`	varchar(10),
    `hp`	varchar(13),
    `pos`	varchar(10)default '사원',
    `dep`	int default NULL,
    `rdate`	datetime
    );
    select * from `member`;
drop table `member`;
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a101','박혁거세','010-1234-1001','부장',101,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a102','김유신','010-1234-1002','차장',101,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a103','김춘추','010-1234-1003','사원',101,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a104','장보고','010-1234-1004','대리',102,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a105','강감찬','010-1234-1005','과장',102,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a106','이성계','010-1234-1006','차장',103,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a107','정철','010-1234-1007','차장',103,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a108','이순신','010-1234-1008','부장',104,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a109','허균','010-1234-1009','부장',104,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a110','정약용','010-1234-1010','사원',105,'2020-11-19 11:39:48');   
insert into `member` (`uid`,`name`,`hp`,`pos`,`dep`,`rdate`)values('a111','박지원','010-1234-1011','사원',105,'2020-11-19 11:39:48');   

#실습 4-2 # 부서 테이블
create table `Department`(
	`depNo`	int primary key,
    `name`	varchar(10),
    `tel`	varchar(12)
    );
select * from `department`;
drop table `department`;
insert into `department` (`depNo`,`name`,`tel`)values(101,'영업1부','051-512-1001');
insert into `department` (`depNo`,`name`,`tel`)values(102,'영업2부','051-512-1002');
insert into `department` (`depNo`,`name`,`tel`)values(103,'영업3부','051-512-1003');
insert into `department` (`depNo`,`name`,`tel`)values(104,'영업4부','051-512-1004');
insert into `department` (`depNo`,`name`,`tel`)values(105,'영업5부','051-512-1005');
insert into `department` (`depNo`,`name`,`tel`)values(106,'영업지원부','051-512-1006');
insert into `department` (`depNo`,`name`,`tel`)values(107,'인사부','051-512-1007');

#실습 4-3 #매출 테이블
create table `sales` (
	`seq`	int primary key auto_increment,
    `uid`	varchar(10),
    `year`	year,
    `month`	int,
    `sale`	int
    );
drop table `sales`;
select * from `sales`;
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a101','2018',1,98100);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a102','2018',1,136000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a103','2018',1,80100);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a104','2018',1,78000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a105','2018',1,93000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a101','2018',2,23500);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a102','2018',2,126000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a103','2018',2,18500);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a105','2018',2,19000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a106','2018',2,53000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a101','2019',1,24000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a102','2019',1,109000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a103','2019',1,101000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a104','2019',1,53500);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a107','2019',1,24000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a102','2019',2,160000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a103','2019',2,101000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a104','2019',2,43000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a105','2019',2,24000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a106','2019',2,109000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a102','2020',1,201000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a104','2020',1,63000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a105','2020',1,74000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a106','2020',1,122000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a107','2020',1,111000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a102','2020',2,120000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a103','2020',2,93000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a104','2020',2,84000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a105','2020',2,180000);
insert into `sales` (`uid`,`year`,`month`,`sale`)values('a108','2020',2,76000);

#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1
#실습 4-1