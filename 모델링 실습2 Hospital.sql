#날짜 2024/01/16
#이름 : 조영흥
#내용 : 모델링 실습

insert into `departments` values ('101', '소아과', '김유신', '051-123-0101');
insert into `departments` values ('102', '내과', '김춘추', '051-123-0102');
insert into `departments` values ('103', '외과', '장보고', '051-123-0103');
insert into `departments` values ('104', '피부과', '선덕여왕', '051-123-0104');
insert into `departments` values ('105', '이비인후과', '강감찬', '051-123-0105');
insert into `departments` values ('106', '산부인과', '신사임당', '051-123-0106');
insert into `departments` values ('107', '흉부외과', '류성룡', '051-123-0107');
insert into `departments` values ('108', '정형외과', '송상현', '051-123-0108');
insert into `departments` values ('109', '신경외과', '이순신', '051-123-0109');
insert into `departments` values ('110', '비뇨기과', '정약용', '051-123-0110');
insert into `departments` values ('111', '안과', '박지원', '051-123-0111');
insert into `departments` values ('112', '치과', '전봉준', '051-123-0112');

insert into `Doctors` values ('D101101', '김유신', '1976-01-21', 'M', '101', '과장', '010-1101-1976', 'kimys@bw.com');
insert into `Doctors` values ('D101102', '계백', '1975-06-11', 'M', '101', '전문의', '010-1102-1975', 'gaeback@bw.com');
insert into `Doctors` values ('D101103', '김관창', '1989-05-30', 'M', '101', '전문의', '010-1103-1989', 'kwanch@bw.com');
insert into `Doctors` values ('D102101', '김춘추', '1979-04-13', 'M', '102', '과장', '010-2101-1979', 'kimcc@bw.com');
insert into `Doctors` values ('D102104', '이사부', '1966-09-12', 'M', '102', '전문의', '010-2104-1966', 'leesabu@bw.com');
insert into `Doctors` values ('D103101', '장보고', '1979-07-28', 'M', '103', '과장', '010-3101-1979', 'jangbg@bw.com');
insert into `Doctors` values ('D104101', '선덕여왕', '1984-06-15', 'F', '104', '과장', '010-4101-1984', 'gueen@bw.com');
insert into `Doctors` values ('D105101', '강감찬', '1965-10-21', 'M', '105', '과장', '010-5101-1965', 'kang@bw.com');
insert into `Doctors` values ('D106101', '신사임당', '1972-11-28', 'F', '106', '과장', '010-6101-1972', 'sinsa@bw.com');
insert into `Doctors` values ('D107103', '이이', '1992-09-07', 'M', '107', '전문의', '010-7103-1992', 'leelee@bw.com');
insert into `Doctors` values ('D107104', '이황', '1989-12-09', 'M', '107', '전문의', '010-7104-1989', 'hwang@bw.com');
insert into `Doctors` values ('D108101', '송상현', '1977-03-14', 'M', '108', '과장', '010-8101-1977', 'ssh@bw.com');

insert into `Patients` values ('P102101', 'D102101', 'N102101', '정우성', '760121-1234567', 'M', '서울', '010-1101-7601', NULL, '배우');
insert into `Patients` values ('P103101', 'D103101', 'N103101', '이정재', '750611-1234567', 'M', '서울', '010-1102-7506', NULL, '배우');
insert into `Patients` values ('P102102', 'D102104', 'N102103', '전지현', '890530-1234567', 'F', '대전', '010-1103-8905', 'jjh@naver.com', '자영업');
insert into `Patients` values ('P104101', 'D104101', 'N104101', '이나영', '790413-1234567', 'F', '대전', '010-2101-7904', 'lee@naver.com', '회사원');
insert into `Patients` values ('P105101', 'D105101', 'N105101', '원빈', '660912-1234567', 'M', '대전', '010-2104-6609', 'one@daum.net', '배우');
insert into `Patients` values ('P103102', 'D103101', 'N103101', '장동건', '790728-1234567', 'M', '대구', '010-3101-7907', 'jang@naver.com', '배우');
insert into `Patients` values ('P104102', 'D104101', 'N104101', '고소영', '840615-1234567', 'F', '대구', '010-4101-8406', 'goso@daum.net', '회사원');
insert into `Patients` values ('P108101', 'D108101', 'N108101', '김연아', '651021-1234567', 'F', '대구', '010-5101-6510', 'yuna@daum.net', '운동선수');
insert into `Patients` values ('P102103', 'D102104', 'N102102', '유재석', '721128-1234567', 'M', '부산', '010-6101-7211', NULL, '개그맨');
insert into `Patients` values ('P107101', 'D107104', 'N107101', '강호동', '920907-1234567', 'M', '부산', '010-7103-9209', NULL, '개그맨');
insert into `Patients` values ('P105102', 'D105101', 'N105101', '조인성', '891209-1234567', 'M', '광주', '010-7104-8912', 'join@gmail.com', '배우');
insert into `Patients` values ('P104103', 'D104101', 'N104101', '강동원', '770314-1234567', 'M', '광주', '010-8101-7703', 'dong@naver.com', '배우');

