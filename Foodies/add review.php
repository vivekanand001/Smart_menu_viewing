<?php
// database connection
  require 'connect.php';
// index.php - form to collect user details
?>
<center>
<?php
    // process form submission
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $user = $_POST['user'];
        $email_id = $_POST['email_id'];
        $Item=$_POST['Item'];
        $review = $_POST['review'];

        // validate input
        if (empty($user) || empty($email_id) || empty($review)) {
            echo "Please fill in all fields!";
        } else {
            // insert into database
            $sql = "INSERT INTO reviews (user, email_id,Item, review) VALUES ('$user', '$email_id','$Item', '$review')";
            if ($conn->query($sql) === TRUE) {
                echo "Review submitted successfully!";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    }
    ?>
</center>
<html>
<head>
    <title>Leave a Review</title>
    <link rel="stylesheet" href="review.css">
</head>
<body>
   <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
       <h1>Leave a Review</h1>
        <label for="user">Name:</label>
        <input type="text" id="user" name="user"><br><br>
        <label for="email_id">Email:</label>
        <input type="email" id="email_id" name="email_id"><br><br>
        <label for="Item">Item:</label>
        <input type="text" id="Item" name="Item"><br><br>
        <label for="review">Review:</label>
        <textarea id="review" name="review"></textarea><br><br>
        <input type="submit" value="Submit Review">
        </form>
        <center>
        <a href="./index.html"><input type="submit" value="Home"></a>
</center>
 
</body>
</html>