USE [master]
GO
/****** Object:  Database [4_IS_1_Ermolaev_Avtoprokat]    Script Date: 16.04.2022 13:12:00 ******/
CREATE DATABASE [4_IS_1_Ermolaev_Avtoprokat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'4_IS_1_Ermmolaev_Avtoprokat', FILENAME = N'D:\MSSQL\4_IS_1_Ermmolaev_Avtoprokat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'4_IS_1_Ermmolaev_Avtoprokat_log', FILENAME = N'D:\MSSQL\4_IS_1_Ermmolaev_Avtoprokat_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [4_IS_1_Ermolaev_Avtoprokat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ARITHABORT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET  MULTI_USER 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET QUERY_STORE = OFF
GO
USE [4_IS_1_Ermolaev_Avtoprokat]
GO
/****** Object:  Table [dbo].[car]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[car](
	[car_id] [int] IDENTITY(30000,1) NOT NULL,
	[model_id] [int] NULL,
	[year_issue] [int] NULL,
	[price] [decimal](15, 2) NULL,
 CONSTRAINT [PK_car] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount](
	[disc_id] [int] IDENTITY(1000,1) NOT NULL,
	[disc_percent] [decimal](2, 2) NULL,
	[disc_condition] [decimal](15, 2) NULL,
 CONSTRAINT [PK_discount] PRIMARY KEY CLUSTERED 
(
	[disc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[make_car]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[make_car](
	[make_id] [int] IDENTITY(10000,1) NOT NULL,
	[make_name] [varchar](25) NULL,
 CONSTRAINT [PK_make_car] PRIMARY KEY CLUSTERED 
(
	[make_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_car]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_car](
	[model_id] [int] IDENTITY(20000,1) NOT NULL,
	[make_id] [int] NULL,
	[model_name] [varchar](50) NULL,
 CONSTRAINT [PK_model_car] PRIMARY KEY CLUSTERED 
(
	[model_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registration_plates]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registration_plates](
	[reg_id] [int] IDENTITY(300000,1) NOT NULL,
	[car_id] [int] NULL,
	[reg_plates] [varchar](10) NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_registration_plates] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rental_car]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rental_car](
	[rental_id] [int] IDENTITY(200000,1) NOT NULL,
	[renter_id] [int] NULL,
	[reg_id] [int] NULL,
	[pickup_date] [date] NULL,
	[dropoff_date] [date] NULL,
	[disc_id] [int] NULL,
	[amount] [decimal](15, 2) NULL,
 CONSTRAINT [PK_rental_car] PRIMARY KEY CLUSTERED 
(
	[rental_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renter]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renter](
	[renter_id] [int] IDENTITY(100000,1) NOT NULL,
	[first_name] [varchar](25) NULL,
	[last_name] [varchar](25) NULL,
	[middle_name] [varchar](25) NULL,
	[license_num] [bigint] NULL,
	[phone] [bigint] NULL,
	[res_address] [varchar](200) NULL,
 CONSTRAINT [PK_renter] PRIMARY KEY CLUSTERED 
(
	[renter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 16.04.2022 13:12:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[status] [int] IDENTITY(400,1) NOT NULL,
	[status_name] [varchar](20) NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[car] ON 

INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (10000, 20000, 2001, CAST(10.00 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30001, 20002, 2011, CAST(13.00 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30002, 20004, 2014, CAST(14.20 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30003, 20005, 2010, CAST(10.70 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30004, 20005, 2020, CAST(13.10 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30005, 20007, 2017, CAST(15.28 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30006, 20008, 1999, CAST(9.82 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30007, 20012, 2004, CAST(11.30 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30008, 20013, 2016, CAST(13.80 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30009, 20013, 2018, CAST(14.58 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30010, 20014, 2006, CAST(15.90 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30011, 20014, 2002, CAST(15.08 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30012, 20019, 2014, CAST(14.20 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30014, 20021, 2017, CAST(14.00 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30015, 20021, 2021, CAST(15.52 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30016, 20028, 2008, CAST(13.31 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30017, 20033, 1996, CAST(9.18 AS Decimal(15, 2)))
INSERT [dbo].[car] ([car_id], [model_id], [year_issue], [price]) VALUES (30018, 20036, 2021, CAST(17.01 AS Decimal(15, 2)))
SET IDENTITY_INSERT [dbo].[car] OFF
GO
SET IDENTITY_INSERT [dbo].[discount] ON 

INSERT [dbo].[discount] ([disc_id], [disc_percent], [disc_condition]) VALUES (1000, CAST(0.05 AS Decimal(2, 2)), CAST(10000.00 AS Decimal(15, 2)))
INSERT [dbo].[discount] ([disc_id], [disc_percent], [disc_condition]) VALUES (1001, CAST(0.10 AS Decimal(2, 2)), CAST(30000.00 AS Decimal(15, 2)))
INSERT [dbo].[discount] ([disc_id], [disc_percent], [disc_condition]) VALUES (1002, CAST(0.20 AS Decimal(2, 2)), CAST(50000.00 AS Decimal(15, 2)))
SET IDENTITY_INSERT [dbo].[discount] OFF
GO
SET IDENTITY_INSERT [dbo].[make_car] ON 

INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10000, N'Acura
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10001, N'Alfa Romeo
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10002, N'Aston Martin
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10003, N'Audi
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10004, N'Bentley
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10005, N'BMW
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10006, N'Brilliance
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10007, N'Bugatti
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10008, N'Buick
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10009, N'BYD
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10010, N'Cadillac
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10011, N'Changan
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10012, N'Chery
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10013, N'Chevrolet
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10014, N'Chrysler
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10015, N'Citroen
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10016, N'Dacia
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10017, N'Daewoo
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10018, N'Daihatsu
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10019, N'Datsun
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10020, N'Dodge
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10021, N'Dongfeng
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10022, N'FAW
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10023, N'Ferrari
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10024, N'Fiat
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10025, N'Fisker
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10026, N'Ford
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10027, N'Foton
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10028, N'GAC
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10029, N'GAZ
')
INSERT [dbo].[make_car] ([make_id], [make_name]) VALUES (10030, N'Geely
')
SET IDENTITY_INSERT [dbo].[make_car] OFF
GO
SET IDENTITY_INSERT [dbo].[model_car] ON 

INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20000, 10000, N'CDX')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20002, 10000, N'CL
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20004, 10000, N'EL
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20005, 10000, N'ILX
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20007, 10000, N'Integra
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20008, 10001, N'146
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20012, 10001, N'147 GTA
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20013, 10001, N'147')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20014, 10002, N'Cygnet')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20015, 10002, N'V12 Vanquish')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20016, 10002, N'V12 Vantage')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20017, 10003, N'A1')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20019, 10003, N'A2')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20020, 10003, N'A3')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20021, 10003, N'A4
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20022, 10003, N'A4 Allroad Quattro
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20023, 10004, N'Azure
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20025, 10004, N'Continental Flying Spur
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20027, 10004, N'Mulsanne
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20028, 10005, N'1 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20030, 10005, N'2 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20031, 10005, N'3 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20032, 10005, N'4 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20033, 10005, N'5 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20034, 10005, N'5 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20035, 10005, N'7 series
')
INSERT [dbo].[model_car] ([model_id], [make_id], [model_name]) VALUES (20036, 10005, N'8 series
')
SET IDENTITY_INSERT [dbo].[model_car] OFF
GO
SET IDENTITY_INSERT [dbo].[registration_plates] ON 

INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300000, 30001, N'С065МК', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300003, 30002, N'Н176ЕР', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300006, 30002, N'Т866МА', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300007, 30003, N'Х777ХХ', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300009, 30004, N'П000УК', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300010, 30004, N'С769РУ', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300011, 30005, N'О101ОК', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300012, 30005, N'С888ЕХ', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300013, 30006, N'А007АА', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300014, 30007, N'А222АА', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300015, 30010, N'Н969НН', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300016, 30012, N'Х000ОР', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300018, 30014, N'В009ВВ', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300019, 30016, N'У700ММ', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300020, 30018, N'Х202УР', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300021, 30018, N'А117УЕ', NULL)
INSERT [dbo].[registration_plates] ([reg_id], [car_id], [reg_plates], [status_id]) VALUES (300022, NULL, N'92139', NULL)
SET IDENTITY_INSERT [dbo].[registration_plates] OFF
GO
SET IDENTITY_INSERT [dbo].[rental_car] ON 

INSERT [dbo].[rental_car] ([rental_id], [renter_id], [reg_id], [pickup_date], [dropoff_date], [disc_id], [amount]) VALUES (200000, 100000, 300000, CAST(N'2020-09-16' AS Date), CAST(N'2020-10-30' AS Date), 1000, CAST(10000.00 AS Decimal(15, 2)))
INSERT [dbo].[rental_car] ([rental_id], [renter_id], [reg_id], [pickup_date], [dropoff_date], [disc_id], [amount]) VALUES (200001, 100003, 300003, CAST(N'2020-10-26' AS Date), CAST(N'2020-10-12' AS Date), 1000, CAST(10000.00 AS Decimal(15, 2)))
INSERT [dbo].[rental_car] ([rental_id], [renter_id], [reg_id], [pickup_date], [dropoff_date], [disc_id], [amount]) VALUES (200002, 100003, 300006, CAST(N'2020-11-04' AS Date), CAST(N'2020-10-15' AS Date), 1000, CAST(10000.00 AS Decimal(15, 2)))
INSERT [dbo].[rental_car] ([rental_id], [renter_id], [reg_id], [pickup_date], [dropoff_date], [disc_id], [amount]) VALUES (200003, 100007, 300018, CAST(N'2020-11-15' AS Date), CAST(N'2020-11-25' AS Date), 1000, CAST(10000.00 AS Decimal(15, 2)))
SET IDENTITY_INSERT [dbo].[rental_car] OFF
GO
SET IDENTITY_INSERT [dbo].[renter] ON 

INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100000, N'Дмитрий', N'Анатольевич', N'Соколов', 1234567898, 88005553435, N'Рыбинск, ул. Максима Горького, 1, 23')
INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100003, N'Олеся', N'Васильевна', N'Бахарева', 7659174592, 89546823852, N'Рыбинск, ул. Ухтомского, 62, 18')
INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100005, N'Дарья', N'Владимировная', N'Маркова', 3759275199, 86893435811, N'Рыбинск, ул. Расплётина, 47')
INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100007, N'Марк', N'Владиславович', N'Тереньтьев', 3487242221, 86124483391, N'Рыбинск, ул. Блюхера, 11, 20')
INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100008, N'София', N'Станиславовна', N'Петровская', 8842511452, 89205532956, N'Рыбинск, ул. Куйбышева, 62, 51')
INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100009, N'Игорь', N'Дмитриевич', N'Щербаков', 8422855146, 86521125535, N'Рыбинск, ул. Куйбышева, 88, 49')
INSERT [dbo].[renter] ([renter_id], [first_name], [last_name], [middle_name], [license_num], [phone], [res_address]) VALUES (100010, N'Виктория', N'Дмитриевная', N'Степанова', 3455665114, 89106084442, N'Рыбинск, ул. Крестовая, 21, 7')
SET IDENTITY_INSERT [dbo].[renter] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([status], [status_name]) VALUES (400, N'-')
INSERT [dbo].[status] ([status], [status_name]) VALUES (401, N'+')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
ALTER TABLE [dbo].[car]  WITH CHECK ADD  CONSTRAINT [FK_car_model_car] FOREIGN KEY([model_id])
REFERENCES [dbo].[model_car] ([model_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[car] CHECK CONSTRAINT [FK_car_model_car]
GO
ALTER TABLE [dbo].[model_car]  WITH CHECK ADD  CONSTRAINT [FK_model_car_make_car] FOREIGN KEY([make_id])
REFERENCES [dbo].[make_car] ([make_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[model_car] CHECK CONSTRAINT [FK_model_car_make_car]
GO
ALTER TABLE [dbo].[registration_plates]  WITH CHECK ADD  CONSTRAINT [FK_registration_plates_car] FOREIGN KEY([car_id])
REFERENCES [dbo].[car] ([car_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[registration_plates] CHECK CONSTRAINT [FK_registration_plates_car]
GO
ALTER TABLE [dbo].[registration_plates]  WITH CHECK ADD  CONSTRAINT [FK_registration_plates_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[status] ([status])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[registration_plates] CHECK CONSTRAINT [FK_registration_plates_status]
GO
ALTER TABLE [dbo].[rental_car]  WITH CHECK ADD  CONSTRAINT [FK_rental_car_discount] FOREIGN KEY([disc_id])
REFERENCES [dbo].[discount] ([disc_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[rental_car] CHECK CONSTRAINT [FK_rental_car_discount]
GO
ALTER TABLE [dbo].[rental_car]  WITH CHECK ADD  CONSTRAINT [FK_rental_car_registration_plates] FOREIGN KEY([reg_id])
REFERENCES [dbo].[registration_plates] ([reg_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[rental_car] CHECK CONSTRAINT [FK_rental_car_registration_plates]
GO
ALTER TABLE [dbo].[rental_car]  WITH CHECK ADD  CONSTRAINT [FK_rental_car_renter] FOREIGN KEY([renter_id])
REFERENCES [dbo].[renter] ([renter_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[rental_car] CHECK CONSTRAINT [FK_rental_car_renter]
GO
USE [master]
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET  READ_WRITE 
GO
