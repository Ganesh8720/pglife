<?php
  session_start();  // Start the session

  // Unset all session variables
  session_unset();  

  // Destroy the session
  session_destroy();  

  // Redirect the user to index.php
  header("Location: /webdevelopment/index.php");  // Use the full path if needed
  exit();
?>

