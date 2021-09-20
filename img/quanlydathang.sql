-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2021 lúc 06:09 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlydathang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdathang`
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
-- Đang đổ dữ liệu cho bảng `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoDonDH`, `MSHH`, `SoLuong`, `GiaDatHang`, `GiamGia`, `TrangThai`) VALUES
('1l4bv', 'HH37', 5, 750000, 0, 0),
('9aerg', 'HH9', 2, 1080000, 0, 2),
('bKXlS', 'HH25', 1, 3000000, 0, 0),
('dcx4X', 'HH17', 6, 900000, 0, 0),
('Q1Wfa', 'HH29', 3, 4500000, 0, 0),
('t83DL', 'HH33', 5, 1000000, 0, 2),
('X3fyj', 'HH2', 4, 1200000, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `SoDonDH` varchar(10) NOT NULL,
  `MSKH` varchar(10) NOT NULL,
  `MSNV` varchar(255) NOT NULL,
  `NgayDH` varchar(255) NOT NULL,
  `NgayGH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dathang`
--

INSERT INTO `dathang` (`SoDonDH`, `MSKH`, `MSNV`, `NgayDH`, `NgayGH`) VALUES
('1l4bv', 'ZJJa7', 'NV1', '16-05-2021', '19-05-2021'),
('9aerg', 'UAaD6', 'NV1', '15-05-2021', '18-05-2021'),
('bKXlS', 'RQxPe', 'NV1', '15-05-2021', '18-05-2021'),
('dcx4X', 'agPnV', 'NV1', '15-05-2021', '18-05-2021'),
('Q1Wfa', 'vlqJu', 'NV1', '15-05-2021', '18-05-2021'),
('t83DL', 'qo8IR', 'NV1', '15-05-2021', '18-05-2021'),
('X3fyj', 'KCMkt', 'NV1', '16-05-2021', '19-05-2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachikh`
--