insert into `Nurses` values ('N101101', '송승헌', '1976-02-21', 'M', '101', '수간호사', '010-1101-7602', 'ssh@bw.com');
insert into `Nurses` values ('N102101', '이영애', '1975-07-11', 'F', '102', '수간호사', '010-1102-7507', 'yung@bw.com');
insert into `Nurses` values ('N102102', '엄정화', '1989-06-30', 'F', '102', '주임', '010-1103-8906', 'um@bw.com');
insert into `Nurses` values ('N102103', '박명수', '1979-05-13', 'M', '102', '주임', '010-2101-7905', 'park@bw.com');
insert into `Nurses` values ('N103101', '정준하', '1966-10-12', 'M', '103', '주임', '010-2104-6610', 'jung@bw.com');
insert into `Nurses` values ('N104101', '김태희', '1979-08-28', 'F', '104', '주임', '010-3101-7908', 'taeh@bw.com');
insert into `Nurses` values ('N105101', '송혜교', '1984-07-15', 'F', '105', '주임', '010-4101-8407', 'song@bw.com');
insert into `Nurses` values ('N106101', '공유', '1965-11-21', 'M', '106', '간호사', '010-5101-6511', 'gong@bw.com');
insert into `Nurses` values ('N107101', '이병헌', '1972-12-28', 'M', '107', '간호사', '010-6101-7212', 'byung@bw.com');
insert into `Nurses` values ('N108101', '송중기', '1992-10-07', 'M', '108', '간호사', '010-7103-9210', 'jungi@bw.com');

insert into `treatments` set `treat_no`=1021001, `doc_id`='D102101', `pat_id`='P102101', `treat_contents`='감기, 몸살', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1031002, `doc_id`='D103101', `pat_id`='P103101', `treat_contents`='교통사고 외상', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1021003, `doc_id`='D102104', `pat_id`='P102102', `treat_contents`='위염, 장염', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1041004, `doc_id`='D104101', `pat_id`='P104101', `treat_contents`='피부 트러블', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1051005, `doc_id`='D105101', `pat_id`='P105101', `treat_contents`='코막힘 및 비염', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1031006, `doc_id`='D103101', `pat_id`='P103102', `treat_contents`='목 디스크', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1041007, `doc_id`='D104101', `pat_id`='P104102', `treat_contents`='여드름', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1081008, `doc_id`='D108101', `pat_id`='P108101', `treat_contents`='오른쪽 발목 뼈 골절', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1021009, `doc_id`='D102104', `pat_id`='P102103', `treat_contents`='소화불량', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1071010, `doc_id`='D107104', `pat_id`='P107101', `treat_contents`='가슴 통증', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1051011, `doc_id`='D105101', `pat_id`='P105102', `treat_contents`='귀 이명', `treat_datetime`=NOW();
insert into `treatments` set `treat_no`=1041012, `doc_id`='D104101', `pat_id`='P104103', `treat_contents`='팔목 화상', `treat_datetime`=NOW();

