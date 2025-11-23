USE PortFleetDB;
GO

IF OBJECT_ID('dbo.SHIP') IS NULL
    PRINT 'La tabla SHIP >>> NO existe';
ELSE
    PRINT 'La tabla SHIP >>> SI existe';


INSERT INTO SHIP (name_or_nickname, registration_number, start_of_activity, origin_city, nationality) VALUES
('South Sea', 'AR-MDS-4512', '2010-03-12', 'Mar del Plata', 'Argentina'),
('Ocean Spirit', 'US-OSP-3321', '2015-07-01', 'Miami', 'United States'),
('Saint Lucia', 'ES-SLC-8820', '2008-11-19', 'Valencia', 'Spain'),
('Nordstern', 'DE-NST-7734', '2012-05-07', 'Hamburg', 'Germany'),
('Blue Horizon', 'UK-BHZ-5541', '2017-02-15', 'Liverpool', 'United Kingdom'),
('Punta Medanos', 'AR-PMD-1199', '2005-08-22', 'Bahía Blanca', 'Argentina'),
('Pacific Wave', 'CA-PWV-4432', '2016-06-10', 'Vancouver', 'Canada'),
('San Rafael II', 'CL-SRF-2389', '2009-09-30', 'Valparaíso', 'Chile'),
('The Hope', 'PE-ESP-0043', '2011-01-17', 'Callao', 'Peru'),
('Nordic Breeze', 'NO-NBZ-7742', '2018-04-28', 'Bergen', 'Norway'),
('Austral Dawn', 'AR-AAS-0291', '2013-10-11', 'Ushuaia', 'Argentina'),
('Moon River', 'BR-RDL-8801', '2014-12-05', 'Rio de Janeiro', 'Brazil'),
('Sea Falcon', 'US-SFC-7421', '2019-08-14', 'Seattle', 'United States'),
('Porto Bello', 'PT-PBL-6754', '2007-04-03', 'Porto', 'Portugal'),
('Stella Marina', 'IT-STM-5167', '2010-03-23', 'Genoa', 'Italy'),
('Tempest', 'UY-TMP-3370', '2006-02-02', 'Montevideo', 'Uruguay'),
('Aurora Borealis', 'IS-ABR-9011', '2012-09-21', 'Reykjavik', 'Iceland'),
('Southern Wind', 'ZA-SWN-7745', '2015-11-17', 'Cape Town', 'South Africa'),
('Mariner VII', 'AR-MN7-4420', '2003-12-01', 'Rawson', 'Argentina'),
('Coral Star', 'AU-CST-6104', '2018-06-09', 'Sydney', 'Australia'),
('Queen of the Plata', 'AR-RDP-2033', '2009-05-14', 'Buenos Aires', 'Argentina'),
('Ocean Pearl', 'IE-OCP-1142', '2017-03-08', 'Cork', 'Ireland'),
('Helios I', 'GR-HLS-9022', '2008-07-27', 'Piraeus', 'Greece'),
('Baltic Hunter', 'SE-BHT-3329', '2014-01-19', 'Gothenburg', 'Sweden'),
('New Galicia', 'ES-NGL-7740', '2005-05-12', 'A Coruña', 'Spain'),
('Sea Whisper', 'UK-SWP-6681', '2016-10-29', 'Southampton', 'United Kingdom'),
('Blue Mountain', 'AR-MAZ-5510', '2011-03-16', 'Comodoro Rivadavia', 'Argentina'),
('Polar King', 'FI-PKG-7701', '2013-04-25', 'Helsinki', 'Finland'),
('Saint Rita', 'MX-SRT-9931', '2010-08-06', 'Veracruz', 'Mexico'),
('Oceanica III', 'EC-OC3-2214', '2019-02-18', 'Guayaquil', 'Ecuador'),
('Eastern Mariner', 'AR-MDE-4012', '2007-06-14', 'Quequén', 'Argentina'),
('Golden Reef', 'PH-GRF-5523', '2015-09-04', 'Manila', 'Philippines'),
('Trident', 'AR-TRD-1009', '2002-11-25', 'Puerto Madryn', 'Argentina'),
('Atlantic Queen', 'US-AQN-8174', '2018-01-12', 'Boston', 'United States'),
('Northern Lighthouses', 'AR-FDN-9910', '2004-12-18', 'San Antonio Oeste', 'Argentina'),
('Saint Marina', 'ES-SMN-2821', '2013-04-04', 'Bilbao', 'Spain'),
('Blue Crest', 'ZA-BCR-6610', '2017-07-15', 'Durban', 'South Africa'),
('Serene Bay', 'AR-BSR-3302', '2010-05-30', 'Mar del Plata', 'Argentina'),
('Sea Sky', 'UY-CDM-7230', '2012-10-21', 'Punta del Este', 'Uruguay'),
('Wind Dancer', 'NZ-WDC-4120', '2016-09-13', 'Auckland', 'New Zealand'),
('Sea of Fire', 'AR-MDF-4441', '2008-03-09', 'Ushuaia', 'Argentina'),
('Dragon Sea', 'CN-DRS-5577', '2014-11-01', 'Shanghai', 'China'),
('Windward', 'CL-BLV-7728', '2010-07-23', 'Coquimbo', 'Chile'),
('Radiant Sun', 'AR-SRD-5542', '2011-01-29', 'Necochea', 'Argentina'),
('Silver Tide', 'CA-STI-4408', '2019-04-10', 'Halifax', 'Canada'),
('Sea Star', 'PE-EMR-3322', '2007-02-04', 'Paita', 'Peru'),
('Southern Aurora', 'AR-ADS-9288', '2013-06-15', 'Río Gallegos', 'Argentina'),
('Emerald Voyager', 'IE-EMV-6201', '2015-12-19', 'Dublin', 'Ireland'),
('Northern Aurora', 'RU-NAR-5821', '2010-05-12', 'Saint Petersburg', 'Russia'),
('Atlantic Voyager', 'US-ATV-9034', '2005-12-11', 'Miami', 'United States');



