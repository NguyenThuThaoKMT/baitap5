
CREATE DATABASE [QL_NhanSu]

USE [QL_NhanSu]

CREATE TABLE [dbo].[bao_hiem](
	[ma_bao_hiem] [varchar](20) NOT NULL,
	[ma_nhan_su] [varchar](20) NULL,
	[loai_bao_hiem] [nvarchar](50) NULL,
	[so_bao_hiem] [varchar](20) NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[trang_thai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_bao_hiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cham_cong]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cham_cong](
	[ma_nhan_su] [varchar](20) NOT NULL,
	[ngay] [date] NOT NULL,
	[ca_lam] [nvarchar](20) NULL,
	[check_in] [time](7) NULL,
	[check_out] [time](7) NULL,
	[trang_thai] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhan_su] ASC,
	[ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dao_tao]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dao_tao](
	[ma_khoa_hoc] [varchar](20) NOT NULL,
	[ten_khoa_hoc] [nvarchar](100) NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khoa_hoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hop_dong]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hop_dong](
	[ma_hop_dong] [varchar](20) NOT NULL,
	[ma_nhan_su] [varchar](20) NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[loai_hop_dong] [nvarchar](30) NULL,
	[trang_thai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_hop_dong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khen_thuong_ky_luat]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khen_thuong_ky_luat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhan_su] [varchar](20) NULL,
	[loai] [nvarchar](20) NULL,
	[noi_dung] [nvarchar](max) NULL,
	[ngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[luong]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[luong](
	[ma_nhan_su] [varchar](20) NOT NULL,
	[thang] [int] NOT NULL,
	[nam] [int] NOT NULL,
	[luong_co_ban] [decimal](12, 2) NULL,
	[phu_cap] [decimal](12, 2) NULL,
	[thuong] [decimal](12, 2) NULL,
	[khau_tru] [decimal](12, 2) NULL,
	[tong_luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhan_su] ASC,
	[thang] ASC,
	[nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nghi_phep]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nghi_phep](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhan_su] [varchar](20) NULL,
	[tu_ngay] [date] NULL,
	[den_ngay] [date] NULL,
	[ly_do] [nvarchar](100) NULL,
	[loai_nghi] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_su]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_su](
	[ma_nhan_su] [varchar](20) NOT NULL,
	[ho_ten] [nvarchar](100) NULL,
	[ngay_sinh] [date] NULL,
	[gioi_tinh] [nvarchar](10) NULL,
	[dia_chi] [nvarchar](max) NULL,
	[so_dien_thoai] [varchar](15) NULL,
	[email] [varchar](100) NULL,
	[ngay_vao_cong_ty] [date] NULL,
	[trang_thai_lam_viec] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhan_su] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[ten_dang_nhap] [varchar](50) NOT NULL,
	[mat_khau] [varchar](100) NULL,
	[ma_nhan_su] [varchar](20) NULL,
	[vai_tro] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tham_gia_dao_tao]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tham_gia_dao_tao](
	[ma_nhan_su] [varchar](20) NOT NULL,
	[ma_khoa_hoc] [varchar](20) NOT NULL,
	[ket_qua] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhan_su] ASC,
	[ma_khoa_hoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ung_vien]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ung_vien](
	[ma_ung_vien] [varchar](20) NOT NULL,
	[ho_ten] [nvarchar](100) NULL,
	[ngay_sinh] [date] NULL,
	[trinh_do] [nvarchar](100) NULL,
	[vi_tri_ung_tuyen] [nvarchar](100) NULL,
	[ket_qua] [nvarchar](20) NULL,
	[ma_nhan_su] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_ung_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bao_hiem] ([ma_bao_hiem], [ma_nhan_su], [loai_bao_hiem], [so_bao_hiem], [ngay_bat_dau], [ngay_ket_thuc], [trang_thai]) VALUES (N'BH001', N'NS001', N'Xã hội', N'SBH001', CAST(N'2020-05-01' AS Date), NULL, N'còn hiệu lực')
