/* ===============================================
  ⚡ Create INDEX
================================================*/

-- Índices para SHIP
CREATE INDEX IX_SHIP_registration_number ON SHIP(registration_number);

-- Índices para CREW_MEMBER
CREATE INDEX IX_CREW_MEMBER_passport_number ON CREW_MEMBER(passport_number);
CREATE INDEX IX_CREW_MEMBER_email ON CREW_MEMBER(email);

-- Índices para POSITION
CREATE INDEX IX_POSITION_type ON POSITION(position_type);

-- Índices para HARBOR
CREATE INDEX IX_HARBOR_name ON HARBOR(name);

-- Índices para CREW_ASSIGNMENTS_TO_SHIPS
CREATE INDEX IX_CREW_ASSIGN_ship ON CREW_ASSIGNMENTS_TO_SHIPS(ship_id);
CREATE INDEX IX_CREW_ASSIGN_crew ON CREW_ASSIGNMENTS_TO_SHIPS(crew_id);

-- Índices para SHIPS_IN_ITINERARIES
CREATE INDEX IX_SHIPS_ITINERARIES_ship ON SHIPS_IN_ITINERARIES(ship_id);
CREATE INDEX IX_SHIPS_ITINERARIES_itinerary ON SHIPS_IN_ITINERARIES(itinerary_id);

-- Índices para HARBORS_IN_ITINERARIES
CREATE INDEX IX_HARBORS_ITINERARIES_harbor ON HARBORS_IN_ITINERARIES(harbor_id);
CREATE INDEX IX_HARBORS_ITINERARIES_itinerary ON HARBORS_IN_ITINERARIES(itinerary_id);