DROP DATABASE IF EXISTS Project02;
CREATE DATABASE IF NOT EXISTS Project02;
USE Project02;

CREATE TABLE OpponentTeam (
	Name CHAR(64) PRIMARY KEY,
	Nickname CHAR(64) NOT NULL,
	TeamOwner CHAR(64) NOT NULL,
	Town CHAR(64) NOT NULL
);

CREATE TABLE Game (
	GameID VARCHAR(32) PRIMARY KEY,
	Name CHAR(64) NOT NULL,
	GameDate DATETIME(6) NOT NULL,
	Score1 INT(11) NOT NULL,
	Score2 INT(11) NOT NULL,
	ScoreDifference VARCHAR(32) NOT NULL,
	Stadium CHAR(64) NOT NULL,
	Location CHAR(64) NOT NULL
);

INSERT INTO OpponentTeam (Name, Nickname, TeamOwner, Town)
VALUES
	("Texans", "", "Robert McNair", "Houston, TX"),
	("Jaguars", "Jags", "Shahid Khan", "Jacksonville, FL"),
	("Lions", "", "Martha Firestone Ford", "Detroit, MI"),
	("Dolphins1", "", "Stephen M. Ross", "Miami, FL"),
	("Colts", "The Boys", "James Irsay", "Dallas, TX"),
	("Cheifs", "Kansas Comet", "Clark Hunt", "Kansas City, KA"),
	("Bears", "Da Bears", "Virginia Halas McCaskey", "Chicago, IL"),
	("Bills1", "Bills West", "Terrence Pegula", "Buffalo, NY"),
	("Packers", "", "Green Bay Packers, Inc.", "Green Bay, WI"),
	("Titans", "", "KSA Industries", "Tennessee, TN"),
	("Jets1", "Gang Green", "Woody & Christopher Johnson", "New York, NY"),
	("Vikings", "The Purple People Eaters", "Zygi Wilf", "Minnesota, MN"),
	("Dolphins2", "", "Stephen M. Ross", "Miami, FL"),
	("Steelers", "Blitzburgh", "The Rooney Family", "Pittsburgh, PA"),
	("Bills2", "Bills West", "Terrence Pegula", "Buffalo, NY"),
	("Jets2", "Gang Green", "Woody & Christopher Johnson", "New York, NY")
;

INSERT INTO Game (GameID, Name, GameDate, Score1, Score2, ScoreDifference, Stadium, Location)
VALUES
	("Week 01", "Texans", "2018-09-09", "27", "-20", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 02", "Jaguars", "2018-09-16", "20", "-31", "", "TIAA Bank Field", "Jacksonville, FL"),
	("Week 03", "Lions", "2018-09-23", "10", "-26", "", "Ford Field", "Detroit, MI"),
	("Week 04", "Dolphins1", "2018-09-30", "38", "-07", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 05", "Colts", "2018-10-04", "38", "-24", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 06", "Chiefs", "2018-10-14", "43", "-40", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 07", "Bears", "2018-10-21", "38", "-31", "", "Soldier Field", "Chicago, IL"),
	("Week 08", "Bills1", "2018-10-29", "25", "-06", "", "New Era Field", "Orchard Park, NY"),
	("Week 09", "Packers", "2018-11-04", "31", "-17", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 10", "Titans", "2018-11-11", "10", "-34", "", "Nissan Stadium", "Nashville, TN"),
	("Week 12", "Jets1", "2018-11-25", "27", "-13", "", "MetLife Stadium", "East Rutherford, NJ"),
	("Week 13", "Vikings", "2018-12-02", "24", "-10", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 14", "Dolphins2", "2018-12-09", "33", "-34", "", "Hard Rock Stadium", "Miami Gardens, FL"),
	("Week 15", "Steelers", "2018-12-16", "10", "-17", "", "Heinz Field", "Pittsburgh, PA"),
	("Week 16", "Bills2", "2018-12-23", "24", "-12", "", "Gillette Stadium", "Foxborough, MA"),
	("Week 17", "Jets2", "2018-12-30", "38", "-03", "", "Gillette Stadium", "Foxborough, MA")
;

ALTER TABLE Game ADD 
	CONSTRAINT fk_GameName
	FOREIGN KEY (Name)
	REFERENCES OpponentTeam(Name);

# What teams did the Pats play against and what was the point difference?
# FINISHED
SELECT Name, (SUM(Score1)+SUM(Score2)) AS ScoreDifference
	FROM Game
	GROUP BY GameID;

# What teams beat the Pats, their nickname, their home town,
# in what stadium was the game played and who owns them?
# FINISHED
SELECT Game.Name, Nickname, Town, Stadium, TeamOwner, (Score1+Score2) AS ScoreDifference
	FROM Game
	RIGHT JOIN OpponentTeam
	ON Game.Name = OpponentTeam.Name
	HAVING ScoreDifference <=0
	ORDER BY GameID;


# What was the score, the date, and opponent for Patriot home games that the Pats won?
# FINISHED
SELECT Name, GameDate, Score1, Score2, Stadium, (Score1+Score2) AS ScoreDifference
	FROM Game
	WHERE Stadium="Gillette Stadium"
	HAVING ScoreDifference>=0
	ORDER BY GameID;


# Did the Pats lose any games by 7 or more points?
# FINISHED
# This one was easy. I just copy and pasted the first query and adjusted the "HAVING" 
# clause to be -7 for games lost by 7 or more points
SELECT Name, (Score1+Score2) AS ScoreDifference
	FROM Game
	HAVING ScoreDifference <=-7
	ORDER BY GameID;