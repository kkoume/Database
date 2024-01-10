#날짜 : 2024/1/10
#이름 : 조영흥
#내용 : SQL 연습문제3

#실습 3-1
create database `College`;
create user 'college'@'%' identified by '1234';
grant all privileges on `College`.* TO 'college'@'%';
grant all privileges on `College`.* TO 'everybody24'@'%';
flush privileges;

#실습 3-2
create table `Student`(
	`stdNo`			VARCHAR(8) PRIMARY KEY,
    `stdName`		VARCHAR(20) NOT NULL,
    `stdHp`			varchar(13) not null,
    `stdYear`		int NOT NULL,
    `stdAddress`	VARCHAR(100) default NULL
);

create table `Lecture`(
	`lecNo`			int primary key,
    `lecName`		varchar(20) not null,
    `lecCredit`		int not null,
    `lecTime`		int not null,
    `lecClass`		varchar(10) default null
);

create table `Register`(
	`regStdNo`			varchar(8) not null,
    `regLecNo`			int not null,
    `regMidScore`		int default null,
    `regFinalScore`		int default null,
    `regTotalScore`		int default null,
    `regGrade`			varchar(1) default null
);

#실습 3-3
insert into `Student` (`stdNo`, `stdName`, `stdHp`, `stdYear`) values ('20201016', '김유신', '010-1234-1001', 3);
insert into `Student` values ('20201126', '김춘추', '010-1234-1002', 3, '경상남도 경주시');
insert into `Student` values ('20210216', '장보고', '010-1234-1003', 2, '전라남도 완도시');
insert into `Student` values ('20210326', '강감찬', '010-1234-1004', 2, '서울시 영등포구');
insert into `Student` values ('20220416', '이순신', '010-1234-1005', 1, '부산시 부산진구');
insert into `Student` values ('20220521', '송상현', '010-1234-1006', 1, '부산시 동래구');

insert into `Lecture` values (159, '인지행동심리학', 3, 40, '본304');
insert into `Lecture` values (167, '운영체제론', 3, 25, '본B05');
insert into `Lecture` values (234, '중급 영문법', 3, 20, '본201');
insert into `Lecture` values (239, '세법개론', 3, 40, '본204');
insert into `Lecture` values (248, '빅데이터 개론', 3, 20, '본B01');
insert into `Lecture` values (253, '컴퓨팅사고와 코딩', 2, 10, '본B02');
insert into `Lecture` values (349, '사회복지 마케팅', 2, 50, '본301');

insert into `Register` (`regStdNo`, `regLecNo`) values ('20201126', 234);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201016', 248);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201016', 253);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201126', 239);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20210216', 349);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20210326', 349);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201016', 167);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20220416', 349);

#실습 3-4
select * from `lecture`;

#실습 3-5
select * from `student`;

#실습 3-6
select * from `register`;

#실습 3-7
select * from `student` where `stdYear` = 3;

#실습 3-8
select * from `lecture` where `leccredit` = 2;

#실습 3-9
update `register` set `regmidscore` = 36, `regfinalscore` = 42 where 
`regstdno`='20201126' and `reglecno`=234;
update `register` set `regmidscore` = 24, `regfinalscore` = 62 where 
`regstdno`='20201016' and `reglecno`=248;
update `register` set `regmidscore` = 28, `regfinalscore` = 40 where 
`regstdno`='20201016' and `reglecno`=253;
update `register` set `regmidscore` = 37, `regfinalscore` = 57 where 
`regstdno`='20201126' and `reglecno`=239;
update `register` set `regmidscore` = 28, `regfinalscore` = 68 where 
`regstdno`='20210216' and `reglecno`=349;
update `register` set `regmidscore` = 16, `regfinalscore` = 65 where 
`regstdno`='20210326' and `reglecno`=349;
update `register` set `regmidscore` = 18, `regfinalscore` = 38 where 
`regstdno`='20201016' and `reglecno`=167;
update `register` set `regmidscore` = 25, `regfinalscore` = 58 where 
`regstdno`='20220416' and `reglecno`=349;
select * from `register`;

#실습 3-10
update `register` set 
			`regtotalscore` = `regmidscore` + `regfinalscore`,
            `reggrade` = if(`regtotalscore` >= 90, 'A',
						 if(`regtotalscore` >= 80, 'B',
                         if(`regtotalscore` >= 70, 'C',
                         if(`regtotalscore` >= 60, 'D', 'F'))));
select * from `register`;

#실습 3-11
select * from `register` order by `regtotalscore` desc;

#실습 3-12
select * from `register` where `reglecno` = 349 order by `regtotalscore` desc;

#실습 3-13
select * from `lecture` where `lectime` >= 30;

#실습 3-14
select `lecname`, `lecclass` from `lecture`;

#실습 3-15
select `stdno`, `stdname` from `student`;

#실습 3-16
select * from `student` where `stdaddress` is null;

#실습 3-17
select * from `student` where `stdaddress` like '부산시%';

#실습 3-18	- 송상현까지 나와야되서 left join 사용
select * from `student` as a 
left join `register` as b on a.stdno = b.regstdno;

#실습 3-19
select 
	`stdNo`,
    `stdName`,
    `regLecNo`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`
from `student` as a, `register` as b where a.stdno = b.regstdno;

#실습 3-20
select `stdName`, `stdNo`, `regLecNo`
from `student` as a
join `register` as b 
on a.stdNo = b.regStdNo
where `reglecno` = 349;

#실습 3-21	- 
select
	`stdNo`,
    `stdName`,
    count(`stdNo`) as `수강신청 건수`,
    sum(`regtotalscore`) as `종합점수`,
    sum(`regtotalscore`) / count(`stdno`) as `평균`
from `student` as a
join `register` as b
on a.stdno = b.regstdno
group by `stdNo`
order by `종합점수` desc;

#실습 3-22
select * from `register` as a
join `lecture` as b
on a.regLecNo = b.lecNo;

#실습 3-23
select
	`regStdNo`,
    `regLecNo`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`
from `register` as a
join `Lecture` as b
on a.regLecNo = b.lecNo;

#실습 3-24
select
	count(*) as `사회복지 마케팅 수강 신청건수`,
    avg(`regtotalscore`) as `사회복지 마케팅 평균`
from `register` as a 
join `lecture` as b
on a.regLecNo = b.lecNo where `regLecNo` = 349;

#실습 3-25
select
	 `regStdNo`,
     `lecName`
from `register` as a 
join `lecture` as b 
on a.regLecNo = b.lecNo where `regGrade` = 'A';

#실습 3-26
select * from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecNo;

#실습 3-27
select
	`stdNo`,
    `stdName`,
    `lecNo`,
    `lecName`,
    `regMidScore`,
    `regFinalScore`,
    `regTotalScore`,
    `regGrade`
from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecNo
order by `regGrade` asc, `regFinalScore` desc;

#실습 3-28
select
	`stdNo`,
    `stdName`,
    `lecName`,
    `regTotalScore`,
    `regGrade`
from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecNo
where `regGrade` = 'F';

#실습 3-29
select
	`stdNo`,
    `stdName`,
    sum(`lecCredit`) as `이수학점`
from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecNo
where `regGrade` != 'F'
group by `stdNo`
order by `stdNo` asc;

#실습 3-30
select
	`stdNo`,
    `stdName`,
    group_concat(`lecName`) as `신청과목`,
    group_concat(if(`regTotalScore` >= 60, `lecName`, null)) as `이수과목`
from `student` as a
join `register` as b on a.stdNo = b.regStdNo
join `lecture` as c on b.regLecNo = c.lecNo
group by `stdNo`;