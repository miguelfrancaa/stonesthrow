<?php
	require("includes/config.php");

	$query = $db->prepare("
		SELECT name, description_photo
		FROM artists
		ORDER BY name
		");

	$query->execute();

	$artists = $query->fetchAll( PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>STONES THROW</title>
		<meta name="keywords" content="STONES THROW">
		<link rel="icon" href="img/logost.ico">
		<meta name="description" content="stones throw, records, hiphop, music, alternative, quasimoto, mfdoom, underground, label">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
<?php
	require("includes/header.php");
?>
	<main>
		<ul class="artistsList">
<?php foreach ($artists as $artist) {
				echo'<li class="artists '.strtolower(trim(str_replace(" ", "", $artist["name"]))).'"><a href="">'.$artist["name"].'</a></li><br><br><br><br><br><br>';
			};
?>
		</ul>
	<div class="fundartist"></div>
	</main>

	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>