Tablas
use master
go
--------------------------------------------------------------------------------------------
if DB_ID('BDKnela') is not null
   drop database BDKnela
go
create database BDKnela
go
--------------------------------------------------------------------------------------------
use BDKnela
go
--------------------------------------------------------------------------------------------
if OBJECT_ID('TUsuario','U') is not null
	drop table  TUsuario
go 
create table TUsuario
(
	Usuario     varchar(50),
	Contrasena	varbinary(200),
	primary key (Usuario)
)  
go
-----------------------------------------------------------------------------------------------
if OBJECT_ID('TAdministrador','U') is not null
	drop table  TAdministrador
go 
create table TAdministrador
(
	IdAdministrador	char(4) not null,
	ApellidoPaternoAdministrador	varchar (50) not null,
	ApellidoMaternoAdministrador 	varchar (50) not null,
	NombresAdministrador 	varchar (50) not null,
	Dni int not null,
	Direccion 	varchar (50) not null,
	Usuario     varchar (50) unique not null,
	primary key (IdAdministrador),
	foreign key (Usuario) references TUsuario
)  
go
-----------------------------------------------------------------------------------------------
if OBJECT_ID('TCliente','U') is not null
	drop table  TCliente
go 
create table TCliente
(
	IdCliente 		char(4) not null,
	ApellidoPaternoCliente 	varchar (50) not null,
	ApellidoMaternoCliente 	varchar (50) not null,
	NombresCliente 	varchar (50) not null,
	Dni int not null,
	Direccion 	varchar (50) not null,
	Usuario     varchar (50) unique not null,
	primary key (IdCliente),
	foreign key (Usuario) references TUsuario
)  
go
--------------------------------------------------------------------------------------------
if OBJECT_ID('TInsumo','U') is not null
	drop table  TInsumo
go 
create table TInsumo
(

	IdInsumo char(4) not null,
	TipoDePostre varchar(50),
	NombreInsumo varchar(50),

	DescripcionInsumo varchar(50),
	primary key (IdInsumo)
)   
go
--------------------------------------------------------------------------------------------
if OBJECT_ID('TDetallePedido','U') is not null
	drop table  TDetallePedido
go 
create table TDetallePedido
(
	IdDetallePedido     char(4) not null,
	IdInsumo     char(4) not null,
	CostoUnitario float,
	Cantidad int,
	CstTotal float,
	primary key (IdDetallePedido),
	foreign key (IdInsumo) references TInsumo
)   
go
--------------------------------------------------------------------------------------------
if OBJECT_ID('TPedido','U') is not null
	drop table  TPedido
go 
create table TPedido
(
	IdPedido     char(4) not null,
	fechaHora datetime,
	DescripcionPedido varchar(50),
	IdCliente 		char(4) not null,
	IdDetallePedido     char(4) not null,
	primary key (IdPedido),
	foreign key (IdCliente) references TCliente,
	foreign key (IdDetallePedido) references TDetallePedido
)   
go
--------------------------------------------------------------------------------------------
if OBJECT_ID('TDetalleVenta','U') is not null
	drop table  TDetalleVenta
go 
create table TDetalleVenta
(
	IdDetalleVenta     char(4) not null,
	IdInsumo     char(4) not null,
	CostoUnitario float,
	Cantidad int,
	CstTotal float,
	primary key (IdDetalleVenta),
	foreign key (IdInsumo) references TInsumo
)   
go
--------------------------------------------------------------------------------------------
if OBJECT_ID('TBoleta','U') is not null
	drop table  TBoleta
go 
create table TBoleta
(
	IdBoleta     char(4) not null,
	IdCliente 		char(4) not null,
	fechaHora datetime,
	Descripcion varchar(100),
	IdDetalleVenta     char(4) not null,
	Descuento float,
	MontoTotal float,
	primary key (IdBoleta),
	foreign key (IdCliente) references TCliente,
	foreign key (IdDetalleVenta) references TDetalleVenta

)   
go

use BDKnela
go
Procedimeintos Almacenados
if OBJECT_ID('spAgregarClienteE') is not null
	drop proc spAgregarClienteE
