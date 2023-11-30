<?php
    session_start();
    
    // if($_SESSION['status_login'] != true){
    //     header('location: login.php');
    // }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equif="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato&family=Quicksand:wght@500&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<body>
    <!-- HEADER -->
    <header>
        <div class="container">
            <h1><a href="">Warung Online</h1>
            <ul>
                <li><a href="index.php">Dashboard</a></li>
                <li><a href="profile.php">Profile</a></li>
                <li><a href="category-list.php">Category List</a></li>
                <li><a href="product-list.php">Product List</a></li>
                <li><a href="logout.php">Sign Out</a></li>
            </ul>
        </div>
    </header>

    <!-- CONTENT -->
    <div class="section">
        <div class="container">
            <h3>Tambah Kategori</h3>
            <div class="box">
                <form action="" method="POST">
                    <input type="text" name="nama" placeholder="Tambah Kategori" class="input-control"  required>                   
                    <input type="submit" name="submit" value="Tambah" class="btn">
                </form>
                <?php
                include 'connect.php';
                
                    if(isset($_POST['submit'])){
                        $nama   = ucwords($_POST['nama']);
                        $tk = new database;
                        $tk->tambah_kategori($nama);
                        
                        if($tk){
                            echo '<script>alert("Tambah Data Berhasil")</script>';
                            echo '<script>window.location="category-list.php"</script>';
                        }
                        else{
                            echo 'gagal'.mysqli_error($koneksi);
                        }
                }       
                ?>
            </div>
        </div>
    </div>
    <!-- FOOTER -->
    <footer>
        <div class="container">
            <small>Copyright &copy; 2023 - WarungOnline</small>
        </div>
    </footer>
</body>
</html>