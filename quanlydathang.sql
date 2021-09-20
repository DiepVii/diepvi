-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 01:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlydathang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `SoDonDH` varchar(10) NOT NULL,
  `MSHH` varchar(255) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaDatHang` int(11) NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `TrangThai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoDonDH`, `MSHH`, `SoLuong`, `GiaDatHang`, `GiamGia`, `TrangThai`) VALUES
('18Bqt', 'HH8', 1, 1519000, 0, 0),
('1FYpL', 'HH26', 2, 3000000, 0, -1),
('nLx3t', 'HH3', 5, 5795000, 0, 2),
('obPwX', 'HH29', 1, 1500000, 0, 2),
('QWloE', 'HH30', 10, 500000, 0, 2),
('QX62A', 'HH35', 6, 900000, 0, 0),
('wauJG', 'HH1', 3, 1107000, 0, 2),
('YbQxE', 'HH24', 1, 1300000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `SoDonDH` varchar(10) NOT NULL,
  `MSKH` varchar(10) NOT NULL,
  `MSNV` varchar(255) NOT NULL,
  `NgayDH` varchar(255) NOT NULL,
  `NgayGH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`SoDonDH`, `MSKH`, `MSNV`, `NgayDH`, `NgayGH`) VALUES
('18Bqt', 'Tt3lf', 'NV1', '28-05-2021', '31-05-2021'),
('1FYpL', 'f2gDT', 'NV1', '28-05-2021', '31-05-2021'),
('nLx3t', 'jiBRv', 'NV1', '28-05-2021', '31-05-2021'),
('obPwX', 'iD7za', 'NV1', '28-05-2021', '31-05-2021'),
('QWloE', '9nm0h', 'NV1', '28-05-2021', '31-05-2021'),
('QX62A', 'TPd8u', 'NV1', '28-05-2021', '31-05-2021'),
('snOzE', 'zGxKV', 'NV1', '31-05-2021', '03-06-2021'),
('wauJG', 'rmGEg', 'NV1', '28-05-2021', '31-05-2021'),
('YbQxE', '2xTvZ', 'NV1', '28-05-2021', '31-05-2021');

-- --------------------------------------------------------

--
-- Table structure for table `diachikh`
--

