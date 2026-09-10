-- DML exercises

-- 1. filtrado y expresiones (like y nulls)
select employee_id, first_name, last_name, salary, commission_pct
from employees
where commission_pct is null 
	and salary>=5000 
	and last_name ilike '%a%';


-- 2. uso de returning en update
update employees
set salary=salary*1.1
where job_id='IT_PROG'
returning employee_id, round((salary/1.1),2) as salario, salary as salario_nuevo;

-- 3. paginacion y ordenamiento (6 al 10)
select employee_id,first_name,last_name,salary
from employees
order by salary desc
limit 5 offset 5;

-- 4. manejo de upsert (on conflict)
insert into jobs(job_id,job_title,min_salary,max_salary)
values('DEV_SR','Senior Developer',8000,16000)
on conflict(job_id) do update
set min_salary=excluded.min_salary, max_salary=excluded.max_salary
returning *;
