-- Checking the SQL Server Agent Status
-- Copyright © 2016 by JP Chen of DatAvail Corporation
-- This script is free for non-commercial purposes with no warranties.

IF EXISTS(
    SELECT 1 FROM MASTER.dbo.sysprocesses WHERE program_name = N'SQLAgent - Generic Refresher'
)
    BEGIN
        SELECT SERVERPROPERTY('ServerName') AS 'InstanceName', 'Running' AS 'SQLServerAgent Status'
    END
ELSE
    BEGIN
        SELECT SERVERPROPERTY('ServerName') AS 'InstanceName', 'Stopped' AS 'SQLServerAgent Status'
    END