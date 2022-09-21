create database floreria

use floreria 

create table proveedor (
IdProv int primary key not null,
Nombre_Proveedor varchar (30), 
Correo varchar (30),
Telefono int,
Direccion varchar (35))

create table productos (
IdProd int primary key not null,
Nombre varchar (30),
Precio money,
Categoria varchar (30),
Existencia int,
IdProv int foreign key references proveedor(IdProv))

create table empleado (
IdEmp int primary key not null,
Nombre varchar (30),
Apellido varchar (30),
Edad int,
Fecha_Ingreso datetime,
Telefono int,
Direccion varchar (35),
Correo varchar (35),
Contraseña varchar (30))

create table compras (
IdCompras int primary key not null,
IdProv int foreign key references proveedor(IdProv),
IdProd int foreign key references productos(IdProd),
Cantidad int,
Costo_Unitario money,
Costo_Total money,
Fecha datetime )



create table factura(
IdFac int not null,
IdProd int foreign key references productos(IdProd),
Cantidad int,
Total money)

create table ventas (
IdVentas int primary key not null,
IdFac int not null,
IdEmp int foreign key references empleado(IdEmp),
Tipo_Pago Varchar (25),
Subtotal money,
IVA money,
Total money,
fecha datetime )



select * from empleado
select * from ventas
select * from factura