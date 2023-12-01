<?php
    session_start();
    include 'connect.php';
    if($_SESSION['status_login'] != true){
        header('location: login.php');
    }
    $kategori = mysqli_query($conn, "SELECT * FROM tb_kategori WHERE category_id = '".$_GET['id']."'");
    if(mysqli_num_rows($kategori) == 0){
        echo '<script>window.location="category-list.php"</script>';
    }
    $k = mysqli_fetch_object($kategori);
    
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
    <title>WarungOnline</title>
</head>
<body>
    <!-- HEADER -->
    <header>
        <div class="container">
            <h1><a href="">Warung Online</h1>
            <ul>
                <li><a href="dashboard.php">Dashboard</a></li>
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
            <h3>Edit Kategori</h3>
            <div class="box">
                <form action="" method="POST">
                    <input type="text" name="nama" placeholder="Tambah Kategori" class="input-control" value="<?php echo $k->category_name ?>" required>                   
                    <input type="submit" name="submit" value="Edit" class="btn">
                </form>
                <?php
                    if(isset($_POST['submit'])){
                        $nama   = ucwords($_POST['nama']);
                        $update = mysqli_query($conn, "UPDATE tb_kategori SET category_name = '".$nama."' WHERE category_id = '".$k->category_id."'");

                        if($update){
                            echo '<script>alert("Edit Data Berhasil")</script>';
                            echo '<script>window.location="category-list.php"</script>';
                        }
                        else{
                            echo 'gagal'.mysqli_error($conn);
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