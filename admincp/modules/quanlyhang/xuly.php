<?php
include('../../config/config.php');

$tenhang = $_POST['tenhang'];
$mahang = $_POST['mahang'];
if(isset($_POST['themhang'])){
	//them
	$sql_them = "INSERT INTO tbl_hang(tenhang,mahang) VALUE('".$tenhang."','".$mahang."')";
	mysqli_query($mysqli,$sql_them);
	header('Location:../../index.php?action=quanlyhang&query=them');
}elseif(isset($_POST['suahang'])){
	//sua
	$sql_update = "UPDATE tbl_hang SET tenhang='".$tenhang."',mahang='".$thutu."' WHERE id_hang='$_GET[idhang]'";
	mysqli_query($mysqli,$sql_update);
	header('Location:../../index.php?action=quanlyhang&query=them');
}else{

	$id=$_GET['idhang'];
	$sql_xoa = "DELETE FROM tbl_hang WHERE id_hang='".$id."'";
	mysqli_query($mysqli,$sql_xoa);
	header('Location:../../index.php?action=quanlyhang&query=them');
}

?>