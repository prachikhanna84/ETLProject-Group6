from flask import Flask, jsonify
import numpy as np

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

import datetime as dt
from datetime import datetime

app = Flask(__name__)

rds_connection_string = "postgres:postgres@localhost:5432/weather"
engine = create_engine(f'postgresql://{rds_connection_string}')
Base = automap_base()
# reflect the tables
Base.prepare(engine, reflect=True)

# Save reference to the table
print(Base.classes.keys())

City = Base.classes.city
# temperature1 = Base.classes.temperature1
temperature2 = Base.classes.temperature2

session = Session(engine)

@app.route('/')
def home():
    """List all available api routes."""
    return (
        f"Available Routes:<br/>"
        f"/api/v1.0/listall<br/>"
        f"/api/v1.0/<city><br/>"
    )


@app.route("/api/v1.0/listall")
def station():
        stationlist = session.query(City.city).distinct().all()
        print("success")
        session.close()
        return jsonify(stationlist)

@app.route("/api/v1.0/<city>")
def temperature():
        stationlist = session.query(Temperature.temperature).filter(Temperature.city==city).all()
        print("success")
        session.close()
        return jsonify(stationlist)

# @app.route('/api/v1.0/<start_date>')
# def start_stats(start_date):

#     str_date=datetime.strptime(start_date, '%Y-%m-%d') - dt.timedelta(days=366)
#     minimum = session.query(Measurement.tobs, func.min(Measurement.tobs)).filter(Measurement.date >= str_date)
#     maximum = session.query(Measurement.tobs, func.max(Measurement.tobs)).filter(Measurement.date >= str_date)
#     average = session.query(Measurement.tobs, func.avg(Measurement.tobs)).filter(Measurement.date >= str_date)

#     start_temp = {"Tmin": minimum[0][0], "Tmax": maximum[0][0], "Tavg": average[0][0]}
#     session.close()

#     return jsonify(start_temp)



if __name__ == "__main__":
    app.run(debug=True)
