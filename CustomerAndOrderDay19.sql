-- 1. Create a Database

CREATE DATABASE MyStore;

-- 2. Create Customer table with auto-increment CustomerId

USE MyStore;

CREATE TABLE Customer (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(50),
    Phone NVARCHAR(15),
    Address NVARCHAR(100)
);

-- 3. Add few customer details into the Customer table


INSERT INTO Customer (CustomerName, Phone, Address)
VALUES
    ('battu', '123-456-7890', '123 dhkil'),
    ('sairam ', '987-654-3210', '456 Elm mask'),
    ('mahesh', '555-555-5555', '789 ou colony');

-- 4. Add new columns like Country, Salary, and Pincode and update values

	ALTER TABLE Customer
    ADD Country NVARCHAR(50),
    Salary DECIMAL(10, 2),
    Pincode NVARCHAR(10);

	select *from Customer;

 
UPDATE Customer
SET Country = 'Canada',
    Salary = 40000.00,
    Pincode = '500060'
WHERE CustomerName = 'mahesh';

-- 5. Update customer details based on customer name


UPDATE Customer
SET Salary = 55000.00
WHERE CustomerName = 'mahesh';

-- 6. Show the number of customers in each country

SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customer
GROUP BY Country;

-- 7. Show maximum salary, minimum salary, total salary, and average salary for the customers

SELECT
    MAX(Salary) AS MaxSalary,
    MIN(Salary) AS MinSalary,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AvgSalary
FROM Customer;

-- 8. Create an Order table

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(50),
    Quantity INT,
    Rating INT
);

-- Insert data into the Orders table

INSERT INTO Orders (ProductName, Quantity, Rating)
VALUES
    ('item1 A', 10, 4),
    ('item2 B', 5, 5),
    ('item3 C', 20, 3);

-- 9. Fetch data from both tables

SELECT * FROM Customer;

SELECT * FROM Orders;