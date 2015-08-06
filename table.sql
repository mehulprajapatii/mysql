
#CREATE TABLE ,DEFAULT ENGINE.CHARSET,DROP TABLE
use demo;
	drop table if exists test;
	create table test(
		id int,
		name varchar(255),
		address varchar(255),
		city varchar(255),
		state char(2),
		zip char(10)
		) ENGINE=INNODB DEFAULT CHARSET=UTF8;
	DESCRIBE TEST;

	#SHOW TABLE demo;
	SHOW TABLE status;
	SHOW TABLE status like 'test';
	SHOW create TABLE TEST;

	DROP TABLE IF EXISTS TEST;

