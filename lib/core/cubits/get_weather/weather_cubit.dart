import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/core/api/weather_service.dart';

import '../../models/weather_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  WeatherModel? weatherModel;

   getWeather({required searchedCity}) async {
     emit(WeatherLoading());
    try {
      weatherModel = await WeatherService.getWeather(cityName: searchedCity);
      emit(WeatherSuccess());
    } on Exception catch (e) {
      emit(WeatherFailure());
    }
  }
}
