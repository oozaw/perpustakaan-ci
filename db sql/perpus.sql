-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql304.epizy.com
-- Generation Time: Dec 19, 2021 at 12:57 PM
-- Server version: 5.7.35-38
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_30112960_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(1, '4000', 'Aktif', '2021-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(10, 'BK009', 2, 1, '0', '923-23423-2', '0', 'Belajar Python', 'Erlangga', 'Kemala', '2020', '', 3, '2021-10-21 16:32:12'),
(11, 'BK0011', 2, 1, '0', '7553-2323-23232', '0', 'Belajar PHP', 'Grambook', 'Titia', '2021', '', 5, '2021-10-21 16:32:55'),
(12, 'BK0012', 2, 1, '0', '132-123-234-231', '0', 'Belajar Pemrograman Java', 'IF Bandung', 'BUDI RAHARJO ', '2012', '', 23, '2019-11-23 11:49:57'),
(13, 'BK0013', 2, 1, '0', '7553-2323-23232', '0', 'Belajar Fortran', 'Grambook', 'Titia', '2021', '', 5, '2021-10-21 16:32:55'),
(14, 'BK0012', 2, 1, '0', '132-123-234-231', '0', 'Belajar Menghitung Bintang', 'IF Semesta', 'Budi Kusuma', '2012', '', 23, '2021-12-16'),
(15, 'BK00121', 2, 1, '0', '911-23123-1', '0', 'Sistem Cerdas', 'Gramedia', 'Ku Rang Taw', '2018', '', 5, '2018-02-23'),
(16, 'BK0042', 2, 1, '0', '342-2343-2', '0', 'Sistem Tertanam', 'YNTKTS', 'Mwehehe', '2018', '', 5, '0'),
(17, 'BK0072', 2, 1, '', '347-2312-4', '', 'Sistem Komputer', 'YNTKTS', 'Aps Yao', '2018', '', 5, ''),
(18, 'BK0702', 1, 1, NULL, '915-4661-1', NULL, 'Jago Ngoding', 'Facebook', 'Mark Zuckerberg', '2021', NULL, 13, NULL),
(20, 'BK0087', 1, 1, NULL, '254-3491-1-125', NULL, 'Jago Sulap', 'Corbuzier Comp', 'Dedy Corbuzier', '2020', NULL, 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(3, 'PJ001', '0', 0, '2020-05-20'),
(5, 'PJ009', '0', 0, '2020-05-20'),
(6, 'PJ0011', '0', 0, '2021-10-19'),
(7, 'PJ0012', '224000', 14, '2021-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Pemrograman');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(5, 'AG005', 'ronny', 'fbd1e8ec877eab04ff4f3395d5fb2372', 'Petugas', 'Ronny', 'Doloksanggul', '2001-02-06', 'Laki-Laki', 'doloksanggul', '0897654321', 'ronny@gmail.com', '2021-10-19', 'user_1634646159.jpg'),
(6, 'AG006', 'dominikus', '290b86018f2b3b790ebbc90e1d360c27', 'Anggota', 'Dominikus', 'Doloksanggul', '2001-05-11', 'Laki-Laki', 'doloksanggul', '0897654312', 'dominikus@gmail.com', '2021-10-19', 'user_1634646298.jpg'),
(7, 'AG007', 'jonathan', '78842815248300fa6ae79f7776a5080a', 'Petugas', 'Jonathan', 'Gunung Bayu', '2001-05-14', 'Laki-Laki', 'gunung bayu', '08214532987', 'jonathan@gmail.com', '2021-10-19', 'user_1634646443.jpg'),
(8, 'AG008', 'nicholas', '532ab4d2bbcc461398d494905db10c95', 'Anggota', 'Nicholas', 'Gunung Bayu', '2001-05-14', 'Laki-Laki', 'gunung bayu', '0897675463', 'nicholas@gmail.com', '2021-10-19', 'user_1634646532.jpg'),
(9, 'AG009', 'hana', '52fd46504e1b86d80cfa22c0a1168a9d', 'Petugas', 'Hana', 'batang', '2001-02-01', 'Perempuan', 'batang', '08123456775', 'hana@gmail.com', '2021-10-19', 'user_1634646619.jpg'),
(10, 'AG0010', 'stefani', '137d6abe2a723d19791a3824b2d15c9b', 'Anggota', 'Stefani', 'batang', '2001-02-01', 'Perempuan', 'batang', '0832134567', 'stefani@gmail.com', '2021-10-19', 'user_1634646686.jpg'),
(11, 'AG0011', 'wahyu', '32c9e71e866ecdbc93e497482aa6779f', 'Petugas', 'Wahyu', 'jambi', '2001-03-02', 'Laki-Laki', 'jambi', '08234567712', 'wahyu@gmail.com', '2021-10-19', 'user_1634646923.jpg'),
(12, 'AG0012', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', 'Anggota', 'Adi', 'jambi', '2001-03-02', 'Laki-Laki', 'jambi', '08765476352', 'adi@gmail.com', '2021-10-19', 'user_1634646987.jpg'),
(13, 'AG0013', 'fani', 'ee61d621f12489791ce28b31409daee4', 'Petugas', 'Fani', 'Pati', '2001-04-03', 'Perempuan', 'pati', '0834568786', 'fani@gmail.com', '2021-10-19', 'user_1634647058.jpg'),
(14, 'AG0014', 'aulia', '614913bc360cdfd1c56758cb87eb9e8f', 'Anggota', 'Aulia', 'Pati', '2001-04-03', 'Perempuan', 'pati', '08976545676', 'aulia@gmail.com', '2021-10-19', 'user_1634647120.jpg'),
(16, 'AG0016', '24060119120022', '4756fd05a352643c810934b9c0d97676', 'Petugas', 'Munthe', 'Doloksanggul', '2001-03-02', 'Laki-Laki', 'doloksanggul', '08234567812', 'munthe@gmail.com', '2021-10-20', 'user_1634741171.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(11, 'PJ0011', 'AG006', 'BK008', 'Di Kembalikan', '2021-10-19', 2, '2021-10-21', '2021-10-19'),
(12, 'PJ0012', 'AG0012', 'BK0011', 'Di Kembalikan', '2021-12-03', 2, '2021-12-05', '2021-12-19'),
(13, 'PJ0012', 'AG0012', 'BK0011', 'Di Kembalikan', '2021-12-03', 2, '2021-12-05', '2021-12-19'),
(14, 'PJ0012', 'AG0012', 'BK008', 'Di Kembalikan', '2021-12-03', 2, '2021-12-05', '2021-12-19'),
(15, 'PJ0012', 'AG0012', 'BK009', 'Di Kembalikan', '2021-12-03', 2, '2021-12-05', '2021-12-19'),
(16, 'PJ0016', 'AG0012', 'BK009', 'Dipinjam', '2021-12-19', 4, '2021-12-23', '0'),
(17, 'PJ0016', 'AG0012', 'BK0012', 'Dipinjam', '2021-12-19', 4, '2021-12-23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
