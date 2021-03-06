USE [master]
GO
/****** Object:  Database [ProjectDB ]    Script Date: 2018/04/27 6:03:23 PM ******/
CREATE DATABASE [ProjectDB ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLEXPRESS\MSSQL\DATA\ProjectDB .mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectDB _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLEXPRESS\MSSQL\DATA\ProjectDB _log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectDB ] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectDB ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectDB ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectDB ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectDB ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectDB ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectDB ] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectDB ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectDB ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectDB ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectDB ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectDB ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectDB ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectDB ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectDB ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectDB ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectDB ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectDB ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectDB ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectDB ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectDB ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectDB ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectDB ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectDB ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectDB ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectDB ] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectDB ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectDB ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectDB ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectDB ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectDB ] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectDB ]
GO
/****** Object:  Table [dbo].[ClientType]    Script Date: 2018/04/27 6:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientType](
	[ClientTypeID] [int] NOT NULL,
	[ClientType] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameGenre]    Script Date: 2018/04/27 6:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameGenre](
	[GameGenreID] [int] NOT NULL,
	[GameGenre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GameGenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Games]    Script Date: 2018/04/27 6:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Games](
	[GameID] [int] NOT NULL,
	[GameName] [varchar](50) NOT NULL,
	[GameReleaseDate] [date] NOT NULL,
	[GamePlatformCount] [varchar](50) NOT NULL,
	[GamePlatformName] [varchar](50) NOT NULL,
	[GameGenreID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 2018/04/27 6:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subscription](
	[SubscriptionID] [int] NOT NULL,
	[Subscription] [varchar](50) NOT NULL,
	[SubscriptionLength] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubscriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD FOREIGN KEY([GameGenreID])
REFERENCES [dbo].[GameGenre] ([GameGenreID])
GO
USE [master]
GO
ALTER DATABASE [ProjectDB ] SET  READ_WRITE 
GO

use [ProjectDB ]
go

--Inserts for the GameGenre table--
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('1','Action')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('2','Role-playing')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('3','Survival')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('4','Stategy')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('5','Sport')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('6','Racing')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('7','Simulation')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('8','Fighting')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('9','Adventure')
INSERT INTO [dbo].[GameGenre] ([GameGenreID],[GameGenre])
     VALUES('10','Horror')


--Inserts for the ClientType table--
INSERT INTO [dbo].[ClientType] ([ClientTypeID],[ClientType])
     VALUES('1','Regular')

INSERT INTO [dbo].[ClientType] ([ClientTypeID],[ClientType])
     VALUES('2','Frequent')


--Inserts for the Subscription--
INSERT INTO [dbo].[Subscription] ([SubscriptionID],[Subscription],[SubscriptionLength])
     VALUES('1','Xbox Live Gold',365)

INSERT INTO [dbo].[Subscription] ([SubscriptionID],[Subscription],[SubscriptionLength])
     VALUES('2','Xbox Live 3 months',93)

INSERT INTO [dbo].[Subscription] ([SubscriptionID],[Subscription],[SubscriptionLength])
     VALUES('3','Playstation Network',365)

INSERT INTO [dbo].[Subscription] ([SubscriptionID],[Subscription],[SubscriptionLength])
     VALUES('4','Playstaion Network 3 months',93)

--INSERT INTO [dbo].[Games] ([GameID],[GameName],[GameReleaseDate],[GamePurchaseProfit],[GamePlatform],[GamePlatformName],[GameGenreID])
--     VALUES('1','Gear of War 1',2006/11/07,)

--drop table Games
