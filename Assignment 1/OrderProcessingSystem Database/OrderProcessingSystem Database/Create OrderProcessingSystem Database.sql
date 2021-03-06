USE [master]
GO
/****** Object:  Database [OrderProcessingSystem]    Script Date: 01/20/2006 04:33:21 ******/
CREATE DATABASE [OrderProcessingSystem] ON  PRIMARY 
( NAME = N'OrderProcessingSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\OrderProcessingSystem.mdf' , SIZE = 187392KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OrderProcessingSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\OrderProcessingSystem_log.ldf' , SIZE = 625792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE SQL_Latin1_General_CP1_CI_AS
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'OrderProcessingSystem', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OrderProcessingSystem].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [OrderProcessingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [OrderProcessingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OrderProcessingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OrderProcessingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OrderProcessingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OrderProcessingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OrderProcessingSystem] SET  READ_WRITE 
GO
ALTER DATABASE [OrderProcessingSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [OrderProcessingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [OrderProcessingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OrderProcessingSystem] SET DB_CHAINING OFF 