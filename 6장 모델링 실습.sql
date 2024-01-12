#날짜 2024/01/12
#이름 : 조영흥
#내용 : Shop 모델링 실습

insert into `customer` values ('c101', '김유신', '010-1234-1001', '경남 김해시', '2023-01-01');
insert into `customer` values ('c102', '김춘추', '010-1234-1002', '경남 경주시', '2023-01-02');
insert into `customer` values ('c103', '장보고', '010-1234-1003', '전남 완도군', '2023-01-03');
insert into `customer` values ('c104', '강감찬', '010-1234-1004', '서울시 관악구', '2023-01-04');
insert into `customer` values ('c105', '이순신', '010-1234-1005', '부산시 금정구', '2023-01-05');

insert into `product` values (1, '새우깡', 5000, 1500, '농심');
insert into `product` values (2, '초코파이', 2500, 2500, '오리온');
insert into `product` values (3, '포카칩', 3600, 1700, '오리온');
insert into `product` values (4, '양파링', 1250, 1800, '농심');
insert into `product` values (5, '죠리퐁', 2200, null, '크라운');

insert into `order` set `orderId`='c102', `orderproduct`=3, `ordercount`=2, `orderdate`=now();
insert into `order` set `orderId`='c101', `orderproduct`=4, `ordercount`=1, `orderdate`=now();
insert into `order` set `orderId`='c102', `orderproduct`=1, `ordercount`=1, `orderdate`=now();
insert into `order` set `orderId`='c105', `orderproduct`=2, `ordercount`=1, `orderdate`=now();
insert into `Order` set `orderNo`=11, `orderId`='c103', `orderProduct`=8, `orderCount`=5, `orderDate`=NOW();

#실습 6-3
select 
	`orderNo`,
    `name`,
    `prodName`,
    `orderCount`,
    `orderdate`
from `customer` as a
join `order` as b on a.custId = b.orderId
join `product` as c on b.orderProduct = c.prodNo;

select 
	`orderNo`,
    `prodno`,
    `prodname`,
    `price`,
    `ordercount`,
    `orderdate`
from `customer` as a
join `order` as b on a.custId = b.orderId
join `product` as c on b.orderProduct = c.prodNo
where `name` = '김유신';

select 
	sum(`price` * `ordercount`) as `총 주문 금액`
from `order` as a
join `product` as b on a.orderProduct = b.prodNo;


#실습 6-4
-- BankERD 모델링 실습


#실습 6-5
insert into `bank_customer` values ('730423-1000001', '김유신', 1, '010-1234-1001', '경남 김해시');
insert into `bank_customer` values ('730423-1000002', '김춘추', 1, '010-1234-1002', '경남 경주시');
insert into `bank_customer` values ('750423-1000003', '장보고', 1, '010-1234-1003', '전남 완도군');
insert into `bank_customer` values ('102-12-51094', '(주)정보산업', 2, '051-500-1004', '부산시 부산진구');
insert into `bank_customer` values ('930423-1000005', '이순신', 1, '010-1234-1005', '서울 종로구');

insert into `bank_account` values ('101-11-1001', 'S1', '자유저축예금', '730423-1000001', 1550000, '2011-04-11');
insert into `bank_account` values ('101-11-1002', 'S1', '자유저축예금', '930423-1000005', 260000, '2011-05-12');
insert into `bank_account` values ('101-11-1003', 'S1', '자유저축예금', '750423-1000003', 75000, '2011-06-13');
insert into `bank_account` values ('101-12-1001', 'S2', '기업전용예금', '102-12-51094', 15000000, '2011-07-14');
insert into `bank_account` values ('101-13-1001', 'S3', '정기저축예금', '730423-1000002', 1200000, '2011-08-15');

