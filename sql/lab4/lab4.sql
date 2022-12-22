-- 1 задание
SELECT * FROM bd_employees WHERE phone_number ~* '^8-\(49(5|9)\)-\d{3}-\d{2}-\d{2}$'; 

-- 2 задание
SELECT * FROM bd_employees WHERE phone_number ~* '[^^]\d{4}[^&]';

-- 3 задание 
SELECT last_name, REGEXP_REPLACE(email, '^(..).+(\@.*)$', '\1_\2') FROM bd_employees;

-- 4 задание 
SELECT * FROM bd_employees WHERE (REGEXP_COUNT(first_name,'[aeouiy]',1,'i') < 4);