-- These triggers will fired when a DDL Comand is called

-- Trigger for commands in Server
CREATE TRIGGER TgrInstanceControllerDB 
ON ALL SERVER
FOR create_database
AS 
BEGIN
	PRINT('The new DATABASE has been created!')
END;
GO

-- Trigger to Create a new table in database
CREATE TRIGGER TgrControllerERPX
ON DATABASE
FOR create_table
AS 
BEGIN
	PRINT('The new TABLE has been created!')
END;
GO

-------- TESTING --------

CREATE TABLE Test1(Id Int);
