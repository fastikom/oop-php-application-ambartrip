<?php 
include 'config.php';
$id_barang=$_POST['id_barang'];
$nama=$_POST['nama'];
$jenis=$_POST['jenis'];
$suplier=$_POST['suplier'];
$modal=$_POST['modal'];
$harga=$_POST['harga'];
$jumlah=$_POST['jumlah'];

mysql_query("update barang set nama='$nama', jenis='$jenis', suplier='$suplier', modal='$modal', harga='$harga', jumlah='$jumlah' where id_barang='$id_barang'");
header("location:barang.php");

?>