import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/cubits/get_weather/weather_cubit.dart';

import 'app.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => WeatherCubit(),
    child: MyApp(),
  ));
}
