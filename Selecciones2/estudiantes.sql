-- crea la tabla clientes
drop table if exists estudiantes;

create table estudiantes(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(50) not null,
	fecha_nacimiento date not null,
    constraint estudiantes_pk primary key(cedula)
);

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0912345678','luis','torres','luistorres@gmail.com','14/09/1996');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1712345678','juan','perez','juanperez@gmail.com','10/05/1998');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0623456789','carolina','vega','carolinavega@gmail.com','18/02/1999');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1823456789','laura','herrera','lauraherrera@gmail.com','11/10/2000');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0123456789','gabriela','nunez','gabrielanunez@gmail.com','27/03/2001');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0945678901','paola','mendoza','paolamendoza@gmail.com','02/12/1999');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1734567890','carlos','gomez','carlosgomez@gmail.com','15/07/2000');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1812325675','fernando','arias','fernandoarias@gmail.com','09/07/1996');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0612345678','diego','mora','diegomora@gmail.com','05/08/1998');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1745678901','ana','martinez','anamartinez@gmail.com','08/11/1997');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0923456789','sofia','ramirez','sofiaramirez@gmail.com','30/01/1998');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1812345678','jorge','castro','jorgecastro@gmail.com','25/04/1997');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1112345678','miguel','salazar','miguelsalazar@gmail.com','16/05/1997');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('0934567895','andres','vargas','andresvargas@gmail.com','19/06/2001');

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1723456706','maria','lopez','marialopez@gmail.com','22/03/1999');

select nombre, apellido from estudiantes
where nombre like 'm%' or apellido like '%z';

select nombre from estudiantes
where cedula like '18%' and cedula like '%32%';

select nombre, apellido from estudiantes
where cedula like '%06' or cedula like '17%';
