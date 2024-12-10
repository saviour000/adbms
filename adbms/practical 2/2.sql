--  Search any specific Word
SELECT
    *
FROM
    Customers
WHERE
    last_Name = 'Doe';

-- arranging in descending order
SELECT
    *
FROM
    Books
ORDER BY
    publication_year DESC;

-- for total number
SELECT
    COUNT(*) AS total_orders
FROM
    Orders;

-- average salary of all
SELECT
    DepartmentID,
    AVG(Salary) AS average_salary
FROM
    Employees
GROUP BY
    DepartmentID;

--  to sort distinct thing from table
SELECT DISTINCT
    JobTitle
FROM
    Employees;

-- from all data find a word
SELECT
    *
FROM
    Products
WHERE
    ProductName LIKE '%Laptop%';

-- to find the names of employees who have a salary greater than the average salary of all employees.
SELECT
    FirstName,
    LastName
FROM
    Employees
WHERE
    Salary > (
        SELECT
            AVG(Salary)
        FROM
            Employees
    );

-- union 
SELECT
    ProductName AS Name
FROM
    Products
UNION ALL
SELECT
    first_name AS Name
FROM
    Customers;