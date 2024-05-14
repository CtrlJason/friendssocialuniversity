<?php
$database = "u294723362_university";
$local= "localhost";
$contra = "Tumama753!";
$usuario = "u294723362_admin";

$conexion = mysqli_connect($local, $usuario, $contra, $database);

if (!$conexion) {
    die("No Hay Conexion" . mysqli_connect_error());
}

$correo = $_POST["correo"];
$password = $_POST["password"];

$query = mysqli_query($conexion, "SELECT * FROM registro WHERE correo = '$correo' AND contraseña = '$password'");
if (!$query) {
    die("Error en la consulta: " . mysqli_error($conexion));
}

$nr = mysqli_num_rows($query);

if ($nr == 1) {
    header("Location: ../inicio/index.html");
    echo "Bienvenido: $correo";
} else if ($nr == 0) {
    echo "<script>alert('No hay cuentas con esas credenciales.');</script>";
}

mysqli_close($conexion);
?>