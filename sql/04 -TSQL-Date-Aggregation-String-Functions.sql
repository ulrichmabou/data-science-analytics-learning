-------------------------------------------------------
--JOINS
-------------------------------------------------------

CREATE TABLE MyEmployee(employeeID int, firstname VARCHAR(20), lastname VARCHAR(20))

INSERT INTO MyEmployee VALUES(1, 'Ulrich', 'Mabou')
INSERT INTO MyEmployee VALUES(2, 'Joel', 'Fene')
INSERT INTO MyEmployee VALUES(3, 'John', 'Doe')

SELECT * FROM MyEmployee

CREATE TABLE MySalary(employeeID int, salary float)

INSERT INTO MySalary VALUES(1, 10000)
INSERT INTO MySalary VALUES(2, 8000)
INSERT INTO MySalary VALUES(3, 6000)

SELECT * FROM MyEmployee
SELECT * FROM MySalary

-- Inner Join
SELECT A.firstname, A.lastname, B.salary 
FROM MyEmployee A INNER JOIN MySalary B ON A.employeeID = B.employeeID


-- Left Outer Join
CREATE TABLE MyPhone(employeeID int, phonenumber int)
INSERT INTO MyPhone VALUES(1, 123456)
INSERT INTO MyPhone VALUES(2, 135790)

SELECT * FROM MyEmployee
SELECT * FROM MyPhone

SELECT A.firstname, A.lastname, B.phonenumber FROM MyEmployee A LEFT JOIN MyPhone B
ON A.employeeID = B.employeeID

-- Right Outer Join
CREATE TABLE MyParking(employeeID int, parkingspot VARCHAR(20))
INSERT INTO MyParking VALUES(1, 'a1')
INSERT INTO MyParking VALUES(2, 'a2')

SELECT * FROM MyParking
SELECT * FROM MyEmployee

SELECT A.parkingspot, B.firstname, B.lastname FROM MyParking A RIGHT JOIN MyEmployee B
ON A.employeeID = B.employeeID

-- Full Outer Join
CREATE TABLE MyCustomer(customerid int, customername VARCHAR(20))
INSERT INTO MyCustomer VALUES(1, 'Ulrich')
INSERT INTO MyCustomer VALUES(2, 'Joel')

CREATE TABLE MyOrder(ordernumber int, ordername VARCHAR(20), customerid int)
INSERT INTO MyOrder VALUES(1, 'SomeOrder1', 1)
INSERT INTO MyOrder VALUES(2, 'SomeOrder2', 2)
INSERT INTO MyOrder VALUES(3, 'SomeOrder3', 7)
INSERT INTO MyOrder VALUES(4, 'SomeOrder4', 8)

SELECT * FROM MyCustomer
SELECT * FROM MyOrder

SELECT A.customerid, A.customername, B.ordernumber, B.ordername 
FROM MyCustomer A FULL OUTER JOIN MyOrder B
ON A.customerid = B.customerid

-- Cross Join
SELECT * FROM MyCustomer
SELECT * FROM MySalary

SELECT * FROM MyCustomer CROSS JOIN MySalary

-- Same result - cross join
SELECT * FROM MyCustomer, MySalary

----------------------------------------------------------------------
-- Dates, Aggragations and String Functions
----------------------------------------------------------------------

-- Dates
SELECT GETDATE()

SELECT GETDATE() - 2

--- DATEPART
SELECT DATEPART(YYYY, GETDATE()) AS YearNumber
SELECT DATEPART(MM, GETDATE()) AS MonthNumber 
SELECT DATEPART(DD, GETDATE()) AS DayNumber 

--- DATEADD
SELECT DATEADD(DAY, 4, GETDATE())
SELECT DATEADD(DAY, 4, '5/20/2020')

SELECT DATEADD(MONTH, 4, GETDATE())

SELECT DATEADD(YEAR, 4, GETDATE())

--
SELECT TOP 10 * FROM [Production].[WorkOrder]

SELECT WorkOrderID, ProductID, StartDate, EndDate, DATEDIFF(DAY, StartDate, EndDate)
FROM [Production].[WorkOrder]

-- Getting the first day of the current month
SELECT DATEADD(dd, -(DATEPART(DAY, GETDATE()) -1), GETDATE())


-- Aggregate Functions
SELECT * FROM MySalary

SELECT AVG(salary) FROM MySalary

SELECT COUNT(salary) FROM MySalary

SELECT COUNT(*) FROM MySalary

SELECT SUM(salary) FROM MySalary

SELECT MIN(salary) FROM MySalary

SELECT MAX(salary) FROM MySalary

-- String Functions
SELECT * FROM MyOrder

-- CONCAT 
PRINT CONCAT('String 1', ' String 2')

SELECT ordernumber, ordername, CONCAT(ordername, ' ', ordername) AS ConcatenatedText
FROM MyOrder

SELECT ordernumber, ordername, CONCAT(ordername, ' ', RAND()) AS ConcatenatedText
FROM MyOrder

-- LEFT
SELECT ordernumber, ordername, LEFT(ordername, 5) FROM MyOrder

-- RIGHT
SELECT ordernumber, ordername, RIGHT(ordername, 5) FROM MyOrder

-- SUBSTRING
SELECT ordernumber, ordername, SUBSTRING(ordername, 2, 5) FROM MyOrder

-- LOWERCASE
SELECT ordernumber, ordername, LOWER(ordername) FROM MyOrder

-- UPPERCASE
SELECT ordernumber, ordername, UPPER(ordername) FROM MyOrder

-- LENGTH
SELECT ordernumber, ordername, LEN(ordername) FROM MyOrder

-- TRIM
SELECT '    Mytext      '
SELECT LEN('    Mytext      ')

-- LTRIM
SELECT LTRIM('    Mytext      ')

-- RTRIM
SELECT RTRIM('    Mytext      ')

-- 
SELECT LTRIM(RTRIM('    Mytext      '))















