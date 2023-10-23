import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/cubits/get_weather/weather_cubit.dart';


class SearchScreen extends StatelessWidget {
  String? searchedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        iconTheme: const IconThemeData(color: Colors.black),
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
                  BlocProvider.of<WeatherCubit>(context).getWeather(searchedCity:searchedCity??"" );
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
              const SizedBox(height: 50,),
              Image.asset(
                  'assets/images/animation_llw8jfaj_small.gif',height: 150,fit: BoxFit.fill,),
            ],
          ),
        ),
      ),
    );
  }
}
