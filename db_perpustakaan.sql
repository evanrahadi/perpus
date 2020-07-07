-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2017 at 01:15 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nim` int(11) NOT NULL,
  `nama` varchar(250) collate latin1_general_ci NOT NULL,
  `tempat_lahir` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('l','p') collate latin1_general_ci NOT NULL,
  `prodi` varchar(75) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`) VALUES
(1130028, 'Parman', 'Blora', '1988-02-03', 'l', 'ti'),
(1130029, 'fitri hndayani', 'jakarta utara', '2017-03-01', 'p', 'ti'),
(1130018, 'Agus Yudoyono', 'Jakarta', '2017-03-10', 'p', 'si'),
(1130017, 'Rendi Pangalila', 'Jakarta', '2017-03-06', 'l', 'ti'),
(1130016, 'Budiantono', 'Jakarta', '2017-03-11', 'l', 'si');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL auto_increment,
  `judul` varchar(200) collate latin1_general_ci NOT NULL,
  `pengarang` varchar(100) collate latin1_general_ci NOT NULL,
  `penerbit` varchar(150) collate latin1_general_ci NOT NULL,
  `tahun_terbit` varchar(4) collate latin1_general_ci NOT NULL,
  `isbn` varchar(25) collate latin1_general_ci NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') collate latin1_general_ci NOT NULL,
  `tgl_input` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(1, 'belajar php mudah', 'parman blora', 'elekmedia joz', '2013', '14343dfd', 0, 'rak1', '2017-03-02'),
(2, 'belajar codeigniter', 'parman', 'elekmedia', '2012', 'hjhjhj', 2, 'rak2', '2017-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(9) NOT NULL auto_increment,
  `judul` varchar(200) collate latin1_general_ci NOT NULL,
  `nim` varchar(11) collate latin1_general_ci NOT NULL,
  `nama` varchar(250) collate latin1_general_ci NOT NULL,
  `tgl_pinjam` varchar(30) collate latin1_general_ci NOT NULL,
  `tgl_kembali` varchar(30) collate latin1_general_ci NOT NULL,
  `status` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
(25, 'belajar codeigniter', '1130017', 'Rendi Pangalila', '05-03-2017', '19-03-2017', 'Pinjam'),
(24, 'belajar codeigniter', '1130017', 'Rendi Pangalila', '04-03-2017', '18-03-2017', 'kembali'),
(23, 'belajar codeigniter', '1130028', 'Parman', '04-03-2017', '11-03-2017', 'kembali'),
(22, 'belajar codeigniter', '1130028', 'Parman', '24-03-2017', '01-03-2017', 'Pinjam'),
(21, 'belajar codeigniter', '1130018', 'Agus Yudoyono', '03-03-2017', '10-03-2017', 'kembali'),
(20, 'belajar php mudah', '1130016', 'Budiantono', '03-03-2017', '17-03-2017', 'Pinjam'),
(26, 'belajar codeigniter', '1130029', 'fitri hndayani', '08-03-2017', '15-03-2017', 'kembali'),
(27, 'belajar codeigniter', '1130018', 'Agus Yudoyono', '08-03-2017', '15-03-2017', 'kembali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(100) collate latin1_general_ci NOT NULL,
  `password` varchar(100) collate latin1_general_ci NOT NULL,
  `nama` varchar(200) collate latin1_general_ci NOT NULL,
  `level` varchar(30) collate latin1_general_ci NOT NULL,
  `foto` varchar(200) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'avatar5.png'),
(2, 'user', 'user', 'user', 'user', 'login.png'),
(3, 'parman ', '12345', 'parman blora', 'user', 'parman.jpg');
