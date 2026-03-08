-- crea la tabla personas
drop table if exists personas;

create table personas(
    cedula char(10)  not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
    numero_hijos int,
    constraint personas_pk primary key(cedula)
);

insert into personas(cedula, nombre, apellido)
values ('1785326581','Alexandra','Moreno');

insert into personas(cedula, nombre, apellido,estatura)
values ('1785536581','Santiago','Mosquera',1.85);

insert into personas(cedula, nombre, apellido,numero_hijos)
values ('1785548381','Pilar','Mayacela',3);

insert into personas(cedula, nombre, apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values ('1716678388','Tania','Ramirez',1,1.80,'13/06/1993','22:54',222.50);

select cedula, nombre, numero_hijos from personas;

select * from personas;