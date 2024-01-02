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

#실습 2-6

#실습 2-7

#실습 2-8

#실습 2-9

