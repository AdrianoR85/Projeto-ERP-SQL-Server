---------- LIST ALL TRIGGERS ---------
-- Server
SELECT * FROM sys.server_triggers;

-- Database and tables
SELECT * FROM sys.triggers;
SELECT * FROM sys.objects WHERE object_id = 162099618;

-- OR

SELECT 
	t.*,
	o.*
FROM sys.triggers t
JOIN sys.objects o ON t.parent_id = o.object_id;


---------- DISABLE ---------
DISABLE TRIGGER dbo.TgrTestClientAI ON dbo.Clients;
DISABLE TRIGGER tgr_test_client_aiu ON dbo.Clients;
DISABLE TRIGGER TgrTestClientAU ON dbo.Clients;

DISABLE TRIGGER TgrControllerERPX ON DATABASE;

DISABLE TRIGGER TgrInstanceControllerDB ON ALL SERVER ;

---------- ENABLE ----------
ENABLE TRIGGER dbo.TgrTestClientAI ON dbo.Clients;
ENABLE TRIGGER tgr_test_client_aiu ON dbo.Clients;
ENABLE TRIGGER TgrTestClientAU ON dbo.Clients;

ENABLE TRIGGER TgrControllerERPX ON DATABASE;

ENABLE TRIGGER TgrInstanceControllerDB ON ALL SERVER;
