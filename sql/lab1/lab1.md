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
```

## Вариант 2
```sql
CREATE TABLE countries(
    id integer PRIMARY KEY, 
    name varchar(64) NOT NULL
); 

CREATE TABLE books(
    isbn varchar(32) PRIMARY KEY, 
    name varchar(2000) NOT NULL UNIQUE,
    authors varchar(2000) NOT NULL,
    publisher varchar(2000) NOT NULL,
    publish_year numeric(4) DEFAULT 2016,
    pages_count numeric(4),
    price numeric(6) NOT NULL,
    id_country integer NOT NULL REFERENCES countries(id),
    CHECK(year > 0 and pages_count > 0)
); 
```

## Вариант 3
```sql
CREATE TABLE countries(
    id integer PRIMARY KEY, 
    name varchar(64)
); 

CREATE TABLE goods(
    id integer PRIMARY KEY, 
    name varchar(2000) NOT NULL UNIQUE,
    storage_row numeric(3), 
    row_place numeric(3), 
    supplier varchar(2000) DEFAULT 'ОАО Царицынский мясокомбинат' NOT NULL,
    count numeric(3) NOT NULL, 
    price numeric(11, 2) NOT NULL,  
    id_country integer NOT NULL REFERENCES countries(id), 
    CHECK(storage_row > 0 and row_place > 0 and count > 0)
);
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
```

## Вариант 5
```sql
CREATE TABLE countries(
    id integer PRIMARY KEY, 
    name varchar(64)
); 

CREATE TABLE dishes(
    number integer PRIMARY KEY, 
    name varchar(2000) NOT NULL, 
    recipe varchar(2000) NOT NULL, 
    ingredients varchar(2000) NOT NULL, 
    cooking_time numeric(6,1) NOT NULL CHECK(cooking_time > 0), 
    category varchar(22) NOT NULL, 
    difficulty varchar(21) DEFAULT 'легкое' NOT NULL, 
    id_country integer NOT NULL REFERENCES countries(id), 
    CHECK(category IN ('1-е блюдо', '2-е блюдо', 'салаты и закуски', 'десерт', 'безалкогольный напиток',
                      'алкогольный напиток')), 
    CHECK(difficulty IN ('легкое', 'для опытного кулинара', 'для профессионала'))
); 
```

## Вариант 6
```sql 
CREATE TABLE countries(
    id integer PRIMARY KEY, 
    name varchar(64)
); 

CREATE TABLE patient(
    card_number numeric(15) PRIMARY KEY, 
    last_name varchar(200) NOT NULL, 
    first_name varchar(200) NOT NULL,
    second_name varchar(200) NOT NULL,
    reason varchar(2000) DEFAULT 'черепно-мозговая травма' NOT NULL,
    polis_number numeric(10) NOT NULL UNIQUE, 
    diagnosis varchar(2000) NOT NULL,
    id_country integer NOT NULL REFERENCES countries(id), 
    CHECK(polis_number > 0), 
    UNIQUE(last_name, first_name, second_name)
);
```

## Вариант 7 
```sql 
CREATE TABLE countries(
    id integer PRIMARY KEY, 
    name varchar(64)
); 

CREATE TABLE exhibits (
    id varchar(32) PRIMARY KEY,
    name varchar(2000) NOT NULL UNIQUE, 
    collection varchar(2000) NOT NULL,
    year numeric(4), 
    technique varchar(2000) NOT NULL,
    insurance_price numeric(10, 2) DEFAULT 20000 NOT NULL, 
    id_country integer NOT NULL REFERENCES countries(id), 
    CHECK(year > 1900) 
);
```
