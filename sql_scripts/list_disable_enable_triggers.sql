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
