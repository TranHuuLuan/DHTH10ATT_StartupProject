USE [master]
GO
/****** Object:  Database [QL Kho]    Script Date: 02/10/2016 09:34:46 CH ******/
CREATE DATABASE [QL Kho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL Kho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QL Kho.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL Kho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QL Kho_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL Kho] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL Kho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL Kho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL Kho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL Kho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL Kho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL Kho] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL Kho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL Kho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL Kho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL Kho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL Kho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL Kho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL Kho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL Kho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL Kho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL Kho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL Kho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL Kho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL Kho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL Kho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL Kho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL Kho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL Kho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL Kho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL Kho] SET  MULTI_USER 
GO
ALTER DATABASE [QL Kho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL Kho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL Kho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL Kho] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL Kho] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QL Kho]
GO
/****** Object:  Table [dbo].[BaoCaoTinhTrang]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoTinhTrang](
	[mabaocao] [nvarchar](50) NOT NULL,
	[manhanvien] [nvarchar](50) NOT NULL,
	[ngaylap] [date] NOT NULL,
	[masp] [nvarchar](50) NOT NULL,
	[soluong] [int] NOT NULL,
	[ghichu] [int] NOT NULL,
 CONSTRAINT [PK_BaoCaoTinhTrang] PRIMARY KEY CLUSTERED 
(
	[mabaocao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[soctpn] [int] NOT NULL,
	[sopn] [nvarchar](50) NOT NULL,
	[masp] [nvarchar](50) NOT NULL,
	[soluongnhap] [int] NOT NULL,
	[soluongtheochungtu] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[soctpn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieuXuat]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuXuat](
	[soctpx] [int] NOT NULL,
	[sopx] [nvarchar](50) NOT NULL,
	[masp] [nvarchar](50) NOT NULL,
	[soluongxuat] [int] NOT NULL,
	[soluongtheochungtu] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[soctpx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[manhanvien] [nvarchar](50) NOT NULL,
	[tennv] [nchar](10) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[sopn] [nvarchar](50) NOT NULL,
	[sohopdong] [nvarchar](50) NOT NULL,
	[manhanvien] [nvarchar](50) NOT NULL,
	[ngaylap] [date] NOT NULL,
	[diadiem] [nvarchar](50) NOT NULL,
	[tennguoigiaohang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[sopn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuXuatKho]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuatKho](
	[sopx] [nvarchar](50) NOT NULL,
	[sohopdong] [nvarchar](50) NOT NULL,
	[manhanvien] [nvarchar](50) NOT NULL,
	[ngaylap] [date] NOT NULL,
	[diadiem] [nvarchar](50) NOT NULL,
	[tennguoinhanhang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuXuatKhp] PRIMARY KEY CLUSTERED 
(
	[sopx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 02/10/2016 09:34:46 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[masp] [nvarchar](50) NOT NULL,
	[tensp] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BaoCaoTinhTrang]  WITH CHECK ADD  CONSTRAINT [FK_BaoCaoTinhTrang_NhanVien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NhanVien] ([manhanvien])
GO
ALTER TABLE [dbo].[BaoCaoTinhTrang] CHECK CONSTRAINT [FK_BaoCaoTinhTrang_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhapKho] FOREIGN KEY([sopn])
REFERENCES [dbo].[PhieuNhapKho] ([sopn])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhapKho]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([masp])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuatKho] FOREIGN KEY([sopx])
REFERENCES [dbo].[PhieuXuatKho] ([sopx])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_PhieuXuatKho]
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuXuat_SanPham] FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([masp])
GO
ALTER TABLE [dbo].[ChiTietPhieuXuat] CHECK CONSTRAINT [FK_ChiTietPhieuXuat_SanPham]
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho_NhanVien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NhanVien] ([manhanvien])
GO
ALTER TABLE [dbo].[PhieuNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho_NhanVien]
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuatKho_NhanVien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[NhanVien] ([manhanvien])
GO
ALTER TABLE [dbo].[PhieuXuatKho] CHECK CONSTRAINT [FK_PhieuXuatKho_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QL Kho] SET  READ_WRITE 
GO
