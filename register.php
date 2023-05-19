<?php
	require("includes/config.php");

	$query = $db->prepare("
		SELECT *
		FROM country
		");

	$query->execute();

	$countries = $query->fetchAll();

	$country_codes = [];
	foreach($countries as $country) {
		$country_codes[] = $country["code"];
	}


	if( isset($_POST["send"]) ){
		if(
			isset($_POST["name"]) &&
			isset($_POST["username"]) &&
			isset($_POST["email"]) &&
			isset($_POST["password"]) &&
			isset($_POST["repeatPassword"]) &&
			isset($_POST["country"]) &&
			isset($_POST["address"]) &&
			isset($_POST["postalcode"]) &&
			isset($_POST["city"]) &&
			isset($_POST["birthdate"]) &&
			filter_var($_POST["email"], FILTER_VALIDATE_EMAIL) &&
			$_POST["password"] === $_POST["repeatPassword"] &&
			mb_strlen($_POST["name"]) >= 6 &&
			mb_strlen($_POST["name"]) <= 100 &&
			mb_strlen($_POST["username"]) >= 6 &&
			mb_strlen($_POST["username"]) <= 30 &&
			mb_strlen($_POST["password"]) >= 8 &&
			mb_strlen($_POST["password"]) <= 500 &&
			mb_strlen($_POST["address"]) >= 10 &&
			mb_strlen($_POST["address"]) <= 200 &&
			mb_strlen($_POST["city"]) >= 3 &&
			mb_strlen($_POST["city"]) <= 50 &&
			mb_strlen($_POST["postalcode"]) >= 4 &&
			mb_strlen($_POST["postalcode"]) <= 32 &&
			in_array($_POST["country"], $country_codes)
		){

			$query = $db->prepare("
				INSERT INTO users
				(name, username, email, password, address, city, country, postal_code, birth)
				VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)
				");

			$query->execute([
				$_POST["name"],
				$_POST["username"],
				$_POST["email"],
				password_hash($_POST["password"], PASSWORD_DEFAULT),
				$_POST["address"],
				$_POST["city"],
				$_POST["country"],
				$_POST["postalcode"],
				$_POST["birthdate"]
			]);

			$_SESSION["user_id"] = $db->lastInsertId();
			header("Location: cart.php");

		}else
			http_response_code(400);
			$message = "Por favor preencher todos os campos corretamente.";
			echo "message";
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
		<div class="forms">
		<div class="logForms">
		<h1 class="formTitle">CREATE ACCCOUNT</h1><br>
		<form method="post" action="register.php">
			<label class="formLabels formLabel1" for="username">NAME</label><br>
			<input class="formInputs formInput1" type="text" name="name" value="" minlength="6" maxlength="100" required><br><br><br>
			<label class="formLabels formLabel1" for="username">USERNAME</label><br>
			<input class="formInputs formInput1" type="text" name="username" value="" minlength="6" maxlength="30" required><br><br><br>
			<label class="formLabels formLabel2" for="email">EMAIL</label><br>
			<input class="formInputs formInput2" type="email" name="email" required><br><br><br>
			<label class="formLabels formLabel3" for="password">PASSWORD</label><br>
			<input class="formInputs formInput3" type="password" name="password" minlength="8" maxlength="500" required><br><br><br>
			<label class="formLabels formLabel4" for="repeatPassword">REPEAT PASSWORD</label><br>
			<input class="formInputs formInput4" type="password" name="repeatPassword" minlength="8" maxlength="500" required><br><br><br>
			<label class="formLabels formLabel8">COUNTRY
				<select name="country" required>
<?php
		foreach ($countries as $country) {
			echo "
				<option value='".$country["code"]."'>".$country["countryname"]."</option>
			";
		}
?>
				</select>
			</label><br><br><br>
			<label class="formLabels formLabel5" for="address">ADDRESS</label><br>
			<input class="formInputs formInput5" type="text" name="address" minlength="10" maxlength="200" required><br><br><br>
			<label class="formLabels formLabel6" for="postalcode">POSTAL CODE</label><br>
			<input class="formInputs formInput6" type="text" name="postalcode" minlength="4" maxlength="32" required><br><br><br>
			<label class="formLabels formLabel7" for="city">CITY</label><br>
			<input class="formInputs formInput7" type="text" name="city" minlength="3" maxlength="50" required><br><br><br>
			<label class="formLabels" for="birthday">BIRTH DATE</label><br><br>
			<input class="formInputs" type="date" name="birthdate" minlength="6" maxlength="30" required><br><br><br>
			<div class="buttonForm"><button type="submit" name="send">CREATE ACCOUNT</button><a href="login.html">LOGIN</a></div>

		</form>
		</div>
		</div>
	</main>

	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>