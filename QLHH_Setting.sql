/*
Họ và tên học viên: Nguyễn Nhật Minh
Ngày sinh: 14/11/2002
*/


USE Master
GO
IF EXISTS (SELECT * FROM sysdatabases WHERE name='')
	DROP DATABASE
GO
-- Data Definition Language - DDL
CREATE DATABASE QLHH

USE QLHH




-- Data cung cấp hàng hóa

--table ChiTietDatHang
(1, 'TP01', 4000, 5, 0),
(1, 'TP02', 180000, 5, 5000),
(1, 'TP03', 12000, 5, 0),
(1, 'TP06', 3000, 50, 0),
(1, 'TP07', 40000, 100, 0),
(2, 'MM01', 340000, 30, 10000),
(2, 'MM02', 500000, 20, 20000),
(3, 'MM01', 340000, 30, 10000),
(3, 'MM02', 500000, 30, 20000),
(4, 'MM01', 340000, 80, 10000),
(5, 'TP03', 3000, 1000, 0),
(6, 'DT01', 3100000, 2, 100000),
(6, 'DT05', 18000000, 20, 1000000),
(7, 'TP03', 3000, 200, 0),
(8, 'DT04', 20000000, 2, 1000000),
(9, 'DC01', 48000, 1000, 0),
(9, 'DC02', 2000, 1000, 0),
(9, 'DC03', 7500, 1000, 0)

--table DonDatHang
('T0001', 'A001', '2011-09-12', '2011-09-17', '2011-09-18', N'Hà Nội'),
('T0001', 'A001', '2011-08-20', '2011-08-22', '2011-08-24', N'Hà Nội'),
( 'T0002', 'H002', '2011-07-15', '2011-07-19', '2011-07-20', N'Sài gòn'),
( 'V0001', 'H003', '2011-05-18', '2011-05-24', '2011-05-26', N'Sài gòn'),
( 'V0002', 'P001', '2011-02-14', '2011-02-15', '2011-02-17', N'Hà Nội'),
( 'V0003', 'D001', '2011-09-12', '2011-09-12', '2011-09-15', N'Hà Nội'),
( 'V0004', 'H003', '2011-02-13', '2011-02-13', '2011-02-13', N'Hà Nội'),
( 'T0002', 'Q001', '2011-09-11', '2011-09-12', '2011-09-13', N'Sài gòn'),
( 'V0001', 'A001', '2011-04-17', '2011-04-20', '2011-04-22', N'Sài gòn')

--table MatHang
('DC01', N'Vở học sinh cao cấp', 'GOL', 'DC', 20000, N'Ram', 48000),
('DC02', N'Bút bi học sinh', 'GOL', 'DC', 2000, N'Cây', 2000),
('DC03', N'Hộp motor', 'GOL', 'DC', 2000, N'Hộp', 7500),
('DC04', N'Bút mực cao cấp', 'GOL', 'DC', 2000, N'Cây', 20000),
('DC05', N'Bút chì 2B', 'GOL', 'DC', 2000, N'Cây', 3000),
('DC06', N'Bút chì 4B', 'GOL', 'DC', 2000, N'Cây', 6000),
('DT01', N'LCD Nec', 'DQV', 'DT', 10, N'Cái', 3100000),
('DT02', N'Ổ cứng 80GB', 'DQV', 'DT', 20, N'Cái', 800000),
('DT03', N'Bàn phím Mitsumi', 'DQV', 'DT', 20, N'Cái', 150000),
('DT04', N'Tivi LCD', 'DQV', 'DT', 10, 'Cái', 20000000),
('DT05', N'Máy tính xách tay NEC', 'DQV', 'DT', 60, N'Cái', 18000000),
('MM01', N'Ðồng phục Công sở', 'MVT', 'MM', 140, N'BỘ', 340000),
('MM02', N'Veston nam', 'MVT', 'MM', 30, N'BỘ', 500000),
('MM03', N'Áo so mi nam', 'MVT', 'MM', 20, N'Cái', 75000),
('NT01', N'Bàn ghế ăn', 'DAF', 'NT', 20, N'BỘ', 1000000),
('NT02', N'Bàn ghế Salon', 'DAF', 'NT', 20, N'BỘ', 150000),
('TP01', N'Sữa Hộp XYZ', 'VNM', 'TP', 10, N'Hộp', 4000),
('TP02', N'Sữa XO', 'VNM', 'TP', 12, N'Hộp', 180000),
('TP03', N'Sữa tuoi Vinamilk không đường', 'VNM', 'TP', 5000, N'Hộp', 3500),
('TP04', N'Táo', 'SCM', 'TP', 12, N'Ký', 12000),
('TP05', N'Cà chua', 'SCM', 'TP', 15, N'Ký', 5000),
('TP06', N'Bánh AFC', 'SCM', 'TP', 100, N'Hộp', 3000),
('TP07', N'Mì tơm A-One', 'SCM', 'TP', 150, N'Thùng', 40000)

