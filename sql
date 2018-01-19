USE [JavaBasic]
GO
/****** Object:  Table [dbo].[AA]    Script Date: 1/19/2018 4:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AA](
	[id] [int] NULL,
	[name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BB]    Script Date: 1/19/2018 4:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BB](
	[id] [int] NULL,
	[phone] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 1/19/2018 4:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate](
	[candidateID] [varchar](10) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[phone] [varchar](11) NULL,
	[email] [varchar](50) NULL,
	[candidateType] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 1/19/2018 4:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experience](
	[candidateID] [varchar](10) NOT NULL,
	[expInYear] [int] NULL,
	[proSkill] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fresher]    Script Date: 1/19/2018 4:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fresher](
	[candidateID] [varchar](10) NOT NULL,
	[graduationDate] [date] NULL,
	[graduationRank] [nvarchar](20) NULL,
	[education] [nvarchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Intern]    Script Date: 1/19/2018 4:37:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Intern](
	[majors] [nvarchar](20) NULL,
	[semester] [int] NULL,
	[universityName] [nvarchar](30) NULL,
	[candidateID] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Candidate] ([candidateID], [fullName], [birthday], [phone], [email], [candidateType]) VALUES (N'exp', N'Thanh tam', CAST(N'1996-04-02' AS Date), N'01674670610', N't2dragon', 0)
INSERT [dbo].[Candidate] ([candidateID], [fullName], [birthday], [phone], [email], [candidateType]) VALUES (N'fre', N'thao my', CAST(N'1996-02-15' AS Date), N'0999999999', N'thaomy', 1)
INSERT [dbo].[Candidate] ([candidateID], [fullName], [birthday], [phone], [email], [candidateType]) VALUES (N'vanchau', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Candidate] ([candidateID], [fullName], [birthday], [phone], [email], [candidateType]) VALUES (N'inter', N'2', CAST(N'1992-02-02' AS Date), N'2', N'2', 2)
INSERT [dbo].[Candidate] ([candidateID], [fullName], [birthday], [phone], [email], [candidateType]) VALUES (N'TamNT', N'Namikazeconcac', CAST(N'1996-04-02' AS Date), N'01674670610', N't2dragon9x@gmail.com', 2)
INSERT [dbo].[Candidate] ([candidateID], [fullName], [birthday], [phone], [email], [candidateType]) VALUES (N'TamNT', N'Trần Thảo My aa', CAST(N'1996-04-02' AS Date), N'01674670610', N't2dragon9x@gmail.com', 2)
INSERT [dbo].[Experience] ([candidateID], [expInYear], [proSkill]) VALUES (N'exp', 2, N'da php')
INSERT [dbo].[Fresher] ([candidateID], [graduationDate], [graduationRank], [education]) VALUES (N'fre', CAST(N'1996-02-04' AS Date), N'kha', N'dh quy nhon')
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'Kinh tế 37B', 2, N'Đại học Quy Nhơn', NULL)
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'CNTT', 3, N'dh quy nhon', N'tamnt')
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'Kinh tế 37B', 2, N'Đại học Quy Nhơn', NULL)
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'ACCCC', NULL, NULL, N'tamnt')
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'aaaaaa', NULL, NULL, N'thaomy')
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'Kinh tế 37B', 2, N'Đại học Quy Nhơn', N'TamNT')
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'Kinh tế 37B', 2, N'Đại học Quy Nhơn aaa', N'TamNT')
INSERT [dbo].[Intern] ([majors], [semester], [universityName], [candidateID]) VALUES (N'2', 2, N'2', N'inter')
