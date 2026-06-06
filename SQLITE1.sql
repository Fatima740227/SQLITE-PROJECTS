CREATE TABLE IF NOT EXISTS Salesman(
id TEXT  PRIMARY KEY,
name TEXT,
city TEXT,
comission REAL
);
INSERT INTO Salesman( id, name, city, comission)
VALUES("s101", "Ali", "Karachi", 0.15), 
("s202", "Ahmed", "Peshawar", 0.25),
("s303", "Mustafa", "Islamabad", 0.36),
("s404",  "Faraz", "Rawalpindi", 0.67);
SELECT * FROM Salesman;
CREATE TABLE IF NOT EXISTS Orders(
order_number TEXT  PRIMARY KEY,
purchase_amount REAL,
order_date TEXT,
customer_id TEXT,
id TEXT
);
INSERT INTO Orders( order_number, purchase_amount, order_date, customer_id, id)
VALUES("101", 150.5, "2025-10-05", "c101", "s101"),
("102", 670, "2025-10-15", "c102", "s202");
SELECT * FROM Orders;
SELECT name,city FROM Salesman;
SELECT purchase_amount,order_date FROM Orders;