go
create proc spAgregarClienteE
@IdCliente char(4),@ApellidoPaternoCliente varchar(50),@ApellidoMaternoCliente varchar(50),@NombresCliente varchar(50), @Dni int,@Direccion varchar(50), @Usuario varchar(50), @Contrasena varchar(100) 
as
begin
	if not exists(select IdCliente from TCliente where IdCliente = @IdCliente)
		if not exists(select Usuario from TUsuario where Usuario = @Usuario)
			begin
				begin try
					insert into TUsuario values(@Usuario, ENCRYPTBYPASSPHRASE('password', @Contrasena))
					insert into TCliente values(@IdCliente, @ApellidoPaternoCliente, @ApellidoMaternoCliente, @NombresCliente, @Dni, @Direccion, @Usuario)
					select CodError = 0, Mensaje = 'Se agrego Usuario y Cliente en TUsuario y TCliente'
				end try
				begin catch
					select CodError = 1, Mensaje = 'Error: No se ejecuto la transaccion' 
				end catch
			end
		else select CodError = 1, Mensaje = 'Error: Usuario existe en TUsuario'
	else select CodError = 1, Mensaje = 'Error: IdCliente no existe en TCliente'
end
go

exec spAgregarClienteE 'C001','Cortez','Bravo','Juan',72600356,'Av. Cultura A-7','jcortez','12345'
exec spAgregarClienteE 'C002','Cortez','Garcia','Pedro',72600334,'MAGISTERIO','cgarcia','12345'
go

insert into TUsuario values ('admin', ENCRYPTBYPASSPHRASE('password', '12345'))
insert into TAdministrador values ('A001', 'Sanchez', 'Ismodes', 'Romulo', 71582839, 'Urb.Versalles A-9', 'admin')

select * from TCliente
select * from TUsuario
select * from TAdministrador
----------------------------------------------------------------------------------------
--PA para hacer login
if OBJECT_ID('spLoginUsuarioE') is not null
	drop proc spLoginUsuarioE
go

create proc spLoginUsuarioE
@Usuario varchar(50), @Contrasena varchar(50)
as
begin
	if exists (select Usuario from TUsuario where Usuario=@Usuario)
		begin
		declare @PasswdD varchar(50)
		set @PasswdD = (select CAST(DECRYPTBYPASSPHRASE('password', Contrasena) as varchar(50))
		from TUsuario where Usuario=@Usuario)
		if(@Contrasena = @PasswdD)
			begin
				select CodError=0, Mensaje = 'Usuario correctamente logueado'
			end
		else select CodError = 1, Mensaje = 'Error: La contraseña es incorrecta'
		end
	else
		select CodError = 1, Mensaje = 'Error: Usuario no existe'
end
go

exec spLoginUsuarioE 'admin', '12345'
go

exec spLoginUsuarioE 'rsanchez', '12345'
go
----------------------------------------------------------------------------------------------------
if OBJECT_ID('spAgregarDetallePedido') is not null
	drop proc spAgregarDetallePedido
go
create proc spAgregarDetallePedido
@IdDetallePedido char(4), @IdInsumo char(4),@IdDetalleVenta char(4), @CostoUnitario float, @Cantidad int, @CstTotal float
as
begin
	
	if not exists(select IdDetallePedido from TDetallePedido where IdDetallePedido = @IdDetallePedido)
			begin
				begin try
					insert into TDetallePedido values(@IdDetallePedido, @IdInsumo,@CostoUnitario, @Cantidad, (@Cantidad*@CostoUnitario))
					insert into TDetalleVenta values(@IdDetalleVenta, @IdInsumo,@CostoUnitario, @Cantidad, (@Cantidad*@CostoUnitario))
					select CodError = 0, Mensaje = 'Se realizo la orden de detalle Pedido y Detalle Venta'
				end try
				begin catch
					select CodError = 1, Mensaje = 'Error: No se ejecuto la transaccion' 
				end catch
			end
	else select CodError = 1, Mensaje = 'Error: Este detalle pedido ya fue realizado'
