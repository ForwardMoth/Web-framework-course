## Вариант 4 

### Задание 1
```sql
SELECT first_name || ' ' || last_name as ФИО, salary as ОКЛАД, salary - ROUND(0.13 * salary, 2) 
as "Оклад минус подоходный" FROM employees;
```
### Задание 2
```sql
SELECT first_name as Имя, last_name as Фамилия, job_id as Должность, hire_date as "Дата приема на работу" FROM employees 
WHERE extract(year FROM hire_date) NOT BETWEEN 1995 AND 1999 and job_id IN('AD_PRES', 'AD_VP', 'AD_ASST'); 
```
### Задание 3
```sql
SELECT first_name as Имя, last_name as Фамилия, 
LOWER(SUBSTRING(first_name,length(first_name)-1) || SUBSTRING(last_name, 1, 3)) as Идентификатор FROM employees;
```
### Задание 4
```sql
SELECT job_id as Должность, max(salary) as "Максимальная зарплата", min(salary) as "Минимальная зарплата", 
ROUND(avg(salary), 2) as "Средняя зарплата" FROM employees GROUP BY job_id;
```
