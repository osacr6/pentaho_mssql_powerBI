USE G2_PROYECTO_G4_DESASTRES;
GO

--
ALTER TABLE hechos_eventonatural DROP CONSTRAINT IF EXISTS Fk_location_id
GO
ALTER TABLE hechos_eventonatural DROP CONSTRAINT IF EXISTS Fk_tipoevento_id
GO
DROP TABLE IF EXISTS dbo.dim_tipoevento;
GO
CREATE TABLE dbo.dim_tipoevento (
    ID INTEGER PRIMARY KEY,
    nombre VARCHAR(255),
);

--
DROP TABLE IF EXISTS dbo.dim_geografica;
GO

CREATE TABLE dbo.dim_geografica (
	ID VARCHAR(255) PRIMARY KEY,
    country VARCHAR(255),
    location_details TEXT,
    longitude VARCHAR(255),
    latitude VARCHAR(255)
);

-- 
DROP TABLE IF EXISTS dbo.hechos_eventonatural;
GO
CREATE TABLE dbo.hechos_eventonatural (
    ID VARCHAR(255) PRIMARY KEY,
	nombre VARCHAR(255),
	magnitud FLOAT,
    muertos INTEGER,
    fecha VARCHAR(255),
	notas TEXT,
	location_id VARCHAR(255),
	tipoevento_id INTEGER,
);

--ALTER TABLE hechos_eventonatural ADD CONSTRAINT Fk_location_id
--	foreign key (location_id) references dim_geografica(ID)
GO
--ALTER TABLE hechos_eventonatural ADD CONSTRAINT Fk_tipoevento_id
--	foreign key (tipoevento_id) references dim_tipoevento(ID)
GO


USE G2_PROYECTO_G4_DESASTRES;
GO
SELECT * FROM dbo.dim_geografica order by ID;
GO
SELECT * FROM dbo.hechos_eventonatural order by ID;
GO