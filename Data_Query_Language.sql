/** FIRST THING WE WILL DO IS TO SIMPLY SELECT EVERYTHING FROM A TABLE **/

SELECT * 
FROM HumanResources.Employee

/** NOW WE WANT TO SELECT COLUMNS FROM THE SAME TABLE **/

SELECT BusinessEntityID, JobTitle,BirthDate,MaritalStatus,Gender, HireDate, SalariedFlag,VacationHours,SickLeaveHours
FROM HumanResources.Employee

/** NOW LET'S START USING SOME CONDITIONS **/

SELECT BusinessEntityID, JobTitle,BirthDate,MaritalStatus,Gender, HireDate, SalariedFlag,VacationHours,SickLeaveHours
FROM HumanResources.Employee
WHERE BusinessEntityID = 1 --- mathematical operator


SELECT BusinessEntityID, JobTitle,BirthDate,MaritalStatus,Gender, HireDate, SalariedFlag,VacationHours,SickLeaveHours
FROM HumanResources.Employee
WHERE BusinessEntityID IN (10, 15, 20) --- logical operators

/** WE WANT EMPLOYEES WITH MORE THAN 2 WEEKS VACATIONS AND THEN **/
--- 40 HOURS = 1 WEEK
--- 80 HOURS = 2 WEEKS OF VACATION

SELECT BusinessEntityID, JobTitle,BirthDate,MaritalStatus,Gender, HireDate, SalariedFlag,VacationHours,SickLeaveHours
FROM HumanResources.Employee
WHERE VacationHours > 80


/** EMPLOYEES WITH LESS OR EQUAL TO 80 HOURS OF VACATION AND ARE SINGLE **/

SELECT BusinessEntityID, JobTitle,BirthDate,MaritalStatus,Gender, HireDate, SalariedFlag,VacationHours,SickLeaveHours
FROM HumanResources.Employee
WHERE VacationHours <= 80 
AND MaritalStatus = 'S'

SELECT BusinessEntityID, JobTitle,BirthDate,MaritalStatus,Gender, HireDate, SalariedFlag,VacationHours,SickLeaveHours
FROM HumanResources.Employee
WHERE VacationHours <= 80 
OR MaritalStatus = 'S'  --- we get more rows here, because we have used logical OR 


