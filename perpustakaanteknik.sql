-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 06:35 PM
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
-- Database: `perpustakaanteknikk`
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

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`nomor_isbn`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`) VALUES
(10123456, 'Bumi', 'Tere Liye', 'Gramedia Pustaka Utama', '2014-04-11'),
(10294310, 'Bulan', 'Tere Liye', 'Gramedia Pustaka Utama', '2015-02-22'),
(10345600, 'Bintang', 'Tere Liye', 'Gramedia Pustaka Utama', '2017-05-28'),
(10416882, 'Selena', 'Tere Liye', 'Gramedia Pustaka Utama', '2020-03-03'),
(10568943, 'Matahari', 'Tere Liye', 'Gramedia Pustaka Utama', '2016-07-14'),
(10693506, 'Pergi', 'Tere Liye', 'Gramedia Pustaka Utama', '2018-11-01'),
(10723001, 'Rindu', 'Tere Liye', 'Gramedia Pustaka Utama', '2014-02-06'),
(10893062, 'Janji', 'Tere Liye', 'Gramedia Pustaka Utama', '2021-10-06'),
(10920946, 'Sesuk', 'Tere Liye', 'Gramedia Pustaka Utama', '2022-04-29'),
(11098092, 'Selamat Tinggal', 'Tere Liye', 'Gramedia Pustaka Utama', '2020-01-27'),
(11143256, 'Nebula', 'Tere Liye', 'Gramedia Pustaka Utama', '2019-08-20'),
(11276644, 'Tentang Kamu', 'Tere Liye', 'Gramedia Pustaka Utama', '2016-10-31'),
(11376867, 'Komet', 'Tere Liye', 'Gramedia Pustaka Utama', '2018-04-21'),
(11483412, 'Hello', 'Tere Liye', 'Gramedia Pustaka Utama', '2023-01-29'),
(11538411, 'Si Putih', 'Tere Liye', 'Gramedia Pustaka Utama', '2021-10-24'),
(11627225, 'Pulang', 'Tere Liye', 'Gramedia Pustaka Utama', '2015-10-12'),
(11735044, 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', '2016-12-08'),
(11812404, 'Lumpu', 'Tere Liye', 'Gramedia Pustaka Utama', '2020-07-18'),
(11955409, 'Burlian', 'Tere Liye', 'Gramedia Pustaka Utama', '2009-11-15'),
(12031005, 'Yang Telah Lama Pergi', 'Tere Liye', 'Gramedia Pustaka Utama', '2023-09-30');

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
  `npm` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_kartu_anggota` varchar(20) DEFAULT NULL,
  `pas_foto` varchar(255) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `masa_berlaku` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id_pengunjung`, `nama_pengunjung`, `npm`, `alamat`, `no_kartu_anggota`, `pas_foto`, `bukti_pembayaran`, `masa_berlaku`) VALUES
(101, 'El Hopper', '4523210001', 'Hawkins, Indiana', 'IF0823', 'elhopper.png', 'lunas.png', '2029-01-17 00:00:00'),
(102, 'Mike Wheeler', '4523210002', '2530 Piney Wood Lane, East Point', 'IF7823', 'mikewheeler.png', 'lunas.png', '2029-01-17 00:00:00'),
(103, 'Number Five', '4523210003', 'Dublin, Ireland', 'IF7892', 'five.png', 'lunas.png', '2029-01-17 00:00:00'),
(104, 'Dustin Henderson', '4523210004', '2886 Piney Wood Drive, East Point', 'IF2930', 'dustinhenderson.png', 'lunas.png', '2029-01-17 00:00:00'),
(105, 'Maxine Mayfield', '4523210005', 'Texas, America', 'IF9203', 'maxinemayfield.png', 'lunas.png', '2029-01-17 00:00:00'),
(106, 'Steve Harrington', '4523210006', '8253 Carlton Road, Riverdale', 'IF2022', 'steveharrington.png', 'lunas.png', '2029-01-17 00:00:00'),
(107, 'Allison Hargreeves', '4523210007', 'Capetown, South Africa', 'IF4032', 'allison.png', 'lunas.png', '2029-01-17 00:00:00'),
(108, 'Jonathan Byers', '4523210008', '13212 Montgomery Boulevard NE, Glenwood Hills, Albuquerque', 'IF0203', 'jonhbyers.png', 'lunas.png', '2029-01-17 00:00:00'),
(109, 'Ben Hargreeves', '4523210009', 'Toronto, Canada', 'IF3033', 'ben.png', 'lunas.png', '2029-01-17 00:00:00'),
(110, 'Eddie Munson', '4523210010', 'Salt Lake City, Utah', 'IF0123', 'eddie.png', 'lunas.png', '2029-01-17 00:00:00'),
(111, 'Will Byers', '4523210011', '13212 Montgomery Boulevard NE, Glenwood Hills, Albuquerque', 'IF0392', 'willbyers.png', 'lunas.png', '2029-01-17 00:00:00'),
(112, 'Nancy Wheeler', '4523210012', '2530 Piney Wood Lane, East Point', 'IF2839', 'nancywheeler.png', 'lunas.png', '2029-01-17 00:00:00'),
(113, 'Suzie', '4523210013', 'Salt Lake City, Utah', 'IF3020', 'suzie.png', 'lunas.png', '2029-01-17 00:00:00'),
(114, 'Hermione Granger', '4523210014', '8 Heathgate, Hampstead Garden Suburb, London', 'IF0001', 'hermioner.png', 'lunas.png', '2029-01-17 00:00:00'),
(115, 'Diego Hargreeves', '4523210015', 'Aguascalientes, Meksiko', 'IF3043', 'diego.png', 'lunas.png', '2029-01-17 00:00:00'),
(116, 'Newt Scamander', '4523210016', '9 Sherringford Square, London', 'IF2738', 'newtscamander.png', 'lunas.png', '2029-01-17 00:00:00'),
(117, 'Luna Lovegood', '4523210017', 'Ottery St Catchpole, Devon', 'IF0211', 'lovegood.png', 'lunas.png', '2029-01-17 00:00:00'),
(118, 'Ginny Weasley', '4523210018', 'The Burrow, Ottery St Catchpole, Devon', 'IF9912', 'ginnyweasley.png', 'lunas.png', '2029-01-17 00:00:00'),
(119, 'Jayme Hargreeves', '4523210019', 'Moskow, Rusia', 'IF0249', 'jaymehargreeves.png', 'lunas.png', '2029-01-17 00:00:00'),
(120, 'Cedric Diggory', '4523210020', 'Stockholm, Swedia', 'IF2002', 'cedricdiggory.png', 'lunas.png', '2029-01-17 00:00:00');

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
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama_staff`, `jabatan`) VALUES
(2301, 'Eliza Hartanti', 'Kepala Pustakawan'),
(2302, 'Indra Kurnia', 'Pustakawan'),
(2303, 'Clara Wijaya', 'Asisten Pustakawan'),
(2304, 'Erwin Saputra', 'Kepala Administrasi'),
(2305, 'Bagus Pratama', 'Petugas Administrasi'),
(2306, 'Clara Wijaya', 'Petugas Administrasi'),
(2307, 'Fitri Permata', 'Petugas Administrasi'),
(2308, 'Gina Rosalina', 'Pustakawan Digital'),
(2309, 'Bambang Santoso', 'Pustakawan'),
(23010, 'Eka Rahayu', 'Pustakawan Digital'),
(23011, 'Dedi Firmansyah', 'Pengelola Koleksi Khusus'),
(23012, 'Galang Wibowo', 'Petugas Keamanan'),
(23013, 'Anita Pratama', 'Petugas Teknologi Informasi'),
(23014, 'Dimas Nugroho', 'Petugas Teknologi Informasi'),
(23015, 'Indra Kurnia', 'Petugas Keamanan'),
(23016, 'Putri Nayara', 'Pengelola Koleksi Khusus'),
(23017, 'Sandra Dewi', 'Asisten Petugas Teknologi Informasi'),
(23018, 'Bayu Setya', 'Pustakawan Digital'),
(23019, 'Nabil Putra', 'Pustakawan Digital'),
(23020, 'Reyhan Dewa', 'Petugas Keamanan');

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
