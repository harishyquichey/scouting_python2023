CREATE TABLE IF NOT EXISTS dev1.pit (
        team VARCHAR(10) NOT NULL,
        eventID INT NOT NULL,
        scoutingStatus TINYINT DEFAULT 0,
        robotLength TINYINT NULL,
        robotWidth TINYINT NULL,
        robotHeight TINYINT NULL,
        driveBaseID TINYINT NULL,
        driveMotorTypeID TINYINT NULL,
        manipulatorID TINYINT NULL,
        dedicatedGroundIntake TINYINT NULL,
        superClimbID TINYINT NULL,
        buildTypeID TINYINT NULL,
        centerGravityID TINYINT NULL,
        robotDurability TINYINT NULL,
        buildQuality TINYINT NULL,
        buildComments TINYTEXT NULL,
        electricalQuality TINYINT NULL,
        electricalComments TINYTEXT NULL,
        generalComments TINYTEXT NULL,
        imageLink VARCHAR(150) NULL,
        PRIMARY KEY(team),
        FOREIGN KEY (team) REFERENCES teams (team),
        FOREIGN KEY (eventID) REFERENCES events (eventID),
        FOREIGN KEY (driveMotorTypeID) REFERENCES driveMotors (driveMotorTypeID),
        FOREIGN KEY (driveTypeID) REFERENCES driveTypes (driveTypeID)
) Engine = InnoDB;
