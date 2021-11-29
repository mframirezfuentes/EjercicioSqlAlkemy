1-Cree una tabla llamada CURSO con los atributos:
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

tabla cursos 
insert into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) values(101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',20,1);
insert into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) values(102, 'Matemática Discreta','','Tarde',20,2);
insert into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) values(103, 'Programacion Java','POO en Java','Noche',35,4);
insert into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) values(104, 'Programación Web','','Noche',35,5);
insert into curso(codigo,nombre,descripcion,turno,cupo,profesor_id) values(105, 'Programación C#','.NET, Visual Studio 2019','Noche',30,6);

tabla profesor

insert into profesor(id,nombre,apellido,fecha_nacimiento,salario)values(2,'María Emilia','Paz','1984-07-15',72000);
insert into profesor(id,nombre,apellido,fecha_nacimiento,salario)values(3,'Martín','Correa','1987-12-07',6300);
insert into profesor(id,nombre,apellido,fecha_nacimiento,salario)values(4,'Lucia','Díaz','1991-02-24',4500);
insert into profesor(id,nombre,apellido,fecha_nacimiento,salario)values(5,'Raul','Martinéz','1980-10-15',85000);
insert into profesor(id,nombre,apellido,fecha_nacimiento,salario)values(6,'Mabel','Ríos','1982-06-12',83000);
