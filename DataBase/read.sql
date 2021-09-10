--Mostrar la información del título de todas las obras de teatro y títeres ordenadas alfabéticamente
Select 'Consulta 1';
select ob_titulo from obra ORDER BY ob_titulo ASC


--4.2 Mostrar la información de las obras de teatro (título, resumen, año) que se han creado posteriormente al año 2020, ordenadas por título

Select 'Consulta 2';
select obra.ob_titulo as título, obrateatro.ot_resumen as resumen, obrateatro.ot_anio as año from obra, obrateatro where obra.ob_id = obrateatro.ot_id AND obrateatro.ot_anio >= 2020 ORDER BY obra.ob_titulo


--4.3 Mostrar los títulos de las obras de teatro que pertenecen a la compañía Colectivo granjas de piratas

Select 'Consulta 3';
select obra.ob_titulo from obra, obrateatro where obrateatro.ot_compañia = 4 and obra.ob_id=obrateatro.ot_id


--4.4  Mostrar la información de las obras de teatro y títeres (solo los títulos) que ha visto un usuario con alias “rortiz&quot;, ordenadas por título
Select 'Consulta 4';
select obra.ob_titulo from obra, obraasistida where obraasistida.oa_user = "rortiz" and obraasistida.oa_obra=obra.ob_id ORDER BY obra.ob_titulo ASC


--4.5Mostrar la información de los usuarios (alias y nombre y apellidos) que han asisten a la obra &quot; Whomyn &quot;
Select 'Consulta 5';
select asistente.asi_login as alias, asistente.asi_nombre as nombre, asistente.asi_apellido as apellido from asistente, obraasistida where obraasistida.oa_user = asistente.asi_login and obraasistida.oa_obra = 2


--4.6 Mostrar cuantas obras de teatro se han creado después del año 2020
Select 'Consulta 6';
select count(ot_id) as numero from obrateatro where obrateatro.ot_anio>=2020


