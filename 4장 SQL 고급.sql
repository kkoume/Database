#날짜 : 2024/01/04
#이름 : 조영흥
#내용 : 4장 SQL 고급

#실습 4-1
CREATE TABLE `Member` (
	`uid`	VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`	CHAR(13) UNIQUE NOT NULL,
	`pos`	VARCHAR(10) default '사원',
	`dep`	TINYINT,
	`rdate`	DATETIME  NOT NULL
);

CREATE TABLE `Department` (
	`depNo`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`tel`	CHAR(12) NOT NULL
);

CREATE TABLE `Sales` (
	`seq`	INT AUTO_INCREMENT PRIMARY KEY,
	`uid`	VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`month`	TINYINT NOT NULL,
	`sale`	INT NOT NULL
);

#실습 4-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a110', '정약용',   '010-1234-1010', '사원', 105, NOW());
INSERT INTO `Member` VALUES ('a111', '박지원',   '010-1234-1011', '사원', 105, NOW());

INSERT INTO `Department` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부', '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);

#실습 4-3
select * from `Member` WHERE `name` = '김유신';
select * from `Member` where `pos`='차장' and `dep`=101;
select * from `Member` where `pos`='차장' or `dep`=101;
select * from `Member` where `name` != '김춘추';
select * from `Member` where `name` <> '김춘추';
select * from `Member` where `pos`='사원' or `pos`='대리';
select * from `Member` where `pos` IN ('사원', '대리');
select * from `Member` where `dep` IN (101, 102, 103);
select * from `Member` where `name` like '%신';
select * from `Member` where `name` like '김%';
select * from `Member` where `name` like '김__';
select * from `Member` where `name` like '_성_';
select * from `Member` where `name` like '정_';
select * from `Sales` where `sale` > 50000;
select * from `Sales` where `sale` >= 50000 AND `sale` < 100000 AND `month`=1;
select * from `Sales` where `sale` between 50000 and 100000;
select * from `Sales` where `sale` not between 50000 and 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1, 2);

#실습 4-4
select * from `Sales` order by `sale`;
select * from `Sales` order by `sale` ASC;
select * from `Sales` order by `sale` desc;
select * from `Member` order by `name`;
select * from `Member` order by `name` desc;
select * from `Member` order by `rdate` asc;
select * from `Sales` where `sale` > 50000 order by`sale` desc;
select * from `Sales` 
	where `sale` > 50000
    order by `year`, `month`, `sale` desc;
    
#실습 4-5
select * from `Sales` limit 3;
select * from `Sales` limit 0, 3;
select * from `Sales` limit 1, 2;
select * from `Sales` limit 5, 3;
select * from `Sales` order by `sale` desc limit 3, 5;
select * from `Sales` where `sale` < 50000 order by `sale` desc limit 3;
select * from `Sales`
where `sale` > 50000
order by `year` desc, `month`, `sale` desc
limit 5; 

#실습 4-6
select sum(`sale`) as '합계' from `Sales`;
select avg(`sale`) as '평균' from `Sales`;
select max(`sale`) as '최대값' from `Sales`;
select min(`sale`) as '최소값' from `Sales`;
select ceiling(1.2);
select ceiling(1.8);
select floor(1.2);
select floor(1.8);
select rand();
select ceil(rand() * 10);
select count(`sale`) as '갯수' from `Sales`;
select count(*) as '갯수' from `Sales`;

select left('HelloWorld', 5);
select right('HelloWorld', 5);
select substring('HelloWorld', 6, 5);
select concat('Hello', 'World');
select concat(`uid`, `name`, `hp`) from `Member` where `uid` = 'a108';

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
INSERT INTO `Member` VALUES ('a112', '유관순', '010-1234-1012', '대리', 107, NOW());

#실습 4-7
SELECT * FROM `Sales` GROUP BY `uid`;
select `uid`, count(*) from `Sales` group by `uid`;

#실습 4-8
#실습 4-9

#실습 4-10
select * from `Sales` group by `uid`;
select * from `Sales` group by `year`;
select * from `Sales` group by `uid`, `year`;
select `uid`, count(*) as `건수` from `Sales` group by `uid`;
select `uid`, sum(sale) as `합계` from `Sales` group by `uid`;
select `uid`, avg(sale) as `평균` from `Sales` group by `uid`;

select `uid`, `year`, sum(`sale`) as `합계`
from `Sales`
group by `uid`, `year`;

select `uid`, `year`, sum(`sale`) as `합계`
from `Sales`
group by `uid`, `year`
order by `year` asc, `합계` desc;

select `uid`, `year`, sum(`sale`) as `합계`
from `Sales`
where `sale` >= 50000
group by `uid`, `year`
order by `합계` desc;

#실습 4-11
select `uid`, sum(`sale`) as `합계` from `Sales`
group by `uid`
having `합계` >= 200000;

select `uid`, `year`, sum(`sale`) as `합계` from `Sales`
group by `uid`
having `합계` >= 200000;

select `uid`, `year`, sum(`sale`) as `합계`
from `Sales`
where `sale` >= 100000
group by `uid`, `year`
having `합계` >= 200000
order by `합계` desc;

#실습 4-12
create table `Sales2` like `Sales`;
insert into `Sales2` select * from `Sales`;
update `Sales2` set `year` = `year` + 3;

select * from `Sales` union select * from `Sales2`;
select * from `Sales` where `sale` >= 1000000
union
select * from `Sales2` where `sale` >= 100000;

select `uid`, `year`, `sale` from `Sales`
union
select `uid`, `year`, `sale` from `Sales2`;

select `uid`, `year`, sum(`sale`) as `합계`
from `Sales`
group by `uid`, `year`
union
select `uid`, `year`, sum(`sale`) as `합계`
from `Sales2`
group by `uid`, `year`
order by `year` asc, `합계` desc;

#실습 4-13
select * from `Sales` inner join `Member` on `Sales`.`uid` = `Member`.`uid`;
select * from `Member` inner join `Department` on `Member`.dep = `Department`.depNo;

select * from `Sales` as a join `Member` as b on a.uid = b.uid;
select * from `Member` as a join `Department` as b on a.dep = b.depNo;

select * from `Sales` as a, `Member` as b where a.uid = b.uid;
select * from `Member` as a, `Department` as b where a.dep = b.depNo;

select a.`seq`, a.`uid`, `sale`, `name`, `pos` from `Sales` as a
join `Member` as b on a.`uid` = b.`uid`;

select a.`seq`, a.`uid`, `sale`, `name`, `pos` from `Sales` as a
join `Member` as b using (`uid`);

select a.`seq`, a.`uid`, `sale`, `name`, `pos` from `Sales` as a
join `Member` as b on a.`uid` = b.`uid`
where `sale` >= 100000;

select a.`seq`, a.`uid`, b.`name`, b.`pos`, `year`, sum(`sale`) as `합계` from `Sales` as a
	join `Member` as b on a.uid = b.uid
	group by a.`uid`, a.`year` having `합계` >= 100000
    order by a.`year` asc, `합계` desc;
    
select * from `Sales` as a
join `Member` as b on a.uid = b.uid
join `Department` as c on b.dep = c.depNo;

select
	a.`uid`,
    a.`year`,
    a.`month`,
    a.`sale`,
    b.`name`,
    b.`hp`,
    c.`name`
from `Sales` as a
join `Member` as b on a.uid = b.uid
join `Department` as c on b.dep = c.depNo;

select
	a.`uid`,
    a.`year`,
    a.`month`,
    a.`sale`,
    b.`name`,
    b.`hp`,
    c.`name`
from `Sales` as a
join `Member` as b on a.uid = b.uid
join `Department` as c on b.dep = c.depNo
where `sale` > 100000
order by `sale` desc;

#실습 4-14
select * from `Sales` as a inner join `Member` as b on a.uid = b.uid;
select * from `Sales` as a left join `Member` as b on a.uid = b.uid;
select * from `Sales` as a right join `Member` as b on a.uid = b.uid;
select a.seq, a.uid, `sale`, `name`, `pos` from `Sales` as a 
left join `Member` as b using(`uid`);

select a.seq, a.uid, `sale`, `name`, `pos` from `Sales` as a 
right join `Member` as b using(`uid`);