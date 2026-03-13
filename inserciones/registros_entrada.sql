-- crea la tabla clientes
drop table if exists registros_entrada;

create table registros_entrada(
    codigo_registro int not null,
    cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
    constraint registros_entrada_pk primary key(codigo_registro)
);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (1,'1714616123','01/06/2024','08:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (2,'1785326581','02/06/2024','08:05');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (3,'0923456789','03/06/2024','07:55');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (4,'1102567894','04/06/2024','08:10');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (5,'1712345678','05/06/2024','08:02');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (6,'0956781234','06/06/2024','07:59');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (7,'1723456789','07/06/2024','08:15');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (8,'0965432187','08/06/2024','08:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (9,'1719988776','09/06/2024','08:07');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (10,'1781112233','10/06/2024','08:03');

select cedula_empleado, fecha, hora 
from registros_entrada;

select * from registros_entrada
where hora between '07:00' and '14:00';

select * from registros_entrada
where hora > '08:00';