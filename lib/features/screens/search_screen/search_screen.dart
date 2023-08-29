import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/api/weather_service.dart';
import 'package:weather_app/core/providers/weather_provider.dart';

class SearchScreen extends StatelessWidget {
  String? searchedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Search a city ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                onSubmitted: (value) async {
                  searchedCity = value;
                  var weather =
                      await WeatherService.getWeather(cityName: searchedCity!);
                  Provider.of<WeatherProvider>(context, listen: false)
                      .getWeatherData(weather);
                  //Navigator.of(context).pop("/");
                  Navigator.pop(context);
                },
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Enter city name",
                  labelText: "Search",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              SizedBox(height: 50,),
              Image.asset(
                  'assets/images/animation_llw8jfaj_small.gif',height: 150,fit: BoxFit.fill,),
            ],
          ),
        ),
      ),
    );
  }
}
