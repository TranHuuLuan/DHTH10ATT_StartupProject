USE [master]
GO
/****** Object:  Database [SPRHR_Solution]    Script Date: 11/9/2016 6:18:30 PM ******/
CREATE DATABASE [SPRHR_Solution]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SPRHR_Solution', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SPRHR_Solution.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SPRHR_Solution_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SPRHR_Solution_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SPRHR_Solution] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SPRHR_Solution].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SPRHR_Solution] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET ARITHABORT OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SPRHR_Solution] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SPRHR_Solution] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SPRHR_Solution] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SPRHR_Solution] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SPRHR_Solution] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET RECOVERY FULL 
GO
ALTER DATABASE [SPRHR_Solution] SET  MULTI_USER 
GO
ALTER DATABASE [SPRHR_Solution] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SPRHR_Solution] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SPRHR_Solution] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SPRHR_Solution] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SPRHR_Solution', N'ON'
GO
USE [SPRHR_Solution]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonBanHang]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBanHang](
	[soHD] [nvarchar](50) NOT NULL,
	[soCTHD] [int] NOT NULL,
	[maSP] [nvarchar](50) NOT NULL,
	[soLuong] [smallint] NOT NULL,
	[gia] [money] NOT NULL,
	[giaKhuyenMai] [money] NOT NULL,
 CONSTRAINT [FK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[soHD] ASC,
	[soCTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonBanSi]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBanSi](
	[MaHoaDonBanSi] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBanSi] [money] NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietHoaDonBanSi] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBanSi] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaCungCap]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaCungCap](
	[MaHoaDonNhaCungCap] [nvarchar](50) NOT NULL,
	[MaSp] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaMuaBenNhaCungCap] [money] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietHoaDonNhaCungCap_1] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhaCungCap] ASC,
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKhuyenMai]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhuyenMai](
	[MaCT] [nvarchar](50) NOT NULL,
	[MaSp] [nvarchar](50) NOT NULL,
	[MucGiam] [float] NOT NULL,
	[DonGia] [money] NOT NULL,
	[GiaKhuyenMai] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietKhuyenMai_1] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC,
	[MaSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKyLuat]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietKyLuat](
	[maKyLuat] [varchar](20) NOT NULL,
	[ngayLapKyLuat] [datetime] NOT NULL,
	[maNhanVien] [varchar](20) NOT NULL,
	[lyDo] [nvarchar](max) NOT NULL,
	[ngayApDungKyLuat] [datetime] NOT NULL,
	[ngayKetThucKyLuat] [datetime] NULL,
 CONSTRAINT [PK_ChiTietKyLuat] PRIMARY KEY CLUSTERED 
(
	[maKyLuat] ASC,
	[ngayLapKyLuat] ASC,
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietLich]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietLich](
	[maLich] [varchar](20) NOT NULL,
	[maNhanVien] [varchar](20) NOT NULL,
	[ngayBatDau] [datetime] NOT NULL,
	[ngayKetThuc] [datetime] NULL,
	[ghiChu] [nvarchar](250) NULL,
 CONSTRAINT [PK_ChiTietLich_1] PRIMARY KEY CLUSTERED 
(
	[maLich] ASC,
	[maNhanVien] ASC,
	[ngayBatDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhieuDNNK]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDNNK](
	[MaPhieuDNNK] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuDeNghiNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDNNK] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuDNXK]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuDNXK](
	[MaPhieuDNXK] [nvarchar](15) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ChiTieuXuatKho_1] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDNXK] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuThuNo]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuThuNo](
	[SoPhieuThuNo] [nvarchar](50) NOT NULL,
	[SoHoaDon] [nvarchar](50) NOT NULL,
	[SoTien] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuThuNo] PRIMARY KEY CLUSTERED 
(
	[SoPhieuThuNo] ASC,
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuTraNo]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuTraNo](
	[SoPhieuTraNo] [nvarchar](50) NOT NULL,
	[SoPhieuMuaHang] [nvarchar](50) NOT NULL,
	[SoTien] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuTraNo] PRIMARY KEY CLUSTERED 