INSERT [dbo].[bao_hiem] ([ma_bao_hiem], [ma_nhan_su], [loai_bao_hiem], [so_bao_hiem], [ngay_bat_dau], [ngay_ket_thuc], [trang_thai]) VALUES (N'BH002', N'NS002', N'Y tế', N'SBH002', CAST(N'2021-06-01' AS Date), NULL, N'còn hiệu lực')
INSERT [dbo].[bao_hiem] ([ma_bao_hiem], [ma_nhan_su], [loai_bao_hiem], [so_bao_hiem], [ngay_bat_dau], [ngay_ket_thuc], [trang_thai]) VALUES (N'BH004', N'NS004', N'Xã hội', N'SBH004', CAST(N'2022-08-20' AS Date), NULL, N'tạm dừng')
GO
INSERT [dbo].[cham_cong] ([ma_nhan_su], [ngay], [ca_lam], [check_in], [check_out], [trang_thai]) VALUES (N'NS001', CAST(N'2025-04-20' AS Date), N'Sáng', CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time), N'Có mặt')
INSERT [dbo].[cham_cong] ([ma_nhan_su], [ngay], [ca_lam], [check_in], [check_out], [trang_thai]) VALUES (N'NS001', CAST(N'2025-04-21' AS Date), N'Sáng', CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time), N'Có mặt')
INSERT [dbo].[cham_cong] ([ma_nhan_su], [ngay], [ca_lam], [check_in], [check_out], [trang_thai]) VALUES (N'NS002', CAST(N'2025-04-20' AS Date), N'Sáng', CAST(N'08:15:00' AS Time), CAST(N'12:00:00' AS Time), N'Có mặt')
INSERT [dbo].[cham_cong] ([ma_nhan_su], [ngay], [ca_lam], [check_in], [check_out], [trang_thai]) VALUES (N'NS004', CAST(N'2025-04-20' AS Date), N'Sáng', NULL, NULL, N'Tạm nghỉ')
GO
INSERT [dbo].[dao_tao] ([ma_khoa_hoc], [ten_khoa_hoc], [ngay_bat_dau], [ngay_ket_thuc]) VALUES (N'DT001', N'An toàn lao động', CAST(N'2025-01-01' AS Date), CAST(N'2025-01-05' AS Date))
INSERT [dbo].[dao_tao] ([ma_khoa_hoc], [ten_khoa_hoc], [ngay_bat_dau], [ngay_ket_thuc]) VALUES (N'DT002', N'Kỹ năng giao tiếp', CAST(N'2025-02-01' AS Date), CAST(N'2025-02-05' AS Date))
GO
INSERT [dbo].[hop_dong] ([ma_hop_dong], [ma_nhan_su], [ngay_bat_dau], [ngay_ket_thuc], [loai_hop_dong], [trang_thai]) VALUES (N'HD001', N'NS001', CAST(N'2020-05-01' AS Date), CAST(N'2025-05-01' AS Date), N'Chính thức', N'Còn hiệu lực')
INSERT [dbo].[hop_dong] ([ma_hop_dong], [ma_nhan_su], [ngay_bat_dau], [ngay_ket_thuc], [loai_hop_dong], [trang_thai]) VALUES (N'HD002', N'NS002', CAST(N'2021-06-01' AS Date), CAST(N'2024-06-01' AS Date), N'Chính thức', N'Còn hiệu lực')
INSERT [dbo].[hop_dong] ([ma_hop_dong], [ma_nhan_su], [ngay_bat_dau], [ngay_ket_thuc], [loai_hop_dong], [trang_thai]) VALUES (N'HD004', N'NS004', CAST(N'2022-08-20' AS Date), CAST(N'2025-08-20' AS Date), N'Chính thức', N'Tạm dừng')
GO
SET IDENTITY_INSERT [dbo].[khen_thuong_ky_luat] ON 

INSERT [dbo].[khen_thuong_ky_luat] ([id], [ma_nhan_su], [loai], [noi_dung], [ngay]) VALUES (1, N'NS001', N'khen_thuong', N'Nhân viên xuất sắc quý I', CAST(N'2025-04-01' AS Date))
INSERT [dbo].[khen_thuong_ky_luat] ([id], [ma_nhan_su], [loai], [noi_dung], [ngay]) VALUES (2, N'NS002', N'ky_luat', N'Đi làm muộn nhiều lần', CAST(N'2025-03-15' AS Date))
SET IDENTITY_INSERT [dbo].[khen_thuong_ky_luat] OFF
GO
INSERT [dbo].[luong] ([ma_nhan_su], [thang], [nam], [luong_co_ban], [phu_cap], [thuong], [khau_tru], [tong_luong]) VALUES (N'NS001', 4, 2025, CAST(10000000.00 AS Decimal(12, 2)), CAST(1000000.00 AS Decimal(12, 2)), CAST(500000.00 AS Decimal(12, 2)), CAST(200000.00 AS Decimal(12, 2)), -200000)
INSERT [dbo].[luong] ([ma_nhan_su], [thang], [nam], [luong_co_ban], [phu_cap], [thuong], [khau_tru], [tong_luong]) VALUES (N'NS002', 4, 2025, CAST(9500000.00 AS Decimal(12, 2)), CAST(800000.00 AS Decimal(12, 2)), CAST(400000.00 AS Decimal(12, 2)), CAST(150000.00 AS Decimal(12, 2)), -150000)
INSERT [dbo].[luong] ([ma_nhan_su], [thang], [nam], [luong_co_ban], [phu_cap], [thuong], [khau_tru], [tong_luong]) VALUES (N'NS004', 4, 2025, CAST(9500000.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), CAST(0.00 AS Decimal(12, 2)), 0)
GO
SET IDENTITY_INSERT [dbo].[nghi_phep] ON 

