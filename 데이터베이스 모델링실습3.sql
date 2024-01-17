#실습

insert into `users` values ('user1','김유신','1976-01-21','M','010-1101-1976','kimys@naver.com',0,1,'서울',now());
insert into `users` values ('user2', '계백', '1975-06-11','M','010-1102-1975',null, 1000, 1, '서울',now());
insert into `users` values ('user3', '김춘추', '1989-05-30','M','010-1103-1989',null, 1200, 2, '서울',now());
insert into `users` values ('user4', '이사부', '1979-04-13','M','010-2101-1979','leesabu@gmail.com', 2600, 1, '서울',now());
insert into `users` values ('user5', '장보고', '1966-09-12','M','010-2104-1966','jangbg@naver.com', 9400, 4, '대전',now());
insert into `users` values ('user6', '선덕여왕', '1979-07-28','M','010-3101-1979','gueen@naver.com', 1600, 2, '대전',now());
insert into `users` values ('user7', '강감찬', '1984-06-15','F','010-4101-1984','kang@daum.net', 800, 0, '대구',now());
insert into `users` values ('user8', '신사임당', '1965-10-21','M','010-5101-1965','sinsa@gmail.com', 1500, 1, '대구',now());
insert into `users` values ('user9', '이이', '1972-11-28','F','010-6101-1972','leelee@nate.com', 3400, 3, '부산',now());
insert into `users` values ('user10', '허난설헌', '1992-09-07','F','010-7103-1992',null,'4100',3, '광주',now());

insert into `points` values(1,'user1',1000,'회원가입 1000 적립',now());
insert into `points` values(2,'user1',6000,'상품구매 5% 적립',now());
insert into `points` values(3,'user3',2835,'상품구매 5% 적립',now());
insert into `points` values(4,'user7',3610,'상품구매 5% 적립',now());
insert into `points` values(5,'user5',3000,'이벤트 응모 3000 적립',now());
insert into `points` values(6,'user2',1000,'회원가입 1000 적립',now());
insert into `points` values(7,'user2',2000,'이벤트 응모 2000 적립',now());
insert into `points` values(8,'user2',2615,'상품구매 5% 적립',now());
insert into `points` values(9,'user3',1500,'이벤트 응모 1500 적립',now());
insert into `points` values(10,'user6',15840,'상품구매 2% 적립',now());

insert into `orders` values('22010210001','user2',52300, '서울시 마포구 121', 1,now());
insert into `orders` values('22010210002','user3',56700, '서울시 강남구 21-1', 1,now());
insert into `orders` values('22010210010','user4',72200, '서울시 강서구 큰대로 38',2,now());
insert into `orders` values('22010310001','user5',127000,'경기도 광주시 초월로 21',1,now());
insert into `orders` values('22010310100','user1',120000,'경기도 수원시 120번지',0,now());
insert into `orders` values('22010410101','user6',792000,'부산시 남구 21-1',2,now());
insert into `orders` values('22010510021','user7',92200, '부산시 부산진구 56 10층',4,now());
insert into `orders` values('22010510027','user8',112000,'대구시 팔달로 19', 3,now());
insert into `orders` values('22010510031','user10',792000,'대전시 한밭로 24-1',2,now());
insert into `orders` values('22010710110','user9',94500, '광주시 충열로 11', 1,now());


insert into `sellers` values(10001,'(주)다팔아','02-201-1976', '정우성', '서울');
insert into `sellers` values(10002,'판매의민족','02-102-1975', '이정재', '서울');
insert into `sellers` values(10003,'멋남','031-103-1989', '원빈', '경기');
insert into `sellers` values(10004,'스타일살아','032-201-1979', '이나영', '경기');
insert into `sellers` values(10005,'(주)삼성전자','02-214-1966', '장동건', '서울');
insert into `sellers` values(10006,'복실이옷짱','051-301-1979', '고소영', '부산');
insert into `sellers` values(10007,'컴퓨존(주)','055-401-1984', '유재석', '대구');
insert into `sellers` values(10008,'(주)LG전자','02-511-1965', '강호동', '서울');
insert into `sellers` values(10009,'굿바디스포츠','070-6101-1972', '조인성', '부산');
insert into `sellers` values(10010,'누리푸드','051-710-1992', '강동원', '부산');

insert into `categories` values (10,'여성의류패션');
insert into `categories` values (11,'남성의류패션');
insert into `categories` values (12,'식품·생필품');
insert into `categories` values (13,'취미·반려견');
insert into `categories` values (14,'홈·문구');
insert into `categories` values (15,'자동차·공구');
insert into `categories` values (16,'스포츠·건강');
insert into `categories` values (17,'컴퓨터·가전·디지털');
insert into `categories` values (18,'여행');
insert into `categories` values (19,'도서');