insert into `bank_transaction` set `t_a_no`='101-11-1001', `t_dist`=1, `t_amount`=50000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-12-1001', `t_dist`=2, `t_amount`=1000000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1002', `t_dist`=3, `t_amount`=260000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1002', `t_dist`=2, `t_amount`=100000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1003', `t_dist`=3, `t_amount`=750000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1001', `t_dist`=1, `t_amount`=150000, `t_datetime`=NOW();


#실습 6-6
select 
	`c_no`,
    `c_name`,
    `c_phone`,
    `a_no`,
    `a_item_name`,
    `a_balance`
from `bank_customer` as a
join `bank_account` as b on a.c_no = b.a_c_no;

select 
	`t_dist`,
    `t_amount`,
    `t_datetime`
from `bank_customer` as a
join `bank_account` as b on a.c_no = b.a_c_no
join `bank_transaction` as c on b.a_no = c.t_a_no
where `c_name` = '이순신';

select 
	`c_no`,
    `c_name`,
    `a_no`,
    `a_balance`,
    `a_open_date`
from `bank_customer` as a
join `bank_account` as b on a.c_no = b.a_c_no
where `a_balance`=(select MAX(`a_balance`) from `bank_account`);


#실습 6-7
-- CollegeERD 모델링 실습


#실습 6-8
insert into `student` values ('20201011', '김유신', '010-1234-1001', 3, '경남 김해시');
insert into `student` values ('20201122', '김춘추', '010-1234-1002', 3, '경남 경주시');
insert into `student` values ('20210213', '장보고', '010-1234-1003', 2, '전남 완도군');
insert into `student` values ('20210324', '강감찬', '010-1234-1004', 2, '서울 관악구');
insert into `student` values ('20220415', '이순신', '010-1234-1005', 1, '서울 종로구');

insert into `lecture` values (101, '컴퓨터과학 개론', 2, 40, '본301');
insert into `lecture` values (102, '프로그래밍 언어', 3, 52, '본302');
insert into `lecture` values (103, '데이터베이스', 3, 56, '본303');
insert into `lecture` values (104, '자료구조', 3, 60, '본304');
insert into `lecture` values (105, '운영체제', 3, 52, '본305');

insert into `register` values ('20220415', 101, 60, 30, null, null);
insert into `register` values ('20210324', 103, 54, 36, null, null);
insert into `register` values ('20201011', 105, 52, 28, null, null);
insert into `register` values ('20220415', 102, 38, 40, null, null);
insert into `register` values ('20210324', 104, 56, 32, null, null);
insert into `register` values ('20210213', 103, 48, 40, null, null);


#실습 6-9
select
	`stdNo`,
    `stdName`,
    `stdHp`,
    `stdYear`
from `student` as a 
left join `register` as b on a.stdNo = b.regStdNo
where `regStdNo` is null;

select 
	`regStdNo`,
    `regLecNo`,
    `regMidScore`,
    `regFinalScore`,
    `regMidScore` + `regFinalScore` as `합`,
    case
		when (`regmidscore` + `regfinalscore` >= 90) then 'A'
        when (`regmidscore` + `regfinalscore` >= 80) then 'B'
        when (`regmidscore` + `regfinalscore` >= 70) then 'C'
        when (`regmidscore` + `regfinalscore` >= 60) then 'D'
		else 'F'
    end as `등급`
from `register`;


select 
	`stdNo`,
    `stdName`,
    `stdYear`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regMidScore` + `regFinalScore` as `총합`,
    case
		when (`regmidscore` + `regfinalscore` >= 90) then 'A'
        when (`regmidscore` + `regfinalscore` >= 80) then 'B'
        when (`regmidscore` + `regfinalscore` >= 70) then 'C'
        when (`regmidscore` + `regfinalscore` >= 60) then 'D'
		else 'F'
    end as `등급`
from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecNo
where `stdYear` = 2;


select 
	`stdNo`,
    `stdName`,
    `stdYear`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`
from `Student` as a
join `Register` as b on a.stdNo = b.regStdNo
join `Lecture` as c on b.regLecNo = c.lecNo
where `stdYear` = 2;