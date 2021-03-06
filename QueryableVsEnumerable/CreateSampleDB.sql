USE [master]
GO
/****** Object:  Database [EnumerableVsQueryable]    Script Date: 27/01/2020 11:11:07 ******/
CREATE DATABASE [EnumerableVsQueryable]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnumerableVsQueryable', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\EnumerableVsQueryable.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EnumerableVsQueryable_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\EnumerableVsQueryable_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EnumerableVsQueryable] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnumerableVsQueryable].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnumerableVsQueryable] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnumerableVsQueryable] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnumerableVsQueryable] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EnumerableVsQueryable] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnumerableVsQueryable] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EnumerableVsQueryable] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET RECOVERY FULL 
GO
ALTER DATABASE [EnumerableVsQueryable] SET  MULTI_USER 
GO
ALTER DATABASE [EnumerableVsQueryable] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnumerableVsQueryable] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnumerableVsQueryable] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnumerableVsQueryable] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EnumerableVsQueryable] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EnumerableVsQueryable', N'ON'
GO
ALTER DATABASE [EnumerableVsQueryable] SET QUERY_STORE = OFF
GO
USE [EnumerableVsQueryable]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [EnumerableVsQueryable]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/01/2020 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 27/01/2020 11:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200110162302_InitialCreate', N'3.1.0')
GO
SET IDENTITY_INSERT [dbo].[People] ON 
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (1, N'Thomas', 20)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (2, N'Richard', 28)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (3, N'Harriet', 31)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (4, N'Charlotte', 40)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (5, N'Barney', 22)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (6, N'Betty', 45)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (7, N'Fred', 55)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (8, N'Wilma', 62)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (9, N'George', 33)
GO
INSERT [dbo].[People] ([Id], [Name], [Age]) VALUES (10, N'Zippy', 31)
GO
SET IDENTITY_INSERT [dbo].[People] OFF
GO
USE [master]
GO
ALTER DATABASE [EnumerableVsQueryable] SET  READ_WRITE 
GO
