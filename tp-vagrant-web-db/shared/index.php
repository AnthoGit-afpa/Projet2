<?php
$servername = "192.168.56.11";
$username = "tp_user";
$password = "tp_password";
$dbname = "tp_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connexion échouée : " . $conn->connect_error);
}
echo "Connexion à la base de données réussie !";
?>
