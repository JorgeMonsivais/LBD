﻿USE [BAR]
GO
/****** Object:  Table [dbo].[Almacen alimentos]    Script Date: 29/09/2018 2:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen alimentos](
	[id_alimento] [int] NOT NULL,
	[nombre_alimento] [varchar](50) NULL,
	[id_ingrediente] [int] NULL,
 CONSTRAINT [PK_Almacen alimentos] PRIMARY KEY CLUSTERED 
(
	[id_alimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Almacen Bebidas]    Script Date: 29/09/2018 2:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen Bebidas](
	[id_bebida] [int] NOT NULL,
	[nombre_bebida] [varchar](50) NULL,
	[tipo_bebida] [varchar](50) NULL,
	[id_ingrediente] [int] NULL,
 CONSTRAINT [PK_Almacen Bebidas] PRIMARY KEY CLUSTERED 
(
	[id_bebida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 29/09/2018 2:57:58 ******/
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
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 29/09/2018 2:57:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[id_ingrediente] [int] NOT NULL,
	[name_ingrediente] [varchar](max) NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo de puesto]    Script Date: 29/09/2018 2:57:58 ******/
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
INSERT [dbo].[Almacen alimentos] ([id_alimento], [nombre_alimento], [id_ingrediente]) VALUES (1213, N'Hamburguesa', 1213)
GO
INSERT [dbo].[Almacen alimentos] ([id_alimento], [nombre_alimento], [id_ingrediente]) VALUES (3434, N'Tacos de Carne asada', 3434)
GO
INSERT [dbo].[Almacen alimentos] ([id_alimento], [nombre_alimento], [id_ingrediente]) VALUES (4523, N'Burrito', 2432)
GO
INSERT [dbo].[Almacen alimentos] ([id_alimento], [nombre_alimento], [id_ingrediente]) VALUES (4645, N'Alitas', 4645)
GO
INSERT [dbo].[Almacen alimentos] ([id_alimento], [nombre_alimento], [id_ingrediente]) VALUES (6442, N'Nachos', 4521)
GO
INSERT [dbo].[Almacen alimentos] ([id_alimento], [nombre_alimento], [id_ingrediente]) VALUES (8294, N'Hot Dog', 3134)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (534, N'Whisky con cola', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (636, N'De la huerta', N'Sin alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (663, N'Destornillador sin alcohol', N'Sin Alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (763, N'Margarita de piña', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (875, N'Sex on the beach', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (879, N'Manhattan', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (2345, N'Piña colada', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (4234, N'Cola', N'Sin Alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (4532, N'Whiskey', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5232, N'Vodka con Jugo', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5243, N'Tequila', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5246, N'Julepe de menta
', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5356, N'Jack Daniels', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5634, N'Martini', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5635, N'Refresco', N'Sin alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (5646, N'Ginebra con Tónica', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (6083, N'Tequila sunrise
', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (6352, N'Agua de sabor natural', N'Sin alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (6456, N'Margarita', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (6758, N'Cerveza', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (6946, N'Caipirinha', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (7674, N'Mojito', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (7823, N'Ron', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (8302, N'Vampiros', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (8324, N'Clamato', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (9246, N'Cosmopolitan', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (12345, N'Agua', N'Sin Alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (42857, N'Sangría', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (45246, N'Agua de sabor mineral', N'Alcohol', 123)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (45384, N'Michelada', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (63578, N'Kalimotxo', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (72570, N'Agua de Valencia
', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (82495, N'Caipirinha brasileña', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (92320, N'Brandy', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (92847, N'Daiquiri de fresa', N'Alcohol', 7888)
GO
INSERT [dbo].[Almacen Bebidas] ([id_bebida], [nombre_bebida], [tipo_bebida], [id_ingrediente]) VALUES (945724, N'Cóctel San Francisco', N'Sin Alcohol', 123)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (6, N'Roberto Gomez', N'Juarez', N'robert@gmail.com', 34342345, 2, 1000)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (7, N'Giovani Torres', N'Guadalupe', N'gio@gmail.com', 83745634, 2, 1000)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (8, N'Adrian Martinez', N'Guadalupe', N'adrian@gmail.com', 73452356, 1, 1500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (9, N'Marcelo Martinez', N'Guadalupe', N'marcelo@gmail.com', 24545646, 2, 1000)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (10, N'Maria Juana', N'Guadalupe', N'maria@gmail.com', 24524524, 3, 2500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (11, N'Juan Sanchez', N'Apodaca', N'juan@gmail.com', 35356356, 3, 2500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (12, N'Carmen Gomez', N'Guadalupe', N'carmen@gmail.com', 63272647, 3, 2500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (13, N'Dolores Jimenez', N'Apodaca', N'dolores@gmail.com', 36345224, 3, 2500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (14, N'Jose Rodriguez', N'Guadalupe', N'jose@gmail.com', 25357353, 3, 2500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (15, N'Laura Romero', N'Guadalupe', N'laura@gmail.com', 24524522, 4, 800)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (16, N'Pablo Picazo', N'Guadalupe', N'pablo@gmail.com', 24524524, 4, 800)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (17, N'Raquel Cuenca', N'Apodaca', N'raquel@gmail.com', 74674676, 4, 800)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (18, N'Diego Rodenas', N'Apodaca', N'diego@gmail.com', 24535735, 1, 1500)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (19, N'Karla Cebrian', N'Guadalupe', N'karla@gmail.com', 35635634, 5, 2000)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [direccion], [correo_empleado], [telefono], [id_puesto], [sueldo]) VALUES (20, N'Ivan Requena', N'Guadalupe', N'ivan@gmail.com', 13574657, 6, 5000)
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (123, N'Sin Alcohol')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (1213, N'Pan,Carne de hamburguesa,Lechuga,Tomate,Mayonesa,Jamon,Queso amarillo,')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (2432, N'Tortilla de arina, carne asada,aguacate,queso')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (3134, N'Pan para Hot Dog, Salchicha, Aderezos al gusto')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (3434, N'Tortillla de maiz, Carne asada')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (4521, N'Nachos con queso, carne, frijoles')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (4645, N'Alitas de pollo')
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [name_ingrediente]) VALUES (7888, N'Con Alcohol')
GO
INSERT [dbo].[Tipo de puesto] ([id_puesto], [nombre_puesto]) VALUES (1, N'Barman')
GO
INSERT [dbo].[Tipo de puesto] ([id_puesto], [nombre_puesto]) VALUES (2, N'Meseros')
GO
INSERT [dbo].[Tipo de puesto] ([id_puesto], [nombre_puesto]) VALUES (3, N'Cocineros')
GO
INSERT [dbo].[Tipo de puesto] ([id_puesto], [nombre_puesto]) VALUES (4, N'Limpieza')
GO
INSERT [dbo].[Tipo de puesto] ([id_puesto], [nombre_puesto]) VALUES (5, N'Hoster')
GO
INSERT [dbo].[Tipo de puesto] ([id_puesto], [nombre_puesto]) VALUES (6, N'Gerente')
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

 delete from Empleado where nombre='1';
 delete from Empleado where nombre='2';
 delete from Empleado where nombre='3';
 delete from Empleado where nombre='4';
 delete from Empleado where nombre='5';
 
UPDATE Empleado SET nombre_empleado = 'Roberto Gomez'
UPDATE Empleado SET nombre_empleado = 'Giovani Torres'
UPDATE Empleado SET nombre_empleado = 'Adrian Martinez'
UPDATE Empleado SET nombre_empleado = 'Marcelo Martinez'
UPDATE Empleado SET nombre_empleado = 'Maria Juana'

UPDATE Empleado SET correo_empleado = 'roberto@gmail.com'
UPDATE Empleado SET correo_empleado = 'gio@gmail.com'
UPDATE Empleado SET correo_empleado = 'adrian@gmail.com'
UPDATE Empleado SET correo_empleado = 'marcelo@gmail.com'
UPDATE Empleado SET correo_empleado = 'maria@gmail.com'
