<?php
session_start();

if (!isset($_SESSION["user_id"])) {
    // Not logged in, redirect to index with login modal trigger
    header("Location: index.php?show_login=1");
    exit();
}
?>
