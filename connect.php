<?php 
class database{
 
	private $hostname = "localhost";
	private $username = "root";
	private $password = "";
	private $dbname = "warung_online";
	private $koneksi = "";

	public function __construct(){
		$this->koneksi = mysqli_connect($this->hostname, $this->username, $this->password,$this->dbname);
		if (mysqli_connect_errno()){
			echo "Koneksi database gagal : " . mysqli_connect_error();
		}
	}

	public function getConnection() {
        return $this->koneksi;
	}
 
	function tampil_kategori(){
		$kategori  = mysqli_query($this->koneksi, "SELECT * FROM tb_kategori ORDER BY category_id DESC");
		return $kategori;
	}

	function tambah_kategori($nama){
		mysqli_query($this->koneksi, "INSERT INTO tb_kategori VALUES (null, '".$nama."')");

	}

	function hapus_kategori($id){
		mysqli_query($this->koneksi, "DELETE FROM tb_kategori WHERE category_id = '$id' ");
	}

	function tampil_produk(){
		$produk = mysqli_query($this->koneksi, "SELECT * FROM tb_product LEFT JOIN tb_kategori USING (category_id) ORDER BY product_id DESC");
		return $produk;
	}

}

$con = new database();
$conn = $con->getConnection();

?>