-- table LoaiHang
('DC', N'Dụng cụ học tập'),
('DT', N'Ðiện tử'),
('MM', N'May mặc'),
('NT', N'Nội thất'),
('TP', N'Thực phẩm')

-- Table NhaCungCap
('DAF', N'Nội thất Đài Loan Dafuco', 'DAFUCO', 'Quy Nhon', '56-888111', 'dafuco@vietnam.com'),
('DQV', N'Công ty máy tính Quang Vu', 'QUANGVU', 'Quy Nhon', '56-888777', 'quangvu@vietnam.com'),
('GOL', N'Công ty sản xuất dụng cụ học sinh Golden', 'GOLDEN', 'Quy Nhon', '56-891135', 'golden@vietnam.com'),
('MVT', N'Công ty may mặc Việt Tiến', 'VIETTIEN', N'Sài gòn', '08-808803', 'viettien@vietnam.com'),
('SCM', N'Siêu thị Coop-mart', 'COOPMART', 'Quy Nhon', '56-888666', 'coopmart@vietnam.com'),
('VNM', N'Công ty sữa Việt Nam', 'VINAMILK',N'Hà Nội', '04-891135', 'vinamilk@vietnam.com')

-- table NhanVien
('A001', N'Ðậu Tố', 'Anh', '1986-03-07', '2009-03-01', 'Quy Nhon', '56-647995', 10000000, 1000000),
('D001', N'Nguyễn Minh', N'Ðang', '1987-12-29', '2009-03-01', 'Quy Nhon', '0905-779919', 14000000, 0),
('H001', N'Lý Thị Bích', 'Hoa', '1986-05-20', '2009-03-01', N'An Khương', NULL, 9000000, 1000000),
('H002', N'Ông Hồng', N'Hải', '1987-08-11', '2009-03-01', N'Ðà Nẵng', '0905-611725', 12000000, 0),
('H003', N'Trần Nguyễn Đức', N'Hồng', '1986-04-09', '2009-03-01', 'Quy Nhon', NULL, 11000000, 0),
('M001', N'Hồ  Thị Phuong', 'Mai', '1987-09-14', '2009-03-01', 'Ty Son', NULL, 9000000, 500000),
('P001', N'Nguyễn Hồi', 'Phong', '1986-06-14', '2009-03-01', 'Quy Nhon', '56-891135', 13000000, 0),
('Q001', N'Truong Thị Thu', 'Quang', '1987-06-17', '2009-03-01', 'Ayunpa', '0979-792176', 10000000, 500000),
('T001', N'Nguyễn Đức', N'Thông', '1984-09-13', '2009-03-01', N'Phú Mỹ', '0955-593893', 1200000, 0)


--table KhachHang
('T0001', N'Công ty sữa Việt Nam', 'VINAMILK', N'Hà Nội', 'vinamilk@.com', '04-891135'),
('T0002', N'Công ty may mặc Việt Tiến', 'VIETTIEN', N'Sài gòn', 'viettien@.com', '08-808803'),
('V0001', N'Tổng công ty thực phẩm dinh dưỡng', 'NUTRIFOOD', N'Sài gòn', 'nutrifood@.com', '08-809890'),
('V0002', N'Công ty điện máy Hà Nội', 'MACHANOI', N'Hà Nội', 'machanoi@.com', '04-898399'),
('V0003', N'Hãng hàng không Việt Nam', 'VIETNAMAIRLINES', N'Sài gòn', 'mairlines@.com', '08-888888'),
('V0004', N'Công ty dụng cụ học sinh MIC', 'MIC', N'Hà Nội', 'mic@vietnam.com', '04-804408')


