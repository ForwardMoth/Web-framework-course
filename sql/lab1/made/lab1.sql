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


--SELECT * FROM countries;
--SELECT * FROM schedule;

--DROP TABLE schedule;
--DROP TABLE countries;


