<?php
	require("includes/config.php");

	$query = $db->prepare("
		SELECT products.product_id, products.item, products.type, products.description, products.image, products.image2, products.price, products.tracklist, artists.name, artists.artist_id
		FROM products
		LEFT JOIN artists USING (artist_id)
		WHERE product_id = ?
		");

	$query->execute([
		$_GET['product_id']
	]);

	$product = $query->fetch( PDO::FETCH_ASSOC);
	

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
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12">
					<img src="img/products/<?= $product["image"] ?>">
					<div><button class='pricepd'>$20.00</button></div>
				</div>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<h2><div><?= $product["item"] ?></div><br>
					<div class="vinylText"><?= $product["name"] ?></div></h2><br>
					<div style="font-size: 17px;"><?= $product["type"] ?></div><br><br>
					<div><?= $product["description"] ?></div><br>
					<div>TRACKLIST</div>

				</div>
			</div>
		</div>
	</main>


	


	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>