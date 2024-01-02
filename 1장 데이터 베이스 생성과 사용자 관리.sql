#날짜 : 2024/01/02
#이름 : 김형민
#내용 : 1장 데이터베이스 생성과 사용자 관리

#실습 1-1
CREATE DATABASE `StudyDB`;
DROP DATABASE `StudyDB`;

#실습 1-2
CREATE USER 'gudals'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `StudyDB`.* TO 'gudals'@'%';
FLUSH PRIVILEGES;

#실습 1-3
ALTER USER 'gudals'@'%' IDENTIFIED BY 'abc1234';
DROP USER 'gudals'@'%';
FLUSH PRIVILEGES;


