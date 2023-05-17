<?php
	require("includes/config.php");

	//unset($_SESSION["cart"]);

	if(
		isset($_POST["product_id"]) &&
		isset($_POST["quantity"]) &&
		is_numeric($_POST["quantity"]) &&
		intval($_POST["quantity"]) > 0
	) {

		$quantity = intval($_POST["quantity"]);

		$query = $db->prepare("
			SELECT product_id, stock, item, price, type, image
			FROM products
			WHERE product_id = ?
				AND stock >= ?

			");

		$query->execute([
			$_POST["product_id"],
			$quantity
		]);

		$product = $query->fetch();

		if (!empty($product))  {

		$_SESSION["cart"][$product["product_id"]] = [
			"product_id" => $product["product_id"],
			"quantity" => $quantity,
			"item" => $product["item"],
			"price" => $product["price"],
			"stock" => $product["stock"],
			"type" => $product["type"],
			"image" => $product["image"]
		];
		}
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
<?php
	if(!empty($_SESSION["cart"])){
?>
	<div class="container containerCart">
		<table class="cartTable">
			<tr class="lineBase">
				<th colspan="2">ITEM</th>
				<th>TYPE</th>
				<th>QUANTITY</th>
				<th>PRICE</th>
			</tr>
<?php
	foreach ($_SESSION["cart"] as $item) {
		$subtotal = $item["price"] * $item["quantity"];

		echo '<tr class="lineProduct">
				<td><img style="position: relative; height: 150px;" src="img/products/'.$item["image"].'"></td>
				<td>'.$item["item"].'</td>
				<td>'.$item["type"].'</td>
				<td><button class="fa fa-minus maismenos"></button> '.$item["quantity"].' <button class="fa fa-plus maismenos"></button></td>
				<td>$'.$subtotal.'</td>
			</tr>';
	}
?>
			<tr>
				<td colspan="4" style="font-weight: 100;">Subtotal</td>
				<td>30.00$</td>
			</tr>
			<tr>
				<td colspan="4" style="font-weight: 100;">Total</td>
				<td>30.00$</td>
			</tr>
		</table>
		<div class="buttonsMenu">
		<button class="update" type="button"><a>UPDATE CART</a><div class="fa fa-refresh ref"></button>
		<button class="checkout" type="submit"><a>CHECKOUT</a></div></button>
		</div>
		</div>
<?php
	}else{
		echo "<p>Carrinho Vazio</p>";
	}
?>
	</main>


	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>