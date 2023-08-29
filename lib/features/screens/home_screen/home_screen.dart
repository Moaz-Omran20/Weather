import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/core/providers/weather_provider.dart';
import 'package:weather_app/features/screens/home_screen/no_weather_screen.dart';
import 'package:weather_app/features/screens/search_screen/search_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weatherData =
        Provider.of<WeatherProvider>(context, listen: true).weatherPro;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Text(
          "Weather",
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
      body: weatherData == null
          ? NoWeatherScreen()
          : Center(
              child: Container(
                color: Colors.white,
                // decoration: const BoxDecoration(
                //   gradient: LinearGradient(
                //       colors: [Colors.blue, Colors.amber,Colors.purple,],
                //       begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter),
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          "${weatherData.name}",
                          style: GoogleFonts.roboto(
                            fontSize: 23,
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * .5,
                            height: MediaQuery.of(context).size.height * .3,
                            child: Image.network(
                              "https:${weatherData.icon}",
                              fit: BoxFit.contain,
                            )),
                        Text("${weatherData.temp!.toInt()} °C",
                            style: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54)),
                        Text(
                          "${weatherData.condition}",
                          style: GoogleFonts.roboto(
                            fontSize: 23,
                          ),
                        ),
                        // Text("${weatherData.date?.substring(0, 10)}",
                        //     style: const TextStyle(
                        //         fontSize: 25, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 20,
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "${weatherData.windSpeed!.toInt()} KPH",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/wind_speed.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Text(
                                        "Wind speed",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "${weatherData.humidity!.toInt()} ",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/humidity.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Text(
                                        "Humidity",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("${weatherData.pressure}" ?? "",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/pressure.jpg',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Text(
                                        "Pressure",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "${weatherData.minTemp!.toInt()} °C",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/min_temp.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Text(
                                        "Min temp",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "${weatherData.maxTemp!.toInt()} °C",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/max_temp.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Text(
                                        "Max temp",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                          "${weatherData.date?.substring(12, 16)}",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue)),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/images/time.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Text(
                                        "Time",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Spacer(
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