INSERT INTO CREW_MEMBER (first_name, last_name, email, passport_number, home_city, nationality, birth_date, employment_start_date) VALUES
('Lucas', 'Martinez', 'lucas.martinez01@gmail.com', 'AR1234567', 'Buenos Aires', 'Argentina', '1988-05-12', '2015-03-01'),
('Emily', 'Walker', 'emily.walker@hotmail.com', 'US9923412', 'Seattle', 'United States', '1991-08-21', '2018-06-10'),
('Hiroshi', 'Tanaka', 'hiroshi.tanaka@yahoo.com', 'JP5567812', 'Osaka', 'Japan', '1985-12-03', '2012-09-15'),
('Sofia', 'Lopez', 'sofia.lopez@outlook.com', 'MX8876321', 'Monterrey', 'Mexico', '1993-01-19', '2019-04-12'),
('Oliver', 'Smith', 'oliver.smith@gmail.com', 'UK4457829', 'Liverpool', 'United Kingdom', '1987-04-10', '2016-11-02'),
('Mateo', 'Rivas', 'mateo.rivas@hotmail.com', 'CL7789234', 'Valparaíso', 'Chile', '1990-07-25', '2017-01-18'),
('Anna', 'Schneider', 'anna.schneider@yahoo.com', 'DE6649021', 'Hamburg', 'Germany', '1984-03-11', '2011-05-20'),
('Paolo', 'Rossi', 'paolo.rossi@outlook.com', 'IT1239875', 'Genoa', 'Italy', '1986-10-22', '2014-02-09'),
('Isabella', 'Gomes', 'isabella.gomes@gmail.com', 'BR9912365', 'Rio de Janeiro', 'Brazil', '1992-02-14', '2020-01-04'),
('Noah', 'Johnson', 'noah.johnson@hotmail.com', 'US7789451', 'Boston', 'United States', '1989-09-30', '2015-08-11'),
('Javier', 'Costa', 'javier.costa@yahoo.com', 'AR5548392', 'Mar del Plata', 'Argentina', '1983-11-17', '2010-04-03'),
('Aisha', 'Khan', 'aisha.khan@outlook.com', 'PK7459910', 'Karachi', 'Pakistan', '1994-12-07', '2020-05-19'),
('Frederik', 'Jensen', 'frederik.jensen@gmail.com', 'DK3456721', 'Aarhus', 'Denmark', '1987-06-15', '2013-09-28'),
('Natalia', 'Petrova', 'natalia.petrova@hotmail.com', 'RU8893410', 'Saint Petersburg', 'Russia', '1991-03-09', '2018-07-22'),
('Liam', 'O-Connor', 'liam.oconnor@yahoo.com', 'IE6674521', 'Dublin', 'Ireland', '1986-01-30', '2012-12-03'),
('Chen', 'Wei', 'chen.wei@gmail.com', 'CN9901234', 'Shanghai', 'China', '1984-09-01', '2009-03-15'),
('Samuel', 'Brown', 'samuel.brown@outlook.com', 'CA3345188', 'Vancouver', 'Canada', '1988-07-04', '2014-06-01'),
('Diego', 'Fernandez', 'diego.fernandez@yahoo.com', 'UY2234099', 'Montevideo', 'Uruguay', '1990-10-11', '2016-01-17'),
('Marcus', 'Andersson', 'marcus.andersson@gmail.com', 'SE9923418', 'Gothenburg', 'Sweden', '1985-05-29', '2013-10-07'),
('Elena', 'Morales', 'elena.morales@hotmail.com', 'ES5521990', 'Valencia', 'Spain', '1989-02-24', '2017-08-03'),
('Ahmed', 'Hassan', 'ahmed.hassan@yahoo.com', 'EG6623310', 'Alexandria', 'Egypt', '1984-11-01', '2011-05-12'),
('Santiago', 'Paredes', 'santiago.paredes@outlook.com', 'AR8877341', 'Rosario', 'Argentina', '1987-08-10', '2014-03-02'),
('Kim', 'Minsoo', 'kim.minsoo@gmail.com', 'KR8922145', 'Busan', 'South Korea', '1992-05-14', '2020-09-10'),
('Nina', 'Aalto', 'nina.aalto@hotmail.com', 'FI4421990', 'Helsinki', 'Finland', '1986-12-21', '2013-01-26'),
('Jacob', 'Baker', 'jacob.baker@yahoo.com', 'US3388123', 'San Diego', 'United States', '1990-06-19', '2018-02-07'),
('Victor', 'Santos', 'victor.santos@gmail.com', 'PT2219941', 'Porto', 'Portugal', '1985-09-09', '2011-11-30'),
('Omar', 'Youssef', 'omar.youssef@outlook.com', 'MA6732199', 'Casablanca', 'Morocco', '1991-03-11', '2019-05-15'),
('Thomas', 'Dubois', 'thomas.dubois@yahoo.com', 'FR6623012', 'Marseille', 'France', '1988-01-27', '2014-04-19'),
('Carlos', 'Reyes', 'carlos.reyes@gmail.com', 'PE5533411', 'Callao', 'Peru', '1987-04-04', '2013-12-14'),
('Henry', 'Williams', 'henry.williams@hotmail.com', 'UK8876410', 'London', 'United Kingdom', '1983-09-13', '2009-06-06'),
('Andrés', 'García', 'andres.garcia@yahoo.com', 'AR9932104', 'Córdoba', 'Argentina', '1993-07-16', '2021-01-10'),
('Helena', 'Kuznetsova', 'helena.kuznetsova@gmail.com', 'RU5623891', 'Moscow', 'Russia', '1989-11-09', '2017-03-05'),
('Peter', 'Müller', 'peter.muller@outlook.com', 'DE4418776', 'Berlin', 'Germany', '1984-05-08', '2010-12-22'),
('Lucas', 'Silva', 'lucas.silva@yahoo.com', 'BR7754301', 'São Paulo', 'Brazil', '1990-02-02', '2015-09-18'),
('Anita', 'Johansson', 'anita.johansson@gmail.com', 'SE9987211', 'Stockholm', 'Sweden', '1987-03-25', '2014-07-16'),
('George', 'Carter', 'george.carter@hotmail.com', 'US5501298', 'New Orleans', 'United States', '1986-12-30', '2011-08-29'),
('Francisco', 'Mendoza', 'francisco.mendoza@yahoo.com', 'MX3378211', 'Guadalajara', 'Mexico', '1991-10-07', '2019-02-03'),
('Antonio', 'Marquez', 'antonio.marquez@gmail.com', 'ES4412099', 'Bilbao', 'Spain', '1988-06-12', '2016-10-22'),
('Haruto', 'Sasaki', 'haruto.sasaki@outlook.com', 'JP6134520', 'Tokyo', 'Japan', '1985-01-18', '2012-06-09'),
('Elisa', 'Romero', 'elisa.romero@hotmail.com', 'AR1122348', 'Mendoza', 'Argentina', '1992-09-26', '2020-04-01'),
('Daniel', 'Olsen', 'daniel.olsen@yahoo.com', 'NO7823411', 'Bergen', 'Norway', '1986-07-21', '2013-01-02'),
('Yara', 'Farias', 'yara.farias@gmail.com', 'BR9910023', 'Salvador', 'Brazil', '1994-10-20', '2021-05-17'),
('Mohammed', 'Rahim', 'mohammed.rahim@hotmail.com', 'AE8832104', 'Dubai', 'UAE', '1989-03-05', '2017-08-11'),
('Sven', 'Lindberg', 'sven.lindberg@outlook.com', 'SE5512304', 'Malmö', 'Sweden', '1984-04-14', '2009-09-29'),
('Eva', 'Hernandez', 'eva.hernandez@yahoo.com', 'US7712043', 'Houston', 'United States', '1990-12-09', '2016-04-12'),
('Rafael', 'Torres', 'rafael.torres@gmail.com', 'CO2239341', 'Cartagena', 'Colombia', '1987-05-03', '2014-01-20'),
('Jonas', 'Berg', 'jonas.berg@hotmail.com', 'FI2299811', 'Turku', 'Finland', '1983-02-28', '2008-03-17'),
('Clara', 'Müller', 'clara.muller@yahoo.com', 'DE5599123', 'Frankfurt', 'Germany', '1992-07-30', '2020-02-25'),
('Sofia', 'Kovalenko', 'sof.kovalenko@gmail.com', 'UK5599123', 'Crimea', 'Ukraine', '1990-05-30', '2021-07-25'),
('Marya', 'Putin', 'marya.putin@yahoo.com', 'RS5599123', 'Saint Petersburg', 'Russia', '1990-05-30', '2021-07-25');



