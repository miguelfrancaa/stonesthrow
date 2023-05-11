<?php
	require("includes/config.php");
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
		<div class="container containerCart">
		<table class="cartTable">
			<tr class="lineBase">
				<th colspan="2">ITEM</th>
				<th>TYPE</th>
				<th>QUANTITY</th>
				<th>PRICE</th>
			</tr>
			<tr class="lineProduct">
				<td><img style="position: relative; height: 150px;" src="img/products/sstee.jpeg"></td>
				<td>STONESTHROW SS TEE</td>
				<td>T-SHIRT / S</td>
				<td><button class="fa fa-minus maismenos"></button> 1 <button class="fa fa-plus maismenos"></button></td>
				<td>$30.00</td>
			</tr>
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

	</main>

	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>