-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2020 pada 15.25
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nolpb` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `operator` varchar(100) NOT NULL,
  `satuan` enum('kilogram','meter') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `suratjalan` varchar(20) NOT NULL,
  `nolpb` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `satuan` enum('kilogram','meter') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id`, `kode_barang`, `nama`, `suratjalan`, `nolpb`, `harga`, `pengirim`, `penerima`, `tanggal`, `satuan`) VALUES
(87, 'BRG002', 'KERTAS', '00022BR-22', '17000272100/7821', '150.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-11-27', 'kilogram'),
(90, 'BRG006', 'Kabel', '00001BR-0', '17000272100/001', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-01', 'meter'),
(91, 'BRG006', 'Kabel', '00001BR-0', '17000272100/001', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-01', 'meter'),
(92, 'BRG007', 'Kardus', '00010BR-201', '17000272100/201', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-06', 'kilogram'),
(93, 'BRG004', 'Paper Mill', '000120BR-02', '17000006423/6721', '100.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-10', 'kilogram');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `suratjalan` varchar(20) NOT NULL,
  `nolpb` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `satuan` enum('kilogram','meter') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`id`, `kode_barang`, `nama`, `suratjalan`, `nolpb`, `harga`, `pengirim`, `penerima`, `tanggal`, `satuan`) VALUES
(82, 'BRG002', 'KERTAS', '00022BR-22', '17000272100/7821', '150.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-11-27', 'kilogram'),
(83, 'BRG006', 'Kabel', '00001BR-0', '17000272100/001', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-01', 'meter'),
(84, 'BRG006', 'Kabel', '00001BR-0', '17000272100/001', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-01', 'meter'),
(85, 'BRG006', 'Kabel', '00001BR-0', '17000272100/001', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-01', 'meter'),
(86, 'BRG006', 'Kabel', '00001BR-0', '17000272100/001', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-01', 'meter'),
(87, 'BRG007', 'Kardus', '00010BR-201', '17000272100/201', '50.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-06', 'kilogram'),
(88, 'BRG004', 'Paper Mill', '000120BR-02', '17000006423/6721', '100.000', 'PT. Padalarang', 'PT Pura Nusa Persada', '2020-12-10', 'kilogram');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang_supplier`
--

CREATE TABLE `gudang_supplier` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `satuan` enum('kilogram','meter') NOT NULL,
  `tersedia` enum('yes','no') NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gudang_supplier`
--

INSERT INTO `gudang_supplier` (`id`, `kode_barang`, `nama`, `harga`, `satuan`, `tersedia`, `jumlah`) VALUES
(1, 'BRG001', 'Foil', '200.000', 'meter', 'yes', 20),
(2, 'BRG002', 'Kertas', '250.000', 'kilogram', 'yes', 20),
(3, 'BRG003', 'Coat', '150.000', 'meter', 'yes', 20),
(5, 'BRG005', 'Hologram', '300.000', 'meter', 'yes', 20),
(6, 'BRG006', 'Kabel', '50.000', 'meter', 'yes', 20),
(7, 'BRG007', 'Kardus', '50.000', 'kilogram', 'yes', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(100) NOT NULL,
  `id` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nama_karyawan` varchar(100) CHARACTER SET latin1 NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') CHARACTER SET latin1 NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `id`, `nama_karyawan`, `jenis_kelamin`, `address`) VALUES
(1, '100937', 'helmi', 'laki-laki', 'pemalang'),
(2, '13720', 'rafif', 'laki-laki', 'semarang'),
(3, '109200', 'sasa', 'perempuan', 'kabunan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `latihan_autofill`
--

CREATE TABLE `latihan_autofill` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jeniskelamin` enum('laki-laki','perempuan') NOT NULL,
  `satuan` enum('meter','kilogram') NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `nolpb` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `harga` varchar(20) CHARACTER SET latin1 NOT NULL,
  `supplier` enum('PT. Padalarang') NOT NULL,
  `SJ_extern` varchar(20) CHARACTER SET latin1 NOT NULL,
  `SJ_intern` varchar(11) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `latihan_autofill`
--

INSERT INTO `latihan_autofill` (`nim`, `nama`, `jeniskelamin`, `satuan`, `penerima`, `nolpb`, `alamat`, `harga`, `supplier`, `SJ_extern`, `SJ_intern`) VALUES
('BRG001', 'FOIL', 'laki-laki', 'meter', 'PT Pura Nusa Persada', '17000006423/6361', 'pemalang', '100.000', 'PT. Padalarang', '00010BR-10', 'SJI2000131'),
('BRG002', 'KERTAS', 'laki-laki', 'kilogram', 'PT Pura Nusa Persada', '17000272100/7821', 'PT PURA NUSA PERSADA', '150.000', 'PT. Padalarang', '00022BR-22', 'SJI3000221'),
('BRG003', 'COAT', 'laki-laki', 'meter', 'PT Pura Nusa Persada', '17000006422/1431/R', 'PT PURA NUSA PERSADA', '250.000', 'PT. Padalarang', '00011BR-11', 'SJI2000112'),
('BRG004', 'Paper Mill', 'laki-laki', 'kilogram', 'PT Pura Nusa Persada', '17000006423/6721', 'Kudus', '100.000', 'PT. Padalarang', '000120BR-02', 'SJI2000200'),
('BRG005', 'Hologram', 'perempuan', 'kilogram', 'PT Pura Nusa Persada', '17000006422/SR18/R', 'Kudus', '300.000', 'PT. Padalarang', '00002BR-200', 'SJI000909'),
('BRG006', 'Kabel', 'laki-laki', 'meter', 'PT Pura Nusa Persada', '17000272100/001', 'Kudus', '50.000', 'PT. Padalarang', '00001BR-0', 'SJI200001'),
('BRG007', 'Kardus', 'laki-laki', 'kilogram', 'PT Pura Nusa Persada', '17000272100/201', 'Pemalang', '50.000', 'PT. Padalarang', '00010BR-201', 'SJI2000201');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` varchar(10) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`) VALUES
('100001', 'azam', 'bandelan'),
('100002', 'helmi', 'taman'),
('100003', 'slamet', 'wanarejan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan`
--

CREATE TABLE `permintaan` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `suratjalan` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `satuan` enum('kilogram','meter') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiladmin`
--

CREATE TABLE `profiladmin` (
  `id` int(10) NOT NULL,
  `id_pgw` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_member` varchar(10) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_pgw` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','Kepala','Supplier') DEFAULT 'Kepala'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `id_pgw`, `nama`, `alamat`, `telepon`, `username`, `password`, `level`) VALUES
(1, '001', 'Admin', 'pemalang', '1500-102', 'Admin', 'Admin', 'admin'),
(6, '003', 'supplier', 'pati', '0919388002837', 'supplier', 'supplier', 'Supplier'),
(7, '002', 'kepala', 'kudus, Jawa tengah', '08523475875', 'kepala', 'kepala', 'Kepala');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gudang_supplier`
--
ALTER TABLE `gudang_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `latihan_autofill`
--
ALTER TABLE `latihan_autofill`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiladmin`
--
ALTER TABLE `profiladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `gudang`
--
ALTER TABLE `gudang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `gudang_supplier`
--
ALTER TABLE `gudang_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `profiladmin`
--
ALTER TABLE `profiladmin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
