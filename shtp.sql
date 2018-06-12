-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 05:09 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shtp`
--

-- --------------------------------------------------------

--
-- Table structure for table `congty`
--

CREATE TABLE `congty` (
  `MaCty` int(11) NOT NULL,
  `TenTV` varchar(500) DEFAULT NULL,
  `TenTA` varchar(500) DEFAULT NULL,
  `TenVietTat` varchar(50) DEFAULT NULL,
  `DuAnDauTu` varchar(500) DEFAULT NULL,
  `DienTichSuDung` varchar(50) DEFAULT NULL,
  `TongVonDauTu` varchar(50) DEFAULT NULL,
  `ThoiGianHoatDong` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL,
  `LoSuDung` varchar(50) DEFAULT NULL,
  `SanPham` varchar(500) DEFAULT NULL,
  `LaoDong` varchar(500) DEFAULT NULL,
  `HoatDongRD` varchar(500) DEFAULT NULL,
  `DaoTao` varchar(500) DEFAULT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `congty`
--

INSERT INTO `congty` (`MaCty`, `TenTV`, `TenTA`, `TenVietTat`, `DuAnDauTu`, `DienTichSuDung`, `TongVonDauTu`, `ThoiGianHoatDong`, `DiaChi`, `LoSuDung`, `SanPham`, `LaoDong`, `HoatDongRD`, `DaoTao`, `HinhAnh`) VALUES
(1, 'Công ty cổ phần công nghệ sinh học Nanogen', 'NANOGEN PHARMACEUTICAL', 'NANOGEN CO.,LTD\r\n', 'Sản xuất dược phẩm NANOGEN; Trung tâm nghiên cứu, sản xuất thử nghiệm,  chuyển giao công nghệ dược phẩm công nghệ sinh học.\r\n ', '1.5ha và 2.4 ha\r\n', '500 tỷ VNĐ\r\n', 'Từ 2006', 'Lô I-5C Khu Công nghệ Cao,Q.9, Tp. HCM', NULL, 'Sản phẩm công nghệ sinh học\r\n', 'Tổng số lao động của doanh nghiệp là 190 người, trong đó 24.7% lao động tham gia hoạt động R&D\r\n', 'Sản xuất dược phẩm Nanogen, dòng sản phẩm thuốc đặc trị các bệnh như viêm gan siêu vi, cúm, bệnh thiếu máu do suy thận…\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lodat`
--

CREATE TABLE `lodat` (
  `MaLo_So` int(11) NOT NULL,
  `MaLo_Chu` varchar(2) NOT NULL,
  `SoHieuLo` int(11) DEFAULT NULL,
  `TrangThai` enum('Có','Không') DEFAULT NULL,
  `LoaiPhanKhu` varchar(500) DEFAULT NULL,
  `MaCty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lodat`
--

INSERT INTO `lodat` (`MaLo_So`, `MaLo_Chu`, `SoHieuLo`, `TrangThai`, `LoaiPhanKhu`, `MaCty`) VALUES
(11, 'A', 112, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(500) NOT NULL,
  `Password` varbinary(500) DEFAULT NULL,
  `LoaiUser` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `HoTen` varchar(500) DEFAULT NULL,
  `SDT` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`MaCty`);

--
-- Indexes for table `lodat`
--
ALTER TABLE `lodat`
  ADD PRIMARY KEY (`MaLo_So`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `congty`
--
ALTER TABLE `congty`
  MODIFY `MaCty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
