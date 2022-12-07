<?php
include_once("./conexion/conexionBD.php"); 


$fecha1 = $_POST['fecha1']; 
$fecha2	= $_POST['fecha2'];


?>
<html>
<head>    
		<title>Smart House</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="../style2.css" />
		<link rel="stylesheet" href="../css/found.css" />

</head>

<style>
    
    .bajo{
        font-family: sans-serif;
        font-size: 20px;
        color:black;
    }
    .bajo div{
        width: 35px;
        height: 35px;
        padding:0;
        margin:0;
        background-color:red;
        border-radius:50%;
	    text-decoration: none;
    }
    .medio{
        font-family: sans-serif;
        color:black;
        font-size: 20px;
    }
    .medio div{
        width: 35px;
        height: 35px;
        padding:0;
        margin:0;
        background-color:yellow;
        border-radius:50%;
	    text-decoration: none;
    }
    .alto{
        font-family: sans-serif;
        font-size: 20px;
    }
    .alto div{
        width: 35px;
        height: 35px;
        padding:0;
        margin:0;
        color:white;
        background-color: green;
        border-radius:50%;
	    text-decoration: none;
    }

</style>

<body>
<div class="wave"></div>
     <div class="wave"></div>
     <div class="wave"></div>
<table>
			<div id="barrabuscar">
		<form method="POST">
		<a onclick="location.href='../php/login.php'">Cerrar sesión</a>
        <a onclick="location.href='../admi/lis_emp.php'">Empleados</a>
        <a onclick="location.href='../admi/admi.php'">Productos</a>
		</form>
		</div>
		
		<tr><th colspan="2"><h1>VENTAS TOTALES</h1></tr>
			<tr>
			<th>Fechas</th>
			<th>Numero de Ventas</th>
            
			</tr>
        <?php 


$queryusuarios = mysqli_query($conexion, "SELECT id_ventas, count(*) as total_ventas from ventas where fecha between '$fecha1' and '$fecha2'");

		$numerofila = 0;
        while($mostrar = mysqli_fetch_array($queryusuarios)) 
		{    $numerofila++;    
            echo "<tr>";
			echo "<td>".$fecha1." ___".$fecha2."</td>";
            switch ($mostrar['total_ventas']) {
                case ($mostrar['total_ventas']<=5):
                    echo "<td class=bajo><div>".$mostrar['total_ventas']."</div></td>";
                    break;
                case  ($mostrar['total_ventas']<=15):
                    echo "<td  class=medio><div>".$mostrar['total_ventas']."</div></td>";
                    break;
                case ($mostrar['total_ventas']>=15):
                    echo "<td class=alto><div>".$mostrar['total_ventas']."</div></td>";
                    break;
            };
        };
        ?>
    </table>

    <table>		
		<tr><th colspan="4"><h1>VENTAS</h1><th colspan="2"><a style="font-weight: normal; font-size: 14px;" onclick="location.href='../admi/venta.php'">Regresar</a></th></tr>
			<tr>
			<th>Nro</th>
			<th>Nd</th>
			<th>No. Producto</th>
            <th>Total</th>
            <th>Fecha</th>
			</tr>
        <?php 


$queryusuarios = mysqli_query($conexion, "SELECT * from ventas where fecha between '$fecha1' and '$fecha2'");
		$numerofila = 0;
        while($mostrar = mysqli_fetch_array($queryusuarios)) 
		{    $numerofila++;    
            echo "<tr>";
			echo "<td>".$numerofila."</td>";
            echo "<td>".$mostrar['id_ventas']."</td>";
            echo "<td>".$mostrar['id_producto']."</td>";
            echo "<td>".$mostrar['total_venta']."</td>";    
			echo "<td>".$mostrar['fecha']."</td>";  
        };


        ?>
    </table>

</body>
</html>

