ALTER DATABASE atsosie11 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS related;


CREATE TABLE account (
	accountId BINARY(16) NOT NULL,
	accountActivationToken BINARY(16) NOT NULL,
	accountEmail BINARY(16) NOT NULL,
	accountPassword BINARY(16) NOT NULL,
	-- to make sure duplicate data cannot exist, create a unique index
	UNIQUE(accountActivationToken),
	UNIQUE(accountEmail),
	UNIQUE(accountPassword),
	PRIMARY KEY(accountId)
);

CREATE TABLE song (
	songId BINARY(16) NOT NULL,
	songArtist BINARY(16) NOT NULL,
	songTitle BINARY(16) NOT NULL,
	songBPM BINARY(16) NOT NULL,
	-- this creates an index before making a foreign key
	INDEX(songTitle),
	PRIMARY KEY(songId)
);

CREATE TABLE related (
	relatedSongId BINARY(16) NOT NULL,
	relatedAccountId BINARY(16) NOT NULL,
	INDEX(relatedSongId),
	INDEX(relatedAccountId),
	FOREIGN KEY(relatedSongId) REFERENCES song(songId),
	FOREIGN KEY(relatedAccountId) REFERENCES account(accountId),
	PRIMARY KEY(relatedSongId, relatedAccountId)
);