------------------------------------------------------------------
/*
YÊU CẦU
(1)-	Tạo cơ sở dữ liệu theo các yêu cầu sau:
a.-	Tạo cơ sở dữ liệu Cung cấp hàng hóa. 
b.-	Viết lệnh tạo table cùng các ràng buộc: như khóa chính (primary key), khóa ngoại (forfeign key), duy nhất (unique), check, default và liên thuộc tính (nếu có).
c.-	Nhập dữ liệu cho tất cả các table dựa trên dữ liệu đã được cung cấp.

(2)-	Dùng T-SQL để thực hiện các yêu cầu sau
1.-	Họ tên, địa chỉ và thâm niên (số năm làm việc) của những nhân viên có số năm thâm niên là nhiều nhất trong công ty.
2.-	Những đơn hàng nào yêu cầu giao hàng ngay tại công ty đặt hàng và những đơn đó là của công ty nào?
3.-	Xoá khỏi bảng MATHANG những mặt hàng có số lượng bằng 0 hoặc mặt hàng đó chưa từng được đặt mua trong bất kỳ đơn đặt hàng nào.
4.-	Mỗi nhân viên của công ty đã lập bao nhiêu đơn đặt hàng (nếu chưa hề lập hóa đơn nào thì cho kết quả là 0)
5.-	Tổng số tiền lời mà công ty thu được từ mỗi mặt hàng trong năm 2011.
6.-	Giảm 25% lương của những nhân viên trong năm 2011 không lập được bất kỳ đơn đặt hàng nào.
7.-	Tạo View chứa tổng doanh thu của từng mặt hàng. Biết Tổng Doanh Thu =  ((SoLuong * DonGia) - MucGiamGia)). Sử dụng view vừa tạo để tìm tên những mặt hàng có tổng doanh thu lớn nhất.
8.-	Tạo stored procedure (SP) nhận 3 tham số là mã mặt hàng (code), giá bán X, giá bán Y. Kết quả trả về sẽ được lưu dưới dạng 1 table.  SP cho biết những số đơn hàng (SoDH) có giá bán mặt hàng thuộc mã code nằm trong khoảng từ X đến Y.
9.-	Cho biết tên những mặt hàng chưa từng được đặt hàng.
10.- Cho biết những đơn đặt hàng nào gồm tất cả các mặt hàng có trong đơn đặt hàng số 5.
11.- Sử dụng biểu thức bảng chung (Common Table Expression – CTE) cho biết tên những mặt hàng có số lượng tồn kho không phải là nhiều nhất hoặc ít nhất.
12.- Tạo mới 1 cursor và sử dụng cursor này để in bảng thống kê sau:
*/

--------------------------------------------------------------------

-----Tao Bang Nha Cung Cap
CREATE TABLE NhaCungCap (
	MaNCC VARCHAR(3) PRIMARY KEY CHECK(MaNCC LIKE '[A-Z][A-Z][A-Z]'),
	TenNCC NVARCHAR(250),
	TenGD VARCHAR(125),
	DiaChi NVARCHAR(255),
	DienThoai VARCHAR(10) CHECK(DienThoai LIKE '[0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]' OR 
								DienThoai LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]' OR 
								DienThoai IS NULL),
	Email VARCHAR(50),
)


-----Tao Bang Loai Hang
CREATE TABLE LoaiHang (
	MaLoaiHang CHAR(2) PRIMARY KEY,
	TenLoaiHang NVARCHAR(250),
)


-----Tao Bang Mat Hang
CREATE TABLE MatHang (
	MaHang CHAR(4) PRIMARY KEY CHECK(MaHang LIKE '[A-Z][A-Z][0-9][0-9]'),
	TenHang NVARCHAR(250),
	MaNCC VARCHAR(3) CHECK(MaNCC LIKE '[A-Z][A-Z][A-Z]'),
	MaLoaiHang CHAR(2),
	SoLuongTonKho FLOAT,
	DonViTinh NVARCHAR(100),
	GiaVon INT,

	FOREIGN KEY(MaLoaiHang) REFERENCES LoaiHang(MaLoaiHang),
	FOREIGN KEY(MaNCC) REFERENCES NhaCungCap(MaNCC),
)


-----Tao Bang Nhan Vien
CREATE TABLE NhanVien (
	MaNV VARCHAR(4) PRIMARY KEY CHECK(MaNV LIKE '[A-Z][0-9][0-9][0-9]'),
	Ho NVARCHAR(250),
	Ten NVARCHAR(250),
	NgaySinh DATE,
	NgayVaoLamViec DATE,
	DiaChi NVARCHAR(50),
	DienThoai VARCHAR(10) CHECK(DienThoai LIKE '[0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]' OR 
								DienThoai LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]' OR 
								DienThoai IS NULL),
	LuongCoBan DECIMAL(18, 2),
	PhuCap DECIMAL(18, 2),
)