INSERT [dbo].[nghi_phep] ([id], [ma_nhan_su], [tu_ngay], [den_ngay], [ly_do], [loai_nghi]) VALUES (1, N'NS002', CAST(N'2025-04-18' AS Date), CAST(N'2025-04-18' AS Date), N'Việc gia đình', N'phep_nam')
INSERT [dbo].[nghi_phep] ([id], [ma_nhan_su], [tu_ngay], [den_ngay], [ly_do], [loai_nghi]) VALUES (3, N'NS004', CAST(N'2025-04-10' AS Date), CAST(N'2025-04-25' AS Date), N'Tạm nghỉ chăm con', N'nghi_khong_luong')
SET IDENTITY_INSERT [dbo].[nghi_phep] OFF
GO
INSERT [dbo].[nhan_su] ([ma_nhan_su], [ho_ten], [ngay_sinh], [gioi_tinh], [dia_chi], [so_dien_thoai], [email], [ngay_vao_cong_ty], [trang_thai_lam_viec]) VALUES (N'NS001', N'Lê Văn An', CAST(N'1990-01-01' AS Date), N'Nam', N'Hà Nội', N'0911000001', N'a@example.com', CAST(N'2020-05-01' AS Date), N'dang_lam')
INSERT [dbo].[nhan_su] ([ma_nhan_su], [ho_ten], [ngay_sinh], [gioi_tinh], [dia_chi], [so_dien_thoai], [email], [ngay_vao_cong_ty], [trang_thai_lam_viec]) VALUES (N'NS002', N'Nguyễn Thị Bích', CAST(N'1992-02-02' AS Date), N'Nữ', N'Hải Phòng', N'0911000002', N'b@example.com', CAST(N'2021-06-01' AS Date), N'dang_lam')
INSERT [dbo].[nhan_su] ([ma_nhan_su], [ho_ten], [ngay_sinh], [gioi_tinh], [dia_chi], [so_dien_thoai], [email], [ngay_vao_cong_ty], [trang_thai_lam_viec]) VALUES (N'NS004', N'Phạm Thị D', CAST(N'1995-04-04' AS Date), N'Nữ', N'Nghệ An', N'0911000004', N'd@example.com', CAST(N'2022-08-20' AS Date), N'tam_nghi')
GO
INSERT [dbo].[tai_khoan] ([ten_dang_nhap], [mat_khau], [ma_nhan_su], [vai_tro]) VALUES (N'admin', N'123456', N'NS001', N'admin')
INSERT [dbo].[tai_khoan] ([ten_dang_nhap], [mat_khau], [ma_nhan_su], [vai_tro]) VALUES (N'user1', N'123456', N'NS002', N'nhan_vien')
INSERT [dbo].[tai_khoan] ([ten_dang_nhap], [mat_khau], [ma_nhan_su], [vai_tro]) VALUES (N'user3', N'123456', N'NS004', N'nhan_vien')
GO
INSERT [dbo].[tham_gia_dao_tao] ([ma_nhan_su], [ma_khoa_hoc], [ket_qua]) VALUES (N'NS001', N'DT001', N'Đạt')
INSERT [dbo].[tham_gia_dao_tao] ([ma_nhan_su], [ma_khoa_hoc], [ket_qua]) VALUES (N'NS002', N'DT002', N'Đạt')
GO
INSERT [dbo].[ung_vien] ([ma_ung_vien], [ho_ten], [ngay_sinh], [trinh_do], [vi_tri_ung_tuyen], [ket_qua], [ma_nhan_su]) VALUES (N'UV002', N'Lý Thị G', CAST(N'1996-07-07' AS Date), N'Cao đẳng', N'HCNS', N'khong_dat', NULL)
INSERT [dbo].[ung_vien] ([ma_ung_vien], [ho_ten], [ngay_sinh], [trinh_do], [vi_tri_ung_tuyen], [ket_qua], [ma_nhan_su]) VALUES (N'UV003', N'Đỗ Văn H', CAST(N'1991-08-08' AS Date), N'Đại học', N'Kỹ thuật', N'cho_duyet', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__bao_hiem__0CB133A1C29DBEDB]    Script Date: 22/04/2025 11:41:50 CH ******/
ALTER TABLE [dbo].[bao_hiem] ADD UNIQUE NONCLUSTERED 
(
	[so_bao_hiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bao_hiem]  WITH CHECK ADD  CONSTRAINT [FK__bao_hiem__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[bao_hiem] CHECK CONSTRAINT [FK__bao_hiem__ma_nhan_su]
GO
ALTER TABLE [dbo].[cham_cong]  WITH CHECK ADD  CONSTRAINT [FK__cham_cong__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[cham_cong] CHECK CONSTRAINT [FK__cham_cong__ma_nhan_su]
GO
ALTER TABLE [dbo].[hop_dong]  WITH CHECK ADD  CONSTRAINT [FK__hop_dong__ma_nha_n_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[hop_dong] CHECK CONSTRAINT [FK__hop_dong__ma_nha_n_su]
GO
ALTER TABLE [dbo].[khen_thuong_ky_luat]  WITH CHECK ADD  CONSTRAINT [FK__khen_thuo__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[khen_thuong_ky_luat] CHECK CONSTRAINT [FK__khen_thuo__ma_nhan_su]
GO
ALTER TABLE [dbo].[luong]  WITH CHECK ADD  CONSTRAINT [FK__luong__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[luong] CHECK CONSTRAINT [FK__luong__ma_nhan_su]
GO
ALTER TABLE [dbo].[nghi_phep]  WITH CHECK ADD  CONSTRAINT [FK__nghi_phep__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[nghi_phep] CHECK CONSTRAINT [FK__nghi_phep__ma_nhan_su]
GO
ALTER TABLE [dbo].[tai_khoan]  WITH CHECK ADD  CONSTRAINT [FK__tai_khoan__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[tai_khoan] CHECK CONSTRAINT [FK__tai_khoan__ma_nhan_su]
GO
ALTER TABLE [dbo].[tham_gia_dao_tao]  WITH CHECK ADD  CONSTRAINT [FK__tham_gia___ma_khoa_hoc] FOREIGN KEY([ma_khoa_hoc])
REFERENCES [dbo].[dao_tao] ([ma_khoa_hoc])
GO
ALTER TABLE [dbo].[tham_gia_dao_tao] CHECK CONSTRAINT [FK__tham_gia___ma_khoa_hoc]
GO
ALTER TABLE [dbo].[tham_gia_dao_tao]  WITH CHECK ADD  CONSTRAINT [FK__tham_gia___ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[tham_gia_dao_tao] CHECK CONSTRAINT [FK__tham_gia___ma_nhan_su]
GO
ALTER TABLE [dbo].[ung_vien]  WITH CHECK ADD  CONSTRAINT [FK__ung_vien__ma_nhan_su] FOREIGN KEY([ma_nhan_su])
REFERENCES [dbo].[nhan_su] ([ma_nhan_su])
GO
ALTER TABLE [dbo].[ung_vien] CHECK CONSTRAINT [FK__ung_vien__ma_nhan_su]
GO
ALTER TABLE [dbo].[khen_thuong_ky_luat]  WITH CHECK ADD CHECK  (([loai]='ky_luat' OR [loai]='khen_thuong'))
GO
ALTER TABLE [dbo].[nghi_phep]  WITH CHECK ADD CHECK  (([loai_nghi]='nghi_viec' OR [loai_nghi]='nghi_khong_luong' OR [loai_nghi]='nghi_om' OR [loai_nghi]='phep_nam'))
GO
ALTER TABLE [dbo].[nhan_su]  WITH CHECK ADD CHECK  (([trang_thai_lam_viec]='nghi_viec' OR [trang_thai_lam_viec]='tam_nghi' OR [trang_thai_lam_viec]='dang_lam'))
GO
ALTER TABLE [dbo].[ung_vien]  WITH CHECK ADD CHECK  (([ket_qua]='cho_duyet' OR [ket_qua]='khong_dat' OR [ket_qua]='dat'))
GO
/****** Object:  Trigger [dbo].[trg_check_bao_hiem_insert]    Script Date: 22/04/2025 11:41:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Nguyễn Thu Thảo 
-- Create date: 22/04/2025
-- Description:	ngăn chặn thêm bảo hiểm khi không có them nhân sự mới
-- =============================================
CREATE TRIGGER [dbo].[trg_check_bao_hiem_insert]
ON [dbo].[bao_hiem]
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        WHERE i.ma_nhan_su IS NULL 
           OR NOT EXISTS (SELECT 1 FROM nhan_su WHERE ma_nhan_su = i.ma_nhan_su)
    )
    BEGIN
        RAISERROR(N'Mã nhân sự không tồn tại hoặc bị để trống.', 16, 1)
        ROLLBACK TRANSACTION
    END
    ELSE
    BEGIN
        INSERT INTO bao_hiem
        SELECT * FROM inserted
    END
END
GO
ALTER TABLE [dbo].[bao_hiem] ENABLE TRIGGER [trg_check_bao_hiem_insert]
GO
/****** Object:  Trigger [dbo].[trg_update_tong_luong]    Script Date: 22/04/2025 11:42:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_update_tong_luong]
ON [dbo].[luong]
AFTER UPDATE
AS
BEGIN
    DECLARE @ma_nhan_su INT, @luong_co_ban INT, @phu_cap INT, @thuong INT;
    DECLARE @so_cong INT, @tong_luong INT;
    
    -- Lấy dữ liệu từ bảng inserted (bảng chứa bản ghi vừa được cập nhật)
    SELECT @ma_nhan_su = ma_nhan_su, @luong_co_ban = luong_co_ban, @phu_cap = phu_cap, @thuong = thuong
    FROM inserted;
    
    -- Tính số công dựa trên số lần trạng thái "Có mặt" trong bảng chấm công
    SELECT @so_cong = COUNT(*)
    FROM dbo.cham_cong
    WHERE ma_nhan_su = @ma_nhan_su
    AND trang_thai = 'Có mặt'
    AND MONTH(ngay) = MONTH(GETDATE()) -- Giới hạn theo tháng hiện tại (hoặc có thể chỉnh sửa tùy theo yêu cầu)

    -- Tính toán phần lương cơ bản, phụ cấp và thưởng tương ứng với số công làm việc
    DECLARE @luong_co_ban_tinh INT = (@luong_co_ban / 26) * @so_cong;
    DECLARE @phu_cap_tinh INT = (@phu_cap / 26) * @so_cong;
    DECLARE @thuong_tinh INT = (@thuong / 26) * @so_cong;
    
    -- Tính tổng lương
    SET @tong_luong = @luong_co_ban_tinh + @phu_cap_tinh + @thuong_tinh;
    
    -- Cập nhật lại tổng lương vào bảng luong
    UPDATE dbo.luong
    SET tong_luong = @tong_luong
    WHERE ma_nhan_su = @ma_nhan_su;
END;
GO
ALTER TABLE [dbo].[luong] ENABLE TRIGGER [trg_update_tong_luong]
GO
/****** Object:  Trigger [dbo].[trg_delete_nhan_su]    Script Date: 22/04/2025 11:42:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nguyễn Thu Thảo 
-- Create date: 22/04/2025
-- Description:	tự động xóa toàn bộ thông tin của nhân sự nghỉ việc
-- =============================================
CREATE TRIGGER [dbo].[trg_delete_nhan_su]
ON [dbo].[nhan_su]
INSTEAD OF DELETE
AS
BEGIN
    DELETE FROM bao_hiem WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM cham_cong WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM hop_dong WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM luong WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM nghi_phep WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM tai_khoan WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM tham_gia_dao_tao WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM ung_vien WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
    DELETE FROM khen_thuong_ky_luat WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)

    DELETE FROM nhan_su WHERE ma_nhan_su IN (SELECT ma_nhan_su FROM deleted)
END
GO
ALTER TABLE [dbo].[nhan_su] ENABLE TRIGGER [trg_delete_nhan_su]
GO
USE [master]
GO
ALTER DATABASE [QL_NhanSu] SET  READ_WRITE 
GO
