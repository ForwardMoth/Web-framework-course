## Вариант 1
```sql
CREATE TABLE countries(
    id NUMERIC(24) PRIMARY KEY, 
    name varchar(64) NOT NULL
); 

CREATE TABLE clients(
    id integer PRIMARY KEY, 
    last_name varchar(200) NOT NULL,
    first_name varchar(200) NOT NULL,
    second_name varchar(200) NOT NULL,
    phone varchar(16) NOT NULL,
    passport_number varchar(16) NOT NULL,
    discount numeric(3,2) NOT NULL CHECK(discount >= 0 and discount <= 0.99) DEFAULT 0, 
    id_country numeric(24) NOT NULL REFERENCES countries(id), 
    UNIQUE(last_name, first_name, second_name)
);

SELECT * FROM countries;
SELECT * FROM clients;

DROP TABLE clients;
DROP TABLE countries;
```

## Вариант 4 
```sql
CREATE TABLE countries(
    id NUMERIC(3) PRIMARY KEY, 
    name varchar(64) NOT NULL
); 


CREATE TABLE schedule(
    id integer PRIMARY KEY, 
    departure_date timestamp NOT NULL, 
    arrival_date timestamp NOT NULL, 
    departure_place varchar(2000) DEFAULT 'Москва' NOT NULL, 
    arrival_place varchar(2000) NOT NULL, 
    type varchar(9) NOT NULL CHECK(type = 'скорый' or type = 'фирменный' or type = 'обычный'),
    count_of_stops integer NOT NULL CHECK(count_of_stops > 0), 
    id_country_of_train_operator numeric(3) NOT NULL REFERENCES countries(id)
);


SELECT * FROM countries;
SELECT * FROM schedule;

DROP TABLE schedule;
DROP TABLE countries;
```


