#INDEX IS DS,CONTRO, ACCESS INSERTION ,DELETION
#LIKE MANY DB ,MYSQL USES INDEX
#INDEX USES LOGICAL ORDER
#INDEX ORGAINSESE AS B-TREE(BINARY TREE) TO ORGAINSES DATA


DROP TABLE IF EXISTS test;
CREATE TABLE test (
    id INTEGER,
    a VARCHAR(255),
    b VARCHAR(255),
    INDEX ab(a,b)#index
);
INSERT INTO TEST ( id, a, b ) VALUES ( 1, 'one', 'two' );
INSERT INTO TEST ( id, a, b ) VALUES ( 2, 'two', 'three' );
INSERT INTO TEST ( id, a, b ) VALUES ( 3, 'three', 'four' );
SELECT * FROM test;
DESCRIBE test;
SHOW #INDEXES || #index
index FROM test;

drop index ab on test;
DESCRIBE test;
show INDEXES FROM test;