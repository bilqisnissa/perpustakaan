-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 04:27 PM
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
-- Database: `perpustakaanteknik`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `nomor_isbn` int(11) NOT NULL,
  `judul_buku` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_pengunjung` int(11) DEFAULT NULL,
  `id_staff` int(11) DEFAULT NULL,
  `nomor_isbn` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status_peminjaman` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `nama_pengunjung` varchar(255) DEFAULT NULL,
  `npm` int(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_kartu_anggota` int(6) DEFAULT NULL,
  `pas_foto` varchar(255) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `masa_berlaku` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id_pengunjung`, `nama_pengunjung`, `npm`, `alamat`, `no_kartu_anggota`, `pas_foto`, `bukti_pembayaran`, `masa_berlaku`) VALUES
(101, 'El Hopper', 2147483647, 'Hawkins, Indiana', 0, 'elhopper.png', 'lunas.png', '2029-01-17 00:00:00'),
(102, 'Mike Wheeler', 2147483647, '2530 Piney Wood Lane, East Point', 0, 'mikewheeler.png', 'lunas.png', '2029-01-17 00:00:00'),
(103, 'Number Five', 2147483647, 'Dublin, Ireland', 0, 'five.png', 'lunas.png', '2029-01-17 00:00:00'),
(104, 'Dustin Henderson', 2147483647, '2886 Piney Wood Drive, East Point', 0, 'dustinhenderson.png', 'lunas.png', '2029-01-17 00:00:00'),
(105, 'Maxine Mayfield', 2147483647, 'Texas, America', 0, 'maxinemayfield.png', 'lunas.png', '2029-01-17 00:00:00'),
(106, 'Steve Harrington', 2147483647, '8253 Carlton Road, Riverdale', 0, 'steveharrington.png', 'lunas.png', '2029-01-17 00:00:00'),
(107, 'Allison Hargreeves', 2147483647, 'Capetown, South Africa', 0, 'allison.png', 'lunas.png', '2029-01-17 00:00:00'),
(108, 'Jonathan Byers', 2147483647, '13212 Montgomery Boulevard NE, Glenwood Hills, Albuquerque', 0, 'jonhbyers.png', 'lunas.png', '2029-01-17 00:00:00'),
(109, 'Ben Hargreeves', 2147483647, 'Toronto, Canada', 0, 'ben.png', 'lunas.png', '2029-01-17 00:00:00'),
(110, 'Eddie Munson', 2147483647, 'Salt Lake City, Utah', 0, 'eddie.png', 'lunas.png', '2029-01-17 00:00:00'),
(111, 'Will Byers', 2147483647, '13212 Montgomery Boulevard NE, Glenwood Hills, Albuquerque', 0, 'willbyers.png', 'lunas.png', '2029-01-17 00:00:00'),
(112, 'Nancy Wheeler', 2147483647, '2530 Piney Wood Lane, East Point', 0, 'nancywheeler.png', 'lunas.png', '2029-01-17 00:00:00'),
(113, 'Suzie', 2147483647, 'Salt Lake City, Utah', 0, 'suzie.png', 'lunas.png', '2029-01-17 00:00:00'),
(114, 'Hermione Granger', 2147483647, '8 Heathgate, Hampstead Garden Suburb, London', 0, 'hermioner.png', 'lunas.png', '2029-01-17 00:00:00'),
(115, 'Diego Hargreeves', 2147483647, 'Aguascalientes, Meksiko', 0, 'diego.png', 'lunas.png', '2029-01-17 00:00:00'),
(116, 'Newt Scamander', 2147483647, '9 Sherringford Square, London', 0, 'newtscamander.png', 'lunas.png', '2029-01-17 00:00:00'),
(117, 'Luna Lovegood', 2147483647, 'Ottery St Catchpole, Devon', 0, 'lovegood.png', 'lunas.png', '2029-01-17 00:00:00'),
(118, 'Ginny Weasley', 2147483647, 'The Burrow, Ottery St Catchpole, Devon', 0, 'ginnyweasley.png', 'lunas.png', '2029-01-17 00:00:00'),
(119, 'Jayme Hargreeves', 2147483647, 'Moskow, Rusia', 0, 'jaymehargreeves.png', 'lunas.png', '2029-01-17 00:00:00'),
(120, 'Cedric Diggory', 2147483647, 'Stockholm, Swedia', 0, 'cedricdiggory.png', 'lunas.png', '2029-01-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `nama_staff` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`nomor_isbn`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_pengunjung` (`id_pengunjung`),
  ADD KEY `id_staff` (`id_staff`),
  ADD KEY `nomor_isbn` (`nomor_isbn`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_pengunjung`) REFERENCES `pengunjung` (`id_pengunjung`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`nomor_isbn`) REFERENCES `buku` (`nomor_isbn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
