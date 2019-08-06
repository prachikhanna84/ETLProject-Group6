CREATE TABLE humidity_pivot(
	year INT,
	datetime INT,
	city VARCHAR,
	humidity INT
);
SELECT * FROM humidity_pivot;
_______________________________________________________

CREATE TABLE pressure_pivot
(
  	year INT,
	datetime INT,
	city VARCHAR,
	pressure INT
);

SELECT * FROM pressure_pivot;
___________________________________________________________

CREATE TABLE temperature_pivot
(
  	year INT,
	datetime DEC,
	city VARCHAR,
	temperature DEC
);
SELECT * FROM temperature_pivot
___________________________________________________
CREATE TABLE weather_description_pivot
(
  	year INT,
	datetime DEC,
	city VARCHAR,
	description VARCHAR
); 
SELECT * FROM weather_description_pivot
___________________________________________________
CREATE TABLE wind_direction_pivot
(
  	year INT,
	datetime DEC,
	city VARCHAR,
	direction VARCHAR
); 
SELECT * FROM wind_direction_pivot;
___________________________________________________
CREATE TABLE wind_speed_pivot
(
  	year INT,
	datetime INT,
	city VARCHAR,
	speed INT
); 

SELECT * FROM wind_speed_pivot;