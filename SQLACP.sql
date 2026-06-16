-- Create the CUSTOMER table if it does not exist
CREATE TABLE IF NOT EXISTS CUSTOMER (
    CUSTOMER_ID TEXT PRIMARY KEY,
    CUST_NAME TEXT NOT NULL,
    CITY TEXT,
    GRADE INTEGER,
    SALESMAN_ID TEXT
);

-- Insert sample data into the CUSTOMER table
INSERT INTO CUSTOMER (CUSTOMER_ID, CUST_NAME, CITY, GRADE, SALESMAN_ID) VALUES
('C101', 'ALI', 'NEW YORK', 120, 'S001'),
('C102', 'SARA', 'LONDON', 90, 'S002'),
('C103', 'AHMED', 'NEW YORK', 80, 'S003'),
('C104', 'FATIMA', 'PARIS', 150, 'S001'),
('C105', 'RANIA', 'NEW YORK', 110, 'S002'),
('C106', 'MAYEDA', 'TOKYO', 130, 'S003');

-- Select all records from the CUSTOMER table
SELECT * FROM CUSTOMER;

-- Query customers who belong to New York
SELECT * FROM CUSTOMER WHERE CITY = 'NEW YORK';

-- Query customers having grade above 100
SELECT * FROM CUSTOMER WHERE GRADE > 100;

-- Query customers who belong to New York OR have grade above 100
SELECT * FROM CUSTOMER WHERE CITY = 'NEW YORK' OR GRADE > 100;

-- Query customers who belong to New York AND have grade above 100
SELECT * FROM CUSTOMER WHERE CITY = 'NEW YORK' AND GRADE > 100;

-- Query customers from New York with grade less than 100
SELECT * FROM CUSTOMER WHERE CITY = 'NEW YORK' AND GRADE < 100;

-- Query customers who belong to Paris OR Tokyo
SELECT * FROM CUSTOMER WHERE CITY = 'PARIS' OR CITY = 'TOKYO';

-- Query customers having grade between 100 and 150
SELECT * FROM CUSTOMER WHERE GRADE BETWEEN 100 AND 150;