#날짜 : 2024/01/08
#이름 : 김형민
#내용 : 제5장 데이터베이스 개체
########################
# 인덱스
########################

#실습 5-1 
show index from `user1`;      ##인덱스 조회
show index from `user2`;
show index from `user3`;

#실습 5-2
create index `idx_user1_uid` on `user1`(`uid`);  ##인덱스 생성
analyze table `user1`;

#실습 5-3
drop index idx_user1_uid on `user1`; ##인덱스 삭제

########################
# 뷰
########################

#실습 5-4
create view `vw_user1` as (select `name`,`hp`,`age` from `user1`);
create view `vw_user4_age_under30` as (select * from `user4` where `age` < 30);
create view `vw_member_with_sales` as (
select
	a.`uid` as `직원아이디`,
    b.`name` as `직원이름`,
    b.`pos` as  `직급`,
    c.`name` as `부서명`,
    a.`year` as `매출년도`,
    a.`month` as  `월`,
    a.`sale` as `매출액`
    from `sales` as a
    join `member`as b on a.uid = b.uid
    join `department` as c on b.dep = c.depno
    );

#실습 5-5
select * from `vw_user1`;
select * from `vw_user4_age_under30`;
select * from `vw_member_with_sales`;

#실습 5-6
drop view `vw_sser4_age_under30`;
drop view `vw_user1`;

########################
# 저장 프로시저
########################

#실습 5-7
delimiter $$
create procedure proc_test1()  ##프로시저 생성
begin
	select * from `member`;
    select * from `department`;
end $$
delimiter ;

call proc_test1(); ##프로시저 호출

#실습 5-8
delimiter $$
create procedure proc_test2(in _username varchar(10))
begin
	select * from `member` where `name`= _username;
end $$

delimiter ;

call proc_test2('김유신');

delimiter $$
	create procedure proc_test3(in_pos varchar(10), in_dep tinyint)
    begin
		select * from `member` where `pos`=_pos and `dep` =_dep;
    end $$
delimiter ;

call proc_test3('차장',101);

delimiter $$
	create procedure proc_test4(in_pos varchar(10), out _count int)
    begin
		select count(*) into _count from `member` where `pos`=_pos;
    end $$
delimiter ;

call proc_test4('대리', @_count);
select concat('_count : ', @_count)

#실습 5-9
delimiter $$
create procedure proc_test5(in _name varchar(10))
begin
	declare userid varchar(10);
    select`uid` into userid from `member` where `name` = _name;
    select * from `sales` where `uid`=userid;
end $$
delimiter ;

call proc_test5('김유신');

delimiter $$
create procedure proc_test6()
begin
	declare num1 int;
    declare num2 int;
    
    set num1 = 1;
    set num2 = 2;
    
    if(num1>num2) then
		select 'num1이 num2보다 크다.' as `결과2`;
	else 
		select 'num1이 num2보다 작다.' as `결과2`;
        end if;
end $$
delimiter ;

call proc_test6();

delimiter $$	
	create procedure proc_test7()
    begin
		declare sum int;
        declare num int;
        
        set sum = 0;
        set num = 1;
        
        while(num <= 10) do
			set sum = sum+num;
            set num = num + 1;
		end while;
        
        select sum as '부터 10까지 합계';
end $$
delimiter ;

call proc_test7();

#실습 5-10
delimiter $$
create procedure proc_test8()
begin
	declare total int default 0;
    declare price int;
    declare endofrow boolean default false;
    
    declare salesCursor cursor for
		select `sale` from `sales`;
	declare continue handler for not found set endOfRow = true;
    
    open salesCursor;
    
    cursor_loop: loop
		fetch salesCursor into price;
        
        if endofrow then
			leave cursor_loop;
		end if;
        
        set total = total + price;
	end loop;
    
    select total as '전체 합계';
    
    close salesCursor;
end $$
delimiter ;

drop procedure proc_test8;

call proc_test8();


########################
# 저장 함수
########################

#실습 5-11
delimiter $$
	create FUNCTION func_test1(_userid varchar(10)) RETURNS INT
    BEGIN
		DECLARE total INT;
        SELECT SUM(`sale`) INTO total from `sales` where `uid`=_userid;
        return total;
end $$
delimiter ;

select func_test1('a101');

delimiter $$
	create function func_test2(_sale Int) returns double
    begin
		declare bonus double;
        
        if(_sale >= 100000) then
			set bonus = _sale * 0.1;
		else
			set bonus = _sale * 0.05;
		end if;
        
	return bonus;
    end $$
delimiter ;

select `uid`,`year`,`month`,`sale`,func_test2(`sale`) as `bonus` from `sales`;