<?php
	require("includes/config.php");

	if(isset($_POST["send"])){

		if (
			isset($_POST["username"]) &&
			isset($_POST["password"]) &&
			mb_strlen($_POST["username"]) >= 4 &&
			mb_strlen($_POST["username"]) <= 32 &&
			mb_strlen($_POST["password"]) >= 8 &&
			mb_strlen($_POST["password"]) <= 500


		) {
			$query = $db->prepare("
			SELECT user_id, password
			FROM users
			WHERE username = ?
			");

			$query->execute([
				$_POST["username"]
			]);

			$user = $query->fetch();

			if(
				!empty($user) &&
				password_verify($_POST["password"], $user["password"])
			){
				$_SESSION["user_id"] = $user["user_id"];
				header("Location: cart.php");
			}
			else{
				http_response_code(401);
				$message = "Username ou password incorreto";
				echo $message;
			}
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
		<div class="forms">
		<div class="logFormsLogin">
		<h1 class="formTitle">LOGIN</h1><br>
		<form method="post" action="login.php">
			<label class="formLabels formLabel1" for="username">USERNAME</label><br>
			<input class="formInputs formInput1" type="text" name="username" minlength="4" maxlength="32" required><br><br><br>
			<label class="formLabels formLabel2" for="password">PASSWORD</label><br>
			<input class="formInputs formInput2" type="password" name="password" minlength="8" maxlength="500" required><br><br><br>
			<div class="buttonForm"><button type="submit" name="send">SIGN IN</button><a href="register.php">CREATE ACCOUNT</a></div>
		</form>
		</div>
		</div>
	</main>

	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	</body>
</html>