(
	[SoPhieuTraNo] ASC,
	[SoPhieuMuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[maChucVu] [varchar](20) NOT NULL,
	[tenChucVU] [nvarchar](100) NOT NULL,
	[moTa] [nvarchar](max) NULL,
	[maPhongBan] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuongTrinhDaoTao]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuongTrinhDaoTao](
	[machuongTrinhDaoTao] [varchar](20) NOT NULL,
	[tenChuongTrinhDaoTao] [nvarchar](30) NOT NULL,
	[ghiChu] [nvarchar](500) NULL,
	[coSoDaoTao] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TrinhDoHocVan_1] PRIMARY KEY CLUSTERED 
(
	[machuongTrinhDaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuongTrinhKhuyenMai]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuongTrinhKhuyenMai](
	[MaCT] [nvarchar](50) NOT NULL,
	[TenCT] [nvarchar](50) NOT NULL,
	[NgayKhoiDong] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChuongTrinhKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhGia](
	[maNhanVien] [varchar](20) NOT NULL,
	[ngayDanhGia] [date] NOT NULL,
	[loaiDanhGia] [nvarchar](50) NOT NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC,
	[ngayDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhMucCuaHang]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucCuaHang](
	[MaCuaHang] [varchar](15) NOT NULL,
	[TenCuaHang] [nvarchar](150) NOT NULL,
	[DiaChi] [nvarchar](250) NOT NULL,
	[SoDienThoai] [varchar](15) NOT NULL,
	[TinhTrang] [int] NOT NULL,
 CONSTRAINT [PK_DanhMucCuaHang_1] PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[soHD] [nvarchar](50) NOT NULL,
	[maKH] [nvarchar](50) NOT NULL,
	[maNV] [varchar](20) NOT NULL,
	[tongTien] [money] NOT NULL,
	[ngayLap] [datetime] NOT NULL,
	[VAT] [bit] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[soHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonBanSi]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBanSi](
	[MaHoaDonBanSi] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[NgayLap] [datetime] NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK_HoaDonBanSi] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBanSi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonNhaCungCap]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonNhaCungCap](
	[MaHoaDonNCC] [nvarchar](50) NOT NULL,
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK_HoaDonNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[DiaChiKH] [nvarchar](50) NULL,
	[SDTKH] [varchar](12) NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[MaSoThue] [varchar](12) NULL,
	[TenCongTy] [nvarchar](150) NULL,
	[DiaChiCongTy] [nvarchar](250) NULL,
	[SDTCongTy] [varchar](12) NULL,
	[EmailCongTy] [varchar](150) NULL,
	[SoTaiKhoanNH] [varchar](15) NULL,
	[TenNH] [nvarchar](150) NULL,
	[ChiNhanhNH] [nvarchar](150) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KyLuat]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KyLuat](
	[maKyLuat] [varchar](20) NOT NULL,
	[dieuKhoanKyLuat] [nvarchar](max) NOT NULL,
	[hinhThucKyLuat] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKyLuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[maLich] [varchar](20) NOT NULL,
	[caLamViec] [varchar](10) NOT NULL,
	[gioLam] [time](7) NOT NULL,
	[gioKetThuc] [time](7) NOT NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LichLamViec] PRIMARY KEY CLUSTERED 
