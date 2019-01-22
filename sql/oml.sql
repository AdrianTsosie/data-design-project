INSERT INTO account(accountId, accountActivationToken, accountEmail, accountPassword)
	VALUES(UNHEX("b672dee903ef42f1af52e86f30c8289d"), "nananananananananananananananana", "email@yahoo.com", "MyPassword1");

INSERT INTO song(songId, songArtist, songTitle, songBPM)
	VALUES (UNHEX("a39d2adc59634feeb2600c6ac04eda75"), "Marc Spence", "Botty Call", "124");

INSERT INTO related(relatedSongId, relatedAccountId)
	VALUES (UNHEX("ab0144cc469042c0bb68bf00cd999657"), UNHEX("43849204c012464d846c1528ca782319"));