ALTER TABLE NhanVien
ALTER COLUMN DienThoai VARCHAR(15);

-----Tao Bang Khach Hang
CREATE TABLE KhachHang (
	MaKH VARCHAR(5) PRIMARY KEY CHECK(MaKH LIKE '[TV][0-9][0-9][0-9][0-9]'),
	TenKH NVARCHAR(25),
	TenGiaoDich VARCHAR(50),
	DiaChi NVARCHAR(50),
	Email VARCHAR(50),
	DienThoai VARCHAR(10) CHECK(DienThoai LIKE '[0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]' OR 
								DienThoai LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]' OR 
								DienThoai IS NULL),
)

ALTER TABLE KhachHang
ALTER COLUMN TenKH NVARCHAR(50);


-----Tao Bang Don Dat Hang
CREATE TABLE DonDatHang (
	SoDH INT IDENTITY(1,1) PRIMARY KEY,
	MaKH VARCHAR(5), 
	MaNV VARCHAR(4),
	NgayDatHang DATE,
	NgayChuyenHang DATE,
	NgayNhanHang DATE,
	DiaChi NVARCHAR(50),

	FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH),
	FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV),
)

ALTER TABLE DonDatHang
ADD CONSTRAINT DF_MaNV DEFAULT 'Unknow' FOR MaNV


-----Tao Bang Chi Tiet Dat Hang
CREATE TABLE ChiTietDatHang (
	SoDH INT,
	MaHang CHAR(4),
	SoLuong INT,
	GiaBan FLOAT,
	MucGiamGia FLOAT,

	PRIMARY KEY(SoDH, MaHang),
	FOREIGN KEY(SoDH) REFERENCES DonDatHang(SoDH),
	FOREIGN KEY(MaHang) REFERENCES MatHang(MaHang),
)



-----Them Gia Tri
---
INSERT INTO NhaCungCap(MaNCC,TenNCC,TenGD,DiaChi,DienThoai,Email)
VALUES
('DAF', N'Nội thất Đài Loan Dafuco', 'DAFUCO', 'Quy Nhon', '56-888111', 'dafuco@vietnam.com'),
('DQV', N'Công ty máy tính Quang Vu', 'QUANGVU', 'Quy Nhon', '56-888777', 'quangvu@vietnam.com'),
('GOL', N'Công ty sản xuất dụng cụ học sinh Golden', 'GOLDEN', 'Quy Nhon', '56-891135', 'golden@vietnam.com'),
('MVT', N'Công ty may mặc Việt Tiến', 'VIETTIEN', N'Sài gòn', '08-808803', 'viettien@vietnam.com'),
('SCM', N'Siêu thị Coop-mart', 'COOPMART', 'Quy Nhon', '56-888666', 'coopmart@vietnam.com'),
('VNM', N'Công ty sữa Việt Nam', 'VINAMILK',N'Hà Nội', '04-891135', 'vinamilk@vietnam.com')

---
INSERT INTO LoaiHang(MaLoaiHang,TenLoaiHang)
VALUES
('DC', N'Dụng cụ học tập'),
('DT', N'Ðiện tử'),
('MM', N'May mặc'),
('NT', N'Nội thất'),
('TP', N'Thực phẩm')

