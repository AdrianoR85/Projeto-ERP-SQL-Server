CREATE TRIGGER TrgGenerateProductionOrder 
ON Orders
AFTER UPDATE AS
BEGIN
	DECLARE @order_status VARCHAR(15);
	DECLARE @manufacturing_deadline DATETIME;

	SELECT @order_status = (SELECT OrderStatus FROM inserted)

	IF @order_status = 'produção'
	BEGIN
		SET @manufacturing_deadline = (SELECT DATEADD(DAY, 7, OrderDate) FROM deleted)

		INSERT INTO ProductionOrders (OrderID, ManufacturingDeadline, ProductionOrderStatus)
		VALUES (1, @manufacturing_deadline, 'aberto')
	END
END;
GO

SELECT * FROM Orders;
SELECT * FROM ProductionOrders;

UPDATE Orders SET OrderStatus='produção' WHERE IdOrder=1;

