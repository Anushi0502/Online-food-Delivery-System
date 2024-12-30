<?php
$server = "localhost";
$username = "root";
$password = "Bloodysweet19";
$database = "ofd";

$conn = mysqli_connect($server, $username, $password, $database);
if (!$conn){
    die("Error". mysqli_connect_error());
}

?>
