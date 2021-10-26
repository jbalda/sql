
--Para MySQL

CREATE TABLE Personas(
  id int not null,
  nombre varchar(100) not null
  );

INSERT into Personas VALUES (4, "Juan");
insert into Personas VALUES (20, "Ana");
insert into Personas VALUES (15, "Leo");
insert into Personas VALUES (17, "Irina");

SELECT * FROM Personas;

ALTER TABLE Personas ADD CONSTRAINT PK_ID PRIMARY KEY (ID);


SELECT * FROM Personas;