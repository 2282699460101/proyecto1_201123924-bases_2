CREATE TABLESPACE ELECCIONESTBS DATAFILE '/u01/app/oracle/oradata/datafiles/ELECCIONESDTF.tbs' 
SIZE 250M
AUTOEXTEND on next 1M
MAXSIZE 500M
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 64K;
/

CREATE USER ELECCIONES PROFILE DEFAULT IDENTIFIED BY ELECCIONES 
DEFAULT TABLESPACE ELECCIONESTBS
ACCOUNT UNLOCK;

/
GRANT CONNECT TO ELECCIONES;
GRANT RESOURCE TO ELECCIONES;