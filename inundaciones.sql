USE G2_PROYECTO_G4_INUNDACIONES;
GO

--
DROP TABLE IF EXISTS dbo.location;
GO
DROP TABLE IF EXISTS dbo.floods;
GO

--
CREATE TABLE dbo.floods (
    register_num INTEGER PRIMARY KEY,
    date_began VARCHAR(255),
    date_ended VARCHAR(255),
    duration_days INTEGER,
    deads  INTEGER,
    displaced INTEGER,
    damage_usd VARCHAR(255),
    severity FLOAT,
    affected_sq_km FLOAT,
    magnitude FLOAT,
    main_cause VARCHAR(255),
    notes TEXT
);

--
CREATE TABLE dbo.location (
    register_num INTEGER PRIMARY KEY,
    country VARCHAR(255),
    location_details TEXT,
    longitude VARCHAR(255),
    latitude VARCHAR(255)
    -- FOREIGN KEY (register_num) REFERENCES floods(register_num)
);