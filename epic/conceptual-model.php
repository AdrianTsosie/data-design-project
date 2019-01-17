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
				<li><strong>Song:</strong></li>
					<ul>songId (primary tag)</ul>
					<ul>songArtist</ul>
					<ul>songTitle</ul>
					<ul>songBPM</ul>
				<li><strong>Related</strong></li>
					<ul>realtedSongId</ul>
					<ul>relatedAccuntId</ul>
				<li><strong>Relations:</strong></li>
					<ul>Many account can have many songs (1 to m)</ul>0
					<ul>One artist can have many songs (1 to m)</ul>
			</ul>

		<h3>ERD Diagram</h3>
		<img src="Data Project ERD.jpg" alt="ED Diagram">


		<h4><a href="./index.html">Home</a></h4>
		<h5><a href="./dj-get-right.php">Persona</a></h5>
		<h6><a href="./use-case.php">User Story</a></h6>
	</body>