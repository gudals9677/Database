
#학생
insert into `Students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`)
 values ('20101001',10,'P10101','정우성','760121-1234567','010-1101-7601','서울');
insert into `Students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`)
 values ('20101002',10,'P10101','이정재','750611-1234567','010-1102-7506','서울');
insert into `Students` values('20111011',11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into `Students` values('20111013',11,'P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
insert into `Students` values('20111014',11,'P11104','원빈','660912-1234567','010-2104-6609','one@naver.com','대전');
insert into `Students` values('21221010',22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into `Students` values('21231002',23,'P23102','고소영','840615-1234567','010-4101-8406','goso@naver.com','대구');
insert into `Students` values('22311011',31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@naver.com','대구');
insert into `Students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`)
 values ('22311014',31,'P31104','유재석','721128-1234567','010-6101-7211','부산');
 insert into `Students` (`stdno`,`depno`,`prono`,`stdname`,`stdjumin`,`stdhp`,`stdaddr`)
 values ('22401001',40,'P40101','강호동','920907-1234567','010-7103-9209','부산');
insert into `Students` values('22401002',40,'P40101','조인성','891209-1234567','010-7104-8912','join@naver.com','광주');
insert into `Students` values('22421003',42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

#학과
insert into `departments` values(10,'국어국문학과','051-510-1010');
insert into `departments` values(11,'영어영문학과','051-510-1011');
insert into `departments` values(20,'경영학과','051-510-1020');
insert into `departments` values(21,'경제학과','051-510-1021');
insert into `departments` values(22,'정치외교학과','051-510-1022');
insert into `departments` values(23,'사회복지학과','051-510-1023');
insert into `departments` values(30,'수학과','051-510-1030');
insert into `departments` values(31,'통계학과','051-510-1031');
insert into `departments` values(32,'생명과학과','051-510-1032');
insert into `departments` values(40,'기계공학과','051-510-1040');
insert into `departments` values(41,'전자공학과','051-510-1041');
insert into `departments` values(42,'컴퓨터공학과','051-510-1042');

#교수
insert into `professors` values('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into `professors` values('P10102',10,'계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
insert into `professors` values('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into `professors` values('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
insert into `professors` values('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into `professors` values('P22110',22,'장보고','780727-1234567','010-3301-1979','jangbg@hg.ac.kr','대구');
insert into `professors` values('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','queen@hg.ac.kr','대구');
insert into `professors` values('P31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into `professors` values('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into `professors` values('P40101',40,'아이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into `professors` values('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
insert into `professors` values('P42103',42,'송상현','750313-1234567','010-8191-1977','ssh@hg.ac.kr','광주');

#강좌
insert into `lectures` values('101001','P10101','대학 글쓰기',2,10,'본102');
insert into `lectures` values('101002','P10102','한국어음운론',3,30,'본102');
insert into `lectures` values('101003','P10102','한국현대문학사',3,30,'본103');
insert into `lectures` values('111011','P11103','중세영문학',3,25,'본201');
insert into `lectures` values('111012','P11104','영미시',3,25,'본201');
insert into `lectures` values('231110','P23102','사회복지학개론',1,8,'별관103');
insert into `lectures` values('311002','P31101','통계학의 이해',2,16,'별관303');
insert into `lectures` values('311003','P31104','기초 통계학',3,26,'별관303');
insert into `lectures` values('401019','P40101','기계역학',3,36,'공학관 102');
insert into `lectures` values('421012','P42103','데이터베이스',3,32,'공학관 103');

#수강
insert into `register` set `stdno` = '20101001',`lecno` = '101001', `prono`='P10101';
insert into `register` set `stdno` = '20101001',`lecno` = '101002', `prono`='P10102';
insert into `register` set `stdno` = '20111013',`lecno` = '111011', `prono`='P11103';
insert into `register` set `stdno` = '21231002',`lecno` = '231110', `prono`='P23102';
insert into `register` set `stdno` = '22401001',`lecno` = '401019', `prono`='P40101';
insert into `register` set `stdno` = '22401001',`lecno` = '421012', `prono`='P42103';
insert into `register` set `stdno` = '20101001',`lecno` = '101003', `prono`='P10102';
insert into `register` set `stdno` = '22421003',`lecno` = '311003', `prono`='P31104';
insert into `register` set `stdno` = '22421003',`lecno` = '421012', `prono`='P42103';
insert into `register` set `stdno` = '20111013',`lecno` = '111012', `prono`='P11104';

#실습 5-1

select `stdno`,`stdname`,`stdhp`,a.`depno`,`depname`
from `students` as a join `departments` as b on 
a.depno = b.depno;
#실습 5-2
select `prono`,`proname`,`prohp`,a.`depno`,`depname`
from `professors` as a join `departments` as b on
a.depno = b.depno;

#실습 5-3
select `lecno`,`lecname`,`proname`,`prohp`
from `lectures` as a join `professors` as b on
a.prono = b.prono;

#실습 5-4
select `lecno`,`lecname`,a.`prono`,`proname`,`prohp`,b.`depno`,`depname`
from `lectures` as a join `professors` as b on
a.prono = b.prono join `departments` as c on 
b.depno = c.depno;
#실습 5-5
select a.`stdno`,`stdname`,a.`lecno`,`lecname`,b.`prono`,`proname`
from `register` as a join `students` as b on
a.stdno = b.stdno join `professors` as c on
b.prono = c.prono join `lectures` as d on
b.prono = d.prono;

#실습 5-6
update `register` set `regattenscore` = ceil(rand() *100),
						`regmidscore` = ceil(rand() *100),
						`regfinalscore` = ceil(rand() *100);

#실습 5-7
update `register` set
					`regtotal` = (`regattenScore` + `regmidscore`+`regfinalscore`) / 3 ;

#실습 5-8
update `register` set
					`reggrade` = if(`regtotal` >= 90, 'A',
								if(`regtotal` >= 80, 'B',
                                if(`regtotal` >= 70, 'C',
                                if(`regtotal` >= 60, 'D','F'))));

#실습 5-9
select * from `register` order by `regtotal` desc limit 1;

#실습 5-10
select
 avg(regTotal) as `총점 평균`
 from `register` as a
join `students` as b on a.stdno = b.stdno
where stdname = '정우성';




