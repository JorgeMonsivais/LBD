USE [BAR]
GO
/****** Object:  Table [dbo].[Almacen alimentos]    Script Date: 21/09/2018 10:11:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen alimentos](
	[id_alimento] [int] NOT NULL,
	[nombre_alimento] [varchar](50) NULL,
	[ingrediente_alimento] [varchar](max) NULL,
	[id_ingrediente] [int] NULL,
 CONSTRAINT [PK_Almacen alimentos] PRIMARY KEY CLUSTERED 
(
	[id_alimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacen Bebidas]    Script Date: 21/09/2018 10:11:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen Bebidas](
	[id_bebida] [int] NOT NULL,
	[nombre_bebida] [nchar](10) NULL,
	[ingrediente_bebidas] [nchar](10) NULL,
	[tipo_bebida] [nchar](10) NULL,
	[id_ingrediente] [int] NULL,
 CONSTRAINT [PK_Almacen Bebidas] PRIMARY KEY CLUSTERED 
(
	[id_bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 21/09/2018 10:11:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] NOT NULL,
	[nombre_empleado] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[correo_empleado] [varchar](50) NULL,
	[telefono] [int] NULL,
	[id_puesto] [int] NULL,
	[sueldo] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 21/09/2018 10:11:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[id_ingrediente] [int] NOT NULL,
	[name_ingrediente] [varchar](50) NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo de puesto]    Script Date: 21/09/2018 10:11:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo de puesto](
	[id_puesto] [int] NOT NULL,
	[nombre_puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo de puesto] PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Almacen alimentos]  WITH CHECK ADD  CONSTRAINT [FK_Almacen alimentos_Ingredientes] FOREIGN KEY([id_ingrediente])
REFERENCES [dbo].[Ingredientes] ([id_ingrediente])
GO
ALTER TABLE [dbo].[Almacen alimentos] CHECK CONSTRAINT [FK_Almacen alimentos_Ingredientes]
GO
ALTER TABLE [dbo].[Almacen Bebidas]  WITH CHECK ADD  CONSTRAINT [FK_Almacen Bebidas_Ingredientes] FOREIGN KEY([id_ingrediente])
REFERENCES [dbo].[Ingredientes] ([id_ingrediente])
GO
ALTER TABLE [dbo].[Almacen Bebidas] CHECK CONSTRAINT [FK_Almacen Bebidas_Ingredientes]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Tipo de puesto] FOREIGN KEY([id_puesto])
REFERENCES [dbo].[Tipo de puesto] ([id_puesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Tipo de puesto]
GO
