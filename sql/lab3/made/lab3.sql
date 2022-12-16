-- 4 вариант 
-- Буданцев Артём Алексеевич

-- 1 задание 
SELECT first_name, last_name, department_name 
    FROM employees e, departments d 
    WHERE e.department_id = d.department_id
    AND d.department_name IN('IT', 'Sales');

-- 2 задание 
SELECT first_name, last_name, salary, department_name, job_title FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id 
    INNER JOIN jobs j ON j.job_id = e.job_id 
    WHERE salary > 10000
    ORDER BY salary;

-- 3 задание 
SELECT first_name Имя, last_name Фамилия, salary Оклад, min_salary as "Мин.оклад"
    FROM employees e, jobs j
    WHERE e.job_id = j.job_id
    AND e.salary >= 0.8 * j.min_salary 
    AND e.salary <= 1.2 * j.min_salary;

-- 4 задание 
SELECT last_name Фамилия, first_name Имя, salary Оклад FROM employees
     WHERE salary > (SELECT avg(salary) FROM employees) 
     ORDER BY salary;

-- 5 задание 
SELECT first_name Имя, last_name Фамилия, job_id Должность, salary Оклад
    FROM employees e 
    WHERE salary = (SELECT max_salary FROM jobs j
                    WHERE e.job_id = j.job_id);