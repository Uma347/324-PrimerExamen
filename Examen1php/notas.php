<html>
	<head>
		<title>NOTAS</title>
	</head>
	<body >
	    <?php include "cabecera.inc.php"; ?>
        <div id="navegador">
			<ul>
				<li>
				<a href="formulario.html"> SALIR</a>
				</li>
			<ul>
	    </div>
        <div align="center">
            <div align="center">
            <table>
        <?php 
            $ci=$_POST["ci"];
            $usuario=$_POST["rol"];
            if ( $usuario=="estudiante") {
                echo "<th> SIGLA</th>
                <th> NOTA1</th>
                <th> NOTA2</th>
                <th> NOTA3</th>
                <th> NOTAFINAL</th>";
                $sql="select nt.sigla, nt.nota1,nt.nota2,nt.nota3,nt.notafinal
                from usuario ur,notas nt where ur.ci='$ci' 
                and ur.ci like nt.ci";
                $resultado=mysqli_query($conn, $sql);
                while($fila=mysqli_fetch_array($resultado)) {
                    echo "<tr>";
				    echo "<td>".$fila["sigla"]."</td>";
				    echo "<td>".$fila["nota1"]."</td>";
                    echo "<td>".$fila["nota2"]."</td>";
                    echo "<td>".$fila["nota3"]."</td>";
                    echo "<td>".$fila["notafinal"]."</td>";
				    echo "</p>";
                    echo "</tr>";
			    }
            } else {
                echo "<th> CH</th>
                <th> LP</th>
                <th> CB</th>
                <th> OR</th>
                <th> PT</th>
                <th> TJ</th>
                <th> SC</th>
                <th> BE</th>
                <th> PD</th>";
                echo "<tr>";
                for ($i=1; $i <10 ; $i++) { 
                    $sql=" select truncate(avg(nt.notafinal),2)as promedio
                    from persona p,notas nt where p.departamento='0$i' 
                    and p.ci like nt.ci";
                    $resultado=mysqli_query($conn, $sql);
                    $fila=mysqli_fetch_array($resultado) ;
                        echo "<td>".$fila["promedio"]."</td>";
                }
                echo "</tr>";
            }
        ?>
            </table>
            </div>
            <?php

            $sql="select truncate(sum(nt.notafinal)/count(nt.sigla),2)as promedio,
            count(nt.sigla) nummat,ur.password
            from usuario ur,notas nt where ur.ci='$ci' 
            and ur.ci like nt.ci";
	        $resultado=mysqli_query($conn, $sql);
	        $fila=mysqli_fetch_array($resultado);
	        $password=$fila["password"];
	        $promedio=$fila["promedio"];
            $nummat=$fila["nummat"];
 
            echo '<div  align="center">';
            echo '<form method="POST"action="redirigir.php">';
            echo '<div  style="height: 140;" class="formulario">';
            if ( $usuario=="estudiante") {
                echo '<p>Promedio: ';
                echo $promedio;
                echo '<br> N° Materias :';
                echo $nummat;
                echo '</p>';
              } else { 
                $sql="select password 
                from usuario where ci='$ci'";
                $resultado=mysqli_query($conn, $sql);
                $fila=mysqli_fetch_array($resultado);
                $password=$fila["password"];
                echo '<p> Media de notas por Departamento</p>';
              }
              echo '<input type="submit" value="Volver" class="boton" >';
              echo '<input type="hidden" name="ci" value="'.$ci.'"> </div>';
              echo '<input type="hidden" name="password" value="'.$password.'"> </div>';
              echo '</form>';
              echo '</div>'; 
            ?>
        </div>

        <?php include "piedepagina.inc.php"; ?>
	</body>
</html>
