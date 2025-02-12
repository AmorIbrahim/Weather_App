import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/Models/Weather_model.dart';
import 'package:weatherapp/Services/Weather_Services.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          onSubmitted: (value) async {
             weatherModel =
                await WeatherServices(Dio()).getCurrentWeather(cityName: value);
            //Navigator.pop(context);
          },
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              labelText: 'Search',
              suffixIcon: const Icon(Icons.search),
              hintText: 'Enter city name',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.lightGreenAccent,
                  ))),
        ),
      )),
    );
  }
}
WeatherModel? weatherModel;