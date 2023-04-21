USE G2_PROYECTO_G4_INUNDACIONES;
GO

--
DROP TABLE IF EXISTS dbo.location;
GO
DROP TABLE IF EXISTS dbo.floods;
GO

--
CREATE TABLE dbo.floods (
    register_num VARCHAR(255) PRIMARY KEY,
    date_began VARCHAR(255),
    date_ended VARCHAR(255),
    duration_days VARCHAR(255),
    deads  VARCHAR(255),
    displaced VARCHAR(255),
    damage_usd VARCHAR(255),
    severity VARCHAR(255),
    affected_sq_km VARCHAR(255),
    magnitude VARCHAR(255),
    main_cause VARCHAR(255),
    notes TEXT
);

--
CREATE TABLE dbo.location (
    register_num VARCHAR(255) PRIMARY KEY,
    country VARCHAR(255),
    location_details TEXT,
    longitude VARCHAR(255),
    latitude VARCHAR(255)
    -- FOREIGN KEY (register_num) REFERENCES floods(register_num)
);