<?php
	require("includes/config.php");

	if(!isset($_SESSION["user_id"])) {

		header("Location: login.php");
		exit;

	}

	if(empty($_SESSION["cart"])){
		header("Location: cart.php");
		exit;
	}

	$query = $db->prepare("
		INSERT INTO orders
		(user_id, status)
		VALUES(?, 'Processing')
	");

	$query->execute([
		$_SESSION["user_id"]
	]);

	$order_id = $db->lastInsertId();

	foreach($_SESSION["cart"] as $product){
		$query = $db->prepare("
			INSERT INTO orderDetails
			(order_id, product_id, priceEach, quantity)
			VALUES(?, ?, ?, ?)
			");
		
		$query->execute([
			$order_id, $product["product_id"], $product["price"], $product["quantity"]
		]);
	}
?>