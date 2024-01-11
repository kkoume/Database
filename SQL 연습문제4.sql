#날짜 : 2024/01/11
#이름 : 조영흥
#내용 : SQL 연습문제4

#실습 4-1
create database `BookStore`;
create user 'bookstore'@'%' identified by '1234';
grant all privileges on `BookStore`.* to 'bookstore'@'%';
grant all privileges on `BookStore`.* to 'everybody24'@'%';
flush privileges;

#실습 4-2
create table `Customer`(
	`custId`		int PRIMARY KEY auto_increment,
    `name`			VARCHAR(10) NOT NULL,
    `address`		varchar(20) default null,
    `phone`			varchar(13) default null
);

create table `Book`(
	`bookId`		int primary key,
    `bookName`		varchar(20) not null,
    `publisher`		varchar(20) not null,
    `price`			int default null
);

create table `Order`(
	`orderId`		int primary key auto_increment,
    `custId`		int not null,
    `bookId`		int not null,
    `salePrice`		int not null,
    `orderDate`		date not null
);

#실습 4-3
insert into `Customer` values (1, '박지성', '영국 맨체스타', '000-5000-0001');
insert into `Customer` values (2, '김연아', '대한민국 서울', '000-6000-0001');
insert into `Customer` values (3, '장미란', '대한민국 강원도', '000-7000-0001');
insert into `Customer` values (4, '추신수', '미국 클리블랜드', '000-8000-0001');
insert into `Customer` (`custId`, `name`, `address`) values (5, '박세리', '대한민국 대전');

insert into `Book` values (1, '축구의 역사', '굿스포츠', 7000);
insert into `Book` values (2, '축구아는 여자', '나무수', 13000);
insert into `Book` values (3, '축구의 이해', '대한미디어', 22000);
insert into `Book` values (4, '골프 바이블', '대한미디어', 35000);
insert into `Book` values (5, '피겨 교본', '굿스포츠', 8000);
insert into `Book` values (6, '역도 단계별기술', '굿스포츠', 6000);
insert into `Book` values (7, '야구의 추억', '이상미디어', 20000);
insert into `Book` values (8, '야구를 부탁해', '이상미디어', 13000);
insert into `Book` values (9, '올림픽 이야기', '삼성당', 7500);
insert into `Book` values (10, 'Olympic Champions', 'Pearson', 13000);

insert into `Order` values (1, 1, 1, 6000, '2014-07-01');
insert into `Order` values (2, 1, 3, 21000, '2014-07-03');
insert into `Order` values (3, 2, 5, 8000, '2014-07-03');
insert into `Order` values (4, 3, 6, 6000, '2014-07-04');
insert into `Order` values (5, 4, 7, 20000, '2014-07-05');
insert into `Order` values (6, 1, 2, 12000, '2014-07-07');
insert into `Order` values (7, 4, 8, 13000, '2014-07-07');
insert into `Order` values (8, 3, 10, 12000, '2014-07-08');
insert into `Order` values (9, 2, 10, 7000, '2014-07-09');
insert into `Order` values (10, 3, 8, 13000, '2014-07-10');


#실습 4-4
select `custId`, `name`, `address` from `Customer`;


#실습 4-5
select `bookname`, `price` from `Book`;


#실습 4-6
select `price`, `bookname` from `Book`;


#실습 4-7
select * from `Book`;


#실습 4-8
select `publisher` from `Book`;


#실습 4-9
select distinct `publisher` from `Book`;
SELECT `publisher` FROM `Book` GROUP BY `publisher`;


#실습 4-10
select * from `book` where `price` >= '20000';


#실습 4-11
select * from `book` where `price` < '20000';


#실습 4-12
select * from `book` where `price` between '10000' and '20000';
SELECT * FROM `Book` WHERE `price` >= 10000 AND `price` <= 20000;


#실습 4-13
select `bookId`, `bookName`, `Price` from `book` where `price` between '15000' and '30000';


