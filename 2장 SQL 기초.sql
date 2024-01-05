#날짜 : 2024/01/05
#이름 : 조영흥
#내용 : 2장 SQL 기초

#실습 2-1
create table `User1` (
	`uid`	varchar(10),
    `name`	varchar(10),
    `hp`	char(13),
    `age`	int
);

drop table `User1`;

#실습 2-2
insert into `User1` values ('a101', '김유신', '010-1234-1111', 25);
insert into `User1` values ('a102', '김유신', '010-1234-1111', 25);
insert into `User1` values ('a103', '김유신', '010-1234-1111', 25);
insert into `User1` (`uid`, `name`, `age`) values ('a104', '강감찬', 45);
insert into `User1` set `uid`='a105', `name`='이순신', `hp`='010-1234-5555';

#실습 2-3
select * from `User1`;
select * from `User1` where `uid`='a101';
select * from `User1` where `name`='김춘추';
select * from `User1` where `age` < 30;
select * from `User1` where `age` >= 30;
select `uid`, `name`, `age` from `User1`;

#실습 2-4
update `User1` set `hp`='010-1234-4444' where `uid`='a104';
update `User1` set `age`=51 where `uid`='a105';
update `User1` set `hp`='010-1234-1001', `age`=27 where `uid`='a101';

#실습 2-5
delete from `User1` where `uid`='a101';
delete from `User1` where `uid`='a102' and `age`=25;
delete from `User1` where `age` >= 30;

#실습 2-6
alter table `User1` add `gender` tinyint;
alter table `User1` add `birth` char(10) after `name`;
alter table `User1` modify `gender` char(1);
alter table `User1` modify `age` tinyint;
alter table `User1` drop `gender`;

#실습 2-7
create table `User1Copy` like `User1`;
insert into `User1Copy` select * from `User1`;

#실습 2-8
create table `Tb1User` (
		`user_id`		varchar(10),
        `user_name`		varchar(10),
        `user_hp`		char(13),
        `user_age`		tinyint,
        `user_addr`		varchar(100)
);

insert into `Tb1User` values ('p101', '김유신', '010-1234-1001', 25, '경남 김해시');
insert into `Tb1User` values ('p102', '김춘추', '010-1234-1002', 23, '경남 경주시');
insert into `Tb1User` values ('p103', '장보고', null, 31, '전남 완도군');
insert into `Tb1User` (`user_id`, `user_name`, `user_addr`) values ('p104', '강감찬', '서울시 중구');
insert into `Tb1User` set 
`user_id`='p105',
`user_name`='이순신',
`user_hp`='010-1234-1005',
`user_age`=25;

create table `Tb1Product` (
		`prod_no`		int,
        `prod_name`		varchar(10),
        `prod_price`	int,
        `prod_stock`	int,
        `prod_company`	varchar(10),
        `prod_date`		date
);

insert into `Tb1Product` values (1001, '냉장고', 800000, 25, 'LG전자', '2022-01-06');
insert into `Tb1Product` values (1002, '노트북', 1200000, 120, '삼성전자', '2022-01-07');
insert into `Tb1Product` values (1003, '모니터', 350000, 35, 'LG전자', '2023-01-13');
insert into `Tb1Product` values (1004, '세탁기', 1000000, 80, '삼성전자', '2021-01-01');
insert into `Tb1Product` values (1005, '컴퓨터', 1500000, 20, '삼성전자', '2023-10-01');
insert into `Tb1Product` values (1006, '휴대폰', 950000, 102, null, null);

#실습 2-9
SELECT * FROM `Tb1user`;
SELECT `user_name` FROM `Tb1user`;
SELECT `user_name`, `user_hp` FROM `Tb1User`;
SELECT * FROM `Tb1User` WHERE `user_id`='p102';
SELECT * FROM `Tb1User` WHERE `user_id`='p104' OR `user_id`='p105';
SELECT * FROM `Tb1User` WHERE `user_addr`='부산시 금정구';
SELECT * FROM `Tb1User` WHERE `user_age` > 30;
SELECT * FROM `Tb1User` WHERE `user_hp` IS NULL;
UPDATE `Tb1User` SET `user_age`=42 WHERE `user_id`='p104';
UPDATE `Tb1User` SET `user_addr`='부산시 진구' WHERE `user_id`='p105';
DELETE FROM `Tb1User` WHERE `user_id`='p103';

SELECT * FROM `Tb1Product`;
SELECT `prod_name` FROM `Tb1Product`;
SELECT `prod_name`, `prod_company`, `prod_price` FROM `Tb1Product`;
SELECT * FROM `Tb1Product` WHERE `prod_company`='LG전자';
SELECT * FROM `Tb1Product` WHERE `prod_company`='삼성전자';
UPDATE `Tb1Product` SET
 `prod_company`='삼성전자',
 `prod_date`='2024-01-01'
 WHERE
 `prod_no`=1006;