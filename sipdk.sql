-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 12:09 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipdk`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `nama` text NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu` date NOT NULL,
  `tempat` text NOT NULL,
  `status` enum('sudah','belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `nama`, `deskripsi`, `waktu`, `tempat`, `status`) VALUES
(2, 'TESTING', 'TESTING', '2017-08-17', 'TESTING', 'sudah'),
(4, 'Panjat Pinang 2017', 'Panjat Pinang 2017 yang diadakan oleh Desa Karanglayung akan diadakan di lapangan dusun citeula pada hari sabtu minggu ini.', '2017-08-19', 'Lapangan', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` mediumtext NOT NULL,
  `nik` varchar(20) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `nik`, `id_kategori`, `created_at`, `updated_at`) VALUES
(12, 'Sejarah Desa', '\r\n          \r\n          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem atnibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fuscenec tellus sed augue semper porta. Mauris massa. Vestibulum laciniaarcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>                ', '3211070311980003', 7, '2017-08-22', '2017-11-07'),
(13, 'Peraturan Desa', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla \r\n          \r\n\r\n                  ', '3211070311980003', 9, '2017-08-22', '2018-03-25'),
(14, 'Visi dan Misi Desa', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla \r\n          \r\n\r\n                  ', '3211070311980003', 8, '2017-08-22', '2018-03-25'),
(15, 'Potensi Desa', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ', '3211070311980003', 10, '2017-08-25', '2018-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `berita_kecamatan`
--

CREATE TABLE `berita_kecamatan` (
  `id_berita` int(11) NOT NULL,
  `judul` text NOT NULL,
  `link` text NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita_kecamatan`
--

INSERT INTO `berita_kecamatan` (`id_berita`, `judul`, `link`, `waktu`) VALUES
(1, 'Testing ke-1', 'http://domain.com', '2017-08-22'),
(2, 'Testing ke-2', 'http://domain.com', '2017-08-22'),
(3, 'Testing ke-3', 'http://domain.com', '2017-08-22'),
(4, 'Testing ke-4', 'http://domain.com', '2017-08-22'),
(5, 'Testing ke-5', 'http://domain.com', '2017-08-22'),
(6, 'Testing ke-6', 'http://domain.com', '2017-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `data_desa`
--

CREATE TABLE `data_desa` (
  `id_pengaturan` varchar(11) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `camat` varchar(20) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_desa`
--

INSERT INTO `data_desa` (`id_pengaturan`, `kecamatan`, `camat`, `kabupaten`, `provinsi`, `alamat`, `email`, `telp`) VALUES
('PENG001', 'Conggeang', '3211070311980003', 'Sumedang', 'Jawa Barat', 'Jalan Raya Conggeang-Buahdua', 'cgg@gmail.com', '082240643');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` text NOT NULL,
  `website` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nama_desa`, `website`) VALUES
(1, 'Karanglayung', 'http://localhost/desa');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_penduduk`
--

CREATE TABLE `dokumen_penduduk` (
  `id_dokumen` int(11) NOT NULL,
  `nama_dokumen` text NOT NULL,
  `id_jenis_dokumen` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokumen_penduduk`
--

INSERT INTO `dokumen_penduduk` (`id_dokumen`, `nama_dokumen`, `id_jenis_dokumen`, `nik`) VALUES
(8, 'PHOTO-05-09-2017-3211070311980003.jpg', 1, '3211070311980003');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_penduduk_temp`
--

CREATE TABLE `dokumen_penduduk_temp` (
  `id_dokumen_temp` int(11) NOT NULL,
  `nama_dokumen` text NOT NULL,
  `id_jenis_dokumen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dusun`
--

CREATE TABLE `dusun` (
  `id_dusun` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `nama_dusun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusun`
--

INSERT INTO `dusun` (`id_dusun`, `id_desa`, `nama_dusun`) VALUES
(1, 1, 'CIASEUM'),
(2, 1, 'CITEULA'),
(3, 1, 'CIKONDANG'),
(4, 1, 'CILADEG');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_foto`
--

CREATE TABLE `galeri_foto` (
  `id_galeri` int(11) NOT NULL,
  `foto` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri_foto`
--

INSERT INTO `galeri_foto` (`id_galeri`, `foto`, `deskripsi`, `tanggal`) VALUES
(18, 'ARSIP-GALERI-01-10-2017-11-41-06.jpg', 'Contoh Galeri : Gambar 1', '2017-10-01'),
(19, 'ARSIP-GALERI-01-10-2017-11-41-23.jpg', 'Contoh Galeri : Gambar 2', '2017-10-01'),
(20, 'ARSIP-GALERI-01-10-2017-11-41-30.jpg', 'Contoh Galeri : Gambar 3', '2017-10-01'),
(21, 'ARSIP-GALERI-01-10-2017-11-41-38.jpg', 'Contoh Galeri : Gambar 4', '2017-10-01'),
(22, 'ARSIP-GALERI-01-10-2017-11-41-46.jpg', 'Contoh Galeri : Gambar 5', '2017-10-01'),
(23, 'ARSIP-GALERI-01-10-2017-11-41-54.jpg', 'Contoh Galeri : Gambar 6', '2017-10-01'),
(24, 'ARSIP-GALERI-01-10-2017-11-42-02.jpg', 'Contoh Galeri : Gambar 7', '2017-10-01'),
(25, 'ARSIP-GALERI-01-10-2017-11-42-13.jpg', 'Contoh Galeri : Gambar 8', '2017-10-01'),
(26, 'ARSIP-GALERI-01-10-2017-11-42-27.jpg', 'Contoh Galeri : Gambar 9', '2017-10-01'),
(27, 'ARSIP-GALERI-01-10-2017-11-42-44.jpg', 'Contoh Galeri : Gambar 10', '2017-10-01'),
(28, 'ARSIP-GALERI-01-10-2017-11-42-57.jpg', 'Contoh Galeri : Gambar 11', '2017-10-01'),
(29, 'ARSIP-GALERI-01-10-2017-11-43-05.jpg', 'Contoh Galeri : Gambar 12', '2017-10-01'),
(30, 'ARSIP-GALERI-01-10-2017-07-28-14.jpg', 'cek cek cek', '2017-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'pengguna', '2017-07-27', '2017-07-27'),
(2, 'Camat', '2017-09-02', '2017-09-02'),
(3, 'Bendahara', '2017-09-03', '2017-09-03'),
(5, 'Sekertaris', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_dokumen`
--

CREATE TABLE `jenis_dokumen` (
  `id_jenis_dokumen` int(11) NOT NULL,
  `nama_jenis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_dokumen`
--

INSERT INTO `jenis_dokumen` (`id_jenis_dokumen`, `nama_jenis`) VALUES
(1, 'Foto'),
(2, 'Akta Kelahiran'),
(3, 'Kartu Keluarga'),
(4, 'Paspor'),
(5, 'Surat Nikah'),
(6, 'Dokumen Penting Lainnya'),
(7, 'KTP');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id_kategori` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id_kategori`, `kategori`) VALUES
(2, 'Umum'),
(3, 'Pemberitahuan'),
(4, 'Acara'),
(5, 'Olahraga'),
(6, 'Kebudayaan'),
(7, 'Sejarah'),
(8, 'Visi & Misi'),
(9, 'Peraturan'),
(10, 'Potensi Desa');

-- --------------------------------------------------------

--
-- Table structure for table `komentar_artikel`
--

CREATE TABLE `komentar_artikel` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar_artikel`
--

INSERT INTO `komentar_artikel` (`id_komentar`, `id_artikel`, `nik`, `komentar`, `tanggal`, `waktu`) VALUES
(1, 14, '3211070311980003', 'cek', '2017-11-06', '11:25:14'),
(2, 14, '3211070311980003', 'cek juga', '2017-11-06', '11:25:59'),
(3, 12, '3211070311980003', 'waw', '2018-03-25', '07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`) VALUES
(1, 'BELUM/TIDAK BEKERJA'),
(2, 'MENGURUS RUMAH TANGGA'),
(3, 'PELAJAR/MAHASISWA'),
(4, 'PENSIUNAN'),
(5, 'PEGAWAI NEGERI SIPIL (PNS)'),
(6, 'TENTARA NASIONAL INDONESIA (TNI)'),
(7, 'KEPOLISIAN RI (POLRI)'),
(8, 'PERDAGANGAN'),
(9, 'PETANI/PERKEBUNAN'),
(10, 'PETERNAK'),
(11, 'NELAYAN/PERIKANAN'),
(12, 'INDUSTRI'),
(13, 'KONSTRUKSI'),
(14, 'TRANSPORTASI'),
(15, 'KARYAWAN SWASTA'),
(16, 'KARYAWAN BUMN'),
(17, 'KARYAWAN BUMD'),
(18, 'KARYAWAN HONORER'),
(19, 'BURUH HARIAN LEPAS'),
(20, 'BURUH TANI/PERKEBUNAN'),
(21, 'BURUH NELAYAN/PERIKANAN'),
(22, 'BURUH PETERNAKAN'),
(23, 'PEMBANTU RUMAH TANGGA'),
(24, 'TUKANG CUKUR'),
(25, 'TUKANG LISTRIK'),
(26, 'TUKANG BATU'),
(27, 'TUKANG KAYU'),
(28, 'TUKANG SOL SEPATU'),
(29, 'TUKANG LAS/PANDAI BESI'),
(30, 'TUKANG JAHIT'),
(31, 'TUKANG GIGI'),
(32, 'PENATA RIAS'),
(33, 'PENATA BUSANA'),
(34, 'PENATA RAMBUT'),
(35, 'MEKANIK'),
(36, 'SENIMAN'),
(37, 'TABIB'),
(38, 'PARAJI'),
(39, 'PERANCANG BUSANA'),
(40, 'PENTERJEMAH'),
(41, 'IMAM MASJID'),
(42, 'PENDETA'),
(43, 'PASTOR'),
(44, 'WARTAWAN'),
(45, 'USTADZ/MUBALIGH'),
(46, 'JURU MASAK'),
(47, 'PROMOTOR ACARA'),
(48, 'ANGGOTA DPR-RI'),
(49, 'ANGGOTA DPD'),
(50, 'ANGGOTA BPK'),
(51, 'PRESIDEN'),
(52, 'WAKIL PRESIDEN'),
(53, 'ANGGOTA MAHKAMAH KONSTITUSI'),
(54, 'ANGGOTA KABINET KEMENTERIAN'),
(55, 'DUTA BESAR'),
(56, 'GUBERNUR'),
(57, 'WAKIL GUBERNUR'),
(58, 'BUPATI'),
(59, 'WAKIL BUPATI'),
(60, 'WALIKOTA'),
(61, 'WAKIL WALIKOTA'),
(62, 'ANGGOTA DPRD PROVINSI'),
(63, 'ANGGOTA DPRD KABUPATEN/KOTA'),
(64, 'DOSEN'),
(65, 'GURU'),
(66, 'PILOT'),
(67, 'PENGACARA'),
(68, 'NOTARIS'),
(69, 'ARSITEK'),
(70, 'AKUNTAN'),
(71, 'KONSULTAN'),
(72, 'DOKTER'),
(73, 'BIDAN'),
(74, 'PERAWAT'),
(75, 'APOTEKER'),
(76, 'PSIKIATER/PSIKOLOG'),
(77, 'PENYIAR TELEVISI'),
(78, 'PENYIAR RADIO'),
(79, 'PELAUT'),
(80, 'PENELITI'),
(81, 'SOPIR'),
(82, 'PIALANG'),
(83, 'PARANORMAL'),
(84, 'PEDAGANG'),
(85, 'PERANGKAT DESA'),
(86, 'KEPALA DESA'),
(87, 'BIARAWATI'),
(88, 'WIRASWASTA'),
(89, 'LAINNYA');

-- --------------------------------------------------------

--
-- Table structure for table `pemerintah_desa`
--

CREATE TABLE `pemerintah_desa` (
  `id_pemerintah` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `id_jabatan` varchar(11) NOT NULL,
  `foto` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemerintah_desa`
--

INSERT INTO `pemerintah_desa` (`id_pemerintah`, `nik`, `nip`, `id_jabatan`, `foto`, `status`) VALUES
(3, '3211070311980003', '3211070311980003', '2', '', ''),
(4, '3211070311980005', '65645637859759', '3', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan_skrng` int(11) NOT NULL,
  `nama_pendidikan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan_skrng`, `nama_pendidikan`) VALUES
(1, 'TIDAK / BELUM SEKOLAH'),
(2, 'BELUM TAMAT SD/SEDERAJAT'),
(3, 'TAMAT SD/SEDERAJAT'),
(4, 'SLTP/SEDERAJAT'),
(5, 'SLTA/SEDERAJAT'),
(6, 'DIPLOMA I / II'),
(7, 'AKADEMI/DIPLOMA III/S.MUDA'),
(8, 'DIPLOMA IV/STRATA 1'),
(10, 'STRATA 3');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `nik` varchar(20) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `akses` enum('user','admin') NOT NULL,
  `admin_type` enum('standar','super') NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`nik`, `pin`, `nama`, `akses`, `admin_type`, `created_at`, `updated_at`) VALUES
('14022', '87c527cac12268901c64a3f56902fe6b', 'Admin Account', 'admin', 'super', '2017-09-21', '2017-09-21'),
('3211', 'dfff02ee86f3e8fc332bf74eb0e64a6c', 'User Account', 'user', 'standar', '2017-09-21', '2017-09-21'),
('3211070311980003', 'c362c2abf0e4d1ed469ecb67b551cabd', 'dede fuji abdul', 'admin', 'super', '2017-07-27', '2017-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `favicon` text NOT NULL,
  `gambar_1` text NOT NULL,
  `teks_1` text NOT NULL,
  `blok_foto` enum('yes','no') NOT NULL,
  `blok_berita` enum('yes','no') NOT NULL,
  `blok_media` enum('yes','no') NOT NULL,
  `url_fb` text NOT NULL,
  `url_tw` text NOT NULL,
  `url_ig` text NOT NULL,
  `url_yt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `favicon`, `gambar_1`, `teks_1`, `blok_foto`, `blok_berita`, `blok_media`, `url_fb`, `url_tw`, `url_ig`, `url_yt`) VALUES
(1, 'favicon.ico', 'boxBrain.png', 'Meningkatkan efisiensi dan efektifitas pembagian sistem informasi desa dengan maju bersama teknologi.</br>  Mari tingkatkan kualitas dan kuantitas untuk negeri yang lebih maju dimasa yang akan datang.', 'yes', 'yes', 'yes', 'https://facebook.com/', 'https://twitter.com/', 'https://instagram.com/', 'https://youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `judul_surat` text NOT NULL,
  `isi_surat` text NOT NULL,
  `tanggal` date NOT NULL,
  `tindak_lanjut` enum('Tidak','Ya') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `nik`, `judul_surat`, `isi_surat`, `tanggal`, `tindak_lanjut`) VALUES
(1, '3211070311980003', 'Laporan Kegiatan', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ', '2017-08-22', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `nik` varchar(20) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `id_dusun` varchar(11) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` enum('ISLAM','KRISTEN','KATHOLIK','HINDU','BUDHA','KHONGHUCU','LAINNYA') NOT NULL,
  `id_pendidikan_skrng` int(11) NOT NULL,
  `id_pendidikan_berjalan` int(11) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `status_kawin` enum('BELUM KAWIN','KAWIN','CERAI HIDUP','CERAI MATI') NOT NULL,
  `hubungan_dlm_kluarga` enum('KEPALA KELUARGA','SUAMI','ISTRI','ANAK','MENANTU','CUCU','ORANG TUA','MAERTUA','KELUARGA LAIN','PEMBANTU','LAINNYA') NOT NULL,
  `warganegara` enum('WNI','WNA','DUA KEWARGANEGARAAN') NOT NULL,
  `darah` enum('A','B','AB','O','A+','A-','B+','B-','AB+','AB-','O+','O-','TIDAK TAHU') NOT NULL,
  `alamat_skrng` text NOT NULL,
  `alamat_sblmnya` text NOT NULL,
  `status` enum('TETAP','TIDAK AKTIF','PENDATANG') NOT NULL,
  `foto` text NOT NULL,
  `status_dasar` enum('HIDUP','MENINGGAL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`nik`, `no_kk`, `nama`, `telp`, `id_desa`, `id_dusun`, `rt`, `rw`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `id_pendidikan_skrng`, `id_pendidikan_berjalan`, `id_pekerjaan`, `status_kawin`, `hubungan_dlm_kluarga`, `warganegara`, `darah`, `alamat_skrng`, `alamat_sblmnya`, `status`, `foto`, `status_dasar`) VALUES
('3211070311980003', '3211070311980064', 'dede puji abdurrahman al-baihaqi', '082240643661', 1, '1', '001', '001', 'L', 'sumedang', '1998-11-03', 'ISLAM', 8, 8, 1, 'BELUM KAWIN', 'ANAK', 'WNI', 'O', '', '', 'TETAP', '', 'HIDUP'),
('3211070311980004', '3211070311980064', 'Saroji Al-Baihaqi', '082240643661', 1, '1', '001', '001', 'L', 'sumedang', '1998-11-03', 'ISLAM', 8, 8, 1, 'BELUM KAWIN', 'ANAK', 'WNI', 'O', '', '', 'TETAP', '', 'HIDUP'),
('3211070311980005', '3211070311980064', 'abdurrahman', '082240643661', 1, '1', '001', '001', 'L', 'sumedang', '1998-11-03', 'ISLAM', 8, 8, 1, 'BELUM KAWIN', 'ANAK', 'WNI', 'O', '', '', 'TETAP', '', 'HIDUP'),
('3211070311980006', '3211070311980064', 'Abu Hanafi', '082240643661', 1, '1', '001', '001', 'L', 'sumedang', '1998-11-03', 'ISLAM', 8, 8, 1, 'BELUM KAWIN', 'ANAK', 'WNI', 'O', '', '', 'TETAP', '', 'HIDUP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `username` (`nik`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `berita_kecamatan`
--
ALTER TABLE `berita_kecamatan`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `data_desa`
--
ALTER TABLE `data_desa`
  ADD PRIMARY KEY (`id_pengaturan`),
  ADD KEY `camat` (`camat`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `dokumen_penduduk`
--
ALTER TABLE `dokumen_penduduk`
  ADD PRIMARY KEY (`id_dokumen`),
  ADD KEY `id_jenis_dokumen` (`id_jenis_dokumen`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `dokumen_penduduk_temp`
--
ALTER TABLE `dokumen_penduduk_temp`
  ADD PRIMARY KEY (`id_dokumen_temp`);

--
-- Indexes for table `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`id_dusun`),
  ADD KEY `id_desa` (`id_desa`);

--
-- Indexes for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jenis_dokumen`
--
ALTER TABLE `jenis_dokumen`
  ADD PRIMARY KEY (`id_jenis_dokumen`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar_artikel`
--
ALTER TABLE `komentar_artikel`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_status` (`id_artikel`),
  ADD KEY `username` (`nik`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `pemerintah_desa`
--
ALTER TABLE `pemerintah_desa`
  ADD PRIMARY KEY (`id_pemerintah`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `nik` (`nik`),
  ADD KEY `nik_2` (`nik`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan_skrng`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`),
  ADD KEY `id_pendidikan_skrng` (`id_pendidikan_skrng`),
  ADD KEY `id_pendidikan_berjalan` (`id_pendidikan_berjalan`),
  ADD KEY `id_dusun` (`id_dusun`),
  ADD KEY `id_pekerjaan_2` (`id_pekerjaan`),
  ADD KEY `id_pekerjaan_3` (`id_pekerjaan`),
  ADD KEY `id_desa` (`id_desa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `berita_kecamatan`
--
ALTER TABLE `berita_kecamatan`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dokumen_penduduk`
--
ALTER TABLE `dokumen_penduduk`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `dokumen_penduduk_temp`
--
ALTER TABLE `dokumen_penduduk_temp`
  MODIFY `id_dokumen_temp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dusun`
--
ALTER TABLE `dusun`
  MODIFY `id_dusun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `galeri_foto`
--
ALTER TABLE `galeri_foto`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jenis_dokumen`
--
ALTER TABLE `jenis_dokumen`
  MODIFY `id_jenis_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `komentar_artikel`
--
ALTER TABLE `komentar_artikel`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `pemerintah_desa`
--
ALTER TABLE `pemerintah_desa`
  MODIFY `id_pemerintah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan_skrng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_3` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artikel_ibfk_4` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dokumen_penduduk`
--
ALTER TABLE `dokumen_penduduk`
  ADD CONSTRAINT `dokumen_penduduk_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `warga` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dokumen_penduduk_ibfk_2` FOREIGN KEY (`id_jenis_dokumen`) REFERENCES `jenis_dokumen` (`id_jenis_dokumen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentar_artikel`
--
ALTER TABLE `komentar_artikel`
  ADD CONSTRAINT `komentar_artikel_ibfk_3` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentar_artikel_ibfk_4` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id_artikel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `pengguna` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
