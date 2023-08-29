import 'package:flutter/foundation.dart';
import 'package:weather_app/core/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier
{
  WeatherModel? weatherPro;


   void getWeatherData(WeatherModel weatherData)
  {
    weatherPro = weatherData;
    notifyListeners();
  }

}