end
go

exec spAgregarDetallePedido'DP01','I001','DV01',3.5,4,null
go
exec spAgregarDetallePedido'DP02','I009',4,null
go
exec spAgregarDetallePedido'DP03','I009',4,null
go
exec spAgregarDetallePedido'DP04','I011',3,null
go
exec spAgregarDetallePedido'DP05','I010',3,null
go
exec spAgregarDetallePedido'DP06','I014',3,null
go
exec spAgregarDetallePedido'DP07','I003',3,null
go


delete from TDetallePedido where IdDetallePedido = 'DP07'

select * from TDetallePedido
select * from TDetalleVenta
select * from TCliente
----------------------------------------------------------------------------------------------------
if OBJECT_ID('spAgregarPedido1') is not null
	drop proc spAgregarPedido1
go
create proc spAgregarPedido1
@IdPedido char(4),@IdBoleta char(4), @fechaHora datetime, @DescripcionPedido varchar(50), @IdCliente char(4), @IdDetallePedido char(4),@IdDetalleVenta char(4),@Descuento float,@MontoTotal float
as
begin
	if not exists(select @IdPedido from TPedido where IdPedido = @IdPedido)
			begin
				begin try
					insert into TPedido values(@IdPedido, GETDATE(), @DescripcionPedido, @IdCliente, @IdDetallePedido)
					insert into TBoleta values(@IdBoleta,@IdCliente,GETDATE(),@DescripcionPedido,@IdDetalleVenta,@Descuento,(@MontoTotal-(@MontoTotal*(@Descuento/100))))
					select CodError = 0, Mensaje = 'Se realizo la orden de pedido'
				end try
				begin catch
					select CodError = 1, Mensaje = 'Error: No se ejecuto la transaccion' 
				end catch
			end
	else select CodError = 1, Mensaje = 'Error: Este pedido ya fue realizado'
end
go

exec spAgregarPedido1 'P003','B003',null,'Caliente','C003','DP01', 'DV01',10,30
go
select * from TCliente
select * from TBoleta
select * from TPedido
delete  from TBoleta 
select * from TDetalleVenta
delete from TDetalleVenta where IdDetalleVenta='DV09' 

---------------------------------------------------------------------------------------------------
if OBJECT_ID('spAgregarInsumo') is not null
	drop proc spAgregarInsumo
go
Create proc spAgregarInsumo
@IdInsumo char(4),@TipoDePostre varchar(50),@NombreInsumo varchar(50), @DescripcionInsumo varchar(50)
as
begin
	if not exists(select IdInsumo from TInsumo where IdInsumo = @IdInsumo)
		if not exists(select NombreInsumo from TInsumo where NombreInsumo = @NombreInsumo)
			begin
				begin try
					insert into TInsumo values(@IdInsumo,@TipoDePostre,@NombreInsumo,@DescripcionInsumo)
					
					select CodError = 0, Mensaje = 'Se agrego Insumo en TInsumo'
				end try
				begin catch
					select CodError = 1, Mensaje = 'Error: No se ejecuto la transaccion' 
				end catch
			end
		else select CodError = 1, Mensaje = 'Error: NombreInsumo existe en TInsumo'
	else select CodError = 1, Mensaje = 'Error: IdInsumo existe en TInsumo'
end
go

