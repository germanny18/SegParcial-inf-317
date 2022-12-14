USE [master]
GO
/****** Object:  Database [BDPlantasMedicinales]    Script Date: 05/12/2022 12:45:49 ******/
CREATE DATABASE [BDPlantasMedicinales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDPlantasMedicinales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDPlantasMedicinales.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDPlantasMedicinales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BDPlantasMedicinales_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDPlantasMedicinales] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDPlantasMedicinales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDPlantasMedicinales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BDPlantasMedicinales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDPlantasMedicinales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDPlantasMedicinales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDPlantasMedicinales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDPlantasMedicinales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET RECOVERY FULL 
GO
ALTER DATABASE [BDPlantasMedicinales] SET  MULTI_USER 
GO
ALTER DATABASE [BDPlantasMedicinales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDPlantasMedicinales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDPlantasMedicinales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDPlantasMedicinales] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BDPlantasMedicinales]
GO
/****** Object:  Table [dbo].[articulo]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[articulo](
	[codProducto] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[familia] [varchar](30) NULL,
	[precioUnitario] [int] NULL,
	[costoUnitario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[id_cliente] [varchar](30) NOT NULL,
	[nombre] [varchar](30) NULL,
	[apellido] [varchar](30) NULL,
	[edad] [varchar](10) NULL,
	[estado_civil] [varchar](30) NULL,
	[residencia] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comuna]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comuna](
	[idcomuna] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[idProvincia] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcomuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[documento] [varchar](10) NULL,
	[codigoProducto] [varchar](10) NULL,
	[precioUnitario] [int] NULL,
	[cantidad] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provincia](
	[idProvincia] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[idRegion] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[region]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[idRegion] [varchar](10) NOT NULL,
	[region] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sucursal](
	[idSucursal] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[idComuna] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vendedores]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vendedores](
	[idVendedor] [varchar](10) NOT NULL,
	[nombre] [varchar](30) NULL,
	[apellido] [varchar](30) NULL,
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
/****** Object:  Table [dbo].[ventas]    Script Date: 05/12/2022 12:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ventas](
	[documento] [varchar](10) NOT NULL,
	[fecha] [varchar](30) NULL,
	[idCliente] [varchar](30) NULL,
	[tipoDocumento] [varchar](10) NULL,
	[idVendedor] [varchar](10) NULL,
	[totalNeto] [int] NULL,
	[impuesto] [int] NULL,
	[totalDocumento] [int] NULL,
	[idSucursal] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a1', N'Aquilea', N'Asteraceae', 10, 6)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a10', N'Sen', N'Leguminosas', 7, 4)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a11', N'Centella', N'Apiaceae', 25, 14)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a12', N'Manzanilla', N'Compositae', 9, 5)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a2', N'Adonis', N'Ranunculaceae', 16, 9)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a3', N'Castañodeindias', N'Hippocastanaceae', 25, 14)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a4', N'Ágave', N'Agavaceae', 19, 11)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a5', N'Aloe', N'Liliaceae', 34, 20)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a6', N'Visnaga', N'Umbelliferae', 24, 14)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a7', N'Absenta', N'Asteraceae', 20, 11)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a8', N'Belladona', N'Solanaceae', 27, 16)
INSERT [dbo].[articulo] ([codProducto], [nombre], [familia], [precioUnitario], [costoUnitario]) VALUES (N'a9', N'Té', N'Theaceae', 22, 13)
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli1', N'Diego', N'Cari', N'29', N'soltero', N'Quillota')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli10', N'Sandra', N'Rodriguez', N'27', N'soltera', N'Miraflores')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli2', N'Franz', N'Ticona', N'35', N'cazado', N'Miraflores')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli3', N'Roberto', N'Lopez', N'20', N'soltero', N'Miraflores')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli4', N'Omar', N'Aguilar', N'23', N'soltero', N'San Pedro')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli5', N'Jhoselin', N'Torrez', N'38', N'soltera', N'Miraflores')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli6', N'Carlos', N'Lopez', N'24', N'soltero', N'San Pedro')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli7', N'Rubi', N'Perez', N'23', N'soltera', N'San Pedro')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli8', N'Erick', N'Sarmiento', N'40', N'divorciado', N'Villa Salome')
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli9', N'Diego', N'Espinoza', N'28', N'soltero', N'Villa Salome')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'100', N'Iquique', N'5')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'101', N'Alto Hospicio', N'2')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'102', N'Copiapo', N'1')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'103', N'Tocopilla', N'1')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'104', N'Huasco', N'2')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'105', N'La Serena', N'3')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'106', N'Vicuña', N'3')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'107', N'La Higuera', N'4')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'108', N'Valparaiso', N'6')
INSERT [dbo].[comuna] ([idcomuna], [nombre], [idProvincia]) VALUES (N'109', N'Calama', N'7')
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac1', N'a1', 10, 3, 30)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac2', N'a1', 10, 2, 20)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac3', N'a2', 16, 3, 48)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac4', N'a9', 22, 5, 110)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac5', N'a2', 10, 3, 30)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac6', N'a7', 20, 2, 40)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac7', N'a6', 24, 3, 72)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac8', N'a9', 22, 1, 22)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac9', N'a7', 20, 3, 60)
INSERT [dbo].[detalle_venta] ([documento], [codigoProducto], [precioUnitario], [cantidad], [total]) VALUES (N'fac10', N'a2', 16, 2, 32)
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'1', N'Iquique', N'1')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'10', N'Valparaiso', N'5')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'2', N'Antofagasta', N'2')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'3', N'El Loa', N'2')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'4', N'Tocopilla', N'2')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'5', N'Copiapo', N'3')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'6', N'Huasco', N'3')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'7', N'Elqui', N'3')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'8', N'Choapa', N'1')
INSERT [dbo].[provincia] ([idProvincia], [nombre], [idRegion]) VALUES (N'9', N'Limari', N'5')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'1', N'Tarapaca')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'10', N'La Araucania')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'2', N'Antofagasta')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'3', N'Atacam')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'4', N'Coquimbo')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'5', N'Valparaiso')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'6', N'Los Lagos')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'7', N'Los Rios')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'8', N'Arica')
INSERT [dbo].[region] ([idRegion], [region]) VALUES (N'9', N'Aysen')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'1', N'Sucursal Iquique', N'100')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'10', N'Sucursal Santiago', N'109')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'2', N'Sucursal Arica', N'101')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'3', N'Sucursal Antofagasta', N'102')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'4', N'Sucursal La Serena', N'103')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'5', N'Sucursal Valparaiso', N'104')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'6', N'Sucursal Quintero', N'105')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'7', N'Sucursal Viña del Mar', N'106')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'8', N'Sucursal Villa Alemana', N'107')
INSERT [dbo].[sucursal] ([idSucursal], [nombre], [idComuna]) VALUES (N'9', N'Sucursal Chillan', N'108')
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'1', N'Damian', N'Escobar', N'capacitacion semipresencial', 10)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'10', N'Damian', N'Escobar', N'capacitacion online', 56)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'2', N'Julieta', N'Jimenez', N'capacitacion online', 90)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'3', N'Leon', N'Riquelme', N'capacitacion semipresencial', 10)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'4', N'Maite', N'Guzman', N'capacitacion en Sucursal', 32)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'5', N'Laura', N'Rivera', N'Autodidacta', 13)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'6', N'Lucia', N'Bustamante', N'capacitacion semipresencial', 72)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'7', N'Mayra', N'Cárdenas', N'capacitacion semipresencial', 55)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'8', N'Damian', N'Bustamante', N'capacitacion en sucursal', 9)
INSERT [dbo].[vendedores] ([idVendedor], [nombre], [apellido], [tipoCapacitacion], [horasCapacitacion]) VALUES (N'9', N'Camilo', N'Yañez', N'capacitacion semipresencial', 10)
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac1', N'10/10/2019', N'cli1', N'factura', N'3', 142, 27, 169, N'4')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac10', N'17/10/2019', N'cli4', N'factura', N'9', 402, 21, 423, N'4')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac11', N'14/12/2019', N'cli5', N'factura', N'4', 308, 27, 335, N'9')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac2', N'12/04/2019', N'cli3', N'factura', N'1', 84, 16, 100, N'4')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac3', N'10/11/2019', N'cli1', N'factura', N'3', 50, 9, 59, N'4')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac4', N'08/10/2019', N'cli2', N'factura', N'4', 200, 10, 210, N'5')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac5', N'11/10/2020', N'cli2', N'factura', N'3', 500, 17, 517, N'5')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac6', N'10/10/2019', N'cli8', N'factura', N'4', 309, 12, 321, N'4')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac7', N'10/10/2019', N'cli9', N'factura', N'3', 142, 27, 169, N'4')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac8', N'20/02/2018', N'cli1', N'factura', N'7', 201, 18, 219, N'7')
INSERT [dbo].[ventas] ([documento], [fecha], [idCliente], [tipoDocumento], [idVendedor], [totalNeto], [impuesto], [totalDocumento], [idSucursal]) VALUES (N'fac9', N'04/06/2018', N'cli2', N'factura', N'3', 300, 12, 312, N'8')
ALTER TABLE [dbo].[comuna]  WITH CHECK ADD FOREIGN KEY([idProvincia])
REFERENCES [dbo].[provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([codigoProducto])
REFERENCES [dbo].[articulo] ([codProducto])
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD FOREIGN KEY([documento])
REFERENCES [dbo].[ventas] ([documento])
GO
ALTER TABLE [dbo].[provincia]  WITH CHECK ADD FOREIGN KEY([idRegion])
REFERENCES [dbo].[region] ([idRegion])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([idComuna])
REFERENCES [dbo].[comuna] ([idcomuna])
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([idVendedor])
REFERENCES [dbo].[vendedores] ([idVendedor])
GO
USE [master]
GO
ALTER DATABASE [BDPlantasMedicinales] SET  READ_WRITE 
GO
