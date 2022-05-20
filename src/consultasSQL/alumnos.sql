# Borramos los registro de la tabla alumnos
DELETE from entrevistas;
DELETE from alumnos;
DELETE from tutor;

INSERT INTO alumnos (id, nombre, apellidos, email) VALUES 
(1,"Pedro", "Medario Feliz", "medario@gmail.com"),
(2,"Ana", "Vespacial Enorme", "vespacial@gmail.com"),
(3,"Eva", "Calao Contomate", "calao@gmail.com"),
(4,"Juan", "Tena Parabolica", "tena@gmail.com")
;

INSERT INTO tutor (id, nombre, apellidos, email) VALUES 
(1,"Juan", "Medario Feliz", "medario@gmail.com"),
(2,"Andres", "Vespacial Enorme", "vespacial@gmail.com"),
(3,"Laura", "Calao Contomate", "calao@gmail.com"),
(4,"Manuel", "Tena Parabolica", "tena@gmail.com")
;

INSERT INTO entrevistas (id, alumno_ID, tutor_ID, contenido, fecha) VALUES 
(1, 1, 1, "Entrevista 11", "2022-05-21"),
(2, 2, 1, "Entrevista 21", "2022-05-22"),
(3, 3, 1, "Entrevista 31", "2022-05-23"),
(4, 1, 1, "Entrevista 11", "2022-05-24"),
(5, 1, 2, "Entrevista 12", "2022-05-25")
;