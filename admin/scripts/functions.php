<?php

function redirect_to($location){
    if($location != NULL){
        header('Location:'.$location);
        exit();
    }
}

function getAll($tbl){
    include('connect.php');

    $queryAll = 'SELECT * FROM '.$tbl;
    $runAll = $pdo->query($queryAll);

    if($runAll){
        return $runAll;
    }else{
        $error = 'There was a problem accessing this information';
        return $error;
    }
}

function filterResults($tbl, $tbl_2, $tbl_3, $col, $col_2, $col_3, $filter){
    include('connect.php');

   
    $filterQuery = 'SELECT * FROM '.$tbl.' as a, '.$tbl_2.' as b, '.$tbl_3.' as c WHERE a.'.$col.' = c.'.$col.' AND b.'.$col_2.' = c.'.$col_2.' AND b.'.$col_3.' = "'.$filter.'"';
    $runQuery = $pdo->query($filterQuery);
    if($runQuery){
        return $runQuery;
    }else{
        return "Sorry, we don't have that";
    }
}

function searchBar($search){
    include('connect.php');

    $keyword = "%{$search}%";
    $searchQuery = "SELECT * FROM tbl_product WHERE product_name LIKE :search";
    $searchSet = $pdo->prepare($searchQuery);
    $searchSet->execute(
        array(
            ':search' => $keyword
        )
    );

    if($searchSet){
        return $searchSet;
    }else{
        $error = 'No matches';
        return $error;
    }
}