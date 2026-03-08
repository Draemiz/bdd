-- crea la tabla clientes
drop table if exists videojuegos;

create table videojuegos(
    codigo int not null,
    nombre varchar(100) not null,
	descripcion varchar(300) not null,
	valoracion int not null,
    constraint videojuegos_pk primary key(codigo)
);

--Todos los campos

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (1,'The Witcher 3','Juego de rol de mundo abierto basado en fantasía',10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (2,'Minecraft','Juego de construcción y exploración en mundo abierto',9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (3,'God of War','Aventura de acción basada en mitología nórdica',10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (4,'FIFA 24','Simulador de fútbol con equipos reales',8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (5,'Call of Duty','Juego de disparos en primera persona',9);

--solo obligatorios

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (6,'Fortnite','Juego battle royale multijugador',8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (7,'Zelda Breath of the Wild','Aventura de exploración en mundo abierto',10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values (8,'Grand Theft Auto V','Juego de acción en mundo abierto',9);

select codigo, nombre, descripcion, valoracion from videojuegos;