insert into `products` values (100101,11,10003,'반팔티 L~2XL',869,25000, 132, 20);
insert into `products` values (100110,10,10004,'트레이닝 통바지',1602,38000, 398, 15);
insert into `products` values (110101,10,10003,'신상 여성운동화',160,76000, 40, 5);
insert into `products` values (120101,12,10010,'암소 1등급 구이셋트 1.2kg',null,150000, 87, 15);
insert into `products` values (120103,12,10010,'바로구이 부채살 250g',null, 21000, 61, 10);
insert into `products` values (130101,13,10006,'[ANF] 식스프리 강아지 사료',58, 56000, 142, 0);
insert into `products` values (130112,13,10006,'중대형 사계절 강아지옷',120, 15000, 80, 0);
insert into `products` values (141001,14,10001,'라떼 2인 소파/방수 패브릭',null,320000, 42, 0);
insert into `products` values (170115,17,10007,'지포스 3080 그래픽카드',28, 900000, 12, 12);
insert into `products` values (160103,16,10009,'치닝디핑 33BR 철봉',32, 120000, 28, 0);

insert into `carts` values (1,'user1',100101,1,now());
insert into `carts` values (2,'user1',100110,2,now());
insert into `carts` values (3,'user3',120103,1,now());
insert into `carts` values (4,'user4',130112,1,now());
insert into `carts` values (5,'user5',130101,1,now());
insert into `carts` values (6,'user2',110101,3,now());
insert into `carts` values (7,'user2',160103,1,now());
insert into `carts` values (8,'user2',170115,1,now());
insert into `carts` values (9,'user3',110101,1,now());
insert into `carts` values (10,'user6',130101,1,now());

insert into `orderitems` values (1,'22010210001',100110,38000,15,1);
insert into `orderitems` values (2,'22010210001',100101,25000,20,1);
insert into `orderitems` values (3,'22010210002',120103,21000,10,3);
insert into `orderitems` values (4,'22010310001',130112,15000,0,1);
insert into `orderitems` values (5,'22010310001',130101,56000,0,2);
insert into `orderitems` values (6,'22010210010',110101,76000,5,1);
insert into `orderitems` values (7,'22010310100',160103,120000,0,1);
insert into `orderitems` values (8,'22010410101',170115,900000,12,1);
insert into `orderitems` values (9,'22010510021',110101,76000,5,1);
insert into `orderitems` values (10,'22010510027',130101,56000,0,2);
insert into `orderitems` values (11,'22010510021',100101,25000,20,1);
insert into `orderitems` values (12,'22010510031',170115,900000,12,1);
insert into `orderitems` values (13,'22010710110',120103,21000,10,5);


#실습 5-1
select 
	`username`,
    `prodname`,
    `cartprodcount`
    from
    `carts` as a
    join `users` as b on a.userid = b.userid
    join `products` as c on a.prodno=c.prodno where cartProdCount >=2;

#실습 5-2
select 
	`prodno`,
    `catename`,
    `prodname`,
    `prodprice`,
    `sellerbizname`,
    `sellerphone`
    from
    `products` as a
    join `categories` as b
    on a.cateno=b.cateno
    join `sellers` as c
    on a.sellerNo=c.sellerno;

#실습 5-3
select 
	a.`userid`,
    `username`,
    `userhp`,
    `userpoint`,
    if(sum(`point`)is null,0,sum(`point`)) as '적립포인트 총합'
    from
    `users` as a
    left join `points` as b on
    a.userid=b.userid
    group by a.`userid`;

#실습 5-4
select
	`orderno`,
    a.`userid`,
    `username`,
    `ordertotalprice`,
    `orderdate`
    from
    `orders` as a
    join `users` as b on
    a.userid=b.userid
    where ordertotalprice >=100000
    order by orderTotalPrice desc,
    `username` asc;

#실습 5-5
	select
	a.`orderno`,
    ANY_VALUE(c.`userid`),
    ANY_VALUE(c.`username`),
    Group_concat(`prodname` separator ',') as '상품명',
    ANY_VALUE(`orderdate`)
    from
    `orders` as a
    join `orderitems` as b on a.orderno = b.orderno
    join `users` as c on a.userid=c.userid
    join `products` as d on b.prodno=d.prodno
	group by a.`orderno`;

#실습 5-6
	select
    `prodno`,
    `prodname`,
    `prodprice`,
    `prodDiscount`,
    floor(`prodPrice` * (1 - `proddiscount`/100))as '할인가'
    from
    `products`;

#실습 5-7
select
	a.prodno,
    a.prodname,
    a.prodprice,
    a.prodstock,
    b.sellermanager
from `products` as a
join `sellers` as b on a.sellerno = b.sellerno
where b.sellermanager = '고소영';

#실습 5-8
select
	a.`sellerno`,
    `sellerbizname`,
    `sellermanager`,
    `sellerphone`
from products as a
right join sellers as b on a.sellerno = b.sellerno
where prodno is null;
    

#실습 5-9
select 
`orderno`,
sum(`할인가`) as `최종총합`	
 from(
select 
	*,
floor(`itemPrice` * ((1 - `itemdiscount`/100)) * itemcount)as '할인가'
from orderitems)as a
group by `orderno`
having `최종총합` >= 100000 
order by `최종총합` desc;

#실습 5-10
select 
	`userName`,
    group_concat(`prodName` separator ',') as `상품들`
from `orders` 		as a
join `OrderItems` 	as b on a.orderNo = b.orderNo
join `Users` 		as c on a.userId  = c.userId
join `Products` 	as d on b.prodNo  = d.prodNo
where `userName` = '장보고';
