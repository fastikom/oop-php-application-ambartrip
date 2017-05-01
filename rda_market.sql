-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05 Jan 2017 pada 13.49
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rda_market`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'rdamarket', '14928e091517696f352b40104dc25f0d', 'rdamarket.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
`id_barang` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`) VALUES
(64, 'Axe', 'Parfum', 'PT. Axe Int', 10000, 18000, 7, 10),
(65, 'Lifebuoy', 'Alat Mandi', 'Unilever', 5000, 7000, 2, 30),
(66, 'Qtela', 'Snack', 'PT. Tela', 1000, 2000, 14, 50),
(67, 'Sari Roti', 'Roti', 'PT. SARI ROTI ', 3000, 5000, 12, 20),
(68, 'Luwak White Coffe', 'Minuman', 'PT. Luwak', 1000, 2000, 17, 30),
(69, 'Coca-Cola', 'Minuman', 'PT. Coca-Cola', 2000, 4000, 21, 40),
(70, 'Tanggo', 'Snack', 'Indofood', 2000, 4000, 5, 30),
(71, 'Fanta', 'Minuman', 'PT. Fanta Asia Food', 2000, 4000, 12, 20),
(72, 'Indomie', 'Mie Instan', 'Indofood', 1000, 3000, 6, 50),
(73, 'Sabun Lux', 'Alat Mandi', 'Unilever', 1000, 3000, 13, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_laku`
--

CREATE TABLE IF NOT EXISTS `barang_laku` (
  `id_barang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_laku`
--

INSERT INTO `barang_laku` (`id_barang`, `tanggal`, `nama`, `jumlah`, `harga`, `total_harga`, `laba`) VALUES
(64, '2016-12-08', 'Axe', 3, 18000, 54000, 24000),
(65, '2016-12-21', 'Shampoo Lifebuoy', 28, 7000, 196000, 56000),
(66, '2016-12-28', 'Qtela', 36, 2000, 72000, 36000),
(67, '2016-12-24', 'Sari Roti', 8, 5000, 40000, 16000),
(68, '2016-12-21', 'Luwak White Coffe', 13, 2000, 26000, 13000),
(69, '2016-12-29', 'Coca-Cola', 19, 4000, 76000, 38000),
(70, '2016-12-29', 'Tanggo', 25, 4000, 100000, 50000),
(71, '2016-12-09', 'Fanta', 8, 4000, 32000, 16000),
(72, '2016-12-29', 'Indomie', 44, 3000, 132000, 88000),
(73, '2016-12-20', 'Sabun Lux', 7, 3000, 21000, 14000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