---
INSERT INTO MatHang(MaHang,TenHang,MaNCC,MaLoaiHang,SoLuongTonKho,DonViTinh,GiaVon)
VALUES
('DC01', N'Vở học sinh cao cấp', 'GOL', 'DC', 20000, N'Ram', 48000),
('DC02', N'Bút bi học sinh', 'GOL', 'DC', 2000, N'Cây', 2000),
('DC03', N'Hộp motor', 'GOL', 'DC', 2000, N'Hộp', 7500),
('DC04', N'Bút mực cao cấp', 'GOL', 'DC', 2000, N'Cây', 20000),
('DC05', N'Bút chì 2B', 'GOL', 'DC', 2000, N'Cây', 3000),
('DC06', N'Bút chì 4B', 'GOL', 'DC', 2000, N'Cây', 6000),
('DT01', N'LCD Nec', 'DQV', 'DT', 10, N'Cái', 3100000),
('DT02', N'Ổ cứng 80GB', 'DQV', 'DT', 20, N'Cái', 800000),
('DT03', N'Bàn phím Mitsumi', 'DQV', 'DT', 20, N'Cái', 150000),
('DT04', N'Tivi LCD', 'DQV', 'DT', 10, 'Cái', 20000000),
('DT05', N'Máy tính xách tay NEC', 'DQV', 'DT', 60, N'Cái', 18000000),
('MM01', N'Ðồng phục Công sở', 'MVT', 'MM', 140, N'BỘ', 340000),
('MM02', N'Veston nam', 'MVT', 'MM', 30, N'BỘ', 500000),
('MM03', N'Áo so mi nam', 'MVT', 'MM', 20, N'Cái', 75000),
('NT01', N'Bàn ghế ăn', 'DAF', 'NT', 20, N'BỘ', 1000000),
('NT02', N'Bàn ghế Salon', 'DAF', 'NT', 20, N'BỘ', 150000),
('TP01', N'Sữa Hộp XYZ', 'VNM', 'TP', 10, N'Hộp', 4000),
('TP02', N'Sữa XO', 'VNM', 'TP', 12, N'Hộp', 180000),
('TP03', N'Sữa tuoi Vinamilk không đường', 'VNM', 'TP', 5000, N'Hộp', 3500),
('TP04', N'Táo', 'SCM', 'TP', 12, N'Ký', 12000),
('TP05', N'Cà chua', 'SCM', 'TP', 15, N'Ký', 5000),
('TP06', N'Bánh AFC', 'SCM', 'TP', 100, N'Hộp', 3000),
('TP07', N'Mì tơm A-One', 'SCM', 'TP', 150, N'Thùng', 40000)

---
INSERT INTO NhanVien(MaNV,Ho,Ten,NgaySinh,NgayVaoLamViec,DiaChi,DienThoai,LuongCoBan,PhuCap)
VALUES
('A001', N'Ðậu Tố', 'Anh', '1986-03-07', '2009-03-01', 'Quy Nhon', '56-647995', 10000000, 1000000),
('D001', N'Nguyễn Minh', N'Ðang', '1987-12-29', '2009-03-01', 'Quy Nhon', '0905-779919', 14000000, 0),
('H001', N'Lý Thị Bích', 'Hoa', '1986-05-20', '2009-03-01', N'An Khương', NULL, 9000000, 1000000),
('H002', N'Ông Hồng', N'Hải', '1987-08-11', '2009-03-01', N'Ðà Nẵng', '0905-611725', 12000000, 0),
('H003', N'Trần Nguyễn Đức', N'Hồng', '1986-04-09', '2009-03-01', 'Quy Nhon', NULL, 11000000, 0),
('M001', N'Hồ  Thị Phuong', 'Mai', '1987-09-14', '2009-03-01', 'Ty Son', NULL, 9000000, 500000),
('P001', N'Nguyễn Hồi', 'Phong', '1986-06-14', '2009-03-01', 'Quy Nhon', '56-891135', 13000000, 0),
('Q001', N'Truong Thị Thu', 'Quang', '1987-06-17', '2009-03-01', 'Ayunpa', '0979-792176', 10000000, 500000),
('T001', N'Nguyễn Đức', N'Thông', '1984-09-13', '2009-03-01', N'Phú Mỹ', '0955-593893', 1200000, 0)

---
INSERT INTO KhachHang(MaKH,TenKH,TenGiaoDich,DiaChi,Email,DienThoai)
VALUES
('T0001', N'Công ty sữa Việt Nam', 'VINAMILK', N'Hà Nội', 'vinamilk@.com', '04-891135'),
('T0002', N'Công ty may mặc Việt Tiến', 'VIETTIEN', N'Sài gòn', 'viettien@.com', '08-808803'),
('V0001', N'Tổng công ty thực phẩm dinh dưỡng', 'NUTRIFOOD', N'Sài gòn', 'nutrifood@.com', '08-809890'),
('V0002', N'Công ty điện máy Hà Nội', 'MACHANOI', N'Hà Nội', 'machanoi@.com', '04-898399'),
('V0003', N'Hãng hàng không Việt Nam', 'VIETNAMAIRLINES', N'Sài gòn', 'mairlines@.com', '08-888888'),
('V0004', N'Công ty dụng cụ học sinh MIC', 'MIC', N'Hà Nội', 'mic@vietnam.com', '04-804408')

