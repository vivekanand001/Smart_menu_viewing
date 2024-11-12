<?php
// Database connection
require "connect.php";
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the item ID from the URL
$item_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($item_id > 0) {
    // Fetch item details from the database
    $sql = "SELECT * FROM foodorder WHERE ID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $item_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();/*feach the data and associated in a array*/
    ?>

        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Item Details</title>
            <style>
                body {
                    font-family: 'Poppins', sans-serif;
                    background-color: #f0f4f8; /* Light grey-blue background */
                    margin: 0;
                    padding: 0;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    min-height: 100vh;
                    color: #333;
                    overflow-x: hidden;
                }
                .item-container {
                    background-color: #ffffff;
                    border-radius: 15px;
                    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                    max-width: 500px; /* Reduced from 600px */
                    width: 85%; /* Reduced width percentage */
                    padding: 20px; /* Reduced padding */
                    text-align: center;
                    margin: 20px;
                    transition: transform 0.3s ease;
                }
                .item-container:hover {
                    transform: translateY(-5px);
                    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
                }
                .item-container img {
                    border-radius: 15px;
                    max-width: 60%;
                    height: auto;
                    margin-bottom: 15px; /* Reduced margin */
                    transition: transform 0.3s ease;
                }
                .item-container img:hover {
                    transform: scale(1.05);
                }
                .item-container h1 {
                    font-size: 24px; /* Reduced from 28px */
                    color: #2c3e50;
                    margin: 15px 0; /* Reduced margin */
                    font-weight: bold;
                    font-family: 'Montserrat', sans-serif;
                }
                .item-container p {
                    font-size: 16px; /* Reduced from 18px */
                    color: #7f8c8d;
                    line-height: 1.6; /* Slightly reduced line-height */
                    margin: 12px 0; /* Reduced margin */
                    font-family: 'Roboto', sans-serif;
                }
                .item-container p strong {
                    color:pink;
                }
                .item-container .price {
                    font-size: 20px; /* Reduced from 24px */
                    color:black;
                    margin: 8px 0; /* Reduced margin */
                    font-weight: bold;
                }
                .item-container .btn-back {
                    display: inline-block;
                    padding: 8px 16px; /* Reduced padding */
                    margin-top: 15px; /* Reduced margin */
                    background-color:black;
                    color: #ffffff;
                    border: none;
                    border-radius: 5px;
                    text-decoration: none;
                    font-size: 14px; /* Reduced from 16px */
                    transition: background-color 0.3s ease;
                    font-family: 'Poppins', sans-serif;
                }
                .item-container .btn-back:hover {
                    background-color:skyblue;
                }

                /* Responsive Design */
                @media (max-width: 768px) {
                    .item-container {
                        width: 90%;
                        padding: 15px;
                    }
                    .item-container h1 {
                        font-size: 20px;
                    }
                    .item-container p {
                        font-size: 14px;
                    }
                    .item-container .price {
                        font-size: 18px;
                    }
                    .item-container .btn-back {
                        font-size: 12px;
                    }
                }

                @media (max-width: 480px) {
                    .item-container {
                        width: 95%;
                        padding: 12px;
                    }
                    .item-container h1 {
                        font-size: 18px;
                    }
                    .item-container p {
                        font-size: 12px;
                    }
                    .item-container .price {
                        font-size: 16px;
                    }
                    .item-container .btn-back {
                        font-size: 10px;
                        padding: 6px 12px;
                    }
                }
            </style>
        </head>
        <body>
            <div class="item-container">
                <h1><?php echo ($row['Name']); ?></h1>
                <img src="database/<?php echo ($row['Name']); ?>.jpg" alt="<?php echo ($row['Name']); ?>">
                <p class="price">Price: <?php echo ($row['Price']); ?></p>
                <p><strong>Recipe:</strong> <?php echo ($row['Recipe']); ?></p>  <br>
               <p><strong>Macronutrients:</strong> <?php echo ($row['Macronutrients']); ?></p> <br>
                <p><strong>Suggestions:</strong> <?php echo ($row['Suggestions']); ?></p>
                <button class="btn-back" onclick="history.back()">Back</button>
                <a href="menu.html" class="btn-back">MENU</a>
            </div>
        </body>
        </html>

        <?php
    } else {
        echo "<p>Item not found.</p>";
    }

    $stmt->close();
} else {
    echo "<p>Invalid item ID.</p>";
}

$conn->close();
?>
