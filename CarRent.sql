USE [CarRent]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 23/03/2024 9:43:07 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phone] [varchar](100) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[Status] [int] NULL,
	[role] [int] NULL,
 CONSTRAINT [PK__accounts__3213E83FE9AA63B4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 23/03/2024 9:43:07 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[describe]    Script Date: 23/03/2024 9:43:07 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[describe](
	[describeid] [int] IDENTITY(1,1) NOT NULL,
	[detailed] [nvarchar](max) NULL,
 CONSTRAINT [PK_describe] PRIMARY KEY CLUSTERED 
(
	[describeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 23/03/2024 9:43:07 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[created_at] [nvarchar](255) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__orders__3213E83FFA6D7707] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 23/03/2024 9:43:07 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[image] [nvarchar](500) NULL,
	[category_id] [int] NULL,
	[description] [nvarchar](max) NULL,
	[status] [int] NULL,
	[detail] [nvarchar](max) NULL,
 CONSTRAINT [PK__products__3213E83F47E7F4EF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[accounts] ON 

INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (1, N'1', N'1', N'Nguyen Van A', N'user1@example.com', N'0337305000', N'HN', 1, 1)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (2, N'user2', N'2', N'Nguyen Van B', N'user2@example.com', N'0337305000', N'HN', 1, 0)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (5, N'user5', N'5', N'Nguyen Van E', N'user5@example.com', N'0337305000', N'HN', 1, 0)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (6, N'user6', N'6', N'Nguyen Van F', N'user6@example.com', N'0337305000', N'HN', 1, 0)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (7, N'user7', N'7', N'Nguyen Van G', N'user7@example.com', N'0337305000', N'HN', 1, 0)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (8, N'user8', N'8', N'Nguyen Van H', N'user8@example.com', N'0337305000', N'HN', 1, 0)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (11, N'minhthw', N'123', N'Nguyen Thi Minh Thw', N'nguyenthiminhthw@gmail.com', N'0999999999', N'HN', 1, 0)
INSERT [dbo].[accounts] ([id], [username], [password], [fullname], [email], [phone], [address], [Status], [role]) VALUES (12, N'thehieu', N'123', N'Nguyen The Hieu', N'hieunthe171211@gmail.com', N'0926278500', N'HN', 1, 0)
SET IDENTITY_INSERT [dbo].[accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'SAMSUNG')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'Dell')
INSERT [dbo].[categories] ([id], [name]) VALUES (3, N'Apple')
INSERT [dbo].[categories] ([id], [name]) VALUES (4, N'LG')
INSERT [dbo].[categories] ([id], [name]) VALUES (5, N'Asus')
INSERT [dbo].[categories] ([id], [name]) VALUES (6, N'MSI')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[describe] ON 

INSERT [dbo].[describe] ([describeid], [detailed]) VALUES (1, N'• Màn hình Samsung sở hữu kích thước khung hình tương đối lớn 27 inch cùng tấm nền IPS giúp hiển thị hình ảnh với không gian thoải mái, hình ảnh và những thước phim được tái hiện như bao trọn thị giác người dùng. Ngoài ra, độ phân giải Full HD (1920 x 1080) còn cho chất lượng ảnh sống động và chân thực phục vụ giải trí hay làm việc đều tốt.

• Tần số quét 100 Hz tích hợp cùng công nghệ AMD FreeSync cung cấp cho bạn trải nghiệm chơi game mượt mà, giảm tình trạng giật, xé hình giúp bạn có thể thao tác chuẩn xác, nhanh chóng hơn. Đồng thời, chiếc màn hình gaming này sẽ mang đến cho bạn trải nghiệm giải trí liền mạch nhờ khả năng đồng bộ hóa tốc độ làm mới màn hình với card đồ họa nhanh chóng.')
INSERT [dbo].[describe] ([describeid], [detailed]) VALUES (2, N'• Màn hình Samsung kích thước 24 inch và độ phân giải Full HD (1920 x 1080) cho khả năng tái tạo hình ảnh sắc nét và chi tiết hơn bao giờ hết. Đồng thời, tấm nền IPS cũng giúp góc nhìn được nới rộng hơn, tái tạo sắc độ ảnh chuẩn xác từ mọi hướng nhìn với độ mở lên đến 178 độ.

• Với công nghệ AMD FreeSync và tần số quét 100 Hz, màn hình máy tính cung cấp cho người dùng trải nghiệm chơi game mượt mà và trải nghiệm giải trí phim ảnh đầy hấp dẫn, chuyển động và hình ảnh được tái tạo mượt mà và bắt mắt.

• Ngoài ra, độ phủ màu trên mẫu màn hình này còn đạt 72% NTSC và 95% sRGB giúp người dùng thuận tiện hơn khi thực hiện căn chỉnh độ chuẩn của màu sắc cho các sản phẩm sáng tạo, hữu ích cho các công việc thiết kế và đồ hoạ.

• Chế độ chơi game còn cung cấp những công cụ cơ bản cần thiết như ngắm bắn, canh thời gian, di chuyển thuận tiện,... để game thủ có thể trải nghiệm thú vị và trọn vẹn hơn trong mỗi trận chiến.

• Tính năng Eye Saver Mode giảm cường độ ánh sáng xanh và tăng độ ấm màu cho màn hình, giúp bảo vệ mắt người dùng khi đọc sách hoặc làm việc trong thời gian dài, bên cạnh đó chế độ này cũng khử được độ nhấp nháy của màn hình, giúp hạn chế căng thẳng thị giác và đau đầu.')
INSERT [dbo].[describe] ([describeid], [detailed]) VALUES (3, N'Tận hưởng hình ảnh đã mắt
Đắm chìm sâu mọi giác quan trên khung hình 27 inch, một kích thước đầy lý tưởng để bạn thoải mái tận hưởng không gian làm việc lớn, thả mình vào những thước phim sống động. Ngoài ra, việc chia nhiều cửa sổ nhỏ để làm việc năng suất hơn cũng rất dễ dàng.

Apple Studio Display với độ phân giải 5K Retina (5120 x 2880) cùng 14.7 triệu pixel giúp tái hiện hình ảnh đầy chất lượng và sắc nét, nội dung hiển thị rực rỡ, sống động cùng màu đen siêu thực cho phép bạn trải nghiệm sâu hơn, hấp dẫn hơn bất cứ hoạt động nào trên chiếc màn hình máy tính này.')
INSERT [dbo].[describe] ([describeid], [detailed]) VALUES (4, N'Màn hình Samsung viền mỏng S3 S31C là màn hình máy tính đến từ Samsung, mở ra thế giới giải trí sống động không giới hạn với màn hình 3 cạnh không viền tinh giản và hiện đại, phù hợp cho mọi không gian từ văn phòng tại nhà đến nơi công sở. Khi cần ghép nối nhiều màn hình, khung viền siêu mỏng giúp “xóa” đi các khe hở để hình ảnh hiển thị luôn liền mạch ấn tượng.
Samsung S3 S31C sống động từng chi tiết từ mọi góc nhìn với tấm nền IPS
Với màn hình Samsung viền mỏng S3 S31C chọn góc nhìn thoải mái mà chẳng phải "hy sinh" chất lượng hình ảnh hiển thị. Bên cạnh cải thiện độ sống động và trong trẻo của màu sắc, tấm nền IPS giúp giảm thiểu hiện tượng tán xạ, tái hiện tông màu và sắc độ chân thực hơn bao giờ hết.
Tận hưởng màn game mượt mà với công nghệ AMD FreeSync')
SET IDENTITY_INSERT [dbo].[describe] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [account_id], [product_id], [price], [created_at], [status]) VALUES (16, 2, 7, CAST(5690000.00 AS Decimal(10, 2)), N'23/03/2024 09:25:49', 2)
INSERT [dbo].[orders] ([id], [account_id], [product_id], [price], [created_at], [status]) VALUES (17, 2, 9, CAST(5290000.00 AS Decimal(10, 2)), N'23/03/2024 09:34:26', 2)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (6, N'Apple Studio Display 27 inch 5K', CAST(55790000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/320633/apple-studio-display-27-5k-mmyv3sa-thumb-600x600.jpg', 3, N'Apple Studio Display 27 inch 5K Retina Nano Chân Đế Điều Chỉnh Độ Cao (MMYV3SA/A) ', 0, N'Màn hình máy tính Apple sở hữu kích thước lý tưởng là 27 inch, cho bạn thoải mái trải nghiệm đa nội dung thật đã mắt nhưng đồng thời cũng lại không chiếm quá nhiều vị trí trong không gian decor. Hơn nữa, khung hình được tích hợp với công nghệ Nano hiện đại, giúp chống phủ bụi trên mặt kính cũng như tán xạ các tia sáng chiếu vào màn hình, giảm tình trạng gây chói mắt.

Mọi hình ảnh và nội dung đều được thể hiện tuyệt đẹp nhờ độ phân giải 5K Retina (5120 x 2880) và 14,7 triệu pixel hỗ trợ, mọi góc độ màu sắc đến các chi tiết nhỏ nhất đều được tinh chỉnh chính xác để tương thích mạnh mẽ với mắt của bạn. Ngoài ra, chuẩn màu Wide color (P3) cùng mức hiển thị lên đến 1 tỷ màu còn mang lại độ chính xác màu sắc gần như tuyệt đối, có thể nói là điểm "ưu ái" tuyệt vời cho những nhà sáng tạo nội dung hay designer.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (7, N'Samsung Odyssey G5 G51C', CAST(5690000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/313206/samsung-odyssey-g5-ls32cg510eexxv-32-inch-2k-glr-thumb-600x600.jpg', 1, N'Màn hình Gaming Samsung Odyssey G5 G51C LS32CG510EEXXV 32 inch 2K/VA/165Hz/1ms/FreeSync/HDR10/DisplayPort ', 0, N'Samsung Odyssey G5/G51C S27CG51 là màn hình chơi game cấp thấp. Nó có độ phân giải 1440p và kích thước màn hình 27 inch, đồng thời có sẵn phiên bản 32 inch ở nhiều khu vực khác nhau. Là một phần của dòng game Odyssey của Samsung, đây là mẫu cập nhật của Samsung Odyssey G5/G55A S27AG55 , với điểm khác biệt chính là nó có màn hình phẳng. Nó được thiết kế dành cho chơi game vì nó có tốc độ làm mới 165Hz với tốc độ làm mới biến đổi FreeSync (VRR) và khả năng tương thích G-SYNC, đồng thời hỗ trợ băng thông HDMI 2.0 và DisplayPort 1.2. Ngoài ra, nó bị hạn chế về các tính năng bổ sung, nhưng nó hỗ trợ HDR và ​​​​có một số đặc quyền khi chơi game, như hình chữ thập ảo và tính năng Bộ chỉnh âm đen.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (9, N'LG LCD 29WQ600-W.ATV', CAST(5290000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/318829/lg-lcd-29-inch-29wq600watv-thumb-600x600.jpg', 4, N'Màn hình LG LCD 29WQ600-W.ATV 29 inch FHD/IPS/100Hz/5ms/FreeSync/HDMI ', 0, N'Màn hình với kích thước 29 inch và độ phân giải UWHD (2560x1080) này được thiết kế đặc biệt để đáp ứng nhu cầu sử dụng phổ thông và văn phòng của người dùng. Với công nghệ tấm nền IPS, nó cung cấp góc nhìn rộng và màu sắc chân thực, giúp tăng cường trải nghiệm làm việc và giải trí.
Tần số quét 100Hz và thời gian đáp ứng 5ms (GtG at Faster) đảm bảo hiển thị mượt mà và đáp ứng nhanh chóng trong các tình huống đa nhiệm hoặc chơi game. Độ sáng 250 cd/㎡ và công nghệ đồng bộ AMD FreeSync giúp giảm thiểu hiện tượng giật lag và tearing, tạo ra hình ảnh mượt mà và chất lượng hình ảnh tốt hơn.
Với các kết nối đa dạng như HDMI, DisplayPort, và USB-C, người dùng có thể dễ dàng kết nối màn hình với các thiết bị khác nhau. Bề mặt phẳng và tỉ lệ màu sắc hiển thị đạt 99% sRGB giúp tái tạo màu sắc chân thực và đồng nhất trên toàn bộ màn hình.
Tóm lại, màn hình này không chỉ là một lựa chọn tuyệt vời cho công việc văn phòng mà còn phù hợp cho các hoạt động giải trí như xem phim và chơi game, mang lại trải nghiệm tuyệt vời cho người dùng.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (11, N'Samsung Odyssey G5 G51C', CAST(4790000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/313205/samsung-odyssey-g5-ls27cg510eexxv-27-inch-2k-thumb-1-600x600.jpg', 1, N'Màn hình Gaming Samsung Odyssey G5 G51C LS27CG510EEXXV 27 inch 2K/VA/165Hz/1ms/FreeSync/HDR10/DisplayPort', 0, N'Hình ảnh chân thực vượt trội với độ phân giải QHD và công nghệ HDR10
Tốc độ cực đỉnh trong từng cảnh game với Tần số quét 165Hz và tốc độ phản hồi 1ms (MPRT)
Mượt mà từng cảnh hành động với tính năng AMD FreeSync Premium')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (12, N'S3 S31C LS27C310EAEXXV', CAST(2890000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/313328/samsung-s3-s31c-ls27c310eaexxv-27-inch-fhd-thumb-1-600x600.jpg', 1, N'Màn hình Samsung S3 S31C LS27C310EAEXXV 27 inch FHD/IPS/75Hz/5ms/FreeSync/HDMI ', 0, N'SAMSUNG luôn mang tới cho người dùng những mẫu màn hình có chất lượng hình ảnh hiển thị tuyệt vời với mức giá cực kỳ hợp lý. Một trong những chiếc màn hình 27inch ngon nhât thời điểm hiện tại chắc chắn phải nhắc tới Samsung LS27C310EAEXXV.
Thiết kế không viền tuyệt đẹp
Với màn hình 3 cạnh không viền tinh giản và hiện đại, phù hợp cho mọi không gian từ văn phòng tại nhà đến nơi công sở, Samsung LS27C310EAEXXV mở ra không gian giải trí sống động không giới hạn.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (13, N'UR55', CAST(5690000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/313329/samsung-ur55-lu28r550uqexxv-28-inch-4k-glr-thumb-600x600.jpg', 1, N'Màn hình Samsung UR55 LU28R550UQEXXV 28 inch 4K/IPS/60Hz/4ms/FreeSync/HDR/HDMI ', 0, N'- Màn hình: 28 inch 4K UHD (3,840 x 2,160 @ 60 Hz) 16:9 IPS
- Thời gian phản hồi 4ms (GtG)
- Tỉ lệ tương phản tĩnh 1000:1
- Độ sáng 300 cd/m2
- 1 tỷ màu, HDR10
- Cổng: 2 x HDMI 2.0, 1 x Display Port 1.2, 1 x giắc âm thanh')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (15, N'Asus VA24EHF', CAST(2490000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/309328/asus-va24ehf-23-8-inch-fhd-thumb-600x600.jpg', 5, N'Màn hình Asus VA24EHF 23.8 inch FHD/IPS/100Hz/1ms/HDMI ', 0, N'Thiết kế không viền, kích thước 23.8 inch, độ phân giải Full HD (1920x1080) với tấm nền IPS và góc nhìn rộng 178°
Công nghệ SmoothMotion với tốc độ làm mới lên đến 100Hz và thời gian phản hồi 1ms MPRT giúp mang lại trải nghiệm hình ảnh liền mạch, không bị xé hình nhờ công nghệ VRR (tần số làm mới biến đổi).
Thiết kế treo tường VESA giúp tiết kiệm không gian trên bàn làm việc
Màn hình ASUS Eye Care tích hợp công nghệ khử nhấp nháy và ánh sáng xanh thấp được chứng nhận bởi TÜV Rheinland, đảm bảo một trải nghiệm xem thoải mái')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (16, N'Asus VZ24EHE-R', CAST(2390000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/305036/asus-vz24ehe-r-23-8-inch-fhd-thumb-2-600x600.jpg', 5, N'Màn hình Asus VZ24EHE-R 23.8 inch FHD/IPS/75Hz/1ms/FreeSync/HDMI ', 0, N'Màn hình IPS 23,8 inch Full HD (1920 x 1080) với kiểu dáng siêu mỏng chỉ 6,5mm
Tốc độ làm mới lên đến 75Hz và MPRT 1ms với công nghệ Adaptive-Sync/FreeSync™ để loại bỏ bóng mờ và đảm bảo video phát lại được sắc nét và rõ ràng
Kết nối đa dạng bao gồm cổng HDMI và D-sub
Màn hình ASUS Eye Care có các công nghệ Flicker-free và Low Blue Light được chứng nhận bởi TÜV Rheinland để đảm bảo trải nghiệm xem thoải mái')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (17, N'Asus VA27EHF', CAST(3090000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/309329/asus-va27ehf-27-inch-fhd-thumb-1-600x600.jpg', 5, N'Màn hình Asus VA27EHF 27 inch FHD/IPS/100Hz/1ms/HDMI ', 0, N'ASUS VA27EHF là một màn hình chơi game tuyệt vời, với tấm nền IPS rộng 27 inch và độ phân giải Full HD (1920 x 1080), mang đến trải nghiệm hình ảnh sống động và góc nhìn rộng lên đến 178°. Bên cạnh đó, màn hình còn được trang bị công nghệ Flicker-free và Low Blue Light, đã được chứng nhận bởi TÜV Rheinland, giúp đảm bảo trải nghiệm xem mà không gây mỏi mắt và hạn chế ánh sáng xanh gây hại.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (18, N'Asus TUF VG279Q3A', CAST(4690000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/314456/asus-vg279q3a-27-inch-fhd-thumb-600x600.jpg', 5, N'Màn hình Gaming Asus TUF VG279Q3A 27 inch FHD/IPS/180Hz/1ms/FreeSync/DisplayPort/HDMI', 0, N'Màn hình chơi game 27 inch Full HD(1920x1080) với tốc độ làm mới 180Hz được thiết kế dành cho các game thủ chuyên nghiệp và lối chơi đắm chìm
Công nghệ ASUS Extreme Low Motion Blur Sync (ELMB Sync) cho phép ELMB và các công nghệ có tốc độ làm mới thay đổi hoạt động đồng thời để loại bỏ hiện tượng bóng ma và xé hình, mang lại hình ảnh chơi game sắc nét với tốc độ khung hình cao
Công nghệ FreeSync Premium, tương thích với G-Sync và AdaptiveSync mang lại trải nghiệm chơi game liền mạch, không bị xé hình bằng cách bật VRR (tốc độ làm mới thay đổi) theo mặc định
Shadow Boost tăng cường chi tiết hình ảnh ở vùng tối, làm sáng khung cảnh mà không làm vùng sáng bị lộ sáng quá mức')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (19, N'Asus ProArt PA278QV', CAST(8390000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/319480/asus-proart-pa278qv-27-inch-2k-thumb-600x600.jpg', 5, N'Màn hình Asus ProArt PA278QV 27 inch 2K IPS/75Hz/5ms/DisplayPort/HDMI/VGA/USB ', 0, N'Màn hình IPS 27-inch WQHD (2560x 1440) với thiết kế không khung viền
Tiêu chuẩn màu quốc tế đạt 100% phổ màu sRGB và 100% phổ màu Rec.709
Màn hình đạt chứng nhận Calman Verified nhờ được hiệu chuẩn trước khi xuất xưởng để mang lại độ chính xác màu tuyệt vời Delta E < 2
Các tính năng ProArt Preset và ProArt Palette độc quyền của ASUS cung cấp nhiều loại thông số màu sắc có thể điều chỉnh
Tốc độ làm tươi 75Hz và công nghệ Adaptive-Sync (48 ~ 75Hz) giúp đáp ứng các pha hành động nhanh và loại bỏ hiện tượng xé hình
Khả năng kết nối đa dạng để mang lại cho bạn sự linh hoạt tối đa, bao gồm các cổng Mini DisplayPort, DisplayPort, HDMI, Dual-link DVI-D, Audio in, giắc cắm tai nghe, cùng với bốn cổng USB 3.0
Chân đế tiện dụng với các khả năng điều chỉnh độ nghiêng, độ quay, độ xoay và chiều cao để mang lại trải nghiệm xem thoải mái, cùng với khả năng hỗ trợ giá treo chuẩn VESA')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (20, N'Asus VZ27EHE-R', CAST(2990000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/305037/asus-vz27ehe-r-27-inch-fhd-thumb-1-600x600.jpg', 5, N'Màn hình Asus VZ27EHE-R 27 inch FHD/IPS/75Hz/1ms/FreeSync/HDMI', 0, N'Màn hình IPS 27 inch Full HD (1920 x 1080) với kiểu dáng siêu mỏng chỉ 6,5mm
Tốc độ làm mới lên đến 75Hz và MPRT 1ms với công nghệ Adaptive-Sync/FreeSync™ để loại bỏ bóng mờ và đảm bảo video phát lại được sắc nét và rõ ràng
Kết nối đa dạng bao gồm cổng HDMI và D-sub
Màn hình ASUS Eye Care có các công nghệ Flicker-free và Low Blue Light được chứng nhận bởi TÜV Rheinland để đảm bảo trải nghiệm xem thoải mái')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (21, N'Asus ProArt PA247CV', CAST(5490000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/238484/asus-lcd-proart-pa247cv-238-inch-full-hd-121122-124911-600x600.jpg', 5, N'Màn hình Asus ProArt PA247CV 23.8 inch FHD/IPS/75Hz/5ms/DisplayPort/TypeC', 0, N'Màn hình 23.8-inch Full HD (1920 x 1080) đèn nền LED với tấm nền IPS có góc nhìn rộng 178°
Tiêu chuẩn màu quốc tế đạt 100% phổ màu sRGB và 100% phổ màu Rec.709
Màn hình đạt chứng nhận Calman Verified nhờ được hiệu chuẩn trước khi xuất xưởng để mang lại độ chính xác màu tuyệt vời Delta E < 2
Kết nối mở rộng bao gồm xuất hình DP qua USB-C™ với công suất truyền tải điện 65W, DisplayPort, HDMI, USB hub
Tốc độ làm tươi 75Hz và công nghệ Adaptive-Sync (48 ~ 75Hz) giúp đáp ứng các pha hành động nhanh và loại bỏ hiện tượng xé hình
Daisy-chaining cho phép người dùng kết nối chuỗi tối đa bốn màn hình cho một máy trạm đa màn hình thông qua DisplayPort
Thiết kế tiện dụng với độ nghiêng +35° ~ -5°, xoay ±90°, trục xoay ±90° và điều chỉnh chiều cao 130mm cho trải nghiệm người dùng xem thoải mái')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (22, N'MSI Pro MP273QP', CAST(5090000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/304983/msi-pro-mp273qp-27-inch-2k-75hz-thumb-1-600x600.jpg', 6, N'Màn hình MSI Pro MP273QP 27 inch 2K/IPS/75Hz/1ms/HDMI', 0, N'Với kích thước 27 inch độ phân giải QHD (2560 x 1440), màn hình máy tính MSI đem lại độ sắc nét và chi tiết cao hơn so với các màn hình Full HD thông thường, một lựa chọn tuyệt vời cho những người làm việc với đồ họa hoặc cần sử dụng một màn hình đủ lớn để chạy nhiều ứng dụng cùng lúc.

• Với tần số quét 75 Hz, chiếc màn hình máy tính này có khả năng hiển thị hình ảnh sắc nét và mượt mà, mang đến cho bạn những phút giây giải trí tuyệt vời khi chơi game và xem phim. Thời gian đáp ứng chỉ 1 ms giúp giảm thiểu hiện tượng mờ và giật hình trong các cảnh chuyển động nhanh. Công nghệ Adaptive-sync giảm thiểu hiện tượng giật hình và tách hình trong quá trình chơi game.

• Màn hình có khả năng hiển thị 16.7 triệu màu và đạt chuẩn 102% sRGB vừa nâng cao trải nghiệm xem vừa đáp ứng được nhu cầu làm việc với đồ họa cần tinh chỉnh màu sắc chuyên nghiệp. Độ sáng 350 cd/m2 đảm bảo nội dung luôn được thể hiện rõ nhất dù bạn làm việc dưới bóng đèn điện chói sáng.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (23, N'MSI Gaming G274F', CAST(4490000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/309956/msi-gaming-g274f-27-inch-fhd-thumb-600x600.jpg', 6, N'Màn hình MSI Gaming G274F 27 inch FHD/Rapid IPS/180Hz/1ms/HDMI ', 0, N'MSI thực sự đã thổi bay mọi kỳ vọng với màn hình chơi game G274F. Với thời gian phản hồi 1ms và tốc độ làm mới 180Hz, màn hình này hoàn hảo cho bất kỳ game thủ thể thao điện tử hoặc game thủ chuyên nghiệp nào muốn có một màn hình khổng lồ để thống trị cuộc thi. Màn hình này có thể không có độ phân giải cao nhất, giới hạn ở 1080p, nhưng nó giúp màn hình này cực kỳ dễ chạy trên mọi PC. Màn hình này đã được sử dụng với Dell XPS 15 và đế cắm CalDigit SoHo cho bài đánh giá này. Trong tuần qua, màn hình này đã được thử nghiệm với vô số trò chơi và được sử dụng để sử dụng hàng ngày.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (24, N'MSI PRO MP251', CAST(2490000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/316868/msi-pro-mp251-24-5-inch-fhd-thumb-1-600x600.jpg', 6, N'Màn hình MSI PRO MP251 24.5 inch FHD/IPS/100Hz/1ms/HDMI', 0, N'Màn hình 24.5 inch Dòng PRO MP251 giúp tối đa khả năng tập trung và tiết kiệm không gian. Công nghệ EyesErgo chăm sóc cho sức khỏe người dùng thông qua khả năng giảm căng thẳng và thiết kế tiện dụng. Chúng tôi đang nâng cao chất lượng hình ảnh và năng suất bằng cách tích hợp liền mạch phần cứng và phần mềm, đồng thời chào đón sự đổi mới trong việc trang bị tần số quét hình 100Hz cho các công việc tương lai.

')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (25, N'LG 27MP500-B.ATV', CAST(2990000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/309332/lg-27mp500-b-atv-27-inch-fhd-thumb-600x600.jpg', 4, N'Màn hình LG 27MP500-B.ATV 27 inch FHD/IPS/75Hz/5ms/HDMI ', 0, N'Màn hình Mobile Pixels 28 inch có độ phân giải cực cao 3840 x 2160 pixel, cao gấp bốn lần so với màn hình Full HD tiêu chuẩn. Điều này có nghĩa là màn hình hiển thị hình ảnh cực kỳ sắc nét và rõ ràng, lý tưởng cho các chuyên gia làm việc với đồ họa, hình ảnh hoặc video. Màn hình độ phân giải cao cho phép người dùng thực hiện đa nhiệm, xem nhiều cửa sổ cùng lúc và làm việc với độ chi tiết cao. Với chân đế có thể điều chỉnh, bạn có thể dễ dàng tùy chỉnh không gian làm việc của mình để phù hợp nhất với mình. Nghiêng và điều chỉnh độ cao của màn hình để có được sự thoải mái tối ưu.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (26, N'LG 24QP550-B.ATV', CAST(4490000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/318780/lg-lcd-238-inch-24qp550batv-thumb-600x600.jpg', 4, N'Màn hình LG 24QP550-B.ATV 23.8 inch 2K/IPS/75Hz/5ms/FreeSync/HDMI/DisplayPort  ', 0, N'LG 24QP550-B được sinh ra là dòng màn hình tối ưu cho công việc, thế nên ngoại hình trên chiếc màn hình LG 24QP550-B được thiết kế khá vuông vắn từ phần cạnh viền đến cả chân đế hướng tới sự tối giản nhất với màu đen nhám ở toàn bộ tất cả các chi tiết từ vỏ màn hình cho đến chân màn hình. Mình nghĩ với thiết kế như vậy nó sẽ giúp không thu hút quá nhiều sự chú ý của người dùng cũng như không gây ra được sự sao nhãng khi làm việc.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (28, N'Dell UltraSharp U2422H', CAST(5390000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/313650/dell-ultrasharp-u2422h-23-8-inch-fhd-thumb-600x600.jpg', 2, N'Màn hình Dell UltraSharp U2422H 23.8 inch FHD/IPS/60Hz/5ms/DisplayPort/TypeC ', 0, N'Màn hình Dell UltraSharp U2422H 23.8 inch FHD một mẫu màn hình đồ hoạ đến từ nhà Dell với màu sắc chuẩn xác, đa dạng, cùng các tiện ích thông minh hiện đại sẽ mang đến cho người dùng những trải nghiệm sử dụng tối ưu từ học tập, làm việc, sáng tạo cũng như giải trí đa phương tiện.
• Màn hình máy tính với kích thước 23.8 inch có độ phân giải Full HD (1920 x 1080) mang lại không gian hiển thị nội dung đầy đủ hình ảnh sắc nét để người dùng trải nghiệm trọn vẹn đa nội dung khác nhau. Hơn nữa, tấm nền IPS với khả năng tái tạo 16.7 triệu màu cho phép máy hiển thị màu sắc chuẩn xác nhất dưới nhiều góc nhìn.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (29, N'Dell Ultrasharp U2723QE', CAST(12790000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/308042/dell-ultrasharp-u2723qe-27-inch-4k-thumb-600x600.jpg', 2, N'Màn hình Dell Ultrasharp U2723QE 27 inch 4K/IPS/60Hz/5ms/DisplayPort/TypeC ', 0, N'• Màn hình máy tính Dell với kích thước 27 inch được trang bị tấm nền IPS cho một không gian hiển thị rộng lớn, tầm nhìn được mở rộng lên đến 178 độ cùng khả năng tái tạo màu sắc tốt dưới mọi góc độ. Bạn có thể làm việc hay giải trí đa phương tiện với không gian đắm chìm, sống động và thú vị hơn.

• Độ phân giải cao UHD (3840 x 2160) cho xuất hình ảnh với độ chân thực cao, nội dung thêm sắc nét và chi tiết cho bạn trải nghiệm xem, nhìn thêm đã mắt khi coi phim, chơi game hay lướt web.

• Thêm vào đó, màn hình đồ họa có thông số đạt 98% DCI-P3, 100% sRGB và 100% Rec 709 cùng khả năng hiển thị lên đến 1.07 tỷ màu cho xuất hình ảnh với độ chi tiết cao và màu sắc trung thực nhất. Đây còn là điều kiện lý tưởng hỗ trợ cho các hoạt động thiết kế, sáng tạo đồ họa yêu cầu có độ chính xác màu cao và tương phản tốt.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (30, N'Dell P2422H', CAST(4590000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/258331/dell-lcd-p2422h-238-inch-full-hd-121122-121210-600x600.jpg', 2, N'Màn hình Dell P2422H 23.8 inch FHD/IPS/60Hz/5ms/DisplayPort', 0, N'Thiết kế hiện đại, thông minh với khả năng xoay chuyển linh hoạt
Kích thước màn hình khá gọn gàng với bề dày chỉ 179.57 mm, khối lượng bao gồm cả chân đế là 5.57 kg cùng lớp áo đen hiện đại và các góc cạnh vuông vắn, tinh tế, cho phép bạn dễ dàng bố trí ở mọi không gian văn phòng mà không tốn quá nhiều diện tích với các thao tác lắp đặt máy đơn giản, không rườm rà hay vướng víu dây cáp.

Một điểm thiết kế tiện dụng trên chiếc màn hình văn phòng này là khả năng điều chỉnh độ nghiêng, chiều cao hay khả năng xoay của màn hình với góc 90 độ theo chiều kim đồng hồ hoặc ngược chiều kim đồng hồ để người dùng sử dụng được theo nhiều chiều hướng thuận tiện khác nhau sao cho phù hợp nhất với tầm nhìn của mình. Hơn nữa màn hình máy tính gắn được ARM chuẩn VESA linh hoạt hơn trong các tình huống sử dụng khác nhau khi có thể điều chỉnh được góc nhìn cũng như tầm nhìn.')
INSERT [dbo].[products] ([id], [name], [price], [image], [category_id], [description], [status], [detail]) VALUES (31, N'Dell P2722H', CAST(5690000.00 AS Decimal(10, 2)), N'https://cdn.tgdd.vn/Products/Images/5697/258332/dell-lcd-p2722h-27inch-fullhd-121122-121034-600x600.jpg', 2, N'Màn hình Dell P2722H 27 inch FHD/IPS/60Hz/5ms/DisplayPort ', 0, N'Dell LCD P2722H sở hữu màn hình 27 inch với thiết kế phẳng, viền mỏng, có độ phân giải Full HD, hiển thị chi tiết chân thực với 16.7 triệu màu, cùng kết hợp với tấm nền IPS để bạn có thể xem chất lượng hình ảnh và màu sắc nhất quán từ mọi góc nhìn.
Tỷ lệ tương phản 1000:1 và đạt độ sáng 300 cd/m2 cho khả năng tái tạo hoàn hảo màu sắc qua từng khung hình với sắc đen sâu thẳm, sắc trắng thuần khiết, hình ảnh hiển thị tốt ở nhiều cường độ sáng khác nhau, khả năng phân tách giữa các vùng sáng tối chính xác hơn.')
SET IDENTITY_INSERT [dbo].[products] OFF
GO
ALTER TABLE [dbo].[accounts] ADD  CONSTRAINT [DF__accounts__Status__2B3F6F97]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[accounts] ADD  CONSTRAINT [DF__accounts__role__2C3393D0]  DEFAULT ((0)) FOR [role]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__created___2F10007B]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__status__300424B4]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[products] ADD  CONSTRAINT [DF__products__status__267ABA7A]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__account___30F848ED] FOREIGN KEY([account_id])
REFERENCES [dbo].[accounts] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__account___30F848ED]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__product___31EC6D26] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__product___31EC6D26]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK__products__catego__276EDEB3] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK__products__catego__276EDEB3]
GO
