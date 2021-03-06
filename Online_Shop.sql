USE [Online_Shop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTiltle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTiltle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTiltle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTiltle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategotyID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [nchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[ShowOnHome] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[TypeID] [int] NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](20) NULL,
	[MetaTiltle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImage] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[MainMenuID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[ShowOnHome] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[TagID] [bigint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 4/29/2021 19:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTiltle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTiltle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/29/2021 19:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](20) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 4/29/2021 19:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 4/29/2021 19:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 4/29/2021 19:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/29/2021 19:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](32) NULL,
	[GroupID] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 4/29/2021 19:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [varchar](20) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([ID], [Name], [MetaTiltle], [Description], [Image], [Detail], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (1, N'Bóng Đá', N'Bong-Da', N'Bóng Đá', N'/Data/images/Data/Honkai_Impact_Delta.jpg', N'<p>B&oacute;ng Đ&aacute;</p>
', CAST(N'2021-03-11T12:40:06.163' AS DateTime), N'Khanh', CAST(N'2021-03-11T12:53:16.007' AS DateTime), N'Khanh', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (1, N'Bóng Đá', N'Bong-Da', 0, NULL, NULL, CAST(N'2021-03-09T13:38:42.770' AS DateTime), N'Khanh', CAST(N'2021-03-09T14:04:11.580' AS DateTime), NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty cổ phần Online Shop</p><p>Địa chỉ:Số 1 Cầu Giấy</p><p>Điện thoại:0961377300</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTiltle], [Description], [Image], [CategotyID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [Tags]) VALUES (6, N'Bóng Đá', N'Bong-Da', N'Bóng đá', N'/Data/images/Data/Honkai_Impact_Delta.jpg', 1, N'<p>as</p>
', NULL, CAST(N'2021-03-11T17:43:07.323' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_ADD', N'ADD_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_ADD', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_DELETE', N'DELETE_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_DELETE', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_EDIT', N'EDIT_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_EDIT', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD_VIEW', N'VIEW_USER')
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (1, N'Khanh', N'1234569876', N'nguyenkhanh21102000@gmail.com', N'Hưng Yên', N'', CAST(N'2021-03-07T12:53:58.863' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (2, N'Khanh', N'1234569876', N'nguyenkhanh21102000@gmail.com', N'Hưng Yên', N'', CAST(N'2021-03-07T12:54:58.660' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (3, N'Khanh', N'1234569876', N'dada@gmail.com', N'Hưng Yên', N'', CAST(N'2021-03-07T12:56:45.520' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (4, N'Khanh', N'0961377300', N'nguyenkhanh21102000@gmail.com', N'Hưng Yên', N'ádaskgd', NULL, NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (5, N'Khanh', N'0961377300', N'nguyenkhanh21102000@gmail.com', N'Hưng Yên', N'jgkasgdkags', CAST(N'2021-03-29T11:08:48.257' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (6, N'Khanh', N'0961377300', N'nguyenkhanh21102000@gmail.com', N'Hưng Yên', N'kkjasdhkahdkas', CAST(N'2021-03-29T11:10:02.810' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Footer] ON 

INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (1, N'<div class="footer-bottom">
    <div class="container">
        <div class="col-sm-3 footer-bottom-cate">
            <h6>Categories</h6>
            <ul>
                <li><a href="#">Curabitur sapien</a></li>
                <li><a href="#">Dignissim purus</a></li>
                <li><a href="#">Tempus pretium</a></li>
                <li><a href="#">Dignissim neque</a></li>
                <li><a href="#">Ornared id aliquet</a></li>

            </ul>
        </div>
        <div class="col-sm-3 footer-bottom-cate">
            <h6>Feature Projects</h6>
            <ul>
                <li><a href="#">Curabitur sapien</a></li>
                <li><a href="#">Dignissim purus</a></li>
                <li><a href="#">Tempus pretium</a></li>
                <li><a href="#">Dignissim neque</a></li>
                <li><a href="#">Ornared id aliquet</a></li>

            </ul>
        </div>
        <div class="col-sm-3 footer-bottom-cate">
            <h6>Top Brands</h6>
            <ul>
                <li><a href="#">Curabitur sapien</a></li>
                <li><a href="#">Dignissim purus</a></li>
                <li><a href="#">Tempus pretium</a></li>
                <li><a href="#">Dignissim neque</a></li>
                <li><a href="#">Ornared id aliquet</a></li>
                <li><a href="#">Ultrices id du</a></li>
                <li><a href="#">Commodo sit</a></li>

            </ul>
        </div>
        <div class="col-sm-3 footer-bottom-cate cate-bottom">
            <h6>Our Address</h6>
            <ul>
                <li>Aliquam metus  dui. </li>
                <li>orci, ornareidquet</li>
                <li> ut,DUI.</li>
                <li>nisi, dignissim</li>
                <li>gravida at.</li>
                <li class="phone">PH : 6985792466</li>
            </ul>
        </div>
        <div class="clearfix"> </div>
        <p class="footer-class"> © 2015 Fashion Mania. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
    </div>
</div>
', 0)
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (3, N'<div class="footer-bottom">
		<div class="container">
				<div class="col-sm-3 footer-bottom-cate">
					<h6>Categories</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate">
					<h6>Feature Projects</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate">
					<h6>Top Brands</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						
					</ul>
				</div>
				<div class="col-sm-3 footer-bottom-cate cate-bottom">
					<h6>Our Address</h6>
					<ul>
						<li>Aliquam metus  dui. </li>
						<li>orci, ornareidquet</li>
						<li> ut,DUI.</li>
						<li>nisi, dignissim</li>
						<li>gravida at.</li>
						<li class="phone">PH : 6985792466</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<p class="footer-class"> © 2015 Fashion Mania. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
			</div>
	</div>', 1)
SET IDENTITY_INSERT [dbo].[Footer] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (1, N'Trang chủ', N'/Trang-chu', 1, N'_blank', 1, 1, 0)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (10, N'Quần áo', N'/Quan-ao', NULL, N'_self', 1, 1, 0)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (11, N'Phụ Kiện', N'/Phu-Kien', NULL, N'_self', 1, 1, 0)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (12, N'Liên Hệ', N'/Lien-He', NULL, N'_self', 1, 1, 0)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (13, N'Đăng Nhập', N'/dang-nhap', NULL, N'_self', 1, 2, 0)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (14, N'Đăng Ký', N'/dang-ky', NULL, N'_self', 1, 2, 0)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (15, N'Áo thun', N'/Ao-thun', NULL, N'_self', 1, 1, 10)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (16, N'Áo Sơ Mi', N'/Ao-So-Mi', NULL, N'_self', 1, 1, 10)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (17, N'Quần Jean', N'/Quan-Jean', NULL, N'_self', 1, 1, 10)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (18, N'Khẩu Trang', N'/Khau-Trang', NULL, N'_self', 1, 1, 11)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID], [ParentID]) VALUES (19, N'Áo len', N'/ao-len', NULL, N'_self', 1, 1, 10)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(N'2021-03-04T19:16:11.887' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'Khanh@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(N'2021-03-06T09:44:47.730' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(N'2021-03-06T09:46:33.487' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(N'2021-03-06T09:49:08.473' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(N'2021-03-06T09:51:40.720' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(N'2021-03-06T10:19:03.660' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(N'2021-03-06T10:28:25.113' AS DateTime), NULL, N'khanh', N'1234569876', N'Hưng Yên', N'khanh19a7dqh@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10, CAST(N'2021-03-19T15:23:34.653' AS DateTime), NULL, N's', N'0961377300', N' ldfnldffa', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (11, CAST(N'2021-03-19T15:29:58.253' AS DateTime), NULL, N'Khanh', N'0961377300', N' Hưng Yên', N'ngjuyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (13, CAST(N'2021-03-19T15:33:11.327' AS DateTime), NULL, N'Khanh', N'0961377300', N' Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (14, CAST(N'2021-03-19T23:19:22.323' AS DateTime), NULL, N'Khanh', N'0961377300', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (15, CAST(N'2021-04-19T10:47:59.527' AS DateTime), NULL, N'Khanh', N'0961377300', N'Phi Liệt-Liên Nghĩa-Văn Giang', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (16, CAST(N'2021-04-19T10:48:13.837' AS DateTime), NULL, N'Khanh', N'0961377300', N'Phi Liệt-Liên Nghĩa-Văn Giang', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (17, CAST(N'2021-04-19T10:49:10.620' AS DateTime), NULL, N'Khanh', N'0961377300', N'Phi Liệt-Liên Nghĩa-Văn Giang', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (18, CAST(N'2021-04-19T10:54:55.023' AS DateTime), NULL, N'Khanh', N'0961377300', N' Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (19, CAST(N'2021-04-19T10:56:25.727' AS DateTime), NULL, N'Khanh', N'0961377300', N' Hưng Yên', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (20, CAST(N'2021-04-19T10:59:12.720' AS DateTime), NULL, N'Khanh', N'0961377300', N' h', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (21, CAST(N'2021-04-19T11:00:21.710' AS DateTime), NULL, N'Khanh', N'0961377300', N' j', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (22, CAST(N'2021-04-19T11:06:35.087' AS DateTime), NULL, N'Khanh', N'0961377300', N' k', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (23, CAST(N'2021-04-19T11:09:55.083' AS DateTime), NULL, N'Khanh', N'0961377300', N' khjkh', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (24, CAST(N'2021-04-19T11:12:25.603' AS DateTime), NULL, N'Khanh', N'0961377300', N' fgh', N'nguyenkhanh21102000@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (25, CAST(N'2021-04-22T23:53:28.340' AS DateTime), NULL, N'', N'', N' ', N'', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 15, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 16, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 17, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 18, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 19, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 23, 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (1, 24, 5, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 14, 2, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 15, 1, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 16, 1, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 17, 1, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 22, 12, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 23, 10, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (2, 24, 10, CAST(250000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 15, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 16, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 17, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 22, 11, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 23, 10, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 10, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 11, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 13, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 14, 1, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 15, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 16, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 17, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 20, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 21, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 22, 10, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 23, 10, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 25, 2, CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (6, 1, 1, CAST(1500000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (6, 25, 2, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 1, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 2, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (7, 25, 1, CAST(100000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 1, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 2, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 3, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 4, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 5, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 6, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 7, 1, CAST(7000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (8, 25, 2, CAST(250000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (1, N'Áo thun', N'A01', N'ao-thun', N's', N'/Data/images/Data/pi.png', NULL, CAST(200000 AS Decimal(18, 0)), NULL, NULL, 200, 16, 15, N'<p>&Aacute;o thun đẹp</p>
', NULL, CAST(N'2021-03-29T23:33:15.500' AS DateTime), NULL, CAST(N'2021-04-19T11:18:52.887' AS DateTime), N'Khanh', NULL, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (2, N'Áo sơ mi', N'A02', N'ao-so-mi', N'Áo sơ mi xanh', N'/Data/images/Data/pi3.png', NULL, CAST(250000 AS Decimal(18, 0)), NULL, NULL, 200, 17, 16, N'<p>&Aacute;o Sơ Mi Xanh</p>
', NULL, CAST(N'2021-03-29T23:33:15.553' AS DateTime), NULL, CAST(N'2021-04-19T11:18:36.363' AS DateTime), N'Khanh', NULL, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (3, N'Áo Dài Tay', N'A03', N'ao-dai-tay', N'Áo dài làm bằng chất liệu cotton giá rẻ và bền', N'/Data/images/Data/pi3.png', NULL, CAST(200000 AS Decimal(18, 0)), NULL, NULL, 100, 17, 16, N'<p>&Aacute;o Sơ Mi</p>
', NULL, CAST(N'2021-03-29T23:33:15.590' AS DateTime), NULL, CAST(N'2021-04-19T11:17:58.350' AS DateTime), N'Khanh', NULL, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (4, N'Áo thun thời trang', N'A04', N'ao-thun-thoi-trang', N'Áo thun có họa tiết giày', N'/Data/images/Data/pi5.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 15, 16, 15, N'<p>&Aacute;o thun được l&agrave;m từ cotton c&oacute; họa tiết gi&agrave;y</p>
', NULL, CAST(N'2021-04-16T14:53:13.397' AS DateTime), N'Khanh', CAST(N'2021-04-19T11:10:29.063' AS DateTime), NULL, NULL, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (5, N'Quần Jean', N'Q01', N'quan-jean', N'Quần bò', N'/Data/images/Data/pi6.png', NULL, CAST(200000 AS Decimal(18, 0)), NULL, NULL, 98, 18, 17, N'<p>Quần Jean d&agrave;i&nbsp;</p>
', NULL, CAST(N'2021-04-22T23:24:54.920' AS DateTime), N'Khanh', CAST(N'2021-04-22T23:53:28.377' AS DateTime), NULL, NULL, NULL, 1, 0, NULL, NULL, 3)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (6, N'Quần jean ngắn', N'Q02', N'quan-jean-ngan', N'Quần jean', N'/Data/images/Data/pi6.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 98, 18, 17, N'<p>Quần Jean</p>
', NULL, CAST(N'2021-04-22T23:27:11.880' AS DateTime), N'Khanh', CAST(N'2021-04-22T23:53:28.380' AS DateTime), NULL, NULL, NULL, 1, 0, NULL, NULL, 3)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (7, N'Áo cộc tay', N'A05', N'ao-coc-tay', N'Áo Cộc', N'/Data/images/Data/pi2.png', NULL, CAST(100000 AS Decimal(18, 0)), NULL, NULL, 99, 16, 15, N'<p>&Aacute;o thun cộc tay nh&atilde;n hiệu Nike</p>
', NULL, CAST(N'2021-04-22T23:30:51.743' AS DateTime), N'Khanh', CAST(N'2021-04-22T23:53:28.383' AS DateTime), N'Khanh', NULL, NULL, 1, 0, NULL, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTiltle], [Description], [Image], [MoreImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [MainMenuID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome], [TopHot], [ViewCount], [TagID]) VALUES (8, N'Áo len dài tay', N'A06', N'ao-len-dai-tay', N'Áo len dài tay màu đỏ', N'/Data/images/Data/pi1.png', N'<Images><Image>/Data/images/Data/pi1.png</Image><Image>/Data/images/Data/pi2.png</Image></Images>', CAST(250000 AS Decimal(18, 0)), NULL, NULL, 98, 21, 19, N'<p>&Aacute;o len d&agrave;i tay m&agrave;u đỏ đậm chống nhăn v&agrave; sờn vải</p>
', NULL, CAST(N'2021-04-22T23:36:23.117' AS DateTime), N'Khanh', CAST(N'2021-04-22T23:53:28.360' AS DateTime), NULL, NULL, NULL, 1, 0, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (14, N'Quần áo', N'Quan-ao', 0, 1, NULL, CAST(N'2021-03-31T09:52:26.573' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (15, N'Phụ Kiện', N'Phu-Kien', 0, 1, NULL, CAST(N'2021-03-31T09:52:36.483' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (16, N'Áo thun', N'Ao-thun', 14, 1, NULL, CAST(N'2021-03-31T09:52:46.670' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (17, N'Áo Sơ Mi', N'Ao-So-Mi', 14, 1, NULL, CAST(N'2021-03-31T09:52:58.743' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (18, N'Quần Jean', N'Quan-Jean', 14, 1, NULL, CAST(N'2021-03-31T09:53:18.260' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (20, N'Khẩu Trang', N'Khau-Trang', 15, 1, NULL, CAST(N'2021-03-31T09:54:57.087' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTiltle], [ParentID], [DisplayOrder], [SeoTiltle], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [MetaKeywords], [MetaDescription], [Status], [ShowOnHome]) VALUES (21, N'Áo len', N'ao-len', 14, 1, NULL, CAST(N'2021-04-22T23:33:13.487' AS DateTime), N'Khanh', NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tuc')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sua tin tuc')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sua user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách')
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (6, N'/Data/images/Data/1.jpg', NULL, N'/', NULL, CAST(N'2021-03-31T23:16:58.537' AS DateTime), N'Khanh', NULL, NULL, 1)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (7, N'/Data/images/Data/2.jpg', NULL, N'/', NULL, CAST(N'2021-03-31T23:17:20.123' AS DateTime), N'Khanh', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([ID], [Name]) VALUES (1, N'Áo')
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (3, N'Quần')
SET IDENTITY_INSERT [dbo].[Tag] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (1, N'Khanh', N'E10ADC3949BA59ABBE56E057F20F883E', N'ADMIN', N'Khanh', N'Hưng Yên', N'nguyenkhanh21102000@gmail.com', N'0961377300', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (2, N'Edit', N'E10ADC3949BA59ABBE56E057F20F883E', N'MOD_EDIT', N'Khanh', N'Hưng Yên', N'sdsdssd@gmail.com', N'0961377300', CAST(N'2021-04-19T17:25:55.340' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (3, N'Add', N'E10ADC3949BA59ABBE56E057F20F883E', N'MOD_ADD', N'Khanh', N'Hưng Yên', N'sdsdssd@gmail.com', N'0961377300', CAST(N'2021-04-19T17:25:55.340' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (4, N'Delete', N'E10ADC3949BA59ABBE56E057F20F883E', N'MOD_DELETE', N'Khanh', N'Hưng Yên', N'sdsdssd@gmail.com', N'0961377300', CAST(N'2021-04-19T17:25:55.340' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (5, N'View', N'E10ADC3949BA59ABBE56E057F20F883E', N'MOD_VIEW', N'Khanh', N'Hưng Yên', N'sdsdssd@gmail.com', N'0961377300', CAST(N'2021-04-19T17:25:55.340' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (6, N'Elok', N'E10ADC3949BA59ABBE56E057F20F883E', N'MEMBER', N'Khanh', N'Hưng Yên', N'sdsdssd@gmail.com', N'0961377300', CAST(N'2021-04-19T17:25:55.340' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [Phone], [CreatedDate], [CreatedBy], [ModifyDate], [ModifyBy], [Status]) VALUES (7, N'Van  Khánh', NULL, NULL, N'Văn  Khánh', NULL, N'nguyenkhanh21102000@gmail.com', NULL, CAST(N'2021-04-23T10:31:26.810' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quan tri')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Moderaditor')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD_ADD', N'Add')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD_DELETE', N'Delete')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD_EDIT', N'Edit')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD_VIEW', N'View')
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((1)) FOR [Status]
GO
