
/****** Object:  Table [dbo].[Services]    Script Date: 2021-07-24 08:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](35) NULL,
	[Price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[PK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Services]    Script Date: 2021-07-24 08:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Services](
	[PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[Staff_ID] [int] NULL,
	[Service_ID] [int] NULL,
 CONSTRAINT [PK_Staff_Services] PRIMARY KEY CLUSTERED 
(
	[PK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2021-07-24 08:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[PK_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](60) NULL,
	[Mobile] [varchar](12) NULL,
	[Email] [varchar](80) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[PK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VW_Staff_Services]    Script Date: 2021-07-24 08:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Staff_Services]
AS
SELECT        dbo.Staff_Services.PK_ID, dbo.Staff_Services.Staff_ID, dbo.Staff.Name AS Staff, dbo.Staff_Services.Service_ID, dbo.Services.Name
FROM            dbo.Staff_Services LEFT OUTER JOIN
                         dbo.Services ON dbo.Staff_Services.Service_ID = dbo.Services.PK_ID LEFT OUTER JOIN
                         dbo.Staff ON dbo.Staff_Services.Staff_ID = dbo.Staff.PK_ID
GO
SET IDENTITY_INSERT [dbo].[Services] ON 
GO
INSERT [dbo].[Services] ([PK_ID], [Name], [Price]) VALUES (1, N'Hair Cut', CAST(50.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Services] ([PK_ID], [Name], [Price]) VALUES (2, N'Pedicure', CAST(75.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Services] ([PK_ID], [Name], [Price]) VALUES (3, N'Manicure', CAST(300.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Services] ([PK_ID], [Name], [Price]) VALUES (4, N'Rebond', CAST(1500.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Services] ([PK_ID], [Name], [Price]) VALUES (5, N'Hot Oil', CAST(100.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (1, N'Alvian ', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (2, N'christopher ', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (3, N'nathan lee', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (4, N'william', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (5, N'danilo ', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (6, N'lambert', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (7, N'juan dela cruz', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (8, N'jumabel', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (9, N'eries', N' ', N' ')
GO
INSERT [dbo].[Staff] ([PK_ID], [Name], [Mobile], [Email]) VALUES (10, N'chynna', N' ', N' ')
GO
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_Services] ON 
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (2, 1, 3)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (4, 1, 5)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (5, 1, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (6, 2, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (7, 2, 5)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (8, 3, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (9, 3, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (10, 3, 3)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (11, 4, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (12, 4, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (13, 4, 3)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (14, 4, 5)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (15, 5, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (16, 5, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (17, 5, 3)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (19, 5, 5)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (20, 6, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (21, 6, 3)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (22, 6, 5)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (23, 7, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (24, 7, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (25, 7, 3)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (27, 7, 5)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (28, 8, 4)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (29, 9, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (31, 10, 1)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (32, 10, 2)
GO
INSERT [dbo].[Staff_Services] ([PK_ID], [Staff_ID], [Service_ID]) VALUES (33, 10, 4)
GO
SET IDENTITY_INSERT [dbo].[Staff_Services] OFF
GO