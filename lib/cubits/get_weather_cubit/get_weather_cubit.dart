import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/Models/Weather_model.dart';
import 'package:weatherapp/Services/Weather_Services.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_state.dart';

class GetWeatherCubit extends Cubit<WeatherState>
{
  GetWeatherCubit(super.initialState);
  getWeather({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherServices(Dio()).getCurrentWeather(cityName: cityName);

  }
}