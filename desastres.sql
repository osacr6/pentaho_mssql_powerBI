USE G2_PROYECTO_G4_DESASTRES;
GO

--
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

SELECT * FROM dbo.dim_geografica;
GO

-- 
DROP TABLE IF EXISTS dbo.hechos_eventonatural;
GO
CREATE TABLE dbo.hechos_eventonatural (
    ID VARCHAR(255) PRIMARY KEY,
	nombre VARCHAR(255),
    tipoevento INTEGER,
	magnitud FLOAT,
    muertos INTEGER,
    fecha VARCHAR(255),
	location_id VARCHAR(255),
	tipoevento_id INTEGER,
);

alter table hechos_eventonatural add foreign key (location_id) references dim_geografica(ID)
GO
alter table hechos_eventonatural add foreign key (tipoevento_id) references dim_tipoevento(ID)
GO
