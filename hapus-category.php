<?php

    include 'connect.php';
    
    $id = $_GET['idk'];
    $dk = new database();
    $dk->hapus_kategori($id);
    if(isset($dk)){
        echo '<script>window.location="category-list.php"</script>';
    }

?>