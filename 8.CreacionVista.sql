GRANT SELECT, INSERT, UPDATE, DELETE ON ELECCIONES.ACTA TO guest1;
/
GRANT SELECT, INSERT, UPDATE, DELETE ON ELECCIONES.DEPARTAMENTO TO guest1;
/
GRANT SELECT, INSERT, UPDATE, DELETE ON ELECCIONES.ELECCION TO guest1;
/
GRANT SELECT, INSERT, UPDATE, DELETE ON ELECCIONES.MUNICIPIO TO guest1;
/
GRANT SELECT, INSERT, UPDATE, DELETE ON ELECCIONES.PARTIDO TO guest1;
/
GRANT SELECT, INSERT, UPDATE, DELETE ON ELECCIONES.VOTO TO guest1;
/
create view guest1.VOTOSPRESIDENTE as 
select d.NOMBRE_DEPTO departamento,m.NOMBRE_MUNI municipio,p.NOMBRE_PART partido, sum(v.voto_cantidad) no_votos
  from elecciones.acta a, elecciones.eleccion e, elecciones.departamento d, 
       elecciones.municipio m, elecciones.partido p, elecciones.voto v
 where a.tipo_eleccion = e.CODIGO_ELE
   and lower(e.NOMBRE_ELE) = 'presidente'
   and a.departamento = d.CODIGO_DEPTO
   and a.municipio = m.CODIGO_MUNI
   and a.NUMERO_MESA = v.voto_mesa
   and v.voto_partido = p.CODIGO_PART
   and v.voto_eleccion = e.CODIGO_ELE
 group by d.NOMBRE_DEPTO,m.NOMBRE_MUNI,p.NOMBRE_PART
 order by 1,2,3;