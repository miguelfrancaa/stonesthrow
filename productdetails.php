<?php
	require("includes/config.php");

	$query = $db->prepare("
		SELECT item, description, image
		FROM products
		WHERE category_id = ?
		");

	$query->execute(
		$_GET['subcategory_id']
	);

	$products = $query->fetchAll( PDO::FETCH_ASSOC);

	echo "<pre>";
	print_r($products)

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
		<div class="container noAbsolute">
<?php
	foreach ($products as $product) {
		echo "<div class='row rela'>
				<div class='col-md-7 col-sm-12 col-xs-12'><img class='vin john' src='img/john1.png'></div>
				<div class='col-md-5 col-sm-12 col-xs-12 vinylText relaa'>
					<h2>Conflict<br>
					<span class='vinylText'>John Carroll Kirby</span></h2><br>
					<h3>Conflict is a collection of piano-based pieces that was spontaneously released April 2, 2020, in response to the escalating global crisis. The album is now on vinyl – 1LP with digital download.</h3><br>
					<br>
						<button class='price price1'>$19.50</button>
				</div>
			</div>";
	}
?>
			</div>
		</div>
	</main>


	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>