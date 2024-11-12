<?php
// admin.php - admin page to display reviews
require 'connect.php';

// Add the link to the CSS file
echo "<html><head><link rel='stylesheet' type='text/css' href='admin.css'></head><body>";

// Check if there is a message to display
if (isset($_GET["message"])) {
    echo "<p>" . $_GET["message"] . "</p>";
}

// query to retrieve all reviews
$sql = "SELECT * FROM reviews";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h1>Reviews</h1>";
    echo "<table border='1'>";
    echo "<tr><th>Name</th><th>Email</th><th>Item</th><th>Review</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["user"] . "</td>";
        echo "<td>" . $row["email_id"] . "</td>";
        echo "<td>" . $row["Item"] . "</td>";
        echo "<td>" . $row["review"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No reviews found.";
}
echo"<a href='dashboard.php'><input type='submit' value='dashboard'></a>";
echo "</body></html>";

$conn->close();
?>
