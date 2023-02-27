--question one Create two tables, employees and sales. Get a list of all employees who did not make any sales

SELECT e.EmployeeName
FROM employees e
LEFT JOIN sales s ON e.EmployeeID = s.EmployeeID
WHERE s.SaleID IS NULL;

SELECT * FROM dbo.Customers;

--question two Write a query to list the number of customers in each country; only include countries with more than 3 customers   , use ORDER BY too. 

SELECT Country, COUNT(CustomerID) as NumCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3
ORDER BY NumCustomers DESC;


--question three

CREATE PROCEDURE insert_or_update_employee
    @employee_id INT,
    @employee_name VARCHAR(50),
    @employee_salary DECIMAL(10,2),
    @employee_department VARCHAR(50)
AS
BEGIN
    MERGE employee_table AS target
    USING (SELECT @employee_id, @employee_name, @employee_salary, @employee_department) AS source (employee_id, employee_name, employee_salary, employee_department)
    ON target.employee_id = source.employee_id
    WHEN MATCHED THEN
        UPDATE SET
            target.employee_name = source.employee_name,
            target.employee_salary = source.employee_salary,
            target.employee_department = source.employee_department
    WHEN NOT MATCHED THEN
        INSERT (employee_id, employee_name, employee_salary, employee_department)
        VALUES (source.employee_id, source.employee_name, source.employee_salary, source.employee_department);
END

--question 4

SELECT *
FROM EmployeeDetails
GROUP BY FirstName, LastName, Gender, DateOfBirth, Department, Email, PhoneNumber, MaritalStatus, Education, YearsOfExperience, JobTitle, Address, City, State, Country, PostalCode, Salary
HAVING COUNT(*) > 1;


--question 5

SELECT * 
FROM dbo.Customers
WHERE mod(CustomerID,2) <> 0;

--question 6

CREATE FUNCTION CalculateAge(@DOB DATE)
RETURNS INT
AS BEGIN
    DECLARE @Age INT

    SET @Age = DATEDIFF(YEAR, @DOB, GETDATE())

    IF (DATEADD(YEAR, @Age, @DOB) > GETDATE())
        SET @Age = @Age - 1

    RETURN @Age
END


