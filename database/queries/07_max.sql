-- 0. Comprobar la conexión con la base de datos
USE MaritimeLogisticsDB;

SELECT name AS Tabla, create_date AS FechaCreacion FROM sys.tables ORDER BY name;


-- 1. Obtener la fecha más reciente de inicio de actividades de los barcos
SELECT MAX(start_of_activity) AS latest_start_of_activity FROM SHIP;


-- 2. Obtener la fecha más avanzada de nacimiento de un tripulante (más joven)
SELECT MAX(birth_date) AS most_recent_birth_date FROM CREW_MEMBER;


-- 3. Fecha de fin de itinerario más lejana
SELECT MAX(voyage_end_date) AS farthest_voyage_end_date FROM SHIPS_IN_ITINERARIES;


-- 4. Máximo número de puertos en un itinerario
SELECT MAX(number_of_ports) AS max_ports
FROM (
    SELECT itinerary_id, COUNT(*) AS number_of_ports
    FROM HARBORS_IN_ITINERARIES
    GROUP BY itinerary_id
) AS t;


-- 5. Mayor duración de un viaje registrado (en días)
SELECT *
FROM (
    SELECT 
        *, 
        DATEDIFF(DAY, voyage_start_date, voyage_end_date) AS days_per_trip
    FROM SHIPS_IN_ITINERARIES
) AS t
WHERE days_per_trip = (
    SELECT MAX(DATEDIFF(DAY, voyage_start_date, voyage_end_date))
    FROM SHIPS_IN_ITINERARIES
);


-- 6. Última fecha de inicio de asignación
SELECT *
FROM CREW_ASSIGNMENTS_TO_SHIPS
WHERE assignment_start_date = (
    SELECT MAX(assignment_start_date)
    FROM CREW_ASSIGNMENTS_TO_SHIPS
);


-- 7. Puerto más al norte (alfabéticamente)
SELECT *
FROM HARBOR
WHERE name = (
    SELECT MAX(name)
    FROM HARBOR
);


-- 8. Barco con el nombre más largo
SELECT *
FROM SHIP
WHERE LEN(name_or_nickname) = (
    SELECT MAX(LEN(name_or_nickname))
    FROM SHIP
);


-- 9. Mayor número de tripulantes en un barco
SELECT ship_id, COUNT(*) AS number_of_crew
FROM CREW_ASSIGNMENTS_TO_SHIPS
GROUP BY ship_id
HAVING COUNT(*) = (
    SELECT MAX(crew_count)
    FROM (
        SELECT COUNT(*) AS crew_count
        FROM CREW_ASSIGNMENTS_TO_SHIPS
        GROUP BY ship_id
    ) AS t
);


-- 10. Itinerario con más barcos asignados
SELECT itinerary_id, COUNT(*) AS number_of_ships
FROM SHIPS_IN_ITINERARIES
GROUP BY itinerary_id
HAVING COUNT(*) = (
    SELECT MAX(ship_count)
    FROM (
        SELECT COUNT(*) AS ship_count
        FROM SHIPS_IN_ITINERARIES
        GROUP BY itinerary_id
    ) AS t
);