USE [UserRole]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/11/2016 1:05:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (1, N'admin', N'admin', N'admin', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (2, N'lenhatvan', N'123456', N'BanHang', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (3, N'dat', N'123456', N'NhanSu', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (4, N'tuan', N'123456', N'Kho', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (5, N'tri', N'123456', N'PKH', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (6, N'hoang', N'123456', N'CongNo', 1)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [Role], [Status]) VALUES (7, N'teo', N'123456', N'.', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((0)) FOR [Status]
GO
