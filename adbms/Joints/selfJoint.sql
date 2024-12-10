SELECT
    e1.EmployeeID AS Employee1_ID,
    e1.EmployeeName AS Employee1_Name,
    e2.EmployeeID AS Employee2_ID,
    e2.EmployeeName AS Employee2_Name,
    e1.DepartmentID
FROM
    Employees e1
    JOIN Employees e2 ON e1.DepartmentID = e2.DepartmentID
    AND e1.EmployeeID < e2.EmployeeID
ORDER BY
    e1.DepartmentID,
    e1.EmployeeID,
    e2.EmployeeID;