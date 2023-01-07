<?php
    include "conexion.php";
    ob_start();

    $id = $_GET['delete'];
    // echo $id;
    $query = "DELETE FROM peliculas WHERE peli_id = {$id}";
    mysqli_query($conexion, $query);
    header("Location: ./");
?>