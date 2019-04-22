<?php

function createProduct($pname, $pimg, $pdesc, $pcat, $price){

    include('connect.php');
    $create_item_query = "INSERT INTO tbl_product (product_name, product_image, product_desc, product_price) VALUES (:pname, :pimg, :pdesc, :price)";
    $create_item_set = $pdo->prepare($create_item_query);
    $create_item_set->execute(
        array(
            ':pname' => $pname,
            ':pimg' => $pimg,
            ':pdesc' => $pdesc,
            ':price' => $price
        )
    );

    $last_id = $pdo->lastInsertId();

    $insert_category_query = "INSERT INTO tbl_product_category(product_id, category_id) VALUES(:product_id, :category_id)";
    $insert_category_set = $pdo->prepare($insert_category_query);
    $insert_category_set->execute(
        array(
            ':product_id'=>$last_id,
            ':category_id'=>$pcat
        )
    );

    if(!$insert_category_set->rowCount()){
        throw new Exception('Failed to set the category!');
    }

    return 'New Item has been created'; 
}

function editProduct($pid, $pname, $new_file_name, $pdesc, $pcat, $price) {
    include('connect.php');

    $edit_item_query = "UPDATE tbl_product SET product_name = :pname, product_image = :img, product_desc = :pdesc, product_price = :price WHERE product_id = :pid";
    $edit_item_set = $pdo->prepare($edit_item_query);
    $edit_item_set->execute(
        array(
            ':pname'=>$pname,
            ':img'=>$new_file_name,
            ':pdesc'=>$pdesc,
            ':price'=>$price,
            ':pid'=>$pid
        )
    );

    $update_cat_query = "UPDATE tbl_product_category SET category_id=:pcat WHERE product_id=:pid";
    $update_cat_set = $pdo->prepare($update_cat_query);
    $update_cat_set->execute(
        array(
            ':pcat'=>$pcat,
            ':pid'=>$pid
        )
    );

    if(!$update_cat_set->rowCount()){
        throw new Exception('Failed to set the category!');
    }

    return 'Item has been updated'; 
}

function deleteProduct($product_id){
    include('connect.php');

    $delete_item_query = "DELETE FROM tbl_product WHERE product_id=:pid";
    $delete_item_set = $pdo->prepare($delete_item_query);
    $delete_item_set->execute(
        array(
            ':pid'=>$product_id
        )
    );

    $delete_itemcat_query = "DELETE FROM tbl_product_category WHERE product_id=:pid";
    $delete_itemcat_set = $pdo->prepare($delete_itemcat_query);
    $delete_itemcat_set->execute(
        array(
            ':pid'=>$product_id
        )
    );

    if(!$delete_itemcat_set->rowCount()){
        throw new Exception('Failed to delete the category!');
    }

    return 'Item has been deleted';
}
