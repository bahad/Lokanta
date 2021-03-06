USE [master]
GO
/****** Object:  Database [resDB]    Script Date: 11.10.2018 17:19:00 ******/
CREATE DATABASE [resDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'resDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\resDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'resDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\resDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [resDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [resDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [resDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [resDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [resDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [resDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [resDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [resDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [resDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [resDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [resDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [resDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [resDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [resDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [resDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [resDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [resDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [resDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [resDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [resDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [resDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [resDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [resDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [resDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [resDB] SET RECOVERY FULL 
GO
ALTER DATABASE [resDB] SET  MULTI_USER 
GO
ALTER DATABASE [resDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [resDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [resDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [resDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [resDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [resDB]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 11.10.2018 17:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[eventID] [int] IDENTITY(1,1) NOT NULL,
	[eventBaslik] [nvarchar](100) NULL,
	[eventTarih] [nvarchar](max) NULL,
	[eventAciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 11.10.2018 17:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAd] [nvarchar](50) NULL,
	[kullaniciSifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 11.10.2018 17:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menuID] [int] IDENTITY(1,1) NOT NULL,
	[menuTur] [nvarchar](100) NULL,
	[menuAd] [nvarchar](100) NULL,
	[menuFiyat] [nvarchar](100) NULL,
	[menuAciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[menuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([eventID], [eventBaslik], [eventTarih], [eventAciklama]) VALUES (1, N'Canli Muzik', N'10 Ekim 18:00', N'Son Feci Bisiklet grubunun katılımıyla 10 Ekim Carsamba aksami muzik ziyafetine  hazir olun. ')
INSERT [dbo].[Event] ([eventID], [eventBaslik], [eventTarih], [eventAciklama]) VALUES (2, N'Dj Levent Bayrak', N'15 Ekim 20:00', N'Turkce Remixleriyle geceye damgasini vuracak Levent Bayrak pazartesi gunu bizlerle birlikte olacak. ')
INSERT [dbo].[Event] ([eventID], [eventBaslik], [eventTarih], [eventAciklama]) VALUES (3, N'Cekilis Sansi', N'20 Ekim -22 Ekim', N'Sende cekilise katilmak istemez misin? Muhtesem firsatlarin oldugu cekilise katilmak icin siparisin fisinizle gelmeniz yeterlidir.')
SET IDENTITY_INSERT [dbo].[Event] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([kullaniciID], [kullaniciAd], [kullaniciSifre]) VALUES (1, N'woody', N'F3BA6D18ECCDAE368342205BD8D31E9F1D4CA65645067D12C12ED66EF69F85D0')
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (1, N'Icecek', N'Sarap', N'15', N'Doluca Ozel Kav Kirmizi')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (2, N'Icecek', N'Sarap', N'15', N'Sarafin Merlot')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (3, N'Yiyecek', N'Karisik Pizza', N'45', N'Mozzarella peyniri, ozel soslu marine izgara tavuk, parmesan peynir, yesil ve kirmizi biber, sogan')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (4, N'Icecek', N'Sarap', N'15', N'Sarafin Chardonnay')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (5, N'Icecek', N'Likor', N'15', N'Amarula tatli aromali likor')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (6, N'Yiyecek', N'Mantarlı Pizza', N'40', N'Pizza sosu, mozzarella peyniri, marine mantar')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (7, N'Yiyecek', N'Acili Sucuklu Pizza', N'50', N'Pizza sosu, mozzarella peyniri, zeytin, dilimlenmis sucuk')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (8, N'Icecek', N'Likor', N'35', N'Vana Tallin')
INSERT [dbo].[Menu] ([menuID], [menuTur], [menuAd], [menuFiyat], [menuAciklama]) VALUES (9, N'Yiyecek', N'Orta Boy Pizza', N'40', N'Ozel sos,vejeteryan alternatif,sucuklu,peynirli')
SET IDENTITY_INSERT [dbo].[Menu] OFF
USE [master]
GO
ALTER DATABASE [resDB] SET  READ_WRITE 
GO
