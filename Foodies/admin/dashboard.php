<?php
// admin_dashboard.php - admin dashboard page
session_start();

if (!isset($_SESSION["admin_username"])) {
    header("Location:adminlogin.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .dashboard-container {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 2.5em;
            font-weight: bold;
            letter-spacing: 2px;
            color: #f5f5f5;
        }

        p {
            margin-bottom: 15px;
            font-size: 1.2em;
        }

        a {
            text-decoration: none;
        }

        input[type="submit"] {
            background: #007bff;
            border: none;
            border-radius: 25px;
            color: white;
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.3s ease-in-out, transform 0.2s ease-in-out;
        }

        input[type="submit"]:hover {
            background: #0056b3;
            transform: translateY(-3px);
        }

        input[type="submit"]:active {
            transform: translateY(1px);
        }

        a.logout-link {
            display: inline-block;
            margin-top: 20px;
            color: #f5f5f5;
            font-weight: bold;
            font-size: 1em;
            transition: color 0.3s ease-in-out;
        }

        a.logout-link:hover {
            color: #ff4d4d;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Admin Dashboard</h1>
        <p>Welcome, <?php echo $_SESSION["admin_username"]; ?>!</p>
        <p><a href="adminhome.php"><input type="submit" value="Home"></a></p>
        <p><a href="display.php"><input type="submit" value="Review"></a></p>
        <a href="adminlogout.php" class="logout-link">Logout</a>
    </div>
</body>
</html>
