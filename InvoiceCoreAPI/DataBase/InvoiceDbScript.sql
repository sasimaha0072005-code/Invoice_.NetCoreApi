USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_UpdateLastLogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByUserName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByEmail]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 23-08-2026 21:22:49 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__CreatedD__5D95E53A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsDelete__5CA1C101]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsActive__5BAD9CC8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__CreatedDa__3E1D39E1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsDeleted__3D2915A8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsActive__3C34F16F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__Create__5224328E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsDele__51300E55]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsActi__503BEA1C]
GO
/****** Object:  Index [UQ__Vendor__10C18F5C06464571]    Script Date: 23-08-2026 21:22:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [UQ__Vendor__10C18F5C06464571]
GO
/****** Object:  Index [UQ__Customer__0667852196A07634]    Script Date: 23-08-2026 21:22:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [UQ__Customer__0667852196A07634]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 23-08-2026 21:22:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Index [UQ__Category__A25C5AA7C2BC29F5]    Script Date: 23-08-2026 21:22:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ__Category__A25C5AA7C2BC29F5]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 23-08-2026 21:22:49 ******/
DROP TABLE IF EXISTS [dbo].[Vendor]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23-08-2026 21:22:49 ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 23-08-2026 21:22:49 ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2026 21:22:49 ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-08-2026 21:22:49 ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](20) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC073988574E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemmaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemBarCode] [varchar](25) NOT NULL,
	[ItemCode] [varchar](10) NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[Description] [varchar](250) NULL,
	[Uom] [varchar](3) NOT NULL,
	[Rate] [decimal](18, 2) NULL,
	[MinimumStock] [decimal](18, 2) NULL,
	[MaximumStock] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Itemmast__3214EC07A7784BE8] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[PasswordHash] [varchar](500) NOT NULL,
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
	[LastLoginDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Users__3214EC07C50F4D07] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorCode] [varchar](20) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Vendor__3214EC07E8B64C59] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'RI001', N'Rice', N'All types of rice', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'VE001', N'Vegitables', N'All types of vegitables', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'SN001', N'Snacks', N'All types of snacks', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'OI001', N'Oil', N'All types of oils', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SO001', N'Soap', N'All types of soaps', 1, N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime), N'sa', CAST(N'2026-08-02T18:06:35.820' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'GN001', N'General', N'General Stores', 1, N'sa', CAST(N'2026-08-02T18:09:43.597' AS DateTime), N'sa', CAST(N'2026-08-02T18:09:43.597' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'PL001', N'Pulses', N'Pulses Stores', 1, N'sa', CAST(N'2026-08-02T19:47:22.210' AS DateTime), N'sa', CAST(N'2026-08-02T19:47:22.210' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'C001', N'Arun Electronics', N'Arun Kumar', N'9840214567', N'arun.electronics@gmail.com', N'14 Anna Nagar', N'Near Water Tank', N'Chennai', N'Tamil Nadu', N'India', N'600040', N'33AAAPA1234A1Z1', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'C002', N'Sri Ganesh Traders', N'Ganesh', N'9789456123', N'ganeshtraders@yahoo.com', N'22 Market Road', N'Opp Bus Stand', N'Madurai', N'Tamil Nadu', N'India', N'625002', N'33BBBPQ2345B1Z2', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'C003', N'Blue Star Mobiles', N'Praveen', N'9894561230', N'bluestarmobiles@gmail.com', N'7 East Car Street', N'Near SBI Bank', N'Salem', N'Tamil Nadu', N'India', N'636007', N'33CCCR5678C1Z3', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.577' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'C004', N'Siva Agencies', N'Sivakumar', N'9751147896', N'sivaagencies@gmail.com', N'89 Gandhi Road', N'Near Temple', N'Trichy', N'Tamil Nadu', N'India', N'620018', N'33DDDT6789D1Z4', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'C005', N'Kavi Super Stores', N'Kavitha', N'9942678912', N'kavistores@gmail.com', N'101 Bazaar Street', N'Old Bus Stand', N'Coimbatore', N'Tamil Nadu', N'India', N'641012', N'33EEEU7890E1Z5', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'C006', N'Muthu Hardwares', N'Muthuraj', N'9361147823', N'muthuhardware@gmail.com', N'35 Main Road', N'Near Police Station', N'Tirunelveli', N'Tamil Nadu', N'India', N'627005', N'33FFFV8901F1Z6', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'C007', N'Velavan Textiles', N'Saravanan', N'9790456128', N'velavantextiles@gmail.com', N'18 Textile Market', N'Near Clock Tower', N'Erode', N'Tamil Nadu', N'India', N'638003', N'33GGGW9012G1Z7', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'C008', N'RK Stationery', N'Ramesh', N'9843156782', N'rkstationery@gmail.com', N'11 School Road', N'Near College', N'Karur', N'Tamil Nadu', N'India', N'639001', N'33HHHX0123H1Z8', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'C009', N'Sun Bakery', N'Mohan', N'9500345612', N'sunbakery@gmail.com', N'9 Lake View Road', N'Near Park', N'Vellore', N'Tamil Nadu', N'India', N'632009', N'33IIIY1234I1Z9', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'C010', N'Nila Medicals & Surgicals', N'Deepa', N'9952678341', N'deepa.medicals@gmail.com', N'60 Hospital Road', N'Near Signal', N'Thanjavur', N'Tamil Nadu', N'India', N'613001', N'33JJJZ2345J1Z1', 1, 0, N'sa', CAST(N'2026-06-28T10:04:30.580' AS DateTime), N'sa', CAST(N'2026-06-28T10:04:38.610' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] ON 
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 5, N'Bar001', N'Soap000001', N'Lux ', N'Bath Soap', N'NOS', CAST(85.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T12:44:17.597' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T17:19:38.980' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, N'Bar003', N'Rice00003', N'Aachi', N'Ponni', N'kg', CAST(85.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T15:31:08.550' AS DateTime), N'Valavan', CAST(N'2026-02-15T15:31:08.550' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 5, N'Bar002', N'Soap000002', N'Dove', N'Beauty Soap', N'No', CAST(120.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T17:09:40.210' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-07-30T16:44:18.780' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 4, N'Bar002', N'Oil0003', N'Fortune', N'Cooking Oil', N'Lit', CAST(120.55 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), 1, N'Valavan', CAST(N'2026-02-15T15:19:18.477' AS DateTime), N'Valavan', CAST(N'2026-02-15T15:19:18.477' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, 5, N'100001', N'ITM001', N'Bath Soap', N'Regular bathing soap', N'Nos', CAST(30.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:05:31.743' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, 5, N'100002', N'ITM002', N'Antibacterial Soap', N'Germ protection', N'Nos', CAST(35.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:07:48.530' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, 5, N'100003', N'ITM003', N'Herbal Soap', N'Natural ingredients', N'Nos', CAST(40.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:12.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, 5, N'100004', N'ITM004', N'Medicated Soap', N'Skin treatment', N'Nos', CAST(60.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:22.200' AS DateTime), N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-19T17:00:13.893' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, 5, N'100005', N'ITM005', N'Moisturizing Soap', N'Soft skin care', N'Nos', CAST(45.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:28.267' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, 5, N'100006', N'ITM006', N'Glycerin Soap', N'Gentle transparent soap', N'Nos', CAST(55.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:32.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, 5, N'100007', N'ITM007', N'Baby Soap', N'Mild baby care', N'Nos', CAST(60.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:39.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, 5, N'100008', N'ITM008', N'Handmade Soap', N'Organic handmade', N'Nos', CAST(70.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:48.177' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, 5, N'100009', N'ITM009', N'Beauty Soap', N'Skin glow', N'Nos', CAST(50.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:13:54.273' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, 5, N'100010', N'ITM010', N'Laundry Soap', N'Cloth washing', N'Nos', CAST(25.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:14:19.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, 4, N'100011', N'ITM011', N'Sunflower Oil', N'Cooking oil', N'Ltr', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:34.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (24, 4, N'100012', N'ITM012', N'Groundnut Oil', N'Peanut oil', N'Ltr', CAST(180.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:46.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (25, 4, N'100013', N'ITM013', N'Coconut Oil', N'Multipurpose oil', N'Ltr', CAST(200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:52.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (26, 4, N'100014', N'ITM014', N'Mustard Oil', N'Strong flavor', N'Ltr', CAST(170.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:17:58.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (27, 4, N'100015', N'ITM015', N'Olive Oil', N'Healthy oil', N'Ltr', CAST(500.00 AS Decimal(18, 2)), CAST(5.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:03.503' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (28, 4, N'100016', N'ITM016', N'Palm Oil', N'Affordable cooking oil', N'Ltr', CAST(140.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:08.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (29, 4, N'100017', N'ITM017', N'Gingelly Oil', N'Sesame oil', N'Ltr', CAST(220.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (30, 4, N'100018', N'ITM018', N'Rice Bran Oil', N'Heart-friendly oil', N'Ltr', CAST(160.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:18.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (31, 4, N'100019', N'ITM019', N'Vegetable Oil', N'Mixed oil', N'Ltr', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:28.637' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (32, 4, N'100020', N'ITM020', N'Vanaspati', N'Cooking fat', N'Kg', CAST(130.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:18:35.893' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (33, 4, N'100021', N'ITM021', N'Basmati Rice', N'Premium long grain', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:34.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (34, 4, N'100022', N'ITM022', N'Ponni Rice', N'South Indian rice', N'Kg', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:36.783' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (35, 4, N'100023', N'ITM023', N'Brown Rice', N'Healthy whole grain', N'Kg', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:38.730' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (36, 4, N'100024', N'ITM024', N'Raw Rice', N'Daily cooking', N'Kg', CAST(55.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:45.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (37, 4, N'100025', N'ITM025', N'Boiled Rice', N'Parboiled rice', N'Kg', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:48.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (38, 4, N'100026', N'ITM026', N'Sona Masoori Rice', N'Medium grain', N'Kg', CAST(65.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:50.347' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (39, 4, N'100027', N'ITM027', N'Idli Rice', N'Used for batter', N'Kg', CAST(58.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:52.720' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (40, 4, N'100028', N'ITM028', N'Jeera Rice', N'Aromatic rice', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:19:55.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (41, 4, N'100029', N'ITM029', N'Red Rice', N'Traditional rice', N'Kg', CAST(80.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:20:35.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (42, 4, N'100030', N'ITM030', N'Broken Rice', N'Budget rice', N'Kg', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:20:39.087' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (43, 3, N'100031', N'ITM031', N'Biscuits', N'Sweet biscuits', N'Pac', CAST(20.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:45.470' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (44, 3, N'100032', N'ITM032', N'Chips', N'Potato chips', N'Pac', CAST(30.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:49.417' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (45, 3, N'100033', N'ITM033', N'Noodles', N'Instant noodles', N'Pac', CAST(25.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:51.970' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (46, 3, N'100034', N'ITM034', N'Pasta', N'Italian snack', N'Pac', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:55.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (47, 3, N'100035', N'ITM035', N'Popcorn', N'Ready to cook', N'Pac', CAST(40.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:21:59.523' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (48, 3, N'100036', N'ITM036', N'Mixture', N'Spicy mix', N'Pac', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:04.780' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (49, 3, N'100037', N'ITM037', N'Murukku', N'South Indian snack', N'Pac', CAST(70.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:07.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (50, 3, N'100038', N'ITM038', N'Namkeen', N'Salted snack', N'Pac', CAST(50.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:10.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (51, 3, N'100039', N'ITM039', N'Chocolate', N'Sweet snack', N'Pac', CAST(40.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:13.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (52, 1, N'100040', N'ITM040', N'Cake', N'Bakery item', N'Pac', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:22:20.683' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (53, 7, N'100041', N'ITM041', N'Toor Dal', N'Yellow dal', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:19.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (54, 7, N'100042', N'ITM042', N'Urad Dal', N'Black gram', N'Kg', CAST(130.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:23.310' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (55, 7, N'100043', N'ITM043', N'Moong Dal', N'Green gram split', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:25.627' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (56, 7, N'100044', N'ITM044', N'Chana Dal', N'Bengal gram split', N'Kg', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:29.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (57, 7, N'100045', N'ITM045', N'Masoor Dal', N'Red lentils', N'Kg', CAST(100.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:31.357' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (58, 7, N'100046', N'ITM046', N'Green Gram', N'Whole moong', N'Kg', CAST(95.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:35.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (59, 7, N'100047', N'ITM047', N'Black Gram', N'Whole urad', N'Kg', CAST(120.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:37.670' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (60, 7, N'100048', N'ITM048', N'Chickpeas', N'White chana', N'Kg', CAST(85.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:39.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (61, 7, N'100049', N'ITM049', N'Kidney Beans', N'Rajma', N'Kg', CAST(110.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-04T21:23:43.483' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([Id], [CategoryId], [ItemBarCode], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (65, 7, N'1050', N'ITM050', N'Horse Gram', N'Kollu', N'KGS', CAST(80.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'LAPTOP-INKMOE0V\VALAVAN S', CAST(N'2026-04-26T12:03:18.780' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'string', N'string', N'AQAAAAIAAYagAAAAEO/EvjfXxPt1mOZnFUXssgS94N+NpfhFmFRE9ukXhRFB3OLpPzqlov44u7qJTbL+HA==', N'string', N'tharan', N'string', N'string', N'string', N'string', N'string', N'vpm', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 1, 0, CAST(N'2026-08-23T14:31:00.270' AS DateTime), N'sasi', CAST(N'2026-08-23T12:29:04.980' AS DateTime), N'string', CAST(N'2026-08-23T14:31:34.693' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'monkey', N'monkey@gmail.com', N'AQAAAAIAAYagAAAAEHL7BlV6/Wj2/36L7Uo9YEwk+eprRTe/0AOa9wvxwNlsEkybmg0HrENqDk0koktsOg==', N'akash', N'khan', N'n', N'monkey', N'7458768487', N'45346237', N'hgjwdfgdshfwegfjhsfhgwf', N'kpm', N'vpm', N'tn', N'605603', N'india', CAST(N'2026-08-23' AS Date), 0, 1, CAST(N'2026-08-23T14:40:33.710' AS DateTime), N'akash', CAST(N'2026-08-23T14:35:07.850' AS DateTime), N'null', CAST(N'2026-08-23T15:09:54.953' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'veld', N'vbsk', N'AQAAAAIAAYagAAAAECh/4L5dHsg76ZJlpv8o9fzcBeZvB7JhLZTsO438qqI+K23Au0tv6CWVYcMNGQYKGA==', N'l;aek', N'ckle', N'string', N'string', N'vhcgjlla', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'string', CAST(N'2026-08-23T15:13:01.143' AS DateTime), N'null', CAST(N'2026-08-23T15:13:30.187' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendor] ON 
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'VEND001', N'Aavin Dairy', N'Murugan', N'9876543301', N'murugan@aavin.com', N'12 Milk Colony', N'Near Dairy Plant', N'Chennai', N'Tamil Nadu', N'India', N'600010', N'33AAACA1234A1Z5', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.247' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'VEND002', N'Britannia Distributors', N'Kumar', N'9876543302', N'kumar@britannia.com', N'45 Industrial Area', N'Phase 1', N'Coimbatore', N'Tamil Nadu', N'India', N'641001', N'33BBBCA2345B1Z6', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'VEND003', N'Sun Oil Suppliers', N'Ravi', N'9876543303', N'ravi@sunoil.com', N'78 Market Road', N'Near Bus Stand', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33CCCCA3456C1Z7', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'VEND004', N'Fresh Farm Foods', N'Sathish', N'9876543304', N'sathish@freshfarm.com', N'10 Farmers Street', N'Near Temple', N'Salem', N'Tamil Nadu', N'India', N'636001', N'33DDDCA4567D1Z8', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'VEND005', N'Golden Rice Traders', N'Prakash', N'9876543305', N'prakash@goldenrice.com', N'22 Rice Market', N'Godown Area', N'Erode', N'Tamil Nadu', N'India', N'638001', N'33EEECA5678E1Z9', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'VEND006', N'Elite Beverages', N'Arun', N'9876543306', N'arun@elitebev.com', N'55 Beverage Park', N'Near Highway', N'Trichy', N'Tamil Nadu', N'India', N'620001', N'33FFFCA6789F1Y1', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'VEND007', N'Modern Snacks Pvt Ltd', N'Dinesh', N'9876543307', N'dinesh@modernsnacks.com', N'67 Food Street', N'Industrial Estate', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'33GGGCA7890G1Y2', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'VEND008', N'Shree Pulses Agency', N'Balaji', N'9876543308', N'balaji@shreepulses.com', N'89 Wholesale Market', N'Near Railway Station', N'Tirunelveli', N'Tamil Nadu', N'India', N'627001', N'33HHHCA8901H1Y3', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'VEND009', N'Royal Consumer Goods', N'Hari', N'9876543309', N'hari@royalcg.com', N'14 Commercial Complex', N'Phase 2', N'Hosur', N'Tamil Nadu', N'India', N'635109', N'33IIICA9012I1Y4', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'VEND010', N'Galaxy Wholesale Mart', N'Senthil', N'9876543310', N'senthil@galaxywholesale.com', N'101 MG Road', N'Near Shopping Mall', N'Bengaluru', N'Karnataka', N'India', N'560001', N'29JJJCA0123J1Z5', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'VEND011', N'ABC Stationery Suppliers', N'Manoj', N'9876500011', N'manoj@abcstationery.com', N'14 Gandhi Road', N'Near Bus Stand', N'Karur', N'Tamil Nadu', N'India', N'639001', N'33ABCDE1111A1Z1', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.253' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'VEND012', N'Green Leaf Traders', N'Karthik', N'9876500012', N'karthik@greenleaf.com', N'22 Market Street', N'Opp Railway Station', N'Thanjavur', N'Tamil Nadu', N'India', N'613001', N'33ABCDE2222B1Z2', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'VEND013', N'Classic Food Products', N'Suresh', N'9876500013', N'suresh@classicfoods.com', N'78 Anna Salai', N'Phase 2', N'Cuddalore', N'Tamil Nadu', N'India', N'607001', N'33ABCDE3333C1Z3', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'VEND014', N'Metro Packaging', N'Pradeep', N'9876500014', N'pradeep@metropack.com', N'101 Industrial Estate', N'SIDCO', N'Sivakasi', N'Tamil Nadu', N'India', N'626123', N'33ABCDE4444D1Z4', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'VEND015', N'Supreme Agro Agency', N'Vijay', N'9876500015', N'vijay@supremeagro.com', N'55 Main Road', N'Near Collector Office', N'Dindigul', N'Tamil Nadu', N'India', N'624001', N'33ABCDE5555E1Z5', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'VEND016', N'South India Distributors', N'Saravanan', N'9876500016', N'saravanan@sidistributors.com', N'89 GST Road', N'Near Airport', N'Chengalpattu', N'Tamil Nadu', N'India', N'603001', N'33ABCDE6666F1Z6', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'VEND017', N'Future Retail Supplies', N'Ganesh', N'9876500017', N'ganesh@future-retail.com', N'40 Nehru Street', N'Block A', N'Kanchipuram', N'Tamil Nadu', N'India', N'631501', N'33ABCDE7777G1Z7', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'VEND018', N'Fresh Choice Wholesalers', N'Mohan', N'9876500018', N'mohan@freshchoice.com', N'17 Lake View', N'Near Market', N'Tiruppur', N'Tamil Nadu', N'India', N'641601', N'33ABCDE8888H1Z8', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.257' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'VEND019', N'Universal Consumer Goods', N'Ramesh', N'9876500019', N'ramesh@universalcg.com', N'200 Ring Road', N'Sector 3', N'Pudukkottai', N'Tamil Nadu', N'India', N'622001', N'33ABCDE9999J1Z9', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.260' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'VEND020', N'Elite Home Needs', N'Ashok', N'9876500020', N'ashok@elitehome.com', N'66 Cross Street', N'Near Signal', N'Nagapattinam', N'Tamil Nadu', N'India', N'611001', N'33ABCDE0000K1Z1', 1, 0, N'sa', CAST(N'2026-06-28T13:44:30.260' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Vendor] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Category__A25C5AA7C2BC29F5]    Script Date: 23-08-2026 21:22:49 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ__Category__A25C5AA7C2BC29F5] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 23-08-2026 21:22:49 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__0667852196A07634]    Script Date: 23-08-2026 21:22:49 ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UQ__Customer__0667852196A07634] UNIQUE NONCLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Vendor__10C18F5C06464571]    Script Date: 23-08-2026 21:22:49 ******/
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [UQ__Vendor__10C18F5C06464571] UNIQUE NONCLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsActi__503BEA1C]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__51300E55]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__5224328E]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsActive__3C34F16F]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsDeleted__3D2915A8]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__CreatedDa__3E1D39E1]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsActive__5BAD9CC8]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsDelete__5CA1C101]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__CreatedD__5D95E53A]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 23-08-2026 21:22:49 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Delete]
(
    @Id INT
)
AS
BEGIN
    DELETE FROM Customer
    WHERE Id=@Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Customer_GetAll]
AS
BEGIN
    SELECT *
    FROM Customer;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Customer_GetById]
(
    @Id INT
)
AS
BEGIN
    SELECT *
    FROM Customer
    WHERE Id=@Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetPaged]
(
    @CustomerCode VARCHAR(20)=NULL,
    @CustomerName NVARCHAR(100)=NULL,
    @MobileNo VARCHAR(20)=NULL,
    @City NVARCHAR(100)=NULL,
    @PageNumber INT=1,
    @PageSize INT=10
)
AS
BEGIN
    SET NOCOUNT ON;

    IF(@PageNumber<=0) SET @PageNumber=1;
    IF(@PageSize<=0) SET @PageSize=10;

    DECLARE @Offset INT=(@PageNumber-1)*@PageSize;

    SELECT *,
           COUNT(*) OVER() AS TotalRecords
    FROM Customer
    WHERE
    (@CustomerCode IS NULL OR CustomerCode LIKE '%'+@CustomerCode+'%')
    AND (@CustomerName IS NULL OR CustomerName LIKE '%'+@CustomerName+'%')
    AND (@MobileNo IS NULL OR MobileNo LIKE '%'+@MobileNo+'%')
    AND (@City IS NULL OR City LIKE '%'+@City+'%')
    ORDER BY Id
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Insert]
(
    @CustomerCode VARCHAR(20),
    @CustomerName NVARCHAR(100),
    @ContactPerson NVARCHAR(100)=NULL,
    @MobileNo VARCHAR(20)=NULL,
    @Email VARCHAR(100)=NULL,
    @Address1 NVARCHAR(200)=NULL,
    @Address2 NVARCHAR(200)=NULL,
    @City NVARCHAR(100)=NULL,
    @State NVARCHAR(100)=NULL,
    @Country NVARCHAR(100)=NULL,
    @ZipCode VARCHAR(20)=NULL,
    @GstNo VARCHAR(50)=NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Customer
    (
        CustomerCode,CustomerName,ContactPerson,MobileNo,Email,
        Address1,Address2,City,State,Country,ZipCode,GstNo,
        CreatedBy
    )
    VALUES
    (
        @CustomerCode,@CustomerName,@ContactPerson,@MobileNo,@Email,
        @Address1,@Address2,@City,@State,@Country,@ZipCode,@GstNo,
        SYSTEM_USER
    );
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Update]
(
    @Id INT,
    @CustomerCode VARCHAR(20),
    @CustomerName NVARCHAR(100),
    @ContactPerson NVARCHAR(100)=NULL,
    @MobileNo VARCHAR(20)=NULL,
    @Email VARCHAR(100)=NULL,
    @Address1 NVARCHAR(200)=NULL,
    @Address2 NVARCHAR(200)=NULL,
    @City NVARCHAR(100)=NULL,
    @State NVARCHAR(100)=NULL,
    @Country NVARCHAR(100)=NULL,
    @ZipCode VARCHAR(20)=NULL,
    @GstNo VARCHAR(50)=NULL
)
AS
BEGIN
    UPDATE Customer
    SET
        CustomerCode=@CustomerCode,
        CustomerName=@CustomerName,
        ContactPerson=@ContactPerson,
        MobileNo=@MobileNo,
        Email=@Email,
        Address1=@Address1,
        Address2=@Address2,
        City=@City,
        State=@State,
        Country=@Country,
        ZipCode=@ZipCode,
        GstNo=@GstNo,
        UpdatedBy=SYSTEM_USER,
        UpdatedDate=GETDATE()
    WHERE Id=@Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 23-08-2026 21:22:49 ******/
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
	 SELECT @Id AS Id;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll]
AS
BEGIN
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    ORDER BY I.Id ASC;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 23-08-2026 21:22:49 ******/
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
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    WHERE I.Id = @Id;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]
(
    @CategoryId INT = NULL,
    @ItemBarCode VARCHAR(25) = NULL,
    @ItemCode VARCHAR(10) = NULL,
    @ItemName VARCHAR(100) = NULL,
    @Uom VARCHAR(3) = NULL,
    @IsActive BIT = NULL,
    @PageNumber INT = 1,
    @PageSize INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;
 
    -- Default paging values
    IF (@PageNumber <= 0)
        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)
        SET @PageSize = 10;
 
    DECLARE @Offset INT;
 
    SET @Offset = (@PageNumber - 1) * @PageSize;
 
 
    ------------------------------------------------------------
    -- RESULT SET 1 : PAGED ITEMMASTER DATA
    ------------------------------------------------------------
 
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
 
    WHERE
        (@CategoryId IS NULL
            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL
            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL
            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL
            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL
            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL
            OR I.IsActive = @IsActive)
 
    ORDER BY I.Id DESC
 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
 
 
    ------------------------------------------------------------
    -- RESULT SET 2 : TOTAL RECORD COUNT
    ------------------------------------------------------------
 
    SELECT
        COUNT(1) AS TotalRecords
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
 
    WHERE
        (@CategoryId IS NULL
            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL
            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL
            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL
            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL
            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL
            OR I.IsActive = @IsActive);
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert]
(
    @CategoyId INT,
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
    INSERT INTO Itemmaster
    (
        CategoryId, 
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
		Updateddate
    )
    VALUES
    (
        @CategoyId, 
		@ItemBarCode, 
		@Itemcode, 
		@Itemname,
        @Description, 
		@Uom, 
		@Rate,
        @Minimumstock, 
		@Maximumstock,
        @IsActive, 
		SYSTEM_USER,
		GETDATE(),
        NULL, 
		NULL
    )
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Itemmaster_Update]
(
    @Id INT,
    @CategoryId INT,
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
 
    UPDATE dbo.Itemmaster
    SET
        CategoryId = @CategoryId,
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
    WHERE Id = @Id;
 
    SELECT @Id AS Id;
END
 

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Users_Delete]

(

    @Id        INT,

    @UpdatedBy NVARCHAR(100)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    IF NOT EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Id = @Id

          AND IsDeleted = 0

    )

    BEGIN

        SELECT CAST(0 AS BIT) AS Success;

        RETURN;

    END;
 
    UPDATE dbo.Users

    SET

        IsDeleted  = 1,

        IsActive   = 0,

        UpdatedBy  = @UpdatedBy,

        UpdatedDate = GETUTCDATE()

    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;

END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Users_GetAll]

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM dbo.Users

    WHERE IsDeleted = 0

    ORDER BY Id;

END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
create PROCEDURE [dbo].[sp_Users_GetByEmail]

(

    @Email VARCHAR(255)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        LastName,

        DisplayName,

        IsActive,

        IsDeleted

    FROM dbo.Users

    WHERE Email = @Email;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 23-08-2026 21:22:49 ******/
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

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM dbo.Users

    WHERE Id = @Id

      AND IsDeleted = 0;

END

 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
create PROCEDURE [dbo].[sp_Users_GetByUserName]

(

    @UserName VARCHAR(100)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        PasswordHash,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        IsActive,

        IsDeleted,

        LastLoginDate

    FROM dbo.Users

    WHERE UserName = @UserName;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Users_GetPaged]

(

    @UserName    VARCHAR(100) = NULL,

    @Email       VARCHAR(255) = NULL,

    @FirstName   VARCHAR(100) = NULL,

    @LastName    VARCHAR(100) = NULL,

    @IsActive    BIT = NULL,

    @PageNumber  INT = 1,

    @PageSize    INT = 10

)

AS

BEGIN

    SET NOCOUNT ON;
 
    IF (@PageNumber <= 0)

        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)

        SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    /*

        ============================================================

        RESULT SET 1

        Paged User Records

        ============================================================

    */
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate,
 
        COUNT(*) OVER() AS TotalRecords
 
    FROM dbo.Users
 
    WHERE

        IsDeleted = 0
 
        AND

        (

            @UserName IS NULL

            OR UserName LIKE '%' + @UserName + '%'

        )
 
        AND

        (

            @Email IS NULL

            OR Email LIKE '%' + @Email + '%'

        )
 
        AND

        (

            @FirstName IS NULL

            OR FirstName LIKE '%' + @FirstName + '%'

        )
 
        AND

        (

            @LastName IS NULL

            OR LastName LIKE '%' + @LastName + '%'

        )
 
        AND

        (

            @IsActive IS NULL

            OR IsActive = @IsActive

        )
 
    ORDER BY Id ASC
 
    OFFSET @Offset ROWS

    FETCH NEXT @PageSize ROWS ONLY;
 
 
    /*

        ============================================================

        RESULT SET 2

        Total Records

        ============================================================

    */
 
    SELECT

        COUNT(1) AS TotalRecords
 
    FROM dbo.Users
 
    WHERE

        IsDeleted = 0
 
        AND

        (

            @UserName IS NULL

            OR UserName LIKE '%' + @UserName + '%'

        )
 
        AND

        (

            @Email IS NULL

            OR Email LIKE '%' + @Email + '%'

        )
 
        AND

        (

            @FirstName IS NULL

            OR FirstName LIKE '%' + @FirstName + '%'

        )
 
        AND

        (

            @LastName IS NULL

            OR LastName LIKE '%' + @LastName + '%'

        )
 
        AND

        (

            @IsActive IS NULL

            OR IsActive = @IsActive

        );
 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_Users_Insert]

(

    @UserName       VARCHAR(100),

    @Email          VARCHAR(255),

    @PasswordHash   VARCHAR(500),

    @FirstName      VARCHAR(100),

    @MiddleName     VARCHAR(100) = NULL,

    @LastName       VARCHAR(100),

    @DisplayName    VARCHAR(200),

    @PhoneNumber    VARCHAR(25),

    @AlternatePhone VARCHAR(25) = NULL,

    @AddressLine1   VARCHAR(255),

    @AddressLine2   VARCHAR(255) = NULL,

    @City           VARCHAR(100),

    @State          VARCHAR(100),

    @ZipCode        VARCHAR(20),

    @Country        VARCHAR(100),

    @DateOfBirth    DATE = NULL,

    @IsActive       BIT = 1,

    @CreatedBy      NVARCHAR(100)

)

AS

BEGIN

    SET NOCOUNT ON;
 
    IF EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE UserName = @UserName

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50001, 'Username already exists.', 1;

    END;
 
    IF EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Email = @Email

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50002, 'Email already exists.', 1;

    END;
 
    INSERT INTO dbo.Users

    (

        UserName,

        Email,

        PasswordHash,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        CreatedBy,

        CreatedDate

    )

    VALUES

    (

        @UserName,

        @Email,

        @PasswordHash,

        @FirstName,

        @MiddleName,

        @LastName,

        @DisplayName,

        @PhoneNumber,

        @AlternatePhone,

        @AddressLine1,

        @AddressLine2,

        @City,

        @State,

        @ZipCode,

        @Country,

        @DateOfBirth,

        @IsActive,

        0,

        @CreatedBy,

        GETUTCDATE()

    );
 
    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;

END

 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Update]

(

    @Id             INT,

    @UserName       VARCHAR(100),

    @Email          VARCHAR(255),

    @FirstName      VARCHAR(100),

    @MiddleName     VARCHAR(100) = NULL,

    @LastName       VARCHAR(100),

    @DisplayName    VARCHAR(200),

    @PhoneNumber    VARCHAR(25),

    @AlternatePhone VARCHAR(25) = NULL,

    @AddressLine1   VARCHAR(255),

    @AddressLine2   VARCHAR(255) = NULL,

    @City           VARCHAR(100),

    @State          VARCHAR(100),

    @ZipCode        VARCHAR(20),

    @Country        VARCHAR(100),

    @DateOfBirth    DATE = NULL,

    @IsActive       BIT,

    @UpdatedBy      NVARCHAR(100)

)

AS

BEGIN

  
 
    IF NOT EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Id = @Id

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50003, 'User not found.', 1;

    END;
 
    IF EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE UserName = @UserName

          AND Id <> @Id

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50004, 'Username already exists.', 1;

    END;
 
    IF EXISTS

    (

        SELECT 1

        FROM dbo.Users

        WHERE Email = @Email

          AND Id <> @Id

          AND IsDeleted = 0

    )

    BEGIN

        THROW 50005, 'Email already exists.', 1;

    END;
 
    UPDATE dbo.Users

    SET

        UserName       = @UserName,

        Email          = @Email,

        FirstName      = @FirstName,

        MiddleName     = @MiddleName,

        LastName       = @LastName,

        DisplayName    = @DisplayName,

        PhoneNumber    = @PhoneNumber,

        AlternatePhone = @AlternatePhone,

        AddressLine1   = @AddressLine1,

        AddressLine2   = @AddressLine2,

        City           = @City,

        State          = @State,

        ZipCode        = @ZipCode,

        Country        = @Country,

        DateOfBirth    = @DateOfBirth,

        IsActive       = @IsActive,

        UpdatedBy      = @UpdatedBy,

        UpdatedDate    = GETUTCDATE()

    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_Users_UpdateLastLogin]

(

    @Id INT

)

AS

BEGIN

    SET NOCOUNT ON;
 
    UPDATE dbo.Users

    SET

        LastLoginDate = GETUTCDATE()

    WHERE Id = @Id

      AND IsDeleted = 0

      AND IsActive = 1;
 
    SELECT CAST(1 AS BIT) AS Success;

END

 

 
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vendor_Delete]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Vendor
    WHERE Id=@Id;

    SELECT @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Vendor
    ORDER BY Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vendor_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Vendor
    WHERE Id=@Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vendor_GetPaged]
(
    @VendorCode VARCHAR(20)=NULL,
    @VendorName NVARCHAR(100)=NULL,
    @MobileNo VARCHAR(20)=NULL,
    @City NVARCHAR(100)=NULL,
    @PageNumber INT=1,
    @PageSize INT=10
)
AS
BEGIN
    SET NOCOUNT ON;

    IF(@PageNumber<=0) SET @PageNumber=1;
    IF(@PageSize<=0) SET @PageSize=10;

    DECLARE @Offset INT;
    SET @Offset=(@PageNumber-1)*@PageSize;

    SELECT
        Id,
        VendorCode,
        VendorName,
        ContactPerson,
        MobileNo,
        Email,
        Address1,
        Address2,
        City,
        State,
        Country,
        ZipCode,
        GstNo,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate,
        COUNT(*) OVER() AS TotalRecords
    FROM Vendor
    WHERE
        (@VendorCode IS NULL OR @VendorCode='' OR VendorCode LIKE '%'+@VendorCode+'%')
        AND (@VendorName IS NULL OR @VendorName='' OR VendorName LIKE '%'+@VendorName+'%')
        AND (@MobileNo IS NULL OR @MobileNo='' OR MobileNo LIKE '%'+@MobileNo+'%')
        AND (@City IS NULL OR @City='' OR City LIKE '%'+@City+'%')
    ORDER BY Id
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;

    SELECT COUNT(*) AS TotalRecords
    FROM Vendor
    WHERE
        (@VendorCode IS NULL OR @VendorCode='' OR VendorCode LIKE '%'+@VendorCode+'%')
        AND (@VendorName IS NULL OR @VendorName='' OR VendorName LIKE '%'+@VendorName+'%')
        AND (@MobileNo IS NULL OR @MobileNo='' OR MobileNo LIKE '%'+@MobileNo+'%')
        AND (@City IS NULL OR @City='' OR City LIKE '%'+@City+'%');
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_Insert]
(
    @VendorCode VARCHAR(20),
    @VendorName NVARCHAR(100),
    @ContactPerson NVARCHAR(100)=NULL,
    @MobileNo VARCHAR(20)=NULL,
    @Email VARCHAR(100)=NULL,
    @Address1 NVARCHAR(200)=NULL,
    @Address2 NVARCHAR(200)=NULL,
    @City NVARCHAR(100)=NULL,
    @State NVARCHAR(100)=NULL,
    @Country NVARCHAR(100)=NULL,
    @ZipCode VARCHAR(20)=NULL,
    @GstNo VARCHAR(50)=NULL
)
AS
BEGIN
    INSERT INTO Vendor
    (
        VendorCode,VendorName,ContactPerson,MobileNo,Email,
        Address1,Address2,City,State,Country,
        ZipCode,GstNo,CreatedBy,UpdatedBy,UpdatedDate
    )
    VALUES
    (
        @VendorCode,@VendorName,@ContactPerson,@MobileNo,@Email,
        @Address1,@Address2,@City,@State,@Country,
        @ZipCode,@GstNo,SYSTEM_USER,NULL,NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 23-08-2026 21:22:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_Update]
(
    @Id INT,
    @VendorCode VARCHAR(20),
    @VendorName NVARCHAR(100),
    @ContactPerson NVARCHAR(100)=NULL,
    @MobileNo VARCHAR(20)=NULL,
    @Email VARCHAR(100)=NULL,
    @Address1 NVARCHAR(200)=NULL,
    @Address2 NVARCHAR(200)=NULL,
    @City NVARCHAR(100)=NULL,
    @State NVARCHAR(100)=NULL,
    @Country NVARCHAR(100)=NULL,
    @ZipCode VARCHAR(20)=NULL,
    @GstNo VARCHAR(50)=NULL,
    @IsActive BIT,
    @IsDeleted BIT
)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Vendor
    SET
        VendorCode=@VendorCode,
        VendorName=@VendorName,
        ContactPerson=@ContactPerson,
        MobileNo=@MobileNo,
        Email=@Email,
        Address1=@Address1,
        Address2=@Address2,
        City=@City,
        State=@State,
        Country=@Country,
        ZipCode=@ZipCode,
        GstNo=@GstNo,
        IsActive=@IsActive,
        IsDeleted=@IsDeleted,
        UpdatedBy=SYSTEM_USER,
        UpdatedDate=GETDATE()
    WHERE Id=@Id;

    SELECT @@ROWCOUNT;
END
GO
