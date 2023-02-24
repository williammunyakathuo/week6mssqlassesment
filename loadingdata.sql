use Week7assesment;

--question one Create two tables, employees and sales. Get a list of all employees who did not make any sales
INSERT INTO employees (EmployeeID, EmployeeName)
VALUES (1, 'John Smith'),
       (2, 'Jane Doe'),
       (3, 'Bob Johnson'),
       (4, 'Emily Wong'),
       (5, 'Michael Lee'),
       (6, 'Samantha Davis'),
       (7, 'David Kim'),
       (8, 'Michelle Chen'),
       (9, 'Jason Wu'),
       (10, 'Amanda Rodriguez');


INSERT INTO sales (SaleID, EmployeeID, SaleAmount)
VALUES (1, 1, 100.00),
       (2, 1, 50.00),
       (3, 2, 75.00),
       (4, 2, 125.00),
       (5, 3, 200.00),
       (6, 4, 150.00),
       (7, 6, 50.00),
       (8, 7, 100.00),
       (9, 8, 75.00),
       (10, 10, 250.00);


--qustion two Write a query to list the number of customers in each country; only include countries with more than 3 customers   , use ORDER BY too. 

DECLARE @i INT = 1;
WHILE @i <= 100
BEGIN
    INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES (@i, 'Customer ' + CAST(@i AS VARCHAR(10)), 'Contact ' + CAST(@i AS VARCHAR(10)), 'Address ' + CAST(@i AS VARCHAR(10)), 'City ' + CAST(@i AS VARCHAR(10)), 'PostalCode ' + CAST(@i AS VARCHAR(10)), 'Country ' + CAST(@i AS VARCHAR(10)));
    SET @i = @i + 1;
END;

--qustion 4
INSERT INTO EmployeeDetails 
VALUES
(1, 'Emma', 'Johnson', 'Female', '1990-06-15', '2014-07-01', 60000.00, 'Sales', '123 Main St', 'New York', 'NY', 'USA', '10001', 'emma.johnson@example.com', '555-1234', NULL, 'Single', 'Bachelor of Science', 5, 'Sales Representative'),
(2, 'Sophia', 'Lee', 'Female', '1985-09-23', '2012-03-15', 75000.00, 'Marketing', '456 Park Ave', 'Los Angeles', 'CA', 'USA', '90001', 'sophia.lee@example.com', '555-5678', 1, 'Married', 'Master of Business Administration', 8, 'Marketing Manager'),
(3, 'Noah', 'Garcia', 'Male', '1992-11-30', '2017-07-01', 55000.00, 'Finance', '789 Broadway', 'Chicago', 'IL', 'USA', '60007', 'noah.garcia@example.com', '555-9876', NULL, 'Single', 'Bachelor of Arts', 3, 'Financial Analyst'),
(4, 'Isabella', 'Brown', 'Female', '1991-03-18', '2016-09-01', 48000.00, 'HR', '1010 State St', 'San Francisco', 'CA', 'USA', '94103', 'isabella.brown@example.com', '555-2468', 2, 'Single', 'Bachelor of Science', 4, 'HR Specialist'),
(5, 'William', 'Smith', 'Male', '1989-07-22', '2013-11-15', 70000.00, 'IT', '321 Oak St', 'Houston', 'TX', 'USA', '77001', 'william.smith@example.com', '555-1357', NULL, 'Married', 'Master of Science', 10, 'IT Manager'),
(6, 'Ava', 'Nguyen', 'Female', '1986-02-28', '2014-05-01', 62000.00, 'Operations', '1111 Market St', 'Phoenix', 'AZ', 'USA', '85001', 'ava.nguyen@example.com', '555-3698', 5, 'Single', 'Bachelor of Business Administration', 6, 'Operations Analyst'),
(7, 'Liam', 'Kim', 'Male', '1993-08-15', '2018-03-01', 52000.00, 'Customer Service', '2222 State St', 'Boston', 'MA', 'USA', '02108', 'liam.kim@example.com', '555-6423', NULL, 'Single', 'Bachelor of Science', 2, 'Customer Service Representative'),
(8, 'Olivia', 'Lee', 'Female', '1992-04-21', '2016-06-01', 65000.00, 'Sales', '234 Market St', 'San Diego', 'CA', 'USA', '92101', 'olivia.lee@example.com', '555-2468', NULL, 'Married', 'Bachelor of Science', 2, 'Customer Service Representative')
