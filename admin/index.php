<?php 

require_once('scripts/config.php');
confirm_logged_in();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Panel</title>
</head>
<body>
    <h1>Admin Dashboard</h1>
    <p>This is the admin dashboard page</p>

    <a href="../index.php">Home</a>

    <nav>
        <ul>
            <li><a href="admin_createproduct.php">Create Product</a></li>
            <li><a href="admin_editproduct.php">Edit Product</a></li>
            <li><a href="admin_deleteproduct.php">Delete Product</a></li>    
            <li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>    
        </ul>
    </nav>

</body>
</html>