# Домашнее задание 3:
1. [Вариант 1](#1)
2. [Вариант 2](#2)
3. [Вариант 3](#3)
4. [Вариант 4](#4)
5. [Вариант 5](#5)
6. [Вариант 6](#6)
7. [Вариант 7](#7)

## Вариант 1 <a name="1"></a>

### Задание 1
```sql

```
### Задание 2
```sql

```
### Задание 3
```sql

```
### Задание 4
```sql

```

## Вариант 2 <a name="2"></a>

### Задание 1
```sql

```
### Задание 2
```sql

```
### Задание 3
```sql

```
### Задание 4
```sql

```

## Вариант 3 <a name="3"></a>

### Задание 1
```sql

```
### Задание 2
```sql

```
### Задание 3
```sql

```
### Задание 4
```sql

```

## Вариант 4 <a name="4"></a>

### Задание 1
```sql
SELECT first_name, last_name, department_name 
    FROM employees e, departments d 
    WHERE e.department_id = d.department_id
    AND d.department_name IN('IT', 'Sales');
```
### Задание 2
```sql
SELECT first_name, last_name, salary, department_name, job_title FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id 
    INNER JOIN jobs j ON j.job_id = e.job_id 
    WHERE salary > 10000
    ORDER BY salary;
```
### Задание 3
```sql
SELECT first_name Имя, last_name Фамилия, salary Оклад, min_salary as "Мин.оклад"
    FROM employees e, jobs j
    WHERE e.job_id = j.job_id
    AND e.salary >= 0.8 * j.min_salary 
    AND e.salary <= 1.2 * j.min_salary;
```
### Задание 4
```sql
SELECT last_name Фамилия, first_name Имя, salary Оклад FROM employees
     WHERE salary > (SELECT avg(salary) FROM employees) 
     ORDER BY salary;
```
### Задание 5
```sql
SELECT first_name Имя, last_name Фамилия, job_id Должность, salary Оклад
    FROM employees e 
    WHERE salary = (SELECT max_salary FROM jobs j
                    WHERE e.job_id = j.job_id);
```

## Вариант 5 <a name="5"></a>

### Задание 1
```sql

```
### Задание 2
```sql

```
### Задание 3
```sql

```
### Задание 4
```sql

```

## Вариант 6 <a name="6"></a>

### Задание 1
```sql

```
### Задание 2
```sql

```
### Задание 3
```sql

```
### Задание 4
```sql

```

## Вариант 7 <a name="7"></a>

### Задание 1
```sql

```
### Задание 2
```sql

```
### Задание 3
```sql

```
### Задание 4
```sql

```
