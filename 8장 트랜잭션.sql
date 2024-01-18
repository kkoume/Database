#날짜 : 2024/01/18
#이름 : 조영흥
#내용 : 8장 트랜잭션과 병행 제어

#실습 8-1
-- 트랜잭션 시작
start transaction;

select * from `bank_account`;

update `bank_account` 
	set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';
    
update `bank_account`
	set `a_balance` = `a_balance` + 10000
	where `a_no` = '101-11-1003';

-- 트랜잭션 작업 완료
commit;

select * from `bank_account`;


#실습 8-2
-- 트랜잭션 시작
start transaction;

select * from `bank_account`;

update `bank_account` 
	set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';
    
update `bank_account`
	set `a_balance` = `a_balance` + 10000
	where `a_no` = '101-11-1003';
    
-- 트랜잭션 작업 실패 처리
rollback;

select * from `bank_account`;


#실습 8-3
select @@autocommit;
set autocommit = 0;

update `bank_account` 
	set `a_balance` = `a_balance` - 10000
	where `a_no` = '101-11-1001';
    
rollback;

select * from `bank_account`;


#실습 8-4. Lock & Unlock 병행제어 실습 by root
-- 일반관리자 계정으로 접속해서 똑같이 실습진행
select * from `bank_account`;

start transaction;

update `bank_account`
	set `a_balance` = `a_balance` - 10000
    where `a_no` = '101-11-1001';
    
commit;