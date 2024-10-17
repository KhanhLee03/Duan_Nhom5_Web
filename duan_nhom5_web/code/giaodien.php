<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Fast Food Shop</h1>
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="pages/menu.php">Menu</a></li>
                <li><a href="pages/cart.php">Cart</a></li>
                <li><a href="pages/login.php">Login</a></li>
            </ul>
        </nav>
    </header>
    <!-- Content: Danh sách món ăn -->
    <section class="products">
        <h2>Our Fast Food Menu</h2>
        <div class="product-list">
            <!-- <?php
            $query = "SELECT * FROM foods LIMIT 4";
            $result = mysqli_query($conn, $query);
            while ($row = mysqli_fetch_assoc($result)) {
                echo "
                <div class='product-item'>
                    <img src='assets/images/{$row['image']}' alt='{$row['name']}'>
                    <h3>{$row['name']}</h3>
                    <p>{$row['description']}</p>
                    <p>Price: {$row['price']} VND</p>
                    <a href='pages/food_detail.php?id={$row['id']}'>Order Now</a>
                </div>";
            }
            ?> -->
        </div>
    </section>
</body>
</html>