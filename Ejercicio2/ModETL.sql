USE [ModETL]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 05/12/2022 1:33:19 ******/
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
	[residencia] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
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
INSERT [dbo].[clientes] ([id_cliente], [nombre], [apellido], [edad], [estado_civil], [residencia]) VALUES (N'cli21', N' Ana', N' Wiliams', N' 23', N' soltera', N' Miraflores')
