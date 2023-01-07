ALTER TABLE peliculas ADD COLUMN peli_img TEXT AFTER peli_dire_id

UPDATE peliculas SET peli_img = 'https://www.ecartelera.com/carteles/15800/15882/005_m.jpg' WHERE peli_id = 13

SELECT 
    a.peli_img,
    a.peli_nombre,
    CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director,
    a.peli_restricciones
    FROM peliculas a
        INNER JOIN directores b ON a.peli_dire_id = b.dire_id;
#Codigo para alterar la tabla de directores:
Alter table directores add column dire_img text after dire_apellidos;
#Codigo que muestras de los directores de cada peliculas;
SELECT 
    b.dire_img,
    a.peli_nombre,
    CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director,
    a.peli_restricciones
    FROM peliculas a
        INNER JOIN directores b ON a.peli_dire_id = b.dire_id;