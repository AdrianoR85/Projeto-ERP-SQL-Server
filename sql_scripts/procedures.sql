-- CATALOG STORED PROCEDURE
sp_columns OrderItems; -- Displays metadata about the columns in the OrderItems table.
sp_pkeys OrderItems; -- Displays metadata about the primary key of the OrderItems table.
sp_fkeys OrderItems; -- Displays where the foreign key is being used.

-- SQL SERVER DATABASE ENGINE STORED PROCEDURE
sp_help -- Displays general metadata about the OrderItems table, including columns, constraints, indexes, and more.

-- Creating Constraints

-- Creating a fk constraint
ALTER TABLE ProductionOrders ADD CONSTRAINT fk_ProductionOrder_Order 
FOREIGN KEY (OrderID) REFERENCES Orders(IdOrder);

-- Creating a check constraint
ALTER TABLE ProductionOrders ADD CONSTRAINT chk_ProductionOrderStatus CHECK
(
    ProductionOrderStatus='aberto'
    OR ProductionOrderStatus='cancelado'
    OR ProductionOrderStatus='produção'
    OR ProductionOrderStatus='finalizado'
);

-- Creating a CHECK constraint to ensure that the OrderStatus column only contains specific allowed values.
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT chk_order_status CHECK
(
    OrderStatus='aberto'
    OR OrderStatus='cancelado'
    OR OrderStatus='produção'
    OR OrderStatus='finalizado'
)
