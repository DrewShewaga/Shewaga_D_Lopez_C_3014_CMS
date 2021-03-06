<?php

    require_once('scripts/config.php');
    confirm_logged_in();

    $results = getAll('tbl_product');

    if(isset($_FILES['image'])){
        $pid = $_GET['product_id'];

        $errors = array();
        $file_name = $_FILES['image']['name'];
        $file_size =$_FILES['image']['size'];
        $file_tmp = $_FILES['image']['tmp_name'];
        $file_type = $_FILES['image']['type'];
        $file_ext = pathinfo($file_name, PATHINFO_EXTENSION);
        $pname = $_POST['product_name'];
        $pdesc = $_POST['product_desc'];
        $pcat = $_POST['product_cat'];
        $price = $_POST['product_price'];
        
        
        $extensions= array("jpeg","jpg","png");
        if(in_array($file_ext,$extensions)=== false){
            $errors[]="please upload a JPEG or PNG file.";
        }
        if($file_size > 1597152){
            $errors[]= 'File is too large';
        }
        if (empty($file_name)) {
            $errors[] = 'please upload an image';
        }
        if(empty($errors)==true){
            $new_file_name = time().'.'.$file_ext;
            move_uploaded_file($file_tmp,'../images/'.$new_file_name);
            echo editProduct($pid, $pname, $new_file_name, $pdesc, $pcat, $price);
        } else {
            print_r($errors);
        }

    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sport Chek - Edit Product</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>

    <a href="index.php" class="back">Back</a>

    <h2 class="pageTitle">Edit Product</h2>

    <?php if(!empty($message)): ?>
    <p><?php echo $message; ?></p>
    <?php endif; ?>

    <div class="editArea">
        <?php while($row = $results->fetch(PDO::FETCH_ASSOC)): ?>
        
            <div class="product">
                <img class="productImg" src='../images/<?php echo $row['product_image'];?>' alt="<?php echo $row['product_name']; ?>">
                <h2 class="productPrice">$<?php echo $row['product_price'];?></h2>
                <h2 class="productTitle"><?php echo $row['product_name'];?></h2>
                <p class="productDesc"><?php echo $row['product_desc']; ?></p>
            
        

                <form action="admin_editproduct.php?product_id=<?php echo $row['product_id']; ?>" method="POST" enctype="multipart/form-data"  class="editForm">

                    <label for="product_name" class="adminLabel">Name of product:</label>
                    <input type="text" class="nameInput prodInput" name="product_name" required>

                    <label for="product_desc" class="adminLabel">Description of product:</label>
                    <input type="text" class="descInput prodInput" name="product_desc" required>

                    <label for="product_price" class="adminLabel">Price of product:</label>
                    <input type="text" class="priceInput prodInput" name="product_price" required>
                    
                    <label for="product_cat" class="adminLabel">Category of product:</label>
                    <select class="catInput prodInput" name="product_cat" required>
                        <option value="1">Men's</option>
                        <option value="2">Women's</option>
                        <option value="3">Kids</option>
                        <option value="4">Shoes</option>
                        <option value="5">Gear</option>
                        <option value="6">Electronics</option>
                        <option value="8">Jerseys</option>
                    </select>

                    <label for="product_image" class="adminLabel">Image of product:</label>
                    <input type="file" class="imageInput prodInput" name="image">

                    <input type="submit" value="Submit">

                </form>

            </div>

        <?php endwhile;?>  
    </div>
    
</body>
</html>