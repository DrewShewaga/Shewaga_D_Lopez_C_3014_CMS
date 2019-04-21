<?php
    require_once('admin/scripts/config.php');

    if(isset($_GET['filter'])){
        $tbl = 'tbl_product';
        $tbl_2 = 'tbl_category';
        $tbl_3 = 'tbl_product_category';
        $col = 'product_id';
        $col_2 = 'category_id';
        $col_3 = 'category_name';
        $filter = $_GET['filter'];
        $results = filterResults($tbl, $tbl_2, $tbl_3, $col, $col_2, $col_3, $filter);
    }else{
        $results = getAll('tbl_product');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sport Chek</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <main class="container">
        <h2 class="hidden">Sport Chek Catalogue</h2>

        <header class="header">
            <div class="logo">
                <h2 class="logoText">Sport Chek</h2>
            </div>

            <form action="admin/scripts/search.php" method="post" class="searchForm">
                <input type="search" placeholder="Search" name="search">
                <button type="submit">Search</button>
            </form>

            <nav class="itemFilter">
                <ul class="filterList">
                    <li class="filterItem"><a class="filterLink" href="index.php?filter=men" target="">Men's</a></li>
                    <li class="filterItem"><a class="filterLink" href="index.php?filter=women" target="">Women's</a></li>
                    <li class="filterItem"><a class="filterLink" href="index.php?filter=kids" target="">Kids</a></li>
                    <li class="filterItem"><a class="filterLink" href="index.php?filter=shoes" target="">Shoes</a></li>
                    <li class="filterItem"><a class="filterLink" href="index.php?filter=gear" target="">Gear</a></li>
                    <li class="filterItem"><a class="filterLink" href="index.php?filter=electronics" target="">Electronics</a></li>
                    <li class="filterItem"><a class="filterLink" href="index.php" target="">All</a></li>
                </ul>
            </nav>

            <a class="adminLink" href="admin/admin_login.php">Admin Panel</a>
        </header>

        <div class="productArea">
            <?php while($row = $results->fetch(PDO::FETCH_ASSOC)): ?>
                <div class="product">
                    <img class="productImg" src='images/<?php echo $row['product_image'];?>' alt="<?php echo $row['product_name']; ?>">
                    <h2 class="productTitle"><?php echo $row['product_name'];?></h2>
                    <p class="productDesc"><?php echo $row['product_desc']; ?></p>
                </div>
            <?php endwhile;?>
        </div>

    </main>

</body>
</html>