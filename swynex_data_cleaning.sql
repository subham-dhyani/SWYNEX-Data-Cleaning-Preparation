CREATE DATABASE Guide;

USE Guide;


CREATE TABLE Employee_data(
id INT PRIMARY KEY,
Name VARCHAR(100),
Salary int
);

INSERT INTO Employee_data
VALUES
(1,"Subham",500000),
(2,"Harshita",100000),
(3,"Tanisha",50000),
(4,"Shruti",20000);


SELECT * FROM Employee_data;

ALTER TABLE Employee_data
Add Column Date_of_birth DATE;

SELECT * FROM Employee_data;

UPDATE Employee_data
SET Date_of_birth = '2007-10-08'
WHERE id = 1;

UPDATE Employee_data
SET Date_of_birth = CASE id
WHEN 2 Then '2006-11-13'
WHEN 3 THEN '2007-12-14'
WHEN 4 THEN '2006-07-31'
END
WHERE id in(2,3,4);

SELECT * FROM Employee_data;



ALTER TABLE Employee_data 
ADD COLUMN E_mail VARCHAR(100);



UPDATE Employee_data
SET e_mail = CASE id 
WHEN 1 THEN "subhamdhyani@gmail.com"
WHEN 2 THEN "harshitanegi@gmail.com"
WHEN 3 THEN "tanisharawat@gmail.com"
When 4 THEN "shrutiarya@gmail.com"
END
WHERE id in(1,2,3,4);


SELECT * FROM Employee_data;

UPDATE Employee_data
SET name =  'Sristi'
WHERE id = 2;

USE guide;
SELECT * FROM employee_data;

ALTER TABLE employee_data
ADD COLUMN age INT;


UPDATE  employee_data
SET age = CASE id
WHEN 1 THEN 18
WHEN 2 THEN 17
WHEN 3 THEN 17
WHEN 4 THEN 16
END 
WHERE id IN (1,2,3,4);



SELECT * FROM employee_data;

SELECT Name, Salary FROM employee_data WHERE Salary >30000;


SELECT Name, Salary > 30000 FROM emloyee_data;
DELETE FROM employee_data WHERE id = 4;


CREATE DATABASE Happy;
Use Happy;

CREATE TABLE Employee(
	Employee_id INT,
    Name VARCHAR(100),
    Department VARCHAR (100),
    City VARCHAR (100),
    Salary INT,
    Age int
    );

INSERT INTO Employee 
(Employee_id, Name, Department, City, Salary, Age)
Values 
(1, 'Subham', 'Finance', 'Dehradun', 45000, 19),
(2, 'Rahul', 'IT', 'Delhi', 52000, 22),
(3, 'Ankit', 'Finance', 'Haridwar', 38000, 21),
(4, 'Priya', 'HR', 'Dehradun', 42000, 23),
(5, 'Neha', 'IT', 'Delhi', 60000, 24),
(6, 'Rohit', 'Finance', 'Pauri', 35000, 20),
(7, 'Tanya', 'HR', 'Delhi', 48000, 22),
(8, 'Aman', 'IT', 'Dehradun', 55000, 25),
(9, 'Karan', 'Finance', 'Delhi', 70000, 26),
(10, 'Sneha', 'HR', 'Haridwar', 40000, 21);




SELECT Name, Salary FROM Employee;

SELECT Name, Salary
FROM Employee
WHERE Salary > '50000';	

SELECT * FROM Employee
WHERE City = "Delhi";

SELECT Name, Salary 
FROM Employee
WHERE Department = 'Finance'AND Salary > '40000'; 


SELECT Name, Department, Salary 
FROM Employee
WHERE Department = "Finance"
or Department = "IT";

Use Employee;


SELECT Name, Salary
FROM Employee
WHERE Department = "IT"
AND Salary > 50000;


SELECT Name, Salary
FROM Employee
ORDER BY Salary DESC;


SELECT Name, Salary 
FROM Employee;


USE Happy;

SELECT Name, Salary
FROM Employee
WHERE Name LIKE 's%';

SELECT * FROM Employee;

SELECT Name, Salary
FROM Employee
WHERE Name LIKE 'S%';

SELECT Name, Salary 
FROM Employee
WHERE Name LIKE '%A%';



SELECT Name, City 
FROM Employee
WHERE City IS NOT NULL;

SELECT COUNT (*)
FROM Emplpoyee; 
SELECT * FROM Employee;

SELECT COUNT(*)
FROM Employee;

SELECT COUNT(*) AS Total_Employees
FROM Employee;

SELECT COUNT(*) AS Total_Employees,
       COUNT(Employee_ID) AS Employee_ID_Count
FROM Employee;

SELECT Employee_ID, Name
FROM Employee
ORDER BY Employee_ID;

SELECT Name, COUNT(*) AS Times
FROM Employee
GROUP BY Name;

SELECT COUNT(*)
FROM  Employee;

SELECT MAX(Salary),MIN(Salary)
FROM Employee;