INSERT INTO POSITION (position_type, position_description) VALUES
('Captain', 'Responsible for the overall operation of the ship and crew safety.'),
('First Officer', 'Assists the captain and supervises navigation duties.'),
('Chief Engineer', 'In charge of the engine room operations and technical maintenance.'),
('Deck Officer', 'Supervises deck operations, maneuvers, and equipment maintenance.'),
('Communications Officer', 'Manages communication systems and navigational alerts.'),
('Helmsman', 'Steers the ship following officers’ commands.'),
('General Seaman', 'Performs maintenance, maneuvers, and general support tasks.'),
('Boatswain', 'Leads deck personnel and coordinates operational tasks.'),
('Cook', 'Responsible for preparing meals for the crew.'),
('Marine Mechanic', 'Performs mechanical maintenance and repairs in the engine room.');



INSERT INTO HARBOR (name, region, city, country, port_type) VALUES
('Port of Buenos Aires', 'AMBA', 'Buenos Aires', 'Argentina', 'DAY'),
('Port of Valparaiso', 'Valparaiso Region', 'Valparaiso', 'Chile', 'NIGHT'),
('Port of Miami', 'Florida', 'Miami', 'United States', 'DAY'),
('Port of Rotterdam', 'South Holland', 'Rotterdam', 'Netherlands', 'NIGHT'),
('Port of Barcelona', 'Catalonia', 'Barcelona', 'Spain', 'DAY'),
('Port of Yokohama', 'Kanagawa', 'Yokohama', 'Japan', 'NIGHT'),
('Port of Hamburg', 'Hamburg', 'Hamburg', 'Germany', 'DAY'),
('Port of Santos', 'São Paulo', 'Santos', 'Brazil', 'NIGHT'),
('Port of Vancouver', 'British Columbia', 'Vancouver', 'Canada', 'DAY'),
('Port of Cape Town', 'Western Cape', 'Cape Town', 'South Africa', 'NIGHT'),
('Port of Melbourne', 'Victoria', 'Melbourne', 'Australia', 'DAY'),
('Port of Singapore', 'Singapore', 'Singapore', 'Singapore', 'NIGHT'),
('Port of Naples', 'Campania', 'Naples', 'Italy', 'DAY'),
('Port of Marseille', 'Provence', 'Marseille', 'France', 'NIGHT'),
('Port of Doha', 'Doha', 'Doha', 'Qatar', 'DAY'),
('Port of Dubai', 'Dubai', 'Dubai', 'United Arab Emirates', 'NIGHT'),
('Port of Mumbai', 'Maharashtra', 'Mumbai', 'India', 'DAY'),
('Port of Dublin', 'Leinster', 'Dublin', 'Ireland', 'NIGHT'),
('Port of Helsinki', 'Uusimaa', 'Helsinki', 'Finland', 'DAY'),
('Port of Casablanca', 'Casablanca-Settat', 'Casablanca', 'Morocco', 'NIGHT');