insert into TInsumo values  ('I001','Dulce', 'Pie de Limon', 'Postre dulce, hecho a base de limon')
insert into TInsumo values  ('I002','Salado', 'Sandwich Triple', 'Jamon, queso, y palta')
insert into TInsumo values  ('I003','Dulce', 'Muffins', 'Postre de chocolate')
insert into TInsumo values  ('I004','Salado', 'Pan Baguette', 'Pan de trigo')
insert into TInsumo values  ('I005','Salado', 'Croissant', 'Crocante')
insert into TInsumo values  ('I006','Dulce', 'Torta de Vainilla', 'Postre con crema')
insert into TInsumo values  ('I007','Dulce', 'Mousse', 'Chocalate con crema')
insert into TInsumo values  ('I008','Dulce', 'Pie de Manzana', 'Postre dulce, hecho a base de Manzana')
insert into TInsumo values  ('I009','Salado', 'Tamal', 'Aperivo dulce y salado')
insert into TInsumo values  ('I010','Salado', 'Empanada de Carne', 'Relleno de carne picada')
insert into TInsumo values  ('I011','Salado', 'Empanada de Pollo', 'Relleno de pollo con cebolla')
insert into TInsumo values  ('I012','Salado', 'Empanada de Salchicha', 'Rellena de Salchicha Vienna')
insert into TInsumo values  ('I013','Salado', 'Empanada de Queso', 'Laminas de queso')
insert into TInsumo values  ('I014','Salado', 'Empanada de Mixta', 'Queso y Jamon')
insert into TInsumo values  ('I015','Dulce', 'Lengua de Suegra', 'Manjar blanco')
insert into TInsumo values  ('I016','Dulce', 'Alfajor', 'Manjar y azucar en polvo')
insert into TInsumo values  ('I017','Dulce', 'Jugo de Naranja', 'Naranja natural')
insert into TInsumo values  ('I018','Dulce', 'Jugo de Piña', 'Piña natural')
insert into TInsumo values  ('I019','Dulce', 'El Thanos', 'Bebida color morado')
insert into TInsumo values  ('I020','Salado', 'Pudin', 'Chocolate batido')

select *from TInsumo

---------------------------------------------------------------------------------------------------

if OBJECT_ID('spElimiarInsumo') is not null
	drop proc spElimiarInsumo
	go
create proc spElimiarInsumo
@IdInsumo char(4)
as
begin
	if exists(select IdInsumo from TInsumo where IdInsumo=@IdInsumo)
			begin
			begin try
				delete from TInsumo where IdInsumo=@IdInsumo
				select codError=0, Mensaje='Insumo elimnado correctamente'
				end try
				begin catch 
				 select codError=1, Mensaje='Error no se ejecuto la transaccion'
				 end catch
				 end
	else select codError=1, Mensaje='Insumo no existe'
end
go


exec spElimiarInsumo I004
select *from TInsumo
---------------------------------------------------------------------------------------------------
if OBJECT_ID('spActualizarInsumo') is not null
	drop proc spActualizarInsumo
	go
create proc spActualizarInsumo
@IdInsumo char(4),@TipoDePostre varchar(50),@NombreInsumo varchar(50), @DescripcionInsumo varchar(50)
as
begin
	if  exists(select IdInsumo from TInsumo where IdInsumo=@IdInsumo)
		begin
			begin try
		UPDATE TInsumo
		set TipoDePostre =@TipoDePostre, NombreInsumo =@NombreInsumo,DescripcionInsumo=@DescripcionInsumo  where IdInsumo=@IdInsumo
		select codError=0, Mensaje='Insumo modificado correctamente'
				end try
				begin catch 
				 select codError=1, Mensaje='Error no se ejecuto la transaccion'
				 end catch
				 end
	else select codError=1, Mensaje='Insumo no existe'
	end 
	go

exec spActualizarInsumo 'I003','Dulce', 'Piña',8.5 ,'Cortes de piña'
select *from TInsumo



if OBJECT_ID('uspListarInsumo','P') is not null
	drop proc uspListarInsumo
go
Create Proc uspListarInsumo As
Begin
	Select * From TInsumo
End
go

create proc spListarDetallePedidos
@IdDetallePedido char(4)
as
begin
	select *
	from TDetallePedido where IdDetallePedido = @IdDetallePedido
	order by IdDetallePedido DESC

end 
exec spListarDetallePedidos 'DP01'


select b.IdBoleta,b.FechaHora, c.NombresCliente,c.ApellidoPaternoCliente,c.ApellidoMaternoCliente,i.NombreInsumo,d.CostoUnitario ,d.Cantidad, d.CstTotal,b.Descripcion from TInsumo i
inner join TDetallePedido d on d.IdInsumo = i.IdInsumo inner join TPedido p ON p.IdDetallePedido = d.IdDetallePedido 
inner join TCliente c ON c.IdCliente = p.IdCliente inner join TBoleta b ON c.IdCliente=b.IdCliente


