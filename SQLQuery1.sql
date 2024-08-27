create database QLBVT;
use QLBVT;

---1 (Thạch)
create table tuyenduongray 
  (matuyenduong char(10) primary key not null, 
   tentuyenduong nvarchar(50),
   vitri nvarchar(50),
   chieudai int,
   ghichu nvarchar(50));

---2 (Quỳnh)
create table gatau 
  (magatau char(5) primary key not null,
   tenga nvarchar(50),
   matuyenduong char(10) references tuyenduongray(matuyenduong),
   vitri nvarchar(30),
   ghichu nvarchar(50));
   DROP TABLE chuyentau
---3 (Quỳnh)
create table tau 
  (matau char(10) primary key not null,
   tentau nvarchar(50) not null,
   hangsanxuat nvarchar(30),
   sokhoangtau int,
   soghemem int,
   soghecung int,
   sogiuongnam int,
   tongsoghe int);

---4 (Quỳnh)
create table chuyentau 
  (machuyentau char(10) primary key not null,
   matuyenduong char(10) references tuyenduongray(matuyenduong),
   matau char(10) references tau(matau),
   gakhoihanh nvarchar(30),
   gado nvarchar(30),
   gaden nvarchar(30),
   ngayden date,
   ngaydi date,
   giokhoihanh time, 
   gioden time);

---5 (Bách)
create table thongtinchitietve 
  (mave char(10) primary key not null,
   machuyentau char(10) references chuyentau(machuyentau),
   loaive nvarchar(30),
   soluong int,
   soluongcon int,
   giave int);

---6 (Thạch)
create table khachhang 
  (makh char(10) primary key not null,
   tenkh nvarchar(50),
   sdt char(10),
   diachi nvarchar(50),
   cmnd char(12));

---7 (Thạch)
create table nhanvien 
  (manv char(10) primary key,
   tennv nvarchar(10),
   diachi nvarchar(50),
   sdt char(10),
   ngaylam date,
   giolam date);

---8 (Bách)
create table hoadon 
  (mahoadon char(10) primary key not null,
   makh char(10) references khachhang(makh),
   mave char(10) references thongtinchitietve(mave),
   manv char(10) references nhanvien(manv),
   soluongve int,
   ngaylaphoadon date,
   thanhtien int,
   hinhthucthanhtoan nvarchar(50));
Select * FROM tuyenduongray

INSERT INTO tuyenduongray VALUES (N'TDA', N'Ha Noi - Hai Phong',N'Ha Noi',2000,N'a');
INSERT INTO tuyenduongray VALUES (N'TDB', N'Ha Noi - Da Nang',N'Ha Noi',3000,N'b');
INSERT INTO tuyenduongray VALUES (N'TDC', N'Ha Noi - Nha Trang',N'Ha Noi',4000,N'c');
INSERT INTO tuyenduongray VALUES (N'TDD', N'Ha Noi - Can Tho',N'Ha Noi',5000,N'd');
INSERT INTO tuyenduongray VALUES (N'TDE', N'Ha Noi - Ca Mau',N'Ha Noi',6000,N'e');

Select * FROM gatau

INSERT INTO gatau VALUES (N'GTA', N'Ha Noi', N'TDA',N'Ha Noi',N'a');
INSERT INTO gatau VALUES (N'GTB', N'Da Nang',N'TDB',N'Da Nang',N'b');
INSERT INTO gatau VALUES (N'GTC', N'Nha Trang',N'TDC',N'Nha Trang',N'c');
INSERT INTO gatau VALUES (N'GTD', N'Can Tho',N'TDD',N'Can Tho',N'c');
INSERT INTO gatau VALUES (N'GTE', N'Ca Mau',N'TDE',N'Ca Mau',N'c');

Select * FROM tau
INSERT INTO  tau VALUES (N'A1',N'TAU1',N'Trung Quoc',8,15,15,15,45)
INSERT INTO  tau VALUES (N'A2',N'TAU2',N'Nga',9,18,12,11,50)
INSERT INTO  tau VALUES (N'A3',N'TAU3',N'My',10,17,21,34,123)
INSERT INTO  tau VALUES (N'A4',N'TAU4',N'Viet Nam',11,15,16,17,234)
INSERT INTO  tau VALUES (N'A5',N'TAU5',N'Lao',21,45,11,13,24)



Select * FROM chuyentau
INSERT INTO chuyentau VALUES (N'ABC',N'TDA',N'A1',N'Ha Noi',N'Ha Noi',N'Hai Phong',N'2021-12-8',N'2021-12-7',N'15:00',N'7:00')
INSERT INTO chuyentau VALUES (N'ABD',N'TDB',N'A2',N'Ha Noi',N'Ha Noi',N'Da Nang',N'2021-11-9',N'2021-11-9',N'12:10',N'8:00')
INSERT INTO chuyentau VALUES (N'ABE',N'TDC',N'A3',N'Ha Noi',N'Ha Noi',N'Nha Trang',N'2021-2-1',N'2021-2-1',N'13:05',N'9:00')
INSERT INTO chuyentau VALUES (N'ABF',N'TDD',N'A4',N'Ha Noi',N'Ha Noi',N'Can Tho',N'2021-3-5',N'2021-3-4',N'11:20',N'10:00')
INSERT INTO chuyentau VALUES (N'ABG',N'TDE',N'A5',N'Ha Noi',N'Ha Noi',N'Ca Mau',N'2021-5-6',N'2021-5-5',N'16:30',N'11:00')

CREATE TRIGGER CAPNHATGIA ON tau FOR UPDATE 
AS 
BEGIN
UPDATE hangsanxuat
    SET hangsanxuat = inserted.gado
	FROM tau, chuyentau 
	
END
GO

DISABLE TRIGGER CAPNHATGIA ON tau;
ENABLE TRIGGER CAPNHATGIA ON tau;