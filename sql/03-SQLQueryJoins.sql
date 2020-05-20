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






