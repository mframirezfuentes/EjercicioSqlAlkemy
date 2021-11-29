
Ejercitación QUERIES

  1.Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.

  SELECT nombre,apellido,fecha_nacimiento FROM profesor
  order by fecha_nacimiento asc

  2.Todos los profesores cuyo salario sea mayor o igual a 65000.

  SELECT * FROM profesor where salario >65000

3.Todos los profesores que nacieron en la década del 80.

select * from profesor where fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31'

4. 5 registros
select * from profesor limit 5

5. Todos los profesores cuyo apellido inicie con la letra “P”
select * from profesor where apellido like 'P%'

6.Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000

select * from profesor where fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31' and salario>80000