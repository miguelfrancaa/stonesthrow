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
		<div class="forms">
		<div class="logForms">
		<h1 class="formTitle">CREATE ACCCOUNT</h1><br>
		<form method="POST">
			<label class="formLabels formLabel1" for="username">USERNAME</label><br>
			<input class="formInputs formInput1" type="text" name="username" value="" minlength="6" maxlength="30" required><br><br><br>
			<label class="formLabels formLabel2" for="email">EMAIL</label><br>
			<input class="formInputs formInput2" type="email" name="email" value="" required><br><br><br>
			<label class="formLabels formLabel3" for="password">PASSWORD</label><br>
			<input class="formInputs formInput3" type="password" name="password" value="" minlength="8" maxlength="30" required><br><br><br>
			<label class="formLabels formLabel4" for="repeatPassword">REPEAT PASSWORD</label><br>
			<input class="formInputs formInput4" type="password" name="repeatPassword" required><br><br><br>
			<div class="buttonForm"><button type="submit">CREATE ACCOUNT</button><a href="login.html">LOGIN</a></div>

		</form>
		</div>
		</div>
	</main>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>