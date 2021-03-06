USE [SPRHR]
GO
/****** Object:  Table [dbo].[ChiTietKyLuat]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[ChiTietLich]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/26/2016 11:17:32 PM ******/
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
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuongTrinhDaoTao]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[DanhGia]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[KyLuat]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[lichSuLamViec]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/26/2016 11:17:32 PM ******/
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
/****** Object:  Table [dbo].[PhongBan]    Script Date: 10/26/2016 11:17:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[maPhongBan] [varchar](20) NOT NULL,
	[tenPhongBan] [nvarchar](100) NOT NULL,
	[khuVuc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 10/26/2016 11:17:32 PM ******/
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
ALTER TABLE [dbo].[ChiTietKyLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKyLuat_KyLuat] FOREIGN KEY([maKyLuat])
REFERENCES [dbo].[KyLuat] ([maKyLuat])
ON UPDATE CASCADE
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
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_NhanVien]
GO
ALTER TABLE [dbo].[lichSuLamViec]  WITH CHECK ADD  CONSTRAINT [FK_lichSuLamViec_ChucVu] FOREIGN KEY([maChucVu])
REFERENCES [dbo].[ChucVu] ([maChucVu])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[lichSuLamViec] CHECK CONSTRAINT [FK_lichSuLamViec_ChucVu]
GO
ALTER TABLE [dbo].[lichSuLamViec]  WITH CHECK ADD  CONSTRAINT [FK_lichSuLamViec_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[lichSuLamViec] CHECK CONSTRAINT [FK_lichSuLamViec_NhanVien]
GO
ALTER TABLE [dbo].[lichSuLamViec]  WITH CHECK ADD  CONSTRAINT [FK_lichSuLamViec_PhongBan] FOREIGN KEY([maPhongBan])
REFERENCES [dbo].[PhongBan] ([maPhongBan])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[lichSuLamViec] CHECK CONSTRAINT [FK_lichSuLamViec_PhongBan]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_ChuongTrinhDaoTao] FOREIGN KEY([maChuongTrinhDaoTao])
REFERENCES [dbo].[ChuongTrinhDaoTao] ([machuongTrinhDaoTao])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_ChuongTrinhDaoTao]
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_NhanVien]
GO
