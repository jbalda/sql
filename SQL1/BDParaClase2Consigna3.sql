
CREATE TABLE Profesores(
	id int PRIMARY KEY,
	nombre VARCHARNOT NULL,
	apellido VARCHAR NOT NULL,
	fecha_nacimiento DATE NOT NULL,
	salario FLOAT NOT NULL
	);

CREATE TABLE Cursos(
	codigo int PRIMARY KEY,
	nombre varchar(100) NOT NULL,
	descripcion varchar(200),
	cupo int NOT NULL,
	turno varchar (50),
	profesor_id int,
	FOREIGN KEY (profesor_id) REFERENCES Profesores (id)
);

insert into Profesores VALUES
(1, "Juan", "Perez", "1990-06-06",55000),
(2,"María Emilia", "Paz", "1984-07-15", 72000),
(3, "Martín", "Correa", "1987-12-07",63000),
(4, "Lucía", "Díaz", "1991-02-24", 45000),
(5,"Raúl", "Martínez", "1980-10-15", 85000),
(6,"Mabel", "Ríos","1982-06-12", 83000)

INSERT into Cursos VALUES
(101, "Algoritmos", "Algoritmos y estructuras de datos",20,"Mañana",1),
(102, "Matemática Discreta", null, 20, "Tarde", 2),
(103, "Progamación Java", "POO en Java", 35, "Noche", 4),
(104, "Programación Web", null, 35,"Noche",5),
(105, "Programación C#", ".Net, Visual Studio 2019", 30, "Noche", 6);

SELECT Profesores.Apellido , Cursos.Nombre, Cursos.turno

FROM Profesores LEFT JOIN Cursos ON Profesores.id = Cursos.PROFESOR_id;


  