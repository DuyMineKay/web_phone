<?php 

	$mysqli = new mysqli("localhost","root","","web_mysqli_2");
	mysqli_set_charset($mysqli, 'UTF8');
	// Check connection
	if ($mysqli->connect_errno) {
	  echo "Kết nối MYSQLi lỗi" . $mysqli->connect_error;
	  exit();
	}

?>