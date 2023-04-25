USE G2_PROYECTO_G4_VOLCANES
GO

DROP TABLE IF EXISTS dbo.Location;
GO
DROP TABLE IF EXISTS dbo.Volcano;
GO 

CREATE TABLE Volcano (
	ID INTEGER PRIMARY KEY,
    VOLCANO_NAME VARCHAR(255) NOT NULL,
    ELEVATION INTEGER NOT NULL,
    ERUPTION_TYPE VARCHAR(255)NOT NULL,
    VOLCANO_EXPLOSIVITY INTEGER NOT NULL,
    DEATHS INTEGER
);

CREATE TABLE Location (
	ID INTEGER PRIMARY KEY,
    VOLCANO_NAME VARCHAR(255) NOT NULL,
    PLACE TEXT NOT NULL,
    COUNTRY VARCHAR(255) NOT NULL,
    LATITUDE VARCHAR(255) NOT NULL,
    LONGITUDE VARCHAR(255) NOT NULL
    -- FOREIGN KEY (ID) REFERENCES Volcano(ID)
);

SELECT * FROM Volcano
GO