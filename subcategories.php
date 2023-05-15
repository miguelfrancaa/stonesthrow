<?php
	require("includes/config.php");

	$query = $db->prepare("
		SELECT *
		FROM categories
		");

	$query->execute([]);

	$categories = $query->fetchAll();

	if(!isset($_GET["subcategory_id"]) || !is_numeric($_GET["subcategory_id"])) {
		http_response_code(400);
		include('400.php');
		die();
	}

	$query = $db->prepare("
		SELECT *
		FROM categories
		WHERE parent_id = ?
		");

	$query->execute([
		$_GET["subcategory_id"]
	]);

	$subcategories = $query->fetchAll();

	if(empty($subcategories)) {
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
		<div class="container">
			<div class="row shopCat">
				<div class="col-md-6 col-sm-12 col-xs-12 shopCat2 disappear">
					<a href="music.html"><h2 class="name"><?= $categories[$_GET["subcategory_id"]-1]["name"] ?></h2></a>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12 shopCat2">
					<a href="merch.html"><h2 class="name musicCats">
<?php
					foreach ($subcategories as $subcategory) {
						echo "<a href='products.php?subcategory_id=".$subcategory["category_id"]."' class='musicCat'>".$subcategory["name"]."</a><br>";
					}
?>
					</h2></a>
				</div>
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