-- Insert clients into Client table
INSERT INTO Client (LegalName, TradeName) VALUES ('Franquia 1', 'José Chocolates');
INSERT INTO Client (LegalName, TradeName) VALUES ('Franquia 2', 'Maria Chocolates');
INSERT INTO Client (LegalName, TradeName) VALUES ('Franquia 3', 'Marcela Chocolates');
INSERT INTO Client (LegalName, TradeName) VALUES ('Franquia 4', 'João Chocolates');
GO

-- Insert items into Items table
INSERT INTO Items (description) VALUES ('Trufa Lacreme Branco 13,5G');
INSERT INTO Items (description) VALUES ('Trufa Lanut Castanha de Caju 13,5G');
INSERT INTO Items (description) VALUES ('Trufa Lanut 30G');
INSERT INTO Items (description) VALUES ('Drageado Lanut Avelã 150G');
INSERT INTO Items (description) VALUES ('Chocolate Cremoso Receitas 100G');
INSERT INTO Items (description) VALUES ('Tablete Lacreme ao Leite 20G');
INSERT INTO Items (description) VALUES ('Pão de Mel Doce de Leite 50G');
INSERT INTO Items (description) VALUES ('Trufas Lacreme 160G');
INSERT INTO Items (description) VALUES ('Bombom tradicional 18G');
INSERT INTO Items (description) VALUES ('Caixa Presente tradicional 225G');
GO

-- Insert orders into Orders table (ClientID corresponds to IdClient)
INSERT INTO Orders (ClientID) VALUES (1);
INSERT INTO Orders (ClientID) VALUES (3);
INSERT INTO Orders (ClientID) VALUES (4);
GO

-- Insert order items into OrderItems table
-- OrderID and ItemID must match the IDs used above
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (1, 1, 110);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (1, 2, 150);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (1, 3, 90);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (1, 5, 50);
GO

INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (2, 2, 50);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (2, 3, 50);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (2, 6, 50);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (2, 7, 120);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (2, 8, 110);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (2, 9, 400);
GO

INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (3, 4, 200);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (3, 5, 180);
INSERT INTO OrderItems (OrderID, ItemID, quantity) VALUES (3, 6, 150);
GO