SELECT Department , SUM(Salary)
FROM Employee
GROUP BY Department;

SELECT  Department, SUM(Salary)
FROM Employee
GROUP BY Department HAVING SUM(Salary) > 300000;


INSERT INTO Employee
(Employee_id, Name, Department, City, Salary, 	Age)
VALUES
(11, 'Arjun', 'IT', 'Delhi', 50000, 23)

UPDATE Employee
SET Salary = 55000
WHERE Employee_id = 11;


UPDATE Employee
SET Salary = 55000
WHERE Employee_ID = 11;

UPDATE Employee
SET Salary = 55000
WHERE Employee_id = 11;

USE Happy;

	DELETE FROM Employee
	WHERE Employee_id = 11;
    
SELECT * FROM Employee;

    SELECT * FROM users;
    
    CREATE DATABASE amazon_project;

USE amazon_project;

CREATE TABLE Amazon_sales(
Order_id VARCHAR(50),
Date VARCHAR(20),
Product VARCHAR(50),
Category VARCHAR(40),
Price DECIMAL(20,4),
Quantity INT,
Total_Sales DECIMAL(20,2),
Customer_name VARCHAR(50),
Customer_location VARCHAR(100),
Payment VARCHAR(50)
);

USE amazon_project;

SELECT *
FROM amazon_sales
LIMIT 10;

USE amazon_project;

DROP TABLE amazon_sales;


CREATE TABLE amazon_sales (
    Order_ID VARCHAR(20),
    Date VARCHAR(20),
    Product VARCHAR(100),
    Category VARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT,
    Total_Sales DECIMAL(10,2),
    Customer_Name VARCHAR(100),
    Customer_Location VARCHAR(100),
    Payment VARCHAR(50)
);





CREATE DATABASE swynex_data;
USE swynex_data;

USE swynex_data;

SHOW TABLES;

SHOW TABLES;
SELECT * 
FROM `bank-full`
LIMIT 5;


SELECT COUNT(*) AS total_records
FROM `bank-full`;
    
    
SELECT *
FROM `bank-full`
LIMIT 10;    




SELECT
    SUM(age IS NULL) AS missing_age,
    SUM(job IS NULL) AS missing_job,
    SUM(marital IS NULL) AS missing_marital,
    SUM(education IS NULL) AS missing_education,
    SUM(balance IS NULL) AS missing_balance,
    SUM(contact IS NULL) AS missing_contact,
    SUM(duration IS NULL) AS missing_duration,
    SUM(y IS NULL) AS missing_y
FROM `bank-full`;

SHOW CREATE TABLE `bank-full`;

SELECT COUNT(*) FROM `bank-full`;

SELECT *
FROM `bank-full`
LIMIT 5;
	SELECT COUNT(*) AS total_records
	FROM `bank-full`;

SELECT COUNT(*) AS total_rows
FROM `bank-full`;

SELECT COUNT(*) AS total_rows
FROM `bank-full`;
SELECT COUNT(*) FROM `bank-full`;
SHOW VARIABLES LIKE 'local_infile';


SHOW CREATE TABLE `bank-full`;
SHOW VARIABLES LIKE 'local_infile';

SHOW CREATE TABLE `bank-full`;
SELECT COUNT(*) FROM `bank-full`;
SHOW VARIABLES LIKE 'secure_file_priv';
DESCRIBE `bank-full`;
SELECT COUNT(*) FROM `bank-full`;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bank-full.csv'
INTO TABLE `bank-full`
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bank-full.csv'
INTO TABLE `bank-full`
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT COUNT(*) AS total_rows
FROM `bank-full`;
SELECT COUNT(*) AS total_rows
FROM `bank-full`;
SHOW WARNINGS;

SHOW VARIABLES LIKE 'secure_file_priv';
SELECT * FROM `bank-full` LIMIT 3;
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bank-full.csv'
INTO TABLE `bank-full`
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT COUNT(*) FROM `bank-full`;
SELECT COUNT(*) AS total_rows;
F


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CONCAT_WS('|',
        age, job, marital, education, `default`,
        balance, housing, loan, contact, day, month,
        duration, campaign, pdays, previous, poutcome, y
    )) AS unique_rows
FROM `bank-full`;


SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CONCAT_WS('|',
        age, job, marital, education, `default`,
        balance, housing, loan, contact, day, month,
        duration, campaign, pdays, previous, poutcome, y
    )) AS unique_rows
FROM `bank-full`;
CREATE TABLE bank_clean LIKE `bank-full`;
INSERT INTO bank_clean
SELECT DISTINCT *
FROM `bank-full`;

SELECT COUNT(*) FROM bank_clean;
SELECT
    SUM(age IS NULL) AS missing_age,
    SUM(job IS NULL) AS missing_job,
    SUM(marital IS NULL) AS missing_marital,
    SUM(education IS NULL) AS missing_education,
    SUM(balance IS NULL) AS missing_balance,
    SUM(contact IS NULL) AS missing_contact,
    SUM(duration IS NULL) AS missing_duration,
    SUM(poutcome IS NULL) AS missing_poutcome,
    SUM(y IS NULL) AS missing_y
