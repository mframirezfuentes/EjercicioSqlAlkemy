1-ree una tabla llamada CURSO con los atributos:
create TABLE CURSO(
  codigo INT not NULL,
  nombre VARCHAR(25) not null,
  descripcion VARCHAR(50),
  turno VARCHAR(20) not null,  
  PRIMARY KEY(codigo))
  
2-Agregue un campo “cupo” de tipo numérico:
 ALTER TABLE curso ADD cupo int;
 3.nserte datos en la tabla:
insert into curso(codigo,nombre,descripcion,turno,cupo) values(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);
insert into curso(codigo,nombre,descripcion,turno,cupo) values(102, 'Matemática Discreta','','Tarde',30);

4.Intente ingresar un registro con el nombre nulo y verifique que no funciona.
insert into curso(codigo,nombre,descripcion,turno,cupo) values(103, ,,'Tarde',30);

5.Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.
insert into curso(codigo,nombre,descripcion,turno,cupo) values(102, 'Matemática aplicada','','Mañana',15);

6. Actualice, para todos los cursos, el cupo en 25.
update curso set cupo=25

7.Elimine el curso Algoritmos.
delete from curso where nombre='Algoritmos'