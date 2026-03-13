-- crea la tabla clientes
drop table if exists cuentas;

create table cuentas(
    numero_cuenta char(5) not null,
    cedula_propietario char(10) not null,
    fecha_creacion date not null,
    saldo money not null,
    constraint cuentas_pk primary key(numero_cuenta)
);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00001','1712345678','10/01/2024',150.50);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00002','1723456789','05/02/2024',320.00);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00003','1734567890','12/03/2024',75.25);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00004','1745678901','08/04/2024',980.00);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00005','1756789012','19/05/2024',210.40);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00006','1767890123','01/06/2024',430.90);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00007','1778901234','14/07/2024',50.00);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00008','1789012345','03/08/2024',1200.75);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00009','1790123456','21/09/2024',300.00);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00010','1701234567','11/10/2024',640.60);

select numero_cuenta, saldo 
from cuentas;

select * from cuentas
where fecha_creacion between '01/01/2024' and '01/03/2024';

select numero_cuenta, saldo from cuentas
where fecha_creacion between '01/01/2024' and '01/03/2024';