(
	[maLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lichSuLamViec]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lichSuLamViec](
	[maNhanVien] [varchar](20) NOT NULL,
	[maPhongBan] [varchar](20) NOT NULL,
	[ngayBatDauLamViec] [datetime] NOT NULL,
	[ngayKetThuc] [datetime] NULL,
	[maChucVu] [varchar](20) NOT NULL,
 CONSTRAINT [PK_lichSuLamViec] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC,
	[maPhongBan] ASC,
	[ngayBatDauLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](50) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[Style] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [nvarchar](50) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Phone] [int] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](20) NOT NULL,
	[hoTenNhanVien] [nvarchar](30) NOT NULL,
	[ngayBatDauLamViec] [date] NOT NULL,
	[tinhTrang] [varchar](20) NOT NULL,
	[soTKNganHang] [varchar](20) NOT NULL,
	[soDT] [varchar](11) NOT NULL,
	[queQuan] [nvarchar](100) NULL,
	[Email] [nvarchar](30) NOT NULL,
	[soCMND] [varchar](15) NOT NULL,
	[diaChi] [nvarchar](250) NOT NULL,
	[gioiTinh] [nvarchar](10) NOT NULL,
	[ngaySinh] [date] NOT NULL,
 CONSTRAINT [PK__NhanVien__BDDEF20D6B5FAD78] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDNNK]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuDNNK](
	[MaPhieuDNNK] [nvarchar](20) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaKho] [nvarchar](50) NOT NULL,
	[tinhtrang] [int] NOT NULL,
	[MaHoaDonNCC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuDeNghiNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDNNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDNXK]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuDNXK](
	[MaPhieuDNXK] [nvarchar](15) NOT NULL,
	[MaNhanVien] [varchar](20) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[MaKho] [nvarchar](50) NOT NULL,
	[tinhtrang] [int] NOT NULL,
 CONSTRAINT [PK_PhieuDeNghiXuatKho] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDNXK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[sopnk] [nvarchar](20) NOT NULL,
	[sopdnn] [nvarchar](50) NOT NULL,
	[manhanvien] [varchar](20) NOT NULL,
	[ngaylap] [date] NOT NULL,
	[makho] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[sopnk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuThuNo]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThuNo](
	[SoPhieuThuNo] [nvarchar](50) NOT NULL,
	[TongTien] [money] NOT NULL,
	[ThoiGian] [date] NOT NULL,
 CONSTRAINT [PK_PhieuThuNo] PRIMARY KEY CLUSTERED 
(
	[SoPhieuThuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuTraNo]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTraNo](
	[SoPhieuTraNo] [nvarchar](50) NOT NULL,
	[TongTien] [money] NOT NULL,
	[ThoiGian] [date] NOT NULL,
 CONSTRAINT [PK_PhieuTraNo] PRIMARY KEY CLUSTERED 
(
	[SoPhieuTraNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuatKho]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuXuatKho](
	[soPXK] [nvarchar](15) NOT NULL,
	[manhanvien] [varchar](20) NOT NULL,
	[ngaylap] [date] NOT NULL,
	[makho] [nvarchar](50) NOT NULL,
	[MaCuaHang] [varchar](15) NULL,
	[MaKH] [nvarchar](50) NULL,
	[ghiChu] [nvarchar](250) NULL,
 CONSTRAINT [PK_PhieuXuatKhp] PRIMARY KEY CLUSTERED 
(
	[soPXK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[maPhongBan] [varchar](20) NOT NULL,
	[tenPhongBan] [nvarchar](100) NOT NULL,
	[maTruongPhong] [varchar](20) NOT NULL,
	[khuVuc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhuongThucThanhToan]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhuongThucThanhToan](
	[maPhuongThuc] [varchar](50) NOT NULL,
	[tenPhuongThuc] [nvarchar](50) NOT NULL,
	[moTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhuongThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[maPhuongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuanLyKho]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuanLyKho](
	[maKho] [varchar](15) NOT NULL,
	[manhanvien] [varchar](20) NOT NULL,
	[chucVu] [nvarchar](50) NOT NULL,
	[thoiGianBatDau] [date] NOT NULL,
	[thoiGianKetThuc] [date] NOT NULL,
 CONSTRAINT [PK_QuanLyKho] PRIMARY KEY CLUSTERED 
(
	[maKho] ASC,
	[manhanvien] ASC,
	[thoiGianBatDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuaTrinhDaoTao](
	[maNhanVien] [varchar](20) NOT NULL,
	[maChuongTrinhDaoTao] [varchar](20) NOT NULL,
	[ngayDuocDaoTao] [date] NOT NULL,
	[ngayKetThucDaoTao] [date] NOT NULL,
	[loaiDanhGia] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_QuaTrinhDaoTao] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC,
	[maChuongTrinhDaoTao] ASC,
	[ngayDuocDaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](50) NOT NULL,
	[TenSp] [nvarchar](50) NOT NULL,
	[NgaySanXuat] [datetime] NOT NULL,
	[DonViTinh] [nvarchar](30) NOT NULL,
	[KieuDang] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NOT NULL,
	[TrongLuong] [float] NOT NULL,
	[MaLoaiSanPham] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](500) NULL,
	[NgayHetHan] [datetime] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[soHD] [nvarchar](50) NOT NULL,
	[tien] [money] NOT NULL,
	[maPhuongThuc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[soHD] ASC,
	[maPhuongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheThanhVien]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThanhVien](
	[MaThe] [nvarchar](50) NOT NULL,
	[NgayCapThe] [datetime] NOT NULL,
	[SoDiem] [int] NOT NULL,
	[TenThanhVien] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoCmnd] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TheThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinKho]    Script Date: 11/9/2016 6:18:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinKho](
	[maKho] [varchar](15) NOT NULL,
	[tenKho] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](250) NOT NULL,
	[soDienThoai] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_ThongTinKho] PRIMARY KEY CLUSTERED 
(
	[maKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[HoaDonBanHang] ADD  CONSTRAINT [DF_HoaDonBanHang_VAT]  DEFAULT ((0)) FOR [VAT]
GO
ALTER TABLE [dbo].[PhieuDNXK] ADD  CONSTRAINT [DF_PhieuDeNghiXuatKho_tinhtrang]  DEFAULT ((0)) FOR [tinhtrang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanHang_HoaDonBanHang] FOREIGN KEY([soHD])
REFERENCES [dbo].[HoaDonBanHang] ([soHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang] CHECK CONSTRAINT [FK_ChiTietHoaDonBanHang_HoaDonBanHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanHang_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang] CHECK CONSTRAINT [FK_ChiTietHoaDonBanHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanSi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanSi_HoaDonBanSi] FOREIGN KEY([MaHoaDonBanSi])
REFERENCES [dbo].[HoaDonBanSi] ([MaHoaDonBanSi])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanSi] CHECK CONSTRAINT [FK_ChiTietHoaDonBanSi_HoaDonBanSi]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanSi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanSi_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanSi] CHECK CONSTRAINT [FK_ChiTietHoaDonBanSi_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaCungCap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaCungCap_HoaDonNhaCungCap] FOREIGN KEY([MaHoaDonNhaCungCap])
REFERENCES [dbo].[HoaDonNhaCungCap] ([MaHoaDonNCC])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaCungCap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaCungCap_HoaDonNhaCungCap]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaCungCap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaCungCap_SanPham] FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaCungCap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaCungCap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_ChuongTrinhKhuyenMai] FOREIGN KEY([MaCT])
REFERENCES [dbo].[ChuongTrinhKhuyenMai] ([MaCT])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_ChuongTrinhKhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_SanPham] FOREIGN KEY([MaSp])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKyLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKyLuat_KyLuat] FOREIGN KEY([maKyLuat])
REFERENCES [dbo].[KyLuat] ([maKyLuat])
GO
ALTER TABLE [dbo].[ChiTietKyLuat] CHECK CONSTRAINT [FK_ChiTietKyLuat_KyLuat]
GO
ALTER TABLE [dbo].[ChiTietKyLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKyLuat_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietKyLuat] CHECK CONSTRAINT [FK_ChiTietKyLuat_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietLich]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLich_LichLamViec] FOREIGN KEY([maLich])
REFERENCES [dbo].[LichLamViec] ([maLich])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLich] CHECK CONSTRAINT [FK_ChiTietLich_LichLamViec]
GO
ALTER TABLE [dbo].[ChiTietLich]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietLich_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiTietLich] CHECK CONSTRAINT [FK_ChiTietLich_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietPhieuDNNK]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDNNK_PhieuDNNK] FOREIGN KEY([MaPhieuDNNK])
REFERENCES [dbo].[PhieuDNNK] ([MaPhieuDNNK])
GO
ALTER TABLE [dbo].[ChiTietPhieuDNNK] CHECK CONSTRAINT [FK_ChiTietPhieuDNNK_PhieuDNNK]
GO
ALTER TABLE [dbo].[ChiTietPhieuDNNK]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDNNK_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuDNNK] CHECK CONSTRAINT [FK_ChiTietPhieuDNNK_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuDNXK]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDNXK_PhieuDNXK] FOREIGN KEY([MaPhieuDNXK])
REFERENCES [dbo].[PhieuDNXK] ([MaPhieuDNXK])
GO
ALTER TABLE [dbo].[ChiTietPhieuDNXK] CHECK CONSTRAINT [FK_ChiTietPhieuDNXK_PhieuDNXK]
GO
ALTER TABLE [dbo].[ChiTietPhieuDNXK]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuDNXK_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuDNXK] CHECK CONSTRAINT [FK_ChiTietPhieuDNXK_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuThuNo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuThuNo_HoaDonBanHang] FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[HoaDonBanHang] ([soHD])
GO
ALTER TABLE [dbo].[ChiTietPhieuThuNo] CHECK CONSTRAINT [FK_ChiTietPhieuThuNo_HoaDonBanHang]
GO
ALTER TABLE [dbo].[ChiTietPhieuThuNo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuThuNo_PhieuThuNo] FOREIGN KEY([SoPhieuThuNo])
REFERENCES [dbo].[PhieuThuNo] ([SoPhieuThuNo])
GO
ALTER TABLE [dbo].[ChiTietPhieuThuNo] CHECK CONSTRAINT [FK_ChiTietPhieuThuNo_PhieuThuNo]
GO
ALTER TABLE [dbo].[ChiTietPhieuTraNo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuTraNo_HoaDonBanSi] FOREIGN KEY([SoPhieuMuaHang])
REFERENCES [dbo].[HoaDonBanSi] ([MaHoaDonBanSi])
GO
ALTER TABLE [dbo].[ChiTietPhieuTraNo] CHECK CONSTRAINT [FK_ChiTietPhieuTraNo_HoaDonBanSi]
GO
ALTER TABLE [dbo].[ChiTietPhieuTraNo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuTraNo_PhieuTraNo] FOREIGN KEY([SoPhieuTraNo])
REFERENCES [dbo].[PhieuTraNo] ([SoPhieuTraNo])
GO
ALTER TABLE [dbo].[ChiTietPhieuTraNo] CHECK CONSTRAINT [FK_ChiTietPhieuTraNo_PhieuTraNo]
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanHang_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [FK_HoaDonBanHang_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanHang_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [FK_HoaDonBanHang_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonBanSi]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanSi_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBanSi] CHECK CONSTRAINT [FK_HoaDonBanSi_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonNhaCungCap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaCungCap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[HoaDonNhaCungCap] CHECK CONSTRAINT [FK_HoaDonNhaCungCap_NhaCungCap]
GO
ALTER TABLE [dbo].[lichSuLamViec]  WITH CHECK ADD  CONSTRAINT [FK_HistoryLvUp_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[lichSuLamViec] CHECK CONSTRAINT [FK_HistoryLvUp_NhanVien]
GO
ALTER TABLE [dbo].[lichSuLamViec]  WITH CHECK ADD  CONSTRAINT [FK_lichSuLamViec_ChucVu] FOREIGN KEY([maChucVu])
REFERENCES [dbo].[ChucVu] ([maChucVu])
GO
ALTER TABLE [dbo].[lichSuLamViec] CHECK CONSTRAINT [FK_lichSuLamViec_ChucVu]
GO
ALTER TABLE [dbo].[lichSuLamViec]  WITH CHECK ADD  CONSTRAINT [FK_lichSuLamViec_PhongBan] FOREIGN KEY([maPhongBan])
REFERENCES [dbo].[PhongBan] ([maPhongBan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[lichSuLamViec] CHECK CONSTRAINT [FK_lichSuLamViec_PhongBan]
GO
ALTER TABLE [dbo].[PhieuDNNK]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDeNghiNhapKho_PhieuNhapKho] FOREIGN KEY([MaPhieuDNNK])
REFERENCES [dbo].[PhieuNhapKho] ([sopnk])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDNNK] CHECK CONSTRAINT [FK_PhieuDeNghiNhapKho_PhieuNhapKho]
GO
ALTER TABLE [dbo].[PhieuDNNK]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDNNK_HoaDonNhaCungCap] FOREIGN KEY([MaHoaDonNCC])
REFERENCES [dbo].[HoaDonNhaCungCap] ([MaHoaDonNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDNNK] CHECK CONSTRAINT [FK_PhieuDNNK_HoaDonNhaCungCap]
GO
ALTER TABLE [dbo].[PhieuDNXK]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDeNghiXuatKho_PhieuXuatKho] FOREIGN KEY([MaPhieuDNXK])
REFERENCES [dbo].[PhieuXuatKho] ([soPXK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuDNXK] CHECK CONSTRAINT [FK_PhieuDeNghiXuatKho_PhieuXuatKho]
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho_NhanVien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho_NhanVien]
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatKho_DanhMucCuaHang] FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[DanhMucCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuXuatKho] CHECK CONSTRAINT [FK_PhieuXuatKho_DanhMucCuaHang]
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatKho_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuXuatKho] CHECK CONSTRAINT [FK_PhieuXuatKho_KhachHang]
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatKho_NhanVien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuXuatKho] CHECK CONSTRAINT [FK_PhieuXuatKho_NhanVien]
GO
ALTER TABLE [dbo].[QuanLyKho]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyKho_NhanVien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[QuanLyKho] CHECK CONSTRAINT [FK_QuanLyKho_NhanVien]
GO
ALTER TABLE [dbo].[QuanLyKho]  WITH CHECK ADD  CONSTRAINT [FK_QuanLyKho_ThongTinKho] FOREIGN KEY([maKho])
REFERENCES [dbo].[ThongTinKho] ([maKho])
GO
ALTER TABLE [dbo].[QuanLyKho] CHECK CONSTRAINT [FK_QuanLyKho_ThongTinKho]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_ChuongTrinhDaoTao] FOREIGN KEY([maChuongTrinhDaoTao])
REFERENCES [dbo].[ChuongTrinhDaoTao] ([machuongTrinhDaoTao])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_ChuongTrinhDaoTao]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhHoc_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhHoc_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_HoaDonBanHang] FOREIGN KEY([soHD])
REFERENCES [dbo].[HoaDonBanHang] ([soHD])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_HoaDonBanHang]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_PhuongThucThanhToan] FOREIGN KEY([maPhuongThuc])
REFERENCES [dbo].[PhuongThucThanhToan] ([maPhuongThuc])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_PhuongThucThanhToan]
GO
ALTER TABLE [dbo].[TheThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThanhVien_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[TheThanhVien] CHECK CONSTRAINT [FK_TheThanhVien_KhachHang]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đào tạo kỹ năng hoặc chương trình' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuongTrinhDaoTao', @level2type=N'COLUMN',@level2name=N'tenChuongTrinhDaoTao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nhan vien de nghi xuat kho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhieuDNXK', @level2type=N'COLUMN',@level2name=N'MaNhanVien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: chua xu ly,1 da xu ly, -1: huy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhieuDNXK', @level2type=N'COLUMN',@level2name=N'tinhtrang'
GO
USE [master]
GO
ALTER DATABASE [SPRHR_Solution] SET  READ_WRITE 
GO
