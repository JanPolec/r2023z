print("ok")


install.packages('httr')
install.packages('jsonlite')

library(httr)
library(jsonlite)

endpoint<- "https://api.openweathermap.org/data/2.5/weather?q=Warszawa&appid=1765994b51ed366c506d5dc0d0b07b77&units=metric"

class(endpoint)
gotWeather<- GET(endpoint)
gotWeather

weatherText<- content(gotWeather, "text")
weatherText
print(weatherText)

dataFromJSON <- fromJSON(weatherText)