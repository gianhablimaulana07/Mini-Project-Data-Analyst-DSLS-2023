SELECT *, (DAY(CAST(O.ShippedDate AS DATETIME)) - DAY(CAST(O.RequiredDate AS DATETIME))) AS Promised_Time
FROM Shippers  AS S
INNER JOIN Orders AS O ON S.ShipperID = O.ShipVia
INNER JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
INNER JOIN Products AS P ON OD.ProductID = P.ProductID
INNER JOIN Categories AS C ON P.CategoryID = C.CategoryID
