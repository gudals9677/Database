# 날짜 : 2024/01/12
# 이름 : 김형민
# 내용 : college 모델링 실습

#실습 6-8

insert into `student` values (20201011,'김유신','010-1234-1001',3,'경남 김해시');
insert into `student` values (20201122,'김춘추','010-1234-1002',3,'경남 경주시');
insert into `student` values (20210213,'장보고','010-1234-1003',2,'전남 완도군');
insert into `student` values (20210324,'강감찬','010-1234-1004',2,'서울 관악구');
insert into `student` values (20220415,'이순신','010-1234-1005',1,'서울 종로구');

insert into `lecture` values (101,'컴퓨터과학 개론',2,40,'본301');
insert into `lecture` values (102,'프로그래밍 언어',3,52,'본302');
insert into `lecture` values (103,'데이터베이스',3,56,'본303');
insert into `lecture` values (104,'자료구조',3,60,'본304');
insert into `lecture` values (105,'운영체제',3,52,'본305');

insert into `register` values ('20220415',101,60,30,null,null);
insert into `register` values('20210324',103,54,36,null,null);
insert into `register` values('20201011',105,52,28,null,null);
insert into `register` values('20220415',102,38,40,null,null);
insert into `register` values('20210324',104,56,32,null,null);
insert into `register` values('20210213',103,48,40,null,null);

#실습 6-9
select `stdno`,`stdname`,`stdhp`,`stdyear` from `student`
as a left join `register` as b on a.stdno = b.regstdno where `regstdno` is null;
    
select `regstdno`,`reglecno`,`regmidscore`,`regfinalscore`,
`regFinalScore`,`regTotalScore`,`regmidscore` + `regfinalscore` as '합',
case
	when(`regmidscore` + `regfinalscore` >=90) then 'A'
	when(`regmidscore` + `regfinalscore` >=80) then 'B'
	when(`regmidscore` + `regfinalscore` >=70) then 'C'
	when(`regmidscore` + `regfinalscore` >=60) then 'D'
    else 'F'
    end as '등급' from `register`;


select `stdno`,`stdname`,`stdyear`,`lecname`,
`regMidscore`,`regFinalscore`,`regTotalscore`,`regGrade`
from `student` as a join `register` as b on 
a.stdno = b.regstdno
join `lecture` as c on b.reglecno = c.lecno where `stdyear` = 2;

