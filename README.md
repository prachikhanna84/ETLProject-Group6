About DATA:
_______________

Hourly Weather Data Analysis

DateSet Source : Kaggle
https://www.kaggle.com/selfishgene/historical-hourly-weather-data#wind_speed.csv

The dataset contains hourly data for 37 cities for last 6 years for Temperature,Pressure,Wind Speed , Wind Direction , Description,Humidity.

Step By Step Process:

1) The initial data had all the cities names as column which would make is really hard to convert into tables and perfrom joins. We used 
pandas melt function to transpose the dataset columns to rows while keeping the datetime column pivot.

2) After transpose we worked on importing the datat from excel to dataframe.

3) We analyse the data and created the tables in postgres. This was repetetive process until we got the result we liked.

4) We loaded data into the tables using python code and wrote multiple queries around it.

5) We plan to create a flask module for this but due to lack of time just ended up putting a template.

6) Flask module can be used to get the list of cities and based on the city name we can fetch the weather detail for one partifular time.





