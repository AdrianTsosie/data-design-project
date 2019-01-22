ALTER DATABASE atsosie11 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS song;
DROP TABLE IF EXISTS related;


CREATE TABLE account (
	accountId BINARY(16) NOT NULL,
	accountActivationToken CHAR(32),
	accountEmail BINARY(16) NOT NULL,
	accountPassword BINARY(16) NOT NULL,
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