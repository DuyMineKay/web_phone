<?php
	$sql_lietke_hang = "SELECT * FROM tbl_hang ORDER BY mahang DESC";
	$query_lietke_hang = mysqli_query($mysqli,$sql_lietke_hang);
?>
<p>Liệt kê hãng</p>
<table border='1' style="width:100%" style="border-collapse:collapse">
  <tr>
  	<th>ID hãng</th>
    <th>Tên hãng</th>
  	<th>Quản lý</th>
  
  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_hang)){
  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['tenhang'] ?></td>
   	<td>
   		<a href="modules/quanlyhang/xuly.php?iddanhmuc=<?php echo $row['id_hang'] ?>">Xoá</a> | <a href="?action=quanlyhang&query=sua&idhang=<?php echo $row['id_hang'] ?>">Sửa</a> 
   	</td>
   
  </tr>
  <?php
  } 
  ?>
 
</table>