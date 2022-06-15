CREATE OR REPLACE DIRECTORY export AS '/u01/app/oracle/oradata/datafiles/exports/datapump';

GRANT read, write ON DIRECTORY export TO system;

expdp system/ANSU10fati tables=liga_piloto.equipo,liga_piloto.jugador DIRECTORY=export DUMPFILE=equipos.dmp LOGFILE=equipos.log content=METADATA_ONLY;

impdp system/ANSU10fati tables=liga_piloto.equipo,liga_piloto.jugador DIRECTORY=export DUMPFILE=equipos.dmp LOGFILE=equipos.log remap_schema=liga_piloto:equipos;

expdp system/ANSU10fati tables=liga_piloto.liga,liga_piloto.jornada DIRECTORY=export DUMPFILE=jornadas.dmp LOGFILE=jornadas.log;

impdp system/ANSU10fati tables=liga_piloto.liga,liga_piloto.jornada DIRECTORY=export DUMPFILE=jornadas.dmp LOGFILE=jornadas.log remap_schema=liga_piloto:jornadas;