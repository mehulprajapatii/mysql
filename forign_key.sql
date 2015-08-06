#RDBMS
#refernce point to another table 

DROP TABLE IF EXISTS lend;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS book;

CREATE TABLE client (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO client ( name ) VALUES ( 'Freddy' );
INSERT INTO client ( name ) VALUES ( 'Karen' );
INSERT INTO client ( name ) VALUES ( 'Harry' );
SELECT * FROM client;

CREATE TABLE book (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO book ( title ) VALUES ( 'The Moon is a Harsh Mistress' );
INSERT INTO book ( title ) VALUES ( 'Rendezvous with Rama' );
INSERT INTO book ( title ) VALUES ( 'A Game of Thrones' );
SELECT * FROM book;

CREATE TABLE lend (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stamp TIMESTAMP, 
  c_id INT,
  b_id INT,
  #after adding foreign key constrais
  #FOREIGN KEY(ID[id in second table]) REFERNCES TABLE_NAME(ID)
  foreign key(c_id) REFERENCES client(id),
  foreign key(b_id) REFERENCES book(id)
);

INSERT INTO lend ( c_id, b_id ) VALUES ( 1, 1 );
INSERT INTO lend ( c_id, b_id ) VALUES ( 1, 2 );
INSERT INTO lend ( c_id, b_id ) VALUES ( 3, 3 );
#INSERT INTO lend ( c_id, b_id ) VALUES ( 2, 5 );
SELECT * FROM lend;

#delete from book where id=2;

#join query
SELECT l.id, l.stamp, c.name, b.title
  FROM lend AS l
  LEFT JOIN client AS c ON l.c_id = c.id
  LEFT JOIN book AS b ON l.b_id = b.id
;


