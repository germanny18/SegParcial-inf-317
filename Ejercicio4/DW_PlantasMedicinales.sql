USE [master]
GO
/****** Object:  Database [DW_PlantasMedicinales]    Script Date: 05/12/2022 12:50:07 ******/
CREATE DATABASE [DW_PlantasMedicinales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DW_PlantasMedicinales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DW_PlantasMedicinales.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DW_PlantasMedicinales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DW_PlantasMedicinales_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DW_PlantasMedicinales] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_PlantasMedicinales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DW_PlantasMedicinales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET ARITHABORT OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET RECOVERY FULL 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET  MULTI_USER 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DW_PlantasMedicinales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DW_PlantasMedicinales] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DW_PlantasMedicinales]
GO
/****** Object:  Table [dbo].[D_Cliente]    Script Date: 05/12/2022 12:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_Cliente](
	[id_cliente] [varchar](30) NOT NULL,
	[nombre] [varchar](30) NULL,
	[edad] [varchar](10) NULL,
	[estado_civil] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_Producto]    Script Date: 05/12/2022 12:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_Producto](
	[idProducto] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[familia] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_Sucursal]    Script Date: 05/12/2022 12:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_Sucursal](
	[idSucursal] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[region] [varchar](30) NULL,
	[comuna] [varchar](30) NULL,
	[ciudad] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_Tiempo]    Script Date: 05/12/2022 12:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_Tiempo](
	[idTiempo] [varchar](10) NOT NULL,
	[mes] [int] NULL,
	[age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_Vendedor]    Script Date: 05/12/2022 12:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_Vendedor](
	[idVendedor] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[tipoCapacitacion] [varchar](30) NULL,
	[horasCapacitacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[H_Venta]    Script Date: 05/12/2022 12:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[H_Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [varchar](10) NULL,
	[idSucursal] [varchar](10) NULL,
	[id_cliente] [varchar](30) NULL,
	[idVendedor] [varchar](10) NULL,
	[idTiempo] [varchar](10) NULL,
	[cantidadVenta] [int] NULL,
	[montoVenta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[D_Cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[D_Producto] ([idProducto])
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD FOREIGN KEY([idSucursal])
REFERENCES [dbo].[D_Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD FOREIGN KEY([idTiempo])
REFERENCES [dbo].[D_Tiempo] ([idTiempo])
GO
ALTER TABLE [dbo].[H_Venta]  WITH CHECK ADD FOREIGN KEY([idVendedor])
REFERENCES [dbo].[D_Vendedor] ([idVendedor])
GO
USE [master]
GO
ALTER DATABASE [DW_PlantasMedicinales] SET  READ_WRITE 
GO