#실습 4-14
select * from `book` where `bookid` in ('2', '3', '5');
SELECT * FROM `Book` WHERE `bookId`=2 OR `bookId`=3 OR `bookId`=5;


#실습 4-15
select * from `book` where MOD(`bookid`, 2) = 0;
select * from `book` where `bookId` % 2 = 0;


#실습 4-16
select * from `Customer` where `name` like '박%';


#실습 4-17
select * from `Customer` where `address` like '%대한민국%';


#실습 4-18
select * from `customer` where `phone` is not null;


#실습 4-19
select * from `book` where `publisher` in ('굿스포츠', '대한미디어');
select * from `Book` Where `publisher`='굿스포츠' or `publisher`='대한미디어'; 


#실습 4-20
select `publisher` from `book` where `bookname` = '축구의 역사';


#실습 4-21
select `publisher` from `book` where `bookname` like '축구%';


#실습 4-22
select * from `book` where `bookname` like '_구%';


#실습 4-23
select * from `book` where `bookname` like '축구%' and `price` >= '20000';


#실습 4-24
select * from `book` order by `bookname` asc; 


#실습 4-25
select * from `book` order by `price` asc, `bookName` asc;


#실습 4-26
select * from `book` order by `price` desc, `publisher` asc;


#실습 4-27
select * from `book` order by `price` desc limit 3;


#실습 4-28
select * from `book` order by `price` asc limit 3;


#실습 4-29
select sum(`saleprice`) as `총판매액` from `order`;


#실습 4-30
select 
	sum(`saleprice`) as `총판매액`,
    avg(`salePrice`) as `평균값`,
    min(`saleprice`) as `최저가`,
    max(`saleprice`) as `최고가`
from `order`;


#실습 4-31
select count(*) as `판매건수` from `order`;


#실습 4-32
select
	`bookId`,
    replace(`bookname`, '야구', '농구') as `bookname`,
    `publisher`,
    `price`
from `Book`;


#실습 4-33	(복습)
select 
	`custId`,
    count(*) as `수량`
from `Order` 
where `saleprice` >= 8000
group by `custid`
having `수량` >= 2
order by `custid` asc;


#실습 4-34	(복습)
select * from `customer` as a
join `order` as b on a.custid = b.custid;

select * from `customer` join `order` using (`custid`);

select * from 
	`customer` as a, 
	`order` as b 
where a.`custid` = b.`custId`;


#실습 4-35
select * from `customer` as a
join `order` as b on a.custid = b.custid
order by a.`custid`;


#실습 4-36
select 
	`name`,
    `saleprice`
from `customer` as a
join `order` as b on a.custid = b.custid
order by a.`custId`;


#실습 4-37	(복습)
select 
	`name`,
    sum(`saleprice`)
from `customer` as a
join `order` as b on a.custid = b.custid
group by `name`
order by `name`;


#실습 4-38
select 
	`name`,
    `bookName`
FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId = b.custId
JOIN `Book` AS c ON b.bookId = c.bookId;


#실습 4-39
select 
	`name`,
    `bookName`
FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId = b.custId
JOIN `Book` AS c ON b.bookId = c.bookId
where `price`=20000;


#실습 4-40
select
	`name`,
    `saleprice`
from `Customer` as a 
left join `Order` as b on a.custid = b.custid;


#실습 4-41
select
	sum(`saleprice`) as `총매출`
from `order`
where `custid` = (select `custid` from `customer` where `name` = '김연아');


#실습 4-42
select `bookname` from `book` order by `price` desc limit 1;
select `bookname` from `book` where `price` = (select max(`price`) from `book`);


#실습 4-43
select `name` from `customer` as a
left join `order` as b on a.custid = b.custid
where `orderid` is null;


#실습 4-44
insert into `book` set
					`bookid` = 11,
                    `bookname` = '스포츠의학',
                    `publisher` = '한솔의학서적';


#실습 4-45
update `customer` set `address` = '대한민국 부산' where `custid` = 5;

#실습 4-46
delete from `customer` where `custid` = 5;