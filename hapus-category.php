<?php

    include 'connect.php';
    
    $id = $_GET['idk'];
    $dk = new database();
    $dk->hapus_kategori($id);
    header("location:category-list.php");


?>