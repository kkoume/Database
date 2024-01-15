#날짜 2024/01/15
#이름 : 조영흥
#내용 : 모델링 실습

insert into `Student` values ('20101001', 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', NULL, '서울');
insert into `Student` values ('20101002', 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', NULL, '서울');
insert into `Student` values ('20111011', 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', '대전');
insert into `Student` values ('20111013', 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전');
insert into `Student` values ('20111014', 11, 'P11104', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전');
insert into `Student` values ('21221010', 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구');
insert into `Student` values ('21231002', 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', '대구');
insert into `Student` values ('22311011', 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구');
insert into `Student` values ('22311014', 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', NULL, '부산');
insert into `Student` values ('22401001', 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', NULL, '부산');
insert into `Student` values ('22401002', 40, 'P40101', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주');
insert into `Student` values ('22421003', 42, 'P42103', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주');

insert into `Professors` values ('P10101', 10, '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울');
insert into `Professors` values ('P10102', 10, '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울');
insert into `Professors` values ('P11101', 11, '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전');
insert into `Professors` values ('P11103', 11, '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', '대전');
insert into `Professors` values ('P11104', 11, '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전');
insert into `Professors` values ('P22110', 22, '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구');
insert into `Professors` values ('P23102', 23, '선덕여왕', '830614-1234567', '010-4101-1984', 'gueen@hg.ac.kr', '대구');
insert into `Professors` values ('P31101', 31, '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구');
insert into `Professors` values ('P31104', 31, '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산');
insert into `Professors` values ('P40101', 40, '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산');
insert into `Professors` values ('P40102', 40, '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', '광주');
insert into `Professors` values ('P42103', 42, '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주');

insert into `Departments` values (10, '국어국문학과', '051-510-1010');
insert into `Departments` values (11, '영어영문학과', '051-510-1011');
insert into `Departments` values (20, '경영학과', '051-510-1020');
insert into `Departments` values (21, '경제학과', '051-510-1021');
insert into `Departments` values (22, '정치외교학과', '051-510-1022');
insert into `Departments` values (23, '사회복지학과', '051-510-1023');
insert into `Departments` values (30, '수학과', '051-510-1030');
insert into `Departments` values (31, '통계학과', '051-510-1031');
insert into `Departments` values (32, '생명과학과', '051-510-1032');
insert into `Departments` values (40, '기계공학과', '051-510-1040');
insert into `Departments` values (41, '전자공학과', '051-510-1041');
insert into `Departments` values (42, '컴퓨터공학과', '051-510-1042');

insert into `Lectures` set `lecNo`='101001', `proNo`='P10101', `lecName`='대학 글쓰기', `lecCredit`=2, `lecTime`=10, `lecClass`='본102';
insert into `Lectures` set `lecNo`='101002', `proNo`='P10102', `lecName`='한국어음운론', `lecCredit`=3, `lecTime`=30, `lecClass`='본102';
insert into `Lectures` set `lecNo`='101003', `proNo`='P10102', `lecName`='한국현대문학사', `lecCredit`=3, `lecTime`=30, `lecClass`='본103';
insert into `Lectures` set `lecNo`='111011', `proNo`='P11103', `lecName`='중세영문학', `lecCredit`=3, `lecTime`=25, `lecClass`='본201';
insert into `Lectures` set `lecNo`='111012', `proNo`='P11104', `lecName`='영미시', `lecCredit`=3, `lecTime`=25, `lecClass`='본201';
insert into `Lectures` set `lecNo`='231110', `proNo`='P23102', `lecName`='사회복지학개론', `lecCredit`=1, `lecTime`=8, `lecClass`='별관103';
insert into `Lectures` set `lecNo`='311002', `proNo`='P31101', `lecName`='통계학의 이해', `lecCredit`=2, `lecTime`=16, `lecClass`='별관303';
insert into `Lectures` set `lecNo`='311003', `proNo`='P31104', `lecName`='기초 통계학', `lecCredit`=3, `lecTime`=26, `lecClass`='별관303';
insert into `Lectures` set `lecNo`='401019', `proNo`='P40101', `lecName`='기계역학', `lecCredit`=3, `lecTime`=36, `lecClass`='공학관 102';
insert into `Lectures` set `lecNo`='421012', `proNo`='P42103', `lecName`='데이터베이스', `lecCredit`=3, `lecTime`=32, `lecClass`='공학관 103';

insert into `Register` set `stdNo`='20101001', `lecNo`='101001', `proNo`='P10101', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='20101001', `lecNo`='101002', `proNo`='P10102', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='20111013', `lecNo`='111011', `proNo`='P11103', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='21231002', `lecNo`='231110', `proNo`='P23102', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='22401001', `lecNo`='401019', `proNo`='P40101', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='22401001', `lecNo`='421012', `proNo`='P42103', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='20101001', `lecNo`='101003', `proNo`='P10102', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='22421003', `lecNo`='311003', `proNo`='P31104', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='22421003', `lecNo`='421012', `proNo`='P42103', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;
insert into `Register` set `stdNo`='20111013', `lecNo`='111012', `proNo`='P11104', `regAttenScore`=null, `regMidScore`=null, `regFinalScore`=null, `regEtcScore`=null, `regTotal`=null, `regGrade`=null;



#문제1
select 
	`stdNo`,
    `stdName`,
    `stdHp`,
    b.`depNo`,
    `depName`
from `student` as a
join `departments` as b on a.depNo = b.depNo
order by `depNo`;


#문제2
select 
	`proNo`,
    `proName`,
    `proHp`,
    b.`depNo`,
    `depName`
from `professors` as a
join `departments` as b on a.depNo = b.depNo;


#문제3
select
	`lecNo`,
    `lecName`,
    `proName`,
    `proHp`
from `lectures` as a
join `professors` as b on a.proNo = b.proNo;


#문제4
select
	`lecNo`,
    `lecName`,
    b.`proNo`,
    `proName`,
    `proHp`,
    c.`depNo`,
    `depName`
from `lectures` as a
join `professors` as b on a.proNo = b.proNo
join `departments` as c on b.depNo = c.depNo;


#문제5
select
	a.`stdNo`,
    b.`stdName`,
    a.`lecNo`,
    c.`lecName`,
    a.`proNo`,
    d.`proName`
from `Register` as a 
join `student` as b on a.stdNo = b.stdNo
join `lectures` as c on a.lecNo = c.lecNo
join `professors` as d on a.proNo = d.proNo;


#문제6
UPDATE `register` SET 
					`regAttenScore` = ceil(rand() * 100),
                    `regMidScore` = ceil(rand() * 100),
                    `regFinalScore` = ceil(rand() * 100);
   
   
#문제7
UPDATE `register` SET
					`regTotal` = (`regAttenScore` + `regMidScore` + `regFinalScore`) / 3;
    
    
#문제8
UPDATE `register` SET
					`regGrade` = if(`regTotal` >= 90, 'A', 
									if(`regTotal` >= 80, 'B',
                                     if(`regTotal` >= 70, 'C',
										if(`regTotal` >= 60, 'D', 'F'))));
   
   
#문제9
select * from `register` order by `regTotal` desc limit 1;


#문제10
select 
	AVG(`regTotal`) as `총점 평균`
from `register` as a
join `student` as b on a.stdNo = b.stdNo
where `stdName` = '정우성';