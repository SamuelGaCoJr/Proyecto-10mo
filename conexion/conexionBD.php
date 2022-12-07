<?php
$servidor="127.0.0.1:3306";
$user="root";
$contrasena="jessy123";
$bd="smart-house";

$conexion=mysqli_connect($servidor,$user,$contrasena,$bd) or die("pedo del server");
mysqli_select_db($conexion,"smart-house") or die("pedo con la bd");

?>