---
INSERT INTO DonDatHang(MaKH,MaNV,NgayDatHang,NgayChuyenHang,NgayNhanHang,DiaChi)
VALUES
('T0001', 'A001', '2011-09-12', '2011-09-17', '2011-09-18', N'Hà Nội'),
('T0001', 'A001', '2011-08-20', '2011-08-22', '2011-08-24', N'Hà Nội'),
( 'T0002', 'H002', '2011-07-15', '2011-07-19', '2011-07-20', N'Sài gòn'),
( 'V0001', 'H003', '2011-05-18', '2011-05-24', '2011-05-26', N'Sài gòn'),
( 'V0002', 'P001', '2011-02-14', '2011-02-15', '2011-02-17', N'Hà Nội'),
( 'V0003', 'D001', '2011-09-12', '2011-09-12', '2011-09-15', N'Hà Nội'),
( 'V0004', 'H003', '2011-02-13', '2011-02-13', '2011-02-13', N'Hà Nội'),
( 'T0002', 'Q001', '2011-09-11', '2011-09-12', '2011-09-13', N'Sài gòn'),
( 'V0001', 'A001', '2011-04-17', '2011-04-20', '2011-04-22', N'Sài gòn')

---
INSERT INTO ChiTietDatHang(SoDH,MaHang,SoLuong,GiaBan,MucGiamGia)
VALUES
(1, 'TP01', 4000, 5, 0),
(1, 'TP02', 180000, 5, 5000),
(1, 'TP03', 12000, 5, 0),
(1, 'TP06', 3000, 50, 0),
(1, 'TP07', 40000, 100, 0),
(2, 'MM01', 340000, 30, 10000),
(2, 'MM02', 500000, 20, 20000),
(3, 'MM01', 340000, 30, 10000),
(3, 'MM02', 500000, 30, 20000),
(4, 'MM01', 340000, 80, 10000),
(5, 'TP03', 3000, 1000, 0),
(6, 'DT01', 3100000, 2, 100000),
(6, 'DT05', 18000000, 20, 1000000),
(7, 'TP03', 3000, 200, 0),
(8, 'DT04', 20000000, 2, 1000000),
(9, 'DC01', 48000, 1000, 0),
(9, 'DC02', 2000, 1000, 0),
(9, 'DC03', 7500, 1000, 0)

---CHECK
SELECT * FROM NhaCungCap
SELECT * FROM LoaiHang
SELECT * FROM MatHang
SELECT * FROM NhanVien
SELECT * FROM KhachHang
SELECT * FROM DonDatHang
SELECT * FROM ChiTietDatHang



----------------------------------------------

--1. Họ tên, địa chỉ và thâm niên (số năm làm việc) của những nhân viên có số năm
--thâm niên là nhiều nhất trong công ty.
SELECT Ho, Ten, DiaChi, DATEDIFF(YEAR,NgayVaoLamViec,GETDATE()) AS 'ThamNien'  
FROM NhanVien

--2. Những đơn hàng nào yêu cầu giao hàng ngay tại công ty đặt hàng và những đơn đó
--là của công ty nào?
SELECT MH.TenHang, KH.TenKH FROM MatHang MH
LEFT JOIN ChiTietDatHang CTDH ON CTDH.MaHang = MH.MaHang
LEFT JOIN DonDatHang DDH ON DDH.SoDH = CTDH.SoDH
LEFT JOIN KhachHang KH ON KH.MaKH = DDH.MaKH
WHERE KH.DiaChi = DDH.DiaChi

--3. Xoá khỏi bảng MATHANG những mặt hàng có số lượng bằng 0 hoặc mặt hàng đó
--chưa từng được đặt mua trong bất kỳ đơn đặt hàng nào.
DELETE FROM MatHang
WHERE SoLuongTonKho = 0 
		OR NOT EXISTS (
			SELECT 1
			FROM ChiTietDatHang CTDH
			WHERE CTDH.MaHang = MatHang.MaHang
		)

--4. Mỗi nhân viên của công ty đã lập bao nhiêu đơn đặt hàng (nếu chưa hề lập hóa đơn
--nào thì cho kết quả là 0)
SELECT NV.HO, NV.Ten, COUNT(DDH.SoDH) AS 'So Luong Don Hang' FROM NhanVien NV
LEFT JOIN DonDatHang DDH ON DDH.MaNV = NV.MaNV
GROUP BY Ho, Ten

