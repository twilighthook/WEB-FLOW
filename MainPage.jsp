<?php
	$hostname="localhost";
	$user = "root";
	$passward = "";
	$dbname = "test";
	$connect = mysqli_connect($hostname , $user , $passward , $dbname) or die ("You are not connected!");
	$result = mysqli_query( $connect , "SELECT ID FROM food");
	$array = "";
	while($row = mysqli_fetch_array($result)){
		$array = $array."<option>$row[0]</option>";
	}
	if (!$result) {
		printf("Error: %s\n", mysqli_error($connect));
	}
?>
<html>

	<!-- use the min.js to low down loading time -->
	<script type="text/javaScript" src="Action.js"></script>
	<style>
	</style>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>
	<body bgcolor = "#CCEEFF"; style="border:5px solid #DDDDDD;">
		<form method = "post" id = "send">
			The food you want to add:
			<input type = "text" name = "food" id = "food" placeholder="Food Name">
			<input type = "text" name = "price" id = "price" placeholder="Price">
			<input type = "submit" name = "submit" id = "submit" value = "送出">
		</form><br>
		<select>
			<?php echo $array;?>
		</select>
		<input type = "submit" name = "search" id ="search" value = "搜尋">
	</body>
</html>