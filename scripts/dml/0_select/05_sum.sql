-- 1. Sumar la cantidad total de días de viaje de cada barco.  
SELECT 
    ship_id,
    COUNT(*) AS number_of_itineraries_per_ship,  
    SUM(DATEDIFF(DAY, voyage_start_date , voyage_end_date)) AS total_travel_days 
FROM SHIPS_IN_ITINERARIES GROUP BY ship_id ORDER BY ship_id;

-- 2. Obtener la suma total de puertos incluidos en todos los itinerarios.  

-- 3. Sumar el número total de asignaciones activas.  

-- 4. Calcular los días acumulados por tripulante en barcos.  

-- 5. Sumar cuántos puertos del tipo “NIGHT” participan en itinerarios.  

-- 6. Sumar cuántos tripulantes hay en barcos de nacionalidad chilena.  

-- 7. Sumar cuántos barcos participan en más de un itinerario.  

-- 8. Sumar cuántas posiciones han sido usadas en asignaciones.  

-- 9. Sumar cuántos viajes terminaron en 2024.  

-- 10. Sumar cuántos puertos italianos están registrados.