CREATE DATABASE businessERP;
GO

CREATE TABLE company(companyID INT, company_name CHAR(150), created_date DATETIME);
GO


INSERT INTO company(companyID, company_name, created_date) VALUES(1, 
'Livepath', CONVERT(datetime, '28-03-23 00:00:00 AM', 5))
GO

SELECT * FROM company;
GO

CREATE TABLE employees(employee_id INT, first_name CHAR(100), 
last_name CHAR(200), email CHAR(200), related_company INT)
GO

SELECT * FROM employees;
GO

BULK INSERT employees
FROM 'C:\Users\jorge\OneDrive\Escritorio\Backup OneDrive\DatasetSQLs\employees.csv'
WITH (
		FORMAT = 'CSV',
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n'
		)
GO


DROP TABLE employees;