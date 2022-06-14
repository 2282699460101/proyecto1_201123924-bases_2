create view VOTOSPRESIDENTE as 
select d.NOMBRE_DEPTO departamento,m.NOMBRE_MUNI municipio,p.NOMBRE_PART partido, sum(v.voto_cantidad) no_votos
  from acta a, eleccion e, departamento d, municipio m, partido p, voto v
 where a.tipo_eleccion = e.CODIGO_ELE
   and lower(e.NOMBRE_ELE) = 'presidente'
   and a.departamento = d.CODIGO_DEPTO
   and a.municipio = m.CODIGO_MUNI
   and a.NUMERO_MESA = v.voto_mesa
   and v.voto_partido = p.CODIGO_PART
   and v.voto_eleccion = e.CODIGO_ELE
 group by d.NOMBRE_DEPTO,m.NOMBRE_MUNI,p.NOMBRE_PART;