#constraintes
#null is not a value,is a absense of value
#not null
DROP TABLE IF EXISTS test;
CREATE TABLE test (
    #a INTEGER,
    #a INTEGER NOT NULL,
     a INTEGER NOT NULL DEFAULT 47,
    #b VARCHAR(255),
     b VARCHAR(255) UNIQUE
);
INSERT INTO TEST ( b ) VALUES ( 'one' );
DESCRIBE test;
show index from test;
SELECT * FROM test;
INSERT INTO TEST ( b ) VALUES (NULL);
INSERT INTO TEST ( b ) VALUES ( NULL );