<?php
// admin_login.php - admin login page
require 'connect.php';

// Check if the form has been submitted
if (isset($_POST["submit"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Check if the admin exists in the database
    $sql = "SELECT * FROM admins WHERE username = '$username'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $admin = $result->fetch_assoc();
        $hashed_password = $admin["password"];

        // Check if the password is correct
        if (password_verify($password, $hashed_password)) {
            // Login successful, start session and redirect to admin dashboard
            session_start();
            $_SESSION["admin_username"] = $username;
            header("Location:dashboard.php");
            exit;
        } else {
            echo "Invalid password.";
        }
    } else {
        echo "Admin not found.";
        echo "please Register ur admin account";
    }
}

// Display the login form

echo "<html><head><link rel='stylesheet' type='text/css' href='login.css'></head><body>";
echo "<div class='container'>";
echo "<div class='admin-box'>";
echo "<h1>Admin Login</h1>";
echo "<form method='post'>";
echo "<label for='username'>Username:</label><br>";
echo "<input type='text' id='username' name='username' required><br>";
echo "<label for='password'>Password:</label><br>";
echo "<input type='password' id='password' name='password' required><br>";
echo "<input type='submit' name='submit' value='Login'>";
echo "</form>";
echo "<a href='adminhome.php'><input type='submit'  value='Home'>";

echo "</div>";
echo "</div>";

echo "</body></html>";

$conn->close();
?>