insert into `charts` set `chart_id`='C1021001', `treat_no`=1021001, `doc_id`='D102101', `pat_id`='P102101', `chart_contents`='감기 주사 및 약 처방';
insert into `charts` set `chart_id`='C1031002', `treat_no`=1031002, `doc_id`='D103101', `pat_id`='P103101', `chart_contents`='입원 치료';
insert into `charts` set `chart_id`='C1021003', `treat_no`=1021003, `doc_id`='D102104', `pat_id`='P102102', `chart_contents`='위내시경';
insert into `charts` set `chart_id`='C1041004', `treat_no`=1041004, `doc_id`='D104101', `pat_id`='P104101', `chart_contents`='피부 감염 방지 주사';
insert into `charts` set `chart_id`='C1051005', `treat_no`=1051005, `doc_id`='D105101', `pat_id`='P105101', `chart_contents`='비염 치료';
insert into `charts` set `chart_id`='C1031006', `treat_no`=1031006, `doc_id`='D103101', `pat_id`='P103102', `chart_contents`='목 견인치료';
insert into `charts` set `chart_id`='C1041007', `treat_no`=1041007, `doc_id`='D104101', `pat_id`='P104102', `chart_contents`='여드름 치료약 처방';
insert into `charts` set `chart_id`='C1081008', `treat_no`=1081008, `doc_id`='D108101', `pat_id`='P108101', `chart_contents`='발목 깁스';
insert into `charts` set `chart_id`='C1021009', `treat_no`=1021009, `doc_id`='D102104', `pat_id`='P102103', `chart_contents`='주사 처방';
insert into `charts` set `chart_id`='C1071010', `treat_no`=1071010, `doc_id`='D107104', `pat_id`='P107101', `chart_contents`='MRI 검사';
insert into `charts` set `chart_id`='C1051011', `treat_no`=1051011, `doc_id`='D105101', `pat_id`='P105102', `chart_contents`='귀 청소 및 약 처방';
insert into `charts` set `chart_id`='C1041012', `treat_no`=1041012, `doc_id`='D104101', `pat_id`='P104103', `chart_contents`='화상 크림약 처방';


#문제1
select 
	`doc_id`,
    `doc_name`,
    `doc_birth`,
    a.`dep_no`,
    `dep_name`
from `doctors` as a
join `departments` as b on a.dep_no = b.dep_no;


#문제2
select 
	`nur_id`,
    `nur_name`,
    `nur_birth`,
    a.`dep_no`,
    `dep_name`
from `nurses` as a
join `departments` as b on a.dep_no = b.dep_no;


#문제3
select 
	`pat_id`,
    `pat_name`,
    `pat_jumin`,
    `pat_phone`,
    `doc_name`,
    `nur_name`
from `patients` as a
join `doctors` as b on a.doc_id = b.doc_id
join `nurses` as c on a.nur_id = c.nur_id;


#문제4
select 
	`pat_name`,
    `doc_name`,
    `treat_contents`,
    `chart_contents`,
    `treat_datetime`
from `treatments` as a
join `patients` as b on a.pat_id = b.pat_id
join `doctors` as c on a.doc_id = c.doc_id
join `charts` as d on a.treat_no = d.treat_no;


#문제5
select 
	a.`treat_no`,
    `pat_name`,
    `doc_name`,
    `treat_contents`,
    `chart_contents`,
    `treat_datetime`
from `treatments` as a
join `patients` as b on a.pat_id = b.pat_id
join `doctors` as c on a.doc_id = c.doc_id
join `charts` as d on a.treat_no = d.treat_no
join `departments` as e on c.dep_no = e.dep_no
where `dep_name`='외과';


#문제6
select 
	a.`treat_no`,
    `pat_name`,
    `doc_name`,
    `treat_contents`,
    `chart_contents`,
    `treat_datetime`
from `treatments` as a
join `patients` as b on a.pat_id = b.pat_id
join `doctors` as c on a.doc_id = c.doc_id
join `charts` as d on a.treat_no = d.treat_no
where `treat_contents` like '%화상%';


#문제7
select * from `patients` where `pat_jumin` between '840101%' and '941231%';

select * from
	(select 
		*,
		year(now()) - concat('19', substring(`pat_jumin`, 1, 2)) as `age`
	 from 
		`patients`) as a
where `age` between 30 and 40;

select 
	* 
from `patients` 
where 
	year(now()) - concat('19', substring(`pat_jumin`, 1, 2))
    between 30 and 40;


#문제8
select 
	`dep_manager`,
    `dep_name`
from `departments` as a
left join `doctors` as b on a.dep_no = b.dep_no
where `doc_id` is null;


#문제9
select 
	GROUP_CONCAT(`pat_name` separator '^') as `환자`
from `nurses` as a
join `patients` as b on a.nur_id = b.nur_id
where `nur_name`='김태희';


#문제10
select 
	a.`nur_id`,
    `nur_name`,
	count(*) as '환자수'
from `nurses` as a
join `patients` as b on a.nur_id = b.nur_id
group by a.`nur_id`
order by `환자수` desc limit 1;