INSERT INTO ITINERARY (description) VALUES
('Coastal route from Buenos Aires to Montevideo with onboard sailing activities.'),
('Caribbean route including Miami, Bahamas, and Puerto Rico.'),
('Transatlantic crossing from Barcelona to New York.'),
('Norwegian fjords itinerary with stops in Bergen and Trondheim.'),
('Mediterranean route visiting Naples, Athens, and Istanbul.'),
('Asian itinerary from Yokohama to Shanghai with coastal excursions.'),
('Commercial route from Santos to Rotterdam transporting containers.'),
('Touristic route from Vancouver to Alaska.'),
('Persian Gulf itinerary visiting Doha, Dubai, and Abu Dhabi.'),
('North Sea route with stops in Hamburg, Oslo, and Copenhagen.'),
('Ocean crossing from Cape Town to Melbourne.'),
('Western Mediterranean itinerary: Marseille, Barcelona, and Valencia.'),
('Pacific crossing from Tokyo to Los Angeles.'),
('Historical itinerary across Black Sea ports including Odessa and Varna.'),
('South American route between Valparaiso, Lima, and Guayaquil.'),
('Scandinavian itinerary from Helsinki to Stockholm and Copenhagen.'),
('South Atlantic crossing from Buenos Aires to Cape Town.'),
('Touristic cruise through the Greek islands.'),
('Commercial route from Casablanca to Lisbon and London.'),
('Exploration itinerary through Patagonia: Ushuaia, Punta Arenas, and Puerto Natales.');



