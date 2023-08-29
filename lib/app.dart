import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/config/routes/routes.dart';
import 'package:weather_app/core/providers/weather_provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
        initialRoute: "/",
      ),
    );
  }
}
