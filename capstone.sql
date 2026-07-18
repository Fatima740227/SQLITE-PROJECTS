DROP TABLE salesman;
CREATE TABLE IF NOT EXISTS salesman(
salesman_id TEXT PRIMARY KEY,
name TEXT,
city TEXT,
commision TEXT
);
INSERT INTO salesman(salesman_id, name, city, commision)
VALUES 
('1001',"John","London",0.15),
('1002', "Nick", "New York", 0.29),
('1003', "James", "Paris", 0.31),
('1004', "Ron", "Rome", 0.87);

SELECT * FROM salesman;

DROP TABLE Customer;

CREATE TABLE IF NOT EXISTS Customer(
customer_id TEXT,
customer_name TEXT PRIMARY KEY,
city TEXT,
grade TEXT,
salesman_id TEXT
);

INSERT INTO Customer(customer_id, customer_name, city,grade, salesman_id)
VALUES
('2002',"Brad","Rome","100",'1001'),
('2004', "Julian", "Moscow", "100",'1002'),
('2006', "Dick", "Calfornia", "100", '1003'),
('2008', "Jake", "Dublin", "100", '1004');

SELECT * FROM Customer;

DROP TABLE orders;

CREATE TABLE IF NOT EXISTS orders(
order_no TEXT  PRIMARY KEY,
purchase_amount REAL,
order_date TEXT,
customer_id TEXT,
salesman_id TEXT
);

INSERT INTO orders(order_no, purchase_amount, order_date,customer_id,salesman_id) 
VALUES
("25",1000,'16-7-2026',"2002","1001"),
("26",1500,'12-6-2026',"2004","1002"),
("27",2000,'10-5-2026',"2006","1003"),
("28",2500,'8-4-2026',"2008","1004");

SELECT * FROM orders;
