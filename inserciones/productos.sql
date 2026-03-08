-- crea la tabla clientes
drop table if exists productos;

create table productos(
    codigo int not null,
    nombre varchar(50) not null,
    descripcion varchar(200),
    precio money not null,
	stock int not null,
    constraint productos_pk primary key(codigo)
);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00015','Cereal','Cereal de chocolate para niños',3.60,30);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00016','Leche','Leche entera 1 litro',1.20,50);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00017','Pan','Pan blanco fresco',0.80,40);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00018','Galletas','Galletas dulces rellenas',2.10,25);

insert into productos(codigo, nombre, descripcion,precio,stock)
values ('00019','Jugo','Jugo de naranja natural',1.50,35);

select codigo,nombre,precio from productos;