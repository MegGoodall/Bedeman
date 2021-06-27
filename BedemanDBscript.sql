USE [master]
GO
/****** Object:  Database [bedeman]    Script Date: 2021/06/27 20:51:04 ******/
CREATE DATABASE [bedeman]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bedeman', FILENAME = N'c:\databases\bedeman\bedeman.mdf' , SIZE = 8192KB , MAXSIZE = 20971520KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'bedeman_log', FILENAME = N'c:\databases\bedeman\bedeman_log.ldf' , SIZE = 8192KB , MAXSIZE = 1048576KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bedeman] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bedeman].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bedeman] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bedeman] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bedeman] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bedeman] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bedeman] SET ARITHABORT OFF 
GO
ALTER DATABASE [bedeman] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bedeman] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [bedeman] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bedeman] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bedeman] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bedeman] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bedeman] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bedeman] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bedeman] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bedeman] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bedeman] SET AUTO_UPDATE_STATISTICS_ASYNC ON 
GO
ALTER DATABASE [bedeman] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bedeman] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bedeman] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bedeman] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bedeman] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bedeman] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bedeman] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bedeman] SET  MULTI_USER 
GO
ALTER DATABASE [bedeman] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bedeman] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bedeman] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bedeman] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bedeman] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bedeman', N'ON'
GO
ALTER DATABASE [bedeman] SET QUERY_STORE = OFF
GO
USE [bedeman]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2021/06/27 20:51:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NOT NULL,
	[lastName] [varchar](20) NOT NULL,
	[contactNo] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bedeman] SET  READ_WRITE 
GO
