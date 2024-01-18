#날짜 : 2024/01/18
#이름 : 김형민
#내용 : 8장 트랜잭션과 병행 제어alter

#실습 8-1
start transaction;
select * from `bank_account`;
update `bank_account` set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';
    
update `bank_account` set `a_balance` = `a_balance` + 10000
	where `a_no` = '101-11-1003';
commit;
select * from `bank_account`;

#실습 8-2
start transaction;
select * from `bank_account`;
update `bank_account` set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';
    
update `bank_account` set `a_balance` = `a_balance` + 10000
	where `a_no` = '101-11-1003';
    
rollback;

#실습 8-3
select @@autocommit;
set autocommit=0;
select * from `bank_account`;
update `bank_account` set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';
select * from `bank_account`;

#실습 8-4 lock&unlock 병행제어 실습
select * from `bank_account`;

start transaction;

update `bank_account` set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';

commit;
    