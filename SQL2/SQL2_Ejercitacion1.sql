--EJERCICIO 1
-- Asumo que la imagen que se muestra es la tabla TablaEjercicio.
-- Letra habla de carrera Mecánica pero no hay campo carrera en imagen del ejemplo ni MER con tablas relacionadas. Asumo se refiere a nombre del curso.

SELECT COUNT (ESTUDIANTE_legajo) FROM TablaEjercicio
WHERE nombre = 'Mecánica';


-- EJERCICIO 2

SELECT MIN(salario) FROM Profesores
WHERE YEAR(fecha_nacimiento) BETWEEN 1980 AND 1989

-- EJERCICIO 3 Y 4

-- A-) 
SELECT PS.idpais, COUNT(PO.idpasajero) 
FROM PASAJERO PO INNER JOIN PAIS PS
ON PO.idpais == PS.idpais
GROUP BY idpais


-- B-)
SELECT SUM(monto) FROM PAGO;

-- C-)
SELECT PO.idpasajero, ROUND(SUM(P.monto),2)
FROM PASAJERO PO INNER JOIN PAGO P
ON PO.idpasajero = P.idpasajero
GROUP BY PO.idpasajero;

-- D-) 
SELECT PO.idpasajero, AVG(P.monto)
FROM PASAJERO PO INNER JOIN PAGO P
ON PO.idpasajero = P.idpasajero
GROUP BY PO.idpasajero;


