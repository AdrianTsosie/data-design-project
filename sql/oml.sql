INSERT INTO account(accountId, accountActivationToken, accountEmail, accountPassword)
	VALUES(UNHEX("b672dee903ef42f1af52e86f30c8289d"), "nananananananananananananananana", "email@yahoo.com", "MyPassword1");

INSERT INTO song(songId, songArtist, songTitle, songBPM)
	VALUES (UNHEX("a39d2adc59634feeb2600c6ac04eda75"), "Marc Spence", "Botty Call", "124");

INSERT INTO related(relatedSongId, relatedAccountId)
	VALUES (UNHEX("a39d2adc59634feeb2600c6ac04eda75"), UNHEX("b672dee903ef42f1af52e86f30c8289d"));


SELECT songId, songArtist, songTitle, songBPM from song WHERE songId = UNHEX("a39d2adc59634feeb2600c6ac04eda75");

SELECT account.accountId, account.accountActivationToken, account.accountEmail, related.relatedAccountId
	FROM account INNER JOIN related on related.relatedAccountId = account.accountId
	WHERE account.accountId = "b672dee903ef42f1af52e86f30c8289d"