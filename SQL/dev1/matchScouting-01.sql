CREATE TABLE IF NOT EXISTS dev1.matchScouting (
        id INT AUTO_INCREMENT NOT NULL,
        BAeventID VARCHAR(20) NOT NULL,
        matchID INT NOT NULL,
        matchNum INT NULL,
        scouterID INT NULL,
        scoutingStatus INT NULL,
        team VARCHAR(10) NOT NULL,
        teamMatchNum INT NULL,
        scoutingRoleID INT NULL,
        /* add Level 1 columns here */
        /* add Level 2 columns here. Note that these columns must match those of the level2 DB table */
        PRIMARY KEY (id),
        FOREIGN KEY (BAeventID) REFERENCES events (BAeventID) ON DELETE CASCADE,
        FOREIGN KEY (matchID) REFERENCES matches (id) ON DELETE CASCADE,
        FOREIGN KEY (scouterID) REFERENCES scouters (id) ON DELETE CASCADE,
        FOREIGN KEY (team) REFERENCES CEteams (team) ON DELETE CASCADE,
        FOREIGN KEY (scoutingRoleID) REFERENCES scoutingRole (id) ON DELETE CASCADE
) Engine = InnoDB;