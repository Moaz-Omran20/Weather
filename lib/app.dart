import 'package:flutter/material.dart';
import 'package:weather_app/config/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
      initialRoute: "/",
    );
  }
}
