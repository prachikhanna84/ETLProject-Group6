drop table humidity;
drop table description;
drop table pressure;
drop table temperature;
drop table wind_direction;
drop table wind_speed;

drop table city;

CREATE TABLE public.city
(
   city text Primary Key ,
   country text ,
   latitude numeric,
   longitude numeric
)
;
CREATE TABLE public.humidity
(
   year integer,
   datetime date,
   city text REFERENCES city,
   humidity numeric
);

CREATE TABLE public.pressure
(
   year integer,
   datetime date,
   city text REFERENCES city,
   pressure numeric
);

CREATE TABLE public.temperature
(
   year integer,
   datetime date,
   city text REFERENCES city,
   temperature numeric
);

CREATE TABLE public.description
(
   year integer,
   datetime date,
   city text REFERENCES city,
   description numeric
);
CREATE TABLE public.wind_direction
(
   year integer,
   datetime date,
   city text REFERENCES city,
   wind_direction numeric
);

CREATE TABLE public.wind_speed
(
   year integer,
   datetime date,
   city text REFERENCES city,
   wind_speed numeric
);
