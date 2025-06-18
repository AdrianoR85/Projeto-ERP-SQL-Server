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
drop trigger TgrTestClientAU;

CREATE TRIGGER TgrTestClientAU ON Clients
AFTER UPDATE AS
BEGIN
	DECLARE @field1_newer VARCHAR(50);
	DECLARE @field2_newer VARCHAR(50);

	DECLARE @field1_older VARCHAR(50);
	DECLARE @field2_older VARCHAR(50);

	DECLARE @msg VARCHAR(200);

	SELECT @field1_newer = (SELECT LegalName FROM inserted); 
	SELECT @field2_newer = (SELECT TradeName FROM inserted);

	SELECT @field1_older = (SELECT LegalName FROM deleted); 
	SELECT @field2_older = (SELECT TradeName FROM deleted);
	
	SELECT @msg = CONCAT(
					'Client ', @field1_older, ' with the trade name ', @field2_older, 
					' has been updated successfully to ',
					'Client ', @field1_newer, ' with the trade name ', @field2_newer);

	INSERT INTO TestTrigger(History)VALUES(@msg)
END;
GO


----- TESTING ------
INSERT INTO Clients(LegalName,TradeName) VALUES('Franquia 7','Chocolândia');

UPDATE Clients SET LegalName='Franquia 9', TradeName='Show de Sabores' WHERE IdClient=12; 
/*
older data: Franquia 12  Chocolate Show
newer data: Franquia 9   Show de Sabores
*/

SELECT * FROM Clients;
SELECT * FROM TestTrigger;
