-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2024 pada 02.42
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_ml_yanuar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `spell` varchar(255) NOT NULL,
  `harga_bp` varchar(255) NOT NULL,
  `harga_dm` varchar(255) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `nama`, `role`, `tipe`, `spell`, `harga_bp`, `harga_dm`, `deskripsi`) VALUES
(4, 'gatotkaca', 'fighter/tank', 'petarunx', 'vengeance', '32000', '499', 'wayang legendaris yang berasal dari indonesia'),
(5, 'Lancelot', 'Assasin', 'Jarak Dekat', 'Retribution', '32000', '599', 'Seorang Pangeran'),
(6, 'Badang', 'Fighter', 'Petarunx', 'Flicker', '32000', '599', 'Laki-laki Kuat'),
(7, 'Bane', 'Fighter', 'Jarak Dekat', 'Retribution', '6500', '254', 'Siluman Gurita'),
(8, 'Beatrix', 'Marksman', 'Jarak Jauh', 'Flicker', '32000', '599', 'Penembak yang sangat Jago');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