--5. Tổng số tiền lời mà công ty thu được từ mỗi mặt hàng trong năm 2011.
SELECT MH.MaHang, SUM(MH.GiaVon - CTDH.GiaBan - CTDH.MucGiamGia) AS 'Tong Tien Loi' 
FROM MatHang MH
JOIN ChiTietDatHang CTDH ON CTDH.MaHang = MH.MaHang
JOIN DonDatHang DDH ON DDH.SoDH = CTDH.SoDH
WHERE YEAR(DDH.NgayNhanHang) = 2021
GROUP BY MH.MaHang

--6. Giảm 25% lương của những nhân viên trong năm 2011 không lập được bất kỳ đơn
--đặt hàng nào.
UPDATE NhanVien
SET LuongCoBan = LuongCoBan * 0.75
WHERE MaNV IN (
    SELECT NV.MaNV
    FROM NhanVien NV
    LEFT JOIN DonDatHang DDH ON NV.MaNV = DDH.MaNV AND YEAR(DDH.NgayDatHang) = 2011
    WHERE DDH.MaNV IS NULL
)
GO

--7. Tạo View chứa tổng doanh thu của từng mặt hàng. Biết Tổng Doanh Thu =
--((SoLuong * DonGia) - MucGiamGia)). Sử dụng view vừa tạo để tìm tên những mặt hàng có
--tổng doanh thu lớn nhất.
CREATE VIEW View_TongDoanhThu 
AS
SELECT MH.TenHang,
((CTDH.SoLuong * CTDH.GiaBan) - CTDH.MucGiamGia) AS 'TongDoanhThu'
FROM ChiTietDatHang CTDH
JOIN MatHang MH ON MH.MaHang = CTDH.MaHang
GO

SELECT TOP 5 TenHang, TongDoanhThu FROM View_TongDoanhThu
ORDER BY TongDoanhThu DESC
GO

--8. Tạo stored procedure (SP) nhận 3 tham số là mã mặt hàng (code), giá bán X, giá
--bán Y. Kết quả trả về sẽ được lưu dưới dạng 1 table. SP cho biết những số đơn hàng (SoDH) có
--giá bán mặt hàng thuộc mã code nằm trong khoảng từ X đến Y.
CREATE PROCEDURE SP_GiaBanDH 
	@MaMH NVARCHAR(50),
	@GiaX FLOAT,
	@GiaY FLOAT
AS
BEGIN
	SELECT
		CTDH.SoDH,
		CTDH.GiaBan
	FROM
		ChiTietDatHang CTDH
	WHERE
		CTDH.MaHang = @MaMH
		AND CTDH.GiaBan BETWEEN @GiaX AND @GiaY
END
GO

EXEC SP_GiaBanDH @MaMH = TP07,@GiaX = 80,@GiaY = 200

--9. Cho biết tên những mặt hàng chưa từng được đặt hàng.
SELECT MH.TenHang FROM MatHang MH
LEFT JOIN ChiTietDatHang CTDH ON CTDH.MaHang = MH.MaHang
WHERE CTDH.SoDH IS NULL

--10. Cho biết những đơn đặt hàng nào gồm tất cả các mặt hàng có trong đơn đặt hàng số 5.
SELECT DDH.SoDH, MH.TenHang FROM DonDatHang DDH
JOIN ChiTietDatHang CTDH ON CTDH.SoDH = DDH.SoDH
JOIN MatHang MH ON MH.MaHang = CTDH.MaHang
WHERE DDH.SoDH = 5

--11. Sử dụng biểu thức bảng chung (Common Table Expression – CTE) cho biết tên
--những mặt hàng có số lượng tồn kho không phải là nhiều nhất hoặc ít nhất. 
WITH CTE_TonKho AS (
	SELECT
		TenHang,
		SoLuongTonKho
	FROM 
		MatHang
),
CTE_MAXMIN AS (
	SELECT
		MAX(SoLuongTonKho) AS MAX_TonKho,
		MIN(SoLuongTonKho) AS MIN_TonKho
	FROM
		CTE_TonKho
)
SELECT TenHang FROM CTE_TonKho
CROSS JOIN CTE_MAXMIN
WHERE SoLuongTonKho NOT IN (MAX_TonKho, MIN_TonKho)