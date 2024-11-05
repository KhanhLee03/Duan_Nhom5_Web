-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2024 lúc 12:27 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlybandoan_nhanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total` int(12) NOT NULL,
  `pttt` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `name`, `address`, `tel`, `email`, `total`, `pttt`) VALUES
(15, 'Duong Le Khánh', 'BGzz', '0972461283', 'akiki@gmail.com', 33, 0),
(16, 'Nguyễn Văn Thắng', 'Hòa Bình', '0987651234', 'thanghb2003@gmail.com', 41, 0),
(17, 'Nguyễn Văn Thắng', 'Hòa Bình', '0987651234', 'thanghb2003@gmail.com', 33, 0),
(18, 'Duong Le Khánh', 'BGzz', '0987651234', 'kiki2003bgzz@gmail.com', 321, 0),
(19, 'Khánh', 'Bắc Giang', '0987654321', 'khanh2003@gmail.com', 70, 0),
(20, 'Duong Le Khanh', 'Bắc Giang', '0987654321', 'kiki2003bgzz@gmail.com', 62, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(12) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `dongia` int(12) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL DEFAULT 0,
  `thanhtien` int(12) NOT NULL DEFAULT 0,
  `idbill` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `tensp`, `img`, `dongia`, `soluong`, `thanhtien`, `idbill`) VALUES
(3, 'Hoa Lan Hồ Điệp', 'anh27.jpg', 390, 1, 390000, 2),
(4, 'Hoa Hồng Kinh Đô   ', 'anh8x.jpg', 330, 1, 330000, 2),
(6, 'Thiên Xuân Hồi Lạc', 'u.jpg', 300, 2, 600000, 4),
(7, 'Chậu Thủy Cảnh', 'c.jpg', 300, 1, 300000, 4),
(8, 'Thiên Xuân Hồi Lạc', 'u.jpg', 300, 1, 300000, 5),
(9, 'Chậu Cảnh Vĩnh Hà ', 'q2.jpg', 200, 2, 400000, 5),
(12, 'bánh dâu', 'b3.jpg', 40, 2, 80000, 7),
(13, 'bánh mattcha', 'a4.jpg', 29, 1, 29000, 7),
(14, 'bánh hoa quả', 'a6.jpg', 54, 1, 54000, 8),
(15, 'bánh mattcha', 'a4.jpg', 29, 1, 29000, 8),
(20, 'bánh socola', 'b1.jpg', 29, 1, 29000, 11),
(21, 'bánh mátcha', 'a3.jpg', 38, 1, 38000, 11),
(24, 'bánh tét', 't2.png', 38, 1, 38000, 13),
(25, 'bánh da lợn', 't7.png', 321, 1, 321000, 13),
(26, 'bánh tiêu', 't5.png', 29, 1, 29000, 13),
(27, 'Cheese ring snack', 'a4.png', 35, 1, 35000, 14),
(28, 'trà sữa matcha', 'a9.png', 29, 1, 29000, 14),
(29, 'trà xoài', 'v4.png', 222, 1, 222000, 14),
(30, 'trà sữa kem trứng ', 'a1.png', 41, 1, 41000, 14),
(31, 'American fries bacon', 'a10.png', 33, 1, 33000, 15),
(32, 'trà sữa kem trứng ', 'a1.png', 41, 1, 41000, 16),
(33, 'trà sữa full topping', 'a10.png', 33, 1, 33000, 17),
(34, 'trà sữa mexico', 'v1.png', 321, 1, 321000, 18),
(35, 'trà sữa kem trứng ', 'a1.png', 41, 1, 41000, 19),
(36, 'Cheese ring burger', 'a9.png', 55, 1, 55000, 19),
(38, 'trà sữa than tre', 'v2.png', 33, 1, 33000, 20),
(39, 'American trio charcoal burger', 'bg1.png', 129, 1, 129000, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `hoten` varchar(200) NOT NULL,
  `sdt` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `tendangnhap` varchar(100) NOT NULL,
  `matkhau` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`tendangnhap`, `matkhau`) VALUES
('khanh', 16112003);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongia` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `nhom_id`, `tensp`, `mota`, `dongia`, `img`, `enable`, `ghichu`) VALUES
('1231', 2367, 'Hoa Hồng Nhung', 'siêu nhiều màu ', 123, 'hoa6.jpg', 1, 'hoa hồng '),
('2342', 1213, 'Hoa cúc', '32e', 233, 'hoa2.jpg', 1, '232'),
('45435', 2342, 'Hoa cẩm tú cầu', 'dsad', 3243, 'hoa5.jpg', 1, 'sdsa'),
('32434', 2367, '35345  ', '34534  ', 435, 'take4.jpg', 1, ' ahihi '),
('54645', 46456, '6456', '654', 65, 'anh1.jpg', 1, '565'),
('56756', 2367, '7567 ', '5675 ', 75567, 'take4.jpg', 0, 'dfd '),
('232', 2367, '32432 ', '43 ', 343, 'product.jpg', 1, '345 '),
('111', 7567, 'Hoa Cẩm Tú Cầu', 'đẹp', 343, 'hoa3.png', 1, 'hay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham1`
--

CREATE TABLE `sanpham1` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongiacu` int(11) NOT NULL,
  `dongiamoi` int(11) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) DEFAULT NULL,
  `img3` varchar(200) DEFAULT NULL,
  `img4` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL,
  `diemnoibat` text DEFAULT NULL,
  `dieukienchamsoc` text DEFAULT NULL,
  `cachchamsoc` text DEFAULT NULL,
  `xuatxu` varchar(255) DEFAULT NULL,
  `ngaydang` varchar(50) DEFAULT NULL,
  `kichthuoc` varchar(255) DEFAULT NULL,
  `nguoidang` varchar(50) DEFAULT NULL,
  `giongloai` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham1`
--

INSERT INTO `sanpham1` (`masp`, `nhom_id`, `tensp`, `mota`, `dongiacu`, `dongiamoi`, `img1`, `img2`, `img3`, `img4`, `enable`, `ghichu`, `diemnoibat`, `dieukienchamsoc`, `cachchamsoc`, `xuatxu`, `ngaydang`, `kichthuoc`, `nguoidang`, `giongloai`) VALUES
('234345', 3242, 'trà sữa kem socola', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 34, 31, 'a4.png', 'a1.png', 'a2.png', 'a4.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'tuyên quang      ', '2/2/2022      ', 'gfh      ', 'Vũ Thị Bắc      ', 'Cúc      '),
('23435345', 3242, 'trà sữa trà xanh', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 77, 54, 'a3.png', 'a8.png', 'br2.png', 'a3.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'tuyên quang      ', '2/2/2022      ', '30cm- 70cm      ', 'hi      ', 'Hoa Lan      '),
('24235353', 3242, 'trà sữa khoai môn', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 44, 38, 'a2.png', 'a3.png', 'br1.png', 'a2.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Hải Dương        ', '2/11/2023      ', '10- 30 cm       ', 'Vũ Thị Bắc        ', 'hoa hồng cổ          '),
('245', 3242, 'trà sữa kem trứng ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n     ', 45, 41, 'a1.png', 'a6.png', 'br1.png', 'a1.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n     ', 'Đồng Thấp     ', '2/2/2022     ', '10- 30 cm      ', 'Nguyễn Minh Thiện     ', 'Hoa Hồng Nhập Khẩu     '),
('3436547568', 3242, 'trà sữa matcha', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 44, 29, 'a9.png', 'a3.png', 'v3.png', 'a9.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n      ', 'Tiên Quang      ', '2/11/2023      ', '10- 30 cm       ', 'Vũ Thị Bắc      ', 'Hoa Lan      '),
('45', 3242, 'trà sữa than tre', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 54, 33, 'v2.png', 'a10.png', 'a8.png', 'a9.png', 1, '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Hải Dương        ', '11/2/2023      ', '10- 30 cm       ', 'Nguyễn Minh Thiện      ', 'Hoa Lan      '),
('4543', 3242, 'trà sữa mexico', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 333, 321, 'v1.png', 'a2.png', 'a4.png', 'v1.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Tiên Quang    ', '11/2/2023    ', '10cm-30cm    ', 'Vũ Thị Bắc    ', 'Hoa Hồng Nhập Khẩu    '),
('47', 3242, 'hồng trà sữa', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 345, 232, 'a7.png', 'a2.png', 'a4.png', 'a7.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'tuyên quang    ', '11/2/2023    ', '10cm-30cm    ', 'Vũ Thị Bắc    ', 'Hoa Lan    '),
('666', 3242, 'trà xoài', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 321, 222, 'v4.png', 'a2.png', 'a4.png', 'v4.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Đồng Thấp     ', '2/11/2023     ', '30cm- 70cm     ', 'Vũ Thị Bắc       ', 'Hoa Hồng Nhập Khẩu     '),
('87', 3242, 'trà sữa full topping', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ   ', 34, 33, 'a10.png', 'a2.png', 'a9.png', 'a10.png', 1, '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.   ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.   ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.   ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.   ', 'Hải Dương     ', '11/2/2023   ', '10cm-30cm   ', 'Vũ Thị Bắc     ', 'hoa hồng cổ       ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_nhom`
--

CREATE TABLE `sanpham_nhom` (
  `id` int(11) NOT NULL,
  `tennhom` varchar(100) NOT NULL,
  `ghichu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_nhom`
--

INSERT INTO `sanpham_nhom` (`id`, `tennhom`, `ghichu`) VALUES
(3242, 'trà sữa vị', '2     '),
(32424, 'trà sữa  hoa quả', '4234     '),
(235345, 'trà kem', '234     ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`tendangnhap`, `matkhau`, `hoten`, `email`, `enable`) VALUES
('khanhakiki', '16112003', 'Duong Le Khanh', 'kiki2003bgzz@gmail.com', 1),
('thaidui', '2003', 'Thai Dui', 'thaiml@gmail.com', 0),
('thang2003', '2003', 'Nguyễn Văn Thắng', 'thanghb2003@gmail.com', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`hoten`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `sanpham1`
--
ALTER TABLE `sanpham1`
  ADD PRIMARY KEY (`masp`);

--
-- Chỉ mục cho bảng `sanpham_nhom`
--
ALTER TABLE `sanpham_nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
