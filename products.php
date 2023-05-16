<?php
	require("includes/config.php");


	if(!isset($_GET["subcategory_id"]) || !is_numeric($_GET["subcategory_id"])) {
		http_response_code(400);
		include('400.php');
		die();
	}

	$query = $db->prepare("
		SELECT products.product_id, products.type, products.item, products.description, products.image, products.price, artists.name, artists.artist_id
		FROM products
		LEFT JOIN artists USING (artist_id)
		WHERE category_id = ?
		");

	$query->execute([
		$_GET['subcategory_id']
	]);

	$products = $query->fetchAll( PDO::FETCH_ASSOC);

	if(empty($products)) {
		http_response_code(404);
		include('404.php');
		die();
	}

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
		echo "<a href='productdetails.php?product_id=".$product["product_id"]."'><div class='row rela'>
				<div class='col-md-7 col-sm-12 col-xs-12'><img class='vin john' src='img/john1.png'></div>
				<div class='col-md-5 col-sm-12 col-xs-12 vinylText relaa'>
					<h2>".$product["item"]."<br>
					<a href=artists.php?artist_id=".$product["artist_id"]."><span class='vinylText'>".$product["name"]."</span></h2></a>
					<div style='font-size: 17px'>".$product["type"]."</div><br>
					<h3>".$product["description"]."</h3><br>
					<br>
						<button class='price price1'>$".$product["price"]."</button>
				</div>
			</div></a>";
	}
?>
			</div>
		</div>
	</main>

	<?php
	require("includes/footer.php");
	?>



	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>