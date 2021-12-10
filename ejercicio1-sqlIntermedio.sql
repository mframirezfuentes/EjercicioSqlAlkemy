1.

2.. Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.
select * from profesor
where fecha_nacimiento >='1980-01-01'
3.
create table pais(
	idpais int PRIMARY KEY,
	nombre varchar(50)
)
insert into pais(idpais,nombre) values(1,'Chile');
insert into pais(idpais,nombre) values(2,'Brasil');
insert into pais(idpais,nombre) values(3,'Argentina');
insert into pais(idpais,nombre) values(4,'Perú');
insert into pais(idpais,nombre) values(5,'Uruguay');
insert into pais(idpais,nombre) values(5,'Colombia');

CREATE TABLE pasajero (
    idpasajero int NOT NULL,
    nombre varchar(50) NOT NULL,
	apaterno varchar(50) NOT NULL,
	amaterno varchar(50) NOT NULL,
    tipodocumento varchar(50) not null,
	num_documento int,
	fecha_nacimiento date not null,
	idpais int ,
	telefono int,
	email varchar(50) not null,
	clave int,
    PRIMARY KEY (idpasajero),
    FOREIGN KEY (idpais) REFERENCES pais(idpais)
);
insert into pasajero(idpasajero,nombre,qpaterno,amaterno,tipodocumento,num_documento,fecha_nacimiento,idpais,telefono,email,clave)values(1,'Fernanda','Ramirez','Fuentes','pasaporte',123,'21-06-1989',1,224587741,'mframirezfuentes@gmail.com',123);
insert into pasajero(idpasajero,nombre,apaterno,amaterno,tipodocumento,num_documento,fecha_nacimiento,idpais,telefono,email,clave)values(2,'Fernanda','Ramirez','Fuentes','pasaporte',123,'21-06-1989',1,224587741,'mframirezfuentes@gmail.com',123);
CREATE TABLE pago (
    idpago int NOT NULL,
    idreserva int NOT NULL,
    fecha date not null,
	idpasajero int,
	monto int not null,
	tipo_comprobante varchar(50) not null,
	num_comprobante  int not null,
	impuesto int not null,
    PRIMARY KEY (idpago),
    FOREIGN KEY (idpasajero) REFERENCES pasajero(idpasajero)
);
insert into pago(idpago, idreserva,fecha,idpasajero,monto,tipo_comprobante ,num_comprobante,impuesto ) values(1,1,'9-12-2020',1,4000,'boleta',1,15);
insert into pago(idpago, idreserva,fecha,idpasajero,monto,tipo_comprobante ,num_comprobante,impuesto ) values(2,2,'10-12-2020',1,15000,'boleta',2,15)
insert into pago(idpago, idreserva,fecha,idpasajero,monto,tipo_comprobante ,num_comprobante,impuesto ) values(3,2,'10-12-2020',2,5000,'boleta',3,15)

4.
a.select  count(*),ps.nombre
from pasajero as p
inner join pais as ps on ps.idpais=p.idpais
group by ps.nombre

b. Suma de todos los pagos realizados
	select sum(monto) from pago
c.Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
	select sum(monto) from pago where idpasajero=2

d.Promedio de los pagos que realizó un pasajero
select avg(monto) from pago where idpasajero=2