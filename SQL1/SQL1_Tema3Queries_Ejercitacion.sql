
SElect nombre, apellido, fecha_nacimiento FROM Profesores order by fecha_nacimiento ASC;

SELECT * FROM Profesores where salario >=65000;

select * from Profesores where fecha_nacimiento between
'1980-01-01' and '1989-12-31';

SELECT * FROM Profesores LIMIT 5;

SELECT * FROM Profesores WHERE apellido LIKE 'P%';

SELECT * FROM Profesores WHERE fecha_nacimiento between '1980-01-01' and '1989-12-31' AND salario >
80000;


  