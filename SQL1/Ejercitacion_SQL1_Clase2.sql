CREATE TABLE CURSO (
  codigo int PRIMARY KEY,
  nombre varchar not null,
  descripcion varchar,
  turno varchar not NULL
  );
  
  ALTER table CURSO add COLUMN cupo int;
  
  INSERT into CURSO VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
  INSERT into CURSO values (102, "Matemática Discreta","","Tarde",30);
  
  
  INSERT into CURSO values (103,NULL,"","Tarde",30);
  
  UPDATE CURSO set cupo = 25;
  
  DELETE FROM CURSO WHERE nombre = "Algoritmos";
  