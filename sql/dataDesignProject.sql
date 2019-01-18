ALTER DATABASE atsosie11 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS related;


CREATE TABLE account (
	accountId BINARY(16) NOT NULL,
	accountActivationToken CHAR(32),
	accountEmail VARCHAR(32) NOT NULL,
	accountPassword VARCHAR(128) NOT NULL,
	-- to make sure duplicate data cannot exist, create a unique index
	UNIQUE(profileAtHandle),
	UNIQUE(profileEmail),
	PRIMARY KEY(accountId)
);

CREATE TABLE song (
	songId BINARY(16) NOT NULL,
	-- this is for a foreign key
	songArtist BINARY(16) NOT NULL,
	songTitle VARCHAR(140) NOT NULL,
	songBPM DATETIME(6) NOT NULL,
	-- this creates an index before making a foreign key
	INDEX(tweetProfileId),
	PRIMARY KEY(songId)
);

CREATE TABLE related (
	-- these are still foreign keys
	realtedSongId BINARY(16) NOT NULL,
	relatedAccuntId BINARY(16) NOT NULL,
	-- index the foreign keys
	INDEX(realtedSongId),
	INDEX(relatedAccuntId),
	FOREIGN KEY(relatedSongId) REFERENCES song(songId),
	FOREIGN KEY(relatedAccountId) REFERENCES account(accountId),
	-- finally, create a composite foreign key with the two foreign keys
	PRIMARY KEY(accountId, songId)
);