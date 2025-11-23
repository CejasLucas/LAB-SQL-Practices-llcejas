/* ===============================================
  💻 📊 SQL Server Optimized Script for Project Tables
================================================*/

/* Table: SHIP */
CREATE TABLE SHIP (
    ship_id INT IDENTITY(1,1) PRIMARY KEY,
    name_or_nickname VARCHAR(200),
    registration_number VARCHAR(200),
    start_of_activity DATE,
    origin_city VARCHAR(200),
    nationality VARCHAR(200)
);

/* Table: CREW_MEMBER */
CREATE TABLE CREW_MEMBER (
    crew_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200) UNIQUE,
    passport_number VARCHAR(50),
    home_city VARCHAR(100),
    nationality VARCHAR(100),
    birth_date DATE,
    employment_start_date DATE
);

/* Table: POSITION */
CREATE TABLE POSITION (
    position_id INT IDENTITY(1,1) PRIMARY KEY,
    position_type VARCHAR(100),
    position_description VARCHAR(MAX)
);

/* Table: HARBOR */
CREATE TABLE HARBOR (
    harbor_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(200),
    region VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    port_type VARCHAR(10) CHECK (port_type IN ('DAY','NIGHT'))
);

/* Table: ITINERARY */
CREATE TABLE ITINERARY (
    itinerary_id INT IDENTITY(1,1) PRIMARY KEY,
    description VARCHAR(MAX)
);

/* Table: CREW_ASSIGNMENTS_TO_SHIPS */
CREATE TABLE CREW_ASSIGNMENTS_TO_SHIPS (
    ship_id INT,
    crew_id INT,
    position_id INT,
    assignment_start_date DATE,
    assignment_end_date DATE,
    CONSTRAINT PK_CREW_ASSIGNMENTS PRIMARY KEY (ship_id, crew_id, position_id),
    CONSTRAINT FK_CREW_ASSIGN_SHIP FOREIGN KEY (ship_id) REFERENCES SHIP(ship_id),
    CONSTRAINT FK_CREW_ASSIGN_MEMBER FOREIGN KEY (crew_id) REFERENCES CREW_MEMBER(crew_id),
    CONSTRAINT FK_CREW_ASSIGN_POSITION FOREIGN KEY (position_id) REFERENCES POSITION(position_id)
);

/* Table: SHIPS_IN_ITINERARIES */
CREATE TABLE SHIPS_IN_ITINERARIES (
    id INT IDENTITY(1,1) PRIMARY KEY,
    ship_id INT,
    itinerary_id INT,
    voyage_start_date DATE,
    voyage_end_date DATE,
    CONSTRAINT FK_SHIP_ITINERARY_SHIP FOREIGN KEY (ship_id) REFERENCES SHIP(ship_id),
    CONSTRAINT FK_SHIP_ITINERARY_ITINERARY FOREIGN KEY (itinerary_id) REFERENCES ITINERARY(itinerary_id)
);

/* Table: HARBORS_IN_ITINERARIES */
CREATE TABLE HARBORS_IN_ITINERARIES (
    id INT IDENTITY(1,1) PRIMARY KEY,
    harbor_id INT,
    itinerary_id INT,
    CONSTRAINT FK_HARBOR_ITINERARY_HARBOR FOREIGN KEY (harbor_id) REFERENCES HARBOR(harbor_id),
    CONSTRAINT FK_HARBOR_ITINERARY_ITINERARY FOREIGN KEY (itinerary_id) REFERENCES ITINERARY(itinerary_id)
);


-- Verification Of Elements
SELECT * FROM SHIP;
SELECT * FROM CREW_MEMBER;
SELECT * FROM POSITION;
SELECT * FROM ITINERARY;
SELECT * FROM HARBOR;
SELECT * FROM CREW_ASSIGNMENTS_TO_SHIPS;
SELECT * FROM SHIPS_IN_ITINERARIES;
SELECT * FROM HARBORS_IN_ITINERARIES;