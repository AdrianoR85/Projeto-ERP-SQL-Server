ALTER TABLE [dbo].[OrderItems] ADD CONSTRAINT fk_order_in_order_item
FOREIGN KEY (OrderID) REFERENCES [dbo].[Orders](IdOrder);

ALTER TABLE [dbo].[OrderItems] ADD CONSTRAINT fk_item_in_order_item
FOREIGN KEY (ItemID) REFERENCES [dbo].[Items](IdItem);
GO

ALTER TABLE [dbo].[Orders] ADD CONSTRAINT fk_client_in_order 
FOREIGN KEY (ClientID) REFERENCES [dbo].[Clients](IdClient);
GO
