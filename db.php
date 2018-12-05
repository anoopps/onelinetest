<?php
$user = "root";
$host ="localhost";
$pass = "";

$connect = mysqli_connect($host,$user,$pass,'questionary');
if($connect->connect_error){
    die("Connection error!");
}


?>