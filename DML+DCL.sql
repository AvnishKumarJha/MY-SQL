create database shop;
use shop;
CREATE TABLE customers(
name VARCHAR(30) NOT NULL PRIMARY KEY,
email VARCHAR(50),
phone VARCHAR(12)
);
-- DML(data manipulation language)
-- 1.INSERT
INSERT INTO customers (name, email, phone)
VALUES ('Abhi', 'Abhi33@gmail.com', '123-456');
INSERT INTO customers (name, email, phone)
VALUES ('Suresh', 'Suredh69@gmail.com', '456-123');

-- 2.SELECT
select* from customers;

-- 3.UPDATE
UPDATE customers
SET phone = '456-169' WHERE name = 'Suresh';
select* from customers;

-- 4.DELETE
DELETE FROM customers
WHERE name = 'Suresh';
select* from customers;

-- DCL(data control language)
INSERT INTO customers (name, email, phone)
VALUES ('Suresh', 'Suresh69@gmail.com', '456-169');
INSERT INTO customers (name, email, phone)
VALUES ('Ram', 'Ram43@gmail.com', '753-951');
INSERT INTO customers (name, email, phone)
VALUES ('Shyam', 'Shyam67@gmail.com', '123-789');
-- APPLYING DCL TO THE DATABASE NOW

-- 1.GRANT SELECT PERMISSION TO USER
GRANT SELECT ON customers TO Abhi;
-- Granted select permission to user Abhi

-- 2.REVOKE INSERT PERMISSION FROM A USER
REVOKE INSERT ON customers FROM Abhi;
-- Revoked insert permission from user Abhi

-- 3.CREATE A ROLE FOR USER
CREATE ROLE data_analyst;
GRANT SELECT ON customers TO data_analyst;
-- created role data anylist