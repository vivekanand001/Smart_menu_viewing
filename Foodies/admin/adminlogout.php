<?php
// admin_logout.php - admin logout page
session_start();
session_destroy();
header("Location:adminlogin.php");
exit;
?>