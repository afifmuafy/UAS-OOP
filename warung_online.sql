-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 08:19 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warung_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Super Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '087736848399', 'fatihhibatillah4@gmail.com', 'Jl. Sepanjang Jalan, Sewonderland, Yogyakarta, Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`category_id`, `category_name`) VALUES
(20, 'Kemeja'),
(21, 'Kaos'),
(22, 'Topi'),
(23, 'Celana'),
(24, 'Jaket'),
(25, 'Sepatu'),
(26, 'Jam Tangan'),
(30, 'Tas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_images` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_images`, `product_status`, `date_created`) VALUES
(11, 26, 'jam hitam', 2000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701364997.jpeg', 1, '2023-11-30 17:23:17'),
(12, 26, 'jam coklat', 3000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375005.jpeg', 1, '2023-11-30 20:10:05'),
(13, 25, 'sepatu putih', 500000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1701375050.jpeg', 1, '2023-11-30 20:10:50'),
(14, 25, 'sepatu abu', 1000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375096.jpeg', 1, '2023-11-30 20:11:36'),
(15, 25, 'sepatu hitam', 100000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375145.jpeg', 1, '2023-11-30 20:12:25'),
(16, 20, 'kemeja abu', 150000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701414234.jpeg', 1, '2023-11-30 20:13:46'),
(17, 20, 'kemeja oren', 150000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375266.jpeg', 1, '2023-11-30 20:14:26'),
(18, 20, 'kemeja hijau', 250000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375301.jpeg', 1, '2023-11-30 20:15:01'),
(19, 21, 'kaos hitam', 50000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375331.jpeg', 1, '2023-11-30 20:15:31'),
(20, 21, 'kaos putih', 50000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375375.jpeg', 1, '2023-11-30 20:16:15'),
(21, 22, 'topi coklat', 80000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375418.jpeg', 1, '2023-11-30 20:16:58'),
(22, 22, 'topi dongker', 100000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375466.jpeg', 1, '2023-11-30 20:17:46'),
(23, 23, 'jeans hitam', 150000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375521.jpeg', 1, '2023-11-30 20:18:41'),
(24, 23, 'jeans biru', 150000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375552.jpeg', 1, '2023-11-30 20:19:12'),
(25, 24, 'jaket hitam', 300000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375586.jpeg', 1, '2023-11-30 20:19:46'),
(26, 24, 'jaket hijau', 300000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375627.jpeg', 1, '2023-11-30 20:20:27'),
(27, 24, 'jaket coklat', 300000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris libero augue, sagittis eget urna et, euismod hendrerit nibh. Quisque ante metus, iaculis sed posuere in, lobortis ac augue. Proin luctus turpis erat, et efficitur justo vulputate ac. Maecenas ac eros pulvinar, sagittis tellus sit amet, pulvinar risus. Maecenas hendrerit vulputate leo, quis gravida erat finibus a. Cras elementum eu mi nec elementum. Praesent molestie dignissim enim sit amet pharetra. Mauris nec accumsan diam, sed porta risus. Phasellus sed tortor non tortor posuere consequat. Nulla laoreet nec ligula ut mattis. Aliquam vel lacus eu ante pretium commodo eget quis est. Nunc sed nisi ullamcorper, vulputate massa id, vehicula mi. Aliquam suscipit porttitor massa at auctor. Curabitur laoreet, libero non congue fringilla, odio dolor commodo sem, at pellentesque odio velit nec justo. Maecenas a aliquam tellus. Aenean posuere eu erat ut elementum.</p>\r\n', 'produk1701375657.jpeg', 1, '2023-11-30 20:20:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
