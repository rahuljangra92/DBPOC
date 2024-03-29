USE [master]
GO
/****** Object:  Database [Test]    Script Date: 2/9/2024 2:57:19 PM ******/
CREATE DATABASE [Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Test] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test] SET  MULTI_USER 
GO
ALTER DATABASE [Test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Test] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Test] SET QUERY_STORE = OFF
GO
USE [Test]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/9/2024 2:57:19 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_test](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NULL,
	[AddressLine] [varchar](500) NULL,
	[City] [varchar](100) NULL,
	[StateId] [int] NULL,
	[DateCreated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customerTemp]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customerTemp](
	[Name] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[StateId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gender] [char](10) NULL,
	[Age] [int] NULL,
	[Position] [nvarchar](50) NULL,
	[Salary] [int] NULL,
	[HireDate] [datetime] NULL,
	[Department_Id] [int] NULL,
	[Incentive_Id] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incentive]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incentive](
	[IncentiveId] [int] IDENTITY(1,1) NOT NULL,
	[IncentiveAmount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IncentiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestLogs]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestLogs](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[RequestUrl] [varchar](max) NULL,
	[RequestDateTime] [datetime] NULL,
	[SessionId] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[MoreThen10Minutes] [bit] NULL,
	[MoreThen20Minutes] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateCode] [varchar](100) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuperHeros]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperHeros](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Place] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SuperHeros] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserFirstName] [varchar](100) NULL,
	[UserLastName] [varchar](100) NULL,
	[UserAddress] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Datecreated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wms_div_division_hdr]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_div_division_hdr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wms_div_code] [int] NULL,
	[wms_division_name] [varchar](100) NULL,
	[wms_div_ou] [int] NULL,
	[wms_div_status] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wms_div_location_list_dtl]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wms_div_location_list_dtl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[wms_div_code] [int] NULL,
	[wms_location_name] [varchar](100) NULL,
	[wms_div_ou] [int] NULL,
	[wms_div_loc_code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetTrackData]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetTrackData]
as
SELECT SessionId as UserName,
    sum(case when Morethen10minutes = 1 then 1 else 0 end) AS IdleMoreThan10Mins,
    sum(case when Morethen20minutes = 1 then 1 else 0 end) AS IdleMoreThan20Mins,
	cast(CreatedDate as date) as DateCreated
FROM RequestLogs where cast(CreatedDate as date)=cast(getdate() as date)
GROUP BY SessionId,cast(CreatedDate as date)

GO
/****** Object:  StoredProcedure [dbo].[InsertUpdateRequestLogs]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[InsertUpdateRequestLogs]
(
@RequestUrl varchar(max),
@SessionId varchar(max),
@UpdatedDateTime datetime
)
as
if exists(select top 1 * from RequestLogs where SessionId=@SessionId 
and cast(CreatedDate as date)=cast(getdate() as date)
and RequestUrl=@RequestUrl)
Begin
	Update RequestLogs set RequestDateTime=@UpdatedDateTime, RequestUrl=@RequestUrl
	where SessionId=@SessionId and cast(CreatedDate as date)=cast(getdate() as date)
	 and RequestUrl=@RequestUrl
End
else
begin
	Insert into RequestLogs values(@RequestUrl,getdate(),@SessionId,@UpdatedDateTime)
end


GO
/****** Object:  StoredProcedure [dbo].[InsertUserActivity]    Script Date: 2/9/2024 2:57:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertUserActivity]
(
@userName varchar(100),
@requestUrl varchar(max)
)
as
declare @oldRequestDateTime as datetime
declare @timeDiff as int
if exists(select top 1 RequestDateTime from RequestLogs where RequestUrl=@requestUrl and SessionId=@userName and cast(CreatedDate as date)=cast(getdate() as date))
Begin
	set @oldRequestDateTime = (select top 1 RequestDateTime from RequestLogs where RequestUrl=@requestUrl and SessionId=@userName and cast(CreatedDate as date)=cast(getdate() as date) order by	CreatedDate desc)
	set @timeDiff=(select DATEDIFF(MINUTE,@oldRequestDateTime,getdate()))
	if(@timeDiff>10 And @timeDiff<20)
		Begin
			Insert into RequestLogs values(@requestUrl,getdate(),@userName,getdate(),1,0)
		End 
	Else if(@timeDiff>20)
		Begin
			Insert into RequestLogs values(@requestUrl,getdate(),@userName,getdate(),0,1)
		End
	Else
		Begin
			Insert into RequestLogs values(@requestUrl,getdate(),@userName,getdate(),0,0)
		End
End
Else
Begin
	Insert into RequestLogs values(@requestUrl,getdate(),@userName,getdate(),0,0)
End
GO
USE [master]
GO
ALTER DATABASE [Test] SET  READ_WRITE 
GO
