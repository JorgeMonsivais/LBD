USE [BAR]
GO
/****** Object:  UserDefinedFunction [dbo].[fnMultiplicar]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnMultiplicar](@valor1 float, @valor2 float)
returns float
as
begin
Return @valor1 * @valor2
end
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[id_empleado] [int] NOT NULL,
	[nombre_empleado] [varchar](max) NULL,
	[apellidopat] [varchar](max) NULL,
	[apellidomat] [varchar](max) NULL,
	[municipio] [varchar](max) NULL,
	[edad] [int] NULL,
	[telefono] [int] NULL,
	[correo] [varchar](max) NULL,
	[sueldo] [int] NULL,
	[id_puesto] [int] NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Reporte]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Reporte] AS (
SELECT e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat AS [Nombre Completo],
MAX(e.edad) as [Edad del Empleado]
FROM Empleado as e
LEFT JOIN Empleado ON e.id_empleado = e.edad
GROUP BY e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat)
GO
/****** Object:  View [dbo].[ReporteEmpleado]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteEmpleado] AS (
SELECT e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat AS [Nombre Completo],
MAX(e.edad) AS [Edad del Empleado], MAX(e.sueldo) AS [Sueldo del Empleado] 
FROM Empleado AS e
LEFT JOIN Empleado ON e.id_empleado = e.edad
GROUP BY e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat)
GO
/****** Object:  View [dbo].[ReporteBonificacion]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteBonificacion] AS (
SELECT e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat AS [Nombre Completo],
MAX(e.sueldo) AS [Sueldo del Empleado], MAX(e.sueldo*0.15 + e.sueldo) AS [Bonificacion de sueldo]
FROM Empleado AS e
LEFT JOIN Empleado ON e.id_empleado = (e.sueldo*0.15 )
GROUP BY e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat)
GO
/****** Object:  View [dbo].[ReporteISPT]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteISPT] AS (
SELECT e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat AS [Nombre Completo],
MAX(e.sueldo) AS [Sueldo del Empleado], MAX((e.sueldo*0.15 + e.sueldo) - 110) AS [Sueldo con Bonificacion menos ISPT]
FROM Empleado AS e
LEFT JOIN Empleado ON e.id_empleado = e.sueldo
GROUP BY e.nombre_empleado + ' ' + e.apellidopat + ' ' + e.apellidomat)
GO
/****** Object:  Table [dbo].[Almacen alimentos]    Script Date: 27/10/2018 2:12:52 ******/
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
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 27/10/2018 2:12:52 ******/
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
/****** Object:  View [dbo].[ReporteAlimentos]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReporteAlimentos] AS (
SELECT aa.nombre_alimento AS [Nombre del Alimento], ing.name_ingrediente AS [Nombre del ingrediente],
MAX(id_alimento) AS [Identificador del Alimento]
FROM [Almacen alimentos] AS aa
INNER JOIN Ingredientes AS ing  ON aa.id_alimento = ing.id_ingrediente
GROUP BY aa.nombre_alimento , ing.name_ingrediente)
GO
/****** Object:  Table [dbo].[Almacen Bebidas]    Script Date: 27/10/2018 2:12:52 ******/
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
/****** Object:  Table [dbo].[Tipo de puesto]    Script Date: 27/10/2018 2:12:52 ******/
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
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (6, N'Jorge ', N'Ruan', N'Monsivais', N'Guadalupe', 19, 894736485, N'jorge@gmail.com', 2000, 1)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (7, N'Carlos', N'Rodriguez', N'Zepeda', N'Juarez', 20, 849203948, N'carlos@gmail.com', 2000, 1)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (8, N'Ricardo', N'Martinez', N'Guadalupe', N'Guadalupe', 20, 839102931, N'ricardo@gmail.com', 2000, 1)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (9, N'Abigail', N'Trijillo', N'Rodriguez', N'Guadalupe', 19, 847391023, N'aby@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (10, N'Fernando', N'Garcia', N'Gonzalez', N'Apodaca', 20, 830928343, N'fer@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (11, N'Oziel', N'Gonzalez', N'Lopez', N'Apodaca', 18, 849323435, N'oziel@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (12, N'Karla', N'Alvarez', N'Sanchez', N'Apodaca', 19, 825982474, N'karla@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (13, N'Ximena', N'Diaz', N'Alonso', N'Guadalupe', 19, 823452464, N'xime@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (14, N'Alonso', N'Ruiz ', N'Rodriguez', N'Guadalupe', 20, 823425945, N'alonso@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (15, N'Sergio', N'Rubio ', N'Navarro', N'Apodaca', 19, 810923525, N'sergio@gmail.com', 1500, 2)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (16, N'Ailyn', N'Calvo', N'Prieto', N'Apodaca', 20, 819384255, N'ailyn@gmail.com', 3000, 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (17, N'Enrique', N'Iglesias', N'Serrano', N'Apodaca', 35, 873341345, N'enrique@gmail.com', 3000, 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (18, N'Maria', N'Dominguez', N'Gil', N'Guadalupe', 27, 873737345, N'maria@gmail.com', 3000, 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (19, N'Esmeralda', N'Muñoz', N'Vazquez', N'Guadalupe', 34, 899892485, N'esme@gmail.com', 3000, 3)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (20, N'Rosy', N'Blanco', N'Santos', N'Guadalupe', 45, 813848344, N'rosy@gmail.com', 1000, 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (21, N'Javier', N'Mendez', N'Gallego', N'Apodaca', 40, 813475131, N'javi@gmail.com', 1000, 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (22, N'Rocio', N'Lozano ', N'Molina', N'Apodaca', 35, 813419351, N'rocio@gmail.com', 1000, 4)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (23, N'Katya', N'Diez', N'Morales', N'Guadalupe', 18, 814131393, N'katya@gmail.com', 2500, 5)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (24, N'Norma', N'Delgado', N'Suarez', N'Apodaca', 18, 832254524, N'norma@gmail.com', 2500, 5)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (25, N'Samuel', N'Martinez', N'Ortiz', N'Apodaca', 20, 813413513, N'samu@gmail.com', 5000, 6)
GO
INSERT [dbo].[Empleado] ([id_empleado], [nombre_empleado], [apellidopat], [apellidomat], [municipio], [edad], [telefono], [correo], [sueldo], [id_puesto]) VALUES (26, N'Diego', N'Adame', N'Torres', N'Apodaca', 29, 823456493, N'diego@gmail.com', 2000, 2)
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
/****** Object:  StoredProcedure [dbo].[Inserccion_Registro]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Inserccion_Registro](
@id_empleado int,
@nombre_empleado varchar(max),
@apellidopat varchar(max),
@apellidomat varchar(max),
@municipio varchar(max),
@edad int,
@telefono int,
@correo varchar(max),
@sueldo int, 
@id_puesto int
)
as
begin
insert into Empleado (id_empleado,nombre_empleado,apellidopat,apellidomat,municipio,edad,telefono,correo,sueldo,id_puesto)
values (26, 'Diego', 'Adame', 'Torres', 'Apodaca', 29, 823456493, 'diego@gmail.com', 2000, 2 )
end
GO
/****** Object:  StoredProcedure [dbo].[VistaReporte]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[VistaReporte] (@edad int)
as
begin
select (nombre_empleado + ' ' + apellidopat + ' ' + apellidomat) AS [Nombre del empleado], edad AS [ Edad del Empleado]
from dbo.Empleado
where edad > @edad
end
GO
/****** Object:  StoredProcedure [dbo].[VistaReporteAlimentos]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[VistaReporteAlimentos] (@alimentos varchar(max))
as
begin
select nombre_alimento AS [Nombre del Alimento]
from dbo.[Almacen alimentos]
where nombre_alimento > @alimentos
end
GO
/****** Object:  StoredProcedure [dbo].[VistaReporteBonificacion]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[VistaReporteBonificacion] (@bonificacion int)
as
begin
select (nombre_empleado + ' ' + apellidopat + ' ' + apellidomat) AS [Nombre del empleado],sueldo AS [Sueldo del Empleado], (sueldo*0.15 + sueldo) AS [Sueldo del Empleado con Bonificacion]
from dbo.Empleado
where sueldo > @bonificacion
end
GO
/****** Object:  StoredProcedure [dbo].[VistaReporteEmpleado]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[VistaReporteEmpleado] (@edad int)
as
begin
select (nombre_empleado + ' ' + apellidopat + ' ' + apellidomat) AS [Nombre del empleado],sueldo AS [Sueldo del Empleado], edad AS [ Edad del Empleado] from dbo.Empleado
where edad > @edad
end
GO
/****** Object:  StoredProcedure [dbo].[VistaReporteISPT]    Script Date: 27/10/2018 2:12:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[VistaReporteISPT] (@ispt int)
as
begin
select (nombre_empleado + ' ' + apellidopat + ' ' + apellidomat) AS [Nombre del empleado],
sueldo AS [Sueldo del Empleado], ((sueldo*0.15 + sueldo)-110) AS [Sueldo con Bonificacion menos ISPT]
from dbo.Empleado
where sueldo > @ispt
end
GO

CREATE TRIGGER [dbo].[trigger_insert]
on [dbo].[Empleado]
instead of insert
as
begin
select *
	from inserted
	select *
	from deleted
end

CREATE TRIGGER [dbo].[trigger_update]
on [dbo].[Tipo de Puesto]
instead of update
as
begin
select *
	from inserted
	select *
	from deleted
end

ALTER TRIGGER [dbo].[trigger_insert]
on [dbo].[Empleado]
instead of delete
as
begin
select *
	from inserted
	select *
	from deleted
end