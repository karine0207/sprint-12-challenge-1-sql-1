CREATE DATABASE S12U1CHALLENGE;

CREATE TABLE usuarios_lenguajes (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    edad INT,
    lenguaje VARCHAR(50) NOT NULL
);
-- Insertar datos
INSERT INTO usuarios_lenguajes (nombre, apellido, email, edad, lenguaje) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28, 'Java'),
('Maria', 'Lopez', 'maria.lopez@example.com', 32, 'JavaScript'),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25, 'Python'),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30, 'C++'),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22, 'Ruby'),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35, 'SQL'),
('Miguel', 'Perez', 'miguel.perez@example.com', 28, 'PHP'),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26, 'Swift'),
('Javier', 'Diaz', 'javier.diaz@example.com', 31, 'TypeScript'),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27, 'Go'),
('Elena', 'Moreno', 'elena.moreno@example.com', 29, 'C#'),
('Daniel', 'Romero', 'daniel.romero@example.com', 33, 'HTML'),
('Paula', 'Torres', 'paula.torres@example.com', 24, 'CSS'),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28, 'R'),
('Carmen', 'Vega', 'carmen.vega@example.com', 29, 'Kotlin'),
('Adrian', 'Molina', 'adrian.molina@example.com', 34, 'Objective-C'),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26, 'Scala'),
('Hector', 'Ortega', 'hector.ortega@example.com', 30, 'Perl'),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32, 'Shell'),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28, 'VB.NET');
-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí
select nombre, lenguaje from  usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí 
select count(*) from usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 30;

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí
select count(*) from usuarios_lenguajes where lenguaje = 'JavaScript';

-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí
select * from usuarios_lenguajes where edad = 28;

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes where email = 'juan.gomez@example.com';


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenguaje = 'Java' AND edad < 25;   

-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
select count(*) from usuarios_lenguajes where lenguaje = 'Java';

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí
select * from usuarios_lenguajes  where lenguaje = null;


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí
select nombre,edad from usuarios_lenguajes order by edad limit 1 ;


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí
select nombre,edad from usuarios_lenguajes order by edad desc;


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
select count(*) from usuarios_lenguajes where edad > 28;

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
SELECT lenguaje, COUNT(*) AS total FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY total DESC LIMIT 1;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
SELECT *  FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';



-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
SELECT COUNT(*)  FROM usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre;

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí
SELECT *  FROM usuarios_lenguajes WHERE email LIKE '%example%';


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
SELECT *  FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL AND edad BETWEEN 25 AND 35;

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
SELECT COUNT(*)  FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
SELECT nombre, COUNT(*) AS cantidad_lenguajes FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL GROUP BY nombre;

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM usuarios_lenguajes;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí
SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad > 25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad IN ( SELECT edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1 );



-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí 
SELECT * FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
SELECT email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí 
SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' ORDER BY LENGTH(lenguaje) LIMIT 1;



-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) LIMIT 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje;


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje <> 'SQL';


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes WHERE edad >= 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí
SELECT nombre, edad, edad - (SELECT AVG(edad) FROM usuarios_lenguajes) AS diferencia_edad FROM usuarios_lenguajes;


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí
SELECT nombre, LENGTH(nombre) AS longitud FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1;


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí
SELECT SUM(edad) AS suma_edades FROM usuarios_lenguajes;


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;
