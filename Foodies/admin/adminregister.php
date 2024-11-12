<?php
// admin_register.php - admin registration page
require 'connect.php';
// Check if the form has been submitted
if (isset($_POST["submit"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];
    $email = $_POST["email"];

    // Check if the passwords match
    if ($password != $confirm_password) {
        echo "Passwords do not match.";
    } else {
        // Check if the email already exists
        $sql = "SELECT * FROM admins WHERE email = '$email'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            echo "Email already exists.";
        } else {
            // Hash the password
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);

            // Insert the admin into the database
            $sql = "INSERT INTO admins (username, password, email) VALUES ('$username', '$hashed_password', '$email')";
            $result = $conn->query($sql);

            if ($result) {
                echo "Admin registered successfully.";
            } else {
                echo "Error registering admin.";
            }
        }
    }
}

// Display the registration form
echo "<html><head><link rel='stylesheet' type='text/css' href='register.css'></head><body>";
echo"<a href='adminhome.php'><input type='submit' value='Home'></a>";
echo "<div class='container'>";
echo "<div class='top-nav'>";
echo "<a href='adminlogin.php'><input type='submit' value='Login'></a>";
echo "</div>";
echo "<div class='admin-box'>";
echo "<h1>Admin Registration</h1>";
echo "<form method='post'>";
echo "<label for='username'>Username:</label><br>";
echo "<input type='text' id='username' name='username' required><br>";
echo "<label for='password'>Password:</label><br>";
echo "<input type='password' id='password' name='password' required><br>";
echo "<label for='confirm_password'>Confirm Password:</label><br>";
echo "<input type='password' id='confirm_password' name='confirm_password' required><br>";
echo "<label for='email'>Email:</label><br>";
echo "<input type='email' id='email' name='email' required><br>";
echo "<input type='submit' name='submit' value='Register'>";
echo "</form>";
echo "</div>";
echo "</div>";
echo "</body></html>";

$conn->close();
?>