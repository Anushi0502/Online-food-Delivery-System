<?php
$server = "localhost";
$username = "root";
$password = "Bloodysweet19";
$database = "OFD";

$conn = mysqli_connect($server, $username, $password, $database);
if (!$conn){
    die("Error". mysqli_connect_error());
}

?>
