# Домашнее задание 2:
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
SELECT ((30 * 20) / 10) + (20 * 10) as X;
```
### Задание 2
```sql
SELECT postal_code FROM locations WHERE postal_code != '' AND postal_code IS NOT NULL;
```
### Задание 3
```sql
SELECT first_name as Имя, last_name as Фамилия, 
UPPER(SUBSTRING(first_name,1,3) || SUBSTRING(last_name,1,2)) as Идентификатор FROM employees;
```
### Задание 4
```sql
SELECT job_id as Должность, max(salary) as "Максимальная зарплата", min(salary) as "Минимальная зарплата", 
ROUND(avg(salary), 2) as "Средняя зарплата" FROM employees GROUP BY job_id;
```

## Вариант 2 <a name="2"></a>

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
SELECT first_name as Имя, last_name as Фамилия, salary as Оклад , hire_date as "Дата приема на работу", 
extract(year from age(now(),hire_date)) * 12 + extract(month from age(now(),hire_date)) as "Проработано месяцев" FROM employees;
```
### Задание 4
```sql
SELECT job_id as Должность, max(salary) as "Максимальная зарплата", min(salary) as "Минимальная зарплата", 
ROUND(avg(salary), 2) as "Средняя зарплата" FROM employees GROUP BY job_id;
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
