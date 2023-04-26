USE G2_PROYECTO_G4_DESASTRES;
GO

--
DROP TABLE IF EXISTS dbo.dim_geografica;
GO

CREATE TABLE dbo.dim_geografica (
	ID VARCHAR(255) PRIMARY KEY,
    country VARCHAR(255),
    location_details TEXT,
    longitude VARCHAR(255),
    latitude VARCHAR(255)
    --FOREIGN KEY (register_num) REFERENCES floods(register_num)
);

--
DROP TABLE IF EXISTS dbo.dim_tipoevento;
GO

CREATE TABLE dbo.dim_tipoevento (
    ID INTEGER PRIMARY KEY,
    nombre VARCHAR(255),
);

-- 
DROP TABLE IF EXISTS dbo.hechos_eventonatural;
GO

CREATE TABLE dbo.hechos_eventonatural (
    ID VARCHAR(255),
	nombre VARCHAR(255),
    tipoevento INTEGER,
	magnitud FLOAT,
    muertos INTEGER,
    fecha VARCHAR(255)
    --FOREIGN KEY (register_num) REFERENCES floods(register_num)
);

SELECT * FROM dbo.dim_geografica;
GO

