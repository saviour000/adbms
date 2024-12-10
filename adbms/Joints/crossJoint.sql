SELECT
    p.ProductID,
    p.ProductName,
    c.CategoryID,
    c.CategoryName
FROM
    Products p
    CROSS JOIN Categories c;

