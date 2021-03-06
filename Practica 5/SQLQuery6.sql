USE [BAR]
GO
/****** Object:  Table [dbo].[Almacen alimentos]    Script Date: 09/10/2018 12:20:51 ******/
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
/****** Object:  Table [dbo].[Almacen Bebidas]    Script Date: 09/10/2018 12:20:52 ******/
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
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 09/10/2018 12:20:52 ******/
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
/****** Object:  Table [dbo].[Tipo de puesto]    Script Date: 09/10/2018 12:20:52 ******/
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

USE BAR
GO

SELECT emp.id_empleado as "Identificador del Empleado ",
emp.sueldo,
(emp.sueldo*0.15) as "Bonificacion del 15%"
from Empleado as emp

SELECT emp.id_empleado as "Identificador del Empleado ",
emp.sueldo,
(emp.sueldo-110) as "ISPT"
from Empleado as emp

SELECT ing.id_ingrediente as "Identificador del ingrediente"
from Ingredientes as ing

SELECT tp.id_puesto as "Identificador del puesto"
from [Tipo de puesto] as tp

SELECT aa.id_alimento as "Identificador de alimentos"
from [Almacen alimentos] as aa



SELECT emp.id_empleado as "Identificador del Empleado ",
emp.sueldo,
(emp.sueldo*0.15) as "Bonificacion del 15%",
tp.*
from Empleado as emp
full join [Tipo de puesto] as tp on emp.id_empleado = tp.id_puesto 

SELECT aa.id_alimento as "Identificador de alimentos",
ing.*
from [Almacen alimentos] as aa
inner join Ingredientes as ing on ing.id_ingrediente = aa.id_alimento

SELECT ab.id_bebida as "Identificador de bebidas",
ing.*
from [Almacen Bebidas] as ab
full join Ingredientes as ing on ing.id_ingrediente = ab.id_bebida

SELECT aa.nombre_alimento as "Identificador de alimentos",
ing.*
from [Almacen alimentos] as aa
left join Ingredientes as ing on ing.name_ingrediente = aa.nombre_alimento



SELECT emp.id_empleado as "Identificador del Empleado ",
emp.sueldo,
(emp.sueldo*0.15) as "Bonificacion del 15%"
from Empleado as emp
where (emp.sueldo*0.15) > 200
order by (emp.sueldo*0.15)

SELECT ing.id_ingrediente as "Identificador del ingrediente"
from Ingredientes as ing
where id_ingrediente >3000

SELECT tp.id_puesto as "Identificador del puesto"
from [Tipo de puesto] as tp
where id_puesto < 5

SELECT ab.id_bebida as "Identificador de bebidas"
from [Almacen Bebidas] as ab
where id_bebida >400

SELECT aa.id_alimento as "Identificador de alimentos"
from [Almacen alimentos] as aa
where id_alimento > 2000



SELECT emp.nombre_empleado, COUNT(emp.id_empleado) "Numero"
from Empleado as emp
group by emp.nombre_empleado

SELECT emp.nombre_empleado, MAX(emp.sueldo*0.15) "Numero"
from Empleado as emp
group by emp.nombre_empleado

SELECT emp.nombre_empleado, MIN(emp.sueldo*0.15) "Sueldo"
from Empleado as emp
group by emp.nombre_empleado
having MIN(emp.sueldo*0.15) < 300

SELECT Count(aa.id_alimento) "Identificador de alimentos"
from [Almacen alimentos] as aa
having COUNT(aa.id_alimento) > 4

SELECT COUNT(tp.id_puesto) "Identificador del puesto"
from [Tipo de puesto] as tp
having COUNT(tp.id_puesto) > 1



SELECT emp.nombre_empleado, MIN(emp.sueldo*0.15) "Sueldo"
from Empleado as emp
full join [Tipo de puesto] as tp on emp.id_empleado = tp.id_puesto 
group by emp.nombre_empleado

SELECT emp.id_empleado, COUNT(emp.id_empleado) "Numero"
from Empleado as emp
full join [Tipo de puesto] as tp on emp.id_empleado = tp.id_puesto
group by emp.id_empleado

SELECT aa.id_ingrediente as "Identificador de alimentos"
from [Almacen alimentos] as aa
inner join Ingredientes as ing on ing.id_ingrediente = aa.id_alimento
group by aa.id_ingrediente


select *
into #emp
from Empleado
drop table Empleado