-- DML exercises

-- 1. filtrado y expresiones (like y nulls)
select employee_id, first_name, last_name, salary, commission_pct
from employees
where commission_pct=null and salary>=5000 and last_name ilike '%a%';


