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

insert into productos(codigo, nombre, descripcion,precio,stock)
values (15,'cereal','cereal de chocolate para niños',3.60,10);

insert into productos(codigo, nombre,precio,stock)
values (16,'leche',1.20,10);

insert into productos(codigo, nombre, descripcion,precio,stock)
values (17,'pan','pan blanco sin bordes',0.80,40);

insert into productos(codigo, nombre, descripcion,precio,stock)
values (18,'galletas','galletas chips dulces rellenas',2.10,25);

insert into productos(codigo, nombre, descripcion,precio,stock)
values (19,'jugo','jugo de naranja natural',1.50,0);

insert into productos(codigo, nombre,precio,stock)
values (20,'queso',2.50,40);

select * from productos
where stock = 10 and precio < 10::money;

select nombre, stock, descripcion from productos
where nombre like '%m%' or descripcion like '% %';

select * from productos
where descripcion is null or stock = 0;

