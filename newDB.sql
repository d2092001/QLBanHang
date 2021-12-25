/*
 Navicat Premium Data Transfer

 Source Server         : DO_AN(LT.NET)
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : ADMIN\SQLEXPRESS:1433
 Source Catalog        : QLBanHang
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 25/12/2021 19:31:16
*/


-- ----------------------------
-- Table structure for tbl_chitietHDban
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_chitietHDban]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_chitietHDban]
GO

CREATE TABLE [dbo].[tbl_chitietHDban] (
  [MaHDban] int  NOT NULL,
  [Mahang] int  NULL,
  [Soluong] int  NULL,
  [Dongia] float(53)  NULL,
  [Giamgia] float(53)  NULL,
  [Thanhtien] float(53)  NULL
)
GO

ALTER TABLE [dbo].[tbl_chitietHDban] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_chitietHDban
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_Hang
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Hang]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_Hang]
GO

CREATE TABLE [dbo].[tbl_Hang] (
  [Mahang] int  NOT NULL,
  [Tenhang] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Loaisim] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Soluong] float(53)  NULL,
  [Dongianhap] float(53)  NULL,
  [Dongiaban] float(53)  NULL,
  [Anh] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Ghichu] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Maloaisim] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_Hang] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_Hang
-- ----------------------------
INSERT INTO [dbo].[tbl_Hang] ([Mahang], [Tenhang], [Loaisim], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu], [Maloaisim]) VALUES (N'101', N'sim chuẩn', NULL, N'10', N'50000', N'20000', N'C:\Users\Admin\Desktop\taixuong.jpg', N'note', N'MT5')
GO

INSERT INTO [dbo].[tbl_Hang] ([Mahang], [Tenhang], [Loaisim], [Soluong], [Dongianhap], [Dongiaban], [Anh], [Ghichu], [Maloaisim]) VALUES (N'103', N'sim thường', NULL, N'210', N'50000', N'2000', N'C:\Users\Admin\Desktop\sim1.jpg', N'note nè', N'MT05')
GO


-- ----------------------------
-- Table structure for tbl_HDban
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_HDban]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_HDban]
GO

CREATE TABLE [dbo].[tbl_HDban] (
  [Mahdban] int  NOT NULL,
  [Manv] int  NULL,
  [Ngayban] datetime  NULL,
  [Makh] int  NULL,
  [Tongtien] float(53)  NULL
)
GO

ALTER TABLE [dbo].[tbl_HDban] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_HDban
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_khach
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_khach]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_khach]
GO

CREATE TABLE [dbo].[tbl_khach] (
  [Makh] int  NOT NULL,
  [Tenkh] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Diachi] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Dienthoai] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_khach] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_khach
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_LoaiSim
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_LoaiSim]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_LoaiSim]
GO

CREATE TABLE [dbo].[tbl_LoaiSim] (
  [MaLoaiSim] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TenLoaiSim] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tbl_LoaiSim] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_LoaiSim
-- ----------------------------
INSERT INTO [dbo].[tbl_LoaiSim] ([MaLoaiSim], [TenLoaiSim]) VALUES (N'MT05', N'gọi điện giá rẻ')
GO

INSERT INTO [dbo].[tbl_LoaiSim] ([MaLoaiSim], [TenLoaiSim]) VALUES (N'MT5', N'lên mạng ')
GO


-- ----------------------------
-- Table structure for tbl_nhanvien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_nhanvien]') AND type IN ('U'))
	DROP TABLE [dbo].[tbl_nhanvien]
GO

CREATE TABLE [dbo].[tbl_nhanvien] (
  [Manv] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Tennv] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gioitinh] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Diachi] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Dienthoai] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Ngaysinh] datetime  NULL
)
GO

ALTER TABLE [dbo].[tbl_nhanvien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tbl_nhanvien
-- ----------------------------
INSERT INTO [dbo].[tbl_nhanvien] ([Manv], [Tennv], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (N'1', N'duc', N'Nữ', N'vinh', N'(054) 948-9497', N'1900-01-01 00:00:00.000')
GO

INSERT INTO [dbo].[tbl_nhanvien] ([Manv], [Tennv], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (N'2', N'duc', N'Nam', N'vinh', N'(054) 948-9497', N'1900-01-01 00:00:00.000')
GO

INSERT INTO [dbo].[tbl_nhanvien] ([Manv], [Tennv], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (N'3', N'duc', N'Nam', N'vinh', N'(054) 948-9497', N'2021-12-14 00:00:00.000')
GO

INSERT INTO [dbo].[tbl_nhanvien] ([Manv], [Tennv], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (N'4', N'duc nè', N'Nam', N'nam', N'(054) 196-4986', N'2001-01-24 00:00:00.000')
GO

INSERT INTO [dbo].[tbl_nhanvien] ([Manv], [Tennv], [Gioitinh], [Diachi], [Dienthoai], [Ngaysinh]) VALUES (N'5', N'Thach', N'Nữ', N'hn', N'(159) 450-6849', N'2021-12-15 00:00:00.000')
GO


-- ----------------------------
-- Primary Key structure for table tbl_chitietHDban
-- ----------------------------
ALTER TABLE [dbo].[tbl_chitietHDban] ADD CONSTRAINT [PK__tbl_chit__5A50F214C0B6C09E] PRIMARY KEY CLUSTERED ([MaHDban])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_Hang
-- ----------------------------
ALTER TABLE [dbo].[tbl_Hang] ADD CONSTRAINT [PK__tbl_Hang__03BBFE2160436861] PRIMARY KEY CLUSTERED ([Mahang])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_HDban
-- ----------------------------
ALTER TABLE [dbo].[tbl_HDban] ADD CONSTRAINT [PK__tbl_HDba__54AF0EF1B2AEF6D1] PRIMARY KEY CLUSTERED ([Mahdban])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_khach
-- ----------------------------
ALTER TABLE [dbo].[tbl_khach] ADD CONSTRAINT [PK__tbl_khac__2724C31621A787BC] PRIMARY KEY CLUSTERED ([Makh])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_LoaiSim
-- ----------------------------
ALTER TABLE [dbo].[tbl_LoaiSim] ADD CONSTRAINT [PK_tbl_LoaiSim] PRIMARY KEY CLUSTERED ([MaLoaiSim])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tbl_nhanvien
-- ----------------------------
ALTER TABLE [dbo].[tbl_nhanvien] ADD CONSTRAINT [PK_tbl_nhanvien] PRIMARY KEY CLUSTERED ([Manv])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

