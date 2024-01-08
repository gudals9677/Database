#날짜 : 2024/01/08
#이름 : 김형민
#내용 : 교재 Ch03-3

#손코딩 p141
create table hongong1(
	`toy_id` int,
    `toy_name` char(4),
    `age` int);
insert into hongong1(toy_id,toy_name) values(2,'버즈');
insert into hongong1(toy_name,age,toy_id) values('제시',20,3);    
select * from `hongong1`;
#손코딩 p142
create table hongong2(
	toy_id int auto_increment primary key,
    toy_name char(4),
    age int);
    
insert into hongong2 values(null, '보핍', 25);
insert into hongong2 values(null, '슬링키', 22);
insert into hongong2 values(null, '렉스', 21);
select * from hongong2;
select last_insert_id();

#손코딩 p143
alter table hongong2 auto_increment=100;
insert into hongong2 values (null, '재남', 35);
select * from hongong2;

create table hongong3(
	toy_id int auto_increment primary key,
    toy_name char(4),
    age int);
    
alter table hongong3 auto_increment=1000;
set @@auto_increment_increment=3;
select * from hongong3;

#손코딩 p144
insert into hongong3 values(null,'토마스',20);
insert into hongong3 values(null,'제임스',23);
insert into hongong3 values(null,'고든',25);
select * from hongong3;

#손코딩 p145
select count(*) from world.city;
desc world.city;
select * from world.city limit 5;

#손코딩 p146
create table city_popul (
	city_name char(35),
    population int);
    
insert into city_popul
	select `Name`, `population` from world.city;
    
#손코딩 p147
update city_popul
	set city_name = '서울' where city_name = 'Seoul';
    select * from city_popul where city_name = '서울';
    
#손코딩 p148
update city_popul set city_name = '뉴옥', population = 0 where city_name = 'new york';
select * from city_popul where city_name = 'new york';

update city_popul
	set city_name = '서울';
#손코딩 p149
update city_popul
	set population = population /10000;
    select * from city_popul limit 5;
    
delete from city_popul
	where city_name like 'new%';
#손코딩 p150
delete from city_popul
	where city_name like 'new%'
		limit 5;
        
#손코딩 p151
create table big_table1 (select * from world.city, sakila.country);
create table big_table2 (select * from world.city, sakila.country);
create table big_table3 (select * from world.city, sakila.country);
select count(*) from big_table1;

delete from big_table1;
drop table big_table2;
truncate table big_table3;
select * from big_table3;
