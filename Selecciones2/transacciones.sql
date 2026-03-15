-- crea la tabla clientes
drop table if exists transacciones;

create table transacciones(
    codigo int not null,
    numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
    constraint transacciones_pk primary key(codigo)
);

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (1,'22001',200.00,'C','2024-05-20','08:10');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (2,'22002',150.50,'D','2024-05-29','16:15');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (3,'22003',500.00,'C','2024-05-10','10:20');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (4,'22009',75.25,'D','2024-05-25','11:05');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (5,'22005',320.00,'C','2024-05-26','12:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (6,'22006',40.00,'D','2024-05-29','13:45');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (7,'22007',890.10,'C','2024-05-15','14:10');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (8,'22008',60.75,'D','2024-05-18','15:25');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (9,'22012',1200.00,'C','2024-05-26','16:40');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (10,'22010',95.90,'D','2024-05-29','17:55');

select * from transacciones where tipo = 'C'
and numero_cuenta between '22001' and '22004';

select * from transacciones
where tipo = 'D' and fecha = '2024-05-25' and numero_cuenta between '22007' and '22010';

select * from transacciones
where codigo between 1 and 5 and (numero_cuenta = '22002' or numero_cuenta = '22004')
and fecha in ('2024-05-26','2024-05-29');