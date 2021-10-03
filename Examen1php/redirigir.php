
<?php
	include "cabecera.inc.php"; 
	$ci=$_POST["ci"];
	$password=$_POST["password"];
?>
        <div id="navegador">
			<ul>
				<li>
				<a href="formulario.html"> SALIR</a>
				</li>
			<ul>
	    </div>
<?php
    
    $usuario="no existe";
	$sql="select ur.ci, ur.usuario, ur.password, ps.nombre
	from usuario ur, persona ps where ur.ci='$ci' 
	and ur.password like '$password'and ur.ci like ps.ci";
	$resultado=mysqli_query($conn, $sql);
	$fila=mysqli_fetch_array($resultado);
	$ciu=$fila["ci"];
	$usuario=$fila["usuario"];
	$password=$fila["password"];
	$nombre=$fila["nombre"];

	if ($usuario=="")
	{
		echo '<div  align="center">';
		echo '<form action="formulario.html">';
		echo '<div  style="height: 200;" class="formulario">';
		echo '<img style="width:100;heigth:100;" src="./images/usuario.png"/>';
		echo '<p>El usuario ';
		echo $ci;
		echo ' no existe ';
		echo 'o la contraseña es incorrecta </p>';
		echo '<input type="submit" value="Atrás" class="boton" >';
		echo '</div>';
		echo '</form>';
		echo '</div>';
	}
	else
	{
		if ($usuario=="estudiante") {
			echo '<div  align="center">';
			echo '<form method="POST"action="notas.php">';
			echo '<div  style="height: 250;" class="formulario">';
			echo '<img style="width:100;heigth:100;" src="./images/usuario.png"/>';
			echo '<p>Bienvenido Estudiante: <br>';
			echo $nombre;
			echo '<br> CI :';
			echo $ci;
			echo '</p>';
			echo '<input type="submit" value="Ver notas" class="boton" >';
			echo '<input type="hidden" name="ci" value="'.$ci.'"> </div>';
			echo '<input type="hidden" name="rol" value="'.$usuario.'"> </div>';
			echo '</form>';
			echo '</div>';
		} else {
			echo '<div  align="center">';
			echo '<form method="POST"action="notas.php">';
			echo '<div  style="height: 250;" class="formulario">';
			echo '<img style="width:100;heigth:100;" src="./images/usuario.png"/>';
			echo '<p>Bienvenido Docente: <br>';
			echo $nombre;
			echo '<br> CI :';
			echo $ci;
			echo '</p>';
			echo '<input type="submit" value="Ver notas" class="boton" >';
			echo '<input type="hidden" name="ci" value="'.$ci.'"> </div>';
			echo '<input type="hidden" name="rol" value="'.$usuario.'"> </div>';
			echo '</form>';
			echo '</div>';
		}
		
	
	}

	include "piedepagina.inc.php";
?>