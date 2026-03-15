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
values (1,'1714616123','2024-06-01','08:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (2,'1785326581','2024-09-02','08:05');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (3,'0823456789','2024-08-03','09:30');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (4,'1102567894','2024-11-04','08:10');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (5,'1712345678','2024-06-05','08:02');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (6,'0956781234','2024-02-06','07:59');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (7,'1723456789','2024-08-07','08:15');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (8,'0865432187','2024-09-08','10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (9,'1719988776','2024-05-09','08:07');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values (10,'1781112233','2024-01-10','08:03');

select * from registros_entrada
where fecha between '01/09/2024' and '30/09/2024'
or cedula_empleado like '17%';

select * from registros_entrada
where fecha between '01/08/2024' and '31/08/2024'
and cedula_empleado like '17%' and hora between '08:00' and '12:00';

select * from registros_entrada
where (fecha between '01/08/2024' and '31/08/2024' and cedula_empleado like '17%'
    and hora between '08:00' and '12:00')
or (fecha between '01/09/2024' and '30/09/2024' and cedula_empleado like '08%'
    and hora between '09:00' and '13:00');