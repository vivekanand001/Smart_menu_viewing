<?php
    $host = "localhost"; 
    $user = "root";  
    $password = "";
    $database = "food" ;
    $conn = mysqli_connect($host,$user,$password,$database);/* it will connect the backend and frontend*/
    if(!$conn){
        echo die(" sorry failed to connect ".mysqli_connect_error());
    }
    function Redirect($url, $permanent = false)
    {
        header('Location: ' . $url, true, $permanent ? 301 : 302);
        exit();
    }
?>