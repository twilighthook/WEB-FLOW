<?php
	header("Content-Type:text/html;charset=utf-8");

	/*type in the attribute you need*/
	$hostname="localhost";
	$user = "root";
	$passward = "";
	$dbname = "test";
	$connect = mysqli_connect($hostname , $user , $passward , $dbname) or die ("You are not connected!");
	/* when js use POST this area need use POST too*/
	$food = $_POST['food'];
	$id = $_POST['price'];
	echo '<script language="javascript">window.alert("Your data was exist!")</script>';
	if(!empty($food) && !empty($id)){
		$sql = "INSERT INTO food VALUES ('" . $id . "' , '" . $food . "')";
		$connect -> query($sql);
	}
?>