SELECT
    Orders.OrderID,
    Orders.OrderDate,
    Customers.CustomerName
FROM
    Orders
    RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;