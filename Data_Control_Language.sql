/** CREATE THE LOGIN dba_admin WITH PASSWORD 'Password123' **/
CREATE LOGIN dba_admin
WITH PASSWORD = 'Password123';
GO

/** CREATE A DATABASE USER FOR THE LOGIN CREATED ABOVE **/

CREATE USER dba_admin FOR LOGIN dba_admin
GO

CREATE ROLE report_user

/** GRANT COMMAND **/

GRANT SELECT ON Customer TO dba_admin
GRANT DELETE ON Customer TO dba_admin

GRANT CREATE TABLE TO report_user


/** REVOKE COMMAND **/

REVOKE SELECT ON Customer TO dba_admin

/** DENY COMMANT **/

DENY DELETE ON Customer TO dba_admin
