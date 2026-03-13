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
values (1,'00001',200.00,'C','01/06/2024','08:10');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (2,'00002',150.50,'D','02/06/2024','09:15');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (3,'00003',500.00,'C','03/06/2024','10:20');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (4,'00004',75.25,'D','04/06/2024','11:05');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (5,'00005',320.00,'C','05/06/2024','12:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (6,'00006',40.00,'D','06/06/2024','13:45');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (7,'00007',890.10,'C','07/06/2024','14:10');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (8,'00008',60.75,'D','08/06/2024','15:25');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (9,'00009',1200.00,'C','09/06/2024','16:40');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values (10,'00010',95.90,'D','10/06/2024','17:55');

select * from transacciones
where tipo = 'D';

select * from transacciones
where monto between 200::money and 2000::money;

select codigo, monto, tipo, fecha from transacciones
where fecha is not null;