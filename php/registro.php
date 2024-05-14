<?php
$database = "u294723362_university";
$local= "localhost";
$contra = "Tumama753!";
$usuario = "u294723362_admin";

$conexion = mysqli_connect($local,$usuario,$contra,$database);

$comprobacion = 0;

if(isset($_POST['submit'])) {
    if(
        strlen($_POST['nombres']) >= 1 &&
        strlen($_POST['apellidos']) >= 1 &&
        strlen($_POST['genero']) >= 1 &&
        strlen($_POST['nickname']) >= 1 &&
        strlen($_POST['correo']) >= 1 &&
        strlen($_POST['id_carnet']) >= 1 &&
        strlen($_POST['edad']) >= 1 &&
        strlen($_POST['password']) >= 1 
        ){
            $nombres = mysqli_real_escape_string($conexion, $_POST['nombres']);
            $apellidos = mysqli_real_escape_string($conexion, $_POST['apellidos']);
            $genero = mysqli_real_escape_string($conexion, $_POST['genero']);
            $nickname = mysqli_real_escape_string($conexion, $_POST['nickname']);
            $correo = mysqli_real_escape_string($conexion, $_POST['correo']);
            $id_carnet = mysqli_real_escape_string($conexion, $_POST['id_carnet']);
            $edad = mysqli_real_escape_string($conexion, $_POST['edad']);
            $password = mysqli_real_escape_string($conexion, $_POST['password']);
            $comprobacion = +1;
            
            $consulta = "INSERT INTO registro(codigoestudiante,nombre,apellido,correo,contraseña,nick,fechadenacimiento)
            VALUES('$id_carnet','$nombres','$apellidos','$correo','$password','$nickname','$edad')";
            
            $resultado = mysqli_query($conexion,$consulta);  
            if($resultado) {
                header("Location: ../index.html");
                exit;
            } else {
                echo "<script>alert('Error al registrar la cuenta, intentelo de nuevo.');</script>";
            }
    }
}
?>
