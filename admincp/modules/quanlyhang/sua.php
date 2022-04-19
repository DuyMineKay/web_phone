<?php
	$sql_sua_hang = "SELECT * FROM tbl_hang WHERE id_hang='$_GET[idhang]' LIMIT 1";
	$query_sua_hang = mysqli_query($mysqli,$sql_sua_hang);
?>
<p>Sửa hãng</p>
<table border="1" width="50%" style="border-collapse: collapse;">
 <form method="POST" action="modules/qualyhang/xuly.php?idhang=<?php echo $_GET['idhang'] ?>">
 	<?php
 	while($dong = mysqli_fetch_array($query_sua_hang)) {
 	?>
	  <tr>
	  	<td>Tên hãng</td>
	  	<td><input type="text" value="<?php echo $dong['tenhang'] ?>" name="tenhang"></td>
	  </tr>
	  <tr>
	    <td>Mã hãng</td>
	    <td><input type="text" value="<?php echo $dong['mahang'] ?>" name="mahang"></td>
	  </tr>
	   <tr>
	    <td colspan="2"><input type="submit" name="suahang" value="Sửa hãng"></td>
	  </tr>
	  <?php
	  } 
	  ?>

 </form>
</table>