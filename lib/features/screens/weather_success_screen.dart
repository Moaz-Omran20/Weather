import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/core/models/weather_model.dart';

class WeatherSuccessScreen extends StatelessWidget {

  WeatherModel weatherModel;


  WeatherSuccessScreen(this.weatherModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
                  weatherModel.name??"",
                  style: GoogleFonts.roboto(
                    fontSize: 23,
                  ),
                ),
                SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .5,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .3,
                    child: Image.network(
                      "https:${weatherModel.icon??""}",
                      fit: BoxFit.contain,
                    )),
                Text("${weatherModel.temp?.toInt()??""} °C",
                    style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54)),
                Text(
                  weatherModel.condition??"",
                  style: GoogleFonts.roboto(
                    fontSize: 23,
                  ),
                ),
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
                                "${weatherModel.windSpeed?.toInt()??""} KPH",
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
                                "${weatherModel.humidity??""} ",
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
                              Text("${weatherModel.pressure?.toInt()??""}",
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
                                "${weatherModel.minTemp?.toInt()??""} °C",
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
                                "${weatherModel.maxTemp?.toInt()??""} °C",
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
                                  "${DateTime.now().hour}:${DateTime.now().minute}",
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
    ) ;
  }
}
