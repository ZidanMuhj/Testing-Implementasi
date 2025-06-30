-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2024 pada 07.17
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukwarung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_adress`) VALUES
(1, 'Admin', 'admin', 'admin123', '081287914200', 'muhziidan0116@gmail.com', 'Jl. Asem Baris V. No 10, Kebon Baru, Tebet, Jakarta Selatan, 12830');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Shock Breaker'),
(9, 'Lampu'),
(10, 'Velg'),
(11, 'Ban (Variasi Merk)'),
(15, 'Kirian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(3, 10, 'Velg Kingspeed Forged Rims', 3000000, 'Kingspeed Forged Rims Vario 125 150 160', 'produk1720490457.jpg', 1, '2024-07-09 02:00:57'),
(4, 9, 'Turbo SE', 700000, 'Biled Turbo SE\r\nOutput 60Watt\r\nSE Experience\r\n\r\nHarga Satuan', 'produk1720490784.jpg', 1, '2024-07-09 02:06:24'),
(5, 11, 'Ban Michelin', 900000, 'Michelin Satuan Yamaha Honda All Motor', 'produk1720493063.jpg', 1, '2024-07-09 02:44:23'),
(6, 1, 'Shock KTC Extreme', 1200000, 'Shock KTC Extreme PNP Vario 125 150 160', 'produk1720493113.jpg', 1, '2024-07-09 02:45:13'),
(7, 15, 'Upgrade CVT', 1000000, 'Paketan Upgrade FULL CVT Vario', 'produk1720670074.jpg', 1, '2024-07-11 03:54:34'),
(8, 9, 'D2 Pro Laser 20Watt', 400000, 'D2 Pro Laser PNP 20Watt + Relay', 'produk1720670185.jpg', 1, '2024-07-11 03:56:25'),
(9, 9, 'Stoplamp JPA Vario 160', 1000000, 'Stoplamp PNP untuk Vario 160 merk JPA', 'produk1720670336.jpg', 1, '2024-07-11 03:58:56'),
(10, 11, 'Maxxis Diamond Universal', 300000, 'Ban Motor MAXXIS ALL MOTOR D/B', 'produk1720670420.jpeg', 1, '2024-07-11 04:00:20'),
(11, 1, 'Ohlins Original ALL MOTOR', 4000000, 'Shock Ohlins All Motor Universal PNP', 'produk1720670515.jpg', 1, '2024-07-11 04:01:55'),
(12, 10, 'VND V-Speed Alumunium', 2000000, 'Velg Vario VND V-Speed ', 'produk1720670553.jpg', 1, '2024-07-11 04:02:33'),
(13, 9, 'Stoplamp Aerox Running', 500000, 'Stoplamp Aerox New 155 PNP\r\n\r\nPengerjaan Cepat\r\nKabel aman\r\nlangsung gaskan', 'produk1720670901.jpg', 1, '2024-07-11 04:08:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
