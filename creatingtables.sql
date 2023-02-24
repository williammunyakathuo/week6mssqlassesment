use Week7assesment;

CREATE TABLE Customers (
    CustomerID INT NOT NULL PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    ContactName VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50)
);

CREATE TABLE sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleAmount DECIMAL(10, 2),
    CONSTRAINT FK_sales_employees FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID)
);

CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    HireDate DATE,
    Salary DECIMAL(10,2),
    Department VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    PostalCode VARCHAR(20),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    ManagerID INT,
    MaritalStatus VARCHAR(10),
    Education VARCHAR(50),
    ExperienceYears INT,
    Position VARCHAR(50)
);