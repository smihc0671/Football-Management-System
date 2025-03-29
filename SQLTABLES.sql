CREATE DATABASE FootballManagementSystem;
USE FootballManagementSystem;

CREATE TABLE Player (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(20),
    Age INT,
    Position VARCHAR(50),
    Stats INT DEFAULT 0,
    TeamID INT NOT NULL,
    FOREIGN KEY (TeamID) REFERENCES Team(ID) ON DELETE CASCADE
);

CREATE TABLE Team (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(20) UNIQUE,
    Coach VARCHAR(20),
    TeamPlayers VARCHAR(700),
    TotalGoal INT DEFAULT 0,
    LeagueID INT,
    FOREIGN KEY (LeagueID) REFERENCES League(ID) ON DELETE SET NULL
);

CREATE TABLE Match (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    FinalScore INT,
    HomeTeamScore INT,
    AwayTeamScore INT,
    AwayTeamName VARCHAR(50) NOT NULL,
    HomeTeamName VARCHAR(50) NOT NULL,
    StadiumID INT NOT NULL,
    TeamID INT NOT NULL,
    FOREIGN KEY (TeamID) REFERENCES Team(ID) ON DELETE CASCADE,
    FOREIGN KEY (StadiumID) REFERENCES Stadium(ID) ON DELETE NO ACTION
);

CREATE TABLE League (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    LeagueName VARCHAR(50) UNIQUE,
    Season VARCHAR(30)
);

CREATE TABLE Transfer (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Price INT DEFAULT 0,
    Date DATE
);

CREATE TABLE Stadium (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Location VARCHAR(100) UNIQUE,
    Capacity INT DEFAULT 0
);

create TABLE Plays_ON (
    ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	PlayerID INT not null,
    MatchID INT NOT NULL,
    PositionPlayed VARCHAR(40),
    FOREIGN KEY (MatchID) REFERENCES Match(ID) ON DELETE NO ACTION,
    FOREIGN KEY (PlayerID) REFERENCES Player(ID),
);

CREATE TABLE Transferred (
    ID INT NOT NULL IDENTITY(1,1),
    TransferID INT NOT NULL,
    PlayerID INT NOT NULL,
    TeamID INT NOT NULL,
    NewTeam VARCHAR(50),
    OldTeam VARCHAR(50),
    PRIMARY KEY(ID, TransferID, PlayerID, TeamID),
    FOREIGN KEY (TransferID) REFERENCES Transfer(ID) ON DELETE CASCADE,
    FOREIGN KEY (PlayerID) REFERENCES Player(ID) ON DELETE CASCADE,
    FOREIGN KEY (TeamID) REFERENCES Team(ID) ON DELETE NO ACTION
);

CREATE TABLE LeagueTeam (
    TeamID INT NOT NULL,
    LeagueID INT NOT NULL,
    PRIMARY KEY(LeagueID, TeamID),
    FOREIGN KEY (LeagueID) REFERENCES League(ID) ON DELETE CASCADE,
    FOREIGN KEY (TeamID) REFERENCES Team(ID) ON DELETE CASCADE
);

CREATE INDEX idx_players_teamid ON Player(TeamID);
CREATE INDEX idx_teams_leagueid ON Team(LeagueID);
CREATE INDEX idx_leagueteam_teamid ON LeagueTeam(TeamID);
CREATE INDEX idx_leagueteam_leagueid ON LeagueTeam(LeagueID);

CREATE VIEW PlayerTeamLeague AS
SELECT 
    Player.ID AS PlayerID,
    Player.Name AS PlayerName,
    Team.Name AS TeamName,
    League.LeagueName AS LeagueName,
    Player.Position,
    Player.Stats
FROM 
    Player
JOIN 
    Team ON Player.TeamID = Team.ID
JOIN 
    LeagueTeam ON Team.ID = LeagueTeam.TeamID
JOIN 
    League ON LeagueTeam.LeagueID = League.ID;

CREATE VIEW LeagueStandings AS
SELECT
    ROW_NUMBER() OVER (ORDER BY League.LeagueName, Team.Name) AS ID, -- Geçici bir benzersiz anahtar
    League.LeagueName AS LeagueName,
    Team.Name AS TeamName,
    COUNT(CASE WHEN Match.HomeTeamName = Team.ID AND Match.HomeTeamScore > Match.AwayTeamScore THEN 1 END) +
    COUNT(CASE WHEN Match.AwayTeamName = Team.ID AND Match.AwayTeamScore > Match.HomeTeamScore THEN 1 END) AS Wins,
    COUNT(CASE WHEN Match.HomeTeamName = Team.ID AND Match.HomeTeamScore = Match.AwayTeamScore THEN 1 END) +
    COUNT(CASE WHEN Match.AwayTeamName = Team.ID AND Match.AwayTeamScore = Match.HomeTeamScore THEN 1 END) AS Draws,
    COUNT(CASE WHEN Match.HomeTeamName = Team.ID AND Match.HomeTeamScore < Match.AwayTeamScore THEN 1 END) +
    COUNT(CASE WHEN Match.AwayTeamName = Team.ID AND Match.AwayTeamScore < Match.HomeTeamScore THEN 1 END) AS Losses,
    SUM(CASE WHEN Match.HomeTeamName = Team.ID THEN Match.HomeTeamScore ELSE 0 END) +
    SUM(CASE WHEN Match.AwayTeamName = Team.ID THEN Match.AwayTeamScore ELSE 0 END) AS GoalsFor,
    SUM(CASE WHEN Match.HomeTeamName = Team.ID THEN Match.AwayTeamScore ELSE 0 END) +
    SUM(CASE WHEN Match.AwayTeamName = Team.ID THEN Match.HomeTeamScore ELSE 0 END) AS GoalsAgainst,
    (SUM(CASE WHEN Match.HomeTeamName = Team.ID THEN Match.HomeTeamScore ELSE 0 END) +
    SUM(CASE WHEN Match.AwayTeamName = Team.ID THEN Match.AwayTeamScore ELSE 0 END)) -
    (SUM(CASE WHEN Match.HomeTeamName = Team.ID THEN Match.AwayTeamScore ELSE 0 END) +
    SUM(CASE WHEN Match.AwayTeamName = Team.ID THEN Match.HomeTeamScore ELSE 0 END)) AS GoalDifference,
    (COUNT(CASE WHEN Match.HomeTeamName = Team.ID AND Match.HomeTeamScore > Match.AwayTeamScore THEN 1 END) +
    COUNT(CASE WHEN Match.AwayTeamName = Team.ID AND Match.AwayTeamScore > Match.HomeTeamScore THEN 1 END)) * 3 +
    (COUNT(CASE WHEN Match.HomeTeamName = Team.ID AND Match.HomeTeamScore = Match.AwayTeamScore THEN 1 END) +
    COUNT(CASE WHEN Match.AwayTeamName = Team.ID AND Match.AwayTeamScore = Match.HomeTeamScore THEN 1 END)) AS Points
FROM
    Team
JOIN
    Match ON Team.ID = Match.HomeTeamName OR Team.ID = Match.AwayTeamName
JOIN
    League ON Team.LeagueID = League.ID
GROUP BY
    League.LeagueName, Team.Name;


CREATE VIEW TransferDetails AS
SELECT 
    Transferred.TransferID,
    Player.Name AS PlayerName,
    Transferred.OldTeam,
    Transferred.NewTeam,
    Transfer.Date,
    Transfer.Price
FROM 
    Transferred
JOIN 
    Player ON Transferred.PlayerID = Player.ID
JOIN 
    Transfer ON Transferred.TransferID = Transfer.ID;
