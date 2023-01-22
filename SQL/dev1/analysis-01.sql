CREATE TABLE IF NOT EXISTS dev1.CEanalysis (
	team VARCHAR(10) NULL,
	analysisTypeID INT NULL,
	eventID INT NULL,
	M1D VARCHAR(10) NULL,
	M1F INT NULL,
	M1V FLOAT NULL,
	M2D VARCHAR(10) NULL,
	M2F INT NULL,
	M2V FLOAT NULL,
	M3D VARCHAR(10) NULL, 
	M3F INT NULL,
	M3V FLOAT NULL,
	M4D VARCHAR(10) NULL, 
	M4F INT NULL,
	M4V FLOAT NULL,
	M5D VARCHAR(10) NULL, 
	M5F INT NULL,
	M5V FLOAT NULL,
	M6D VARCHAR(10) NULL, 
	M6F INT NULL,
	M6V FLOAT NULL,
	M7D VARCHAR(10) NULL, 
	M7F INT NULL,
	M7V FLOAT NULL,
	M8D VARCHAR(10) NULL, 
	M8F INT NULL,
	M8V FLOAT NULL,
	M9D VARCHAR(10) NULL, 
	M9F INT NULL,
	M9V FLOAT NULL,
	M10D VARCHAR(10) NULL, 
	M10F INT NULL,
	M10V FLOAT NULL,
	M11D VARCHAR(10) NULL, 
	M11F INT NULL,
	M11V FLOAT NULL,
	M12D VARCHAR(10) NULL, 
	M12F INT NULL,
	M12V FLOAT NULL,
	S1D VARCHAR(10) NULL, 
	S1F INT NULL,
	S1V FLOAT NULL,
	S2D VARCHAR(10) NULL, 
	S2F INT NULL,
	S2V FLOAT NULL,
	S3D VARCHAR(10) NULL, 
	S3F INT NULL,
	S3V FLOAT NULL,
	S4D VARCHAR(10) NULL, 
	S4F INT NULL,
	S4V FLOAT NULL,
	Min FLOAT NULL,
	Max FLOAT NULL,
	Per FLOAT NULL,
    PRIMARY KEY (team, analysisTypeID, eventID),
    FOREIGN KEY (eventID) REFERENCES events (id),
    FOREIGN KEY (team) REFERENCES teams (team),
    FOREIGN KEY (analysisTypeID) REFERENCES analysisTypes (id)
) Engine = InnoDB;