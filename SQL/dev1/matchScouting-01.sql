CREATE TABLE IF NOT EXISTS dev1.matchScouting (
        id INT AUTO_INCREMENT NOT NULL,
        eventID INT NOT NULL,
        matchID INT NOT NULL,
        matchNum INT NULL,
        scouterID INT NULL,
        scoutingStatus INT NULL,
        team VARCHAR(10) NOT NULL,
        teamMatchNum INT NULL,
        allianceStationID INT NULL,
        /*Level 1 Data*/
        preStartPos TINYINT NULL,
        preLoad TINYINT NULL,
        preNoShow TINYINT NULL,
        autoMB TINYINT NULL,
        autoRamp TINYINT NULL,
        autoPen TINYINT NULL,
        autoGamePiece1 TINYINT NULL,
        autoGamePiece2 TINYINT NULL,
        autoGamePiece3 TINYINT NULL,
        autoGamePiece4 TINYINT NULL,
        autoScore1 TINYINT NULL,
        autoScore2 TINYINT NULL,
        autoScore3 TINYINT NULL,
        autoScore4 TINYINT NULL,
        teleConeHigh TINYINT NULL,
        teleCubeHigh TINYINT NULL,
        teleConeMid TINYINT NULL,
        teleCubeMid TINYINT NULL,
        teleConeLow TINYINT NULL,
        teleCubeLow TINYINT NULL,
        teleConeCMTY TINYINT NULL,
        teleCubeCMTY TINYINT NULL,
        teleLZPickup TINYINT NULL,
        teleObstructed TINYINT NULL,
        teleWasObstructed TINYINT NULL,
        ramp TINYINT NULL,
        rampAssist TINYINT NULL,
        rampPos TINYINT NULL,
        rampStartTime TINYINT NULL,
        postSubsystemBroke TINYINT NULL,
        postBrokeDown TINYINT NULL,
        postReorientCone TINYINT NULL,
        postShelfPickup TINYINT NULL,
        postGroundPickup TINYINT NULL,
        postGoodPartner TINYINT NULL,
        /* add Level 2 columns here */
        speed TINYINT NULL,
        maneuverability TINYINT NULL,
        sturdiness TINYINT NULL,
        climb TINYINT NULL,
        effort TINYINT NULL,
        scoringEff TINYINT NULL,
        intakeEff TINYINT NULL,
        commnetOff TINYTEXT NULL,
        commentDef TINYTEXT NULL,
        goodOffBot TINYINT NULL,
        goodDefBot TINYINT NULL,
        defCommunity TINYINT NULL,
        defCenter TINYINT NULL,
        defLZ TINYINT NULL,
        /* add pit columns here. Note that these columns must match those of the level2 DB table */
        
        PRIMARY KEY (id),
        FOREIGN KEY (eventID) REFERENCES events (id),
        FOREIGN KEY (matchID) REFERENCES matches (id),
        FOREIGN KEY (scouterID) REFERENCES scouters (id),
        FOREIGN KEY (team) REFERENCES teams (team),
        FOREIGN KEY (allianceStationID) REFERENCES allianceStations (id)
) Engine = InnoDB;