INSERT INTO CREW_ASSIGNMENTS_TO_SHIPS (ship_id, crew_id, position_id, assignment_start_date, assignment_end_date) VALUES
(3, 12, 1, '2024-01-10', '2024-06-15'),
(3, 13, 2, '2024-01-15', '2024-06-15'),
(3, 14, 3, '2024-01-20', '2024-06-15'),
(3, 15, 4, '2024-01-25', '2024-06-15'),
(3, 16, 5, '2024-02-01', '2024-06-15'),
(3, 17, 6, '2024-02-05', '2024-06-15'),
(5, 8, 3, '2023-11-01', '2024-03-20'),
(5, 18, 1, '2023-11-05', '2024-03-20'),
(5, 19, 2, '2023-11-10', '2024-03-20'),
(5, 20, 4, '2023-11-15', '2024-03-20'),
(5, 21, 5, '2023-11-20', '2024-03-20'),
(5, 22, 6, '2023-11-25', '2024-03-20'),
(7, 19, 2, '2024-02-05', '2024-12-31'),
(7, 23, 1, '2024-02-10', '2024-12-31'),
(7, 24, 3, '2024-02-15', '2024-12-31'),
(7, 25, 4, '2024-02-20', '2024-12-31'),
(7, 26, 5, '2024-02-25', '2024-12-31'),
(7, 27, 6, '2024-03-01', '2024-12-31'),
(10, 25, 4, '2024-04-12', NULL),
(10, 28, 1, '2024-04-15', NULL),
(10, 29, 2, '2024-04-20', NULL),
(10, 30, 3, '2024-04-25', NULL),
(10, 31, 5, '2024-05-01', NULL),
(10, 32, 6, '2024-05-05', NULL),
(2, 4, 5, '2023-09-01', '2023-12-30'),
(2, 33, 1, '2023-09-05', '2023-12-30'),
(2, 34, 2, '2023-09-10', '2023-12-30'),
(2, 35, 3, '2023-09-15', '2023-12-30'),
(2, 36, 4, '2023-09-20', '2023-12-30'),
(2, 37, 6, '2023-09-25', '2023-12-30'),
(15, 37, 6, '2024-01-01', '2024-08-01'),
(15, 38, 1, '2024-01-05', '2024-08-01'),
(15, 39, 2, '2024-01-10', '2024-08-01'),
(15, 40, 3, '2024-01-15', '2024-08-01'),
(15, 41, 4, '2024-01-20', '2024-08-01'),
(15, 42, 5, '2024-01-25', '2024-08-01'),
(20, 41, 7, '2024-03-10', NULL),
(20, 43, 1, '2024-03-15', NULL),
(20, 44, 2, '2024-03-20', NULL),
(20, 45, 3, '2024-03-25', NULL),
(20, 46, 4, '2024-03-30', NULL),
(20, 47, 5, '2024-04-05', NULL),
(9, 16, 8, '2024-05-15', '2024-09-15'),
(9, 48, 1, '2024-05-20', '2024-09-15'),
(9, 49, 2, '2024-05-25', '2024-09-15'),
(9, 50, 3, '2024-05-30', '2024-09-15'),
(11, 2, 9, '2023-12-20', '2024-04-10'),
(11, 16, 1, '2023-12-25', '2024-04-10'),
(11, 48, 2, '2023-12-30', '2024-04-10'),
(11, 49, 3, '2024-01-05', '2024-04-10'),
(11, 50, 4, '2024-01-10', '2024-04-10'),
(11, 33, 5, '2024-01-15', '2024-04-10');



