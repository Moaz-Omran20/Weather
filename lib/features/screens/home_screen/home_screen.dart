import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/cubits/get_weather/weather_cubit.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/features/screens/home_screen/no_weather_screen.dart';
import 'package:weather_app/features/screens/search_screen/search_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/features/screens/weather_success_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 5,
          title: Text(
            "WeatherWise",
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
           WeatherModel? weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel;
           if (state is WeatherLoading) {
            return const Center(child: CircularProgressIndicator());
            }
           else if (state is WeatherSuccess) {
              return WeatherSuccessScreen(weatherModel!);
            }
            else if (state is WeatherFailure) {
              return const Center(child: Text("Something went wrong"));
            }
            else {
              return NoWeatherScreen();
            }
          },)

    );
  }
}
