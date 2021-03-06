USE [FullQuran]
GO
/****** Object:  User [eissa.sabry]    Script Date: 29-Aug-18 11:35:44 PM ******/
CREATE USER [eissa.sabry] FOR LOGIN [eissa.sabry] WITH DEFAULT_SCHEMA=[eissa.sabry]
GO
/****** Object:  User [hadeer.ameen]    Script Date: 29-Aug-18 11:35:44 PM ******/
CREATE USER [hadeer.ameen] FOR LOGIN [hadeer.ameen] WITH DEFAULT_SCHEMA=[hadeer.ameen]
GO
/****** Object:  User [nada.sim]    Script Date: 29-Aug-18 11:35:45 PM ******/
CREATE USER [nada.sim] FOR LOGIN [nada.sim] WITH DEFAULT_SCHEMA=[nada.sim]
GO
/****** Object:  User [nourquran]    Script Date: 29-Aug-18 11:35:45 PM ******/
CREATE USER [nourquran] FOR LOGIN [nourquran] WITH DEFAULT_SCHEMA=[nourquran]
GO
/****** Object:  User [reham.said]    Script Date: 29-Aug-18 11:35:46 PM ******/
CREATE USER [reham.said] FOR LOGIN [reham.said] WITH DEFAULT_SCHEMA=[reham.said]
GO
ALTER ROLE [db_owner] ADD MEMBER [eissa.sabry]
GO
ALTER ROLE [db_owner] ADD MEMBER [hadeer.ameen]
GO
ALTER ROLE [db_owner] ADD MEMBER [nada.sim]
GO
ALTER ROLE [db_owner] ADD MEMBER [nourquran]
GO
ALTER ROLE [db_owner] ADD MEMBER [reham.said]
GO
/****** Object:  Schema [eissa.sabry]    Script Date: 29-Aug-18 11:35:49 PM ******/
CREATE SCHEMA [eissa.sabry]
GO
/****** Object:  Schema [hadeer.ameen]    Script Date: 29-Aug-18 11:35:49 PM ******/
CREATE SCHEMA [hadeer.ameen]
GO
/****** Object:  Schema [nada.sim]    Script Date: 29-Aug-18 11:35:50 PM ******/
CREATE SCHEMA [nada.sim]
GO
/****** Object:  Schema [nourquran]    Script Date: 29-Aug-18 11:35:50 PM ******/
CREATE SCHEMA [nourquran]
GO
/****** Object:  Schema [reham.said]    Script Date: 29-Aug-18 11:35:51 PM ******/
CREATE SCHEMA [reham.said]
GO
/****** Object:  Table [dbo].[Ayat]    Script Date: 29-Aug-18 11:35:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ayat](
	[AyaCode] [nchar](6) NOT NULL,
	[AyaSerial] [int] NULL,
	[SN] [int] NULL,
	[AN] [int] NULL,
	[AyaText] [nvarchar](max) NULL,
	[QuartID] [int] NULL,
 CONSTRAINT [PK_Ayat] PRIMARY KEY CLUSTERED 
(
	[AyaCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MainTopic]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainTopic](
	[MainID] [nchar](2) NOT NULL,
	[MainTopic] [nvarchar](100) NULL,
 CONSTRAINT [PK_MainTopic] PRIMARY KEY CLUSTERED 
(
	[MainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MidTopic]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MidTopic](
	[MidID] [nchar](4) NOT NULL,
	[MidTopic] [nvarchar](100) NULL,
	[MainTopicID] [nchar](2) NULL,
 CONSTRAINT [PK_MidTopic] PRIMARY KEY CLUSTERED 
(
	[MidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhoneWords]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneWords](
	[PhWordID] [nchar](9) NOT NULL,
	[PhWordText] [nvarchar](50) NULL,
	[PhWordPro] [nvarchar](50) NULL,
	[AyaCode] [nchar](6) NULL,
 CONSTRAINT [PK_PhoneWords] PRIMARY KEY CLUSTERED 
(
	[PhWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quarters]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quarters](
	[QuartID] [int] NOT NULL,
	[QuartAyaSerial] [int] NULL,
	[QuartText] [nvarchar](100) NULL,
	[Joz] [int] NULL,
 CONSTRAINT [PK_Quarters] PRIMARY KEY CLUSTERED 
(
	[QuartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SimSegments]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SimSegments](
	[SegID] [nchar](7) NOT NULL,
	[AyaCode] [nchar](6) NULL,
	[Pre] [nvarchar](max) NULL,
	[SegmentText] [nvarchar](max) NULL,
	[Post] [nvarchar](max) NULL,
	[InsertDate] [datetime] NULL,
 CONSTRAINT [PK_SimSegments] PRIMARY KEY CLUSTERED 
(
	[SegID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubTopic]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubTopic](
	[SubID] [nchar](6) NOT NULL,
	[SubTopic] [nvarchar](100) NULL,
	[MidTopicID] [nchar](4) NULL,
 CONSTRAINT [PK_SubTopic] PRIMARY KEY CLUSTERED 
(
	[SubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubTopicsAyat]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubTopicsAyat](
	[ID] [int] NOT NULL,
	[SubTopicCode] [nchar](6) NULL,
	[AyaCode] [nchar](6) NULL,
 CONSTRAINT [PK_SubTopicsAyat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suras]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suras](
	[SN] [int] NOT NULL,
	[SurahName] [nvarchar](50) NULL,
	[SurahOrder] [int] NULL,
	[NumberWords] [int] NULL,
	[NumberVerse] [int] NULL,
 CONSTRAINT [PK_Suras] PRIMARY KEY CLUSTERED 
(
	[SN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SymWords]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SymWords](
	[SymWordID] [nchar](9) NOT NULL,
	[SymWord_ar] [nvarchar](50) NULL,
	[SymWord_en] [nvarchar](50) NULL,
	[SymWord_de] [nvarchar](50) NULL,
	[WordType] [int] NULL,
	[AyaCode] [nchar](6) NULL,
 CONSTRAINT [PK_SymWords] PRIMARY KEY CLUSTERED 
(
	[SymWordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Titles]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Titles](
	[TitleID] [nchar](7) NOT NULL,
	[TitleText] [nvarchar](200) NULL,
	[Notes] [nvarchar](max) NULL,
	[Figure] [nvarchar](150) NULL,
	[AyaCode] [nchar](6) NULL,
	[InsertDate] [datetime] NULL,
 CONSTRAINT [PK_Titles] PRIMARY KEY CLUSTERED 
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TitlesSegments]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TitlesSegments](
	[TSID] [int] IDENTITY(1,1) NOT NULL,
	[TitleID] [nchar](7) NOT NULL,
	[SegID] [nchar](7) NOT NULL,
	[InsertDate] [datetime] NULL,
 CONSTRAINT [PK_TitlesSegments_1] PRIMARY KEY CLUSTERED 
(
	[TSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WordTypes]    Script Date: 29-Aug-18 11:35:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WordTypes](
	[WordTypeID] [int] NOT NULL,
	[WordType_ar] [nvarchar](50) NULL,
	[WordType_en] [nvarchar](50) NULL,
	[WordType_de] [nvarchar](50) NULL,
 CONSTRAINT [PK_WordTypes] PRIMARY KEY CLUSTERED 
(
	[WordTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
