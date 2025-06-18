-- Creating a TgrTestClientAU TRIGGER
CREATE TRIGGER TgrTestClientAU ON Clients
AFTER UPDATE AS
BEGIN
	DECLARE @field1 VARCHAR(50);
	DECLARE @field2 VARCHAR(50);
	DECLARE @msg VARCHAR(200);

	SELECT @field1 = (SELECT LegalName FROM inserted); 
	SELECT @field2 = (SELECT TradeName FROM inserted);
	
	SELECT @msg = CONCAT('Client ', @field1, ' with the trade name ', @field2, 'has been updated successfully.');

	INSERT INTO TestTrigger(History)VALUES(@msg)
END;
GO
  
-- Creating a TgrTestClientAI TRIGGER
CREATE TRIGGER TgrTestClientAI ON Clients
AFTER INSERT AS
BEGIN
	DECLARE @field1 VARCHAR(50);
	DECLARE @field2 VARCHAR(50);
	DECLARE @msg VARCHAR(200);

	SELECT @field1 = (SELECT LegalName FROM inserted); 
	SELECT @field2 = (SELECT TradeName FROM inserted);
	
	SELECT @msg = CONCAT('Client ', @field1, ' with the trade name ', @field2, 'has been registered.');

	INSERT INTO TestTrigger(History)VALUES(@msg)
END;
GO

  
INSERT INTO Clients(LegalName,TradeName) VALUES('Franquia 7','Chocolândia');
UPDATE Clients SET LegalName='Franquia 12', TradeName='Chocolândia Show' WHERE IdClient=12; 

SELECT * FROM Clients;
SELECT * FROM TestTrigger;
