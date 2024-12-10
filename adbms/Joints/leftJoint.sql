SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate
FROM
    Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerId;