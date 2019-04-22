<?php

    require_once('scripts/config.php');
    confirm_logged_in();

    $results = getAll('tbl_product');

    if(isset($_GET['deleteInp'])){
        $deleteInp = $_GET['deleteInp'];
        $product_id = $_GET['submit'];
        if($deleteInp=="DELETE"){
            echo deleteProduct($product_id);
            // $message = "fsddfs";
        }
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sport Chek - Delete Product</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>

    <a href="index.php" class="back">Back</a>

    <h2 class="pageTitle">Delete Product</h2>

    <?php if(!empty($message)): ?>
    <p><?php echo $message; ?></p>
    <?php endif; ?>

    <div class="productArea">
        <?php while($row = $results->fetch(PDO::FETCH_ASSOC)): ?>
            <div class="product">
                <img class="productImg" src='../images/<?php echo $row['product_image'];?>' alt="<?php echo $row['product_name']; ?>">
                <h2 class="productPrice"><?php echo $row['product_price'];?></h2>
                <h2 class="productTitle"><?php echo $row['product_name'];?></h2>
                <p class="productDesc"><?php echo $row['product_desc']; ?></p>
                <form action="#" method="GET" class="deleteForm">
                    <label for="deleteInp">Type "DELETE" to permanantly delete:</label>
                    <input type="text" name="deleteInp" required>
                    <button type="submit" name="submit" value="<?php echo $row['product_id']; ?>">Delete</button>
                </form>
            </div>
        <?php endwhile;?>
    </div>
   
</body>
</html>