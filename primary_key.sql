#primary key provides both not null and unique constrains
#you can use SERIAL instead of primary key
#but the diffrence is data type in SERIAL IS ->
#SERIAL =>bigint(20) unsigned
#PRIMARY KEY => int(11) 

DROP TABLE IF EXISTS test;
CREATE TABLE test (
   # id INTEGER,
   #id INTEGER AUTO_INCREMENT PRIMARY KEY,
   id SERIAL,
    a VARCHAR(255),
    b VARCHAR(255)
);
INSERT INTO TEST ( id, a, b ) VALUES ( 1, 'one', 'two' );
INSERT INTO TEST ( id, a, b ) VALUES ( 2, 'two', 'three' );
INSERT INTO TEST ( a, b ) VALUES (  'three', 'four' );
INSERT INTO TEST ( a, b ) VALUES (  'four', 'five' );

 
DESCRIBE test;
SHOW TABLE STATUS like 'test';
SHOW CREATE TABLE test;
SHOW INDEXES FROM test;

select * from test;
SELECT LAST_INSERT_ID();