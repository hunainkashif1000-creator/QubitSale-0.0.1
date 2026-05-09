
<?php

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

/* ==== DATABASE DETAILS ==== */
$host = "sql100.infinityfree.com";
$user = "if0_41285542";
$pass = "peAM09xla5Qg";
$db   = "if0_41285542_stockora";
/* =========================== */

// Check if mysqli exists
if (!function_exists('mysqli_connect')) {
    die("MySQLi extension is NOT enabled.");
}

// Create connection
$conn = mysqli_connect($host, $user, $pass, $db);


?>