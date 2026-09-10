## 📝 Preguntas de los Ejercicios Prácticos

### Ejercicio 1

<img width=50% alt="dml1" src="https://github.com/user-attachments/assets/ec5b1ed5-7a57-477f-bdb5-7128a1972008" />

1. **Filtrado con NULLs e ILIKE:**
   Obtener el `employee_id`, `first_name`, `last_name`, `salary` y `commission_pct` de todos los empleados que **no** reciben comisión (`commission_pct IS NULL`), cuyo salario sea mayor o igual a 5000 y cuyo apellido contenga la letra `'a'` (insensible a mayúsculas/minúsculas).

2. **Uso de RETURNING en UPDATE:**
   Aumentar en un 10% el salario de todos los empleados pertenecientes al puesto (`job_id`) `'IT_PROG'`. Utilizar la cláusula `RETURNING` para mostrar en consola el `employee_id`, el salario anterior calculado (`salary / 1.10`) y el nuevo salario resultante.

3. **Paginación Precisa (LIMIT y OFFSET):**
   Consultar los empleados posicionados del lugar 6 al 10 en la lista de los mejores pagados de la empresa, ordenados de mayor a menor salario. La salida debe incluir `employee_id`, `first_name`, `last_name` y `salary`.

4. **Control de Duplicados (UPSERT / ON CONFLICT):**
   Insertar un nuevo puesto en la tabla `jobs` con `job_id = 'DEV_SR'`, `job_title = 'Senior Developer'`, `min_salary = 8000` y `max_salary = 16000`. Configurar la sentencia con `ON CONFLICT (job_id)` para que, en caso de que el ID ya exista, actualice únicamente los campos `min_salary` y `max_salary` con los nuevos valores.
