CREATE TABLE customer(
	idx int(5) auto_increment PRIMARY KEY ,
	name varchar(20) NOT NULL,
	password varchar(10) NOT NULL,
	email varchar(30) NOT NULL,
	addr varchar(30),
	gender varchar(10) NOT NULL,	
	age tinyint(3),
	hobby varchar(30)
);
drop table customer;

INSERT INTO customer (name,password,email,gender)
	values('다현','1234','dahyun@gmail.com','female');
INSERT INTO customer (name,password,email,addr,gender,age,hobby)
	values('홍길동','11111111','hong@naver.com','','female',0,'');
select * from customer;

INSERT INTO customer (name,password,email,gender)
	values('홍길동','11111111','hong@naver.com','female가다라나');
INSERT INTO customer (name,password,email,gender)
	values('홍길동','11111111','hong@naver.com','female가다라나f');