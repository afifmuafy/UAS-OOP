<?php
    session_start();
    include 'connect.php';
    if($_SESSION['status_login'] != true){
        header('location: login.php');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset   ="UTF-8">
    <meta http-equif="X-UA-Compatible" content="IE=edge">
    <meta name      ="viewport"        content="width=device-width, initial-scale=1.0">
    <link rel       ="stylesheet"      type="text/css" href="css/style.css">
    <link rel       ="preconnect"      href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato&family=Quicksand:wght@500&display=swap" rel="stylesheet">
    <title>WarungOnline</title>
</head>
<body>
    <!-- HEADER -->
    <header>
        <div class="container">
            <h1><a href="dashboard.php">Warung Online</h1>
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
            <h3>Category List</h3>
            <div class="box">
                <p><a href="tambah-category.php">Tambah Kategori</a></p>
                <table border="1" cellspacing=0 class="table">
                    <thead>
                        <tr>
                            <th width="60px">No</th>
                            <th>Kategori</th>
                            <th width="150px">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no = 1;
                            $k = new database();
                            $kategori = $k->tampil_kategori();
                            if(mysqli_num_rows($kategori) > 0){
                                while($row = mysqli_fetch_array($kategori)){
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $row['category_name'] ?></td>
                            <td>
                                <a href="edit-category.php?id=<?php echo $row['category_id'] ?>">Edit</a> || <a href="hapus-category.php?idk=<?php echo $row['category_id'] ?>" onclick="return confirm('Yakin ingin hapus ?')">Hapus</a>
                            </td>
                        </tr>
                        <?php }} else{ ?>
                            <tr>
                                <td colspan="3">Tidak ada data</td>
                            </tr>
                        <?php } ?>                        
                    </tbody>
                </table>
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