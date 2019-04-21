<?php 
    require_once('scripts/config.php');
   if(empty($_POST['username']) || empty($_POST['password'])){
       $message = 'Missing Fields';
   }else{
       $username = $_POST['username'];
       $password = $_POST['password'];

       $message = login($username,$password);
   }


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Login</title>
</head>
<body>

    <?php if(!empty($message)): ?>
    <p><?php echo $message; ?></p>
    <?php endif; ?>

    <form action="admin_login.php" method="post">

        <label for="username">Username:
            <input type="text" name="username" value="" required>
        </label>

        <br>

        <label for="password">Password:
            <input type="password" name="password" required>
        </label>

        <br>

        <button type="submit">Submit</button>

    </form>
    
</body>
</html>