1) 

SELECT COUNT(profesor_id) FROM
   (SELECT profesor_id, count(codigo) as cantidad
   FROM cursos WHERE turno = 'Noche'
   GROUP BY profesor_id
   HAVING count(codigo) > 1) as consulta;


2) SELECT * from Estudiantes e where e.legajo NOT IN (select i.ESTUDIANTE_legajo from Inscripciones i WHERE  i.CURSO_codigo =  105);