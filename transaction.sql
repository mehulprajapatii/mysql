create table widgetInventory(
	id serial,
	description varchar(255),
	onhand int not null
);

create table widgetsales(
	id serial,
	inv_id int,
	quan int,
	price int

);

insert into widgetInventory(
	description,onhand
)values
	('rock',25),
	('futfatti',25),
	('paper',25);
select * from widgetInventory;



/*
*transaction
*/

START TRANSACTION;
INSERT INTO widgetsales (inv_id,quan,price)
VALUES (
	1,5,500
);
UPDATE widgetInventory SET onhand=(onhand-5)
WHERE ID=1;
COMMIT;


START TRANSACTION;
INsERT INTO widgetInventory (description,onhand)
VALUES(
	'TOY',25
);
ROLLBACK;
SELECT * FROM widgetInventory;
SELECT * FROM widgetsales;