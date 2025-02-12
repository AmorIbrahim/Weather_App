import 'package:flutter/material.dart';
import 'package:weatherapp/Views/SearchView.dart';

import '../Widget/NoWeatherBody.dart';
import '../Widget/WeatherInfoBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SearchView();
                }));
              },
              icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: weatherModel == null
          ? const NoWeatherBody()
          : const WeatherInfoBody(),
    );
  }
}
