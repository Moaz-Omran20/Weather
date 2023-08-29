import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_model.dart';
import '../utils/strings.dart';

class WeatherService {
  static Future<WeatherModel> getWeather({required String cityName}) async {
    try{
      Uri url = Uri.parse(
          "$BASE_URL/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no");
      http.Response response = await http.get(url);
      var weatherData = jsonDecode(response.body);
      var weatherModel = WeatherModel.fromjson(weatherData);
      return weatherModel;
    }catch(e){
      throw e.toString();
    }

  }
}
