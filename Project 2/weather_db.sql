drop table IF EXISTS humidity;
drop table IF EXISTS description;
drop table IF EXISTS pressure;
drop table IF EXISTS temperature;
drop table IF EXISTS wind_direction;
drop table IF EXISTS wind_speed;
drop table IF EXISTS city;

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
  datetime text,
  city text REFERENCES city,
  humidity numeric,
  primary key (datetime,city)
);
CREATE TABLE public.pressure
(
  datetime text,
  city text REFERENCES city,
  pressure numeric,
  primary key (datetime,city)

);
CREATE TABLE public.temperature
(
  datetime text,
  city text REFERENCES city,
  temperature numeric,
  primary key (datetime,city)

);
CREATE TABLE public.description
(
  datetime text,
  city text REFERENCES city,
  description text,
  primary key (datetime,city)

);
CREATE TABLE public.wind_direction
(
  datetime text,
  city text REFERENCES city,
  wind_direction text,
  primary key (datetime,city)

);
CREATE TABLE public.wind_speed
(
  datetime text,
  city text REFERENCES city,
  wind_speed numeric,
  primary key (datetime,city)

);


select * from city where city = 'Chicago';
select * from humidity where city = 'Chicago';
select * from wind_speed where city = 'Chicago';
select * from wind_direction where city = 'Chicago';
select * from temperature where city = 'Chicago';
select * from pressure where city = 'Chicago';
select * from description where city = 'Chicago';