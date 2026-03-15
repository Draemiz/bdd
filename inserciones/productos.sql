-- crea la tabla clientes
drop table if exists productos;

create table productos(
    codigo int not null,
    nombre varchar(50) not null,
    descripcion varchar(200),
    precio money not null,
	stock int,
    constraint productos_pk primary key(codigo)
);

insert into productos(codigo, nombre, descripcion,precio)
values ('00015','Cereal','Cereal de chocolate para niños',3.60);

insert into productos(codigo, nombre,precio)
values ('00016','Leche',1.20);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00017','Pan','Pan blanco sin bordes',0.80,40);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00018','Galletas','Galletas chips dulces rellenas',2.10,25);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00019','Jugo','Jugo de naranja natural',1.50,35);

insert into productos(codigo, nombre,precio,stock)
values ('00020','Queso',2.50,40);

select * from productos
where nombre like 'Q%';

select * from productos
where descripcion is null;

select * from productos
where precio between 2::money and 3::money;

select * from productos

update productos set stock = 0.0
where stock is null