INSERT INTO SHIPS_IN_ITINERARIES (ship_id, itinerary_id, voyage_start_date, voyage_end_date) VALUES
-- 2024
(3, 1, '2024-01-10', '2024-01-20'),
(5, 4, '2024-02-01', '2024-02-18'),
(7, 7, '2024-03-05', '2024-03-25'),
(10, 12, '2024-04-10', '2024-05-01'),
(12, 6, '2024-01-15', '2024-01-30'),
(18, 9, '2024-05-02', '2024-05-28'),
(21, 15, '2024-06-10', '2024-06-30'),
(25, 2, '2024-02-18', '2024-03-01'),
(30, 18, '2024-07-01', '2024-07-20'),
(34, 11, '2024-03-22', '2024-04-10');
-- 2025
(3, 1, '2025-01-12', '2025-01-22'),
(5, 4, '2025-02-03', '2025-02-20'),
(7, 7, '2025-03-08', '2025-03-28'),
(10, 12, '2025-04-15', '2025-05-05'),
(12, 6, '2025-06-01', '2025-06-16'),
(18, 9, '2025-07-05', '2025-07-30'),
(21, 15, '2025-08-12', '2025-08-31'),
(25, 2, '2025-09-03', '2025-09-15'),
(30, 18, '2025-10-01', '2025-10-20'),
(34, 11, '2025-11-10', '2025-11-30'),
-- 2026
(3, 1, '2026-01-14', '2026-01-24'),
(5, 4, '2026-02-05', '2026-02-22'),
(7, 7, '2026-03-10', '2026-03-30'),
(10, 12, '2026-04-16', '2026-05-06'),
(12, 6, '2026-06-03', '2026-06-18'),
(18, 9, '2026-07-07', '2026-07-31'),
(21, 15, '2026-08-15', '2026-09-03'),
(25, 2, '2026-09-05', '2026-09-17'),
(30, 18, '2026-10-03', '2026-10-22'),
(34, 11, '2026-11-12', '2026-12-02');



INSERT INTO HARBORS_IN_ITINERARIES (harbor_id, itinerary_id) VALUES
(1, 1),
(4, 1),
(7, 3),
(10, 4),
(12, 6),
(15, 7),
(18, 9),
(5, 12),
(9, 15),
(20, 18);


-- Verification Of Elements
SELECT * FROM SHIP;
SELECT * FROM CREW_MEMBER;
SELECT * FROM POSITION;
SELECT * FROM ITINERARY;
SELECT * FROM HARBOR;
SELECT * FROM CREW_ASSIGNMENTS_TO_SHIPS;
SELECT * FROM SHIPS_IN_ITINERARIES;
SELECT * FROM HARBORS_IN_ITINERARIES;