--1)
SELECT e.legajo, COUNT(i.numero) as 'Cant_Cursos' FROM Estudiantes e LEFT JOIN Inscripciones i
	ON e.legajo = i.ESTUDIANTE_legajo
	GROUP BY e.legajo;
	  
--2)
SELECT e.legajo, COUNT(i.numero) as Cant_Cursos FROM Estudiantes e LEFT JOIN Inscripciones i
	ON e.legajo = i.ESTUDIANTE_legajo
	GROUP BY e.legajo
	HAVING COUNT(i.numero)  > 1;

-- 3)

SELECT * FROM Estudiantes e WHERE  e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo FROM Inscripciones i)

--4)

Tabla PROFESOR tiene un índice clousterizado para el id que es la clave primaria
Tabla ESTUDIANTE tiene un índice clousterizado para legajo que es la clave primaria.
Tabla CURSO tiene un índice clousterizado para código que es la clave primaria y un  índice no clousterizado para la clave foránea PROFESOR_id.
Tabla INSCRIPCION tiene un índice clousterizado para número que es clave primaria e índices no clousterizados para CURSO_codigo y ESTUDIANTE_legajo que son claves foráneas.

--5)

SELECT * FROM Estudiantes WHERE legajo IN(
	SELECT DISTINCT i.ESTUDIANTE_legajo FROM Inscripciones i 
	INNER JOIN Cursos c ON i.CURSO_codigo = c.codigo 
	INNER JOIN Profesores p ON c.profesor_id = p.id 
		AND p.apellido = 'Pérez'

	) AND legajo IN(

	(SELECT DISTINCT i.ESTUDIANTE_legajo FROM Inscripciones i 
	INNER JOIN Cursos c ON i.CURSO_codigo = c.codigo 
	INNER JOIN Profesores p ON c.profesor_id = p.id 
		AND p.apellido = 'Paz') 
)