--PA para hacer login
if OBJECT_ID('spLoginUsuarioE') is not null
	drop proc spLoginUsuarioE
go

create proc spLoginUsuarioE
@Usuario varchar(50), @Contrasena varchar(50)
as
begin
	if exists (select Usuario from TUsuario where Usuario=@Usuario)
		begin
		declare @PasswdD varchar(50)
		set @PasswdD = (select CAST(DECRYPTBYPASSPHRASE('password', Contrasena) as varchar(50))
		from TUsuario where Usuario=@Usuario)
		if(@Contrasena = @PasswdD)
			begin
				declare @TipoUsuario varchar(20)
				if exists (select Usuario from TCliente where Usuario=@Usuario)
					set @TipoUsuario = 'Cliente'
				else if exists (select Usuario from TAdministrador where Usuario=@Usuario)
					set @TipoUsuario = 'Administrador'
				select CodError = 0, Mensaje = @TipoUsuario
			end
		else select CodError = 1, Mensaje = 'Error: La contraseña es incorrecta'
		end
	else
		select CodError = 1, Mensaje = 'Error: Usuario no existe'
end
go

exec spLoginUsuarioE 'admin', '12345'
go

exec spLoginUsuarioE 'rsanchez', '12345'
go

if OBJECT_ID('spVerBoleta') is not null
	drop proc spVerBoleta
go
create proc spVerBoleta
@IdDetallePedido char(4)
as
begin
select b.IdBoleta,b.FechaHora, c.NombresCliente ,c.ApellidoPaternoCliente,c.ApellidoMaternoCliente,i.NombreInsumo from TInsumo i
inner join TDetallePedido d on d.IdInsumo = i.IdInsumo inner join TPedido p ON p.IdDetallePedido = d.IdDetallePedido 
inner join TCliente c ON c.IdCliente = p.IdCliente inner join TBoleta b ON c.IdCliente=b.IdCliente

where b.IdBoleta=@IdDetallePedido
end 
go
exec spVerBoleta 'DP01'
select * from TDetallePedido

if OBJECT_ID('spVerBoleta2') is not null
	drop proc spVerBoleta2
go
create proc spVerBoleta2
@IdDetallePedido char(4)
as
begin
select d.CostoUnitario ,d.Cantidad, b.Descuento,b.MontoTotal from TDetalleVenta
 d inner join  TBoleta b ON d.IdDetalleVenta=b.IdDetalleVenta

where b.IdBoleta=@IdDetallePedido
end 
go

exec spVerBoleta 'B003'
exec spVerBoleta2 'B002'
select * from TBoleta
select * from TDetalleVenta
select * from TDetallePedido
select * from TPedido

if OBJECT_ID('spActualizarContrasena1') is not null
	drop proc spActualizarContrasena1
go

create proc spActualizarContrasena1
@Usuario varchar(50), @Contrasena varchar(50),@ContrasenaActualizada varchar(50)
as
begin
	--validar que el Usuario que exista
	if exists (select Usuario from TUsuario where Usuario=@Usuario and Contrasena=@Contrasena)
		----Desncriptar la contraseña
		declare @ContrasenaD varchar (50)
		set @ContrasenaD = (select CAST(DECRYPTBYPASSPHRASE('password',Contrasena)as varchar (50))
		from TUsuario where Usuario=@Usuario)
		---Comparar contraseñas
		if (@Contrasena=@ContrasenaD)
		begin try
			update TUsuario set Contrasena=ENCRYPTBYPASSPHRASE('password',@ContrasenaActualizada) where Usuario=@Usuario
			select CodError = 0, Mensaje='Contraseña actualizada correctamente'
		end try
		begin catch
			select CodError = 1, Mensaje = 'No se pudo actualizar'
		end catch
	else select CodError=1, Mensaje='Contraseña no existe'
end
go

select * from TBoleta
exec spActualizarContrasena1 'admin' ,'123', '12345'

