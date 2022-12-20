from flask import Flask
import requests
app = Flask(__name__)

@app.route('/')
def zelenograd_weather():
    res = requests.get("https://api.openweathermap.org/data/2.5/weather?q=Zelenograd,ru&units=metric&lang=ru&APPID=35c397eab7439d6b358513aafc321967")
    data = res.json()
    temp = str(data['main']['temp'])
    output_block = "<b>Current temperature in Zelenograd is: " + temp + "</b>"
    return output_block
