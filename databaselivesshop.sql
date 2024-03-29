USE [ShopThoiTrang]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [nvarchar](255) NULL,
	[CityName] [nvarchar](100) NULL,
	[DistrictName] [nvarchar](100) NULL,
	[WardName] [nvarchar](100) NULL,
	[CityId] [int] NULL,
	[DistrictId] [int] NULL,
	[WardId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdCustomer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Background]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Background](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](30) NULL,
	[Url] [varchar](255) NULL,
	[Content] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[PurchaseDate] [datetime] NULL,
	[EstimatedDate] [datetime] NULL,
	[PaymentDate] [datetime] NULL,
	[DelyveryDate] [datetime] NULL,
	[TotalPrice] [money] NULL,
	[ShipPrice] [money] NULL,
	[TotalPriceLast] [money] NULL,
	[Note] [nvarchar](255) NULL,
	[PayType] [int] NULL,
	[PayStatus] [int] NULL,
	[TypeStatus] [int] NULL,
	[Status] [int] NULL,
	[CodeGHN] [varchar](30) NULL,
	[IdCoupon] [int] NULL,
	[IdCustomer] [int] NULL,
	[IdVoucher] [int] NULL,
	[IdEmployee] [int] NULL,
	[Fullname] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[AddressDetail] [nvarchar](250) NULL,
	[CityName] [nvarchar](50) NULL,
	[DistrictName] [nvarchar](50) NULL,
	[WardName] [nvarchar](50) NULL,
	[CityId] [nvarchar](50) NULL,
	[DistrictId] [nvarchar](50) NULL,
	[WardId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [int] NULL,
	[IdColor] [int] NULL,
	[IdSize] [int] NULL,
	[IdOrder] [int] NULL,
	[IdProductDetail] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillHistory]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdOrder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCustomer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [int] NULL,
	[IdColor] [int] NULL,
	[IdSize] [int] NULL,
	[IdCart] [int] NULL,
	[IdProductDetail] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Name] [nvarchar](100) NULL,
	[IsType] [bit] NULL,
	[Discount] [int] NULL,
	[Cash] [money] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdCustomer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Fullname] [nvarchar](100) NULL,
	[Username] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[Image] [varchar](255) NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Fullname] [nvarchar](100) NULL,
	[Username] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[Image] [varchar](255) NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdRole] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationHistory]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](100) NULL,
	[IdProductDetail] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Voucher]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Voucher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdVoucher] [int] NULL,
	[IdProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Weight] [float] NULL,
	[Price] [money] NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdProduct] [int] NULL,
	[IdBrand] [int] NULL,
	[IdCategory] [int] NULL,
	[DiscountDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail_Color_Size]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail_Color_Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductDetail] [int] NULL,
	[IdColor] [int] NULL,
	[IdSize] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail_Material]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail_Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductDetail] [int] NULL,
	[IdMaterial] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetailHistory]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetailHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageMain] [varchar](max) NULL,
	[ImageList] [varchar](max) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](30) NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [money] NULL,
	[Weight] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[IdCategory] [int] NULL,
	[IdBrand] [int] NULL,
	[IdToe] [int] NULL,
	[IdSole] [int] NULL,
	[IdShoelace] [int] NULL,
	[IdHeelcushion] [int] NULL,
	[IdDesign] [int] NULL,
	[IdMaterial] [varchar](max) NULL,
	[IdVoucher] [varchar](max) NULL,
	[IdColor_Size_Quantity] [varchar](max) NULL,
	[Discount] [int] NULL,
	[DiscountDate] [datetime] NULL,
	[SupplierName] [nvarchar](100) NULL,
	[SupplierPhone] [varchar](15) NULL,
	[SupplierAddress] [nvarchar](255) NULL,
	[SupplierAgree] [nvarchar](255) NULL,
	[IdProductDetail] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductFault]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFault](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](255) NULL,
	[IdColor] [int] NULL,
	[IdSize] [int] NULL,
	[Quantity] [int] NULL,
	[IdProductDetail] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](255) NULL,
	[MainImage] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdProduct] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Score] [int] NULL,
	[Note] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdProductDetail] [int] NULL,
	[IdCustomer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingImage]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](255) NULL,
	[IdRating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnExchange]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnExchange](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Image] [varchar](255) NULL,
	[Note] [nvarchar](255) NULL,
	[RequestDate] [datetime] NULL,
	[ProcessingDate] [datetime] NULL,
	[IsReturnExchange] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdCustomer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnExchangeDetail]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnExchangeDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReturnExchange] [int] NULL,
	[IdOrderDetail] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnExchangeHistory]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnExchangeHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[IdReturnExchange] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 1/19/2024 9:56:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) NULL,
	[Name] [nvarchar](100) NULL,
	[TypeVoucher] [bit] NULL,
	[IsVoucher] [bit] NULL,
	[Discount] [int] NULL,
	[Cash] [money] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[CreateBy] [varchar](30) NULL,
	[UpdateBy] [varchar](30) NULL,
	[Status] [int] NULL,
	[Minimum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (1, N'Nguyễn Văn A', N'0986555291', N'123 Nguyễn Văn ', N'Sơn La', N'Huyện Mường La', N'Xã Mường Bú', 266, 3230, 140309, CAST(N'2023-12-08T17:38:09.647' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (2, N'Bui Hoc', N'0999999999999', N'addd', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-08T17:38:54.987' AS DateTime), NULL, NULL, NULL, 0, 1003)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (3, N'Nguyễn Văn A', N'0986555291', N'123', N'Bình Định', N'Huyện Vĩnh Thạnh', N'Xã Vĩnh Thịnh', 262, 2258, 370708, CAST(N'2023-12-08T17:45:11.793' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (4, N'Nguyễn Văn A', N'0986555291', N'123 Nguyễn Văn f', N'Sơn La', N'Huyện Mường La', N'Xã Mường Bú', 266, 3230, 140309, CAST(N'2023-12-08T22:22:08.123' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (5, N'nguyen manh dat', N'0981089231', N'oooooo', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-10T01:32:17.273' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (6, N'nguyen manh dat', N'0981089231', N'aaaaaa', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-10T01:36:43.433' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (7, N'Nguyen Van  Dat', N'0981089231', N'aaaa', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-10T02:01:19.180' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (8, N'Nguyen Van  Dat', N'0986555291', N'111', N'Lai Châu', N'Huyện Than Uyên', N'Thị Trấn Si Ma Cai', 264, 2025, 90816, CAST(N'2023-12-11T17:48:35.603' AS DateTime), NULL, NULL, NULL, 0, 1021)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (9, N'Nguyen Van  Dat', N'0981089231', N'aaaa', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-11T23:17:55.867' AS DateTime), NULL, NULL, NULL, 0, 1023)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (1009, N'Nguyễn Văn A', N'0986555291', N'số nhà 129', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-14T21:41:40.067' AS DateTime), NULL, NULL, NULL, 0, 2023)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (1010, N'Nguyen Van  Dat', N'0987666555', N'Số nhà 190', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-15T14:05:13.367' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (1011, N'Bui Hoc', N'0981089231', N'123', N'Lạng Sơn', N'Huyện Hữu Lũng', N'Xã Hòa Bình', 247, 1948, 101107, CAST(N'2023-12-19T19:21:36.710' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (1012, N'Bui Hoc', N'0986555291', N'aaa', N'Lai Châu', N'Huyện Sìn Hồ', N'Xã Pu Sam Cáp', 264, 2006, 70418, CAST(N'2023-12-19T19:22:38.007' AS DateTime), NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Address] ([Id], [Fullname], [Phone], [Address], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdCustomer]) VALUES (1013, N'Bui Hoc', N'0986555291', N'so nha 120', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', 269, 2264, 90816, CAST(N'2023-12-20T14:56:47.543' AS DateTime), NULL, NULL, NULL, 0, 2028)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Background] ON 

INSERT [dbo].[Background] ([Id], [Type], [Url], [Content], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (5, NULL, N'https://firebasestorage.googleapis.com/v0/b/datn-dd682.appspot.com/o/6c66c51f-eef3-463f-bc26-dc4a955e1e4c?alt=media', NULL, CAST(N'2023-12-19T22:01:49.433' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Background] ([Id], [Type], [Url], [Content], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (6, NULL, N'https://firebasestorage.googleapis.com/v0/b/datn-dd682.appspot.com/o/89a555fa-3d87-4dbb-a39e-980df7cd1d15?alt=media', NULL, CAST(N'2023-12-19T22:01:56.567' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Background] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (1, N'HD1700670574', CAST(N'2023-11-22T23:29:34.793' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (2, N'HD1700670578', CAST(N'2023-11-22T23:29:38.033' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (3, N'HD1700670579', CAST(N'2023-11-22T23:29:39.900' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (4, N'HD1700670582', CAST(N'2023-11-22T23:29:42.577' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (5, N'HD1700670584', CAST(N'2023-11-22T23:29:44.123' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (6, N'HD1700670586', CAST(N'2023-11-22T23:29:46.427' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (7, N'HD1700670588', CAST(N'2023-11-22T23:29:48.193' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (8, N'HD1700670589', CAST(N'2023-11-22T23:29:49.613' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (9, N'HD1700670591', CAST(N'2023-11-22T23:29:51.577' AS DateTime), NULL, CAST(N'2023-11-22T23:31:08.877' AS DateTime), CAST(N'2023-11-22T23:31:08.877' AS DateTime), 702702.0000, 0.0000, 0.0000, N'', 1, 0, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (10, N'HD1700751617', CAST(N'2023-11-23T22:00:17.923' AS DateTime), NULL, CAST(N'2023-12-19T14:16:20.757' AS DateTime), NULL, 702702.0000, 36500.0000, 0.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (11, N'HD1700752369', CAST(N'2023-11-23T22:12:49.717' AS DateTime), NULL, NULL, NULL, 234234.0000, 34000.0000, 0.0000, N'', 0, 0, 0, 2, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (12, N'HD1700755805', CAST(N'2023-11-23T23:10:05.697' AS DateTime), NULL, CAST(N'2023-11-23T23:11:10.000' AS DateTime), NULL, 1.0000, 34000.0000, 0.0000, N'', 1, 1, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (13, N'HD1700755979', CAST(N'2023-11-23T23:12:59.010' AS DateTime), NULL, NULL, NULL, 1.0000, 34000.0000, 0.0000, N'', 1, 0, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (14, N'HD1700756283', CAST(N'2023-11-23T23:18:03.157' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (15, N'HD1700789918', CAST(N'2023-11-24T08:38:38.050' AS DateTime), NULL, CAST(N'2023-11-24T08:40:08.093' AS DateTime), CAST(N'2023-11-24T08:40:08.093' AS DateTime), 1353.0000, 0.0000, 0.0000, N'11', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (16, N'HD1700790082', CAST(N'2023-11-24T08:41:22.710' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (17, N'HD1700836257', CAST(N'2023-11-24T21:30:57.013' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (18, N'HD1700836275', CAST(N'2023-11-24T21:31:15.220' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (19, N'HD1700836958', CAST(N'2023-11-24T21:42:38.797' AS DateTime), NULL, NULL, NULL, 984.0000, 0.0000, 162.3600, N'', 1, 0, 1, 4, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (20, N'HD1700893639', CAST(N'2023-11-25T13:27:19.317' AS DateTime), NULL, CAST(N'2023-11-25T13:28:22.493' AS DateTime), NULL, 369.0000, 34000.0000, 0.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (21, N'HD1700927776', CAST(N'2023-11-25T22:56:16.360' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (22, N'HD1700928075', CAST(N'2023-11-25T23:01:15.513' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (23, N'HD1700928102', CAST(N'2023-11-25T23:01:42.997' AS DateTime), NULL, NULL, NULL, 1200000.0000, 40000.0000, 144000.0000, N'', 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (24, N'HD1700928849', CAST(N'2023-11-25T23:14:09.453' AS DateTime), NULL, NULL, NULL, 2468.0000, 34000.0000, 0.0000, N'', 0, 0, 0, 4, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (25, N'HD1701005933', CAST(N'2023-11-26T20:38:53.890' AS DateTime), NULL, CAST(N'2023-12-04T16:58:27.467' AS DateTime), NULL, 1234567.0000, 53230.0000, 0.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (26, N'HD1701007888', CAST(N'2023-11-26T21:11:28.197' AS DateTime), NULL, CAST(N'2023-11-26T21:12:10.530' AS DateTime), NULL, 240000.0000, 34000.0000, 0.0000, N'ghi chu', 1, 1, 0, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (27, N'HD1701007989', CAST(N'2023-11-26T21:13:09.197' AS DateTime), NULL, CAST(N'2023-11-26T21:21:06.783' AS DateTime), NULL, 420000.0000, 34000.0000, 0.0000, N'', 1, 1, 0, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (28, N'HD1701008217', CAST(N'2023-11-26T21:16:57.520' AS DateTime), NULL, CAST(N'2023-11-26T21:19:08.250' AS DateTime), CAST(N'2023-11-26T21:19:08.250' AS DateTime), 1000246.0000, 0.0000, 120029.5200, N'', 0, 1, 1, 3, NULL, NULL, NULL, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (32, N'HD1701230306', CAST(N'2023-11-29T10:58:26.507' AS DateTime), NULL, CAST(N'2023-11-29T10:59:03.537' AS DateTime), NULL, 4100000.0000, 62001.0000, 0.0000, N'', 0, 1, 0, 3, NULL, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (33, N'HD1701272215', CAST(N'2023-11-29T22:36:55.873' AS DateTime), NULL, CAST(N'2023-11-29T22:49:55.230' AS DateTime), CAST(N'2023-11-29T22:49:55.230' AS DateTime), 300000.0000, 0.0000, 36000.0000, N'', 1, 0, 1, 3, NULL, NULL, NULL, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (34, N'HD1701273036', CAST(N'2023-11-29T22:50:36.090' AS DateTime), NULL, CAST(N'2023-11-29T22:53:00.430' AS DateTime), CAST(N'2023-11-29T22:53:00.430' AS DateTime), 3300000.0000, 0.0000, 0.0000, N'', 1, 0, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (35, N'HD1701273207', CAST(N'2023-11-29T22:53:27.200' AS DateTime), NULL, CAST(N'2023-12-10T21:27:34.973' AS DateTime), CAST(N'2023-12-10T21:27:34.973' AS DateTime), 900000.0000, 0.0000, 100000.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (36, N'HD1701628685', CAST(N'2023-12-04T01:38:05.887' AS DateTime), NULL, CAST(N'2023-12-04T16:59:24.843' AS DateTime), NULL, 960000.0000, 34000.0000, 38400.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (37, N'HD1701683879', CAST(N'2023-12-04T16:57:59.747' AS DateTime), NULL, NULL, NULL, 120000.0000, 34000.0000, 14400.0000, N'', 1, 0, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ mới', N'Lào Cai', N'Huyện Hồng Ngự', N'Xã Phú Thuận A', N'269', N'3696', N'90835')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (38, N'HD1701874839', CAST(N'2023-12-06T22:00:39.847' AS DateTime), NULL, CAST(N'2023-12-10T23:28:03.863' AS DateTime), NULL, 121353.0000, 34000.0000, 14562.3600, N'', 0, 1, 0, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (39, N'HD1702218460', CAST(N'2023-12-10T21:27:40.623' AS DateTime), NULL, CAST(N'2023-12-10T21:27:57.413' AS DateTime), CAST(N'2023-12-10T21:27:57.413' AS DateTime), 300000.0000, 0.0000, 0.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (40, N'HD1702218482', CAST(N'2023-12-10T21:28:02.073' AS DateTime), NULL, CAST(N'2023-12-12T17:06:51.217' AS DateTime), CAST(N'2023-12-12T17:06:51.217' AS DateTime), 420000.0000, 0.0000, 210000.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (41, N'HD1702305351', CAST(N'2023-12-11T21:35:51.413' AS DateTime), NULL, NULL, NULL, 320000.0000, 34000.0000, 100000.0000, N'', 0, 0, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng Nè', N'0348281299', N'123', N'Hưng Yên', N'Huyện Văn Lâm', N'Xã Minh Hải', N'268', N'2046', N'220908')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (42, N'HD1702375618', CAST(N'2023-12-12T17:06:58.600' AS DateTime), NULL, NULL, NULL, 120000.0000, 34000.0000, 100000.0000, N'', 0, 0, 0, 1, NULL, NULL, 1, NULL, 11, N'Hoàng111', N'0348281299', N'hoàng', N'Hưng Yên', N'Huyện Văn Giang', N'Xã Tân Tiến', N'268', N'2045', N'221008')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (43, N'HD1702389790', CAST(N'2023-12-12T21:03:10.827' AS DateTime), NULL, NULL, NULL, 800000.0000, 34000.0000, 400000.0000, N'', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (44, N'HD1702390228', CAST(N'2023-12-12T21:10:28.273' AS DateTime), NULL, NULL, NULL, 123.0000, 34000.0000, NULL, N'', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (45, N'HD1702390467', CAST(N'2023-12-12T21:14:27.503' AS DateTime), NULL, NULL, NULL, 200000.0000, 34000.0000, 100000.0000, N'', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (46, N'HD1702390662', CAST(N'2023-12-12T21:17:42.937' AS DateTime), NULL, NULL, NULL, 300000.0000, 34000.0000, 150000.0000, N'', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (47, N'HD1702391231', CAST(N'2023-12-12T21:27:11.647' AS DateTime), NULL, NULL, NULL, 200000.0000, 34000.0000, 100000.0000, N'', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'test11111111111', N'Lào Cai', N'Huyện Si Ma Cai
                        ', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (48, N'HD1702391327', CAST(N'2023-12-12T21:28:47.490' AS DateTime), NULL, NULL, NULL, 200000.0000, 34000.0000, 100000.0000, N'', 0, 0, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'test11111111111', N'Lào Cai', N'Huyện Si Ma Cai
                        ', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (49, N'HD1702391682', CAST(N'2023-12-12T21:34:42.233' AS DateTime), NULL, CAST(N'2023-12-12T21:35:33.857' AS DateTime), NULL, 200000.0000, 34000.0000, 100000.0000, N'', 1, 1, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'test11111111111', N'Lào Cai', N'Huyện Si Ma Cai
                        ', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (50, N'HD1702395250', CAST(N'2023-12-12T22:34:10.407' AS DateTime), NULL, CAST(N'2023-12-12T22:34:52.793' AS DateTime), NULL, 300000.0000, 34000.0000, 150000.0000, N'', 1, 1, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'test11111111111', N'Lào Cai', N'Huyện Si Ma Cai
                        ', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (51, N'HD1702396125', CAST(N'2023-12-12T22:48:45.063' AS DateTime), NULL, CAST(N'2023-12-12T22:50:05.937' AS DateTime), CAST(N'2023-12-12T22:50:05.937' AS DateTime), 3300000.0000, 0.0000, 1650000.0000, N'', 1, 1, 1, 3, NULL, NULL, 1, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (52, N'HD1702396210', CAST(N'2023-12-12T22:50:10.567' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (53, N'HD1702396212', CAST(N'2023-12-12T22:50:12.947' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (54, N'HD1702396242', CAST(N'2023-12-12T22:50:42.187' AS DateTime), NULL, CAST(N'2023-12-12T22:52:55.837' AS DateTime), CAST(N'2023-12-12T22:52:55.837' AS DateTime), 300000.0000, 34000.0000, 150000.0000, N'', 0, 1, 0, 3, NULL, NULL, NULL, NULL, 1, N'Hoàng Mới Mẻ', N'0348281299', N'123', N'Điện Biên', N'Thị xã Mường Lay', N'Phường Na Lay', N'265', N'2060', N'620201')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (55, N'HD1702396248', CAST(N'2023-12-12T22:50:48.677' AS DateTime), NULL, CAST(N'2023-12-12T22:59:12.003' AS DateTime), CAST(N'2023-12-12T22:59:12.003' AS DateTime), 300000.0000, 0.0000, 150000.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (56, N'HD1702396410', CAST(N'2023-12-12T22:53:30.753' AS DateTime), NULL, CAST(N'2023-12-12T23:00:31.230' AS DateTime), CAST(N'2023-12-12T23:00:31.230' AS DateTime), 3600000.0000, 57001.0000, 1800000.0000, N'', 0, 1, 0, 3, NULL, NULL, 1, NULL, 1, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (57, N'HD1702397039', CAST(N'2023-12-12T23:03:59.133' AS DateTime), NULL, CAST(N'2023-12-12T23:05:05.263' AS DateTime), CAST(N'2023-12-12T23:05:05.263' AS DateTime), 300000.0000, 0.0000, 150000.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (58, N'HD1702397469', CAST(N'2023-12-12T23:11:09.807' AS DateTime), NULL, CAST(N'2023-12-12T23:11:29.673' AS DateTime), CAST(N'2023-12-12T23:11:29.673' AS DateTime), 300000.0000, 0.0000, 0.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (59, N'HD1702397578', CAST(N'2023-12-12T23:12:58.930' AS DateTime), NULL, CAST(N'2023-12-12T23:13:14.010' AS DateTime), CAST(N'2023-12-12T23:13:14.010' AS DateTime), 300000.0000, 0.0000, 150000.0000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (60, N'HD1702397598', CAST(N'2023-12-12T23:13:18.233' AS DateTime), NULL, CAST(N'2023-12-12T23:14:01.817' AS DateTime), CAST(N'2023-12-12T23:14:01.817' AS DateTime), 3300000.0000, 0.0000, 1650000.0000, N'', 1, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (61, N'HD1702397652', CAST(N'2023-12-12T23:14:12.933' AS DateTime), NULL, CAST(N'2023-12-12T23:15:20.157' AS DateTime), CAST(N'2023-12-12T23:15:20.157' AS DateTime), 1080000.0000, 41900.0000, 540000.0000, N'', 0, 1, 0, 3, NULL, NULL, 1, NULL, 11, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (62, N'HD1702397756', CAST(N'2023-12-12T23:15:56.330' AS DateTime), NULL, CAST(N'2023-12-13T22:21:46.293' AS DateTime), CAST(N'2023-12-13T22:21:46.293' AS DateTime), 300000.0000, 0.0000, 150000.0000, N'', 1, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (63, N'HD1702397793', CAST(N'2023-12-12T23:16:33.247' AS DateTime), NULL, CAST(N'2023-12-12T23:17:01.320' AS DateTime), NULL, 200000.0000, 34000.0000, 100000.0000, N'', 1, 1, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'test11111111111', N'Lào Cai', N'Huyện Si Ma Cai
                        ', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (64, N'HD1702397885', CAST(N'2023-12-12T23:18:05.487' AS DateTime), NULL, CAST(N'2023-12-12T23:18:34.183' AS DateTime), NULL, 120000.0000, 34000.0000, 100000.0000, N'', 1, 1, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'test11111111111', N'Lào Cai', N'Huyện Si Ma Cai
                        ', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (65, N'HD1702398003', CAST(N'2023-12-12T23:20:03.750' AS DateTime), NULL, CAST(N'2023-12-12T23:20:31.347' AS DateTime), NULL, 600000.0000, 39001.0000, 300000.0000, N'', 1, 1, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (66, N'HD1702398129', CAST(N'2023-12-12T23:22:09.407' AS DateTime), NULL, CAST(N'2023-12-12T23:22:36.993' AS DateTime), NULL, 200000.0000, 39001.0000, 100000.0000, N'', 1, 1, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (67, N'HD1702398261', CAST(N'2023-12-12T23:24:21.147' AS DateTime), NULL, CAST(N'2023-12-12T23:24:47.683' AS DateTime), NULL, 200000.0000, 39001.0000, 100000.0000, N'', 1, 1, 0, 0, NULL, 0, 1, NULL, NULL, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (68, N'HD1702400156', CAST(N'2023-12-12T23:55:56.363' AS DateTime), NULL, NULL, NULL, 200000.0000, 39001.0000, 100000.0000, N'', 0, 0, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (69, N'HD1702400229', CAST(N'2023-12-12T23:57:09.643' AS DateTime), NULL, NULL, NULL, 300000.0000, 39001.0000, 150000.0000, N'', 0, 0, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (70, N'HD1702400915', CAST(N'2023-12-13T00:08:35.850' AS DateTime), NULL, NULL, NULL, 300000.0000, 39001.0000, 150000.0000, N'', 0, 0, 0, 2, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (71, N'HD1702455763', CAST(N'2023-12-13T15:22:43.780' AS DateTime), NULL, CAST(N'2023-12-13T15:23:41.353' AS DateTime), NULL, 300000.0000, 39001.0000, 100000.0000, N'', 1, 1, 0, 2, NULL, 0, 1, NULL, NULL, N'Hoàng Mới Mẻ', N'0348281296', N'Hoá đơn thanh toán online', N'Quảng Ngãi', N'Huyện Tây Trà', N'Xã Trà Quân', N'242', N'2222', N'351405')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (72, N'HD1702456060', CAST(N'2023-12-13T15:27:40.077' AS DateTime), NULL, NULL, NULL, 300000.0000, 39001.0000, 150000.0000, N'', 1, 0, 0, 2, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (74, N'HD1702482883', CAST(N'2023-12-13T22:54:43.187' AS DateTime), NULL, CAST(N'2023-12-15T09:26:28.883' AS DateTime), CAST(N'2023-12-15T09:26:28.883' AS DateTime), 300000.0000, 0.0000, 150000.0000, N'', 1, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (75, N'HD1702483049', CAST(N'2023-12-13T22:57:29.190' AS DateTime), NULL, CAST(N'2023-12-15T09:25:28.137' AS DateTime), CAST(N'2023-12-15T09:25:28.137' AS DateTime), 200123.0000, 0.0000, 100061.5000, N'', 0, 1, 1, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (76, N'HD1702484262', CAST(N'2023-12-13T23:17:42.183' AS DateTime), NULL, CAST(N'2023-12-13T23:20:58.307' AS DateTime), NULL, 728733.0000, 39001.0000, 64366.5000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281296', N'số nhà 112', N'Hưng Yên', N'Huyện Phù Cừ', N'Xã Tiền Tiến', N'268', N'2194', N'220712')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (77, N'HD1702609348', CAST(N'2023-12-15T10:02:28.997' AS DateTime), NULL, CAST(N'2023-12-15T10:03:11.330' AS DateTime), NULL, 199000.0000, 34000.0000, 9950.0000, N'Gửi sớm', 1, 1, 0, 3, NULL, 0, 1, NULL, NULL, N'Đinh Hoàng', N'0123456789', N'Nhà 11', N'Hưng Yên', N'Huyện Phù Cừ', N'Xã Tiền Tiến', N'268', N'2194', N'220712')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (78, N'HD1702609538', CAST(N'2023-12-15T10:05:38.773' AS DateTime), NULL, CAST(N'2023-12-15T10:06:02.097' AS DateTime), NULL, 599000.0000, 34000.0000, 21000.0000, N'', 1, 1, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (79, N'HD1702634884', CAST(N'2023-12-15T17:08:04.607' AS DateTime), NULL, CAST(N'2023-12-16T23:29:22.510' AS DateTime), NULL, 1200000.0000, 40000.0000, 84000.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (81, N'HD1702740054', CAST(N'2023-12-16T22:20:54.140' AS DateTime), NULL, CAST(N'2023-12-19T19:17:14.657' AS DateTime), CAST(N'2023-12-19T19:17:14.657' AS DateTime), 36000000.0000, 0.0000, 7200000.0000, N'', 0, 1, 1, 3, NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (82, N'HD1702740478', CAST(N'2023-12-16T22:27:58.377' AS DateTime), NULL, CAST(N'2023-12-16T22:39:28.300' AS DateTime), NULL, 3589999.0000, 56451.0000, 149500.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'số nhà 12', N'Hưng Yên', N'Huyện Phù Cừ', N'Xã Tống Phan', N'268', N'2194', N'220713')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (83, N'HD1702740570', CAST(N'2023-12-16T22:29:30.670' AS DateTime), NULL, CAST(N'2023-12-16T22:37:29.037' AS DateTime), NULL, 319000.0000, 34000.0000, 6000.0000, N'', 1, 1, 0, 1, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (84, N'HD1702743614', CAST(N'2023-12-16T23:20:14.683' AS DateTime), NULL, CAST(N'2023-12-20T14:53:03.363' AS DateTime), NULL, 199000.0000, 34000.0000, 219250.0000, N'', 0, 1, 0, 3, NULL, NULL, 1, NULL, NULL, N'Hoàng', N'0348281299', N'số nhà 122', N'Hòa Bình', N'Huyện Lạc Thủy', N'Thị Trấn Chi Nê', N'267', N'2157', N'230901')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (86, N'HD1702911277', CAST(N'2023-12-18T21:54:37.713' AS DateTime), NULL, CAST(N'2023-12-18T22:01:13.130' AS DateTime), NULL, 398000.0000, 34000.0000, 27860.0000, N'', 0, 1, 0, 3, NULL, 0, 1, NULL, NULL, N'Đinh Hoàng', N'0348281299', N'nhà 11', N'Hưng Yên', N'Huyện Phù Cừ', N'Xã Tống Phan', N'268', N'2194', N'220713')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (87, N'HD1702911359', CAST(N'2023-12-18T21:55:59.947' AS DateTime), NULL, CAST(N'2023-12-18T21:58:03.270' AS DateTime), CAST(N'2023-12-18T21:58:03.270' AS DateTime), 1196000.0000, 0.0000, 125580.0000, N'', 0, 1, 1, 3, NULL, NULL, 1, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (88, N'HD1702912393', CAST(N'2023-12-18T22:13:13.593' AS DateTime), NULL, CAST(N'2023-12-18T22:14:11.497' AS DateTime), NULL, 360000.0000, 34000.0000, 25200.0000, N'', 1, 1, 0, 3, NULL, 0, 1, NULL, NULL, N'Hoàng', N'0348281299', N'Địa chỉ', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (89, N'HD1702988274', CAST(N'2023-12-19T19:17:54.623' AS DateTime), NULL, CAST(N'2023-12-19T19:18:21.243' AS DateTime), CAST(N'2023-12-19T19:18:21.243' AS DateTime), 6000000.0000, 0.0000, 1200000.0000, N'', 0, 1, 1, 3, NULL, NULL, 2024, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (90, N'HD1702988442', CAST(N'2023-12-19T19:20:42.073' AS DateTime), NULL, CAST(N'2023-12-19T19:23:17.357' AS DateTime), CAST(N'2023-12-19T19:23:17.357' AS DateTime), 3000000.0000, 49000.0000, 600000.0000, N'aaa', 0, 1, 0, 3, NULL, NULL, 1019, 1, 1, N'Bui Hoc', N'0986555291', N'aaa', N'Lai Châu', N'Huyện Sìn Hồ', N'Xã Pu Sam Cáp', N'264', N'2006', N'70418')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (91, N'HD1702988778', CAST(N'2023-12-19T19:26:18.413' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (92, N'HD1702988780', CAST(N'2023-12-19T19:26:20.987' AS DateTime), NULL, CAST(N'2023-12-20T00:10:17.813' AS DateTime), CAST(N'2023-12-20T00:10:17.813' AS DateTime), 200000.0000, 0.0000, 40000.0000, N'', 0, 1, 1, 3, NULL, NULL, 2028, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (93, N'HD1703059050', CAST(N'2023-12-20T14:57:30.197' AS DateTime), NULL, NULL, NULL, 264000000.0000, 1461513.0000, 0.0000, N'', 0, 0, 0, 0, NULL, 0, 2028, NULL, NULL, N'Bui Hoc', N'0986555291', N'so nha 120', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (94, N'HD1703065301', CAST(N'2023-12-20T16:41:41.553' AS DateTime), NULL, NULL, NULL, 3008000.0000, 51540.0000, NULL, N'', 0, 0, 0, 4, NULL, 0, 2028, NULL, NULL, N'Bui Hoc', N'0986555291', N'so nha 120', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
INSERT [dbo].[Bill] ([Id], [Code], [PurchaseDate], [EstimatedDate], [PaymentDate], [DelyveryDate], [TotalPrice], [ShipPrice], [TotalPriceLast], [Note], [PayType], [PayStatus], [TypeStatus], [Status], [CodeGHN], [IdCoupon], [IdCustomer], [IdVoucher], [IdEmployee], [Fullname], [Phone], [AddressDetail], [CityName], [DistrictName], [WardName], [CityId], [DistrictId], [WardId]) VALUES (95, N'HD1703065511', CAST(N'2023-12-20T16:45:11.853' AS DateTime), NULL, CAST(N'2023-12-20T22:30:08.173' AS DateTime), NULL, 1232000.0000, 42660.0000, 0.0000, N'', 0, 1, 0, 3, NULL, 0, 2028, NULL, NULL, N'Bui Hoc', N'0986555291', N'so nha 120', N'Lào Cai', N'Huyện Si Ma Cai', N'Thị Trấn Si Ma Cai', N'269', N'2264', N'90816')
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (1, 499999.0000, 2, 8, 1, 5, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (2, 499999.0000, 3, 8, 3, 5, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (3, 499999.0000, 3, 7, 7, 6, 3)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (4, 499999.0000, 1, 8, 4, 7, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (5, 334999.3300, 1, 1, 2, 7, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (6, 499999.0000, 2, 1, 3, 8, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (7, 499999.0000, 5, 8, 2, 8, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (8, 300000.0000, 5, 6, 2, 9, 1)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (9, 334999.3300, 1, 1, 4, 10, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (10, 300000.0000, 1, 7, 1, 10, 2)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (11, 499999.0000, 1, 8, 1, 11, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (12, 499999.0000, 3, 1, 3, 12, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (13, 499999.0000, 7, 1, 4, 13, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (15, 499999.0000, 3, 1, 3, 14, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (16, 499999.0000, 5, 1, 1, 15, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (17, 499999.0000, 8, 1, 2, 16, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (18, 300000.0000, 6, 6, 1, 17, 1)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (19, 499999.0000, 2, 8, 4, 18, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (20, 334999.3300, 1, 1, 4, 18, 5)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (21, 9999999.0000, 2, 7, 4, 19, 7)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (22, 1234567.0000, 1, 8, 9, 20, 8)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (23, 240000.0000, 3, 6, 2, 22, 1)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (24, 240000.0000, 3, 6, 1, 22, 1)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (25, 962962.2600, 1, 7, 9, 23, 8)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (26, 240000.0000, 1, 6, 1, 24, 1)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (27, 2134232.0000, 3, 8, 2, 23, 6)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (29, 129000.0000, 1, 9, 9, 25, 25)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (30, 699999.0000, 1, 4, 2, 25, 23)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (31, 99999.0000, 22, 10, 4, 25, 24)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (32, 49999.5000, 1, 10, 2, 26, 24)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (33, 99999.0000, 4, 10, 10, 26, 24)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (34, 44500.0000, 1, 3, 4, 26, 18)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (35, 44500.0000, 3, 10, 1, 26, 18)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (36, 418800.0000, 1, 4, 4, 26, 26)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (37, 418800.0000, 3, 4, 2, 26, 26)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (38, 391999.4400, 1, 4, 10, 27, 23)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (39, 199999.5000, 1, 7, 5, 28, 12)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (40, 449999.1000, 1, 4, 4, 29, 14)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (42, 4999999.0000, 1, 8, 2, 31, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (43, 779999.2200, 1, 4, 2, 32, 20)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (44, 89999.1000, 1, 10, 10, 32, 32)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (45, 623000.0000, 1, 9, 6, 32, 21)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (46, 4999999.0000, 4, 8, 1, 33, 4)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (47, 599999.0000, 1, 9, 6, 21, 31)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (48, 90090.0000, 1, 10, 4, 34, 30)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (49, 545999.0900, 1, 9, 6, 34, 31)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (50, 669999.3300, 1, 7, 1, 34, 19)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (51, 80000.0000, 1, 7, 10, 35, 29)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (52, 599999.0000, 2, 9, 6, 36, 31)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (53, 599999.0000, 4, 9, 6, 50, 31)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (54, 599999.0000, 1, 9, 6, 82, 31)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (55, 3000000.0000, 12, 9, 2, 81, 47)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (56, 500000.0000, 12, 9, 2, 89, 46)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (57, 3000000.0000, 1, 9, 10, 90, 47)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (58, 200000.0000, 1, 12, 4, 92, 62)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (63, 200000.0000, 5, 12, 4, 91, 62)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (64, 200000.0000, 2, 9, 2, 91, 61)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (65, 2400000.0000, 110, 9, 2, 93, 47)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (66, 1600000.0000, 1, 4, 3, 94, 54)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (67, 176000.0000, 6, 12, 4, 94, 62)
INSERT [dbo].[BillDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdOrder], [IdProductDetail]) VALUES (68, 176000.0000, 6, 12, 4, 95, 62)
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[BillHistory] ON 

INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (1, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-06T17:31:26.620' AS DateTime), NULL, N'nguyendat', NULL, 0, 1)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (2, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-06T19:46:49.133' AS DateTime), NULL, N'nguyendat', NULL, 0, 2)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (3, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-06T19:46:53.423' AS DateTime), NULL, N'nguyendat', NULL, 0, 3)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (4, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-06T19:46:56.910' AS DateTime), NULL, N'nguyendat', NULL, 0, 4)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (5, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-08T17:36:15.763' AS DateTime), NULL, N'nguyendat', NULL, 0, 5)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (6, N'Đã giao hàng tại quầy', CAST(N'2023-12-08T17:37:03.517' AS DateTime), NULL, N'nguyendat', NULL, 3, 5)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (7, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-08T17:37:13.297' AS DateTime), NULL, N'nguyendat', NULL, 0, 6)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (8, N'Đã xác nhận tại quầy', CAST(N'2023-12-08T17:38:09.807' AS DateTime), NULL, N'nguyendat', NULL, 1, 6)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (9, NULL, CAST(N'2023-12-08T17:40:42.390' AS DateTime), NULL, NULL, NULL, 0, 7)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (10, N'k', CAST(N'2023-12-08T17:41:56.617' AS DateTime), NULL, N'nguyendat', NULL, 1, 7)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (11, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-08T17:43:53.967' AS DateTime), NULL, N'nguyendat', NULL, 0, 8)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (12, N'Đã giao hàng tại quầy', CAST(N'2023-12-08T17:44:28.840' AS DateTime), NULL, N'nguyendat', NULL, 3, 8)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (13, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-08T17:44:38.087' AS DateTime), NULL, N'nguyendat', NULL, 0, 9)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (14, N'Đã xác nhận tại quầy', CAST(N'2023-12-08T17:45:11.990' AS DateTime), NULL, N'nguyendat', NULL, 1, 9)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (15, N'Xác nhận đã thanh toán', CAST(N'2023-12-08T17:45:31.287' AS DateTime), NULL, N'nguyendat', NULL, 10, 9)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (16, N'ok', CAST(N'2023-12-08T17:45:37.693' AS DateTime), NULL, N'nguyendat', NULL, 2, 9)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (17, NULL, CAST(N'2023-12-08T17:46:07.780' AS DateTime), NULL, NULL, NULL, 0, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (18, N'â', CAST(N'2023-12-08T17:46:25.357' AS DateTime), NULL, N'nguyendat', NULL, 1, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (19, N'Xác nhận đã thanh toán', CAST(N'2023-12-08T17:46:34.760' AS DateTime), NULL, N'nguyendat', NULL, 10, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (20, N'ok', CAST(N'2023-12-08T17:46:43.470' AS DateTime), NULL, N'nguyendat', NULL, 2, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (21, N'ok', CAST(N'2023-12-08T17:46:53.500' AS DateTime), NULL, N'nguyendat', NULL, 3, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (22, NULL, CAST(N'2023-12-08T17:47:22.963' AS DateTime), NULL, NULL, NULL, 0, 11)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (23, N'Xác nhận đã thanh toán', CAST(N'2023-12-08T17:53:18.820' AS DateTime), NULL, N'nguyendat', NULL, 10, 11)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (24, N'ok', CAST(N'2023-12-08T17:53:24.400' AS DateTime), NULL, N'nguyendat', NULL, 1, 11)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (25, N'ok', CAST(N'2023-12-08T17:53:29.337' AS DateTime), NULL, N'nguyendat', NULL, 2, 11)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (26, N'ôk', CAST(N'2023-12-08T22:19:37.247' AS DateTime), NULL, N'nguyendat', NULL, 2, 7)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (27, N'Xác nhận đã thanh toán', CAST(N'2023-12-08T22:19:41.027' AS DateTime), NULL, N'nguyendat', NULL, 10, 7)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (28, N'', CAST(N'2023-12-08T22:19:43.910' AS DateTime), NULL, N'nguyendat', NULL, 3, 7)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (29, N'', CAST(N'2023-12-08T22:19:57.237' AS DateTime), NULL, N'nguyendat', NULL, 3, 11)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (30, N'Cập nhật địa chỉ giao hàng', CAST(N'2023-12-08T22:22:08.507' AS DateTime), NULL, N'nguyendat', NULL, 11, 6)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (31, N'ok', CAST(N'2023-12-08T22:22:14.433' AS DateTime), NULL, N'nguyendat', NULL, 2, 6)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (32, N'ok', CAST(N'2023-12-08T22:22:19.173' AS DateTime), NULL, N'nguyendat', NULL, 1, 6)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (33, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-09T01:28:38.523' AS DateTime), NULL, N'nguyendat', NULL, 0, 12)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (34, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-09T02:08:27.850' AS DateTime), NULL, N'nguyendat', NULL, 0, 13)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (35, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-09T03:18:44.277' AS DateTime), NULL, N'nguyendat', NULL, 0, 14)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (36, N'Đã giao hàng tại quầy', CAST(N'2023-12-10T01:31:13.157' AS DateTime), NULL, N'nguyendat', NULL, 3, 14)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (37, N'Đã xác nhận tại quầy', CAST(N'2023-12-10T01:32:17.587' AS DateTime), NULL, N'nguyendat', NULL, 1, 13)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (38, N'Xác nhận đã thanh toán', CAST(N'2023-12-10T01:33:04.030' AS DateTime), NULL, N'nguyendat', NULL, 10, 13)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (39, N'ok', CAST(N'2023-12-10T01:33:08.767' AS DateTime), NULL, N'nguyendat', NULL, 2, 13)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (40, N'ok', CAST(N'2023-12-10T01:33:14.163' AS DateTime), NULL, N'nguyendat', NULL, 3, 13)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (41, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-10T01:34:04.923' AS DateTime), NULL, N'nguyendat', NULL, 0, 15)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (42, N'Đã giao hàng tại quầy', CAST(N'2023-12-10T01:34:27.490' AS DateTime), NULL, N'nguyendat', NULL, 3, 15)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (43, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-10T01:34:56.333' AS DateTime), NULL, N'nguyendat', NULL, 0, 16)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (44, N'Đã giao hàng tại quầy', CAST(N'2023-12-10T01:35:20.563' AS DateTime), NULL, N'nguyendat', NULL, 3, 16)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (45, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-10T01:35:55.243' AS DateTime), NULL, N'nguyendat', NULL, 0, 17)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (46, N'Đã xác nhận tại quầy', CAST(N'2023-12-10T01:36:43.703' AS DateTime), NULL, N'nguyendat', NULL, 1, 17)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (47, NULL, CAST(N'2023-12-10T01:48:04.723' AS DateTime), NULL, NULL, NULL, 0, 18)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (48, N'cc', CAST(N'2023-12-10T01:48:26.110' AS DateTime), NULL, N'nguyendat', NULL, 1, 18)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (49, N'Xác nhận đã thanh toán', CAST(N'2023-12-10T01:48:58.243' AS DateTime), NULL, N'nguyendat', NULL, 10, 18)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (50, N'ok', CAST(N'2023-12-10T01:49:03.637' AS DateTime), NULL, N'nguyendat', NULL, 2, 18)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (51, N'ok', CAST(N'2023-12-10T01:49:21.480' AS DateTime), NULL, N'nguyendat', NULL, 3, 18)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (52, N'Đã thêm sản phẩm Áo Somi GC [ màu Trắng, kích thước XXL, số lượng : 1 ]', CAST(N'2023-12-10T01:49:48.720' AS DateTime), NULL, N'nguyendat', NULL, 13, 18)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (53, N'ok', CAST(N'2023-12-10T02:00:18.877' AS DateTime), NULL, N'nguyendat', NULL, 2, 17)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (54, N'aaaa', CAST(N'2023-12-10T02:00:22.973' AS DateTime), NULL, N'nguyendat', NULL, 1, 17)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (55, N'aaaa', CAST(N'2023-12-10T02:00:32.307' AS DateTime), NULL, N'nguyendat', NULL, 4, 17)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (56, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-10T02:00:44.527' AS DateTime), NULL, N'nguyendat', NULL, 0, 19)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (57, N'Đã xác nhận tại quầy', CAST(N'2023-12-10T02:01:19.433' AS DateTime), NULL, N'', NULL, 1, 19)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (58, N'aa', CAST(N'2023-12-10T02:02:52.263' AS DateTime), NULL, N'nguyendat', NULL, 4, 19)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (59, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-11T17:38:58.670' AS DateTime), NULL, N'nguyendat', NULL, 0, 20)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (60, N'Đã giao hàng tại quầy', CAST(N'2023-12-11T17:40:02.457' AS DateTime), NULL, N'nguyendat', NULL, 3, 20)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (62, N'dat qua', CAST(N'2023-12-11T17:42:45.493' AS DateTime), NULL, N'nguyendat', NULL, 4, 13)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (63, NULL, CAST(N'2023-12-11T17:49:34.283' AS DateTime), NULL, NULL, NULL, 0, 22)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (64, N'aaa', CAST(N'2023-12-11T17:50:01.277' AS DateTime), NULL, N'nguyendat', NULL, 1, 22)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (65, N'aaaaa', CAST(N'2023-12-11T17:50:13.013' AS DateTime), NULL, N'nguyendat', NULL, 2, 22)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (66, N'Xác nhận đã thanh toán', CAST(N'2023-12-11T17:50:17.777' AS DateTime), NULL, N'nguyendat', NULL, 10, 22)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (67, N'asdfgh', CAST(N'2023-12-11T17:50:25.563' AS DateTime), NULL, N'nguyendat', NULL, 3, 22)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (68, NULL, CAST(N'2023-12-11T22:45:19.857' AS DateTime), NULL, NULL, NULL, 0, 23)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (69, NULL, CAST(N'2023-12-11T22:46:01.573' AS DateTime), NULL, NULL, NULL, 0, 24)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (70, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-14T00:36:02.973' AS DateTime), NULL, N'nguyendat', NULL, 0, 25)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (71, N'ok', CAST(N'2023-12-14T00:38:05.160' AS DateTime), NULL, N'nguyendat', NULL, 1, 24)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (72, N'â', CAST(N'2023-12-14T00:38:11.150' AS DateTime), NULL, N'nguyendat', NULL, 2, 24)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (73, N'Xác nhận đã thanh toán', CAST(N'2023-12-14T00:38:24.107' AS DateTime), NULL, N'nguyendat', NULL, 10, 24)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (74, N'ok', CAST(N'2023-12-14T00:38:30.403' AS DateTime), NULL, N'nguyendat', NULL, 3, 24)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (75, N'bận không nhận đc', CAST(N'2023-12-14T00:39:07.187' AS DateTime), NULL, N'nguyendat', NULL, 4, 24)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (76, N'Đã thêm sản phẩm ao thun cao cap [ màu , kích thước L, số lượng : 3 ]', CAST(N'2023-12-14T00:40:46.250' AS DateTime), NULL, N'nguyendat', NULL, 13, 23)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (77, N'Đã thêm sản phẩm Quần jean dáng  rộng KONO [ màu Đen, kích thước 30, số lượng : 2 ]', CAST(N'2023-12-14T00:40:59.790' AS DateTime), NULL, N'nguyendat', NULL, 13, 23)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (78, N'Đã xóa sản phẩm Quần jean dáng  rộng KONO [ màu Đen, kích thước 30 ]', CAST(N'2023-12-14T00:41:25.020' AS DateTime), NULL, N'nguyendat', NULL, 12, 23)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (79, N'Đã giao hàng tại quầy', CAST(N'2023-12-14T18:50:17.457' AS DateTime), NULL, N'nguyendat', NULL, 3, 25)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (80, NULL, CAST(N'2023-12-14T21:42:59.197' AS DateTime), NULL, NULL, NULL, 0, 26)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (81, N'đã xác nhận', CAST(N'2023-12-14T21:43:23.550' AS DateTime), NULL, N'nguyendat', NULL, 1, 26)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (82, N'đang giao', CAST(N'2023-12-14T21:43:33.410' AS DateTime), NULL, N'nguyendat', NULL, 2, 26)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (83, N'Xác nhận đã thanh toán', CAST(N'2023-12-14T21:43:37.073' AS DateTime), NULL, N'nguyendat', NULL, 10, 26)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (84, N'đã giao', CAST(N'2023-12-14T21:43:49.093' AS DateTime), NULL, N'nguyendat', NULL, 3, 26)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (85, N'Đã thêm sản phẩm Quần short bò nữ rách [ màu Trắng, kích thước S, số lượng : 2 ]', CAST(N'2023-12-14T21:44:01.320' AS DateTime), NULL, N'nguyendat', NULL, 13, 26)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (86, NULL, CAST(N'2023-12-14T21:51:17.343' AS DateTime), NULL, NULL, NULL, 0, 27)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (87, N'', CAST(N'2023-12-14T21:51:29.987' AS DateTime), NULL, N'nguyendat', NULL, 1, 27)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (88, NULL, CAST(N'2023-12-14T21:52:00.750' AS DateTime), NULL, NULL, NULL, 0, 28)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (89, N'', CAST(N'2023-12-14T21:52:08.767' AS DateTime), NULL, N'nguyendat', NULL, 1, 28)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (90, N'Xác nhận đã thanh toán', CAST(N'2023-12-14T21:52:11.123' AS DateTime), NULL, N'nguyendat', NULL, 10, 28)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (91, N'', CAST(N'2023-12-14T21:52:15.913' AS DateTime), NULL, N'nguyendat', NULL, 2, 28)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (92, NULL, CAST(N'2023-12-14T22:08:12.303' AS DateTime), NULL, NULL, NULL, 0, 29)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (94, NULL, CAST(N'2023-12-14T22:10:12.853' AS DateTime), NULL, NULL, NULL, 0, 31)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (95, N'khách boom hàng', CAST(N'2023-12-14T22:10:42.417' AS DateTime), NULL, N'nguyendat', NULL, 4, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (96, N'', CAST(N'2023-12-14T22:10:51.523' AS DateTime), NULL, N'nguyendat', NULL, 1, 31)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (97, NULL, CAST(N'2023-12-14T22:13:03.400' AS DateTime), NULL, NULL, NULL, 0, 32)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (98, N'', CAST(N'2023-12-14T22:13:10.150' AS DateTime), NULL, N'nguyendat', NULL, 1, 32)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (99, N'Xác nhận đã thanh toán', CAST(N'2023-12-14T22:13:13.843' AS DateTime), NULL, N'nguyendat', NULL, 10, 32)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (100, N'', CAST(N'2023-12-14T22:13:17.357' AS DateTime), NULL, N'nguyendat', NULL, 2, 32)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (101, N'', CAST(N'2023-12-14T22:13:19.733' AS DateTime), NULL, N'nguyendat', NULL, 3, 32)
GO
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (102, NULL, CAST(N'2023-12-14T22:16:04.550' AS DateTime), NULL, NULL, NULL, 0, 33)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (103, NULL, CAST(N'2023-12-15T14:03:28.927' AS DateTime), NULL, NULL, NULL, 0, 34)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (104, NULL, CAST(N'2023-12-15T14:04:13.277' AS DateTime), NULL, NULL, NULL, 0, 35)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (106, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T14:39:00.433' AS DateTime), NULL, N'nguyendat', NULL, 0, 36)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (107, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:44.803' AS DateTime), NULL, N'nguyendat', NULL, 0, 37)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (108, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:46.177' AS DateTime), NULL, N'nguyendat', NULL, 0, 38)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (109, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:48.443' AS DateTime), NULL, N'nguyendat', NULL, 0, 39)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (110, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:50.050' AS DateTime), NULL, N'nguyendat', NULL, 0, 40)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (111, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:53.127' AS DateTime), NULL, N'nguyendat', NULL, 0, 41)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (112, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:55.560' AS DateTime), NULL, N'nguyendat', NULL, 0, 42)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (113, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:57.587' AS DateTime), NULL, N'nguyendat', NULL, 0, 43)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (114, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:06:59.597' AS DateTime), NULL, N'nguyendat', NULL, 0, 44)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (115, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:07:02.237' AS DateTime), NULL, N'nguyendat', NULL, 0, 45)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (116, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:07:04.413' AS DateTime), NULL, N'nguyendat', NULL, 0, 46)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (117, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:07:07.653' AS DateTime), NULL, N'nguyendat', NULL, 0, 47)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (118, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:07:09.550' AS DateTime), NULL, N'nguyendat', NULL, 0, 48)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (119, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:07:11.737' AS DateTime), NULL, N'nguyendat', NULL, 0, 49)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (120, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-15T15:07:22.217' AS DateTime), NULL, N'nguyendat', NULL, 0, 50)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (121, N'Đã thêm sản phẩm Quần Bò Jean Nữ Ống Loe To Lưng Cao MIAA [ màu Xanh, kích thước 29, số lượng : 1 ]', CAST(N'2023-12-18T23:18:56.643' AS DateTime), NULL, N'nguyendat', NULL, 13, 82)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (122, N'12', CAST(N'2023-12-18T23:19:02.070' AS DateTime), NULL, N'nguyendat', NULL, 2, 82)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (123, N'', CAST(N'2023-12-18T23:19:04.320' AS DateTime), NULL, N'nguyendat', NULL, 3, 82)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (124, N'Xác nhận đã thanh toán', CAST(N'2023-12-19T14:16:20.687' AS DateTime), NULL, N'nguyendat', NULL, 10, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (125, N'', CAST(N'2023-12-19T14:16:23.803' AS DateTime), NULL, N'nguyendat', NULL, 1, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (126, N'', CAST(N'2023-12-19T14:16:26.177' AS DateTime), NULL, N'nguyendat', NULL, 2, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (127, N'', CAST(N'2023-12-19T14:16:28.713' AS DateTime), NULL, N'nguyendat', NULL, 3, 10)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (128, N'Đã giao hàng tại quầy', CAST(N'2023-12-19T19:17:14.820' AS DateTime), NULL, N'nguyendat', NULL, 3, 81)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (129, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-19T19:17:54.637' AS DateTime), NULL, N'nguyendat', NULL, 0, 89)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (130, N'Đã giao hàng tại quầy', CAST(N'2023-12-19T19:18:21.393' AS DateTime), NULL, N'nguyendat', NULL, 3, 89)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (131, N'Tạo hóa đơn tại quầy', CAST(N'2023-12-19T19:20:42.107' AS DateTime), NULL, N'nguyendat', NULL, 0, 90)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (132, N'Đã xác nhận tại quầy', CAST(N'2023-12-19T19:21:36.873' AS DateTime), NULL, N'', NULL, 1, 90)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (133, N'Đã xác nhận tại quầy', CAST(N'2023-12-19T19:22:38.623' AS DateTime), NULL, N'', NULL, 1, 90)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (134, N'Đã giao hàng tại quầy', CAST(N'2023-12-20T00:10:17.967' AS DateTime), NULL, N'nguyendat', NULL, 3, 92)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (135, N'', CAST(N'2023-12-20T14:52:50.350' AS DateTime), NULL, N'nguyendat', NULL, 2, 84)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (136, N'Xác nhận đã thanh toán', CAST(N'2023-12-20T14:53:03.350' AS DateTime), NULL, N'nguyendat', NULL, 10, 84)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (137, N'', CAST(N'2023-12-20T14:53:08.517' AS DateTime), NULL, N'nguyendat', NULL, 3, 84)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (138, NULL, CAST(N'2023-12-20T14:57:30.227' AS DateTime), NULL, NULL, NULL, 0, 93)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (139, NULL, CAST(N'2023-12-20T16:41:41.693' AS DateTime), NULL, NULL, NULL, 0, 94)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (140, N'Hủy đơn', CAST(N'2023-12-20T16:42:15.917' AS DateTime), NULL, NULL, NULL, 4, 94)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (141, NULL, CAST(N'2023-12-20T16:45:12.260' AS DateTime), NULL, NULL, NULL, 0, 95)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (1139, N'Xác nhận đã thanh toán', CAST(N'2023-12-20T22:30:08.143' AS DateTime), NULL, N'nguyendat', NULL, 10, 95)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (1140, N'', CAST(N'2023-12-20T22:30:11.447' AS DateTime), NULL, N'nguyendat', NULL, 1, 95)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (1141, N'', CAST(N'2023-12-20T22:30:13.913' AS DateTime), NULL, N'nguyendat', NULL, 2, 95)
INSERT [dbo].[BillHistory] ([Id], [Note], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status], [IdOrder]) VALUES (1142, N'', CAST(N'2023-12-20T22:30:16.450' AS DateTime), NULL, N'nguyendat', NULL, 3, 95)
SET IDENTITY_INSERT [dbo].[BillHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (1, N'GUCCI', NULL, CAST(N'2023-12-08T17:09:38.640' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (2, N'Zyro', NULL, CAST(N'2023-12-08T17:18:00.763' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (3, N'KONO', NULL, CAST(N'2023-12-08T17:23:01.627' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (4, N'Torano', NULL, CAST(N'2023-12-08T17:33:16.013' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (5, N'PeaBoo', NULL, CAST(N'2023-12-14T03:00:56.560' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (6, N'Dolce & Gabbana', N'', CAST(N'2023-12-19T15:01:52.353' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (7, N'demo', N'', CAST(N'2023-12-19T23:37:01.460' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (8, N'demo', N'', CAST(N'2023-12-19T23:42:35.117' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (9, N'demo', N'', CAST(N'2023-12-20T00:04:49.507' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (10, N'demo111', N'', CAST(N'2023-12-20T00:29:40.980' AS DateTime), CAST(N'2023-12-20T00:29:45.843' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (11, N'aaaaaaaaaa', N'', CAST(N'2023-12-20T00:40:00.137' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1, 1)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2, 2)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (3, 3)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (4, 4)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (5, 5)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (6, 6)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (7, 7)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (8, 8)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (9, 9)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (10, 10)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1002, 1002)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1003, 1003)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1004, 1004)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1005, 1005)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1006, 1006)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1007, 1007)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1008, 1008)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1009, 1009)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1010, 1010)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1011, 1011)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1012, 1012)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1013, 1013)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1014, 1014)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1015, 1015)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1016, 1016)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1017, 1017)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1018, 1018)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1019, 1019)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1020, 1020)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1021, 1021)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1022, 1022)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (1023, 1023)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2022, 2022)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2023, 2023)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2024, 2024)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2025, 2025)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2026, 2026)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2027, 2027)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2028, 2028)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2029, 2029)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2030, 2030)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2031, 2031)
INSERT [dbo].[Cart] ([Id], [IdCustomer]) VALUES (2032, 2032)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CartDetail] ON 

INSERT [dbo].[CartDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdCart], [IdProductDetail]) VALUES (12, 334999.3300, 1, 1, 4, 1023, 5)
INSERT [dbo].[CartDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdCart], [IdProductDetail]) VALUES (13, 300000.0000, 1, 7, 1, 1023, 2)
INSERT [dbo].[CartDetail] ([Id], [UnitPrice], [Quantity], [IdColor], [IdSize], [IdCart], [IdProductDetail]) VALUES (2030, 134190.0000, 1, 10, 1, 2023, 27)
SET IDENTITY_INSERT [dbo].[CartDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (1, N'Áo', NULL, CAST(N'2023-12-08T17:08:11.990' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (2, N'Quần', NULL, CAST(N'2023-12-08T17:08:18.693' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (3, N'Áo Khoác', NULL, CAST(N'2023-12-08T17:16:06.020' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (4, N'Sơ Mi Nam', NULL, CAST(N'2023-12-08T17:28:34.623' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (5, N'Sơ Mi Nữ', NULL, CAST(N'2023-12-08T17:28:43.547' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (6, N'POLO', NULL, CAST(N'2023-12-08T17:33:27.057' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (7, N'Áo Len', NULL, CAST(N'2023-12-14T02:37:31.993' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (8, N'Quần Jean Nam', NULL, CAST(N'2023-12-14T02:41:09.893' AS DateTime), CAST(N'2023-12-14T18:42:26.900' AS DateTime), NULL, NULL, 0)
INSERT [dbo].[Category] ([Id], [Name], [Description], [CreateDate], [UpdateDate], [CreateBy], [UpdateBy], [Status]) VALUES (9, N'Quần Jean Nữ', N'', CAST(N'2023-12-14T18:42:38.830' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD FOREIGN KEY([IdCart])
REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD FOREIGN KEY([IdCart])
REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[Coupon]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Coupon]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Product_Voucher]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_Voucher]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_Voucher]  WITH CHECK ADD FOREIGN KEY([IdVoucher])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[Product_Voucher]  WITH CHECK ADD FOREIGN KEY([IdVoucher])
REFERENCES [dbo].[Voucher] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IdBrand])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IdBrand])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Color_Size]  WITH CHECK ADD FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Color_Size]  WITH CHECK ADD FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Color_Size]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Color_Size]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Color_Size]  WITH CHECK ADD FOREIGN KEY([IdSize])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Color_Size]  WITH CHECK ADD FOREIGN KEY([IdSize])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Material]  WITH CHECK ADD FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Material]  WITH CHECK ADD FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Material]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductDetail_Material]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductDetailHistory]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductDetailHistory]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductFault]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductFault]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([IdProductDetail])
REFERENCES [dbo].[ProductDetail] ([Id])
GO
ALTER TABLE [dbo].[RatingImage]  WITH CHECK ADD FOREIGN KEY([IdRating])
REFERENCES [dbo].[Rating] ([Id])
GO
ALTER TABLE [dbo].[RatingImage]  WITH CHECK ADD FOREIGN KEY([IdRating])
REFERENCES [dbo].[Rating] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchange]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchange]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchangeDetail]  WITH CHECK ADD FOREIGN KEY([IdOrderDetail])
REFERENCES [dbo].[BillDetail] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchangeDetail]  WITH CHECK ADD FOREIGN KEY([IdOrderDetail])
REFERENCES [dbo].[BillDetail] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchangeDetail]  WITH CHECK ADD FOREIGN KEY([IdReturnExchange])
REFERENCES [dbo].[ReturnExchange] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchangeDetail]  WITH CHECK ADD FOREIGN KEY([IdReturnExchange])
REFERENCES [dbo].[ReturnExchange] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchangeHistory]  WITH CHECK ADD FOREIGN KEY([IdReturnExchange])
REFERENCES [dbo].[ReturnExchange] ([Id])
GO
ALTER TABLE [dbo].[ReturnExchangeHistory]  WITH CHECK ADD FOREIGN KEY([IdReturnExchange])
REFERENCES [dbo].[ReturnExchange] ([Id])
GO
