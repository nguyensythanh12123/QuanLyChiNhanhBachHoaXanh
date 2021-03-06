USE [BachHoaXanhKi6]
GO
/****** Object:  Table [dbo].[BangGia]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangGia](
	[MaSP] [char](10) NOT NULL,
	[GiaBan] [float] NULL,
	[GiaKhuyenMai] [float] NULL,
	[NgayAD] [datetime] NOT NULL,
	[MaNV] [char](10) NULL,
 CONSTRAINT [PK_BangGia] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[NgayAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [float] NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[MaSP] [char](10) NOT NULL,
	[SoLuongNhap] [int] NULL,
	[GiaNhap] [float] NULL,
	[ThanhTienNhap] [float] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[NSX] [date] NULL,
	[HSD] [date] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[MaSP] [char](10) NOT NULL,
	[MaPN] [char](10) NOT NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [char](10) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TongTien] [float] NULL,
	[TrinhTrangTT] [nvarchar](max) NULL,
	[MaNV] [char](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNV] [char](10) NOT NULL,
	[TenLoaiNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [char](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ManHinh](
	[MaManHinh] [char](10) NOT NULL,
	[TenManHinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ManHinh] PRIMARY KEY CLUSTERED 
(
	[MaManHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[Email] [nchar](50) NULL,
	[MatKhau] [varchar](10) NULL,
	[HinhNV] [varchar](max) NULL,
	[MaLoaiNV] [char](10) NULL,
	[NgayVL] [date] NULL,
	[CMT] [char](9) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaManHinh] [char](10) NOT NULL,
	[MaLoaiNV] [char](10) NOT NULL,
	[CoQuyen] [bit] NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaManHinh] ASC,
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [char](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[TongTienNhap] [float] NULL,
	[MaNV] [char](10) NULL,
	[TinhTrangNhap] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[HinhAnh] [varchar](max) NULL,
	[DVT] [nvarchar](50) NULL,
	[MaLoaiSP] [char](10) NULL,
	[TongSLTon] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPhamBiHuy]    Script Date: 2021-06-05 11:17:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPhamBiHuy](
	[MaSP] [char](10) NOT NULL,
	[MaPN] [char](10) NOT NULL,
	[MaNV] [char](10) NULL,
	[NgayHuy] [date] NULL,
	[LyDoHuy] [nvarchar](max) NULL,
	[SoLuongHuy] [int] NULL,
	[MaHuy] [char](10) NOT NULL,
 CONSTRAINT [PK_BangHuySanPham] PRIMARY KEY CLUSTERED 
(
	[MaHuy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP001     ', 23000, NULL, CAST(0x0000AD1300000000 AS DateTime), N'NV001     ')
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP002     ', 20000, NULL, CAST(0x0000AD3D00000000 AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP003     ', 20000, NULL, CAST(0x0000AD3D00000000 AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP004     ', 10000, NULL, CAST(0x0000AD3D0171773F AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP005     ', 10000, NULL, CAST(0x0000AD3D017424E7 AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP006     ', 50000, NULL, CAST(0x0000AD3D0171E3B5 AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP007     ', 30000, NULL, CAST(0x0000AD3D0172670E AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP008     ', 1800000, NULL, CAST(0x0000AD3D0172DB9A AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP009     ', 3000, NULL, CAST(0x0000AD3D017313BB AS DateTime), NULL)
INSERT [dbo].[BangGia] ([MaSP], [GiaBan], [GiaKhuyenMai], [NgayAD], [MaNV]) VALUES (N'SP010     ', 40000, NULL, CAST(0x0000AD3D017542B0 AS DateTime), NULL)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD02      ', N'SP001     ', 1, 23000, 23000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD03      ', N'SP001     ', 1, 23000, 23000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD04      ', N'SP001     ', 1, 23000, 23000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD05      ', N'SP001     ', 5, 23000, 115000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD06      ', N'SP002     ', 2, 20000, 40000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD07      ', N'SP001     ', 2, 20000, 40000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD07      ', N'SP002     ', 1, 20000, 20000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD08      ', N'SP001     ', 2, 23000, 46000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD08      ', N'SP002     ', 2, 20000, 40000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong], [GiaBan], [ThanhTien]) VALUES (N'HD08      ', N'SP003     ', 1, 20000, 20000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN01      ', N'SP001     ', 20, 10000, 200000, NULL, CAST(0x47420B00 AS Date), CAST(0xB3430B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN01      ', N'SP002     ', 20, 10000, 50000, NULL, CAST(0x66420B00 AS Date), CAST(0x96420B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN01      ', N'SP003     ', 10, 12000, 120000, NULL, CAST(0x67420B00 AS Date), CAST(0x96420B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN02      ', N'SP001     ', 10, 15000, 150000, NULL, CAST(0xE8410B00 AS Date), CAST(0xB2420B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN02      ', N'SP006     ', 7, 40000, 280000, NULL, CAST(0x9E420B00 AS Date), CAST(0xA0420B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN02      ', N'SP007     ', 7, 10000, 70000, NULL, CAST(0x9E420B00 AS Date), CAST(0xA3420B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN03      ', N'SP004     ', 10, 7000, 70000, NULL, CAST(0xBF410B00 AS Date), CAST(0x99440B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN03      ', N'SP005     ', 20, 7000, 14000, NULL, CAST(0x02420B00 AS Date), CAST(0x6F430B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN03      ', N'SP010     ', 40, 25000, 1000000, NULL, CAST(0xEA410B00 AS Date), CAST(0x56430B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN04      ', N'SP008     ', 2, 1000000, 2000000, NULL, CAST(0x03420B00 AS Date), CAST(0x57430B00 AS Date))
INSERT [dbo].[ChiTietPhieuNhap] ([MaPN], [MaSP], [SoLuongNhap], [GiaNhap], [ThanhTienNhap], [GhiChu], [NSX], [HSD]) VALUES (N'PN04      ', N'SP009     ', 20, 1000, 20000, NULL, CAST(0x7B420B00 AS Date), CAST(0xC4440B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD01      ', CAST(0x0000AD2F00000000 AS DateTime), NULL, NULL, N'NV001     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD02      ', CAST(0x0000AD3601447148 AS DateTime), 23000, N'Đã thanh Toán', N'NV001     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD03      ', CAST(0x0000AD3601456FE4 AS DateTime), 23000, N'Đã thanh Toán', N'NV001     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD04      ', CAST(0x0000AD37012A1253 AS DateTime), 23000, N'Đã thanh Toán', N'NV001     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD05      ', CAST(0x0000AD3800E32A60 AS DateTime), 115000, N'Đã thanh Toán', N'NV001     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD06      ', CAST(0x0000AD3A0164D26A AS DateTime), 40000, N'Đã thanh Toán', N'NV001     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD07      ', CAST(0x0000AD3D01603E69 AS DateTime), 60000, N'Đã thanh Toán', N'NV003     ')
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TongTien], [TrinhTrangTT], [MaNV]) VALUES (N'HD08      ', CAST(0x0000AD3E00D1FAE2 AS DateTime), 106000, N'Đã thanh Toán', N'NV001     ')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV01     ', N'Quản lý')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV02     ', N'Thu ngân')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (N'LNV03     ', N'Kho')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP01     ', N'Đồ Uống', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP02     ', N'Thực Phẩm Tươi Sống', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP03     ', N'Rau, Củ, Qủa', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP04     ', N'Thực Phẩm Đông Lạnh', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP05     ', N'Gia Vị', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP06     ', N'Sữa', NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [GhiChu]) VALUES (N'LSP07     ', N'Bánh Kẹo', NULL)
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH001     ', N'THÔNG TIN NHÂN VIÊN')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH002     ', N'THÔNG TIN NHÂN VIÊN')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH003     ', N'QUẢN LÝ SẢN PHẨM')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH004     ', N'Quản lý giá')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH005     ', N'Kho hàng')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH006     ', N'Kho hàng hủy')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH007     ', N'QUẢN LÝ PHIẾU NHẬP')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH008     ', N'BÁN HÀNG')
INSERT [dbo].[ManHinh] ([MaManHinh], [TenManHinh]) VALUES (N'MH009     ', N'DOANH THU')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [MatKhau], [HinhNV], [MaLoaiNV], [NgayVL], [CMT]) VALUES (N'NV001     ', N'Phạm Mộng Kha', CAST(0xA3240B00 AS Date), N'Nữ', N'Đội 3,Thôn Tân Trề,Huyện Bến Cát,Tỉnh Bến Tre', N'0334125572', N'khapm@gmail.com                                   ', N'Kha050620', N'kha.jpg', N'LNV01     ', CAST(0x1B3F0B00 AS Date), N'321733763')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [MatKhau], [HinhNV], [MaLoaiNV], [NgayVL], [CMT]) VALUES (N'NV002     ', N'Chu Nguyễn Gia Hân', CAST(0x84240B00 AS Date), N'Nữ', N'25 Nguyễn Du,Phường 3,Quận 7,TP Hồ Chí Minh', N'0334125569', N'hancng@gmail.com                                  ', N'Han050520', N'han.jpg', N'LNV02     ', CAST(0x1C3F0B00 AS Date), N'321733786')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [MatKhau], [HinhNV], [MaLoaiNV], [NgayVL], [CMT]) VALUES (N'NV003     ', N'Nguyễn Sỹ Thành', CAST(0x3D240B00 AS Date), N'Nam', N'12 Tân Qúy,Phường Sơn Kì,TP Hồ Chí Minh', N'0971724305', N'sythanh12123@gmail.com                            ', N'Tha240220', N'thanh.jpg', N'LNV03     ', CAST(0xAF3D0B00 AS Date), N'123456789')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [MatKhau], [HinhNV], [MaLoaiNV], [NgayVL], [CMT]) VALUES (N'NV004     ', N'Trần Thị Như Yến', CAST(0x85240B00 AS Date), N'Nữ', N'12 Nguyễn Du,Đường Bình Chánh,TP Hồ Chí Minh', N'0953727489', N'ttnyen12123@gmail.com                             ', N'Yen240220', N'yen.jpg', N'LNV02     ', CAST(0x423C0B00 AS Date), N'987456123')
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH001     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH001     ', N'LNV02     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH001     ', N'LNV03     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH002     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH002     ', N'LNV02     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH002     ', N'LNV03     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH003     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH003     ', N'LNV02     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH003     ', N'LNV03     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH004     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH004     ', N'LNV02     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH004     ', N'LNV03     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH005     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH005     ', N'LNV02     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH005     ', N'LNV03     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH006     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH006     ', N'LNV02     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH006     ', N'LNV03     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH007     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH007     ', N'LNV02     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH007     ', N'LNV03     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH008     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH008     ', N'LNV02     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH008     ', N'LNV03     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH009     ', N'LNV01     ', 1)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH009     ', N'LNV02     ', 0)
INSERT [dbo].[PhanQuyen] ([MaManHinh], [MaLoaiNV], [CoQuyen]) VALUES (N'MH009     ', N'LNV03     ', 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTienNhap], [MaNV], [TinhTrangNhap]) VALUES (N'PN01      ', NULL, 370000, NULL, N'Chưa Nhập')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTienNhap], [MaNV], [TinhTrangNhap]) VALUES (N'PN02      ', NULL, 500000, NULL, N'Chưa Nhập')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTienNhap], [MaNV], [TinhTrangNhap]) VALUES (N'PN03      ', NULL, 1080000, NULL, N'Chưa nhập')
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTienNhap], [MaNV], [TinhTrangNhap]) VALUES (N'PN04      ', NULL, 2020000, NULL, N'Chưa Nhập')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP001     ', N'Bánh chocopie', N'anh.jpg', N'Hộp', N'LSP07     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP002     ', N'Bánh Cosy', N'anh.jpg', N'Hộp', N'LSP07     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP003     ', N'Bánh Coconut', N'anh,jpg', N'Hộp', N'LSP07     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP004     ', N'Nước  Sting', N'anh.jpg', N'Chai', N'LSP01     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP005     ', N'Trà Xanh Không Độ', N'anh.jpg', N'Chai', N'LSP01     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP006     ', N'Đùi Gà', N'anh.jpg', N'Kí', N'LSP02     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP007     ', N'Rau Cải Bẹ Xanh Mới Nhú', N'anh.jpg', N'Kí', N'LSP03     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP008     ', N'Thị bò Kube', N'anh.jpg', N'Kí', N'LSP04     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP009     ', N'Muối Iot', N'anh.jpg', N'Gói', N'LSP05     ', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HinhAnh], [DVT], [MaLoaiSP], [TongSLTon]) VALUES (N'SP010     ', N'Sữa Vinamilk', N'anh.jpg', N'Lốc', N'LSP06     ', NULL)
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_NhanVien]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_LoaiNhanVien_NhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_LoaiNhanVien_NhanVien]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_LoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_LoaiNhanVien]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_PhanQuyen] FOREIGN KEY([MaManHinh])
REFERENCES [dbo].[ManHinh] ([MaManHinh])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_PhanQuyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPhamBiHuy]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamBiHuy_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[SanPhamBiHuy] CHECK CONSTRAINT [FK_SanPhamBiHuy_NhanVien]
GO
ALTER TABLE [dbo].[SanPhamBiHuy]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamBiHuy_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[SanPhamBiHuy] CHECK CONSTRAINT [FK_SanPhamBiHuy_PhieuNhap]
GO
ALTER TABLE [dbo].[SanPhamBiHuy]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamBiHuy_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SanPhamBiHuy] CHECK CONSTRAINT [FK_SanPhamBiHuy_SanPham]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [chk_GiaBan] CHECK  (([GiaBan]>(0)))
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [chk_GiaBan]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [chk_GiaKM] CHECK  (([GiaKhuyenMai]>(0)))
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [chk_GiaKM]
GO

----------------1-----------------------------------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[updateTongTienHD]
on [dbo].[ChiTietHoaDon]
for update
as
update HoaDon
set TongTien=(select sum(ThanhTien) from ChiTietHoaDon where MaHD=(select MaHD from inserted))
where MaHD=(select MaHD from inserted)
-------------------2----------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[updateTongTienHDXoa]
on [dbo].[ChiTietHoaDon]
for delete
as
update HoaDon
set TongTien=(select sum(ThanhTien) from ChiTietHoaDon where MaHD=(select MaHD from deleted))
where MaHD=(select MaHD from deleted)
--------------------3-------------------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[UpdateTongTienPN]
on [dbo].[ChiTietPhieuNhap]
for insert
as
Update PhieuNhap
set TongTienNhap=(select sum(ThanhTienNhap) from ChiTietPhieuNhap where  MaPN=(select MaPN from inserted))
where MaPN=(select MaPN from inserted)
---------------------4-----------------------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[UpdateTongSL]
on [dbo].[ChiTietSanPham]
for insert,update
as
update SanPham
SET TongSLTon=(select Sum(SLTon) from ChiTietSanPham where masp=(select masp from inserted))
where masp=(select masp from inserted)

----------------------5---------------------------------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[UpdateTongSLXoa]
on [dbo].[ChiTietSanPham]
for delete
as
update SanPham
SET TongSLTon=(select Sum(SLTon) from ChiTietSanPham where masp=(select masp from deleted))
where masp=(select masp from deleted)

-----------------6--------------------------------------------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[insertSPinsertBangGia] on [dbo].[SanPham]
for insert
as
insert BangGia(MaSP, NgayAD)  (select MaSP, GETDATE()  from inserted)