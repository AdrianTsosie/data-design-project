<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>DJ Get Right!'s Conceptual Model</title>
	</head>
	<body>

		<div>
			<img src="Get Right Conceptual Model.jpg" alt="Conceptual Model">
		</div>

		<h1>Conceptual Model</h1>
		<h2>Entites & Attributes</h2>
			<ul>
				<li><strong>Account:</strong></li>
					<ul>accountId (primary key)</ul>
					<ul>accountActivationToken (for account verification)</ul>
					<ul>accountEmail</ul>
					<ul>accountPassword</ul>
				<li><strong>Songs:</strong></li>
					<ul>songsId</ul>
				<li><strong>Download:</strong></li>
					<ul>downloadSongId</ul>
				<li><strong>Relations:</strong></li>
					<ul>One account can have many downloads (1 to many)</ul>
					<ul>Many artist  ca have many songs (m to m)</ul>
			</ul>


		<h2><a href="./index.html">Home</a></h2>
		<h3><a href="./dj-get-right.php">Persona</a></h3>
		<h4><a href="./use-case.php">User Story</a></h4>
	</body>