-- Borrar los ultimos 20 elementos de una tabla
WITH ultimas AS (
    SELECT TOP 20 *
    FROM SHIPS_IN_ITINERARIES
    ORDER BY id DESC   
)
DELETE FROM ultimas;