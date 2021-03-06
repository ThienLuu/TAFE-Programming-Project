USE [master]
GO
/****** Object:  Database [Tracking Employee Work Hours]    Script Date: 14/06/2018 8:21:51 PM ******/
--CREATE DATABASE [Tracking Employee Work Hours]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'Tracking Employee Work Hours', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.THIENLUUTAFE\MSSQL\DATA\Tracking Employee Work Hours.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'Tracking Employee Work Hours_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.THIENLUUTAFE\MSSQL\DATA\Tracking Employee Work Hours_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET COMPATIBILITY_LEVEL = 140
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [Tracking Employee Work Hours].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET ANSI_NULL_DEFAULT OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET ANSI_NULLS OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET ANSI_PADDING OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET ANSI_WARNINGS OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET ARITHABORT OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET AUTO_CLOSE OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET AUTO_SHRINK OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET AUTO_UPDATE_STATISTICS ON 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET CURSOR_DEFAULT  GLOBAL 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET CONCAT_NULL_YIELDS_NULL OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET NUMERIC_ROUNDABORT OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET QUOTED_IDENTIFIER OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET RECURSIVE_TRIGGERS OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET  DISABLE_BROKER 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET TRUSTWORTHY OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET PARAMETERIZATION SIMPLE 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET READ_COMMITTED_SNAPSHOT OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET HONOR_BROKER_PRIORITY OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET RECOVERY FULL 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET  MULTI_USER 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET PAGE_VERIFY CHECKSUM  
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET DB_CHAINING OFF 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET TARGET_RECOVERY_TIME = 60 SECONDS 
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET DELAYED_DURABILITY = DISABLED 
--GO
--EXEC sys.sp_db_vardecimal_storage_format N'Tracking Employee Work Hours', N'ON'
--GO
--ALTER DATABASE [Tracking Employee Work Hours] SET QUERY_STORE = OFF
--GO
--USE [Tracking Employee Work Hours]
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
--GO
--ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
--GO
--ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Tracking Employee Work Hours]
GO
/****** Object:  Table [dbo].[EmpHours]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpHours](
	[EmpHoursID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NOT NULL,
	[WorkDate] [date] NOT NULL,
	[Hours] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_EmpHours] PRIMARY KEY CLUSTERED 
(
	[EmpHoursID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](35) NOT NULL,
	[LastName] [varchar](35) NOT NULL,
	[Email] [varchar](75) NOT NULL,
	[DOB] [date] NOT NULL,
	[Phone] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmpHours] ON 

INSERT [dbo].[EmpHours] ([EmpHoursID], [EmpID], [WorkDate], [Hours]) VALUES (1, 3, CAST(N'2018-06-22' AS Date), CAST(5.00 AS Decimal(12, 2)))
INSERT [dbo].[EmpHours] ([EmpHoursID], [EmpID], [WorkDate], [Hours]) VALUES (2, 5, CAST(N'2018-05-03' AS Date), CAST(7.00 AS Decimal(12, 2)))
INSERT [dbo].[EmpHours] ([EmpHoursID], [EmpID], [WorkDate], [Hours]) VALUES (3, 1, CAST(N'2018-09-04' AS Date), CAST(4.00 AS Decimal(12, 2)))
INSERT [dbo].[EmpHours] ([EmpHoursID], [EmpID], [WorkDate], [Hours]) VALUES (4, 4, CAST(N'2018-09-09' AS Date), CAST(9.00 AS Decimal(12, 2)))
INSERT [dbo].[EmpHours] ([EmpHoursID], [EmpID], [WorkDate], [Hours]) VALUES (5, 4, CAST(N'2018-05-05' AS Date), CAST(5.00 AS Decimal(12, 2)))
SET IDENTITY_INSERT [dbo].[EmpHours] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (1, N'Thien', N'Luu', N'thien.luu@tafe.com.au', CAST(N'2000-01-01' AS Date), N'1212341234')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (2, N'John', N'Wick', N'john.wick@tafe.com.au', CAST(N'1970-01-01' AS Date), N'1234123412')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (3, N'Smith', N'John', N'smith.john@tafe.com.au', CAST(N'1989-03-03' AS Date), N'1238740952')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (4, N'Peter', N'Sham', N'peter.sham@tafe.com.au', CAST(N'1915-02-04' AS Date), N'0897124234')
INSERT [dbo].[Employees] ([EmpID], [FirstName], [LastName], [Email], [DOB], [Phone]) VALUES (5, N'Stan', N'Ly', N'stan.ly@tafe.com.au', CAST(N'1937-06-05' AS Date), N'6517826293')
SET IDENTITY_INSERT [dbo].[Employees] OFF
ALTER TABLE [dbo].[EmpHours]  WITH CHECK ADD  CONSTRAINT [FK_EmpHours_Employees] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employees] ([EmpID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmpHours] CHECK CONSTRAINT [FK_EmpHours_Employees]
GO
/****** Object:  StoredProcedure [dbo].[sp_EmpHours_InsertEmployeeHours]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Insert Employee Hours
-- =============================================
CREATE PROCEDURE [dbo].[sp_EmpHours_InsertEmployeeHours]
		@empID int,
		@workDate date,
		@hours decimal
AS
BEGIN
	INSERT INTO EmpHours
	VALUES (@empID, @workDate, @hours)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EmpHours_SelectEmployeeWorkDateAndHoursByID]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Select emplooyee work date and hours by ID
-- =============================================
CREATE PROCEDURE [dbo].[sp_EmpHours_SelectEmployeeWorkDateAndHoursByID]
		@empID int
AS
BEGIN
	SELECT WorkDate, Hours
	FROM EmpHours
	WHERE EmpID = @empID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_InsertEmployee]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Insert Employee
-- =============================================
CREATE PROCEDURE [dbo].[sp_Employees_InsertEmployee]
		@firstName varchar(20),
		@lastName varchar(20),
		@email varchar(50),
		@dob date,
		@phone varchar(10)
AS
BEGIN
	INSERT INTO Employees
	VALUES (@firstName, @lastName, @email, @dob, @phone)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_SelectAllEmployees]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Select All Employees
-- =============================================
CREATE PROCEDURE [dbo].[sp_Employees_SelectAllEmployees]

AS
BEGIN
	SELECT *
	FROM Employees	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_SelectEmployeeByEmail]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Select Emplooyee by Email
-- =============================================
CREATE PROCEDURE [dbo].[sp_Employees_SelectEmployeeByEmail]
		@email varchar(50)
AS
BEGIN
	SELECT *
	FROM Employees
	WHERE Email = @email
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_SelectEmployeeByID]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Select Emplooyee by ID
-- =============================================
CREATE PROCEDURE [dbo].[sp_Employees_SelectEmployeeByID]
		@empID int
AS
BEGIN
	SELECT *
	FROM Employees
	WHERE EmpID = @empID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees_UpdateEmployee]    Script Date: 14/06/2018 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thien
-- Create date: 21/05/2018
-- Description:	Update Employee
-- =============================================
CREATE PROCEDURE [dbo].[sp_Employees_UpdateEmployee]
		@empID int,
		@firstName varchar(20),
		@lastName varchar(20),
		@email varchar(50),
		@dob date,
		@phone varchar(10)
AS
BEGIN
	UPDATE Employees
	SET FirstName = @firstName,
	LastName = @lastName,
	Email = @email,
	DOB = @dob,
	Phone = @phone
	WHERE EmpID = @empID
END
GO
USE [master]
GO
ALTER DATABASE [Tracking Employee Work Hours] SET  READ_WRITE 
GO
