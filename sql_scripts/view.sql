CREATE VIEW vw_OrderDetails AS
  SELECT 
  IdOrder,
  LegalName,
  TradeName,
  i.Description,
  oi.Quantity
FROM [dbo].[Orders] AS o
LEFT JOIN [dbo].[Clients] AS c ON c.IdClient = o.ClientID
LEFT JOIN [dbo].[OrderItems] AS oi ON oi.OrderID = o.IdOrder
LEFT JOIN [dbo].[Items] AS i ON i.IdItem = oi.ItemID;

SELECT * FROM vw_OrderDetails;