CREATE TABLE `diachikh` (
  `MaDC` int(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `MSKH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `diachikh`
--

INSERT INTO `diachikh` (`MaDC`, `DiaChi`, `MSKH`) VALUES
(287, '55', 'qo8IR'),
(288, '55', 'RQxPe'),
(289, '55', 'agPnV'),
(290, 'Cần Thơ', 'UAaD6'),
(291, 'Cần Thơ', 'vlqJu'),
(292, 'Lý Tự Trọng', 'KCMkt'),
(293, 'Sài Gòn', 'ZJJa7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
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
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `QuyCach`, `Gia`, `SoLuongHang`, `MaLoaiHang`, `GhiChu`, `HinhAnh`) VALUES
('HH1', 'Sweet Desire', 'Bó hoa pastel được gói theo phong cách Hàn Quốc, mang màu sắc rất trẻ trung và thanh lịch. .Sự kết hợp giữa Hoa hồng da, Cẩm tú cầu và hoa Cẩm chướng là một trong lựa chọn hoàn hảo cho ngày đặc biệt hoặc bất kỳ dịp nào để dành tặng cho người mình yêu thương.', 369000, 50, 'LH1', 'Không Có', 'Bông9.jpeg'),
('HH10', 'Poetic Lover', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 540000, 50, 'LH2', 'Hop Hoa', 'hop2.jpeg'),
('HH11', 'Coral Pink', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 600000, 50, 'LH2', 'Hop Hoa', 'hop3.jpeg'),
('HH12', 'California Lover', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 740000, 50, 'LH2', 'Hop Hoa', 'hop4.jpeg'),
('HH13', 'Secret Garden', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 440000, 50, 'LH2', 'Hop Hoa', 'hop5.jpeg'),
('HH14', 'White Plum', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 440000, 50, 'LH2', 'Hop Hoa', 'hop6.jpeg'),
('HH15', 'Mid Summer', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 540000, 50, 'LH2', 'Hop Hoa', 'hop7.jpeg'),
('HH16', 'Endless Love', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 500000, 50, 'LH2', 'Hop Hoa', 'hop8.jpeg'),
('HH17', 'Sen Đá Chó Xám', 'Sen đá đựng trong chậu hình chó xám đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con1.jpeg'),
('HH18', 'Sen Đá Ngựa Vằn', 'Sen đá đựng trong chậu hình ngựa vằn đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con2.jpeg'),
('HH19', 'Sen Đá Cá Voi', 'Sen đá đựng trong chậu hình cá voi đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con3.jpeg'),
('HH2', 'Rose Land', 'Các loại hoa tông màu hồng pastel kết hợp với hộp hoa gỗ vinatge là món quà xinh xắn cho bất kỳ ai bạn yêu mến. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 300000, 46, 'LH1', 'Hang Hot', 'bông3.jpeg'),
('HH20', 'Sen Đá Cá Sấu', 'Sen đá đựng trong chậu hình cá sấu đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Cay De Ban', 'con4.jpeg'),
('HH21', 'Combo Love Letter', 'Combo Love Letter  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 950000, 50, 'LH4', 'Combo For Love', 'combo1.jpeg'),
('HH22', 'Combo Sparkling You', 'Combo Sparkling You  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 1000000, 50, 'LH4', 'Combo For Love', 'combo2.jpeg'),
('HH23', 'Combo Moon Shines', 'Combo Moon Shines  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 1600000, 50, 'LH4', 'Combo For Love', 'combo3.jpeg'),
('HH24', 'Combo My Crush', 'Combo My Crush  sẽ thay lời yêu ngọt ngào của bạn đến nàng. Nàng sẽ thích sự tinh tế này lắm đó! Cùng khiến nàng tỏa sáng bạn nhé.', 1300000, 50, 'LH4', 'Combo For Love', 'combo4.jpeg'),
('HH25', 'Square Of Joy', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa màu vàng và tông giấy xanh dịu mắt. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 3000000, 50, 'LH5', 'Kệ Hoa Yêu Thích', 'ke1.jpeg'),
('HH26', 'Jubilant', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của nhiều loại hoa. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 1500000, 50, 'LH5', 'Kệ Hoa Yêu Thích', 'ke2.jpeg'),
('HH27', 'Time To Cheer', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa màu vàng và tông giấy xanh dịu mắt. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 1300000, 50, 'LH5', 'Kệ Hoa Yêu Thích', 'ke3.jpeg'),
('HH28', 'Circle Of Happiness', 'Kệ hoa to, tươi tắn và sang trọng với sự kết hợp của các loại hoa tông màu hồng cam. Đây sẽ là món quà tặng đầy ý nghĩa thay cho lời chúc mừng trong dịp khai trương hoặc các ngày lễ trọng đại. ', 1300000, 50, 'LH5', 'Kệ Hoa Yêu Thích', 'ke4.jpeg'),
('HH29', 'Hộp Quà Xinh Xắn', 'Hộp Quà Twinkle Night sẽ là món quà ý nghĩa và ấm áp đến người thương. Trời đã lạnh rồi, cùng Flowerstore gửi gắm yêu thương của bạn trọn vẹn đến người ấy nhé!', 1500000, 50, 'LH6', 'Quà Lưu Niệm', 'gift1.jpeg'),
('HH3', 'True Love (99 Bông)', 'Bó hoa sang trọng và lộng lẫy với 99 bông hoa Hồng đỏ rực rỡ là lựa chọn hoàn hảo gửi đến người thân yêu trong ngày Valentine hoặc bất kỳ dịp đặc biệt nào.\r\n', 1159000, 50, 'LH1', 'Hang Hot', 'bông4.jpeg'),
('HH30', 'Thiệp Apologize', 'Thiệp với câu xin lỗi in sẵn I Apologize For My Bat Behavior cùng chú dơi đáng yêu để bạn gửi thêm lời nhắn vào món quà của mình.', 50000, 50, 'LH6', 'Quà Lưu Niệm', 'gift2.jpeg'),
('HH31', 'Ly Sứ Cừu', 'Ly Sứ Cao Cấp Cừu Đáng Yêu được làm từ chất liệu sứ cao cấp, ưu điểm có bề mặt mịn màng và chịu được va đập nhẹ. Trời đã lạnh rồi, cùng Flowerstore gửi gắm yêu thương của bạn trọn vẹn đến người ấy nhé!', 120000, 50, 'LH6', 'Quà Lưu Niệm', 'gift3.jpeg'),
('HH32', 'Hộp Quà May Mắn', 'Hộp Quà Twinkle Night sẽ là món quà ý nghĩa và ấm áp đến người thương. Trời đã lạnh rồi, cùng Flowerstore gửi gắm yêu thương của bạn trọn vẹn đến người ấy nhé!', 1300000, 50, 'LH6', 'Quà Lưu Niệm', 'gift4.jpeg'),
('HH33', 'Bánh Kem Sinh Nhật', 'Hãy dành chiếc bánh đáng yêu này cho người bạn yêu quý nhất nhé.', 300000, 20, 'LH6', 'Không Có', 'duc.jpeg'),
('HH34', 'Sen Đá Hà Mã', 'Sen đá đựng trong chậu hình hà mã xanh đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con5.jpeg'),
('HH35', 'Sen Đá Chó Bull', 'Sen đá đựng trong chậu hình chó Bull đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con6.jpeg'),
('HH36', 'Sen Đá Cún Vàng', 'Sen đá đựng trong chậu hình cún vàng đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con7.jpeg'),
('HH37', 'Sen Đá Gấu Trắng', 'Sen đá đựng trong chậu hình gấu trắng đáng yêu là món quà hoàn hảo dành tặng cho người bạn thân, đồng nghiệp, gia đình hay trang trí văn phòng, nhà ở. ', 150000, 50, 'LH3', 'Không Có', 'con8.jpeg'),
('HH4', 'Sweet Velvet', 'Bó hoa sang trọng và thanh khiết với hoa Hồng đỏ được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 450000, 50, 'LH1', 'Hang Hot', 'bông1.jpeg'),
('HH5', 'Madly For Love', 'Bó hoa sang trọng và thanh khiết với hoa Hồng đỏ được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 250000, 50, 'LH1', 'Hang Hot', 'bông5.jpeg'),
('HH6', 'ChoCo Bery', 'Nằm trong Bộ sưu tập Chào đón Giáng Sinh, bó hoa Choco Berry sẽ thay lời yêu nồng nàn của bạn đến người thương.  ', 500000, 50, 'LH1', 'Hang Hot', 'bông6.jpeg'),
('HH7', 'Combo Blue Heaven', 'Lựa chọn hoàn hảo dành cho người bạn yêu thương với toàn điều ngọt ngào, đáng yêu. Sẵn sàng đốn tim người nhận chưa? ', 659000, 50, 'LH1', 'Hang Hot', 'bông7.jpeg'),
('HH8', 'Love Nest (99 Bông)', 'Chiếc tổ uyên ương ngọt ngào lãng mạn là món quà làm ai cũng cảm thấy mình thật đặc biệt trong tim đối phương!  ', 1519000, 50, 'LH1', 'Hang Hot', 'bông8.jpeg'),
('HH9', 'Rosie Lover', 'Hộp hoa sang trọng và thanh khiết với các loại hoa Hồng được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè. ', 540000, 50, 'LH2', 'Hop Hoa', 'hop1.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MSKH` varchar(10) NOT NULL,
  `HoTenKH` varchar(255) NOT NULL,
  `TenCongTy` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `TenCongTy`, `SoDienThoai`, `Email`) VALUES
('agPnV', 'Đức', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('KCMkt', 'Ngô Quốc Sự', '2 Thành Viên', '0122786889', 'su@gmail.com'),
('qo8IR', 'Diep Vi', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('RQxPe', 'KHải', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('UAaD6', 'Hiển', '1 thành viên', '0122786889', 'diepvi2000@gmail.com'),
('vlqJu', 'Tuấn', '1 thành viên', '0122786889', '123@gmail.com'),
('ZJJa7', 'Tâm', '1 thành viên', '0122786889', 'diepvi2000@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihanghoa`
--

CREATE TABLE `loaihanghoa` (
  `MaLoaiHang` varchar(255) NOT NULL,
  `TenLoaiHang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaihanghoa`
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
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MSNV` varchar(255) NOT NULL,
  `HoTenNV` varchar(255) NOT NULL,
  `ChucVu` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MSNV`, `HoTenNV`, `ChucVu`, `DiaChi`, `SoDienThoai`) VALUES
('NV1', 'Nguyễn Quốc Khải', 'Lao Công', 'Mạc Thiên Tích', '0962750217'),
('NV2', 'Lê Hoàng Đức', 'CEO', 'Mạc Thiên Tích', '0122786889'),
('NV3', 'Đỗ Chí Tâm', 'Nhân Sự', 'Tp. Hồ Chí Minh', '0789456123'),
('NV4', 'Ngô Quốc Sự', 'Xe Ôm', 'Lý Tự Trọng', '0122786889');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`SoDonDH`,`MSHH`),
  ADD KEY `f8` (`MSHH`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`SoDonDH`),
  ADD KEY `f3` (`MSKH`),
  ADD KEY `f4` (`MSNV`);

--
-- Chỉ mục cho bảng `diachikh`
--
ALTER TABLE `diachikh`
  ADD PRIMARY KEY (`MaDC`),
  ADD KEY `f2` (`MSKH`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`),
  ADD KEY `f1` (`MaLoaiHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`);

--
-- Chỉ mục cho bảng `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MSNV`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `diachikh`
--
ALTER TABLE `diachikh`
  MODIFY `MaDC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `f8` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`),
  ADD CONSTRAINT `fffffff` FOREIGN KEY (`SoDonDH`) REFERENCES `dathang` (`SoDonDH`);

--
-- Các ràng buộc cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `f4` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`),
  ADD CONSTRAINT `ff1` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Các ràng buộc cho bảng `diachikh`
--
ALTER TABLE `diachikh`
  ADD CONSTRAINT `ffff` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Các ràng buộc cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `f1` FOREIGN KEY (`MaLoaiHang`) REFERENCES `loaihanghoa` (`MaLoaiHang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
