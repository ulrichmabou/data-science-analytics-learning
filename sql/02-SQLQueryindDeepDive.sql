USE [AdventureWorks2017]

--
SELECT * FROM [HumanResources].[Department]

-- Show me all the department names
SELECT Name FROM [HumanResources].[Department]

-- Show me all the groups
SELECT GroupName FROM [HumanResources].[Department]

-- Show me all the distinct group names
SELECT DISTINCT GroupName FROM [HumanResources].[Department]

-- Show me all the department names belonging to manufacturing
SELECT Name, GroupName FROM [HumanResources].[Department]
WHERE GroupName LIKE 'Manufacturing'

-- Give me all the employees from the employee table
SELECT * FROM [HumanResources].[Employee]

-- Give me a list of all employees who have an OrgLevel of 2
SELECT * FROM [HumanResources].[Employee] WHERE OrganizationLevel = 2

-- Give me a list of all employees who have an OrgLevel of 2 or 3
SELECT * FROM [HumanResources].[Employee] WHERE OrganizationLevel IN (2,3)

-- Give me a list of employees who have the job title as facilities manager
SELECT * FROM [HumanResources].[Employee] WHERE JobTitle LIKE 'Facilities Manager'

-- Give me a list of employees who have the word 'Manager' in their job title
SELECT * FROM [HumanResources].[Employee] WHERE JobTitle LIKE '%Manager'

-- Give me all employees who are born after Jan 1, 1980
SELECT * FROM [HumanResources].[Employee] WHERE BirthDate > '1/1/1980'

-- Give me all employees born between Jan 1, 1970 and Jan 1, 1980
SELECT * FROM [HumanResources].[Employee] WHERE BirthDate > '1/1/1970' AND BirthDate < '1/1/1980'

SELECT * FROM [HumanResources].[Employee] WHERE BirthDate BETWEEN '1/1/1970' AND '1/1/1980'

--- CALCULATED COLUMNS
SELECT Name, ListPrice FROM [Production].[Product]

SELECT Name, ListPrice, ListPrice + 10 AS AdjustedListPrice FROM [Production].[Product]

-- INTO
SELECT Name, ListPrice, ListPrice + 10 AS AdjustedListPrice INTO [Production].[Product_2] FROM [Production].[Product]

SELECT * FROM [Production].[Product_2]

SELECT Name, ListPrice, ListPrice + 10 AS AdjustedListPrice INTO #tmpname FROM [Production].[Product]

SELECT * FROM #tmpname

-- DELETE Data from table
DELETE FROM [Production].[Product_2] WHERE Name LIKE 'Bearing Ball'

SELECT * FROM [Production].[Product_2]

--- UPDATE
UPDATE [Production].[Product_2]
SET Name = 'Blade New'
WHERE Name LIKE 'Blade'

SELECT * FROM [Production].[Product_2]