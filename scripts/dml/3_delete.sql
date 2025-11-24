/* =================== 🎯 Resumen =======================
    DELETE → borra filas (con o sin condición).
    TRUNCATE → borra todas las filas y resetea IDENTITY.
    DROP → borra la tabla entera.
========================================================*/

-- Borra todos los registros de la tabla
DELETE FROM SHIP;

-- Borra todos los barcos de Argentina
DELETE FROM SHIP
WHERE nationality = 'Argentina';

-- Borrar los ultimos 20 elementos de una tabla
WITH ultimas AS (
    SELECT TOP 20 *
    FROM SHIPS_IN_ITINERARIES
    ORDER BY id DESC   
)
DELETE FROM ultimas;