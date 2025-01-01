-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2025 at 03:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualanonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganId` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganId`, `Nama`, `Email`) VALUES
(1, 'Hany', 'hanynadya@gmail.com'),
(2, 'Nadya', 'Nadya124@gmail.com'),
(3, 'Rakha', 'RakhaSyah@gmail.com'),
(4, 'Shafa', 'Shafaa12@gmail.com'),
(5, 'Rere', 'ReihanaZas@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `PesananId` int(11) NOT NULL,
  `PelangganId` int(11) DEFAULT NULL,
  `ProdukId` int(11) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL CHECK (`Jumlah` > 0),
  `TanggalPesanan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`PesananId`, `PelangganId`, `ProdukId`, `Jumlah`, `TanggalPesanan`) VALUES
(1, 1, 101, 2, '2024-11-18 07:59:25'),
(2, 2, 102, 3, '0000-00-00 00:00:00'),
(3, 3, 103, 1, '0000-00-00 00:00:00'),
(4, 4, 104, 2, '0000-00-00 00:00:00'),
(5, 5, 105, 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ProdukId` int(11) NOT NULL,
  `NomorProduk` varchar(100) NOT NULL,
  `Harga` decimal(10,2) DEFAULT NULL CHECK (`Harga` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ProdukId`, `NomorProduk`, `Harga`) VALUES
(101, 'Laptop', 800000.00),
(102, 'Mouse', 120000.00),
(103, 'Flashdisk', 100000.00),
(104, 'Kabel Data', 250000.00),
(105, 'Kartu SD', 150000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganId`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`PesananId`),
  ADD KEY `PelangganId` (`PelangganId`),
  ADD KEY `ProdukId` (`ProdukId`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`PelangganId`) REFERENCES `pelanggan` (`PelangganId`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`ProdukId`) REFERENCES `produk` (`ProdukId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
