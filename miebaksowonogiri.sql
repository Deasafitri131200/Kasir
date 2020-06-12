-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2020 pada 12.03
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miebaksowonogiri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `menu`, `harga`) VALUES
(1, 'Mie Ayam', 6000),
(2, 'Bakso', 5000),
(3, 'Mie Ayam + es teh', 8000),
(4, 'Bakso + es teh', 7000),
(5, 'Mie Ayam + es jeruk', 9000),
(6, 'Bakso + es jeruk', 8000),
(7, 'Mie Ayam + Air Mineral', 8500),
(8, 'Bakso + Air Mineral', 7500),
(9, 'Mie Ayam + teh hangat', 8000),
(10, 'Bakso + teh hangat', 7000),
(11, 'Mie Ayam + jeruk hangat', 9000),
(12, 'Bakso + jeruk hangat', 8000),
(13, 'Mie Ayam + Bakso', 11000),
(14, 'Mie ayam + Bakso + 2 es Teh', 15000),
(15, 'Mie Ayam + Bakso + 2 es jeruk', 16000),
(16, 'Mie Ayam + Bakso + 2 the hangat', 15000),
(17, 'Mie Ayam + Bakso + 2 jeruk hangat', 16000),
(18, 'Mie Ayam + Bakso + 2 Air Mineral', 16000),
(19, 'Mie Ayam + Bakso + es jeruk + es teh', 15500),
(20, 'Mie Ayam + Bakso + es jeruk + Air Mineral', 17000),
(21, 'Mie Ayam + Bakso + es teh + Air Mineral', 16000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(150) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `nama_pegawai`, `username`, `password`, `jabatan`) VALUES
(1, 'dea', 'dea', 'safitri', 'kasir'),
(8, 'dewianggunygcantik', 'anggun', 'deguntajo', 'hokage');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `no_nota` int(11) NOT NULL,
  `tgl_pesanan` date NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `pesanan` varchar(50) NOT NULL,
  `harga` int(30) NOT NULL,
  `jumlah_pesanan` int(30) NOT NULL,
  `jumlah_harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`no_nota`, `tgl_pesanan`, `nama_pelanggan`, `pesanan`, `harga`, `jumlah_pesanan`, `jumlah_harga`) VALUES
(1, '2020-06-12', 'bts', 'Bakso + es teh', 7000, 2, 14000),
(2, '2020-06-12', 'anggum', 'Bakso + es teh', 7000, 2, 14000),
(4, '2020-06-12', 'bts', 'Bakso', 5000, 7, 35000),
(10, '2020-06-12', 'upin dan ipn', 'Mie Ayam + es jeruk', 9000, 2, 18000),
(11, '2020-06-12', 'bts', 'Mie Ayam + es teh', 8000, 2, 16000),
(32, '2020-06-12', 'dea safitri', 'Bakso', 5000, 12, 60000),
(2, '2020-06-12', 'dgggd', 'Mie Ayam + Bakso + es jeruk + Air Mineral', 17000, 2, 34000),
(44, '2020-06-12', 'ada', 'Mie Ayam + Bakso + es teh + Air Mineral', 16000, 2, 32000),
(3, '2020-06-12', 'ghjh', 'Bakso + es teh', 7000, 2, 14000),
(1234, '2020-06-12', 'ada', 'Mie Ayam + Bakso + es teh + Air Mineral', 16000, 3, 48000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