CREATE TABLE `diachikh` (
  `MaDC` int(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `MSKH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diachikh`
--

INSERT INTO `diachikh` (`MaDC`, `DiaChi`, `MSKH`) VALUES
(300, 'Cần Thơ', 'jiBRv'),
(301, 'Mạc Thiên Tích', 'TPd8u'),
(302, 'Lý Tự Trọng', 'iD7za'),
(303, 'Sài Gòn', 'rmGEg'),
(304, 'Cần Thơ', 'f2gDT'),
(305, 'Cách Mạng Tháng Tám', '9nm0h'),
(306, 'Cà Mau', 'Tt3lf'),
(307, 'Sóc Trăng', '2xTvZ'),
(308, 'Đường 30 Tháng 4', 'zGxKV');

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MSHH` varchar(255) NOT NULL,
  `TenHH` varchar(255) NOT NULL,
  `QuyCach` varchar(1000) NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuongHang` int(11) NOT NULL DEFAULT 0,
  `MaLoaiHang` varchar(255) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `QuyCach`, `Gia`, `SoLuongHang`, `MaLoaiHang`, `GhiChu`, `HinhAnh`) VALUES
('HH1', 'Sweet Desire', 'Bó hoa pastel được gói theo phong cách Hàn Quốc, mang màu sắc rất trẻ trung và thanh lịch. .Sự kết hợp giữa Hoa hồng da, Cẩm tú cầu và hoa Cẩm chướng là một trong lựa chọn hoàn hảo cho ngày đặc biệt hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.', 369000, 47, 'LH1', 'Không Có', 'Bong9.jpeg'),
('HH10', 'Poetic Lover', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 540000, 50, 'LH2', 'Hop Hoa', 'hop2.jpeg'),
('HH11', 'Coral Pink', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 600000, 50, 'LH2', 'Hop Hoa', 'hop3.jpeg'),
('HH12', 'California Lover', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 740000, 49, 'LH2', 'Hop Hoa', 'hop4.jpeg'),
('HH13', 'Secret Garden', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 440000, 50, 'LH2', 'Hop Hoa', 'hop5.jpeg'),
('HH14', 'White Plum', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 440000, 50, 'LH2', 'Hop Hoa', 'hop6.jpeg'),
('HH15', 'Mid Summer', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 540000, 50, 'LH2', 'Hop Hoa', 'hop7.jpeg'),
('HH16', 'Endless Love', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 500000, 50, 'LH2', 'Hop Hoa', 'hop8.jpeg'),
('HH17', 'Sen Đá Chó Xám', 'Sen đá đựng trong chậu hình chó xám đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con1.jpeg'),
('HH18', 'Sen Đá Ngựa Vằn', 'Sen đá đựng trong chậu hình ngựa vằn đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con2.jpeg'),
('HH19', 'Sen Đá Cá Voi', 'Sen đá đựng trong chậu hình cá voi đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con3.jpeg'),
('HH2', 'Rose Land', 'Các loại hoa tông màu hồng pastel kết hợp với hộp hoa gỗ vinatge là món quà xinh xắn cho bất kỳ ai bạn yêu mến. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 300000, 46, 'LH1', 'Hang Hot', 'bong3.jpeg'),
('HH20', 'Sen Đá Cá Sấu', 'Sen đá đựng trong chậu hình cá sấu đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con4.jpeg'),
('HH21', 'Combo Love Letter', 'Combo Love Letter  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 950000, 50, 'LH4', 'Combo For Love', 'combo1.jpeg'),
('HH22', 'Combo Sparkling You', 'Combo Sparkling You  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 1000000, 50, 'LH4', 'Combo For Love', 'combo2.jpeg'),
('HH23', 'Combo Moon Shines', 'Combo Moon Shines  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 1600000, 50, 'LH4', 'Combo For Love', 'combo3.jpeg'),
('HH24', 'Combo My Crush', 'Combo My Crush  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 1300000, 50, 'LH4', 'Combo For Love', 'combo4.jpeg'),
('HH25', 'Square Of Joy', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa màu vàng và tông giấy xanh dịu mắt. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 3000000, 49, 'LH5', 'Kệ Hoa Yêu Thích', 'ke1.jpeg'),
('HH26', 'Jubilant', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 1500000, 48, 'LH5', 'Kệ Hoa Yêu Thích', 'ke2.jpeg'),
('HH27', 'Time To Cheer', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa màu vàng và tông giấy xanh dịu mắt. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 1300000, 50, 'LH5', 'Kệ Hoa Yêu Thích', 'ke3.jpeg'),
('HH28', 'Circle Of Happiness', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa tông màu hồng cam. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 1300000, 35, 'LH5', 'Kệ Hoa Yêu Thích', 'ke4.jpeg'),
('HH29', 'Hộp Quà Xinh Xắn', 'Hộp Quà Twinkle Night sẽ là món quà ý nghĩa và ấm áp đến người thương. Trời đã lạnh rồi, cùng Flowerstore gửi gắm yêu thương của bạn trọn vẹn đến người ấy nhé!', 1500000, 45, 'LH6', 'Quà Lưu Niệm', 'gift1.jpeg'),
('HH3', 'True Love (99 Bông)', 'Bó hoa sang trọng và lộng lẫy với 99 bông hoa Hồng đỏ rực rỡ là lựa chọn hoàn hảo gửi đến người thân yêu trong ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n', 1159000, 30, 'LH1', 'Hang Hot', 'bong4.jpeg'),
('HH30', 'Thiệp Apologize', 'Thiệp với câu xin lỗi in sẵn I Apologize For My Bat Behavior cùng chú dơi đáng yêu để bạn gửi thêm lời nhắn vào món quà của mình.', 50000, 40, 'LH6', 'Quà Lưu Niệm', 'gift2.jpeg'),
('HH31', 'Ly Sứ Cừu', 'Ly Sứ Cao Cấp Cừu Đáng Yêu được làm từ chất liệu sứ cao cấp, ưu điểm có bề mặt mịn màng và chịu được va đập nhẹ. Trời đã lạnh rồi, cùng Flowerstore gửi gắm yêu thương của bạn trọn vẹn đến người ấy nhé!', 120000, 50, 'LH6', 'Quà Lưu Niệm', 'gift3.jpeg'),
('HH32', 'Hộp Quà May Mắn', 'Hộp Quà Twinkle Night sẽ là món quà ý nghĩa và ấm áp đến người thương. Trời đã lạnh rồi, cùng Flowerstore gửi gắm yêu thương của bạn trọn vẹn đến người ấy nhé!', 1300000, 50, 'LH6', 'Quà Lưu Niệm', 'gift4.jpeg'),
('HH34', 'Sen Đá Hà Mã', 'Sen đá đựng trong chậu hình hà mã xanh đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con5.jpeg'),
('HH35', 'Sen Đá Chó Bull', 'Sen đá đựng trong chậu hình chó Bull đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 44, 'LH3', 'Không Có', 'con6.jpeg'),
('HH36', 'Sen Đá Cún Vàng', 'Sen đá đựng trong chậu hình cún vàng đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con7.jpeg'),
('HH37', 'Sen Đá Gấu Trắng', 'Sen đá đựng trong chậu hình gấu trắng đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con8.jpeg'),
('HH4', 'Sweet Velvet', 'Bó hoa sang trọng và thanh khiết với hoa Hồng đỏ được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 450000, 50, 'LH1', 'Hang Hot', 'bong1.jpeg'),
('HH5', 'Madly For Love', 'Bó hoa sang trọng và thanh khiết với hoa Hồng đỏ được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 250000, 50, 'LH1', 'Hang Hot', 'bong5.jpeg'),
('HH6', 'ChoCo Bery', 'Nằm trong Bộ sưu tập Chào đón Giáng Sinh, bó hoa Choco Berry sẽ thay lời yêu nồng nàn của bạn đến người thương.  ', 500000, 50, 'LH1', 'Hang Hot', 'bong6.jpeg'),
('HH7', 'Combo Blue Heaven', 'Lựa chọn hoàn hảo dành cho người bạn yêu thương với toàn điều ngọt ngào, đáng yêu. Sẵn sàng đốn tim người nhận chưa? ', 659000, 50, 'LH1', 'Hang Hot', 'bong7.jpeg'),
('HH8', 'Love Nest (99 Bông)', 'Chiếc tổ uyên ương ngọt ngào lãng mạn là món quà làm ai cũng cảm thấy mình thật đặc biệt trong tim đối phương!  ', 1519000, 49, 'LH1', 'Hang Hot', 'bong8.jpeg'),
('HH9', 'Rosie Lover', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 540000, 50, 'LH2', 'Hop Hoa', 'hop1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MSKH` varchar(10) NOT NULL,
  `HoTenKH` varchar(255) NOT NULL,
  `TenCongTy` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `TenCongTy`, `SoDienThoai`, `Email`) VALUES
('2xTvZ', 'Ngô Quốc Sự', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('9nm0h', 'Đỗ Chí Tâm', '1 thành viên', '0122786889', 'diepdoandanvi@gmail.com'),
('f2gDT', 'Hiển', '1 thành viên', '0122786889', '123@gmail.com'),
('iD7za', 'Toại', '1 thành viên', '0122786889', 'diepdoandanvi@gmail.com'),
('jiBRv', 'Diep Vi', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('rmGEg', 'Đức', '1 thành viên', '0122786889', 'nqk.endless@gmail.com'),
('TPd8u', 'Khải', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('Tt3lf', 'Tuấn', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('zGxKV', 'Thúy An', '1 thành viên', '0962750217', 'an123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loaihanghoa`
--

CREATE TABLE `loaihanghoa` (
  `MaLoaiHang` varchar(255) NOT NULL,
  `TenLoaiHang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaihanghoa`
--

INSERT INTO `loaihanghoa` (`MaLoaiHang`, `TenLoaiHang`) VALUES
('LH1', 'Bán Chạy Nhất'),
('LH2', 'Hộp Hoa'),
('LH3', 'Cây Để Bàn'),
('LH4', 'Combo For love'),
('LH5', 'Kệ Hoa Yêu Thích'),
('LH6', 'Quà Lưu Niệm');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MSNV` varchar(255) NOT NULL,
  `HoTenNV` varchar(255) NOT NULL,
  `ChucVu` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MSNV`, `HoTenNV`, `ChucVu`, `DiaChi`, `SoDienThoai`) VALUES
('NV1', 'Nguyễn Quốc Khải', 'Lao Công', 'Mạc Thiên Tích', '0962750217'),
('NV2', 'Lê Hoàng Đức', 'CEO', 'Mạc Thiên Tích', '0122786889'),
('NV3', 'Đỗ Chí Tâm', 'Nhân Sự', 'Tp. Hồ Chí Minh', '0789456123'),
('NV4', 'Ngô Quốc Sự', 'Xe Ôm', 'Lý Tự Trọng', '0122786889');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`SoDonDH`,`MSHH`),
  ADD KEY `f8` (`MSHH`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`SoDonDH`),
  ADD KEY `f3` (`MSKH`),
  ADD KEY `f4` (`MSNV`);

--
-- Indexes for table `diachikh`
--
ALTER TABLE `diachikh`
  ADD PRIMARY KEY (`MaDC`),
  ADD KEY `f2` (`MSKH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`),
  ADD KEY `f1` (`MaLoaiHang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`);

--
-- Indexes for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MSNV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diachikh`
--
ALTER TABLE `diachikh`
  MODIFY `MaDC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `f8` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`),
  ADD CONSTRAINT `fffffff` FOREIGN KEY (`SoDonDH`) REFERENCES `dathang` (`SoDonDH`);

--
-- Constraints for table `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `f4` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`),
  ADD CONSTRAINT `ff1` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Constraints for table `diachikh`
--
ALTER TABLE `diachikh`
  ADD CONSTRAINT `ffff` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `f1` FOREIGN KEY (`MaLoaiHang`) REFERENCES `loaihanghoa` (`MaLoaiHang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
