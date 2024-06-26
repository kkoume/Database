SELECT 
	a.*,
	b.`nick` 
FROM `Article` AS a
JOIN `User` AS b ON a.writer = b.uid
WHERE `parent` = 0
ORDER BY `no` DESC
LIMIT 0, 10;


INSERT INTO `Article` (`title`, `content`, `writer`, `regip`, `rdate`)
SELECT `title`, `content`, `writer`, `regip`, `rdate` FROM `Article`;

SELECT COUNT(*) FROM `Article` WHERE `parent` = 0;

SELECT * FROM `Article` WHERE `no`= 1

DELETE FROM `Article` WHERE `no` > 5;

UPDATE `Article` SET `hit` = `hit` + 1 WHERE `no` = 1;

SELECT a.*, b.`nick`  
FROM `Article` AS a
JOIN `User` AS b ON a.writer = b.uid
WHERE `parent`=3
ORDER BY `no` ASC;

ALTER TABLE `user` ADD COLUMN `sms` CHAR(1) AFTER `regip`;


SELECT * FROM `Article` WHERE `title` LIKE '%애국가%';


SELECT COUNT(*) FROM `Article` WHERE `parent` = 0

SELECT a.*, b.`nick`  
FROM `Article` AS a JOIN `User` AS b ON a.writer = b.uid
WHERE `parent`=3
ORDER BY `no` ASC;


SELECT COUNT(*) 
FROM `Article` AS a JOIN `User` AS b ON a.writer = b.uid 
WHERE `parent`=0 AND `nick` like '%jeong%' 
ORDER BY `no` DESC LIMIT 0, 10;

SELECT COUNT(*) 
FROM `Article` AS a JOIN `User` AS b ON a.writer = b.uid
WHERE `parent`=0 AND `nick` like '%jeong%';

user

SELECT COUNT(*) FROM `User` WHERE `uid`='a101';studydb