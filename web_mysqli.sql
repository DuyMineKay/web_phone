-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2021 lúc 02:01 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(4, 'admin', 'dd4b21e9ef71e1291183a46b913ae6f2', 1),
(6, 'duydmk1', 'dd4b21e9ef71e1291183a46b913ae6f2', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(1, 11, '4740', 0),
(2, 11, '3283', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(1, '4740', 33, 1),
(2, '4740', 31, 1),
(3, '4740', 28, 1),
(4, '3283', 27, 1),
(5, '3283', 21, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(9, 'Duy Trần', 'duyb1812790@student.ctu.edu.vn', 'Hòa  An, Phụng Hiệp, Hậu Giang', 'dd4b21e9ef71e1291183a46b913ae6f2', '0364828251'),
(11, 'Duy ', 'avc@gmail.com', 'iuhnoikj', 'dd4b21e9ef71e1291183a46b913ae6f2', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(8, 'ĐIỆN THOẠI', 1),
(11, 'PHỤ KIỆN', 2),
(12, 'ỐP LƯNG', 3),
(13, 'TAI NGHE', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(14, 'iPhone 11 Pro Max 64GB', '001', '29990000', 50, '1620418696_iphone11.jpg', 'Màn hình:	OLED, 6.5\", Super Retina XDR\r\nHệ điều hành:	iOS 14\r\nCamera sau:	3 camera 12 MP\r\nCamera trước:	12 MP\r\nChip:	Apple A13 Bionic\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nSIM:	1 Nano SIM & 1 eSIM, Hỗ trợ 4G\r\nPin, Sạc:	3969 mAh', 'Màn hình\r\nCông nghệ màn hình	OLED\r\nĐộ phân giải	1242 x 2688 Pixels\r\nKích thước màn hình	6.5\"\r\nMặt kính cảm ứng	Kính cường lực Oleophobic (ion cường lực)\r\nCamera sau\r\nĐộ phân giải	3 camera 12 MP\r\nQuay phim	\r\n4K 2160p@24fps\r\n4K 2160p@60fps\r\n4K 2160p@30fps\r\nFullHD 1080p@120fps\r\nFullHD 1080p@240fps\r\nHD 720p@30fps\r\nFullHD 1080p@60fps\r\nFullHD 1080p@30fps\r\nĐèn Flash	4 đèn LED 2 tông màu\r\nTính năng	\r\nBan đêm (Night Mode)\r\nTrôi nhanh thời gian (Time Lapse)\r\nQuay chậm (Slow Motion)\r\nXóa phông\r\nChạm lấy nét\r\nToàn cảnh (Panorama)\r\nChống rung quang học (OIS)\r\nTự động lấy nét (AF)\r\nNhận diện khuôn mặt\r\nHDR\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide)\r\nCamera trước\r\nĐộ phân giải	12 MP\r\nTính năng	\r\nXóa phông\r\nQuay video 4K\r\nNhãn dán (AR Stickers)\r\nRetina Flash\r\nQuay video HD\r\nNhận diện khuôn mặt\r\nQuay video Full HD\r\nTự động lấy nét (AF)\r\nHDR\r\nQuay chậm (Slow Motion)\r\nHệ điều hành & CPU\r\nHệ điều hành	iOS 14\r\nChip xử lý (CPU)	Apple A13 Bionic 6 nhân\r\nTốc độ CPU	2 nhân 2.65 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU)	Apple GPU 4 nhân\r\nBộ nhớ & Lưu trữ\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nBộ nhớ còn lại (khả dụng) khoảng	Khoảng 59 GB\r\nKết nối\r\nMạng di động	Hỗ trợ 4G\r\nSIM	1 Nano SIM & 1 eSIM\r\nWifi	\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\nWi-Fi hotspot\r\nDual-band (2.4 GHz/5 GHz)\r\nGPS	\r\nA-GPS\r\nGLONASS\r\nBDS\r\nBluetooth	LE, A2DP\r\nCổng kết nối/sạc	Lightning\r\nJack tai nghe	Lightning\r\nKết nối khác	OTG, NFC\r\nPin & Sạc\r\nDung lượng pin	3969 mAh\r\nLoại pin	Li-Ion\r\nCông nghệ pin	\r\nSạc pin nhanh\r\nSạc không dây\r\nTiết kiệm pin\r\nTiện ích\r\nBảo mật nâng cao	Mở khoá khuôn mặt Face ID\r\nTính năng đặc biệt	\r\nKháng nước, kháng bụi\r\nApple Pay\r\nÂm thanh Dolby Audio\r\nGhi âm	Có (microphone chuyên dụng chống ồn)\r\nXem phim	H.264(MPEG4-AVC)\r\nNghe nhạc	\r\nFLAC\r\nLossless\r\nAAC\r\nMP3\r\nThông tin chung\r\nThiết kế	Nguyên khối\r\nChất liệu	Khung thép không gỉ & Mặt lưng kính cường lực\r\nKích thước	Dài 158 mm - Ngang 77.8 mm - Dày 8.1 mm\r\nKhối lượng	226 g\r\nThời điểm ra mắt	11/2019', 1, 8),
(15, 'iPhone 12 mini 128GB', '002', '19990000', 50, '1620405397_iphone-mini-do-new-600x600-600x600.jpg', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 5.4\", Super Retina XDR\r\nHệ điều hành:	iOS 14\r\nCamera sau:	2 camera 12 MP\r\nCamera trước:	12 MP\r\nChip:	Apple A14 Bionic\r\nRAM:	4 GB\r\nBộ nhớ trong:	128 GB\r\nSIM:	1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc:	2227 mAh, 20 W', 'Màn hình\r\nCông nghệ màn hình	OLED\r\nĐộ phân giải	Full HD+ (1080 x 2340 Pixels)\r\nKích thước màn hình	5.4\"\r\nTần số quét	60 Hz\r\nĐộ sáng tối đa	1201 nits\r\nMặt kính cảm ứng	Kính cường lực Ceramic Shield\r\nCamera sau\r\nĐộ phân giải	2 camera 12 MP\r\nQuay phim	\r\n4K 2160p@60fps\r\nFullHD 1080p@60fps\r\n4K 2160p@24fps\r\nFullHD 1080p@30fps\r\n4K 2160p@30fps\r\nFullHD 1080p@120fps\r\nFullHD 1080p@240fps\r\nHD 720p@30fps\r\nĐèn Flash	Đèn LED kép\r\nTính năng	\r\nBan đêm (Night Mode)\r\nTrôi nhanh thời gian (Time Lapse)\r\nQuay chậm (Slow Motion)\r\nXóa phông\r\nZoom quang học\r\nToàn cảnh (Panorama)\r\nTự động lấy nét (AF)\r\nNhận diện khuôn mặt\r\nHDR\r\nZoom kỹ thuật số\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide)\r\nCamera trước\r\nĐộ phân giải	12 MP\r\nTính năng	\r\nXóa phông\r\nQuay video 4K\r\nNhãn dán (AR Stickers)\r\nRetina Flash\r\nQuay video HD\r\nNhận diện khuôn mặt\r\nQuay video Full HD\r\nTự động lấy nét (AF)\r\nHDR\r\nQuay chậm (Slow Motion)\r\nHệ điều hành & CPU\r\nHệ điều hành	iOS 14\r\nChip xử lý (CPU)	Apple A14 Bionic 6 nhân\r\nTốc độ CPU	2 nhân 3.1 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU)	Apple GPU 4 nhân\r\nBộ nhớ & Lưu trữ\r\nRAM	4 GB\r\nBộ nhớ trong	128 GB\r\nBộ nhớ còn lại (khả dụng) khoảng	115 GB\r\nKết nối\r\nMạng di động	Hỗ trợ 5G\r\nSIM	1 Nano SIM & 1 eSIM\r\nWifi	\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\nWi-Fi MIMO\r\nWi-Fi hotspot\r\nDual-band (2.4 GHz/5 GHz)\r\nGPS	\r\nGLONASS\r\niBeacon\r\nQZSS\r\nGALILEO\r\nA-GPS\r\nBDS\r\nBluetooth	v5.0, A2DP\r\nCổng kết nối/sạc	Lightning\r\nJack tai nghe	Lightning\r\nKết nối khác	OTG\r\nPin & Sạc\r\nDung lượng pin	2227 mAh\r\nLoại pin	Li-Ion\r\nCông nghệ pin	\r\nSạc pin nhanh\r\nSạc không dây MagSafe\r\nTiết kiệm pin\r\nSạc không dây\r\nHỗ trợ sạc tối đa	20 W\r\nTiện ích\r\nBảo mật nâng cao	Mở khoá khuôn mặt Face ID\r\nTính năng đặc biệt	Kháng nước, kháng bụi\r\nChống nước	IP68\r\nGhi âm	Có (microphone chuyên dụng chống ồn)\r\nXem phim	H.264(MPEG4-AVC)\r\nNghe nhạc	\r\nAAC\r\nLossless\r\nFLAC\r\nMP3\r\nThông tin chung\r\nThiết kế	Nguyên khối\r\nChất liệu	Khung nhôm & Mặt lưng kính cường lực\r\nKích thước	Dài 131.5 mm - Ngang 64.2 mm - Dày 7.4 mm\r\nKhối lượng	135 g\r\nThời điểm ra mắt	10/2020', 1, 8),
(17, 'iPhone 12 128GB', '003', '23990000', 50, '1620419755_', 'Màn hình: OLED, 6.1\", Super Retina XDR\r\nHệ điều hành: iOS 14\r\nCamera sau: 2\r\ncamera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A14\r\nBionic RAM: 4 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc: 2815 mAh, 20 W', '', 1, 8),
(18, 'iPhone 11 64GB', '004', '17490000', 50, '1620420151_iphone-11-64gb-xi-do-600x600.jpg', 'Màn hình: IPS LCD, 6.1\", Liquid Retina\r\nHệ điều hành: iOS 14\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A13 Bionic\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nSIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 4G\r\nPin, Sạc: 3110 mAh, 18 W', '', 1, 8),
(19, 'iPhone 12 Pro Max 128GB', '005', '31990000', 50, '1620420312_iphone-12-pro-max-xanh-duong-new-600x60', 'Màn hình: OLED, 6.7\", Super Retina XDR\r\nHệ điều hành: iOS 14\r\nCamera sau: 3 camera 12 MP\r\nCamera trước: 12 MP\r\nChip: Apple A14 Bionic\r\nRAM: 6 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc: 3687 mAh, 20 W', '', 1, 8),
(20, 'Samsung Galaxy A32', '006', '6690000', 50, '1620423511_samsung-galaxy-a32-4g-thumb-xanh-600x60', 'Màn hình: Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành: Android 11\r\nCamera sau: Chính 64 MP & Phụ 8 MP, 5MP, 5MP\r\nCamera trước:	20 MP\r\nChip:	MediaTek Helio G80\r\nRAM:	6 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:\r\n5000 mAh, 15 W', '', 1, 8),
(21, 'Samsung Galaxy S21 5G', '007', '20990000', 50, '1620423601_samsung-galaxy-s21-tim-600x600.jpg', 'Màn hình: Dynamic AMOLED 2X, 6.2\", Full HD+\r\nHệ điều hành: Android 11\r\nCamera sau: Chính 12 MP & Phụ 64 MP, 12 MP\r\nCamera trước: 10 MP\r\nChip: Exynos 2100\r\nRAM: 8 GB\r\nBộ nhớ trong: 128 GB\r\nSIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc: 4000 mAh, 25 W', '', 1, 8),
(22, 'Samsung Galaxy Z Fold2 5G Đặc Biệt', '008', '50000000', 50, '1620470923_samsung-galaxy-z-fold-2-vang-600x600-60', 'Màn hình: Chính: Dynamic AMOLED, Phụ: Super AMOLED, Chính 7.59\" & Phụ 6.23\", Full HD+\r\nHệ điều hành: Android 10\r\nCamera sau: 3 camera 12 MP\r\nCamera trước: Trong 10 MP & Ngoài 10 MP\r\nChip: Snapdragon 865+\r\nRAM: 12 GB\r\nBộ nhớ trong: 256 GB\r\nSIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G\r\nPin, Sạc: 4500 mAh', '', 1, 8),
(23, 'Xiaomi Redmi 9T (4GB/64GB)', '009', '3690000', 50, '1620423771_xiaomi-redmi-9t-(6).jpg', 'Màn hình: IPS LCD, 6.53\", Full HD+\r\nHệ điều hành: Android 10\r\nCamera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước: 8 MP\r\nChip: Snapdragon 662\r\nRAM: 4 GB\r\nBộ nhớ trong: 64 GB\r\nSIM: 2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc: 6000 mAh', '', 1, 8),
(24, 'Xiaomi Mi 11 5G', '010', '20990000', 50, '1620423848_xiaomi-mi-11-(2).jpg', 'Màn hình: AMOLED, 6.81\", Quad HD+ (2K+)\r\nHệ điều hành: Android 11\r\nCamera sau: Chính 108 MP & Phụ 13 MP, 5 MP\r\nCamera trước: 20 MP\r\nChip: Snapdragon 888\r\nRAM: 8 GB\r\nBộ nhớ trong: 256 GB\r\nSIM: 2 Nano SIM, Hỗ trợ 5G\r\nPin, Sạc: 4600 mAh, 55 W', '', 1, 8),
(25, 'Xiaomi Redmi Note 10 Pro (8GB/128GB)', '011', '7490000', 50, '1620431604_xiaomi-redmi-note-10-pro-thumb-xam-600x', 'Màn hình:	AMOLED, 6.67\", Full HD+\r\nHệ điều hành:	Android 11\r\nCamera sau:	Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP\r\nCamera trước:	16 MP\r\nChip:	Snapdragon 732G\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nSIM:	2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:	5020 mAh, 33 W', '', 1, 8),
(26, 'Xiaomi Mi 11 Lite', '012', '7990000', 50, '1620431409_xiaomi-mi-11-lite-4g-blue-600x600.jpg', 'Màn hình:	AMOLED, 6.55\", Full HD+\r\nHệ điều hành:	Android 11\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 5 MP\r\nCamera trước:	16 MP\r\nChip:	Snapdragon 732G\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nSIM:	2 Nano SIM (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nPin, Sạc:	4250 mAh, 33 W', '', 1, 8),
(27, 'Realme 7 Pro', '013', '8990000', 50, '1620431387_realme-7-pro-bac-600x600.jpg', 'Màn hình:	Super AMOLED, 6.4\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	32 MP\r\nChip:	Snapdragon 720G\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nSIM:	2 Nano SIM, Hỗ trợ 4G\r\nPin, Sạc:	4500 mAh, 65 W', '', 1, 8),
(28, 'OPPO Reno5 5G', '014', '11990000', 50, '1620431704_oppo-reno5-5g-thumb-600x600.jpg', 'Màn hình:	AMOLED, 6.43\", Full HD+\r\nHệ điều hành:	Android 11\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:	32 MP\r\nChip:	Snapdragon 765G\r\nRAM:	8 GB\r\nBộ nhớ trong:	128 GB\r\nSIM:	2 Nano SIM, Hỗ trợ 5G\r\nPin, Sạc:	4300 mAh, 65 W', '', 1, 8),
(29, 'Vsmart Aris Pro', '015', '8490000', 50, '1620470897_', '', '', 1, 8),
(31, 'Pin sạc dự phòng Samsung EB-P5300', '016', '1490000', 100, '1620432061_235121-600x600.jpg', 'Hiệu suất sạc:	60%\r\nDung lượng pin:	20.000 mAh\r\nThời gian sạc đầy pin:	12 - 14 giờ (dùng Adapter 2A)\r\nNguồn ra:	USB: 5V - 2A, 9V - 1.7A, 12V - 2.1AType C: 5V - 2A, 9V - 2A, 12V - 2.1A\r\nLõi pin:	Polymer\r\nCông nghệ/Tiện ích:	Đèn LED báo hiệuPower Delivery\r\nKích thước:	Dày 14.3 cm - Rộng 7 cm - Dày 2.5 cm\r\nTrọng lượng:	392 g\r\nThương hiệu của:	Hàn Quốc\r\nSản xuất tại:	Trung Quốc', '', 1, 11),
(32, 'Tai nghe Bluetooth True Wireless LG Tone Free HBS-FN4', '017', '990000', 100, '1620432351_bluetooth-tws-lg-tone-free-hbs-fn4-tran', 'Tương thích:	AndroidWindowsiOS (iPhone)\r\nCổng sạc:	Type-C\r\nCông nghệ âm thanh:	Meridian\r\nThời gian sử dụng:	6 giờ\r\nThời gian sạc đầy:	1 giờ\r\nKết nối cùng lúc:	1 thiết bị\r\nHỗ trợ kết nối:	10m (Bluetooth 5.0)\r\nĐiều khiển bằng:	Cảm ứng chạm\r\nTiện ích:	Chống nước\r\nTrọng lượng:	44.4g\r\nThương hiệu của:	Hàn Quốc\r\nSản xuất tại:	Việt Nam\r\nBộ bán hàng chuẩn:	Tai ngheDây cáp Type-CSách hướng dẫn', '', 1, 13),
(33, 'Tai nghe EP Rapoo EP28 Đen', '018', '179000', 100, '1620432421_ep-rapoo-ep28-den-ava-600x600.jpg', 'Tương thích:	AndroidiOS (iPhone)\r\nJack cắm:	3.5 mm\r\nKết nối cùng lúc:	1 thiết bị\r\nĐộ dài dây	120 cm\r\nTrọng lượng:	38 g\r\nThương hiệu của:	Trung Quốc\r\nSản xuất tại:	Trung Quốc', '', 1, 13),
(34, 'Ốp lưng iPhone 12/ 12 Pro Nhựa dẻo Sliipa JM Nude', '019', '51000', 200, '1620432776_op-lung-iphone-12-12-pro-nhua-deo-sliip', '', '', 1, 12),
(35, 'Ốp lưng Oppo A7 Nhựa dẻo Lucky Dog JM JM171211', '020', '51000', 200, '1620432761_op-lung-oppo-a7-nhua-deo-lucky-dog-jm-j', '', '', 1, 12),
(36, 'Ốp lưng iPhone X Nhựa cứng viền dẻo Husky', '021', '51000', 200, '1620432748_op-lung-iphone-x-cung-vien-deo-sr171204', '', '', 1, 12),
(37, 'Ốp lưng Oppo F9 Nhựa dẻo Electroplating trong COSANO đỏ', '022', '51000', 200, '1620432736_op-lung-oppo-f9-nhua-deo-electroplating', '', '', 1, 12);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
