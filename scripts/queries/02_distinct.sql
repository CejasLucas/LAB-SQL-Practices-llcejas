-- 1. Obtener las nacionalidades únicas de los tripulantes.  
SELECT DISTINCT nationality FROM CREW_MEMBER ORDER BY nationality;

-- 2. Listar los países distintos donde existen puertos.  
SELECT DISTINCT country FROM HARBOR ORDER BY country;

-- 3. Mostrar los nombres únicos de ciudades donde hay puertos.  
SELECT DISTINCT city FROM HARBOR ORDER BY city;

-- 4. Obtener los distintos tipos de posiciones en el sistema.  
SELECT DISTINCT position_type FROM POSITION ORDER BY position_type;

-- 5. Listar los diferentes tipos de puertos registrados (DAY/NIGHT).  
SELECT DISTINCT port_type FROM HARBOR ORDER BY port_type;

-- 6. Obtener las ciudades de origen únicas de los barcos.  
SELECT DISTINCT origin_city FROM SHIP ORDER BY origin_city;

-- 7. Listar las nacionalidades únicas de los barcos.  
SELECT DISTINCT nationality FROM SHIP ORDER BY nationality;

-- 8. Mostrar los correos electrónicos únicos registrados.  
SELECT DISTINCT email FROM CREW_MEMBER ORDER BY email;

-- 9. Obtener los diferentes años de inicio de actividad de los barcos.  
SELECT DISTINCT start_of_activity FROM SHIP ORDER BY start_of_activity;

-- 10. Listar las regiones únicas de los puertos.  
SELECT DISTINCT region FROM HARBOR ORDER BY region;

-- 11. Mostrar los tipos de itinerarios que han sido asignados a barcos.  
SELECT si.ship_id, si.voyage_start_date, si.voyage_end_date, i.description FROM SHIPS_IN_ITINERARIES si 
JOIN ITINERARY i ON si.itinerary_id = i.itinerary_id ORDER BY si.ship_id;

-- 12. Obtener las diferentes ciudades natales de los tripulantes.  
SELECT DISTINCT nationality FROM CREW_MEMBER ORDER BY nationality;

-- 13. Listar los países donde existen puertos con itinerarios.  
SELECT country FROM HARBORS_IN_ITINERARIES hi
JOIN HARBOR h ON hi.harbor_id = h.harbor_id
ORDER BY country;

-- 14. Mostrar las distintas fechas de inicio de viaje de itinerarios.  
SELECT DISTINCT voyage_start_date FROM SHIPS_IN_ITINERARIES ;

-- 15. Obtener diferentes combinaciones de país–tipo de puerto.
SELECT DISTINCT country, port_type FROM HARBOR ORDER BY port_type;
