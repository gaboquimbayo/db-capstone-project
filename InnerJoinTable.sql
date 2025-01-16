SELECT customers.CustomerID, customers.FullName, orders.OrderID, orders.TotalCost, menu.MenuName, menu.CourseName FROM
customers INNER JOIN bookings using(CustomerID)
INNER JOIN orders using(OrderID)
INNER JOIN menu using(MenuID)
WHERE orders.TotalCost > 70
ORDER BY orders.TotalCost ASC;