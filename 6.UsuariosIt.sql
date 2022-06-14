CREATE USER it1 IDENTIFIED BY it1 DEFAULT TABLESPACE ELECCIONESTBS;
CREATE USER it2 IDENTIFIED BY it2 DEFAULT TABLESPACE ELECCIONESTBS;
CREATE USER it3 IDENTIFIED BY it3 DEFAULT TABLESPACE ELECCIONESTBS;
/
CREATE ROLE rol_it NOT IDENTIFIED;
/
GRANT CONNECT TO rol_it;
/
GRANT CREATE USER TO rol_it;
/
GRANT CREATE ANY TABLE TO rol_it
/
GRANT SELECT ON ELECCIONES.ACTA TO rol_it;
/
GRANT SELECT ON ELECCIONES.DEPARTAMENTO TO rol_it;
/
GRANT SELECT ON ELECCIONES.ELECCION TO rol_it;
/
GRANT SELECT ON ELECCIONES.MUNICIPIO TO rol_it;
/
GRANT SELECT ON ELECCIONES.PARTIDO TO rol_it;
/
GRANT SELECT ON ELECCIONES.VOTO TO rol_it;
/
GRANT rol_it TO it1;
/
GRANT rol_it TO it2;
/
GRANT rol_it TO it3;
/
