USE [Invoice_Test]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Users_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Itemmaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 21-06-2026 20:19:42 ******/
DROP PROCEDURE [dbo].[sp_Category_Delete]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__CreatedDa__3E1D39E1]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsDeleted__3D2915A8]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__IsActive__3C34F16F]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-06-2026 20:19:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[itemmaster]    Script Date: 21-06-2026 20:19:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[itemmaster]') AND type in (N'U'))
DROP TABLE [dbo].[itemmaster]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21-06-2026 20:19:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21-06-2026 20:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itemmaster]    Script Date: 21-06-2026 20:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemmaster](
	[catcode] [varchar](50) NULL,
	[itembarcode] [varchar](50) NULL,
	[uom] [varchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[itemcode] [varchar](10) NOT NULL,
	[itemname] [varchar](100) NOT NULL,
	[description] [varchar](250) NULL,
	[Rate] [decimal](18, 2) NULL,
	[minimumstock] [decimal](18, 2) NULL,
	[maximumstock] [decimal](18, 2) NULL,
	[isActive] [bit] NULL,
	[createdby] [varchar](100) NULL,
	[createddate] [datetime] NULL,
	[updatedby] [varchar](100) NULL,
	[updateddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-06-2026 20:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](200) NOT NULL,
	[PhoneNumber] [varchar](25) NOT NULL,
	[AlternatePhone] [varchar](25) NULL,
	[AddressLine1] [varchar](255) NOT NULL,
	[AddressLine2] [varchar](255) NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
	[ZipCode] [varchar](20) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[DateOfBirth] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'C001', N'Rice', N'All types of rice products', 1, N'sa', CAST(N'2026-05-17T17:23:31.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'C002', N'Oil', N'Cooking oils and related products', 1, N'sa', CAST(N'2026-05-17T17:23:31.870' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'C003', N'Snacks', N'Ready-to-eat snack items', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'C004', N'Pulses', N'Dal, lentils and pulses', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'C005', N'Spices', N'Masala and spice powders', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'C006', N'Beverages', N'Drinks and juices', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'C007', N'Dairy', N'Milk and dairy products', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'C008', N'Bakery', N'Bread, cakes, and bakery items', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'C009', N'Frozen', N'Frozen food items', 1, N'sa', CAST(N'2026-05-17T17:23:31.873' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'546', N'ak', N'car', 1, N'sa', CAST(N'2026-05-17T17:23:31.877' AS DateTime), N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-07T19:09:06.020' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'hggg', N'dfgf', N'', 1, N'sa', CAST(N'2026-05-17T17:23:31.877' AS DateTime), N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-07T18:29:57.763' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'cds', N'vxy', N'fugui', 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-14T12:47:49.060' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'ddf', N'hiii', N'xcdf', 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-14T13:35:07.483' AS DateTime), N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-14T13:35:39.157' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'strin', N'string', N'string', 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-21T17:41:35.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, N'453', N'laptop', N'sdfdgf', 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-21T17:43:30.693' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[itemmaster] ON 
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'pen', N'bar001', N'lr', 11, N'pen08', N'blue pen', N'writing', CAST(10.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), CAST(67.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-03-15T16:04:53.367' AS DateTime), N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-03-29T16:59:58.177' AS DateTime))
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'mobil', N'android001', N'lr', 12, N'mobile08', N'one_pluse', N'smartphone', CAST(25000.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-03-15T16:06:41.800' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'gdhfh', N'jjdmkjd', N'LTR', 14, N'aagd', N'`t68gh', N'8yuhu', CAST(54.00 AS Decimal(18, 2)), CAST(87.00 AS Decimal(18, 2)), CAST(568.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-03-29T17:53:46.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ggg', N'58', N'NOS', 15, N'ykhbi', N'6tbb', N'hvvk', CAST(76.00 AS Decimal(18, 2)), CAST(856.00 AS Decimal(18, 2)), CAST(87765.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-03-29T17:54:11.877' AS DateTime), N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T13:16:37.310' AS DateTime))
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR001', N'PCS', 16, N'ITM001', N'Mobile Charger', N'Fast charger', CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T09:58:49.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR001', N'PCS', 17, N'ITM001', N'Mobile Charger', N'Fast charger', CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR002', N'PCS', 18, N'ITM002', N'USB Cable', N'Type C cable', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR003', N'PCS', 19, N'ITM003', N'Headphones', N'Wired headphones', CAST(300.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR004', N'PCS', 20, N'ITM004', N'Bluetooth Speaker', N'Portable speaker', CAST(1200.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR005', N'PCS', 21, N'ITM005', N'Power Bank', N'10000mAh', CAST(900.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR006', N'PCS', 22, N'ITM006', N'LED Bulb', N'9W bulb', CAST(120.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR007', N'PCS', 23, N'ITM007', N'Extension Box', N'4 socket', CAST(400.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR008', N'PCS', 24, N'ITM008', N'Smart Watch', N'Fitness watch', CAST(2500.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR009', N'PCS', 25, N'ITM009', N'Earbuds', N'Wireless earbuds', CAST(1800.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'ELEC', N'BAR010', N'PCS', 26, N'ITM010', N'Laptop Mouse', N'Wireless mouse', CAST(350.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR011', N'KG', 27, N'ITM011', N'Rice 1kg', N'Premium rice', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR012', N'KG', 28, N'ITM012', N'Wheat Flour', N'1kg atta', CAST(45.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR013', N'KG', 29, N'ITM013', N'Sugar', N'Refined sugar', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR014', N'KG', 30, N'ITM014', N'Salt', N'Iodized salt', CAST(20.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR015', N'LTR', 31, N'ITM015', N'Cooking Oil', N'1L sunflower oil', CAST(150.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR016', N'KG', 32, N'ITM016', N'Toor Dal', N'Premium dal', CAST(120.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR017', N'PKT', 33, N'ITM017', N'Tea Powder', N'500g tea', CAST(200.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR018', N'PKT', 34, N'ITM018', N'Coffee Powder', N'250g coffee', CAST(180.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR019', N'PKT', 35, N'ITM019', N'Biscuits', N'Sweet biscuits', CAST(30.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'GROC', N'BAR020', N'PKT', 36, N'ITM020', N'Milk Packet', N'500ml milk', CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:06.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR021', N'PCS', 37, N'ITM021', N'T-Shirt', N'Cotton T-shirt', CAST(300.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.557' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR022', N'PCS', 38, N'ITM022', N'Shirt', N'Formal shirt', CAST(600.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR023', N'PCS', 39, N'ITM023', N'Jeans', N'Denim jeans', CAST(1200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR024', N'PCS', 40, N'ITM024', N'Shorts', N'Casual shorts', CAST(400.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR025', N'PCS', 41, N'ITM025', N'Jacket', N'Winter jacket', CAST(2000.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR026', N'PCS', 42, N'ITM026', N'Saree', N'Silk saree', CAST(3000.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR027', N'PCS', 43, N'ITM027', N'Kurta', N'Cotton kurta', CAST(700.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR028', N'PCS', 44, N'ITM028', N'Leggings', N'Stretch leggings', CAST(250.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR029', N'PCS', 45, N'ITM029', N'Innerwear', N'Mens innerwear', CAST(150.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'CLOT', N'BAR030', N'PCS', 46, N'ITM030', N'Socks', N'Cotton socks', CAST(50.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:09:34.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR031', N'PCS', 47, N'ITM031', N'Notebook', N'200 pages', CAST(80.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR032', N'PCS', 48, N'ITM032', N'Pen', N'Blue pen', CAST(10.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR033', N'PCS', 49, N'ITM033', N'Pencil', N'HB pencil', CAST(5.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR034', N'PCS', 50, N'ITM034', N'Eraser', N'Rubber eraser', CAST(5.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR035', N'PCS', 51, N'ITM035', N'Sharpener', N'Metal sharpener', CAST(10.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR036', N'PCS', 52, N'ITM036', N'Scale', N'30cm scale', CAST(15.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR037', N'PCS', 53, N'ITM037', N'Marker', N'Whiteboard marker', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR038', N'PCS', 54, N'ITM038', N'Highlighter', N'Fluorescent pen', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR039', N'PCS', 55, N'ITM039', N'Stapler', N'Small stapler', CAST(120.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'STAT', N'BAR040', N'PCS', 56, N'ITM040', N'Glue', N'Adhesive glue', CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:02.243' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR041', N'BOX', 57, N'ITM041', N'Paracetamol', N'Fever tablet', CAST(40.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.847' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR042', N'BOT', 58, N'ITM042', N'Cough Syrup', N'100ml syrup', CAST(90.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR043', N'BOX', 59, N'ITM043', N'Vitamin Tablets', N'Multivitamin', CAST(120.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR044', N'PCS', 60, N'ITM044', N'Face Mask', N'Disposable mask', CAST(5.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR045', N'BOT', 61, N'ITM045', N'Hand Sanitizer', N'100ml sanitizer', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR046', N'PCS', 62, N'ITM046', N'Thermometer', N'Digital thermometer', CAST(250.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR047', N'PCS', 63, N'ITM047', N'Bandage', N'Medical bandage', CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR048', N'BOT', 64, N'ITM048', N'Antiseptic Liquid', N'Dettol type', CAST(100.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR049', N'PCS', 65, N'ITM049', N'Pain Relief Balm', N'Pain balm', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'MEDI', N'BAR050', N'PKT', 66, N'ITM050', N'Glucose Powder', N'Energy drink', CAST(80.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:10:30.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 68, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:01:19.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 69, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:01:28.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 70, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:01:34.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 71, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:01:43.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 72, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:03:38.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 73, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:08:59.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 74, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:09:28.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 75, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:09:54.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'hijj', N'glijj', N'LTR', 76, N'56', N'jiuoi', N'jljpop', CAST(45.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:10:15.203' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 77, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:32:50.043' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 78, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:33:22.047' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 79, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:33:24.240' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 80, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:33:48.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 81, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:33:49.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 82, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:33:49.527' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 83, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:33:49.757' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 84, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:34:37.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 85, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:34:55.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 86, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:23.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 87, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:24.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 88, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:24.350' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 89, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:24.507' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 90, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:24.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 91, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:29.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 92, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:39.840' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'cie', N'nved', N'NOS', 93, N'343', N'bfd', N'vfdjkls', CAST(12.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:37:43.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[itemmaster] ([catcode], [itembarcode], [uom], [id], [itemcode], [itemname], [description], [Rate], [minimumstock], [maximumstock], [isActive], [createdby], [createddate], [updatedby], [updateddate]) VALUES (N'eev', N'e22', N'NOS', 94, N'vb34', N'tubelight', N'hvoie', CAST(45.00 AS Decimal(18, 2)), CAST(23.00 AS Decimal(18, 2)), CAST(98.00 AS Decimal(18, 2)), 1, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-05-17T12:38:56.883' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'pravin', N'pravin@gmail.com', N'pravin@123', N'pravin', NULL, N'p', N'pravin p', N'6380140879', N'6383978719', N' tc road', NULL, N'villupuram', N'Tamil Nadu', N'605602', N'India', CAST(N'2004-07-15' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T13:28:41.533' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'sasitharan', N'sasimaha0072005@gmail.com', N'sasi@2005', N'sasi', N'tharan', N'g', N'sasitharan g', N'6383978719', N'9865527451', N'villupuram alathur', N'near viratikuppam', N'villupuram', N'tamilnadu', N'605602', N'india', CAST(N'2005-04-09' AS Date), 1, 0, N'sa', CAST(N'2026-06-19T13:30:02.420' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'user4', N'user4@gmail.com', N'123456', N'Arun', NULL, N'Kumar', N'Arun Kumar', N'9876543201', N'7235618462', N'12 Main St', NULL, N'Chennai', N'Tamil Nadu', N'600001', N'India', CAST(N'2004-05-01' AS Date), 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-21T10:40:15.117' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'user5', N'user5@gmail.com', N'123456', N'Bala', NULL, N'Raj', N'Bala Raj', N'9876543202', NULL, N'15 Park Rd', NULL, N'Chennai', N'Tamil Nadu', N'600002', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'user6', N'user6@gmail.com', N'123456', N'Charles', NULL, N'David', N'Charles David', N'9876543203', NULL, N'18 Lake View', NULL, N'Coimbatore', N'Tamil Nadu', N'641001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'user7', N'user7@gmail.com', N'123456', N'Deepak', NULL, N'K', N'Deepak K', N'9876543204', NULL, N'22 MG Road', NULL, N'Madurai', N'Tamil Nadu', N'625001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'user8', N'user8@gmail.com', N'123456', N'Ezhil', NULL, N'M', N'Ezhil M', N'9876543205', NULL, N'10 Gandhi St', NULL, N'Salem', N'Tamil Nadu', N'636001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'user9', N'user9@gmail.com', N'123456', N'Farook', NULL, N'Ali', N'Farook Ali', N'9876543206', NULL, N'14 Anna Nagar', NULL, N'Trichy', N'Tamil Nadu', N'620001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'user10', N'user10@gmail.com', N'123456', N'Gokul', NULL, N'S', N'Gokul S', N'9876543207', NULL, N'7 Cross Rd', NULL, N'Erode', N'Tamil Nadu', N'638001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'user11', N'user11@gmail.com', N'123456', N'Hari', NULL, N'Prasad', N'Hari Prasad', N'9876543208', NULL, N'9 Temple St', NULL, N'Vellore', N'Tamil Nadu', N'632001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'user12', N'user12@gmail.com', N'123456', N'Irfan', NULL, N'Khan', N'Irfan Khan', N'9876543209', NULL, N'11 Market Rd', NULL, N'Tirunelveli', N'Tamil Nadu', N'627001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'user13', N'user13@gmail.com', N'123456', N'Jagan', NULL, N'R', N'Jagan R', N'9876543210', NULL, N'13 South St', NULL, N'Thanjavur', N'Tamil Nadu', N'613001', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'user14', N'user14@gmail.com', N'123456', N'Karthik', NULL, N'V', N'Karthik V', N'9876543211', NULL, N'17 East St', NULL, N'Chennai', N'Tamil Nadu', N'600003', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'user15', N'user15@gmail.com', N'123456', N'Lokesh', NULL, N'B', N'Lokesh B', N'9876543212', NULL, N'21 West St', NULL, N'Madurai', N'Tamil Nadu', N'625002', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'user16', N'user16@gmail.com', N'123456', N'Manoj', NULL, N'Kumar', N'Manoj Kumar', N'9876543213', NULL, N'25 Ring Rd', NULL, N'Salem', N'Tamil Nadu', N'636002', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'user17', N'user17@gmail.com', N'123456', N'Naveen', NULL, N'R', N'Naveen R', N'9876543214', NULL, N'29 North St', NULL, N'Trichy', N'Tamil Nadu', N'620002', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'user20', N'user20@gmail.com', N'123456', N'Suresh', NULL, N'P', N'Suresh P', N'9876543217', NULL, N'41 Hill Rd', NULL, N'Vellore', N'Tamil Nadu', N'632002', N'India', NULL, 1, 0, N'Admin', CAST(N'2026-06-21T10:12:52.917' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'jhoncena', N'jhoncena@gmail.com', N'jhon@123', N'jhon', N'cena', N'a', N'jhoncena', N'6789546711', N'98765490', N'mailam', N'chendur', N'villupuram', N'tamilnadu', N'605062', N'india', CAST(N'2000-06-01' AS Date), 1, 0, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-21T10:45:27.490' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, N'rock', N'rock@gmail.com', N'password@123', N'rock', N'string', N's', N'rock', N'4563897627', N'string', N'string', N'string', N'villupuram', N'string', N'string', N'string', CAST(N'2026-06-21' AS Date), 1, 0, N'DESKTOP-GLVHGBK\SASIDHARAN G', CAST(N'2026-06-21T18:03:10.777' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Delete]

(

    @Id INT

)

AS

BEGIN

    DELETE FROM Category

    WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetAll]

AS

BEGIN

    SELECT

        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM Category

    ORDER BY Id ASC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetById]

(

    @Id INT

)

AS

BEGIN

    SELECT

        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM Category

    WHERE Id = @Id

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetPaged]
 
    @Code        VARCHAR(5) = NULL,

    @Name        VARCHAR(25) = NULL,

    @IsActive    BIT = NULL,

    @PageNumber  INT = 1,

    @PageSize    INT = 10

AS

BEGIN

    SET NOCOUNT ON;

    IF (@PageNumber <= 0) SET @PageNumber = 1;

    IF (@PageSize <= 0) SET @PageSize = 10;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

    SELECT

        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate,

        COUNT(*) OVER() AS TotalRecords

    FROM Category

    WHERE

        (@Code IS NULL OR Code LIKE '%' + @Code + '%')

        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')

        AND (@IsActive IS NULL OR IsActive = @IsActive)

    ORDER BY Id ASC

    OFFSET @Offset ROWS

    FETCH NEXT @PageSize ROWS ONLY;

    SELECT

        COUNT(1) AS TotalRecords

    FROM Category

    WHERE

        (@Code IS NULL OR Code LIKE '%' + @Code + '%')

        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')

        AND (@IsActive IS NULL OR IsActive = @IsActive);
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Insert]

(

    @Code VARCHAR(5),

    @Name VARCHAR(25),

    @Description VARCHAR(100),

    @IsActive BIT

)

AS

BEGIN

    INSERT INTO Category

    (

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate

    )

    VALUES

    (

        @Code,

        @Name,

        @Description,

        @IsActive,

        SYSTEM_USER,

        GETDATE()

    )

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Update]

(

    @Id INT,

    @Code VARCHAR(5),

    @Name VARCHAR(25),

    @Description VARCHAR(100),

    @IsActive BIT

)

AS

BEGIN

    UPDATE Category

    SET

        Code = @Code,

        Name = @Name,

        Description = @Description,

        IsActive = @IsActive,

        UpdatedBy = SYSTEM_USER,

        UpdatedDate = GETDATE()

    WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Itemmaster_Delete]
(
    @Id INT
)
AS
BEGIN
    DELETE FROM Itemmaster
    WHERE Id = @Id
END


GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll]
AS
BEGIN
    SELECT Id, CatCode, ItemBarCode, Itemcode, Itemname,
        Description, Uom, Rate,
        Minimumstock, Maximumstock,
        IsActive, Createdby, Createddate,
        Updatedby, Updateddate FROM Itemmaster
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetById]
(
    @Id INT
)
AS
BEGIN
    SELECT id, CatCode, ItemBarCode, Itemcode, Itemname,
        Description, Uom, Rate,
        Minimumstock, Maximumstock,
        IsActive, Createdby, Createddate,
        Updatedby, Updateddate FROM Itemmaster
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]

	@CatCode	VARCHAR(5) = NULL,

	@ItemName	VARCHAR(100) = NULL,

	@Uom		VARCHAR(3) = NULL,

    @PageNumber INT = 1,

    @PageSize   INT = 10

AS

BEGIN

    SET NOCOUNT ON;
 
    -- Default paging

    IF (@PageNumber <= 0) SET @PageNumber = 1;

    IF (@PageSize <= 0) SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    -- Main data

	SELECT 

		Id,

		CatCode,

		ItemBarCode,

		Itemcode,

		Itemname,

		Description,

		Uom,

		Rate,

		Minimumstock,

		Maximumstock,

		IsActive,

		Createdby,

		Createddate,

		Updatedby,

		Updateddate,

		COUNT(*) OVER() AS TotalRecords

	FROM dbo.Itemmaster

	WHERE 

		(@CatCode IS NULL OR CatCode LIKE '%' + @CatCode + '%')

		AND (@ItemName IS NULL OR ItemName LIKE '%' + @ItemName + '%')

		AND (@Uom IS NULL OR Uom LIKE '%' + @Uom + '%')

	ORDER BY Id ASC

	OFFSET @Offset ROWS

	FETCH NEXT @PageSize ROWS ONLY;
 
	 -- Total count (for pagination UI)

SELECT 

     COUNT(1) AS TotalRecords

FROM dbo.Itemmaster

WHERE 

     (@CatCode IS NULL OR CatCode LIKE '%' + @CatCode + '%')

     AND (@ItemName IS NULL OR ItemName LIKE  '%'+@ItemName+'%')

     AND (@Uom IS NULL OR Uom LIKE '%'+@Uom+'%');
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert]
(
    @CatCode VARCHAR(5),
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
    
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Itemmaster
    (
        CatCode, ItemBarCode, Itemcode, Itemname,
        Description, Uom, Rate,
        Minimumstock, Maximumstock,
        IsActive, Createdby, Createddate, updatedby, updateddate
    )
    VALUES
    (
        @CatCode, @ItemBarCode, @Itemcode, @Itemname,
        @Description, @Uom, @Rate,
        @Minimumstock, @Maximumstock,
        @IsActive,SYSTEM_USER, GETDATE(),NULL,NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Update]
(
    @Id INT,
    @CatCode VARCHAR(5),
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
   
)
AS
BEGIN
    UPDATE Itemmaster
    SET
        CatCode = @CatCode,
        ItemBarCode = @ItemBarCode,
        Itemcode = @Itemcode,
        Itemname = @Itemname,
        Description = @Description,
        Uom = @Uom,
        Rate = @Rate,
        Minimumstock = @Minimumstock,
        Maximumstock = @Maximumstock,
        IsActive = @IsActive,
        Updatedby = SYSTEM_USER,
        Updateddate = GETDATE()
    WHERE Id = @Id
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Delete]
(
@Id INT
)
AS
BEGIN

DELETE FROM Users

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Users_GetAll]

AS 
BEGIN

SELECT Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM Users

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetById]
(
@Id INT
)
AS
BEGIN

SELECT Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM Users

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetPaged]
(
    @UserName VARCHAR(100) = NULL,
    @FirstName VARCHAR(100) = NULL,
    @LastName VARCHAR(100) = NULL,
    @PhoneNumber VARCHAR(25) = NULL,
    @City VARCHAR(100) = NULL,
    @DateOfBirth DATE = NULL,
    @IsActive BIT = NULL,
    @PageNumber INT = 1,
    @PageSize INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

    SELECT
        Id,UserName,Email,Password,FirstName,MiddleName,
        LastName,DisplayName,PhoneNumber,AlternatePhone,
        AddressLine1,AddressLine2,City,State,ZipCode,
        Country,DateOfBirth,
        COUNT(*) OVER() AS TotalRecords
    FROM Users
    WHERE
        (@UserName IS NULL OR UserName LIKE '%' + @UserName + '%')
        AND (@FirstName IS NULL OR FirstName LIKE '%' + @FirstName + '%')
        AND (@LastName IS NULL OR LastName LIKE '%' + @LastName + '%')
        AND (@PhoneNumber IS NULL OR PhoneNumber LIKE '%' + @PhoneNumber + '%')
        AND (@City IS NULL OR City LIKE '%' + @City + '%')
        AND (@DateOfBirth IS NULL OR CAST(DateOfBirth AS DATE) = @DateOfBirth)
        AND (@IsActive IS NULL OR IsActive = @IsActive)
    ORDER BY Id
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;

    SELECT COUNT(*) AS TotalRecords
    FROM Users;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[sp_Users_Insert]
(
    @UserName varchar(100),
    @Email varchar(255),
    @Password varchar(500),
    @FirstName varchar(100),
    @MiddleName varchar(100) = NULL,
    @LastName varchar(100),
    @DisplayName varchar(200),
    @PhoneNumber varchar(25),
    @AlternatePhone varchar(25) = NULL,
    @AddressLine1 varchar(255),
    @AddressLine2 varchar(255) = NULL,
    @City varchar(100),
    @State varchar(100),
    @ZipCode varchar(20),
    @Country varchar(100),
    @DateOfBirth DATE = NULL
)
AS
BEGIN
    INSERT INTO Users
    (
        UserName,Email,Password,FirstName,MiddleName,LastName,
        DisplayName,PhoneNumber,AlternatePhone,AddressLine1,
        AddressLine2,City,State,ZipCode,Country,DateOfBirth,
        CreatedBy
    )
    VALUES
    (
        @UserName,@Email,@Password,@FirstName,@MiddleName,@LastName,
        @DisplayName,@PhoneNumber,@AlternatePhone,@AddressLine1,
        @AddressLine2,@City,@State,@ZipCode,@Country,@DateOfBirth,
        SYSTEM_USER
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 21-06-2026 20:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_Users_Update]
(
@Id int,
@UserName varchar(100),
@Email varchar(255),
@Password varchar(500),
@FirstName varchar(100),
@MiddleName varchar(100) = NULL,
@LastName varchar(100),
@DisplayName varchar(200),
@PhoneNumber varchar(25),
@AlternatePhone varchar(25),
@AddressLine1 varchar(255),
@AddressLine2 varchar(255)= NULL,
@City varchar(100),
@State varchar(100),
@ZipCode varchar(20),
@Country varchar(100),
@DateOfBirth Date
)
AS 
	BEGIN

	Update Users

	SET
	UserName =@UserName,
	Email=@Email,
	Password=@Password,
	FirstName=@FirstName,
	MiddleName=@MiddleName,
	LastName=@LastName,
	DisplayName=@DisplayName,
	PhoneNumber=@PhoneNumber,
	AlternatePhone=@AlternatePhone,
	AddressLine1=@AddressLine1,
	AddressLine2=@AddressLine2,
	City=@City,
	State=@State,
	ZipCode=@ZipCode,
	Country=@Country,
	DateOfBirth=@DateOfBirth,
	UpdatedBy=SYSTEM_USER,
	UpdatedDate=GETDATE()
WHERE Id=@Id

END
GO
