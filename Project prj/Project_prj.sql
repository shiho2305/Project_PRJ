USE [master]
GO
/****** Object:  Database [Project1]    Script Date: 30/10/2022 01:07:54 ******/
CREATE DATABASE [Project1]

GO
USE [Project1]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[role] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentDate] [date] NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[ExpireDate] [date] NULL,
	[Status] [bit] NULL,
	[order_id] [int] NULL,
 CONSTRAINT [PK__Bill__3214EC073A17D113] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[total] [float] NULL,
	[notes] [nvarchar](50) NULL,
	[order_date] [date] NULL,
 CONSTRAINT [PK__Order__3214EC07B8277579] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__OrderDet__3214EC0726B0B51B] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[Discount] [money] NULL,
	[CreateDate] [date] NULL,
	[img] [ntext] NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK__Product__3214EC07B6F335F4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (1, N'sa', N'123', 1, N'TP Hồ Chí Minh', N'206342863', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (2, N'admin', N'admin', 1, N'Vũng tàu', N'965230221', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (3, N'123', N'123', 0, N'TP Hồ Chí Minh', N'248762035', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (4, N'456', N'456', 0, N'Hà Nội ', N'253644218', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (5, N'Moyne', N'aaa', 0, N'Cần Thơ', N'212658391', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (6, N'Vales', N'bbb', 0, N'TP Hồ Chí Minh ', N'209300255', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (7, N'Kinson', N'ccc', 0, N'Hà Nội', N'262162158', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (8, N'Goor', N'246', 0, N'Hà Nội ', N'252258379', N'../images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (9, N'Maxweell', N'135', 0, N'Vũng Tàu', N'234109666', N'../images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (10, N'Dunbobbin', N'789', 0, N'Đà Nẵng ', N'201874859', N'../images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (11, N'username', N'password', 0, N'Đà Nẵng', N'012328948', N'../images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (12, N'abc', N'abc', 0, N'Hà nội', N'0388888888', N'../images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (13, N'linh111', N'abc', 0, N'Hà nội', N'0388888888', N'../images/avatar2.png')
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (1, CAST(N'2022-06-01' AS Date), N'Card', CAST(N'2022-11-26' AS Date), 0, 4)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (2, CAST(N'2022-04-18' AS Date), N'Money', CAST(N'2022-08-17' AS Date), 1, 2)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (3, CAST(N'2021-11-02' AS Date), N'Money', CAST(N'2022-06-23' AS Date), 0, 6)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (4, CAST(N'2022-07-06' AS Date), N'Card', CAST(N'2022-12-30' AS Date), 0, 8)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (5, CAST(N'2021-11-05' AS Date), N'Card', CAST(N'2022-01-08' AS Date), 1, 9)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (6, CAST(N'2022-01-11' AS Date), N'Money', CAST(N'2022-02-17' AS Date), 1, 10)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (7, CAST(N'2021-10-24' AS Date), N'Card', CAST(N'2021-11-13' AS Date), 0, 3)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (8, CAST(N'2022-09-03' AS Date), N'Money', CAST(N'2022-10-02' AS Date), 1, 5)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (9, CAST(N'2022-02-04' AS Date), N'Card', CAST(N'2021-11-16' AS Date), 0, 7)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (10, CAST(N'2021-12-20' AS Date), N'Money', CAST(N'2022-02-20' AS Date), 1, 1)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (11, CAST(N'2022-05-12' AS Date), N'Card', CAST(N'2022-11-11' AS Date), 0, 5)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (12, CAST(N'2021-12-12' AS Date), N'Money', CAST(N'2022-02-02' AS Date), 1, 8)
GO
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (1, 4, 8, N'bảo hành sản phẩm trong khi vận chuyển ', CAST(N'2022-10-06' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (2, 4, 9, N'bảo hành sản phẩm trong khi vận chuyển ', CAST(N'2022-05-14' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (3, 5, 2, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-08-28' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (4, 9, 10, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-07-30' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (5, 3, 8, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-11-25' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (6, 6, 2, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-03-13' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (7, 1, 3, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-04-21' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (8, 4, 9, N'không có', CAST(N'2022-09-12' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (9, 5, 6, N'không có', CAST(N'2022-02-28' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (10, 7, 10, N'không có', CAST(N'2022-01-24' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (11, 3, 6, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-12-12' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (12, 7, 8, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-05-06' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (13, 8, 4, N'không có', CAST(N'2022-01-28' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (1, 3, 3, 220.58, 34)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (2, 6, 5, 40.88, 6)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 7, 20.56, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (4, 8, 9, 450.78, 45)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (5, 5, 3, 78.04, 9)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (6, 2, 1, 50.78, 7)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (7, 4, 2, 110.23, 12)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (8, 7, 7, 122.67, 14)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (9, 9, 7, 145.68, 16)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (10, 10, 4, 34.78, 3)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (11, 11, 12, 24.78, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (12, 12, 11, 145.78, 16)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (1, N'Cà phê Arabica', 12, 145.5800, 100.7400, CAST(N'2022-11-11' AS Date), N'images/menu-1.png', N'Ấn tượng cuối cùng (bao gồm dư vị) cà phê truyền lại trong hoặc ngay sau khi nuốt. Được coi là tốt nếu; ngọt ngào, sạch sẽ và gợi nhớ đến hương vị của cà phê.

')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (2, N'Cà phê Cherry', 34, 340.6800, 300.8450, CAST(N'2022-04-04' AS Date), N'images/menu-2.png', N'Cân bằng - Không có đặc điểm hoặc mùi vị nào lấn át những đặc tính khác. Độ chua của cà phê được cân bằng bởi vị ngọt của nó, quá nhiều hay quá ít đều không được mong muốn.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (3, N'Cappuccino', 23, 265.5700, 212.7830, CAST(N'2022-03-03' AS Date), N'images/menu-3.png', N'Sạch - Có khả năng tự nếm trái cây mà không có sự can thiệp nào từ quá trình chế biến. Cà phê chế biến ướt thường có cấu hình sạch hơn cà phê chế biến Khô')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (4, N'Cà phê Moka', 28, 292.4780, 245.5700, CAST(N'2022-08-08' AS Date), N'images/menu-4.png', N'Độ phức tạp - Khả năng xác định rõ ràng nhiều mùi vị và cảm giác khác nhau.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (5, N'Cà phê Ý', 35, 378.8750, 320.7840, CAST(N'2022-09-09' AS Date), N'images/menu-5.png', N'Trái cây - Có thể đến tự nhiên từ cà phê hoặc do quá trình chế biến.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (6, N'Cà phê Latte', 1, 20.7800, 17.5500, CAST(N'2022-05-06' AS Date), N'images/menu-6.png', N'Vị ngọt - Vị ngọt rất quan trọng trong việc cân bằng độ chua và làm mịn Kết thúc của bất kỳ loại cà phê tuyệt vời nào.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (7, N'Cà phê Nicaragua', 7, 99.3740, 67.8900, CAST(N'2022-01-01' AS Date), N'images/product-1.png', N'hãy nghĩ rằng cà phê có độ axit Tốt là sáng hoặc nhanh (thậm chí có thể sảng khoái) thay vì nhạt nhẽo hoặc bết. Độ chua bị ảnh hưởng bởi quá trình rang và sẽ giảm đáng kể khi cà phê đạt đến độ rang đậm hơn.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (8, N'Cà phê columbia', 9, 125.7800, 111.4780, CAST(N'2022-10-10' AS Date), N'images/product-2.png', N'Sự đa dạng của các vị ngon, chẳng hạn như sô cô la, quả mọng, cam quýt, caramel, ngọt ngào, được sử dụng để mô tả cà phê. Một số trở nên rõ ràng hơn khi cà phê nguội đi.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (9, N'Cà phê peru', 7, 99.3740, 79.7845, CAST(N'2022-04-07' AS Date), N'images/product-3.png', N'vị đậm đà của cà phê khi vừa uống ngụm đầu tiên khiến người ta cảm thấy khó quên ')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (10, N'Cà phê robusta', 3, 40.5600, 34.7800, CAST(N'2022-11-08' AS Date), N'images/menu-7.png', N'Đặc điểm của nó là ít caffein, nhiều sữa và lạnh, lâu tan vì thế nó là sự lựa chọn tuyệt vời của bạn trẻ và giới văn phòng.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (11, N'Cà phê culi', 8, 111.5670, 100.6870, CAST(N'2022-06-09' AS Date), N'images/menu-8.png', N'Đặc điểm của nó là ít caffein, nhiều sữa và lạnh, lâu tan vì thế nó là sự lựa chọn tuyệt vời của bạn trẻ và giới văn phòng.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (13, N'cczxxcz', 234, 2345.0000, 243.0000, CAST(N'2022-10-29' AS Date), N'123432', N'<p>123&nbsp;<strong>2 rb243werv&nbsp; &nbsp;<em>werr</em></strong></p>')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Order]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Admin] FOREIGN KEY([user_id])
REFERENCES [dbo].[Admin] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Admin]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
USE [master]
GO
ALTER DATABASE [Project1] SET  READ_WRITE 
GO


