<?php

include_once "conexion.php";

$sql = "select * from persona where estado = 1";

$objetocon = new Conexion();

$con = $objetocon->getConexion();

$resultado = $con->query($sql);

    if($resultado ->num_rows>0){
        while ($fila = $resultado->fetch_assoc()) {
            print "ID:". $fila[ 'id' ] ."<br>";
            print "nombres:". $fila[ 'nombres' ] ."<br>";
            print "Apellidos:". $fila[ 'apellidos' ] ." <br>";
            print "Dni:". $fila[ 'dni' ] ."<br>";
            print "Telefono:" . $fila[ 'telefono' ] ." <br>";
            print "Correo: ". $fila[ 'correo' ] ."<br>";
            print "Estado:". ($fila['estado']==1? 'Activo':'inactivo') . "<br>";
            print "Fecha creacion:" . $fila[ 'fecha_creado' ] ."<br>";
        echo "<hr>";
    }
}



////////////////////////////////////////////////////////////////////////////////

$sql = "insert into persona (nombres, apellidos, dni, telefono, correo) values ('jimi', 'sanches', '78563241', '985645213','mendoza@gmail.com')";

if ($con->query($sql) === true){
    $ultimo_id = $con ->insert_id;
    echo "se registro correctamente: ID nuevo = ". $ultimo_id . "<br>";
}else {
    echo "no se registro";
}


//////////////////////////////////////////////////////////////////////////////////
/*** agregar el update, delete, y subir a un repositorio en github ***/

$sql = "update persona set telefono = '911111111', correo = 'actualziado@gmail.com' where id = '2'";

if ($con->query($sql) === true) {
    echo "Registro actualizado correctamente.<br><hr>";
} else {
    echo "No se pudo actualizar.<br><hr>";
}
/////////////////////////////////////////////////////////////////////////////////

$sql = "update persona set estado = 0 where id = 4";

if ($con->query($sql) === true) {
    echo "Registro eliminado (estado cambiado a inactivo).<br><hr>";
} else {
    echo "No se pudo eliminar.<br><hr>";
}


?>

