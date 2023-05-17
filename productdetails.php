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
					<form method="post" action="cart.php">
						<div class='pricepd'><div class="cen">$<?= $product["price"] ?></div></div><br><br>
							<input type="hidden" name="product_id" value="<?= $product["product_id"] ?>">
							<input name="quantity" type="number" min="1" max="99" value="1" required/><br><br><br>			
							<button class="pricepd" type="submit" name="send">BUY</button>
					</form>
				</div>
				<div class="col-md-8 col-sm-12 col-xs-12">
					<h2><div><?= $product["item"] ?></div><br>
					<div class="vinylText"><?= $product["name"] ?></div></h2><br>
					<div style="font-size: 17px; color: #FE5724;"><?= $product["type"] ?></div><br><br>
					<div class="productDescription"><?= nl2br($product["description"]) ?></div><br><br>
					<div class="tracklist"><span style="font-weight: 400;">Tracklist:</span><br><br><?= nl2br($product["tracklist"]) ?></div>

				</div>
			</div>
		</div>
	</main>


	


	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	<script>
			(function($) {
			$.fn.spinner = function() {
			this.each(function() {
			var el = $(this);

			// add elements
			el.wrap('<span class="spinner"></span>');     
			el.before('<span class="sub">-</span>');
			el.after('<span class="add">+</span>');

			// substract
			el.parent().on('click', '.sub', function () {
			if (el.val() > parseInt(el.attr('min')))
			el.val( function(i, oldval) { return --oldval; });
			});

			// increment
			el.parent().on('click', '.add', function () {
			if (el.val() < parseInt(el.attr('max')))
			el.val( function(i, oldval) { return ++oldval; });
			});
			    });
			};
			})(jQuery);

			$('input[type=number]').spinner();
</script>
	</body>
</html>