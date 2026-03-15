-- crea la tabla clientes
drop table if exists cuentas;

create table cuentas(
    numero_cuenta char(5) not null,
    cedula_propietario char(5) not null,
    fecha_creacion date,
    saldo money,
    constraint cuentas_pk primary key(numero_cuenta)
);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00001','17146','2024-01-10',500.00);

insert into cuentas(numero_cuenta, cedula_propietario, saldo)
values ('00002','17146',800.50);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion)
values ('00003','17853','2023-06-15');

insert into cuentas(numero_cuenta, cedula_propietario)
values ('00004','17853');

insert into cuentas(numero_cuenta, cedula_propietario, saldo)
values ('00005','11025',1500.00);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00006','10025','2024-02-01',250.75);

insert into cuentas(numero_cuenta, cedula_propietario)
values ('00007','09234');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion)
values ('00008','09234','2022-12-20');

insert into cuentas(numero_cuenta, cedula_propietario, saldo)
values ('00009','17146',2000.00);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values ('00010','17853','2024-05-30',900.40);

select * from cuentas;
where saldo is n;

select * from cuentas;
update cuentas set saldo = 10
where cedula_propietario like '17%'

delete from cuentas
where cedula_propietario like '10%'