FROM bank_clean;
SELECT
    SUM(job = 'unknown') AS unknown_job,
    SUM(education = 'unknown') AS unknown_education,
    SUM(contact = 'unknown') AS unknown_contact,
    SUM(poutcome = 'unknown') AS unknown_poutcome
FROM bank_clean;
SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'swynex_data'
  AND TABLE_NAME = 'bank_clean';
  
  
  SELECT
    SUM(CASE WHEN `default` NOT IN ('yes','no')
        OR `default` IS NULL THEN 1 ELSE 0 END) AS invalid_default,

    SUM(CASE WHEN housing NOT IN ('yes','no')
        OR housing IS NULL THEN 1 ELSE 0 END) AS invalid_housing,

    SUM(CASE WHEN loan NOT IN ('yes','no')
        OR loan IS NULL THEN 1 ELSE 0 END) AS invalid_loan,

    SUM(CASE WHEN y NOT IN ('yes','no')
        OR y IS NULL THEN 1 ELSE 0 END) AS invalid_y,

    SUM(CASE WHEN marital NOT IN ('married','divorced','single')
        OR marital IS NULL THEN 1 ELSE 0 END) AS invalid_marital

FROM bank_clean;
  
  SELECT
    SUM(age <= 0) AS invalid_age,
    SUM(day < 1 OR day > 31) AS invalid_day,
    SUM(duration < 0) AS invalid_duration,
    SUM(campaign < 1) AS invalid_campaign,
    SUM(previous < 0) AS invalid_previous,
    SUM(pdays < -1) AS invalid_pdays
FROM bank_clean;
  
USE swynex_data;

-- 1. Check original data count
SELECT COUNT(*) AS original_rows
FROM `bank-full`;

-- 2. Identify duplicate records
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CONCAT_WS('|',
        age, job, marital, education, `default`,
        balance, housing, loan, contact, day, month,
        duration, campaign, pdays, previous, poutcome, y
    )) AS unique_rows
FROM `bank-full`;

-- 3. Create cleaned table without exact duplicates
CREATE TABLE IF NOT EXISTS bank_clean LIKE `bank-full`;

INSERT INTO bank_clean
SELECT DISTINCT *
FROM `bank-full`
WHERE NOT EXISTS (
    SELECT 1 FROM bank_clean LIMIT 1
);

-- 4. Check cleaned row count
SELECT COUNT(*) AS cleaned_rows
FROM bank_clean;

-- 5. Check NULL values
SELECT
    SUM(age IS NULL) AS missing_age,
    SUM(job IS NULL) AS missing_job,
    SUM(education IS NULL) AS missing_education,
    SUM(balance IS NULL) AS missing_balance,
    SUM(contact IS NULL) AS missing_contact,
    SUM(y IS NULL) AS missing_y
FROM bank_clean;

-- 6. Check numerical values
SELECT
    SUM(age <= 0) AS invalid_age,
    SUM(day < 1 OR day > 31) AS invalid_day,
    SUM(duration < 0) AS invalid_duration,
    SUM(campaign < 1) AS invalid_campaign,
    SUM(previous < 0) AS invalid_previous,
    SUM(pdays < -1) AS invalid_pdays
FROM bank_clean;

USE swynex_data;

-- 1. Check original data count
SELECT COUNT(*) AS original_rows
FROM `bank-full`;

-- 2. Identify duplicate records
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT CONCAT_WS('|',
        age, job, marital, education, `default`,
        balance, housing, loan, contact, day, month,
        duration, campaign, pdays, previous, poutcome, y
    )) AS unique_rows
FROM `bank-full`;

-- 3. Create cleaned table without exact duplicates
CREATE TABLE IF NOT EXISTS bank_clean LIKE `bank-full`;

INSERT INTO bank_clean
SELECT DISTINCT *
FROM `bank-full`
WHERE NOT EXISTS (
    SELECT 1 FROM bank_clean LIMIT 1
);

-- 4. Check cleaned row count
SELECT COUNT(*) AS cleaned_rows
FROM bank_clean;

-- 5. Check NULL values
SELECT
    SUM(age IS NULL) AS missing_age,
    SUM(job IS NULL) AS missing_job,
    SUM(education IS NULL) AS missing_education,
    SUM(balance IS NULL) AS missing_balance,
    SUM(contact IS NULL) AS missing_contact,
    SUM(y IS NULL) AS missing_y
FROM bank_clean;

-- 6. Check numerical values
SELECT
    SUM(age <= 0) AS invalid_age,
    SUM(day < 1 OR day > 31) AS invalid_day,
    SUM(duration < 0) AS invalid_duration,
    SUM(campaign < 1) AS invalid_campaign,
    SUM(previous < 0) AS invalid_previous,
    SUM(pdays < -1) AS invalid_pdays
FROM bank_clean;

  
  